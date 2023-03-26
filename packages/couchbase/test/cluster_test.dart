import 'dart:async';

import 'package:couchbase/src/cluster.dart';
import 'package:couchbase/src/connection.dart';
import 'package:couchbase/src/message.g.dart';
import 'package:test/test.dart';

void main() async {
  test('insert and get document', timeout: const Timeout.factor(2), () async {
    final cluster = await connect(
      'couchbase://localhost',
      ConnectOptions(
        username: 'admin',
        password: 'password',
      ),
    );

    await cluster.waitForBucket('test', timeout: const Duration(seconds: 30));

    final bucket = cluster.bucket('test');
    final collection = bucket.defaultCollection;
    final testDocumentId = 'test-${DateTime.now().microsecondsSinceEpoch}';
    final testDocumentValue = {'hello': 'world'};
    await collection.insert(testDocumentId, testDocumentValue);
    final getResult = await collection.get(testDocumentId);
    expect(getResult.content, testDocumentValue);

    await cluster.close();
  });
}

extension on Cluster {
  Future<void> waitForBucket(String name, {required Duration timeout}) async {
    final timeoutEnd = DateTime.now().add(timeout);

    while (true) {
      if (timeoutEnd.isBefore(DateTime.now())) {
        throw TimeoutException(
          'Bucket $name did not become available.',
          timeout,
        );
      }

      final response = await connection.managementBucketGetAll(
        ManagementBucketGetAllRequest(
          clientContextId: null,
          timeout: null,
        ),
      );

      if (response.buckets.any((element) => element.name == name)) {
        print('Bucket $name is now available.');
        break;
      }

      print('Waiting for bucket $name...');

      await Future<void>.delayed(const Duration(seconds: 1));
    }
  }
}
