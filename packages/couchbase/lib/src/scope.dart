import 'bucket.dart';
import 'collection.dart';
import 'query.dart';

const defaultScopeName = '_default';

/// Exposes the operations which are available to be performed against a scope.
///
/// Namely the ability to access [Collection]s.
///
/// {@category Core}
class Scope {
  Scope({
    required this.name,
    required Bucket bucket,
  }) : _bucket = bucket;

  /// The name of the scope.
  final String name;

  final Bucket _bucket;

  /// The [Collection] which can be used to perform operations against
  /// the default collection.
  Collection get defaultCollection => collection(defaultCollectionName);

  /// Returns a [Collection] which can be used to perform operations against
  /// the collection with the given [name].
  Collection collection(String name) => Collection(name: name, scope: this);

  /// Executes a SQL++ query against the cluster, scoped to this scope.
  Future<QueryResult> query(String statement, [QueryOptions? options]) async {
    options ??= const QueryOptions();
    return _bucket.cluster.query(
      statement,
      options.copyWith(queryContext: '${_bucket.name}.$name'),
    );
  }
}

extension InternalScope on Scope {
  Bucket get bucket => _bucket;
}
