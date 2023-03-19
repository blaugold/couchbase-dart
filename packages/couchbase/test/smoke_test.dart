import 'dart:ffi';

import 'package:couchbase/src/lib_couchbase_dart.dart';
import 'package:test/test.dart';

void main() {
  test('create and destroy connection', () {
    final library =
        DynamicLibrary.open('../../native/build/libCouchbaseDart.dylib');
    final binding = LibCouchbaseDart(library);
    final connection = binding.CBDConnection_Create();
    expect(connection, isNot(nullptr));
    binding.CBDConnection_Destroy(connection);
  });
}
