import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:tool/src/runner.dart';

void main(List<String> arguments) async {
  try {
    await ToolRunner().run(arguments);
  } on UsageException catch (error) {
    stderr.writeln(error);
    exitCode = 64;
    // ignore: avoid_catches_without_on_clauses
  } catch (error) {
    stderr.writeln(error);
    exitCode = 1;
  }
}
