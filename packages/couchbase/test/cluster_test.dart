import 'package:checks/checks.dart';
import 'package:couchbase/couchbase.dart';
import 'package:test/test.dart';

import 'utils/test_cluster.dart';

void main() async {
  group('connect', () {
    group('authentication', () {
      test('PasswordAuthenticator', () async {
        await connectToTestCluster(
          clusterOptions: ClusterOptions(
            authenticator: testClusterAuthenticator,
          ),
        );
      });

      test('username and password in ClusterOptions', () async {
        await connectToTestCluster(
          clusterOptions: ClusterOptions(
            username: testClusterAuthenticator.username,
            password: testClusterAuthenticator.password,
          ),
        );
      });
    });
  });

  group('diagnostics', () {
    test('default options', () async {
      final cluster = await connectToTestCluster();
      final result = await cluster.diagnostics();

      check(result.version).equals(2);
      check(result.sdk).startsWith('cxx');
      check(result.services).keys.deepEquals([ServiceType.keyValue]);
    });

    test('with reportId', () async {
      final cluster = await connectToTestCluster();
      final result =
          await cluster.diagnostics(const DiagnosticsOptions(reportId: 'test'));
      check(result.id).equals('test');
    });
  });

  group('ping', () {
    test('default options', () async {
      final cluster = await connectToTestCluster();
      final result = await cluster.ping();
      check(result.version).equals(2);
      check(result.sdk).startsWith('cxx');
      check(result.services).keys.deepEquals([
        ServiceType.keyValue,
        ServiceType.views,
        ServiceType.management,
      ]);
    });

    test('with bucket', () async {
      final cluster = await connectToTestCluster();
      final result =
          await cluster.ping(const PingOptions(bucket: testBucketName));
      check(result.services)
        ..length.equals(1)
        ..containsKey(ServiceType.keyValue)
        ..containsValueThat(
          it()..single.has((it) => it.bucket, 'bucket').equals(testBucketName),
        );
    });

    test('with reportId', () async {
      final cluster = await connectToTestCluster();
      final result = await cluster.ping(const PingOptions(reportId: 'test'));
      check(result.id).equals('test');
    });

    test('with serviceTypes', () async {
      final cluster = await connectToTestCluster();
      final result = await cluster
          .ping(const PingOptions(serviceTypes: [ServiceType.keyValue]));
      check(result.services).keys.deepEquals([ServiceType.keyValue]);
    });
  });
}
