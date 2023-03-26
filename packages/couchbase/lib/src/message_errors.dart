import 'message.g.dart';
import 'message_basic.dart';
import 'message_buffer.dart';

class CommonError {
  const CommonError({
    required this.code,
    required this.message,
  });

  factory CommonError.read(MessageBuffer buffer) {
    return CommonError(
      code: CommonErrorCode.read(buffer),
      message: buffer.readString(),
    );
  }

  final CommonErrorCode code;
  final String message;

  void write(MessageBuffer buffer) => throw UnimplementedError();
}

class KeyValueExtendedErrorInfo {
  const KeyValueExtendedErrorInfo({
    required this.reference,
    required this.context,
  });

  factory KeyValueExtendedErrorInfo.read(MessageBuffer buffer) {
    return KeyValueExtendedErrorInfo(
      reference: buffer.readString(),
      context: buffer.readString(),
    );
  }

  final String reference;
  final String context;
}

class KeyValueErrorContext {
  const KeyValueErrorContext({
    required this.code,
    required this.message,
    required this.id,
    required this.opaque,
    required this.cas,
    required this.statusCode,
    required this.extendedErrorInfo,
    required this.lastDispatchedTo,
    required this.lastDispatchedFrom,
    required this.retryAttempts,
    required this.retryReasons,
  });

  factory KeyValueErrorContext.read(MessageBuffer buffer) {
    return KeyValueErrorContext(
      code: KeyValueErrorCode.read(buffer),
      message: buffer.readString(),
      id: buffer.readString(),
      opaque: buffer.readInt64(),
      cas: Cas.read(buffer),
      statusCode: KeyValueStatusCode.read(buffer),
      extendedErrorInfo:
          buffer.readBool() ? KeyValueExtendedErrorInfo.read(buffer) : null,
      lastDispatchedTo: buffer.readBool() ? buffer.readString() : null,
      lastDispatchedFrom: buffer.readBool() ? buffer.readString() : null,
      retryAttempts: buffer.readUInt8(),
      retryReasons: Iterable.generate(
          buffer.readUInt64(), (_) => RetryReason.read(buffer)).toSet(),
    );
  }

  final KeyValueErrorCode code;
  final String message;
  final String id;
  final int opaque;
  final Cas cas;
  final KeyValueStatusCode statusCode;
  final KeyValueExtendedErrorInfo? extendedErrorInfo;
  final String? lastDispatchedTo;
  final String? lastDispatchedFrom;
  final int retryAttempts;
  final Set<RetryReason> retryReasons;
}

class SubdocumentErrorContext {
  const SubdocumentErrorContext({
    required this.code,
    required this.message,
    required this.id,
    required this.opaque,
    required this.cas,
    required this.statusCode,
    required this.extendedErrorInfo,
    required this.lastDispatchedTo,
    required this.lastDispatchedFrom,
    required this.retryAttempts,
    required this.retryReasons,
    required this.firstErrorPath,
    required this.firstErrorIndex,
    required this.deleted,
  });

  factory SubdocumentErrorContext.read(MessageBuffer buffer) {
    return SubdocumentErrorContext(
      code: KeyValueErrorCode.read(buffer),
      message: buffer.readString(),
      id: buffer.readString(),
      opaque: buffer.readInt64(),
      cas: Cas.read(buffer),
      statusCode: KeyValueStatusCode.read(buffer),
      extendedErrorInfo:
          buffer.readBool() ? KeyValueExtendedErrorInfo.read(buffer) : null,
      lastDispatchedTo: buffer.readBool() ? buffer.readString() : null,
      lastDispatchedFrom: buffer.readBool() ? buffer.readString() : null,
      retryAttempts: buffer.readUInt8(),
      retryReasons: Iterable.generate(
          buffer.readUInt64(), (_) => RetryReason.read(buffer)).toSet(),
      firstErrorPath: buffer.readBool() ? buffer.readString() : null,
      firstErrorIndex: buffer.readBool() ? buffer.readInt64() : null,
      deleted: buffer.readBool(),
    );
  }

  final KeyValueErrorCode code;
  final String message;
  final String id;
  final int opaque;
  final Cas cas;
  final KeyValueStatusCode statusCode;
  final KeyValueExtendedErrorInfo? extendedErrorInfo;
  final String? lastDispatchedTo;
  final String? lastDispatchedFrom;
  final int retryAttempts;
  final Set<RetryReason> retryReasons;
  final String? firstErrorPath;
  final int? firstErrorIndex;
  final bool deleted;
}

