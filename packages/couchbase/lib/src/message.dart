import 'message_buffer.dart';

class Cas {
  const Cas(this.value);

  factory Cas.read(MessageBuffer buffer) => Cas(buffer.readUInt64());

  final int value;

  void write(MessageBuffer buffer) => buffer.writeUInt64(value);

  @override
  String toString() => 'Cas($value)';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Cas && runtimeType == other.runtimeType && value == other.value;

  @override
  int get hashCode => value.hashCode;
}

class ErrorCode {
  final int value;
  final String message;

  const ErrorCode(this.value, this.message);

  factory ErrorCode.read(MessageBuffer buffer) {
    final value = buffer.readUInt32();
    final message = buffer.readString();
    return ErrorCode(value, message);
  }

  void write(MessageBuffer buffer) {
    buffer.writeUInt32(value);
    buffer.writeString(message);
  }
}
