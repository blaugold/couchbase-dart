import 'package:couchbase/couchbase.dart';
import 'package:test/test.dart';

const testClusterConnectionString = 'couchbase://localhost';
const testClusterAuthenticator = PasswordAuthenticator(
  username: 'admin',
  password: 'password',
);
final testClusterOptions =
    ClusterOptions(authenticator: testClusterAuthenticator);
const testBucketName = 'test';

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

extension TestClusterExtensions on Cluster {
  Bucket get testBucket => bucket(testBucketName);
}
