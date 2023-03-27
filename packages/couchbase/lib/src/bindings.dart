// ignore_for_file: public_member_api_docs

import 'dart:ffi';
import 'dart:io';

import 'lib_couchbase_dart.dart';

final bindings = _initBindings(_loadLibrary());

DynamicLibrary _loadLibrary() {
  if (Platform.isMacOS) {
    return DynamicLibrary.open('../../native/build/libCouchbaseDart.dylib');
  } else if (Platform.isLinux) {
    return DynamicLibrary.open('../../native/build/libCouchbaseDart.so');
  } else if (Platform.isWindows) {
    return DynamicLibrary.open('../../native/build/libCouchbaseDart.dll');
  } else {
    throw UnsupportedError('Unsupported platform.');
  }
}

LibCouchbaseDart _initBindings(DynamicLibrary library) {
  final bindings = LibCouchbaseDart(library);

  if (!bindings.CBD_Init(NativeApi.initializeApiDLData)) {
    throw StateError(
      'libCouchbaseDart is incompatible with the current Dart VM.',
    );
  }

  return bindings;
}
