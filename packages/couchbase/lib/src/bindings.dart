import 'dart:ffi';

import 'package:couchbase/src/lib_couchbase_dart.dart';

final library =
    DynamicLibrary.open('../../native/build/libCouchbaseDart.dylib');
final bindings = _initBindings(library);

LibCouchbaseDart _initBindings(DynamicLibrary library) {
  final bindings = LibCouchbaseDart(library);

  if (!bindings.CBD_Init(NativeApi.initializeApiDLData)) {
    throw StateError(
      'libCouchbaseDart is incompatible with the current Dart VM.',
    );
  }

  return bindings;
}
