// ignore_for_file: public_member_api_docs, avoid_print

import 'dart:convert';
import 'dart:ffi';
import 'dart:typed_data';

import 'lib_couchbase_dart.dart';
import 'native_library.dart';

abstract class MessageBuffer implements Finalizable {
  factory MessageBuffer({int initialCapacity = 1024}) {
    MessageBuffer buffer = _MessageBuffer(initialCapacity: initialCapacity);

    if (debugTracing) {
      buffer = _DebugTracingMessageBuffer(buffer);
    }

    return buffer;
  }

  static bool debugTracing = false;

  CBDMessageBuffer get pointer;

  void reset();

  // ignore: avoid_positional_boolean_parameters
  void writeBool(bool value);
  void writeUInt8(int value);
  void writeInt8(int value);
  void writeUInt16(int value);
  void writeInt16(int value);
  void writeUInt32(int value);
  void writeInt32(int value);
  void writeUInt64(int value);
  void writeInt64(int value);
  void writeFloat(double value);
  void writeDouble(double value);
  void writeData(List<int> value);
  void writeString(String value);

  bool readBool();
  int readUInt8();
  int readInt8();
  int readUInt16();
  int readInt16();
  int readUInt32();
  int readInt32();
  int readUInt64();
  int readInt64();
  double readFloat();
  double readDouble();
  Uint8List readData();
  String readString();
}

class _MessageBuffer implements MessageBuffer {
  _MessageBuffer({int initialCapacity = 1024})
      : pointer = bindings.CBDMessageBuffer_Create(initialCapacity) {
    _finalizer.attach(this, pointer.cast());
  }

  static final _finalizer =
      NativeFinalizer(bindings.addresses.CBDMessageBuffer_Destroy.cast());

  @override
  final CBDMessageBuffer pointer;

  @override
  void reset() => bindings.CBDMessageBuffer_Reset(pointer);

  // ignore: avoid_positional_boolean_parameters
  @override
  void writeBool(bool value) =>
      bindings.CBDMessageBuffer_WriteBool(pointer, value);

  @override
  void writeUInt8(int value) =>
      bindings.CBDMessageBuffer_WriteUInt8(pointer, value);

  @override
  void writeInt8(int value) =>
      bindings.CBDMessageBuffer_WriteInt8(pointer, value);

  @override
  void writeUInt16(int value) =>
      bindings.CBDMessageBuffer_WriteUInt16(pointer, value);

  @override
  void writeInt16(int value) =>
      bindings.CBDMessageBuffer_WriteInt16(pointer, value);

  @override
  void writeUInt32(int value) =>
      bindings.CBDMessageBuffer_WriteUInt32(pointer, value);

  @override
  void writeInt32(int value) =>
      bindings.CBDMessageBuffer_WriteInt32(pointer, value);

  @override
  void writeUInt64(int value) =>
      bindings.CBDMessageBuffer_WriteUInt64(pointer, value);

  @override
  void writeInt64(int value) =>
      bindings.CBDMessageBuffer_WriteInt64(pointer, value);

  @override
  void writeFloat(double value) =>
      bindings.CBDMessageBuffer_WriteFloat(pointer, value);

  @override
  void writeDouble(double value) =>
      bindings.CBDMessageBuffer_WriteDouble(pointer, value);

  @override
  void writeData(List<int> value) {
    final destination =
        bindings.CBDMessageBuffer_Allocate(pointer, value.length);
    destination.cast<Uint8>().asTypedList(value.length).setAll(0, value);
  }

  @override
  void writeString(String value) {
    writeData(utf8.encode(value));
  }

  @override
  bool readBool() => bindings.CBDMessageBuffer_ReadBool(pointer);

  @override
  int readUInt8() => bindings.CBDMessageBuffer_ReadUInt8(pointer);

  @override
  int readInt8() => bindings.CBDMessageBuffer_ReadInt8(pointer);

  @override
  int readUInt16() => bindings.CBDMessageBuffer_ReadUInt16(pointer);

