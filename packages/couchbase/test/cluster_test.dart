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
    final getResult = await collection.get(
      testDocumentId,
      const GetOptions(withExpiry: true),
    );
    expect(getResult.content, testDocumentValue);
  });

  test('sub document lookup: exists', () async {
    final bucket = cluster.bucket('test');
    final collection = bucket.defaultCollection;
    final testDocumentId = 'test-${DateTime.now().microsecondsSinceEpoch}';
    final testDocumentValue = {'hello': 'world'};
    await collection.insert(testDocumentId, testDocumentValue);
    var result = await collection
        .lookupIn(testDocumentId, [LookupInSpec.exists('hello')]);
    expect(result.content.single.value, true);
    result =
        await collection.lookupIn(testDocumentId, [LookupInSpec.exists('foo')]);
    expect(result.content.single.value, false);
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
    expect(result.content.length, 8);
    expect(
      (result.content[0].value! as Map<String, Object?>)['datatype'],
      ['json'],
    );
    expect(result.content[1].value, isNull);
    expect(result.content[2].value, result.cas);
    expect(result.content[3].value, '0x0000000000000001');
    expect(result.content[4].value, isA<DateTime>());
    expect(result.content[5].value, false);
    expect(result.content[6].value, 17);
    expect(result.content[7].value, '1');
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
