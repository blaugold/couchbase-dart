import 'dart:ffi';
import 'dart:io';
import 'dart:isolate';

import 'package:http/http.dart';
import 'package:http/retry.dart';
import 'package:path/path.dart' as path;
import 'package:tar/tar.dart';

import 'lib_couchbase_dart.dart';
import 'version.g.dart';

late final LibCouchbaseDart bindings;

Future<void>? _loadingNativeLibrary;

Future<void> loadNativeLibrary() async {
  return _loadingNativeLibrary ??= Future.sync(() async {
    final directory = await ensureNativeLibraryIsAvailable();
    final nativeLibrary = _openNativeLibrary(directory);
    _initBindings(nativeLibrary);
  });
}

Future<String> ensureNativeLibraryIsAvailable({bool useLocal = true}) async {
  if (File(_installedNativeLibraryPath).existsSync()) {
    return _installedNativeLibraryDirectoryPath;
  }

  if (useLocal && await _couchbaseDartIsLocalPackage) {
    return _localNativeLibraryDirectoryPath;
  }

  await _installNativeLibrary();
  return _installedNativeLibraryDirectoryPath;
}

void _initBindings(DynamicLibrary library) {
  bindings = LibCouchbaseDart(library);

  if (!bindings.CBD_Init(NativeApi.initializeApiDLData)) {
    throw StateError(
      'libCouchbaseDart is incompatible with the current Dart VM.',
    );
  }
}

final _couchbaseDartIsLocalPackage = Future.sync(() async {
  final couchbaseDartPackageRootUri = await _couchbaseDartPackageRootUri;
  if (couchbaseDartPackageRootUri == null) {
    return false;
  }
  return path
      .canonicalize(couchbaseDartPackageRootUri.toFilePath())
      .endsWith('couchbase-dart/packages/couchbase');
});

final _couchbaseDartPackageRootUri = Future.sync(() async {
  final packageEntryUri = await Isolate.resolvePackageUri(
    Uri.parse('package:couchbase/couchbase.dart'),
  );

  if (packageEntryUri == null) {
    return null;
  }

  return File(packageEntryUri.toFilePath()).parent.parent.uri;
});

String _nativeLibraryBaseName() {
  const libraryName = 'libCouchbaseDart';
  if (Platform.isMacOS) {
    return '$libraryName.dylib';
  } else if (Platform.isLinux) {
    return '$libraryName.so';
  } else {
    throw UnsupportedError('Unsupported platform.');
  }
}

String _nativeLibraryPath(String directory) =>
    path.join(directory, _nativeLibraryBaseName());

final _installedNativeLibraryDirectoryPath = path.join(
  Directory.current.path,
  '.dart_tool',
  'couchbase-dart',
  couchbaseDartVersion,
);

final _installedNativeLibraryPath =
    path.join(_installedNativeLibraryDirectoryPath, _nativeLibraryBaseName());

final _localNativeLibraryDirectoryPath = Future.sync(() async {
  final packageRootUri = await _couchbaseDartPackageRootUri;
  return path.join(packageRootUri!.toFilePath(), '../../native/build');
});

DynamicLibrary _openNativeLibrary(String directory) =>
    DynamicLibrary.open(_nativeLibraryPath(directory));

enum _Architecture {
  x86_64,
  arm64;

  static final current = (() {
    final String rawName;
    if (Platform.isMacOS || Platform.isLinux) {
      final result = Process.runSync('uname', ['-m']);
      if (result.exitCode != 0) {
        throw StateError('Failed to determine architecture.');
      }
      rawName = result.stdout.toString().trim();
    } else {
      throw UnsupportedError('Unsupported platform.');
    }

    switch (rawName) {
      case 'x86_64':
        return _Architecture.x86_64;
      case 'arm64':
      case 'aarch64':
        return _Architecture.arm64;
      default:
        throw UnsupportedError('Unsupported architecture: $rawName');
    }
  })();
}

final _nativeLibraryDownloadUri = Uri.parse(
  'https://github.com/blaugold/couchbase-dart/releases/download/'
  'couchbase-v$couchbaseDartVersion/libCouchbaseDart-'
  '${Platform.operatingSystem}-${_Architecture.current.name}.tar.gz',
);

Future<void> _installNativeLibrary() async {
  // ignore: avoid_print
  print('Installing native library for Couchbase Dart SDK...');

  final client = RetryClient(Client());
  try {
    final response =
        await client.send(Request('GET', _nativeLibraryDownloadUri));
    if (response.statusCode != 200) {
      final body = await response.stream.bytesToString();
      throw Exception(
        'Failed to download native library from $_nativeLibraryDownloadUri: '
        '${response.statusCode} ${response.reasonPhrase}\n'
        '$body',
      );
    }
    await _unpackTarArchive(
      gzip.decoder.bind(response.stream),
      directory: _installedNativeLibraryDirectoryPath,
    );
  } finally {
    client.close();
  }

  final relativeInstalledNativeLibraryPath =
      path.relative(_installedNativeLibraryPath);

  // ignore: avoid_print
  print('Installed native library at $relativeInstalledNativeLibraryPath');
}

Future<void> _unpackTarArchive(
  Stream<List<int>> stream, {
  required String directory,
}) async {
  // Create a temporary directory to unpack the archive into.
  // If the unpacking fails, the temporary directory will be deleted.
  // If the unpacking succeeds, the temporary directory will be renamed to
  // the target directory.
  // This ensures that the target directory is always in a valid state.
  final temporaryDirectory = await Directory.systemTemp.createTemp();

  try {
    final tarReader = TarReader(stream);
    while (await tarReader.moveNext()) {
      final entry = tarReader.current;
      final entryFile = File(path.join(temporaryDirectory.path, entry.name));
      await entryFile.parent.create(recursive: true);

      final writeSink = entryFile.openWrite(mode: FileMode.writeOnly);
      try {
        await writeSink.addStream(entry.contents);
      } finally {
        await writeSink.close();
      }
    }

    await _ensureEmptyDirectory(directory);
    await temporaryDirectory.rename(directory);
    // ignore: avoid_catches_without_on_clauses
  } catch (e) {
    await temporaryDirectory.delete(recursive: true);
    rethrow;
  }
}

Future<void> _ensureEmptyDirectory(String path) async {
  final directory = Directory(path);
  if (directory.existsSync()) {
    await directory.delete(recursive: true);
  }
  await directory.create(recursive: true);
}
