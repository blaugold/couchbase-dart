import 'dart:ffi';

import 'package:couchbase/src/base.dart';
import 'package:couchbase/src/binding.dart';
import 'package:couchbase/src/connection.dart';

import 'lib_couchbase_dart.dart';

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

class NativeClusterCredentials implements Finalizable {
  NativeClusterCredentials()
      : pointer = binding.CBDClusterCredentials_Create() {
    _finalizer.attach(this, pointer.cast());
  }

  static final _finalizer =
      NativeFinalizer(binding.addresses.CBDClusterCredentials_Destroy.cast());

  final CBDClusterCredentials pointer;

  set username(String value) =>
      value.setNative(pointer, binding.CBDClusterCredentials_SetUsername);

  set password(String value) =>
      value.setNative(pointer, binding.CBDClusterCredentials_SetPassword);
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
