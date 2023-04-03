import 'package:couchbase/couchbase.dart';
import 'package:couchbase/src/collection.dart';
import 'package:couchbase/src/general.dart';
import 'package:couchbase/src/message.g.dart';
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

  group('get', () {
    test('default options', () async {
      final documentId = createTestDocumentId();
      final insertResult = await defaultCollection.insert(documentId, true);
      final result = await defaultCollection.get(documentId);
      expect(result.cas, insertResult.cas);
      expect(result.content, true);
      expect(result.expiryTime, isNull);
    });

    group('with project', () {
      test('throws when no projection paths are given', () async {
        expect(
          () => defaultCollection.get('', const GetOptions(project: [])),
          throwsA(isA<ArgumentError>()),
        );
      });

      test('throws when document does not contain JSON', () async {
        final documentId = createTestDocumentId();
        await defaultCollection.insert(documentId, 'a');
        expect(
          () => defaultCollection.get(
            documentId,
            const GetOptions(project: ['b']),
          ),
          throwsA(isA<ArgumentError>()),
        );
      });

      test('projection path with key and non-zero index', () async {
        final documentId = createTestDocumentId();
        final insertResult = await defaultCollection.insert(documentId, {
          'a': [true, false]
        });
        final result = await defaultCollection.get(
          documentId,
          const GetOptions(project: ['a[1]']),
        );
        expect(result.cas, insertResult.cas);
        expect(result.content, {
          'a': [null, false]
        });
        expect(result.expiryTime, isNull);
      });

      test('projection with path that does not exist in document', () async {
        final documentId = createTestDocumentId();
        await defaultCollection.insert(documentId, {'a': 0});

        var result = await defaultCollection.get(
          documentId,
          const GetOptions(project: ['b']),
        );
        expect(result.content, null);

        result = await defaultCollection.get(
          documentId,
          const GetOptions(project: ['a', 'b']),
        );
        expect(result.content, {'a': 0});
      });

      test('16 projection paths', () async {
        final documentId = createTestDocumentId();
        final insertResult = await defaultCollection.insert(documentId, {
          'a': 0,
          'b': 1,
          'c': 2,
          'd': 3,
          'e': 4,
          'f': 5,
          'g': 6,
          'h': 7,
          'i': 8,
          'j': 9,
          'k': 10,
          'l': 11,
          'm': 12,
          'n': 13,
          'o': 14,
        });
        final result = await defaultCollection.get(
          documentId,
          const GetOptions(
            project: [
              'a',
              'b',
              'c',
              'd',
              'e',
              'f',
              'g',
              'h',
              'i',
              'j',
              'k',
              'l',
              'm',
              'n',
              'o',
              'p',
            ],
          ),
        );
        expect(result.cas, insertResult.cas);
        expect(result.content, {
          'a': 0,
          'b': 1,
          'c': 2,
          'd': 3,
          'e': 4,
          'f': 5,
          'g': 6,
          'h': 7,
          'i': 8,
          'j': 9,
          'k': 10,
          'l': 11,
          'm': 12,
          'n': 13,
          'o': 14,
        });
      });
    });

    group('with withExpiry', () {
      test('document with expiry', () async {
        final documentId = createTestDocumentId();

        final insertResult = await defaultCollection.insert(
          documentId,
          true,
          InsertOptions(expiry: const Duration(hours: 1)),
        );
        final result = await defaultCollection.get(
          documentId,
          const GetOptions(withExpiry: true),
        );
        expect(result.cas, insertResult.cas);
        expect(result.content, true);
        expect(result.expiryTime, isNotNull);
      });

      test('document without expiry', () async {
        final documentId = createTestDocumentId();

        final insertResult = await defaultCollection.insert(
          documentId,
          true,
        );
        final result = await defaultCollection.get(
          documentId,
          const GetOptions(withExpiry: true),
        );
        expect(result.cas, insertResult.cas);
        expect(result.content, true);
        expect(result.expiryTime, isNull);
      });

      test('document with expiry and UTF8 content', () async {
        final documentId = createTestDocumentId();

        final insertResult = await defaultCollection.insert(
          documentId,
          'a',
          InsertOptions(expiry: const Duration(hours: 1)),
        );
        final result = await defaultCollection.get(
          documentId,
          const GetOptions(withExpiry: true),
        );
        expect(result.cas, insertResult.cas);
        expect(result.content, 'a');
        expect(result.expiryTime, isNotNull);
      });
    });

    test('document does not exist', () async {
      final documentId = createTestDocumentId();
      KeyValueException? exception;
      try {
        await defaultCollection.get(documentId);
      } on KeyValueException catch (e) {
        exception = e;
      }
      expect(exception, isNotNull);
      expect(exception!.code, KeyValueErrorCode.documentNotFound);
      expect(exception.context!.cas, InternalCas.zero);
      expect(exception.context!.key, documentId);
      expect(exception.context!.statusCode, KeyValueStatusCode.notFound);
    });
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
        LookupInSpec.get(LookupInMacro.valueSizeBytes),
        LookupInSpec.get(LookupInMacro.revId),
      ],
    );
    expect(result.content.length, 7);
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
    expect(result.content[5].value, 17);
    expect(result.content[6].error, isNull);
    expect(result.content[6].value, '1');
  });
}
