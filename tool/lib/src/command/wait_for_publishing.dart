import 'dart:convert';

import 'package:args/command_runner.dart';
import 'package:http/http.dart';

import '../current_version.dart';

class WaitForPublishing extends Command<void> {
  Duration get _timeout => const Duration(minutes: 30);

  Duration get _delay => const Duration(seconds: 15);

  @override
  final String name = 'wait-for-publishing';

  @override
  final String description =
      'Waits for the current version of the couchbase package to be published.';

  @override
  Future<void> run() async {
    final currentVersion = loadCurrentCouchbasePackageVersion();
    // ignore: avoid_print
    print('Waiting for version $currentVersion to be published...');
    await _waitForPublishing(currentVersion);
    // ignore: avoid_print
    print('Version $currentVersion has been published.');
  }

  Future<void> _waitForPublishing(String currentVersion) async {
    final start = DateTime.now();

    while (DateTime.now().difference(start) < _timeout) {
      final publishedVersions = await _getPublishedVersions();
      if (publishedVersions.contains(currentVersion)) {
        return;
      }

      // ignore: avoid_print
      print(
        'Version $currentVersion has not been published yet. '
        'Retrying after $_delay...',
      );
      await Future<void>.delayed(_delay);
    }
  }

  Future<List<String>> _getPublishedVersions() async {
    final response =
        await get(Uri.parse('https://pub.dev/api/packages/couchbase'));

    if (response.statusCode != 200) {
      throw Exception('Failed to get published versions.');
    }

    final json = jsonDecode(response.body) as Map<String, Object?>;
    final versions =
        List<Map<String, Object?>>.from(json['versions']! as List<Object?>);
    return versions.map((version) => version['version']! as String).toList();
  }
}
