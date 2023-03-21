import 'dart:ffi';

import 'base.dart';
import 'binding.dart';
import 'lib_couchbase_dart.dart';

extension CBDErrorCodeExtension on CBDErrorCode {
  void consume() {
    if (this == nullptr) {
      return;
    }

    final exception = CouchbaseException(
      binding.CBDErrorCode_Code(this),
      readString(binding.CBDErrorCode_Message),
    );
    binding.CBDErrorCode_Destroy(this);
    throw exception;
  }
}

class CouchbaseException implements Exception {
  final int code;
  final String message;

  CouchbaseException(this.code, this.message);

  @override
  String toString() => 'CouchbaseException($code, $message)';
}
