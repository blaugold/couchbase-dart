import 'package:couchbase/couchbase.dart';
import 'package:test/test.dart';

void main() async {
  late Cluster cluster;

  setUp(() async {
    cluster = await Cluster.connect(
      'couchbase://localhost',
      ClusterOptions(
        username: 'admin',
        password: 'password',
      ),
    );
  });

  tearDown(() async {
    await cluster.close();
  });

  test('diagnostics', () async {
    final result =
        await cluster.diagnostics(const DiagnosticsOptions(reportId: 'test'));
    expect(result.id, 'test');
    expect(result.version, 2);
    expect(result.sdk, startsWith('cxx'));
    final services = result.services;
    expect(services.keys, containsAll([ServiceType.keyValue]));
  });

  test('ping', () async {
    final result = await cluster.ping(
      const PingOptions(
        reportId: 'test',
        bucket: 'test',
        serviceTypes: [ServiceType.keyValue],
      ),
    );
    expect(result.id, 'test');
    expect(result.version, 2);
    expect(result.sdk, startsWith('cxx'));
    final services = result.services;
    expect(services.keys, containsAll([ServiceType.keyValue]));
    final bucketEndpoint = services[ServiceType.keyValue]!.first;
    expect(bucketEndpoint.bucket, 'test');
  });

  test('insert and get document', timeout: const Timeout.factor(2), () async {
    final bucket = cluster.bucket('test');
    final collection = bucket.defaultCollection;
    final testDocumentId = 'test-${DateTime.now().microsecondsSinceEpoch}';
    final testDocumentValue = {'hello': 'world'};
    await collection.insert(testDocumentId, testDocumentValue);
    final getResult = await collection.get(testDocumentId);
    expect(getResult.content, testDocumentValue);
  });
}
