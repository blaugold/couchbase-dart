import 'dart:io';

void main(List<String> arguments) async {
  if (arguments.contains('--clean')) {
    await cleanOpenSsl();
  }

  if (Platform.isMacOS) {
    await buildMacOS();
  } else if (Platform.isLinux) {
    await buildLinux();
  } else {
    throw Exception('Unsupported platform: ${Platform.operatingSystem}');
  }
}

final openSslDirectory = '${Directory.current.path}/vendor/openssl';
final openSslBuildDirectory = '${Directory.current.path}/build/vendor/openssl';
final openSslArchBuildDirectory = '$openSslBuildDirectory/arch';

const compiler = 'ccache cc';

Future<void> buildLinux() async {
  await buildOpenSsl(
    outDirectory: openSslBuildDirectory,
    configuration: 'linux-x86_64',
    compiler: compiler,
  );
}

Future<void> buildMacOS() async {
  final x86buildDirectory = '$openSslArchBuildDirectory/x86';
  final arm64buildDirectory = '$openSslArchBuildDirectory/arm64';

  await buildOpenSsl(
    outDirectory: x86buildDirectory,
    configuration: 'darwin64-x86_64-cc',
    compiler: compiler,
  );
  await cleanOpenSsl();
  await buildOpenSsl(
    outDirectory: arm64buildDirectory,
    configuration: 'darwin64-arm64-cc',
    compiler: compiler,
  );

  final libraries = ['libcrypto.a', 'libssl.a'];
  final libDirectory = '$openSslBuildDirectory/lib';
  await Directory(libDirectory).create(recursive: true);

  for (final library in libraries) {
    await createUniversalBinary(
      binaries: [
        '$x86buildDirectory/lib/$library',
        '$arm64buildDirectory/lib/$library',
      ],
      output: '$libDirectory/$library',
    );
  }

  await copy(
    from: '$x86buildDirectory/include',
    to: '$openSslBuildDirectory/include',
  );
}

Future<void> cleanOpenSsl() async {
  await command(
    'make',
    ['clean'],
    workingDirectory: openSslDirectory,
  );
}

Future<void> buildOpenSsl({
  required String outDirectory,
  required String configuration,
  required String compiler,
}) async {
  await command(
    Platform.isWindows ? 'perl' : './Configure',
    [
      if (Platform.isWindows) 'Configure',
      '--prefix=$outDirectory',
      '--openssldir=$outDirectory/ssl',
      'no-ssl3',
      'no-ssl3-method',
      'no-zlib',
      configuration
    ],
    environment: {
      'CC': compiler,
      'CXX': compiler,
    },
    workingDirectory: openSslDirectory,
  );
  await command(
    'make',
    ['-j', Platform.numberOfProcessors.toString()],
    workingDirectory: openSslDirectory,
  );
  await command(
    'make',
    ['install_sw'],
    workingDirectory: openSslDirectory,
  );
}

Future<void> createUniversalBinary({
  required List<String> binaries,
  required String output,
}) async {
  return command('lipo', [
    ...binaries,
    '-create',
    '-output',
    output,
  ]);
}

Future<void> copy({
  required String from,
  required String to,
}) {
  return command(
    'cp',
    ['-r', from, to],
  );
}

Future<void> command(
  String command,
  List<String> arguments, {
  String? workingDirectory,
  Map<String, String>? environment,
}) async {
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
    final quotedArguments = arguments
        .map((argument) => argument.replaceAll('"', r'\"'))
        .map((argument) => '"$argument"');
    final formattedCommand = [command, ...quotedArguments].join(' ');
    throw Exception(
      'Failed to run (exit code $exitCode) $formattedCommand',
    );
  }
}
