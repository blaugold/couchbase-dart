import 'dart:ffi';

import 'package:couchbase/src/lib_couchbase_dart.dart';

final library =
    DynamicLibrary.open('../../native/build/libCouchbaseDart.dylib');
final binding = _initBinding(library);

LibCouchbaseDart _initBinding(DynamicLibrary library) {
  final binding = LibCouchbaseDart(library);

  if (!binding.CBD_Init(NativeApi.initializeApiDLData)) {
    throw StateError(
      'libCouchbaseDart is incompatible with the current Dart VM.',
    );
  }

  return binding;
}
