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

  final bucket = cluster.bucket('test');
  final collection = bucket.defaultCollection;

  await collection.upsert(
    'greeting-alice',
    {'message': 'Hello {{name}}!', 'name': 'Alice'},
  );

  final getResult = await collection.get('greeting-alice');
  final message = getResult.content! as Map<String, Object?>;
  print(message);
  print(_expandMessage(message));

  await cluster.close();
}

String _expandMessage(Map<String, Object?> message) {
  return message.entries.fold(
    message['message']! as String,
    (result, entry) => result.replaceAll(
      '{{${entry.key}}}',
      entry.value.toString(),
    ),
  );
}
