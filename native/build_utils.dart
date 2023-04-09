import 'dart:convert';
import 'dart:io';

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