  @override
  int readInt16() => bindings.CBDMessageBuffer_ReadInt16(pointer);

  @override
  int readUInt32() => bindings.CBDMessageBuffer_ReadUInt32(pointer);

  @override
  int readInt32() => bindings.CBDMessageBuffer_ReadInt32(pointer);

  @override
  int readUInt64() => bindings.CBDMessageBuffer_ReadUInt64(pointer);

  @override
  int readInt64() => bindings.CBDMessageBuffer_ReadInt64(pointer);

  @override
  double readFloat() => bindings.CBDMessageBuffer_ReadFloat(pointer);

  @override
  double readDouble() => bindings.CBDMessageBuffer_ReadDouble(pointer);

  @override
  Uint8List readData() => Uint8List.fromList(_readData());

  @override
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

/// A [MessageBuffer] that prints all written and read values.
class _DebugTracingMessageBuffer implements MessageBuffer {
  _DebugTracingMessageBuffer(this._buffer);

  final MessageBuffer _buffer;

  @override
  CBDMessageBuffer get pointer => _buffer.pointer;

  @override
  void reset() {
    print('--> Reset <--');
    _buffer.reset();
  }

  @override
  void writeBool(bool value) {
    _printWrite('Bool', value);
    _buffer.writeBool(value);
  }

  @override
  void writeUInt8(int value) {
    _printWrite('UInt8', value);
    _buffer.writeUInt8(value);
  }

  @override
  void writeInt8(int value) {
    _printWrite('Int8', value);
    _buffer.writeInt8(value);
  }

  @override
  void writeUInt16(int value) {
    _printWrite('UInt16', value);
    _buffer.writeUInt16(value);
  }

  @override
  void writeInt16(int value) {
    _printWrite('Int16', value);
    _buffer.writeInt16(value);
  }

  @override
  void writeUInt32(int value) {
    _printWrite('UInt32', value);
    _buffer.writeUInt32(value);
  }

  @override
  void writeInt32(int value) {
    _printWrite('Int32', value);
    _buffer.writeInt32(value);
  }

  @override
  void writeUInt64(int value) {
    _printWrite('UInt64', value);
    _buffer.writeUInt64(value);
  }

  @override
  void writeInt64(int value) {
    _printWrite('Int64', value);
    _buffer.writeInt64(value);
  }

  @override
  void writeFloat(double value) {
    _printWrite('Float', value);
    _buffer.writeFloat(value);
  }

  @override
  void writeDouble(double value) {
    _printWrite('Double', value);
    _buffer.writeDouble(value);
  }

  @override
  void writeData(List<int> value) {
    _printWrite('Data', value);
    _buffer.writeData(value);
  }

  @override
  void writeString(String value) {
    _printWrite('String', value);
    _buffer.writeString(value);
  }

  @override
  bool readBool() => _printRead('Bool', _buffer.readBool());

  @override
  int readUInt8() => _printRead('UInt8', _buffer.readUInt8());

  @override
  int readInt8() => _printRead('Int8', _buffer.readInt8());

  @override
  int readUInt16() => _printRead('UInt16', _buffer.readUInt16());

  @override
  int readInt16() => _printRead('Int16', _buffer.readInt16());

  @override
  int readUInt32() => _printRead('UInt32', _buffer.readUInt32());

  @override
  int readInt32() => _printRead('Int32', _buffer.readInt32());

  @override
  int readUInt64() => _printRead('UInt64', _buffer.readUInt64());

  @override
  int readInt64() => _printRead('Int64', _buffer.readInt64());

  @override
  double readFloat() => _printRead('Float', _buffer.readFloat());

  @override
  double readDouble() => _printRead('Double', _buffer.readDouble());

  @override
  Uint8List readData() => _printRead('Data', _buffer.readData());

  @override
  String readString() => _printRead('String', _buffer.readString());

  void _printWrite<T>(String name, T value) {
    print('<- ${name.padRight(6)} $value');
  }

  T _printRead<T>(String name, T value) {
    print('-> ${name.padRight(6)} $value');
    return value;
  }
}
