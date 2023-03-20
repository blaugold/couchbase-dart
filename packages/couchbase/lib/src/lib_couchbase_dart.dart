// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
// ignore_for_file: type=lint
import 'dart:ffi' as ffi;

/// Bindings for libCouchbaseDart
class LibCouchbaseDart {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  LibCouchbaseDart(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  LibCouchbaseDart.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  ffi.Pointer<CBDBuffer> CBDBuffer_Create(
    int size,
  ) {
    return _CBDBuffer_Create(
      size,
    );
  }

  late final _CBDBuffer_CreatePtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<CBDBuffer> Function(ffi.Size)>>(
          'CBDBuffer_Create');
  late final _CBDBuffer_Create =
      _CBDBuffer_CreatePtr.asFunction<ffi.Pointer<CBDBuffer> Function(int)>();

  void CBDBuffer_Destroy(
    ffi.Pointer<CBDBuffer> buffer,
  ) {
    return _CBDBuffer_Destroy(
      buffer,
    );
  }

  late final _CBDBuffer_DestroyPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<CBDBuffer>)>>(
          'CBDBuffer_Destroy');
  late final _CBDBuffer_Destroy =
      _CBDBuffer_DestroyPtr.asFunction<void Function(ffi.Pointer<CBDBuffer>)>();

  ffi.Pointer<CBDErrorCode> CBDErrorCode_Create(
    int code,
    ffi.Pointer<CBDBuffer> message,
  ) {
    return _CBDErrorCode_Create(
      code,
      message,
    );
  }

  late final _CBDErrorCode_CreatePtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<CBDErrorCode> Function(
              ffi.Int, ffi.Pointer<CBDBuffer>)>>('CBDErrorCode_Create');
  late final _CBDErrorCode_Create = _CBDErrorCode_CreatePtr.asFunction<
      ffi.Pointer<CBDErrorCode> Function(int, ffi.Pointer<CBDBuffer>)>();

  void CBDErrorCode_Destroy(
    ffi.Pointer<CBDErrorCode> errorCode,
  ) {
    return _CBDErrorCode_Destroy(
      errorCode,
    );
  }

  late final _CBDErrorCode_DestroyPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<CBDErrorCode>)>>(
          'CBDErrorCode_Destroy');
  late final _CBDErrorCode_Destroy = _CBDErrorCode_DestroyPtr.asFunction<
      void Function(ffi.Pointer<CBDErrorCode>)>();

  ffi.Pointer<CBDClusterCredentials> CBDClusterCredentials_Create() {
    return _CBDClusterCredentials_Create();
  }

  late final _CBDClusterCredentials_CreatePtr = _lookup<
          ffi.NativeFunction<ffi.Pointer<CBDClusterCredentials> Function()>>(
      'CBDClusterCredentials_Create');
  late final _CBDClusterCredentials_Create = _CBDClusterCredentials_CreatePtr
      .asFunction<ffi.Pointer<CBDClusterCredentials> Function()>();

  void CBDClusterCredentials_Destroy(
    ffi.Pointer<CBDClusterCredentials> credentials,
  ) {
    return _CBDClusterCredentials_Destroy(
      credentials,
    );
  }

  late final _CBDClusterCredentials_DestroyPtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(ffi.Pointer<CBDClusterCredentials>)>>(
      'CBDClusterCredentials_Destroy');
  late final _CBDClusterCredentials_Destroy = _CBDClusterCredentials_DestroyPtr
      .asFunction<void Function(ffi.Pointer<CBDClusterCredentials>)>();

  bool CBD_Init(
    ffi.Pointer<ffi.Void> data,
  ) {
    return _CBD_Init(
      data,
    );
  }

  late final _CBD_InitPtr =
      _lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
          'CBD_Init');
  late final _CBD_Init =
      _CBD_InitPtr.asFunction<bool Function(ffi.Pointer<ffi.Void>)>();

  ffi.Pointer<CBDConnection> CBDConnection_Create(
    int port,
  ) {
    return _CBDConnection_Create(
      port,
    );
  }

  late final _CBDConnection_CreatePtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<CBDConnection> Function(
              Dart_Port_DL)>>('CBDConnection_Create');
  late final _CBDConnection_Create = _CBDConnection_CreatePtr.asFunction<
      ffi.Pointer<CBDConnection> Function(int)>();

  void CBDConnection_Destroy(
    ffi.Pointer<CBDConnection> connection,
  ) {
    return _CBDConnection_Destroy(
      connection,
    );
  }

  late final _CBDConnection_DestroyPtr = _lookup<
          ffi.NativeFunction<ffi.Void Function(ffi.Pointer<CBDConnection>)>>(
      'CBDConnection_Destroy');
  late final _CBDConnection_Destroy = _CBDConnection_DestroyPtr.asFunction<
      void Function(ffi.Pointer<CBDConnection>)>();

  void CBDConnection_Open(
    ffi.Pointer<CBDConnection> connection,
    ffi.Pointer<CBDBuffer> connectionString,
    ffi.Pointer<CBDClusterCredentials> credentials,
    int callback,
  ) {
    return _CBDConnection_Open(
      connection,
      connectionString,
      credentials,
      callback,
    );
  }

  late final _CBDConnection_OpenPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Pointer<CBDConnection>,
              ffi.Pointer<CBDBuffer>,
              ffi.Pointer<CBDClusterCredentials>,
              CBD_Callback)>>('CBDConnection_Open');
  late final _CBDConnection_Open = _CBDConnection_OpenPtr.asFunction<
      void Function(ffi.Pointer<CBDConnection>, ffi.Pointer<CBDBuffer>,
          ffi.Pointer<CBDClusterCredentials>, int)>();

  late final addresses = _SymbolAddresses(this);
}

