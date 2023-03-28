import 'bucket.dart';
import 'cluster.dart';
import 'connection.dart';
import 'message.g.dart';
import 'message_basic.dart';
import 'scope.dart';
import 'transcoder.dart';

const defaultCollectionName = '_default';

class GetResult {
  GetResult({
    required this.content,
    required this.cas,
  });

  final Object? content;
  final Cas cas;
}

class MutationResult {
  MutationResult({
    required this.cas,
    required this.token,
  });

  final Cas cas;
  final MutationToken? token;
}

/// Exposes the operations which are available to be performed against a
/// collection.
///
/// Namely the ability to perform Key-Value operations.
class Collection {
  Collection({
    required this.name,
    required Scope scope,
  })  : _scope = scope,
        _connection = scope.bucket.cluster.connection;

  /// The name of the collection.
  final String name;

  final Scope _scope;
  final Connection _connection;

  Future<GetResult> get(String key) async {
    final response = await _connection.get(
      GetRequest(
        id: _documentId(key),
        partition: 0,
        opaque: 0,
        timeout: null,
      ),
    );

    return GetResult(
      content: _scope.bucket.cluster.transcoder.decode(
        EncodedDocumentData(
          flags: response.flags,
          bytes: response.value,
        ),
      ),
      cas: response.cas,
    );
  }

  Future<MutationResult> insert(String key, Object? value) async {
    final encodedData = _scope.bucket.cluster.transcoder.encode(value);
    final response = await _connection.insert(
      InsertRequest(
        id: _documentId(key),
        value: encodedData.bytes,
        flags: encodedData.flags,
        expiry: 0,
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

  DocumentId _documentId(String key) {
    return DocumentId(
      bucket: _scope.bucket.name,
      scope: _scope.name,
      collection: name,
      key: key,
    );
  }
}
