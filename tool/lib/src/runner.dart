import 'package:args/command_runner.dart';

import 'command/generate_version.dart';
import 'command/wait_for_publishing.dart';

class ToolRunner extends CommandRunner<void> {
  ToolRunner() : super('tool', 'Development tool for the project.') {
    addCommand(GenerateVersion());
    addCommand(WaitForPublishing());
  }
}
