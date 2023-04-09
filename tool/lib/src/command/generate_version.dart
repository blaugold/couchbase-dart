import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:path/path.dart' as path;
import 'package:pubspec_parse/pubspec_parse.dart';

final _pubspecPath = path.canonicalize('../packages/couchbase/pubspec.yaml');
final _versionFilePath =
    path.canonicalize('../packages/couchbase/lib/src/version.g.dart');

class GenerateVersion extends Command<void> {
  @override
  final String name = 'generate-version';

  @override
  final String description = 'Generates the version.g.dart file.';

  @override
  void run() {
    final version = _readVersion();
    final content = _generateVersionFileContent(version);
    final versionFile = File(_versionFilePath);
    versionFile.writeAsStringSync(content);
    // ignore: avoid_print
    print('Wrote version $version to $_versionFilePath.');
  }

  String _readVersion() {
    // Read the version from the pubspec.yaml file.
    final pubspecFile = File(_pubspecPath);
    final pubspec = Pubspec.parse(
      pubspecFile.readAsStringSync(),
      sourceUrl: pubspecFile.uri,
    );
    return pubspec.version.toString();
  }

  String _generateVersionFileContent(String version) {
    return '''
// GENERATED CODE - DO NOT MODIFY BY HAND
const couchbaseDartVersion = '$version';
''';
  }
}