class ViewErrorContext {
  const ViewErrorContext({
    required this.code,
    required this.message,
    required this.clientContextId,
    required this.designDocumentName,
    required this.viewName,
    required this.queryString,
    required this.method,
    required this.path,
    required this.httpStatus,
    required this.httpBody,
    required this.lastDispatchedTo,
    required this.lastDispatchedFrom,
    required this.retryAttempts,
    required this.retryReasons,
  });

  factory ViewErrorContext.read(MessageBuffer buffer) {
    return ViewErrorContext(
      code: ViewErrorCode.read(buffer),
      message: buffer.readString(),
      clientContextId: buffer.readString(),
      designDocumentName: buffer.readString(),
      viewName: buffer.readString(),
      queryString:
          Iterable.generate(buffer.readUInt64(), (_) => buffer.readString())
              .toList(),
      method: buffer.readString(),
      path: buffer.readString(),
      httpStatus: buffer.readInt64(),
      httpBody: buffer.readString(),
      lastDispatchedTo: buffer.readBool() ? buffer.readString() : null,
      lastDispatchedFrom: buffer.readBool() ? buffer.readString() : null,
      retryAttempts: buffer.readUInt64(),
      retryReasons: Iterable.generate(
          buffer.readUInt64(), (_) => RetryReason.read(buffer)).toSet(),
    );
  }

  final ViewErrorCode code;
  final String message;
  final String clientContextId;
  final String designDocumentName;
  final String viewName;
  final List<String> queryString;
  final String method;
  final String path;
  final int httpStatus;
  final String httpBody;
  final String? lastDispatchedTo;
  final String? lastDispatchedFrom;
  final int retryAttempts;
  final Set<RetryReason> retryReasons;
}

class QueryErrorContext {
  const QueryErrorContext({
    required this.code,
    required this.message,
    required this.firstErrorCode,
    required this.firstErrorMessage,
    required this.clientContextId,
    required this.statement,
    required this.parameters,
    required this.method,
    required this.path,
    required this.httpStatus,
    required this.httpBody,
    required this.lastDispatchedTo,
    required this.lastDispatchedFrom,
    required this.retryAttempts,
    required this.retryReasons,
  });

  factory QueryErrorContext.read(MessageBuffer buffer) {
    return QueryErrorContext(
      code: ViewErrorCode.read(buffer),
      message: buffer.readString(),
      firstErrorCode: buffer.readUInt64(),
      firstErrorMessage: buffer.readString(),
      clientContextId: buffer.readString(),
      statement: buffer.readString(),
      parameters: buffer.readBool() ? buffer.readString() : null,
      method: buffer.readString(),
      path: buffer.readString(),
      httpStatus: buffer.readInt64(),
      httpBody: buffer.readString(),
      lastDispatchedTo: buffer.readBool() ? buffer.readString() : null,
      lastDispatchedFrom: buffer.readBool() ? buffer.readString() : null,
      retryAttempts: buffer.readUInt64(),
      retryReasons: Iterable.generate(
          buffer.readUInt64(), (_) => RetryReason.read(buffer)).toSet(),
    );
  }

  final ViewErrorCode code;
  final String message;
  final int firstErrorCode;
  final String firstErrorMessage;
  final String clientContextId;
  final String statement;
  final String? parameters;
  final String method;
  final String path;
  final int httpStatus;
  final String httpBody;
  final String? lastDispatchedTo;
  final String? lastDispatchedFrom;
  final int retryAttempts;
  final Set<RetryReason> retryReasons;
}

class SearchErrorContext {
  const SearchErrorContext({
    required this.code,
    required this.message,
    required this.clientContextId,
    required this.indexName,
    required this.query,
    required this.parameters,
    required this.method,
    required this.path,
    required this.httpStatus,
    required this.httpBody,
    required this.lastDispatchedTo,
    required this.lastDispatchedFrom,
    required this.retryAttempts,
    required this.retryReasons,
  });

