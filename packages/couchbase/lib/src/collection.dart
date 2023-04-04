import 'dart:convert';
import 'dart:typed_data';

import 'bucket.dart';
import 'cluster.dart';
import 'connection.dart';
import 'crud_operation_type.dart';
import 'exception.dart';
import 'general.dart';
import 'message.g.dart';
import 'message_basic.dart';
import 'scope.dart';
import 'sub_document_spec.dart';
import 'sub_document_utils.dart';
import 'transcoder.dart';

const defaultCollectionName = '_default';

/// Options for [Collection.get].
///
/// {@category Key-Value}
class GetOptions {
  const GetOptions({
    this.project,
    this.withExpiry,
    this.transcoder,
    this.timeout,
  });

  /// A list of fields within the document which should be fetched.
  ///
  /// This allows for easy retrieval of select fields without incurring the
  /// overhead of fetching the whole document.
  final List<String>? project;

  /// Whether the expiry of the document should be fetched alongside
  /// the data itself.
  final bool? withExpiry;

  /// An explicit [Transcoder] to use for this specific operation.
  final Transcoder? transcoder;

  /// The timeout for this operation.
  final Duration? timeout;
}

/// Options for [Collection.exists].
///
/// {@category Key-Value}
class ExistsOptions {
  const ExistsOptions({
    this.timeout,
  });

  /// The timeout for this operation.
  final Duration? timeout;
}

class InsertOptions {
  InsertOptions({this.expiry});

  final Duration? expiry;
}

/// Options for [Collection.lookupIn].
///
/// {@category Key-Value}
class LookupInOptions {
  const LookupInOptions({
    this.timeout,
  });

  /// The timeout for this operation.
  final Duration? timeout;
}

/// Exposes the operations which are available to be performed against a
/// collection.
///
/// Namely the ability to perform Key-Value operations.
///
/// {@category Core}
class Collection {
  Collection({
    required this.name,
    required Scope scope,
  })  : _scope = scope,
        _connection = scope.bucket.cluster.connection,
        _transcoder = scope.bucket.cluster.transcoder,
        _timeouts = scope.bucket.cluster.timeouts;

  static final _utf8JsonDecoder = utf8.decoder.fuse(json.decoder);

  /// The name of the collection.
  final String name;

  final Scope _scope;
  final Connection _connection;
  final Transcoder _transcoder;
  final TimeoutConfig _timeouts;

  /// Retrieves the value of a document from the collection.
  Future<GetResult> get(String key, [GetOptions? options]) async {
    if (options?.project != null || options?.withExpiry != null) {
      return _projectedGet(key, options!);
    }

    final transcoder = options?.transcoder ?? _transcoder;
    final timeout = options?.timeout ?? _timeouts.kvTimeout;

    final response = await _connection.get(
      GetRequest(
        id: _documentId(key),
        timeout: timeout,
        partition: 0,
        opaque: 0,
      ),
    );

    return GetResult(
      content: transcoder.decode(
        EncodedDocumentData(
          flags: response.flags,
          bytes: response.value,
        ),
      ),
      cas: response.cas,
    );
  }

  /// Checks whether a document exists or not.
  Future<ExistsResult> exists(String key, [ExistsOptions? options]) async {
    final timeout = options?.timeout ?? _timeouts.kvTimeout;

    final response = await _connection.exists(
      ExistsRequest(
        id: _documentId(key),
        timeout: timeout,
        partition: 0,
        opaque: 0,
      ),
    );

    if (response.deleted) {
      return const ExistsResult(
        cas: null,
        exists: false,
      );
    }

    return ExistsResult(
      cas: response.cas,
      exists: response.documentExists,
    );
  }

  Future<MutationResult> insert(
    String key,
    Object? value, [
    InsertOptions? options,
  ]) async {
    final encodedData = _transcoder.encode(value);
    final expiry = options?.expiry ?? Duration.zero;

    final response = await _connection.insert(
      InsertRequest(
        id: _documentId(key),
        value: encodedData.bytes,
        flags: encodedData.flags,
        expiry: expiry.inSeconds,
        timeout: null,
        partition: 0,
        opaque: 0,
        durabilityLevel: DurabilityLevel.none,
      ),
    );

    return MutationResult(
      cas: response.cas,
      token: response.token,
    );
  }

  Future<void> remove(String key) async {
    final timeout = _timeouts.kvTimeout;
    const cas = InternalCas.zero;
    await _connection.remove(
      RemoveRequest(
        id: _documentId(key),
        timeout: timeout,
        cas: cas,
        partition: 0,
        opaque: 0,
        durabilityLevel: DurabilityLevel.none,
      ),
    );
  }

