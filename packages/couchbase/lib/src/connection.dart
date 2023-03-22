import 'dart:async';
import 'dart:ffi';
import 'dart:isolate';

import 'package:couchbase/src/basic.dart';

import 'binding.dart';
import 'cluster.dart';
import 'lib_couchbase_dart.dart';
import 'message_buffer.dart';

class Connection implements Finalizable {
  Connection() {
    final callbackPort = ReceivePort();

    _connection =
        binding.CBDConnection_Create(callbackPort.sendPort.nativePort);
    _finalizer.attach(this, _connection.cast(), detach: this);

    _pendingRequestSubscription = callbackPort.listen((message) {
      final requestId = message as int;
      final request = _pendingRequests.remove(requestId);
      if (request == null) {
        throw StateError('Pending request #$requestId not found.');
      }
      request.handleResponse();
    });
  }

  static final _finalizer =
      NativeFinalizer(binding.addresses.CBDConnection_Destroy.cast());

  late final CBDConnection _connection;
  _RequestId _nextRequestId = 0;
  final _pendingRequests = <_RequestId, _PendingRequest>{};
  late final StreamSubscription<void> _pendingRequestSubscription;

  Future<void> open(
    String connectionString,
    NativeClusterCredentials credentials,
  ) async {
    final pendingRequest = _createPendingRequest(_optionalErrorCodeDecoder);
    final request = pendingRequest.request;
    request.writeString(connectionString);
    credentials.writeToBuffer(request);
    request.reset();

    binding.CBDConnection_Open(_connection, request.pointer);

    return pendingRequest.result;
  }

  Future<void> close() async {
    // TODO: Prevent any further calls to this connection.

    await _close();
    await _pendingRequestSubscription.cancel();
    _finalizer.detach(this);
    binding.CBDConnection_Destroy(_connection);
  }

  Future<void> openBucket(String bucketName) async {
    final pendingRequest = _createPendingRequest(_optionalErrorCodeDecoder);
    final request = pendingRequest.request;
    request.writeString(bucketName);
    request.reset();

    binding.CBDConnection_OpenBucket(_connection, request.pointer);

    return pendingRequest.result;
  }

  Future<void> _close() async {
    final pendingRequest = _createPendingRequest((_) {});
    final request = pendingRequest.request;
    request.reset();

    binding.CBDConnection_Close(_connection, request.pointer);

    return pendingRequest.result;
  }

  _PendingRequest<T> _createPendingRequest<T>(
    _ResponseDecoder<T> responseDecoder,
  ) {
    final requestId = _nextRequestId++;
    final responseHandler =
        _PendingRequest(requestId, MessageBuffer(), responseDecoder);
    _pendingRequests[requestId] = responseHandler;
    return responseHandler;
  }
}

typedef _RequestId = int;

typedef _ResponseDecoder<T> = T Function(MessageBuffer response);

class _PendingRequest<T> {
  final MessageBuffer _buffer;
  final _ResponseDecoder<T> _responseDecoder;
  final _completer = Completer<T>.sync();

  MessageBuffer get request => _buffer;

  late final result = _completer.future.withNewStackTrace();

  _PendingRequest(int requestId, this._buffer, this._responseDecoder) {
    // Write the request ID into the buffer which at this point serves as the
    // request.
    _buffer.reset();
    _buffer.writeInt64(requestId);
  }

  void handleResponse() {
    try {
      _completer.complete(_responseDecoder(_buffer));
    } catch (e) {
      _completer.completeError(e);
    }
  }
}

void _optionalErrorCodeDecoder(MessageBuffer response) =>
    response.readOptionalErrorCode();

extension<T> on Future<T> {
  Future<T> withNewStackTrace() async {
    try {
      return await this;
    } catch (e) {
      throw e;
    }
  }
}
