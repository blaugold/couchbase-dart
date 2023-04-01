// ignore_for_file: public_member_api_docs

import 'dart:ffi';
import 'dart:io';

import 'package:path/path.dart' as path;

import 'lib_couchbase_dart.dart';

final bindings = _initBindings(_loadLibrary());

DynamicLibrary _loadLibrary() {
  final buildDirectory = path.absolute('../../native/build');
  final libBaseNamePath = path.join(buildDirectory, 'libCouchbaseDart');
  if (Platform.isMacOS) {
    return DynamicLibrary.open('$libBaseNamePath.dylib');
  } else if (Platform.isLinux) {
    return DynamicLibrary.open('$libBaseNamePath.so');
  } else if (Platform.isWindows) {
    return DynamicLibrary.open('$libBaseNamePath.dll');
  } else {
    throw UnsupportedError('Unsupported platform.');
  }
}

LibCouchbaseDart _initBindings(DynamicLibrary library) {
  final bindings = LibCouchbaseDart(library);

  if (!bindings.CBD_Init(NativeApi.initializeApiDLData)) {
    throw StateError(
      'libCouchbaseDart is incompatible with the current Dart VM.',
    );
  }

  return bindings;
}
