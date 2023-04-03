import 'dart:typed_data';

import 'message.g.dart';

abstract class _LookupInMacro {
  String get path;
}

/// A macro that can be passed to a Lookup-In operation (see [LookupInSpec]) to
/// fetch special values such as the expiry, cas, etc.
///
/// {@category Key-Value}
enum LookupInMacro implements _LookupInMacro {
  /// References the entirety of the document meta-data.
  document(r'$document'),

  /// References the expiry of a document.
  expiry(r'$document.exptime'),

  /// References the cas of a document.
  cas(r'$document.CAS'),

  /// References the sequence number of a document.
  seqNo(r'$document.seqno'),

  /// References the last modified time of a document.
  lastModified(r'$document.last_modified'),

  /// References the size of a document, expressed in bytes.
  valueSizeBytes(r'$document.value_bytes'),

  /// References the revision ID of a document.
  revId(r'$document.revid'),
  ;

  const LookupInMacro(this.path);

  @override
  final String path;
}

enum InternalLookupInMacro implements _LookupInMacro {
  deleted(r'$document.deleted'),
  flags(r'$document.flags'),
  ;

  const InternalLookupInMacro(this.path);

  @override
  final String path;
}

/// A sub-operation to perform within a Lookup-In operation.
///
/// {@category Key-Value}
class LookupInSpec {
  const LookupInSpec._(this._op, this._path, this._flags);

  /// Creates a [LookupInSpec] for fetching a field from the document.
  ///
  /// [path] must be a [String] or [LookupInMacro].
  ///
  /// When [xattr] is `true`, this operation references the extended attribute
  /// data of the document. Otherwise, it references the document body.
  /// Defaults to `false`.
  factory LookupInSpec.get(Object path, {bool? xattr}) {
    if (path == '') {
      return LookupInSpec._create(Opcode.getDoc, path, xattr: xattr);
    }
    return LookupInSpec._create(Opcode.get, path, xattr: xattr);
  }

  /// Creates a [LookupInSpec] for fetching whether a specific field exists in
  /// the document.
  ///
  /// [path] must be a [String] or [LookupInMacro].
  ///
  /// When [xattr] is `true`, this operation references the extended attribute
  /// data of the document. Otherwise, it references the document body.
  /// Defaults to `false`.
  factory LookupInSpec.exists(Object path, {bool? xattr}) =>
      LookupInSpec._create(Opcode.exists, path, xattr: xattr);

  /// Creates a [LookupInSpec] for fetching the number of elements in the array
  /// referenced by [path].
  ///
  /// [path] must be a [String] or [LookupInMacro].
  ///
  /// When [xattr] is `true`, this operation references the extended attribute
  /// data of the document. Otherwise, it references the document body.
  /// Defaults to `false`.
  factory LookupInSpec.count(Object path, {bool? xattr}) =>
      LookupInSpec._create(Opcode.getCount, path, xattr: xattr);

  factory LookupInSpec._create(
    Opcode op,
    Object path, {
    bool? xattr,
  }) {
    final String pathString;
    var flags = 0;

    if (path is _LookupInMacro) {
      pathString = path.path;

      flags |= _pathFlagXattr;
    } else if (path is String) {
      pathString = path;
    } else {
      throw ArgumentError.value(
        path,
        'path',
        'must be a String or LookupInMacro',
      );
    }

    if (xattr ?? false) {
      flags |= _pathFlagXattr;
    }

    return LookupInSpec._(op, pathString, flags);
  }

  // TODO: Get from C++ client through bindings.
  // couchbase::core::impl::subdoc::path_flag_xattr
  static const _pathFlagXattr = 0x0004;

  final Opcode _op;
  final String _path;
  final int _flags;
}

extension LookupInSpecMessageExtension on LookupInSpec {
  ImplSubdocCommand toMessage(int originalIndex) {
    return ImplSubdocCommand(
      opcode: _op,
      path: _path,
      flags: _flags,
      originalIndex: originalIndex,
      value: Uint8List(0),
    );
  }
}
