import 'dart:convert';
import 'dart:ffi';
import 'dart:typed_data';

import 'package:couchbase/src/bindings.dart';
import 'package:couchbase/src/lib_couchbase_dart.dart';

class MessageBuffer implements Finalizable {
  MessageBuffer({int initialCapacity = 1024})
      : pointer = bindings.CBDMessageBuffer_Create(initialCapacity) {
    _finalizer.attach(this, pointer.cast());
  }

  static final _finalizer =
      NativeFinalizer(bindings.addresses.CBDMessageBuffer_Destroy.cast());

  final CBDMessageBuffer pointer;

  void reset() => bindings.CBDMessageBuffer_Reset(pointer);

  void writeUInt8(int value) =>
      bindings.CBDMessageBuffer_WriteUInt8(pointer, value);

  void writeIn8t(int value) =>
      bindings.CBDMessageBuffer_WriteInt8(pointer, value);

  void writeUInt16(int value) =>
      bindings.CBDMessageBuffer_WriteUInt16(pointer, value);

  void writeInt16(int value) =>
      bindings.CBDMessageBuffer_WriteInt16(pointer, value);

  void writeUInt32(int value) =>
      bindings.CBDMessageBuffer_WriteUInt32(pointer, value);

  void writeInt32(int value) =>
      bindings.CBDMessageBuffer_WriteInt32(pointer, value);

  void writeUInt64(int value) =>
      bindings.CBDMessageBuffer_WriteUInt64(pointer, value);

  void writeInt64(int value) =>
      bindings.CBDMessageBuffer_WriteInt64(pointer, value);

  void writeDouble(double value) =>
      bindings.CBDMessageBuffer_WriteDouble(pointer, value);

  void writeData(List<int> value) {
    final destination =
        bindings.CBDMessageBuffer_Allocate(pointer, value.length);
    destination.cast<Uint8>().asTypedList(value.length).setAll(0, value);
  }

  void writeString(String value) {
    writeData(utf8.encode(value));
  }

  bool readBool() => bindings.CBDMessageBuffer_ReadBool(pointer);

  int readUInt8() => bindings.CBDMessageBuffer_ReadUInt8(pointer);

  int readInt8() => bindings.CBDMessageBuffer_ReadInt8(pointer);

  int readUInt16() => bindings.CBDMessageBuffer_ReadUInt16(pointer);

  int readInt16() => bindings.CBDMessageBuffer_ReadInt16(pointer);

  int readUInt32() => bindings.CBDMessageBuffer_ReadUInt32(pointer);

  int readInt32() => bindings.CBDMessageBuffer_ReadInt32(pointer);

  int readUInt64() => bindings.CBDMessageBuffer_ReadUInt64(pointer);

  int readInt64() => bindings.CBDMessageBuffer_ReadInt64(pointer);

  double readDouble() => bindings.CBDMessageBuffer_ReadDouble(pointer);

  String readString() => utf8.decode(_readData());

  /// Reads a variable length array of bytes.
  ///
  /// The returned list ist only valid until this [MessageBuffer] is cleared
  /// and while it is alive.
  Uint8List _readData() {
    final slice = bindings.CBDMessageBuffer_ReadData(pointer);
    return slice.data.cast<Uint8>().asTypedList(slice.length);
  }
}

abstract class MessageBufferSerializable {
  void writeToBuffer(MessageBuffer buffer);
}
