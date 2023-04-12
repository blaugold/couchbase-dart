
import 'dart:io';

import 'package:path/path.dart' as path;
import 'package:pubspec_parse/pubspec_parse.dart';

final _pubspecPath = path.canonicalize('../packages/couchbase/pubspec.yaml');

String loadCurrentCouchbasePackageVersion() {
  // Read the version from the pubspec.yaml file.
  final pubspecFile = File(_pubspecPath);
  final pubspec = Pubspec.parse(
    pubspecFile.readAsStringSync(),
    sourceUrl: pubspecFile.uri,
  );
  return pubspec.version.toString();
}
