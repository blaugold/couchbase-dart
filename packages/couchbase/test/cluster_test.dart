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
      expect(result.version, 2);
      expect(result.sdk, startsWith('cxx'));
      final services = result.services;
      expect(services.keys, [ServiceType.keyValue]);
    });

    test('with reportId', () async {
      final cluster = await connectToTestCluster();
      final result =
          await cluster.diagnostics(const DiagnosticsOptions(reportId: 'test'));
      expect(result.id, 'test');
    });
  });

  group('ping', () {
    test('default options', () async {
      final cluster = await connectToTestCluster();
      final result = await cluster.ping();
      expect(result.version, 2);
      expect(result.sdk, startsWith('cxx'));
      final services = result.services;
      expect(
        services.keys,
        [
          ServiceType.keyValue,
          ServiceType.views,
          ServiceType.management,
        ],
      );
    });

    test('with bucket', () async {
      final cluster = await connectToTestCluster();
      final result =
          await cluster.ping(const PingOptions(bucket: testBucketName));
      final services = result.services;
      expect(services.keys, [ServiceType.keyValue]);
      final bucketEndpoint = services[ServiceType.keyValue]!.single;
      expect(bucketEndpoint.bucket, testBucketName);
    });

    test('with reportId', () async {
      final cluster = await connectToTestCluster();
      final result = await cluster.ping(const PingOptions(reportId: 'test'));
      expect(result.id, 'test');
    });

    test('with serviceTypes', () async {
      final cluster = await connectToTestCluster();
      final result = await cluster.ping(
        const PingOptions(
          serviceTypes: [ServiceType.keyValue],
        ),
      );
      final services = result.services;
      expect(services.keys, [ServiceType.keyValue]);
    });
  });
}
