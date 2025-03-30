import 'dart:io';

import 'build_utils.dart';

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
      configuration,
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
