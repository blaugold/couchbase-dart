import 'dart:typed_data';

import 'message_buffer.dart';

part 'message.g.dart';

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

  void write(MessageBuffer buffer) {
    code.write(buffer);
    buffer.writeString(message);
  }
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

  void write(MessageBuffer buffer) {
    buffer.writeString(reference);
    buffer.writeString(context);
  }
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
      opaque: buffer.readUInt32(),
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

  void write(MessageBuffer buffer) {
    code.write(buffer);
    buffer.writeString(message);
    buffer.writeString(id);
    buffer.writeUInt32(opaque);
    cas.write(buffer);
    statusCode.write(buffer);
    buffer.writeBool(extendedErrorInfo != null);
    if (extendedErrorInfo != null) {
      extendedErrorInfo!.write(buffer);
    }
    buffer.writeBool(lastDispatchedTo != null);
    if (lastDispatchedTo != null) {
      buffer.writeString(lastDispatchedTo!);
    }
    buffer.writeBool(lastDispatchedFrom != null);
    if (lastDispatchedFrom != null) {
      buffer.writeString(lastDispatchedFrom!);
    }
    buffer.writeUInt8(retryAttempts);
    buffer.writeUInt64(retryReasons.length);
    for (final reason in retryReasons) {
      reason.write(buffer);
    }
  }
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
      opaque: buffer.readUInt32(),
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
      firstErrorIndex: buffer.readBool() ? buffer.readUInt32() : null,
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

  void write(MessageBuffer buffer) {
    code.write(buffer);
    buffer.writeString(message);
    buffer.writeString(id);
    buffer.writeUInt32(opaque);
    cas.write(buffer);
    statusCode.write(buffer);
    buffer.writeBool(extendedErrorInfo != null);
    if (extendedErrorInfo != null) {
      extendedErrorInfo!.write(buffer);
    }
    buffer.writeBool(lastDispatchedTo != null);
    if (lastDispatchedTo != null) {
      buffer.writeString(lastDispatchedTo!);
    }
    buffer.writeBool(lastDispatchedFrom != null);
    if (lastDispatchedFrom != null) {
      buffer.writeString(lastDispatchedFrom!);
    }
    buffer.writeUInt8(retryAttempts);
    buffer.writeUInt64(retryReasons.length);
    for (final reason in retryReasons) {
      reason.write(buffer);
    }
    buffer.writeBool(firstErrorPath != null);
    if (firstErrorPath != null) {
      buffer.writeString(firstErrorPath!);
    }
    buffer.writeBool(firstErrorIndex != null);
    if (firstErrorIndex != null) {
      buffer.writeUInt32(firstErrorIndex!);
    }
    buffer.writeBool(deleted);
  }
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
      httpStatus: buffer.readUInt32(),
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

  void write(MessageBuffer buffer) {
    code.write(buffer);
    buffer.writeString(message);
    buffer.writeString(clientContextId);
    buffer.writeString(designDocumentName);
    buffer.writeString(viewName);
    buffer.writeUInt64(queryString.length);
    for (final query in queryString) {
      buffer.writeString(query);
    }
    buffer.writeString(method);
    buffer.writeString(path);
    buffer.writeUInt32(httpStatus);
    buffer.writeString(httpBody);
    buffer.writeBool(lastDispatchedTo != null);
    if (lastDispatchedTo != null) {
      buffer.writeString(lastDispatchedTo!);
    }
    buffer.writeBool(lastDispatchedFrom != null);
    if (lastDispatchedFrom != null) {
      buffer.writeString(lastDispatchedFrom!);
    }
    buffer.writeUInt64(retryAttempts);
    buffer.writeUInt64(retryReasons.length);
    for (final reason in retryReasons) {
      reason.write(buffer);
    }
  }
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
      httpStatus: buffer.readUInt32(),
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

  void write(MessageBuffer buffer) {
    code.write(buffer);
    buffer.writeString(message);
    buffer.writeUInt64(firstErrorCode);
    buffer.writeString(firstErrorMessage);
    buffer.writeString(clientContextId);
    buffer.writeString(statement);
    buffer.writeBool(parameters != null);
    if (parameters != null) {
      buffer.writeString(parameters!);
    }
    buffer.writeString(method);
    buffer.writeString(path);
    buffer.writeUInt32(httpStatus);
    buffer.writeString(httpBody);
    buffer.writeBool(lastDispatchedTo != null);
    if (lastDispatchedTo != null) {
      buffer.writeString(lastDispatchedTo!);
    }
    buffer.writeBool(lastDispatchedFrom != null);
    if (lastDispatchedFrom != null) {
      buffer.writeString(lastDispatchedFrom!);
    }
    buffer.writeUInt64(retryAttempts);
    buffer.writeUInt64(retryReasons.length);
    for (final reason in retryReasons) {
      reason.write(buffer);
    }
  }
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
      httpStatus: buffer.readUInt32(),
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

  void write(MessageBuffer buffer) {
    code.write(buffer);
    buffer.writeString(message);
    buffer.writeString(clientContextId);
    buffer.writeString(indexName);
    buffer.writeBool(query != null);
    if (query != null) {
      buffer.writeString(query!);
    }
    buffer.writeBool(parameters != null);
    if (parameters != null) {
      buffer.writeString(parameters!);
    }
    buffer.writeString(method);
    buffer.writeString(path);
    buffer.writeUInt32(httpStatus);
    buffer.writeString(httpBody);
    buffer.writeBool(lastDispatchedTo != null);
    if (lastDispatchedTo != null) {
      buffer.writeString(lastDispatchedTo!);
    }
    buffer.writeBool(lastDispatchedFrom != null);
    if (lastDispatchedFrom != null) {
      buffer.writeString(lastDispatchedFrom!);
    }
    buffer.writeUInt64(retryAttempts);
    buffer.writeUInt64(retryReasons.length);
    for (final reason in retryReasons) {
      reason.write(buffer);
    }
  }
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
      httpStatus: buffer.readUInt32(),
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

  void write(MessageBuffer buffer) {
    code.write(buffer);
    buffer.writeString(message);
    buffer.writeUInt64(firstErrorCode);
    buffer.writeString(firstErrorMessage);
    buffer.writeString(clientContextId);
    buffer.writeString(statement);
    buffer.writeBool(parameters != null);
    if (parameters != null) {
      buffer.writeString(parameters!);
    }
    buffer.writeString(method);
    buffer.writeString(path);
    buffer.writeUInt32(httpStatus);
    buffer.writeString(httpBody);
    buffer.writeBool(lastDispatchedTo != null);
    if (lastDispatchedTo != null) {
      buffer.writeString(lastDispatchedTo!);
    }
    buffer.writeBool(lastDispatchedFrom != null);
    if (lastDispatchedFrom != null) {
      buffer.writeString(lastDispatchedFrom!);
    }
    buffer.writeUInt64(retryAttempts);
    buffer.writeUInt64(retryReasons.length);
    for (final reason in retryReasons) {
      reason.write(buffer);
    }
  }
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
      httpStatus: buffer.readUInt32(),
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

  void write(MessageBuffer buffer) {
    code.write(buffer);
    buffer.writeString(message);
    buffer.writeString(clientContextId);
    buffer.writeString(method);
    buffer.writeString(path);
    buffer.writeUInt32(httpStatus);
    buffer.writeString(httpBody);
    buffer.writeBool(lastDispatchedTo != null);
    if (lastDispatchedTo != null) {
      buffer.writeString(lastDispatchedTo!);
    }
    buffer.writeBool(lastDispatchedFrom != null);
    if (lastDispatchedFrom != null) {
      buffer.writeString(lastDispatchedFrom!);
    }
    buffer.writeUInt64(retryAttempts);
    buffer.writeUInt64(retryReasons.length);
    for (final reason in retryReasons) {
      reason.write(buffer);
    }
  }
}

