import 'package:couchbase/src/message.g.dart';

import 'message_buffer.dart';

// TODO: Error contexts

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
