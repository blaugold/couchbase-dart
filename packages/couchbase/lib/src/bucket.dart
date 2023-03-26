import 'package:couchbase/couchbase.dart';
import 'package:couchbase/src/cluster.dart';
import 'package:couchbase/src/connection.dart';
import 'package:couchbase/src/scope.dart';

class Bucket {
  Bucket({
    required this.name,
    required Cluster cluster,
  })  : _cluster = cluster,
        _connection = cluster.connection;

  final String name;

  final Cluster _cluster;
  final Connection _connection;

  Scope get defaultScope => scope(defaultScopeName);

  Collection get defaultCollection => defaultScope.defaultCollection;

  Scope scope(String name) => Scope(name: name, bucket: this);

  Collection collection(String name) => defaultScope.collection(name);
}

extension BucketInternal on Bucket {
  Cluster get cluster => _cluster;
}
