import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:path/path.dart' as path;

import '../current_version.dart';

final _versionFilePath =
    path.canonicalize('../packages/couchbase/lib/src/version.g.dart');

class GenerateVersion extends Command<void> {
  @override
  final String name = 'generate-version';

  @override
  final String description = 'Generates the version.g.dart file.';

  @override
  void run() {
    final version = loadCurrentCouchbasePackageVersion();
    final content = _generateVersionFileContent(version);
    final versionFile = File(_versionFilePath);
    versionFile.writeAsStringSync(content);
    // ignore: avoid_print
    print('Wrote version $version to $_versionFilePath.');
  }

  String _generateVersionFileContent(String version) {
    return '''
// GENERATED CODE - DO NOT MODIFY BY HAND
const couchbaseDartVersion = '$version';
''';
  }
}
