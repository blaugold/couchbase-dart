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

  test('insert and get document', () async {
    final bucket = cluster.bucket('test');
    final collection = bucket.defaultCollection;
    final testDocumentId = 'test-${DateTime.now().microsecondsSinceEpoch}';
    final testDocumentValue = {'hello': 'world'};
    await collection.insert(testDocumentId, testDocumentValue);
    final getResult = await collection.get(testDocumentId, GetOptions(withExpiry: true));
    expect(getResult.content, testDocumentValue);
  });

  test('sub document lookup: exists', () async {
    final bucket = cluster.bucket('test');
    final collection = bucket.defaultCollection;
    final testDocumentId = 'test-${DateTime.now().microsecondsSinceEpoch}';
    final testDocumentValue = {'hello': 'world'};
    await collection.insert(testDocumentId, testDocumentValue);
    var existsResult = await collection
        .lookupIn(testDocumentId, [LookupInSpec.exists('hello')]);
    expect(existsResult.content.single.value, true);
    existsResult =
        await collection.lookupIn(testDocumentId, [LookupInSpec.exists('foo')]);
    expect(existsResult.content.single.value, false);
  });

  test('fetch all LookupInMacros for document', () async {
    final bucket = cluster.bucket('test');
    final collection = bucket.defaultCollection;
    final testDocumentId = 'test-${DateTime.now().microsecondsSinceEpoch}';
    final testDocumentValue = {'hello': 'world'};
    await collection.insert(testDocumentId, testDocumentValue);
    final result = await collection.lookupIn(
      testDocumentId,
      [
        LookupInSpec.get(''),
        LookupInSpec.get(LookupInMacro.document),
        LookupInSpec.get(LookupInMacro.expiry),
        LookupInSpec.get(LookupInMacro.cas),
        LookupInSpec.get(LookupInMacro.seqNo),
        LookupInSpec.get(LookupInMacro.lastModified),
        LookupInSpec.get(LookupInMacro.isDeleted),
        LookupInSpec.get(LookupInMacro.valueSizeBytes),
        LookupInSpec.get(LookupInMacro.revId),
      ],
    );
  });

  test('check if document exists', () async {
    final bucket = cluster.bucket('test');
    final collection = bucket.defaultCollection;
    final testDocumentId = 'test-${DateTime.now().microsecondsSinceEpoch}';
    final testDocumentValue = {'hello': 'world'};

    var result = await collection.exists(testDocumentId);
    expect(result.exists, false);

    await collection.insert(testDocumentId, testDocumentValue);
    result = await collection.exists(testDocumentId);
    expect(result.exists, true);
  });
}
