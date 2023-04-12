import 'dart:convert';
import 'dart:typed_data';

import 'message.g.dart';

// TODO: Get flags from C++ client through bindings.
// See couchbase::core::impl::subdoc
const _pathFlagCreateParents = 1 << 0;
const _pathFlagXattr = 1 << 2;
const _pathFlagExpandMacros = 1 << 4;

abstract class _LookupInMacro {
  String get path;
}

/// A macro that can be passed to a Lookup-In operation (see [LookupInSpec]) to
/// fetch special values such as the expiry, CAS, etc.
///
/// {@category Key-Value}
enum LookupInMacro implements _LookupInMacro {
  /// References the entirety of the document meta-data.
  document(r'$document'),

  /// References the expiry of a document.
  expiry(r'$document.exptime'),

  /// References the CAS of a document.
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

/// A macro that can be passed to a Mutate-In operation (see [MutateInSpec]) to
/// write special values such as the expiry, CAS, etc.
///
/// @category Key-Value
enum MutateInMacro {
  /// References the CAS of a document.
  cas(r'${document.CAS}'),

  /// References the sequence number of a document.
  seqNo(r'${document.seqno}'),

  /// References the crc32 of the value of a document.
  valueCrc32c(r'${document.value_crc32c}'),
  ;

  const MutateInMacro(this._value);

  final String _value;
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
    return LookupInSpec._create(
      path == '' ? Opcode.getDoc : Opcode.get,
      path,
      xattr: xattr,
    );
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

/// A sub-operation to perform within a Mutate-In operation.
///
/// {@category Key-Value}
class MutateInSpec {
  const MutateInSpec._(this._op, this._path, this._flags, this._data);

  /// Creates a [MutateInSpec] for inserting a field into the document.
  ///
  /// This inserts the value of the specified field, or fails if the field
  /// already exists at the specified path.
  ///
  /// {@template MutateInSpec.value}
  /// [value] must be a JSON-serializable value or a [MutateInMacro].
  /// {@endtemplate}
  ///
  /// {@template MutateInSpec.createPath}
  /// When [createPath] is `true`, the path to the field will be created if it
  /// does not already exist. Defaults to `false`.
  /// {@endtemplate}
  ///
  /// {@template MutateInSpec.xattr}
  /// When [xattr] is `true`, this operation references the extended attribute
  /// data of the document. Otherwise, it references the document body.
  /// Defaults to `false`.
  /// {@endtemplate}
  factory MutateInSpec.insert(
    String path,
    Object? value, {
    bool? createPath,
    bool? xattr,
  }) {
    return MutateInSpec._create(
      Opcode.dictAdd,
      path,
      value,
      createPath: createPath,
      xattr: xattr,
    );
  }

  /// Creates a [MutateInSpec] for upserting a field on a document.
  ///
  /// This updates the value of the specified field, or creates the field if it
  /// does not exits.
  ///
  /// {@macro MutateInSpec.value}
  ///
  /// {@macro MutateInSpec.createPath}
  ///
  /// {@macro MutateInSpec.xattr}
  factory MutateInSpec.upsert(
    String path,
    Object? value, {
    bool? createPath,
    bool? xattr,
  }) {
    return MutateInSpec._create(
      path == '' ? Opcode.setDoc : Opcode.dictUpsert,
      path,
      value,
      createPath: createPath,
      xattr: xattr,
    );
  }

  /// Creates a [MutateInSpec] for replacing a field on a document.
  ///
  /// This updates the value of the specified field, failing if the field does
  /// not exits.
  ///
  /// {@macro MutateInSpec.value}
  ///
  /// {@macro MutateInSpec.xattr}
  factory MutateInSpec.replace(
    String path,
    Object? value, {
    bool? xattr,
  }) {
    return MutateInSpec._create(
      Opcode.replace,
      path,
      value,
      xattr: xattr,
    );
  }

  /// Creates a [MutateInSpec] for removing a field from a document.
  ///
  /// {@macro MutateInSpec.xattr}
  factory MutateInSpec.remove(
    String path, {
    bool? xattr,
  }) {
    return MutateInSpec._create(
      path == '' ? Opcode.removeDoc : Opcode.remove,
      path,
      _noValue,
      xattr: xattr,
    );
  }

