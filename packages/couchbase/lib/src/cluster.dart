import 'dart:async';

import 'bucket.dart';
import 'connection.dart';
import 'message_basic.dart';
import 'transcoder.dart';

Future<Cluster> connect(
  String connectionString, [
  ConnectOptions? options,
]) async {
  final cluster = Cluster(connectionString, options ?? ConnectOptions());
  await cluster._connect();
  return cluster;
}

class ConnectOptions {
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

  final String? username;
  final String? password;
}

class Cluster {
  Cluster(this._connectionString, this._options)
      : _transcoder = DefaultTranscoder(),
        _connection = Connection();
  final String _connectionString;
  final ConnectOptions _options;
  final Transcoder _transcoder;
  final Connection _connection;
  final Set<String> _openBuckets = {};

  Future<void> close() => _connection.close();

  Bucket bucket(String name) {
    if (!_openBuckets.contains(name)) {
      _openBuckets.add(name);
      unawaited(
        _connection.openBucket(name).onError(
              (error, _) => {
                // TODO: Move to log framework.
                // ignore: avoid_print
                print('Error opening bucket $name: $error'),
              },
            ),
      );
    }
    return Bucket(name: name, cluster: this);
  }

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
      // ignore: avoid_catches_without_on_clauses
    } catch (e) {
      // Clean up the connection if it failed to open.
      await _connection.close();
      rethrow;
    }
  }
}

extension ClusterInternal on Cluster {
  Transcoder get transcoder => _transcoder;
  Connection get connection => _connection;
}
