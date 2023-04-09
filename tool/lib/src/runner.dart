import 'package:args/command_runner.dart';

import 'command/generate_version.dart';

class ToolRunner extends CommandRunner<void> {
  ToolRunner() : super('tool', 'Development tool for the project.') {
    addCommand(GenerateVersion());
  }
}
