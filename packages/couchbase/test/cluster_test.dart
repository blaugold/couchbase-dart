import 'package:checks/checks.dart';
import 'package:couchbase/couchbase.dart';
import 'package:test/test.dart';

import 'utils/cluster.dart';
import 'utils/document.dart';
import 'utils/subject.dart';

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

  group('query', () {
    late final Cluster cluster;

    setUpAll(() async {
      cluster = await connectToTestCluster();
    });

    test('default options', () async {
      final result = await cluster.query('SELECT 1');
      check(result).rows.single.deepEquals({r'$1': 1});
      check(result).meta
        ..status.equals(QueryStatus.success)
        ..signature.isNotNull().deepEquals({r'$1': 'number'})
        ..warnings.isEmpty()
        ..metrics.isNull()
        ..profile.isNull();
    });

    test('with parameters (positional)', () async {
      final result = await cluster.query(
        r'SELECT $1',
        const QueryOptions(parameters: [1]),
      );
      check(result).rows.single.deepEquals({r'$1': 1});
    });

    test('with parameters (named)', () async {
      final result = await cluster.query(
        r'SELECT $foo',
        const QueryOptions(parameters: {'foo': 1}),
      );
      check(result).rows.single.deepEquals({r'$1': 1});
    });

    test('with scanConsistency', () async {
      final result = await cluster.query(
        'SELECT 1',
        const QueryOptions(scanConsistency: QueryScanConsistency.requestPlus),
      );
      check(result).rows.single.deepEquals({r'$1': 1});
    });

    test('with consistentWith', () async {
      final insertResult = await cluster.testBucket.defaultCollection
          .insert(createTestDocumentId(), null);
      final mutationState = MutationState()..add(insertResult.token!);
      final result = await cluster.query(
        'SELECT 1',
        QueryOptions(consistentWith: mutationState),
      );
      check(result).rows.single.deepEquals({r'$1': 1});
    });

    test('with adhoc', () async {
      final result = await cluster.query(
        'SELECT 1',
        const QueryOptions(adhoc: false),
      );
      check(result).rows.single.deepEquals({r'$1': 1});
    });

    test('with flexIndex', () async {
      final result = await cluster.query(
        'SELECT 1',
        const QueryOptions(flexIndex: true),
      );
      check(result).rows.single.deepEquals({r'$1': 1});
    });

    test('with preserveExpiry', () async {
      final documentId = createTestDocumentId();
      await cluster.testBucket.defaultCollection.insert(
        documentId,
        {},
        const InsertOptions(expiry: Duration(hours: 1)),
      );

      var queryResult = await cluster.query(
        'UPDATE `$testBucketName` SET a = true WHERE META().id = \$1',
        QueryOptions(
          parameters: [documentId],
          metrics: true,
          scanConsistency: QueryScanConsistency.requestPlus,
          preserveExpiry: true,
        ),
      );
      check(queryResult).meta.metrics.isNotNull().mutationCount.equals(1);
      var getResult = await cluster.testBucket.defaultCollection.get(
        documentId,
        const GetOptions(withExpiry: true),
      );
      check(getResult.expiryTime).isNotNull();

      queryResult = await cluster.query(
        'UPDATE `$testBucketName` SET a = true WHERE META().id = \$1',
        QueryOptions(
          parameters: [documentId],
          metrics: true,
          scanConsistency: QueryScanConsistency.requestPlus,
        ),
      );
      check(queryResult).meta.metrics.isNotNull().mutationCount.equals(1);
      getResult = await cluster.testBucket.defaultCollection.get(
        documentId,
        const GetOptions(withExpiry: true),
      );
      check(getResult.expiryTime).isNull();
    });

    test('with clientContextId', () async {
      final result = await cluster.query(
        'SELECT 1',
        const QueryOptions(clientContextId: 'test'),
      );
      check(result).meta.clientContextId.equals('test');
    });

    test('with maxParallelism', () async {
      await cluster.query(
        'SELECT 1',
        const QueryOptions(maxParallelism: 1),
      );
    });

    test('with pipelineBatch', () async {
      await cluster.query(
        'SELECT 1',
        const QueryOptions(pipelineBatch: 1),
      );
    });

    test('with pipelineCap', () async {
      await cluster.query(
        'SELECT 1',
        const QueryOptions(pipelineCap: 1),
      );
    });

    test('with scanWait', () async {
      await cluster.query(
        'SELECT 1',
        const QueryOptions(scanWait: Duration(seconds: 1)),
      );
    });

    test('with scanCap', () async {
      await cluster.query(
        'SELECT 1',
        const QueryOptions(scanCap: 1),
      );
    });

    test('with readOnly', () async {
      await cluster.query(
        'SELECT 1',
        const QueryOptions(readOnly: true),
      );

      await check(
        cluster.query(
          'UPDATE `$testBucketName` SET a = true',
          const QueryOptions(readOnly: true),
        ),
      ).throws<InternalServerFailure>();
    });

    test('with profile', () async {
      final result = await cluster.query(
        'SELECT 1',
        const QueryOptions(profile: QueryProfileMode.timings),
      );
      check(result).meta.profile.isNotNull();
    });

    test('with metrics', () async {
      final result = await cluster.query(
        'SELECT 1',
        const QueryOptions(metrics: true),
      );
      check(result).meta.metrics.isNotNull();
    });

    test('with queryContext', () async {
      final documentId = createTestDocumentId();
      await cluster.testBucket.defaultCollection.insert(documentId, true);

      final result = await cluster.query(
        r'SELECT * FROM _default WHERE META().id = $1',
        QueryOptions(
          queryContext: '$testBucketName._default',
          parameters: [documentId],
          scanConsistency: QueryScanConsistency.requestPlus,
        ),
      );
      check(result).rows.single.deepEquals({'_default': true});
    });

    test('with raw', () async {
      await cluster.query(
        'SELECT 1',
        const QueryOptions(raw: {'use_fts': true}),
      );
      await check(
        cluster.query(
          'SELECT 1',
          const QueryOptions(raw: {'foo': true}),
        ),
      ).throws<InvalidArgument>();
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
        ServiceType.query,
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
        ..containsValueThat((it) {
          it.single.has((it) => it.bucket, 'bucket').equals(testBucketName);
        });
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
