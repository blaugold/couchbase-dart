import 'package:couchbase/src/connection.dart';
import 'package:test/test.dart';

void main() async {
  test('create, open and close connection', () async {
    final connection = Connection();
    await connection.open(
      'couchbase://localhost',
      username: 'admin',
      password: 'password',
    );
    await connection.close();
  });
}
