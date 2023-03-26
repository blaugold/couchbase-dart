import 'package:couchbase/src/bucket.dart';
import 'package:couchbase/src/cluster.dart';
import 'package:couchbase/src/collection.dart';
import 'package:couchbase/src/connection.dart';

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
