// ignore_for_file: avoid_print

import 'package:couchbase/couchbase.dart';

void main() async {
  final cluster = await Cluster.connect(
    'couchbase://localhost',
    ClusterOptions(
      username: 'admin',
      password: 'password',
    ),
  );

  final bucket = cluster.bucket('my-bucket');
  final collection = bucket.defaultCollection;

  await collection
      .insert('greeting-alice', {'message': 'Hello @name!', 'name': 'Alice'});

  final getResult = await collection.get('greeting-alice');
  print(getResult.content);

  await cluster.close();
}
