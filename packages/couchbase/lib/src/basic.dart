import 'message_buffer.dart';

extension CBDErrorCodeExtension on MessageBuffer {
  void readOptionalErrorCode() {
    if (!readBool()) {
      return;
    }

    throw CouchbaseException(
      readInt64(),
      readString(),
    );
  }
}

class CouchbaseException implements Exception {
  final int code;
  final String message;

  CouchbaseException(this.code, this.message);

  @override
  String toString() => 'CouchbaseException($code, $message)';
}
