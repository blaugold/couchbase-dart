import 'package:couchbase/couchbase.dart';
import 'package:test/test.dart';

import 'utils/test_cluster.dart';
import 'utils/test_document.dart';

void main() {
  late Cluster cluster;
  late Collection defaultCollection;

  setUpAll(() async {
    cluster = await connectToTestCluster();
    defaultCollection = cluster.testBucket.defaultCollection;
  });

  test('exists', () async {
    final documentId = createTestDocumentId();

    var result = await defaultCollection.exists(documentId);
    expect(result.cas, isNotNull);
    expect(result.exists, false);

    final insertResult = await defaultCollection.insert(documentId, null);
    result = await defaultCollection.exists(documentId);
    expect(result.cas, insertResult.cas);
    expect(result.exists, true);

    await defaultCollection.remove(documentId);
    result = await defaultCollection.exists(documentId);
    expect(result.cas, isNull);
    expect(result.exists, false);
  });

  test('insert and get document', () async {
    final documentId = createTestDocumentId();
    final documentContent = {'hello': 'world'};

    await defaultCollection.insert(documentId, documentContent);
    final getResult = await defaultCollection.get(
      documentId,
      const GetOptions(withExpiry: true),
    );
    expect(getResult.content, documentContent);
  });

  test('sub document lookup: exists', () async {
    final documentId = createTestDocumentId();
    final documentContent = {'hello': 'world'};

    await defaultCollection.insert(documentId, documentContent);
    var result = await defaultCollection
        .lookupIn(documentId, [LookupInSpec.exists('hello')]);
    expect(result.content.single.value, true);

    result = await defaultCollection
        .lookupIn(documentId, [LookupInSpec.exists('foo')]);
    expect(result.content.single.value, false);
  });

  test('fetch all LookupInMacros for document', () async {
    final documentId = createTestDocumentId();
    final documentContent = {'hello': 'world'};

    await defaultCollection.insert(documentId, documentContent);
    final result = await defaultCollection.lookupIn(
      documentId,
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
    expect(result.content[0].error, isNull);
    expect(
      (result.content[0].value! as Map<String, Object?>)['datatype'],
      ['json'],
    );
    expect(result.content[1].error, isNull);
    expect(result.content[1].value, isNull);
    expect(result.content[2].error, isNull);
    expect(result.content[2].value, result.cas);
    expect(result.content[3].error, isNull);
    expect(result.content[3].value, startsWith('0x'));
    // TODO: Try to insert document with higher durability, once implemented.
    // This might allow us to always get a last modified date.
    // Currently, retrieving the last modified date fails in CI. It seems to
    // have something to do with how new the cluster/bucket is. Locally, the
    // last modified date is always returned, after a few mutation operations.
    // expect(result.content[4].error, isNull);
    // expect(result.content[4].value, isA<DateTime>());
    expect(result.content[5].error, isNull);
    expect(result.content[5].value, false);
    expect(result.content[6].error, isNull);
    expect(result.content[6].value, 17);
    expect(result.content[7].error, isNull);
    expect(result.content[7].value, '1');
  });
}
