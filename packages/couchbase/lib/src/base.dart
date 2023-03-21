import 'dart:convert';
import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'lib_couchbase_dart.dart';

extension ReadNativeString<T> on T {
  String readString(void Function(T, CBD_ReadStringCallback) fn) {
    fn(this, _readStringCallbackPtr);
    return _lastReadString!;
  }
}

String? _lastReadString;

final _readStringCallbackPtr =
    Pointer.fromFunction<Void Function(Pointer<Char>, Size)>(
        _readStringCallback);

void _readStringCallback(Pointer<Char> buf, int size) {
  _lastReadString = buf.cast<Utf8>().toDartString(length: size);
}

extension NativeString on String {
  void withNative(void Function(Pointer<Char> buf, int size) fn) {
    final bytes = utf8.encode(this);
    final buf = malloc<Char>(bytes.length);
    buf.cast<Uint8>().asTypedList(bytes.length).setAll(0, bytes);
    try {
      fn(buf, bytes.length);
    } finally {
      malloc.free(buf);
    }
  }

  void setNative<T>(
    T pointer,
    void Function(T pointer, Pointer<Char> buf, int size) fn,
  ) =>
      withNative((buf, size) => fn(pointer, buf, size));
}
