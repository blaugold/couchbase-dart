// ignore_for_file: public_member_api_docs

import 'general.dart';
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
      allowedSaslMechanisms!.forEach(buffer.writeString);
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
      port: buffer.readInt64(),
      timeout: Duration(microseconds: buffer.readInt64()),
    );
  }

  final String nameServer;
  final int port;
  final Duration timeout;

  void write(MessageBuffer buffer) {
    buffer.writeString(nameServer);
    buffer.writeInt64(port);
    buffer.writeInt64(timeout.inMicroseconds);
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

extension CasMessage on Cas {
  static Cas read(MessageBuffer buffer) =>
      InternalCas.fromValue(buffer.readUInt64());
  void write(MessageBuffer buffer) => buffer.writeUInt64(value);
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
      partitionUuid: buffer.readInt64(),
      sequenceNumber: buffer.readInt64(),
      partitionId: buffer.readInt64(),
      bucketName: buffer.readString(),
    );
  }

  final int _partitionUuid;
  final int _sequenceNumber;
  final int _partitionId;
  final String _bucketName;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(_partitionUuid);
    buffer.writeInt64(_sequenceNumber);
    buffer.writeInt64(_partitionId);
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
