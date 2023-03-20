import 'dart:convert';
import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'binding.dart';
import 'lib_couchbase_dart.dart';

extension StringCBDBufferExtension on String {
  Pointer<CBDBuffer> toCBDBuffer() {
    final bytes = utf8.encode(this);
    final buffer = binding.CBDBuffer_Create(bytes.length);
    buffer.ref.data.cast<Uint8>().asTypedList(length).setAll(0, bytes);
    return buffer;
  }
}

extension CBDBufferStringExtension on CBDBuffer {
  String toDartString() => data.cast<Utf8>().toDartString(length: size);
}

extension CBDErrorCodeExtension on Pointer<CBDErrorCode> {
  void check() {
    if (this == nullptr) {
      return;
    }

    final exception =
        CouchbaseException(ref.code, ref.message.ref.toDartString());
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
