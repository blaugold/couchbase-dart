import 'message_buffer.dart';

class ClusterCredentials {
  ClusterCredentials({
    required this.username,
    required this.password,
    required this.certificatePath,
    required this.keyPath,
    required this.allowedSaslMechanisms,
  });

  factory ClusterCredentials.read(MessageBuffer buffer) {
    return ClusterCredentials(
      username: buffer.readString(),
      password: buffer.readString(),
      certificatePath: buffer.readString(),
      keyPath: buffer.readString(),
      allowedSaslMechanisms: buffer.readBool()
          ? Iterable.generate(buffer.readUInt64(), (_) => buffer.readString())
              .toList()
          : null,
    );
  }

  final String username;
  final String password;
  final String certificatePath;
  final String keyPath;
  final List<String>? allowedSaslMechanisms;

  void write(MessageBuffer buffer) {
    buffer.writeString(username);
    buffer.writeString(password);
    buffer.writeString(certificatePath);
    buffer.writeString(keyPath);
    buffer.writeBool(allowedSaslMechanisms != null);
    if (allowedSaslMechanisms != null) {
      buffer.writeUInt64(allowedSaslMechanisms!.length);
      for (final mechanism in allowedSaslMechanisms!) {
        buffer.writeString(mechanism);
      }
    }
  }
}

class DnsConfig {
  DnsConfig({
    required this.nameServer,
    required this.port,
    required this.timeout,
  });

  factory DnsConfig.read(MessageBuffer buffer) {
    return DnsConfig(
      nameServer: buffer.readString(),
      port: buffer.readUInt16(),
      timeout: Duration(microseconds: buffer.readUInt64()),
    );
  }

  final String nameServer;
  final int port;
  final Duration timeout;

  void write(MessageBuffer buffer) {
    buffer.writeString(nameServer);
    buffer.writeUInt16(port);
    buffer.writeUInt64(timeout.inMicroseconds);
  }
}

class DocumentId {
  const DocumentId({
    required this.bucket,
    required this.scope,
    required this.collection,
    required this.key,
  });

  factory DocumentId.read(MessageBuffer buffer) {
    return DocumentId(
      bucket: buffer.readString(),
      scope: buffer.readString(),
      collection: buffer.readString(),
      key: buffer.readString(),
    );
  }

  final String bucket;
  final String scope;
  final String collection;
  final String key;

  void write(MessageBuffer buffer) {
    buffer.writeString(bucket);
    buffer.writeString(scope);
    buffer.writeString(collection);
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
