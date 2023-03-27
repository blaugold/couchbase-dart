// ignore_for_file: unused_field

import 'bucket.dart';
import 'cluster.dart';
import 'collection.dart';
import 'connection.dart';

const defaultScopeName = '_default';

class Scope {
  Scope({
    required this.name,
    required Bucket bucket,
  })  : _bucket = bucket,
        _connection = bucket.cluster.connection;

  final String name;

  final Bucket _bucket;
  final Connection _connection;

  Collection get defaultCollection => collection(defaultCollectionName);

  Collection collection(String name) => Collection(name: name, scope: this);
}

extension ScopeInternal on Scope {
  Bucket get bucket => _bucket;
}
