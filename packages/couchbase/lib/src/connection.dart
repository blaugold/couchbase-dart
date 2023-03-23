import 'dart:async';
import 'dart:ffi';
import 'dart:isolate';

import 'package:couchbase/src/basic.dart';

import 'bindings.dart';
import 'cluster.dart';
import 'lib_couchbase_dart.dart';
import 'message_buffer.dart';

class Connection implements Finalizable {
  Connection() {
    final callbackPort = ReceivePort();

    _connection =
        bindings.CBDConnection_Create(callbackPort.sendPort.nativePort);
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
      NativeFinalizer(bindings.addresses.CBDConnection_Destroy.cast());

  late final CBDConnection _connection;
  _RequestId _nextRequestId = 0;
  final _pendingRequests = <_RequestId, _PendingRequest>{};
  late final StreamSubscription<void> _pendingRequestSubscription;

  Future<void> open(
    String connectionString,
    NativeClusterCredentials credentials,
  ) {
    return _makeRequest(
      (request) {
        request.writeString(connectionString);
        credentials.write(request);
      },
      _optionalErrorCodeDecoder,
      bindings.CBDConnection_Open,
    );
  }

  Future<void> close() async {
    // TODO: Prevent any further calls to this connection.

    await _close();
    await _pendingRequestSubscription.cancel();
    _finalizer.detach(this);
    bindings.CBDConnection_Destroy(_connection);
  }

  Future<void> openBucket(String bucketName) {
    return _makeRequest(
      (request) => request.writeString(bucketName),
      _optionalErrorCodeDecoder,
      bindings.CBDConnection_OpenBucket,
    );
  }

  Future<void> _close() {
    return _makeRequest(
      (_) {},
      (_) {},
      bindings.CBDConnection_Close,
    );
  }

  Future<T> _makeRequest<T>(
    _RequestWriter requestWriter,
    _ResponseDecoder<T> responseDecoder,
    void Function(CBDConnection, CBDMessageBuffer) nativeCall,
  ) {
    final requestId = _nextRequestId++;
    final responseHandler = _PendingRequest(
      requestId,
      // TODO: Reuse buffers.
      MessageBuffer(),
      requestWriter,
      responseDecoder,
    );
    _pendingRequests[requestId] = responseHandler;

    nativeCall(_connection, responseHandler.request.pointer);

    return responseHandler.result;
  }
}

typedef _RequestId = int;

typedef _RequestWriter = void Function(MessageBuffer request);
typedef _ResponseDecoder<T> = T Function(MessageBuffer response);

class _PendingRequest<T> {
  final MessageBuffer _buffer;
  final _ResponseDecoder<T> _responseDecoder;
  final _completer = Completer<T>.sync();

  MessageBuffer get request => _buffer;

  late final result = _completer.future.withNewStackTrace();

  _PendingRequest(int requestId, this._buffer, _RequestWriter requestWriter,
      this._responseDecoder) {
    // Write the request ID into the buffer which at this point serves as the
    // request.
    _buffer.reset();
    _buffer.writeInt64(requestId);
    requestWriter(_buffer);
    _buffer.reset();
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
