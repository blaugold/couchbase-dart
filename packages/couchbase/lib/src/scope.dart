// ignore_for_file: unused_field

import 'bucket.dart';
import 'cluster.dart';
import 'collection.dart';
import 'connection.dart';

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
  })  : _bucket = bucket,
        _connection = bucket.cluster.connection;

  /// The name of the scope.
  final String name;

  final Bucket _bucket;
  final Connection _connection;

  /// The [Collection] which can be used to perform operations against
  /// the default collection.
  Collection get defaultCollection => collection(defaultCollectionName);

  /// Returns a [Collection] which can be used to perform operations against
  /// the collection with the given [name].
  Collection collection(String name) => Collection(name: name, scope: this);
}

extension ScopeInternal on Scope {
  Bucket get bucket => _bucket;
}
