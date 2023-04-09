import 'dart:convert';
import 'dart:io';

final openSslSourceDirectory = '${Directory.current.path}/vendor/openssl';
final openSslBuildDirectory = '${Directory.current.path}/build/vendor/openssl';
final openSslInstallDirectory = '$openSslBuildDirectory/install';

void main(List<String> arguments) async {
  final String arch;
  final archIndex = arguments.indexOf('--arch');
  if (archIndex != -1) {
    arch = arguments[archIndex + 1];
  } else {
    arch = currentArch();
  }

  var compiler = 'cc';
  if (!arguments.contains('--no-ccache')) {
    compiler = 'ccache $compiler';
  }

  await buildOpenSsl(
    sourceDirectory: openSslSourceDirectory,
    buildDirectory: openSslBuildDirectory,
    installDirectory: openSslInstallDirectory,
    configuration: resolveConfiguration(arch: arch),
    compiler: compiler,
  );
}

String resolveConfiguration({required String arch}) {
  if (Platform.isLinux) {
    if (arch == 'x86_64') {
      return 'linux-x86_64';
    } else if (arch == 'aarch64') {
      return 'linux-aarch64';
    }
  } else if (Platform.isMacOS) {
    if (arch == 'x86_64') {
      return 'darwin64-x86_64-cc';
    } else if (arch == 'arm64') {
      return 'darwin64-arm64-cc';
    }
  }
  throw UnsupportedError(
    'Unsupported platform: ${Platform.operatingSystem}-$arch',
  );
}

Future<void> buildOpenSsl({
  required String sourceDirectory,
  required String buildDirectory,
  required String installDirectory,
  required String configuration,
  required String compiler,
}) async {
  await ensureEmptyDirectory(buildDirectory);
  await ensureEmptyDirectory(installDirectory);

  final configureScript = '$sourceDirectory/Configure';

  await command(
    Platform.isWindows ? 'perl' : configureScript,
    [
      if (Platform.isWindows) configureScript,
      '--prefix=$installDirectory',
      '--openssldir=$installDirectory/ssl',
      '--libdir=lib',
      'no-ssl3',
      'no-ssl3-method',
      'no-zlib',
      configuration
    ],
    environment: {
      'CC': compiler,
      'CXX': compiler,
    },
    workingDirectory: buildDirectory,
  );
  await command(
    'make',
    [
      '-j',
      Platform.numberOfProcessors.toString(),
      'build_sw',
    ],
    workingDirectory: buildDirectory,
  );
  await command(
    'make',
    ['install_sw'],
    workingDirectory: buildDirectory,
  );
}

Future<void> ensureEmptyDirectory(String path) async {
  final directory = Directory(path);
  if (directory.existsSync()) {
    await directory.delete(recursive: true);
  }
  await directory.create(recursive: true);
}

Future<void> command(
  String command,
  List<String> arguments, {
  String? workingDirectory,
  Map<String, String>? environment,
}) async {
  final formattedCommand = formatCommand(command, arguments);
  // ignore: avoid_print
  print('Running $formattedCommand');

  final process = await Process.start(
    command,
    arguments,
    runInShell: Platform.isWindows,
    mode: ProcessStartMode.inheritStdio,
    workingDirectory: workingDirectory,
    environment: environment,
  );
  final exitCode = await process.exitCode;
  if (exitCode != 0) {
    throw Exception(
      'Failed to run command (exit code $exitCode): $formattedCommand',
    );
  }
}

String commandForResult(
  String command,
  List<String> arguments, {
  String? workingDirectory,
  Map<String, String>? environment,
}) {
  final result = Process.runSync(
    command,
    arguments,
    runInShell: Platform.isWindows,
    workingDirectory: workingDirectory,
    environment: environment,
    stdoutEncoding: utf8,
    stderrEncoding: utf8,
  );
  final exitCode = result.exitCode;
  if (exitCode != 0) {
    throw Exception(
      'Failed to run (exit code $exitCode) '
      '${formatCommand(command, arguments)}:'
      '\n${result.stdout}\n${result.stderr}',
    );
  }
  return result.stdout.toString();
}

String formatCommand(String command, List<String> arguments) =>
    [command, ...arguments.map(quoteArgument)].join(' ');

String quoteArgument(String argument) => '"${argument.replaceAll('"', r'\"')}"';

String currentArch() {
  if (Platform.isLinux || Platform.isMacOS) {
    return commandForResult('uname', ['-m']).trim().toLowerCase();
  } else {
    throw Exception('Unsupported platform: ${Platform.operatingSystem}');
  }
}