class _SymbolAddresses {
  final LibCouchbaseDart _library;
  _SymbolAddresses(this._library);
  ffi.Pointer<ffi.NativeFunction<ffi.Pointer<CBDBuffer> Function(ffi.Size)>>
      get CBDBuffer_Create => _library._CBDBuffer_CreatePtr;
  ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<CBDBuffer>)>>
      get CBDBuffer_Destroy => _library._CBDBuffer_DestroyPtr;
  ffi.Pointer<
      ffi.NativeFunction<
          ffi.Pointer<CBDErrorCode> Function(
              ffi.Int, ffi.Pointer<CBDBuffer>)>> get CBDErrorCode_Create =>
      _library._CBDErrorCode_CreatePtr;
  ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<CBDErrorCode>)>>
      get CBDErrorCode_Destroy => _library._CBDErrorCode_DestroyPtr;
  ffi.Pointer<ffi.NativeFunction<ffi.Pointer<CBDClusterCredentials> Function()>>
      get CBDClusterCredentials_Create =>
          _library._CBDClusterCredentials_CreatePtr;
  ffi.Pointer<
          ffi.NativeFunction<
              ffi.Void Function(ffi.Pointer<CBDClusterCredentials>)>>
      get CBDClusterCredentials_Destroy =>
          _library._CBDClusterCredentials_DestroyPtr;
  ffi.Pointer<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>
      get CBD_Init => _library._CBD_InitPtr;
  ffi.Pointer<
          ffi.NativeFunction<ffi.Pointer<CBDConnection> Function(Dart_Port_DL)>>
      get CBDConnection_Create => _library._CBDConnection_CreatePtr;
  ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<CBDConnection>)>>
      get CBDConnection_Destroy => _library._CBDConnection_DestroyPtr;
  ffi.Pointer<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Pointer<CBDConnection>,
              ffi.Pointer<CBDBuffer>,
              ffi.Pointer<CBDClusterCredentials>,
              CBD_Callback)>> get CBDConnection_Open =>
      _library._CBDConnection_OpenPtr;
}

class CBDBuffer extends ffi.Struct {
  external ffi.Pointer<ffi.Void> data;

  @ffi.Size()
  external int size;
}

class CBDErrorCode extends ffi.Struct {
  @ffi.Int()
  external int code;

  external ffi.Pointer<CBDBuffer> message;
}

class CBDClusterCredentials extends ffi.Struct {
  external ffi.Pointer<CBDBuffer> username;

  external ffi.Pointer<CBDBuffer> password;
}

class CBDConnection_ extends ffi.Opaque {}

typedef CBDConnection = CBDConnection_;
typedef Dart_Port_DL = ffi.Int64;
typedef CBD_Callback = ffi.Int64;
