import 'dart:async';
import 'dart:ffi';
import 'dart:isolate';

import 'package:couchbase/src/base.dart';

import 'binding.dart';
import 'lib_couchbase_dart.dart';

typedef _CallbackId = int;
typedef _Callback = void Function(Pointer<Void> response);

class Connection implements Finalizable {
  static final _finalizer =
      NativeFinalizer(binding.addresses.CBDConnection_Destroy.cast());

  late final Pointer<CBDConnection> _connection;
  late final StreamSubscription<void> _callbackSubscription;
  int _nextCallbackId = 0;
  final _pendingCallbacks = <_CallbackId, _Callback>{};

  Connection() {
    final callbackPort = ReceivePort();

    _connection =
        binding.CBDConnection_Create(callbackPort.sendPort.nativePort);
    _finalizer.attach(this, _connection.cast(), detach: this);

    _callbackSubscription = callbackPort.listen((message) {
      final list = message as List;
      final callbackId = list[0] as _CallbackId;
      final response = Pointer<Void>.fromAddress(list[1] as int);

      final callback = _pendingCallbacks.remove(callbackId);
      if (callback == null) {
        throw StateError('Callback #$callbackId not found.');
      }
      callback(response);
    });
  }

  Future<void> open(
    String connectionString,
    Pointer<CBDClusterCredentials> credentials,
  ) async {
    final responseHandler = _createResponseHandler(_errorCodeCallback);

    binding.CBDConnection_Open(
      _connection,
      connectionString.toCBDBuffer(),
      credentials,
      responseHandler.callbackId,
    );

    return responseHandler.result;
  }

  Future<void> close() async {
    // TODO: Prevent any further calls to this connection.

    await _close();
    await _callbackSubscription.cancel();
    _finalizer.detach(this);
    binding.CBDConnection_Destroy(_connection);
  }

  Future<void> _close() async {
    final responseHandler = _createResponseHandler(_errorCodeCallback);

    binding.CBDConnection_Close(
      _connection,
      responseHandler.callbackId,
    );

    return responseHandler.result;
  }

  _ResponseHandler<T> _createResponseHandler<T>(
      T Function(Pointer<Void> response) callback) {
    final completer = Completer<T>.sync();
    final callbackId = _nextCallbackId++;
    _pendingCallbacks[callbackId] = (response) {
      try {
        completer.complete(callback(response));
      } catch (e) {
        completer.completeError(e);
      }
    };
    return _ResponseHandler(callbackId, Future.sync(() async {
      try {
        return await completer.future;
      } catch (e) {
        throw e;
      }
    }));
  }
}

class _ResponseHandler<T> {
  final _CallbackId callbackId;
  final Future<T> result;

  _ResponseHandler(this.callbackId, this.result);
}

void _errorCodeCallback(Pointer<Void> response) {
  response.cast<CBDErrorCode>().check();
}
