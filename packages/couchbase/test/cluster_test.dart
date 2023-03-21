import 'package:couchbase/couchbase.dart';
import 'package:test/test.dart';

void main() async {
  test('connect to cluster', () async {
    final cluster = await connect(
      'couchbase://localhost',
      ConnectOptions(
        username: 'admin',
        password: 'password',
      ),
    );

    await cluster.close();
  });
}
