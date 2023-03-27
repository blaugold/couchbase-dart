import 'message.g.dart';
import 'message_basic.dart';
import 'message_errors.dart' as message_errors;

abstract class ErrorContext {}

class KeyValueErrorContext extends ErrorContext {
  KeyValueErrorContext({
    required this.statusCode,
    required this.opaque,
    required this.cas,
    required this.key,
    required this.context,
    required this.ref,
  });

  /// The memcached status code returned by the server.
  final KeyValueStatusCode? statusCode;

  /// The opaque identifier for the request.
  final int opaque;

  /// The cas returned by the server.
  final Cas cas;

  /// The key that was being operated on.
  final String key;

  // TODO: Add theses to message_errors.KeyValueErrorContext
  // /// The name of the bucket that was being operated on.
  // final String bucket;

  // /// The name of the collection that was being operated on.
  // final String collection;

  // /// The name of the scope that was being operated on.
  // final String scope;

  /// The context returned by the server helping describing the error.
  final String? context;

  /// The reference id returned by the server for correlation in server logs.
  final String? ref;

  @override
  String toString() {
    return 'KeyValueErrorContext('
        'statusCode: ${statusCode?.name}, '
        'opaque: $opaque, '
        'cas: $cas, '
        'key: $key, '
        'context: $context, '
        'ref: $ref'
        ')';
  }
}

extension KeyValueErrorContextToDart on message_errors.KeyValueErrorContext {
  KeyValueErrorContext toDart() {
    return KeyValueErrorContext(
      statusCode: statusCode,
      opaque: opaque,
      cas: cas,
      key: id,
      context: extendedErrorInfo?.context,
      ref: extendedErrorInfo?.reference,
    );
  }
}

abstract class CouchbaseException<Code extends Enum,
    Context extends ErrorContext?> implements Exception {
  CouchbaseException(this.message, this.code, this.context);

  final String message;
  final Code code;
  final Context context;

  String get _name;

  @override
  String toString() {
    return '$_name(message: $message, code: ${code.name}, context: $context)';
  }
}

class CommonException
    extends CouchbaseException<CommonErrorCode, ErrorContext?> {
  CommonException(super.message, super.code, super.context);

  @override
  String get _name => 'CommonException';
}

class KeyValueException
    extends CouchbaseException<KeyValueErrorCode, KeyValueErrorContext> {
  KeyValueException(super.message, super.error, super.context);

  @override
  String get _name => 'KeyValueException';
}

Object convertMessageError(Object error, [ErrorContext? context]) {
  if (error is message_errors.ErrorCode) {
    return CommonException(
      error.message,
      CommonErrorCode.byValue(error.code)!,
      context,
    );
  }

  if (error is message_errors.KeyValueErrorContext) {
    final keyValueErrorCode = KeyValueErrorCode.byValue(error.code.code);
    if (keyValueErrorCode != null) {
      return KeyValueException(
        error.code.message,
        keyValueErrorCode,
        error.toDart(),
      );
    }

    return convertMessageError(error.code, error.toDart());
  }

  return error;
}
