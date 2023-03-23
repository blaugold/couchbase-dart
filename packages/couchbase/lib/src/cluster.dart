import 'package:couchbase/src/connection.dart';

import 'message_buffer.dart';

Future<Cluster> connect(
  String connectionString, [
  ConnectOptions? options,
]) async {
  final cluster = Cluster(connectionString, options ?? ConnectOptions());
  await cluster._connect();
  return cluster;
}

class ConnectOptions {
  final String? username;
  final String? password;

  ConnectOptions({
    this.username,
    this.password,
  }) {
    if (username != null && password == null) {
      throw ArgumentError.value(
        password,
        'password',
        'must be provided if username is provided.',
      );
    }
    if (username == null && password != null) {
      throw ArgumentError.value(
        username,
        'username',
        'must be provided if password is provided.',
      );
    }
  }
}

class NativeClusterCredentials implements MessageBufferSerializable {
  NativeClusterCredentials();

  String username = '';
  String password = '';

  @override
  void write(MessageBuffer buffer) {
    buffer.writeString(username);
    buffer.writeString(password);
  }
}

class Cluster {
  final String _connectionString;
  final ConnectOptions _options;
  final Connection _connection;

  Cluster(this._connectionString, this._options) : _connection = Connection();

  Future<void> _connect() async {
    final credentials = NativeClusterCredentials();

    if (_options.username != null) {
      credentials.username = _options.username!;
      credentials.password = _options.password!;
    }

    try {
      await _connection.open(_connectionString, credentials);
    } catch (e) {
      // Clean up the connection if it failed to open.
      await _connection.close();
      rethrow;
    }
  }

  Future<void> close() => _connection.close();
}