class DocumentId {
  const DocumentId({
    required this.bucket,
    this.scope,
    this.collection,
    required this.key,
  });

  factory DocumentId.read(MessageBuffer buffer) {
    return DocumentId(
      bucket: buffer.readString(),
      scope: buffer.readBool() ? buffer.readString() : null,
      collection: buffer.readBool() ? buffer.readString() : null,
      key: buffer.readString(),
    );
  }

  final String bucket;
  final String? scope;
  final String? collection;
  final String key;

  void write(MessageBuffer buffer) {
    buffer.writeString(bucket);
    buffer.writeBool(scope != null);
    if (scope != null) {
      buffer.writeString(scope!);
    }
    buffer.writeBool(collection != null);
    if (collection != null) {
      buffer.writeString(collection!);
    }
    buffer.writeString(key);
  }
}

class Cas {
  const Cas._(this._value);

  factory Cas.read(MessageBuffer buffer) => Cas._(buffer.readUInt64());

  final int _value;

  void write(MessageBuffer buffer) => buffer.writeUInt64(_value);

  @override
  String toString() => 'Cas($_value)';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Cas &&
          runtimeType == other.runtimeType &&
          _value == other._value;

  @override
  int get hashCode => _value.hashCode;
}

class MutationToken {
  const MutationToken._({
    required int partitionUuid,
    required int sequenceNumber,
    required int partitionId,
    required String bucketName,
  })  : _bucketName = bucketName,
        _partitionId = partitionId,
        _sequenceNumber = sequenceNumber,
        _partitionUuid = partitionUuid;

  factory MutationToken.read(MessageBuffer buffer) {
    return MutationToken._(
      partitionUuid: buffer.readUInt64(),
      sequenceNumber: buffer.readUInt64(),
      partitionId: buffer.readUInt16(),
      bucketName: buffer.readString(),
    );
  }

  final int _partitionUuid;
  final int _sequenceNumber;
  final int _partitionId;
  final String _bucketName;

  void write(MessageBuffer buffer) {
    buffer.writeUInt64(_partitionUuid);
    buffer.writeUInt64(_sequenceNumber);
    buffer.writeUInt16(_partitionId);
    buffer.writeString(_bucketName);
  }
}

class QueryContext {
  QueryContext({this.bucketName, this.scopeName}) {
    if ((bucketName == null) != (scopeName == null)) {
      throw ArgumentError(
        'bucketName and scopeName must be both null or both non-null',
      );
    }
  }

  factory QueryContext.read(MessageBuffer buffer) {
    return QueryContext(
      bucketName: buffer.readBool() ? buffer.readString() : null,
      scopeName: buffer.readBool() ? buffer.readString() : null,
    );
  }

  final String? bucketName;
  final String? scopeName;

  void write(MessageBuffer buffer) {
    buffer.writeBool(bucketName != null);
    if (bucketName != null) {
      buffer.writeString(bucketName!);
    }
    buffer.writeBool(scopeName != null);
    if (scopeName != null) {
      buffer.writeString(scopeName!);
    }
  }
}
