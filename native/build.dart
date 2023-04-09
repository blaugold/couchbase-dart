import 'dart:io';

import 'build_utils.dart';

void main() async {
  await command('cmake', [
    '-S',
    '.',
    '-B',
    'build',
    '-DCMAKE_BUILD_TYPE=RelWithDebInfo',
  ]);
  await command(
    'cmake',
    [
      '--build',
      'build',
      '-j',
      Platform.numberOfProcessors.toString(),
    ],
  );
}
