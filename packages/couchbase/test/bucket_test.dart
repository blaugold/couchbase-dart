import 'package:checks/checks.dart';
import 'package:couchbase/couchbase.dart';
import 'package:test/test.dart';

import 'utils/test_cluster.dart';

void main() {
  late Cluster cluster;
  late Bucket testBucket;

  setUpAll(() async {
    cluster = await connectToTestCluster();
    testBucket = cluster.testBucket;
  });

  test('ping', () async {
    // Connecting to a bucket happens asynchronously, the first time a Bucket
    // object is requested.  We need to wait a bit for the connection to
    // complete, to see the bucket in the ping results.
    await Future<void>.delayed(const Duration(seconds: 1));
    final result = await testBucket.ping();
    check(result.services)
      ..length.equals(1)
      ..containsKey(ServiceType.keyValue)
      ..containsValueThat(
        it()..single.has((it) => it.bucket, 'bucket').equals(testBucketName),
      );
  });
}