  factory SearchErrorContext.read(MessageBuffer buffer) {
    return SearchErrorContext(
      code: ViewErrorCode.read(buffer),
      message: buffer.readString(),
      clientContextId: buffer.readString(),
      indexName: buffer.readString(),
      query: buffer.readBool() ? buffer.readString() : null,
      parameters: buffer.readBool() ? buffer.readString() : null,
      method: buffer.readString(),
      path: buffer.readString(),
      httpStatus: buffer.readInt64(),
      httpBody: buffer.readString(),
      lastDispatchedTo: buffer.readBool() ? buffer.readString() : null,
      lastDispatchedFrom: buffer.readBool() ? buffer.readString() : null,
      retryAttempts: buffer.readUInt64(),
      retryReasons: Iterable.generate(
          buffer.readUInt64(), (_) => RetryReason.read(buffer)).toSet(),
    );
  }

  final ViewErrorCode code;
  final String message;
  final String clientContextId;
  final String indexName;
  final String? query;
  final String? parameters;
  final String method;
  final String path;
  final int httpStatus;
  final String httpBody;
  final String? lastDispatchedTo;
  final String? lastDispatchedFrom;
  final int retryAttempts;
  final Set<RetryReason> retryReasons;
}

class AnalyticsErrorContext {
  const AnalyticsErrorContext({
    required this.code,
    required this.message,
    required this.firstErrorCode,
    required this.firstErrorMessage,
    required this.clientContextId,
    required this.statement,
    required this.parameters,
    required this.method,
    required this.path,
    required this.httpStatus,
    required this.httpBody,
    required this.lastDispatchedTo,
    required this.lastDispatchedFrom,
    required this.retryAttempts,
    required this.retryReasons,
  });

  factory AnalyticsErrorContext.read(MessageBuffer buffer) {
    return AnalyticsErrorContext(
      code: ViewErrorCode.read(buffer),
      message: buffer.readString(),
      firstErrorCode: buffer.readUInt64(),
      firstErrorMessage: buffer.readString(),
      clientContextId: buffer.readString(),
      statement: buffer.readString(),
      parameters: buffer.readBool() ? buffer.readString() : null,
      method: buffer.readString(),
      path: buffer.readString(),
      httpStatus: buffer.readInt64(),
      httpBody: buffer.readString(),
      lastDispatchedTo: buffer.readBool() ? buffer.readString() : null,
      lastDispatchedFrom: buffer.readBool() ? buffer.readString() : null,
      retryAttempts: buffer.readUInt64(),
      retryReasons: Iterable.generate(
          buffer.readUInt64(), (_) => RetryReason.read(buffer)).toSet(),
    );
  }

  final ViewErrorCode code;
  final String message;
  final int firstErrorCode;
  final String firstErrorMessage;
  final String clientContextId;
  final String statement;
  final String? parameters;
  final String method;
  final String path;
  final int httpStatus;
  final String httpBody;
  final String? lastDispatchedTo;
  final String? lastDispatchedFrom;
  final int retryAttempts;
  final Set<RetryReason> retryReasons;
}

class HttpErrorContext {
  const HttpErrorContext({
    required this.code,
    required this.message,
    required this.clientContextId,
    required this.method,
    required this.path,
    required this.httpStatus,
    required this.httpBody,
    required this.lastDispatchedTo,
    required this.lastDispatchedFrom,
    required this.retryAttempts,
    required this.retryReasons,
  });

  factory HttpErrorContext.read(MessageBuffer buffer) {
    return HttpErrorContext(
      code: ViewErrorCode.read(buffer),
      message: buffer.readString(),
      clientContextId: buffer.readString(),
      method: buffer.readString(),
      path: buffer.readString(),
      httpStatus: buffer.readInt64(),
      httpBody: buffer.readString(),
      lastDispatchedTo: buffer.readBool() ? buffer.readString() : null,
      lastDispatchedFrom: buffer.readBool() ? buffer.readString() : null,
      retryAttempts: buffer.readUInt64(),
      retryReasons: Iterable.generate(
          buffer.readUInt64(), (_) => RetryReason.read(buffer)).toSet(),
    );
  }

  final ViewErrorCode code;
  final String message;
  final String clientContextId;
  final String method;
  final String path;
  final int httpStatus;
  final String httpBody;
  final String? lastDispatchedTo;
  final String? lastDispatchedFrom;
  final int retryAttempts;
  final Set<RetryReason> retryReasons;
}