  /// Performs a Lookup-In operation against a document, fetching individual
  /// fields or information about specific fields inside the document value.
  ///
  /// [key] is the key of the document to look in.
  ///
  /// [specs] is a list of [LookupInSpec]s describing the data to fetch from the
  /// document.
  Future<LookupInResult> lookupIn(
    String key,
    List<LookupInSpec> specs, [
    LookupInOptions? options,
  ]) async {
    if (specs.isEmpty) {
      throw ArgumentError.value(
        specs,
        'specs',
        'must not be empty',
      );
    }

    final timeout = options?.timeout ?? _timeouts.kvTimeout;
    final messageSpecs =
        List.generate(specs.length, (index) => specs[index].toMessage(index));

    final response = await _connection.lookupIn(
      LookupInRequest(
        id: _documentId(key),
        partition: 0,
        opaque: 0,
        accessDeleted: false,
        specs: messageSpecs,
        timeout: timeout,
      ),
    );

    final content = response.fields.map((field) {
      var error = field.ec.code != 0 ? convertMessageError(field.ec) : null;
      Object? value;

      if (field.opcode == SubdocOpcode.exists) {
        error = null;
        value = field.exists;
      } else if (error == null) {
        if (field.path == '') {
          // For an empty path, the value is the entire document.
          // We return it as raw bytes, allowing later stages to decode it.
          value = field.value;
        } else {
          value = _decodeSubDocumentValue(field.value);

          if (field.path == LookupInMacro.expiry.path) {
            final integerValue = value! as int;
            if (integerValue != 0) {
              value = DateTime.fromMillisecondsSinceEpoch(integerValue * 1000);
            } else {
              value = null;
            }
          } else if (field.path == LookupInMacro.lastModified.path) {
            final integerValue = int.parse(value! as String);
            value = DateTime.fromMillisecondsSinceEpoch(integerValue * 1000);
          } else if (field.path == LookupInMacro.cas.path) {
            // Comes from the C++ client as a hex string.
            value = Cas.parse(value! as String);
          }
        }
      }

      return LookupInResultEntry(error: error, value: value);
    }).toList();

    return LookupInResult(
      content: content,
      cas: response.cas,
    );
  }

  DocumentId _documentId(String key) {
    return DocumentId(
      bucket: _scope.bucket.name,
      scope: _scope.name,
      collection: name,
      key: key,
    );
  }

  Object? _decodeSubDocumentValue(Uint8List bytes) =>
      _utf8JsonDecoder.convert(bytes);

  Future<GetResult> _projectedGet(String key, GetOptions options) async {
    var expiryIndex = -1;
    var projectionsStartIndex = -1;
    var paths = <String>[];
    var specs = <LookupInSpec>[];
    var localProjection = false;

    specs.add(LookupInSpec.get(InternalLookupInMacro.flags));

    if (options.withExpiry ?? false) {
      expiryIndex = specs.length;
      specs.add(LookupInSpec.get(LookupInMacro.expiry));
    }

    projectionsStartIndex = specs.length;
    if (options.project == null) {
      paths = [''];
      specs.add(LookupInSpec.get(''));
    } else {
      if (options.project!.isEmpty) {
        throw ArgumentError.value(
          options.project,
          'options.project',
          'must not be empty',
        );
      }

      for (final projection in options.project!) {
        paths.add(projection);
        specs.add(LookupInSpec.get(projection));
      }
    }

    if (specs.length > 16) {
      specs = specs.sublist(0, projectionsStartIndex);
      specs.add(LookupInSpec.get(''));
      localProjection = true;
    }

    final response =
        await lookupIn(key, specs, LookupInOptions(timeout: options.timeout));

    final flags = response.content[0].value! as int;
    if (options.project != null && !isJsonFormat(flags)) {
      throw DocumentNotJson();
    }

    Object? content;
    DateTime? expiryTime;

    if (expiryIndex >= 0) {
      final expiryRes = response.content[expiryIndex];
      expiryTime = expiryRes.value as DateTime?;
    }

    if (options.project == null) {
      final transcoder = options.transcoder ?? _transcoder;
      final bytes = response.content[projectionsStartIndex].value! as Uint8List;
      content =
          transcoder.decode(EncodedDocumentData(flags: flags, bytes: bytes));
    } else if (localProjection) {
      final bytes = response.content[projectionsStartIndex].value! as Uint8List;
      final fullDocument = const DefaultTranscoder()
          .decode(EncodedDocumentData(flags: flags, bytes: bytes));
      for (final projectionPath in paths) {
        final value = SubDocumentUtils.getByPath(fullDocument, projectionPath);
        if (value != SubDocumentUtils.notFoundSentinel) {
          content =
              SubDocumentUtils.insertByPath(content, projectionPath, value);
        }
      }
    } else {
      for (var i = 0; i < paths.length; ++i) {
        final projectionPath = paths[i];
        final projectionResult = response.content[projectionsStartIndex + i];
        if (projectionResult.error == null) {
          content = SubDocumentUtils.insertByPath(
            content,
            projectionPath,
            projectionResult.value,
          );
        }
      }
    }

    return GetResult(
      content: content,
      cas: response.cas,
      expiryTime: expiryTime,
    );
  }
}