  /// Creates a [MutateInSpec] for adding values to the end of an array in a
  /// document.
  ///
  /// {@macro MutateInSpec.values}
  /// [values] must be an [Iterable] of JSON-serializable values.
  /// {@endtemplate}
  ///
  /// {@macro MutateInSpec.createPath}
  ///
  /// {@macro MutateInSpec.xattr}
  factory MutateInSpec.arrayAppend(
    String path,
    Iterable<Object?> values, {
    bool? createPath,
    bool? xattr,
  }) {
    return MutateInSpec._create(
      Opcode.arrayPushLast,
      path,
      values,
      createPath: createPath,
      xattr: xattr,
      multipleValues: true,
    );
  }

  /// Creates a [MutateInSpec] for adding values to the beginning of an array in
  /// a document.
  ///
  /// {@macro MutateInSpec.values}
  ///
  /// {@macro MutateInSpec.createPath}
  ///
  /// {@macro MutateInSpec.xattr}
  factory MutateInSpec.arrayPrepend(
    String path,
    Iterable<Object?> values, {
    bool? createPath,
    bool? xattr,
  }) {
    return MutateInSpec._create(
      Opcode.arrayPushFirst,
      path,
      values,
      createPath: createPath,
      xattr: xattr,
      multipleValues: true,
    );
  }

  /// Creates a [MutateInSpec] for inserting values at a specified location in
  /// an array in a document.
  ///
  /// The path should specify a specific index in the array and the new values
  /// are inserted at this location.
  ///
  /// {@macro MutateInSpec.values}
  ///
  /// {@macro MutateInSpec.createPath}
  ///
  /// {@macro MutateInSpec.xattr}
  factory MutateInSpec.arrayInsert(
    String path,
    Iterable<Object?> values, {
    bool? createPath,
    bool? xattr,
  }) {
    return MutateInSpec._create(
      Opcode.arrayInsert,
      path,
      values,
      createPath: createPath,
      xattr: xattr,
      multipleValues: true,
    );
  }

  /// Creates a [MutateInSpec] for adding unique values to an array in a
  /// document.
  ///
  /// This operation will only add values if they do not already exist elsewhere
  /// in the array.
  ///
  /// {@macro MutateInSpec.values}
  ///
  /// {@macro MutateInSpec.createPath}
  ///
  /// {@macro MutateInSpec.xattr}
  factory MutateInSpec.arrayAddUnique(
    String path,
    Iterable<Object?> values, {
    bool? createPath,
    bool? xattr,
  }) {
    return MutateInSpec._create(
      Opcode.arrayAddUnique,
      path,
      values,
      createPath: createPath,
      xattr: xattr,
      multipleValues: true,
    );
  }

  /// Creates a [MutateInSpec] for incrementing the value of a field in a
  /// document.
  ///
  /// {@macro MutateInSpec.createPath}
  ///
  /// {@macro MutateInSpec.xattr}
  factory MutateInSpec.increment(
    String path,
    int delta, {
    bool? createPath,
    bool? xattr,
  }) {
    return MutateInSpec._create(
      Opcode.counter,
      path,
      delta,
      createPath: createPath,
      xattr: xattr,
    );
  }

  /// Creates a [MutateInSpec] for decrementing the value of a field in a
  /// document.
  ///
  /// {@macro MutateInSpec.createPath}
  ///
  /// {@macro MutateInSpec.xattr}
  factory MutateInSpec.decrement(
    String path,
    int delta, {
    bool? createPath,
    bool? xattr,
  }) {
    return MutateInSpec._create(
      Opcode.counter,
      path,
      -delta,
      createPath: createPath,
      xattr: xattr,
    );
  }

  factory MutateInSpec._create(
    Opcode op,
    String path,
    Object? value, {
    bool? createPath,
    bool multipleValues = false,
    bool? xattr,
  }) {
    var flags = 0;

    if (value is MutateInMacro) {
      value = value._value;
      flags |= _pathFlagExpandMacros;
    }

    if (createPath ?? false) {
      flags |= _pathFlagCreateParents;
    }

    if (xattr ?? false) {
      flags |= _pathFlagXattr;
    }

    if (identical(value, _noValue)) {
      value = null;
    } else if (!multipleValues) {
      value = jsonEncode(value);
    } else {
      value = (value! as Iterable<Object?>).map(jsonEncode).join(',');
    }

    return MutateInSpec._(op, path, flags, value);
  }

  static const _noValue = Object();

  final Opcode _op;
  final String _path;
  final int _flags;
  final Object? _data;
}

extension MutateInSpecMessageExtension on MutateInSpec {
  ImplSubdocCommand toMessage(int originalIndex) {
    return ImplSubdocCommand(
      opcode: _op,
      path: _path,
      flags: _flags,
      originalIndex: originalIndex,
      value: _data == null
          ? Uint8List(0)
          : utf8.encode(_data! as String) as Uint8List,
    );
  }
}
