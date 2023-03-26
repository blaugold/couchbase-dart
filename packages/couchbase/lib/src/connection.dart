import 'dart:async';
import 'dart:ffi';
import 'dart:isolate';

import 'bindings.dart';
import 'lib_couchbase_dart.dart';
import 'message.g.dart';
import 'message_basic.dart';
import 'message_buffer.dart';
import 'message_errors.dart';

part 'connection.g.dart';

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
    ClusterCredentials credentials,
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
    _NativeRequestHandler nativeRequestHandler,
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

    nativeRequestHandler(_connection, responseHandler.request.pointer);

    return responseHandler.result;
  }

  Future<T> _executeOperation<T>(
    _RequestWriter requestWriter,
    _ResponseDecoder<Object> errorDecoder,
    _ResponseDecoder<T> responseDecoder,
    _NativeRequestHandler nativeRequestHandler,
  ) {
    return _makeRequest(
      requestWriter,
      (response) {
        if (response.readBool()) {
          throw errorDecoder(response);
        }
        return responseDecoder(response);
      },
      nativeRequestHandler,
    );
  }
}

typedef _RequestId = int;

typedef _RequestWriter = void Function(MessageBuffer request);
typedef _ResponseDecoder<T> = T Function(MessageBuffer response);

typedef _NativeRequestHandler = void Function(CBDConnection, CBDMessageBuffer);

class _PendingRequest<T> {
  final MessageBuffer _buffer;
  final _ResponseDecoder<T> _responseDecoder;
  final _completer = Completer<void>.sync();

  MessageBuffer get request => _buffer;

  late final Future<T> result;

  _PendingRequest(
    int requestId,
    this._buffer,
    _RequestWriter requestWriter,
    this._responseDecoder,
  ) {
    // Write the request ID into the buffer which at this point serves as the
    // request.
    _buffer.reset();
    _buffer.writeInt64(requestId);
    requestWriter(_buffer);
    _buffer.reset();

    result = Future.sync(() async {
      await _completer.future;
      return _responseDecoder(_buffer);
    });
  }

  void handleResponse() => _completer.complete();
}

void _optionalErrorCodeDecoder(MessageBuffer response) =>
    response.readOptionalErrorCode();

extension on MessageBuffer {
  void readOptionalErrorCode() {
    if (!readBool()) {
      return;
    }

    throw ErrorCode.read(this);
  }
}
