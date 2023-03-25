import 'package:couchbase/src/connection.dart';

import 'message_basic.dart';

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

class Cluster {
  final String _connectionString;
  final ConnectOptions _options;
  final Connection _connection;

  Cluster(this._connectionString, this._options) : _connection = Connection();

  Future<void> _connect() async {
    final credentials = ClusterCredentials(
      username: _options.username ?? '',
      password: _options.password ?? '',
      certificatePath: '',
      keyPath: '',
      allowedSaslMechanisms: null,
    );

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
