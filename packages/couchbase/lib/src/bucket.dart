import 'cluster.dart';
import 'collection.dart';
import 'diagnostics.dart';
import 'scope.dart';

/// Exposes the operations which are available to be performed against a bucket.
///
/// Namely the ability to access [Collection]s as well as performing management
/// operations against the bucket.
///
/// {@category Core}
class Bucket {
  Bucket({
    required this.name,
    required Cluster cluster,
  }) : _cluster = cluster;

  /// The name of the bucket.
  final String name;

  final Cluster _cluster;

  /// The [Scope] which can be used to perform operations against
  /// the default scope.
  Scope get defaultScope => scope(defaultScopeName);

  /// The [Collection] which can be used to perform operations against
  /// the default collection in the [defaultScope].
  Collection get defaultCollection => defaultScope.defaultCollection;

  /// Returns a [Scope] which can be used to perform operations against
  /// the scope with the given [name].
  Scope scope(String name) => Scope(name: name, bucket: this);

  /// Returns a [Collection] which can be used to perform operations against
  /// the collection with the given [name] in the [defaultScope].
  Collection collection(String name) => defaultScope.collection(name);

  /// Performs a ping operation against the bucket.
  ///
  /// Pings the bucket services which are specified (or all services if none are
  /// specified). Returns a report which describes the outcome of the ping
  /// operations which were performed.
  Future<PingResult> ping([PingOptions? options]) {
    return _cluster.ping(
      PingOptions(
        bucket: name,
        reportId: options?.reportId,
        serviceTypes: options?.serviceTypes,
        timeout: options?.timeout,
      ),
    );
  }
}

extension InternalBucket on Bucket {
  Cluster get cluster => _cluster;
}
