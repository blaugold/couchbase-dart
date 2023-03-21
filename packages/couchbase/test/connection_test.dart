import 'dart:ffi';

import 'package:couchbase/src/base.dart';
import 'package:couchbase/src/binding.dart';
import 'package:couchbase/src/connection.dart';
import 'package:test/test.dart';

void main() async {
  test('create, open and close connection', () async {
    final connection = Connection();
    final credentials = binding.CBDClusterCredentials_Create();
    credentials.ref.username = 'admin'.toCBDBuffer();
    credentials.ref.password = 'password'.toCBDBuffer();
    await connection.open(
      'couchbase://localhost',
      credentials,
    );
    await connection.close();
  });
}
