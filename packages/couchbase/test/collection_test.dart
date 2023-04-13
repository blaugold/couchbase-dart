import 'package:checks/checks.dart';
import 'package:couchbase/couchbase.dart';
import 'package:couchbase/src/general.dart';
import 'package:test/test.dart';

import 'utils/cluster.dart';
import 'utils/document.dart';
import 'utils/subject.dart';

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
        ).throws<DocumentNotJson>();
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
          ..content.isJsonObject.deepEquals({
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
        check(result).content.isJsonObject.deepEquals({'a': 0});
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
          ..content.isJsonObject.deepEquals({
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
          const InsertOptions(expiry: Duration(hours: 1)),
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
          const InsertOptions(expiry: Duration(hours: 1)),
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
      DocumentNotFound? exception;
      try {
        await defaultCollection.get(documentId);
      } on DocumentNotFound catch (error) {
        exception = error;
      }

      check(exception?.context).isKeyValueErrorContext
        ..cas.equals(InternalCas.zero)
        ..key.equals(documentId)
        ..statusCode.equals(KeyValueStatusCode.notFound);
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

  group('insert', () {
    test('with defaults', () async {
      final documentId = createTestDocumentId();
      final result = await defaultCollection.insert(documentId, true);
      check(result).cas.not(it()..equals(InternalCas.zero));

      final getResult = await defaultCollection.get(documentId);
      check(getResult)
        ..cas.equals(result.cas)
        ..content.equals(true);
    });

    test('with expiry', () async {
      final documentId = createTestDocumentId();
      final result = await defaultCollection.insert(
        documentId,
        true,
        const InsertOptions(expiry: Duration(hours: 1)),
      );
      check(result).cas.not(it()..equals(InternalCas.zero));

      final getResult = await defaultCollection.get(
        documentId,
        const GetOptions(withExpiry: true),
      );
      check(getResult)
        ..cas.equals(result.cas)
        ..content.equals(true)
        ..expiryTime.isNotNull();
    });

    test('with durabilityLevel', () async {
      // The test cluster only has one node, so any durability settings will
      // fail.
      await check(
        defaultCollection.insert(
          createTestDocumentId(),
          null,
          const InsertOptions(durabilityLevel: DurabilityLevel.majority),
        ),
      ).throws<DurabilityImpossible>();
    });

    test('with durabilityPersistTo', () async {
      // The test cluster only has one node, so any durability settings will
      // fail.
      await check(
        defaultCollection.insert(
          createTestDocumentId(),
          null,
          const InsertOptions.legacyDurability(persistTo: PersistTo.two),
        ),
      ).throws<DurabilityImpossible>();
    });

    test('with durabilityReplicateTo', () async {
      // The test cluster only has one node, so any durability settings will
      // fail.
      await check(
        defaultCollection.insert(
          createTestDocumentId(),
          null,
          const InsertOptions.legacyDurability(replicateTo: ReplicateTo.two),
        ),
      ).throws<DurabilityImpossible>();
    });

    test('with transcoder', () async {
      const transcoder = TestTranscoder();
      final documentId = createTestDocumentId();
      await defaultCollection.insert(
        documentId,
        TestTranscoder.value,
        const InsertOptions(transcoder: transcoder),
      );
      final getResult = await defaultCollection.get(
        documentId,
        const GetOptions(transcoder: transcoder),
      );
      check(getResult).content.equals(TestTranscoder.value);
    });
  });

  group('upsert', () {
    test('with defaults', () async {
      final documentId = createTestDocumentId();
      final result = await defaultCollection.upsert(documentId, true);
      check(result).cas.not(it()..equals(InternalCas.zero));

      final getResult = await defaultCollection.get(documentId);
      check(getResult)
        ..cas.equals(result.cas)
        ..content.equals(true);
    });

    test('with expiry', () async {
      final documentId = createTestDocumentId();
      final result = await defaultCollection.upsert(
        documentId,
        true,
        const UpsertOptions(expiry: Duration(hours: 1)),
      );
      check(result).cas.not(it()..equals(InternalCas.zero));

      final getResult = await defaultCollection.get(
        documentId,
        const GetOptions(withExpiry: true),
      );
      check(getResult)
        ..cas.equals(result.cas)
        ..content.equals(true)
        ..expiryTime.isNotNull();
    });

    test('with preserveExpiry', () async {
      final documentId = createTestDocumentId();
      final insertResult = await defaultCollection.insert(
        documentId,
        true,
        const InsertOptions(expiry: Duration(hours: 1)),
      );
      final result = await defaultCollection.upsert(
        documentId,
        false,
        const UpsertOptions(preserveExpiry: true),
      );
      check(result).cas.not(it()..equals(insertResult.cas));

      final getResult = await defaultCollection.get(
        documentId,
        const GetOptions(withExpiry: true),
      );
      check(getResult)
        ..cas.equals(result.cas)
        ..content.equals(false)
        ..expiryTime.isNotNull();
    });

    test('with durabilityLevel', () async {
      // The test cluster only has one node, so any durability settings will
      // fail.
      await check(
        defaultCollection.upsert(
          createTestDocumentId(),
          null,
          const UpsertOptions(durabilityLevel: DurabilityLevel.majority),
        ),
      ).throws<DurabilityImpossible>();
    });

    test('with durabilityPersistTo', () async {
      // The test cluster only has one node, so any durability settings will
      // fail.
      await check(
        defaultCollection.upsert(
          createTestDocumentId(),
          null,
          const UpsertOptions.legacyDurability(persistTo: PersistTo.two),
        ),
      ).throws<DurabilityImpossible>();
    });

    test('with durabilityReplicateTo', () async {
      // The test cluster only has one node, so any durability settings will
      // fail.
      await check(
        defaultCollection.upsert(
          createTestDocumentId(),
          null,
          const UpsertOptions.legacyDurability(replicateTo: ReplicateTo.two),
        ),
      ).throws<DurabilityImpossible>();
    });

    test('with transcoder', () async {
      const transcoder = TestTranscoder();
      final documentId = createTestDocumentId();
      await defaultCollection.upsert(
        documentId,
        TestTranscoder.value,
        const UpsertOptions(transcoder: transcoder),
      );
      final getResult = await defaultCollection.get(
        documentId,
        const GetOptions(transcoder: transcoder),
      );
      check(getResult).content.equals(TestTranscoder.value);
    });
  });

  group('replace', () {
    test('with defaults', () async {
      final documentId = createTestDocumentId();
      await defaultCollection.insert(documentId, false);
      final result = await defaultCollection.replace(documentId, true);
      check(result).cas.not(it()..equals(InternalCas.zero));

      final getResult = await defaultCollection.get(documentId);
      check(getResult)
        ..cas.equals(result.cas)
        ..content.equals(true);
    });

    test('with expiry', () async {
      final documentId = createTestDocumentId();
      await defaultCollection.insert(documentId, false);
      final result = await defaultCollection.replace(
        documentId,
        true,
        const ReplaceOptions(expiry: Duration(hours: 1)),
      );
      check(result).cas.not(it()..equals(InternalCas.zero));

      final getResult = await defaultCollection.get(
        documentId,
        const GetOptions(withExpiry: true),
      );
      check(getResult)
        ..cas.equals(result.cas)
        ..content.equals(true)
        ..expiryTime.isNotNull();
    });

    test('with preserveExpiry', () async {
      final documentId = createTestDocumentId();
      final insertResult = await defaultCollection.insert(
        documentId,
        true,
        const InsertOptions(expiry: Duration(hours: 1)),
      );
      final result = await defaultCollection.replace(
        documentId,
        false,
        const ReplaceOptions(preserveExpiry: true),
      );
      check(result).cas.not(it()..equals(insertResult.cas));

      final getResult = await defaultCollection.get(
        documentId,
        const GetOptions(withExpiry: true),
      );
      check(getResult)
        ..cas.equals(result.cas)
        ..content.equals(false)
        ..expiryTime.isNotNull();
    });

    test('with matching CAS', () async {
      final documentId = createTestDocumentId();
      final insertResult = await defaultCollection.insert(documentId, false);
      final result = await defaultCollection.replace(
        documentId,
        true,
        ReplaceOptions(cas: insertResult.cas),
      );
      check(result).cas.not(it()..equals(insertResult.cas));

      final getResult = await defaultCollection.get(documentId);
      check(getResult)
        ..cas.equals(result.cas)
        ..content.equals(true);
    });

    test('with non-matching CAS', () async {
      final documentId = createTestDocumentId();
      await defaultCollection.insert(documentId, false);
      await check(
        defaultCollection.replace(
          documentId,
          true,
          ReplaceOptions(cas: InternalCas.fromValue(1)),
        ),
      ).throws<CasMismatch>();
    });

    test('with durabilityLevel', () async {
      final documentId = createTestDocumentId();
      await defaultCollection.insert(documentId, false);
      // The test cluster only has one node, so any durability settings will
      // fail.
      await check(
        defaultCollection.replace(
          documentId,
          null,
          const ReplaceOptions(durabilityLevel: DurabilityLevel.majority),
        ),
      ).throws<DurabilityImpossible>();
    });

    test('with durabilityPersistTo', () async {
      final documentId = createTestDocumentId();
      await defaultCollection.insert(documentId, false);
      // The test cluster only has one node, so any durability settings will
      // fail.
      await check(
        defaultCollection.replace(
          documentId,
          null,
          const ReplaceOptions.legacyDurability(persistTo: PersistTo.two),
        ),
      ).throws<DurabilityImpossible>();
    });

    test('with durabilityReplicateTo', () async {
      final documentId = createTestDocumentId();
      await defaultCollection.insert(documentId, false);
      // The test cluster only has one node, so any durability settings will
      // fail.
      await check(
        defaultCollection.replace(
          documentId,
          null,
          const ReplaceOptions.legacyDurability(replicateTo: ReplicateTo.two),
        ),
      ).throws<DurabilityImpossible>();
    });

    test('with transcoder', () async {
      const transcoder = TestTranscoder();
      final documentId = createTestDocumentId();
      await defaultCollection.insert(documentId, false);
      await defaultCollection.replace(
        documentId,
        TestTranscoder.value,
        const ReplaceOptions(transcoder: transcoder),
      );
      final getResult = await defaultCollection.get(
        documentId,
        const GetOptions(transcoder: transcoder),
      );
      check(getResult).content.equals(TestTranscoder.value);
    });
  });

  group('remove', () {
    test('with defaults', () async {
      final documentId = createTestDocumentId();
      await defaultCollection.insert(documentId, false);
      final result = await defaultCollection.remove(documentId);
      check(result).cas.not(it()..equals(InternalCas.zero));
      await check(defaultCollection.get(documentId)).throws<DocumentNotFound>();
    });

    test('with matching CAS', () async {
      final documentId = createTestDocumentId();
      final insertResult = await defaultCollection.insert(documentId, false);
      final result = await defaultCollection.remove(
        documentId,
        RemoveOptions(cas: insertResult.cas),
      );
      check(result).cas.not(it()..equals(insertResult.cas));
      await check(defaultCollection.get(documentId)).throws<DocumentNotFound>();
    });

    test('with non-matching CAS', () async {
      final documentId = createTestDocumentId();
      await defaultCollection.insert(documentId, false);
      await check(
        defaultCollection.remove(
          documentId,
          RemoveOptions(cas: InternalCas.fromValue(1)),
        ),
      ).throws<CasMismatch>();
    });

    test('with durabilityLevel', () async {
      final documentId = createTestDocumentId();
      await defaultCollection.insert(documentId, false);
      // The test cluster only has one node, so any durability settings will
      // fail.
      await check(
        defaultCollection.remove(
          documentId,
          const RemoveOptions(durabilityLevel: DurabilityLevel.majority),
        ),
      ).throws<DurabilityImpossible>();
    });

    test('with durabilityPersistTo', () async {
      final documentId = createTestDocumentId();
      await defaultCollection.insert(documentId, false);
      // The test cluster only has one node, so any durability settings will
      // fail.
      await check(
        defaultCollection.remove(
          documentId,
          const RemoveOptions.legacyDurability(persistTo: PersistTo.two),
        ),
      ).throws<DurabilityImpossible>();
    });

    test('with durabilityReplicateTo', () async {
      final documentId = createTestDocumentId();
      await defaultCollection.insert(documentId, false);
      // The test cluster only has one node, so any durability settings will
      // fail.
      await check(
        defaultCollection.remove(
          documentId,
          const RemoveOptions.legacyDurability(replicateTo: ReplicateTo.two),
        ),
      ).throws<DurabilityImpossible>();
    });
  });

  group('lookupIn', () {
    test('get', () async {
      final documentId = createTestDocumentId();
      final documentContent = {'a': 'b'};

      await defaultCollection.insert(documentId, documentContent);
      var result =
          await defaultCollection.lookupIn(documentId, [LookupInSpec.get('a')]);
      check(result).content.single.value.equals('b');

      result =
          await defaultCollection.lookupIn(documentId, [LookupInSpec.get('c')]);
      check(result).content.single.value.isNull();
      check(result).content.single.error.isA<PathNotFound>();
    });

    test('get (xattr)', () async {
      final documentId = createTestDocumentId();

      await defaultCollection.insert(documentId, null);
      var result = await defaultCollection.lookupIn(
        documentId,
        [LookupInSpec.get(LookupInMacro.valueSizeBytes.path, xattr: true)],
      );
      check(result).content.single.value.equals(4);

      result = await defaultCollection
          .lookupIn(documentId, [LookupInSpec.get('a', xattr: true)]);
      check(result).content.single.value.isNull();
      check(result).content.single.error.isA<PathNotFound>();
    });

    test('exists', () async {
      final documentId = createTestDocumentId();
      final documentContent = {'a': 'b'};

      await defaultCollection.insert(documentId, documentContent);
      var result = await defaultCollection
          .lookupIn(documentId, [LookupInSpec.exists('a')]);
      check(result).content.single.value.isBool.isTrue();

      result = await defaultCollection
          .lookupIn(documentId, [LookupInSpec.exists('c')]);
      check(result).content.single.value.isBool.isFalse();
    });

    test('exists (xattr)', () async {
      final documentId = createTestDocumentId();

      await defaultCollection.insert(documentId, null);
      var result = await defaultCollection.lookupIn(
        documentId,
        [LookupInSpec.exists(LookupInMacro.cas.path, xattr: true)],
      );
      check(result).content.single.value.isBool.isTrue();

      result = await defaultCollection
          .lookupIn(documentId, [LookupInSpec.exists('a', xattr: true)]);
      check(result).content.single.value.isBool.isFalse();
    });

    test('count', () async {
      final documentId = createTestDocumentId();
      final documentContent = {
        'a': [null, null, null]
      };

      await defaultCollection.insert(documentId, documentContent);
      var result = await defaultCollection
          .lookupIn(documentId, [LookupInSpec.count('a')]);
      check(result).content.single.value.equals(3);

      result = await defaultCollection
          .lookupIn(documentId, [LookupInSpec.count('c')]);
      check(result).content.single.value.isNull();
      check(result).content.single.error.isA<PathNotFound>();
    });

    test('count (xattr)', () async {
      final documentId = createTestDocumentId();

      await defaultCollection.mutateIn(
        documentId,
        [
          MutateInSpec.insert(
            'a',
            [null, null, null],
            xattr: true,
          )
        ],
        const MutateInOptions(storeSemantics: StoreSemantics.insert),
      );
      var result = await defaultCollection
          .lookupIn(documentId, [LookupInSpec.count('a', xattr: true)]);
      check(result).content.single.value.equals(3);

      result = await defaultCollection
          .lookupIn(documentId, [LookupInSpec.count('c', xattr: true)]);
      check(result).content.single.value.isNull();
      check(result).content.single.error.isA<PathNotFound>();
    });

    test('fetch all LookupInMacros for document', () async {
      final documentId = createTestDocumentId();
      final documentContent = {'hello': 'world'};

      await defaultCollection.insert(documentId, documentContent);
      // Ensure the document has a last modified time.
      await defaultCollection.replace(documentId, documentContent);

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

      check(result).content.length.equals(7);

      check(result).content[0]
        ..error.isNull()
        ..value.isJsonObject['datatype'].isJsonArray.deepEquals(['json']);

      check(result).content[1]
        ..error.isNull()
        ..value.isNull();

      check(result).content[2]
        ..error.isNull()
        ..value.equals(result.cas);

      check(result).content[3]
        ..error.isNull()
        ..value.isString.startsWith('0x');

      check(result).content[4]
        ..error.isNull()
        ..value.isA<DateTime>();

      check(result).content[5]
        ..error.isNull()
        ..value.equals(17);

      check(result).content[6]
        ..error.isNull()
        ..value.equals('2');
    });
  });

  group('mutateIn', () {
    test('with matching CAS', () async {
      final documentId = createTestDocumentId();
      final insertResult = await defaultCollection.insert(documentId, false);
      final result = await defaultCollection.mutateIn(
        documentId,
        [MutateInSpec.upsert('', true)],
        MutateInOptions(cas: insertResult.cas),
      );
      check(result).cas.not(it()..equals(insertResult.cas));

      final getResult = await defaultCollection.get(documentId);
      check(getResult)
        ..cas.equals(result.cas)
        ..content.equals(true);
    });

    test('with non-matching CAS', () async {
      final documentId = createTestDocumentId();
      await defaultCollection.insert(documentId, false);
      await check(
        defaultCollection.mutateIn(
          documentId,
          [MutateInSpec.upsert('', true)],
          MutateInOptions(cas: InternalCas.fromValue(1)),
        ),
      ).throws<CasMismatch>();
    });

    test('with durabilityLevel', () async {
      // The test cluster only has one node, so any durability settings will
      // fail.
      await check(
        defaultCollection.mutateIn(
          createTestDocumentId(),
          [MutateInSpec.upsert('', true)],
          const MutateInOptions(
            durabilityLevel: DurabilityLevel.majority,
            storeSemantics: StoreSemantics.upsert,
          ),
        ),
      ).throws<DurabilityImpossible>();
    });

    test('with durabilityPersistTo', () async {
      // The test cluster only has one node, so any durability settings will
      // fail.
      await check(
        defaultCollection.mutateIn(
          createTestDocumentId(),
          [MutateInSpec.upsert('', true)],
          const MutateInOptions.legacyDurability(
            persistTo: PersistTo.two,
            storeSemantics: StoreSemantics.upsert,
          ),
        ),
      ).throws<DurabilityImpossible>();
    });

    test('with durabilityReplicateTo', () async {
      // The test cluster only has one node, so any durability settings will
      // fail.
      await check(
        defaultCollection.mutateIn(
          createTestDocumentId(),
          [MutateInSpec.upsert('', true)],
          const MutateInOptions.legacyDurability(
            replicateTo: ReplicateTo.two,
            storeSemantics: StoreSemantics.upsert,
          ),
        ),
      ).throws<DurabilityImpossible>();
    });

    group('MutateInSpec', () {
      group('insert', () {
        test('basic', () async {
          final documentId = createTestDocumentId();
          await defaultCollection.mutateIn(
            documentId,
            [MutateInSpec.insert('a', 1)],
            const MutateInOptions(storeSemantics: StoreSemantics.insert),
          );

          final getResult = await defaultCollection.get(documentId);
          check(getResult).content.isJsonObject.deepEquals({'a': 1});
        });

        test('with createPath', () async {
          final documentId = createTestDocumentId();
          await defaultCollection.mutateIn(
            documentId,
            [MutateInSpec.insert('a.b', 1)],
            const MutateInOptions(storeSemantics: StoreSemantics.insert),
          );

          final getResult = await defaultCollection.get(documentId);
          check(getResult).content.isJsonObject.deepEquals({
            'a': {'b': 1}
          });
        });

        test('with xattr', () async {
          final documentId = createTestDocumentId();
          await defaultCollection.mutateIn(
            documentId,
            [MutateInSpec.insert('a', 1, xattr: true)],
            const MutateInOptions(storeSemantics: StoreSemantics.insert),
          );

          final lookupInResult = await defaultCollection.lookupIn(
            documentId,
            [LookupInSpec.get('a', xattr: true)],
          );
          check(lookupInResult).content.single.value.equals(1);
        });

        test('with MutateInMacro value', () async {
          final documentId = createTestDocumentId();
          await defaultCollection.mutateIn(
            documentId,
            [MutateInSpec.insert('a', MutateInMacro.seqNo, xattr: true)],
            const MutateInOptions(storeSemantics: StoreSemantics.insert),
          );
          final lookupInResult = await defaultCollection.lookupIn(
            documentId,
            [
              LookupInSpec.get('a', xattr: true),
              LookupInSpec.get(LookupInMacro.seqNo, xattr: true),
            ],
          );
          check(lookupInResult)
              .content[0]
              .value
              .equals(lookupInResult.content[1].value);
        });
      });

      group('upsert', () {
        test('basic', () async {
          final documentId = createTestDocumentId();
          await defaultCollection.mutateIn(
            documentId,
            [MutateInSpec.upsert('a', 1)],
            const MutateInOptions(storeSemantics: StoreSemantics.upsert),
          );

          final getResult = await defaultCollection.get(documentId);
          check(getResult).content.isJsonObject.deepEquals({'a': 1});
        });

        test('with empty path', () async {
          final documentId = createTestDocumentId();
          await defaultCollection.mutateIn(
            documentId,
            [MutateInSpec.upsert('', 1)],
            const MutateInOptions(storeSemantics: StoreSemantics.upsert),
          );

          final getResult = await defaultCollection.get(documentId);
          check(getResult).content.equals(1);
        });

        test('with createPath', () async {
          final documentId = createTestDocumentId();
          await defaultCollection.mutateIn(
            documentId,
            [MutateInSpec.upsert('a.b', 1)],
            const MutateInOptions(storeSemantics: StoreSemantics.upsert),
          );

          final getResult = await defaultCollection.get(documentId);
          check(getResult).content.isJsonObject.deepEquals({
            'a': {'b': 1}
          });
        });

        test('with xattr', () async {
          final documentId = createTestDocumentId();
          await defaultCollection.mutateIn(
            documentId,
            [MutateInSpec.upsert('a', 1, xattr: true)],
            const MutateInOptions(storeSemantics: StoreSemantics.upsert),
          );

          final lookupInResult = await defaultCollection.lookupIn(
            documentId,
            [LookupInSpec.get('a', xattr: true)],
          );
          check(lookupInResult).content.single.value.equals(1);
        });

        test('with MutateInMacro value', () async {
          final documentId = createTestDocumentId();
          await defaultCollection.mutateIn(
            documentId,
            [MutateInSpec.upsert('a', MutateInMacro.seqNo, xattr: true)],
            const MutateInOptions(storeSemantics: StoreSemantics.upsert),
          );
          final lookupInResult = await defaultCollection.lookupIn(
            documentId,
            [
              LookupInSpec.get('a', xattr: true),
              LookupInSpec.get(LookupInMacro.seqNo, xattr: true),
            ],
          );
          check(lookupInResult)
              .content[0]
              .value
              .equals(lookupInResult.content[1].value);
        });
      });

      group('replace', () {
        test('basic', () async {
          final documentId = createTestDocumentId();
          await defaultCollection.upsert(documentId, {'a': 1});

          await defaultCollection.mutateIn(
            documentId,
            [MutateInSpec.replace('a', 2)],
            const MutateInOptions(),
          );

          final getResult = await defaultCollection.get(documentId);
          check(getResult).content.isJsonObject.deepEquals({'a': 2});
        });

        test('with xattr', () async {
          final documentId = createTestDocumentId();
          await defaultCollection.mutateIn(
            documentId,
            [MutateInSpec.insert('a', 1, xattr: true)],
            const MutateInOptions(storeSemantics: StoreSemantics.insert),
          );

          await defaultCollection.mutateIn(
            documentId,
            [MutateInSpec.replace('a', 2, xattr: true)],
          );

          final lookupInResult = await defaultCollection.lookupIn(
            documentId,
            [LookupInSpec.get('a', xattr: true)],
          );
          check(lookupInResult).content.single.value.equals(2);
        });

        test('with MutateInMacro value', () async {
          final documentId = createTestDocumentId();
          await defaultCollection.mutateIn(
            documentId,
            [MutateInSpec.insert('a', 1, xattr: true)],
            const MutateInOptions(storeSemantics: StoreSemantics.insert),
          );
          await defaultCollection.mutateIn(
            documentId,
            [MutateInSpec.replace('a', MutateInMacro.seqNo, xattr: true)],
          );
          final lookupInResult = await defaultCollection.lookupIn(
            documentId,
            [
              LookupInSpec.get('a', xattr: true),
              LookupInSpec.get(LookupInMacro.seqNo, xattr: true),
            ],
          );
          check(lookupInResult)
              .content[0]
              .value
              .equals(lookupInResult.content[1].value);
        });
      });

      group('remove', () {
        test('basic', () async {
          final documentId = createTestDocumentId();
          await defaultCollection.upsert(documentId, {'a': 1});

          await defaultCollection.mutateIn(
            documentId,
            [MutateInSpec.remove('a')],
          );

          final getResult = await defaultCollection.get(documentId);
          check(getResult).content.isJsonObject.deepEquals({});
        });

        test(
          'with xattr',
          () async {
            final documentId = createTestDocumentId();
            await defaultCollection.mutateIn(
              documentId,
              [
                MutateInSpec.insert('a', 1, xattr: true),
              ],
              const MutateInOptions(storeSemantics: StoreSemantics.insert),
            );

            await defaultCollection.mutateIn(
              documentId,
              [MutateInSpec.remove('a', xattr: true)],
            );

            final lookupInResult = await defaultCollection.lookupIn(
              documentId,
              [LookupInSpec.get('a', xattr: true)],
            );
            check(lookupInResult).content.single.value.isNull();
          },
          skip: 'TemporaryFailure: noMemory',
        );
      });

      group('arrayAppend', () {
        test('basic', () async {
          final documentId = createTestDocumentId();
          await defaultCollection.upsert(documentId, {
            'a': [1]
          });

          await defaultCollection.mutateIn(
            documentId,
            [
              MutateInSpec.arrayAppend('a', [2])
            ],
          );

          final getResult = await defaultCollection.get(documentId);
          check(getResult).content.isJsonObject.deepEquals({
            'a': [1, 2]
          });
        });

        test('multiple values', () async {
          final documentId = createTestDocumentId();
          await defaultCollection.upsert(documentId, {
            'a': [1]
          });

          await defaultCollection.mutateIn(
            documentId,
            [
              MutateInSpec.arrayAppend('a', [2, 3])
            ],
          );

          final getResult = await defaultCollection.get(documentId);
          check(getResult)
              .content
              .isJsonObject['a']
              .isJsonArray
              .deepEquals([1, 2, 3]);
        });

        test('with createPath', () async {
          final documentId = createTestDocumentId();
          await defaultCollection.mutateIn(
            documentId,
            [
              MutateInSpec.arrayAppend('a', [1], createPath: true)
            ],
            const MutateInOptions(storeSemantics: StoreSemantics.insert),
          );

          final getResult = await defaultCollection.get(documentId);
          check(getResult).content.isJsonObject.deepEquals({
            'a': [1]
          });
        });

        test('with xattr', () async {
          final documentId = createTestDocumentId();
          await defaultCollection.mutateIn(
            documentId,
            [
              MutateInSpec.insert('a', [1], xattr: true),
            ],
            const MutateInOptions(storeSemantics: StoreSemantics.insert),
          );

          await defaultCollection.mutateIn(
            documentId,
            [
              MutateInSpec.arrayAppend('a', [2], xattr: true),
            ],
          );

          final lookupInResult = await defaultCollection.lookupIn(
            documentId,
            [LookupInSpec.get('a', xattr: true)],
          );

          check(lookupInResult).content[0].value.isJsonArray.deepEquals([1, 2]);
        });
      });
    });
  });
}
