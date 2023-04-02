import 'package:couchbase/couchbase.dart';
import 'package:test/test.dart';

const testClusterConnectionString = 'couchbase://localhost';
const testClusterAuthenticator = PasswordAuthenticator(
  username: 'admin',
  password: 'password',
);
final testClusterOptions =
    ClusterOptions(authenticator: testClusterAuthenticator);

Future<Cluster> connectToTestCluster({
  String? connectionString,
  ClusterOptions? clusterOptions,
}) async {
  final cluster = await Cluster.connect(
    connectionString ?? testClusterConnectionString,
    clusterOptions ?? testClusterOptions,
  );
  addTearDown(cluster.close);
  return cluster;
}
