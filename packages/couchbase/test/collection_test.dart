import 'package:checks/checks.dart';
import 'package:checks/context.dart';
import 'package:couchbase/couchbase.dart';
import 'package:couchbase/src/collection.dart';
import 'package:couchbase/src/general.dart';
import 'package:couchbase/src/message.g.dart';
import 'package:test/test.dart';

import 'utils/subject.dart';
import 'utils/test_cluster.dart';
import 'utils/test_document.dart';

void main() {
  late Cluster cluster;
  late Collection defaultCollection;

  setUpAll(() async {
    cluster = await connectToTestCluster();
    defaultCollection = cluster.testBucket.defaultCollection;
  });

  group('get', () {
    test('default options', () async {
      final documentId = createTestDocumentId();
      final insertResult = await defaultCollection.insert(documentId, true);
      final result = await defaultCollection.get(documentId);
      check(result)
        ..cas.equals(insertResult.cas)
        ..content.equals(true)
        ..expiryTime.isNull();
    });

    group('with project', () {
      test('throws when no projection paths are given', () async {
        await check(defaultCollection.get('', const GetOptions(project: [])))
            .throws<ArgumentError>();
      });

      test('throws when document does not contain JSON', () async {
        final documentId = createTestDocumentId();
        await defaultCollection.insert(documentId, 'a');
        await check(
          defaultCollection.get(
            documentId,
            const GetOptions(project: ['b']),
          ),
        ).throws<ArgumentError>();
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

        check(result)
          ..cas.equals(insertResult.cas)
          ..content.isJsonMap.deepEquals({
            'a': [null, false]
          })
          ..expiryTime.isNull();
      });

      test('projection with path that does not exist in document', () async {
        final documentId = createTestDocumentId();
        await defaultCollection.insert(documentId, {'a': 0});

        var result = await defaultCollection.get(
          documentId,
          const GetOptions(project: ['b']),
        );
        check(result).content.isNull();

        result = await defaultCollection.get(
          documentId,
          const GetOptions(project: ['a', 'b']),
        );
        check(result).content.isJsonMap.deepEquals({'a': 0});
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
        check(result)
          ..cas.equals(insertResult.cas)
          ..content.isJsonMap.deepEquals({
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
        check(result)
          ..cas.equals(insertResult.cas)
          ..content.equals(true)
          ..expiryTime.isNotNull();
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
        check(result)
          ..cas.equals(insertResult.cas)
          ..content.equals(true)
          ..expiryTime.isNull();
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
        check(result)
          ..cas.equals(insertResult.cas)
          ..content.equals('a')
          ..expiryTime.isNotNull();
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

      check(exception).isNotNull();
      check(exception!.code).equals(KeyValueErrorCode.documentNotFound);
      check(exception.context!.cas).equals(InternalCas.zero);
      check(exception.context!.key).equals(documentId);
      check(exception.context!.statusCode).equals(KeyValueStatusCode.notFound);
    });
  });

  test('exists', () async {
    final documentId = createTestDocumentId();

    var result = await defaultCollection.exists(documentId);
    check(result)
      ..cas.isNotNull()
      ..exists.isFalse();

    final insertResult = await defaultCollection.insert(documentId, null);
    result = await defaultCollection.exists(documentId);
    check(result)
      ..cas.equals(insertResult.cas)
      ..exists.isTrue();

    await defaultCollection.remove(documentId);
    result = await defaultCollection.exists(documentId);
    check(result)
      ..cas.isNull()
      ..exists.isFalse();
  });

  test('sub document lookup: exists', () async {
    final documentId = createTestDocumentId();
    final documentContent = {'hello': 'world'};

    await defaultCollection.insert(documentId, documentContent);
    var result = await defaultCollection
        .lookupIn(documentId, [LookupInSpec.exists('hello')]);
    check(result).content.single.value.isBool.isTrue();

    result = await defaultCollection
        .lookupIn(documentId, [LookupInSpec.exists('foo')]);
    check(result).content.single.value.isBool.isFalse();
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

    check(result).content.containsInOrder([
      lookupInResultEntry()
        ..error.isNull()
        ..value.isJsonMap['datatype'].isA<List<Object?>>().deepEquals(['json']),
      lookupInResultEntry()
        ..error.isNull()
        ..value.isNull(),
      lookupInResultEntry()
        ..error.isNull()
        ..value.equals(result.cas),
      lookupInResultEntry()
        ..error.isNull()
        ..value.isA<String>().startsWith('0x'),
      // TODO: Try to insert document with higher durability, once implemented.
      // This might allow us to always get a last modified date.
      // Currently, retrieving the last modified date fails in CI. It seems to
      // have something to do with how new the cluster/bucket is. Locally, the
      // last modified date is always returned, after a few mutation operations.
      // aALookupInResultEntry()
      //   ..error.isNull()
      //   ..value.isA<DateTime>(),
      lookupInResultEntry()
        ..error.isNull()
        ..value.equals(17),
      lookupInResultEntry()
        ..error.isNull()
        ..value.equals('1'),
    ]);
  });
}

extension on Subject<GetResult> {
  Subject<Cas> get cas => has((it) => it.cas, 'cas');
  Subject<Object?> get content => has((it) => it.content, 'content');
  Subject<DateTime?> get expiryTime => has((it) => it.expiryTime, 'expiryTime');
}

extension on Subject<ExistsResult> {
  Subject<Cas?> get cas => has((it) => it.cas, 'cas');
  Subject<bool> get exists => has((it) => it.exists, 'exists');
}

extension on Subject<LookupInResult> {
  Subject<List<LookupInResultEntry>> get content =>
      has((it) => it.content, 'content');
}

ConditionSubject<LookupInResultEntry> lookupInResultEntry() =>
    it<LookupInResultEntry>();

extension on Subject<LookupInResultEntry> {
  Subject<Object?> get value => has((it) => it.value, 'value');
  Subject<Object?> get error => has((it) => it.error, 'error');
}
