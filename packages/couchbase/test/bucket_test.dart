import 'package:checks/checks.dart';
import 'package:couchbase/couchbase.dart';
import 'package:test/test.dart';

import 'utils/cluster.dart';
import 'utils/utils.dart';

void main() {
  late Cluster cluster;
  late Bucket testBucket;

  setUpAll(() async {
    cluster = await connectToTestCluster();
    testBucket = cluster.testBucket;
  });

  test('ping', () async {
    // Connecting to a bucket happens asynchronously the first time a Bucket
    // object is requested. We might have to try a few times before the
    // connection is established, and we see the bucket in the ping response.
    await withRetry(() async {
      final result = await testBucket.ping();
      check(result.services)
        ..length.equals(1)
        ..containsKey(ServiceType.keyValue)
        ..containsValueThat(
          it()..single.has((it) => it.bucket, 'bucket').equals(testBucketName),
        );
    });
  });
}
