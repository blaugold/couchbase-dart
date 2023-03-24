import 'dart:io';

import 'package:collection/collection.dart';
import 'package:tool/src/bindings_model.dart';

const _generatedDartBindingsFile =
    '../packages/couchbase/lib/src/message.g.dart';

class BindingsGenerator {
  BindingsGenerator({required BindingsModel model}) : _model = model;

  final BindingsModel _model;
  final StringBuffer _buffer = StringBuffer();

  void generate() {
    _generateDartBindings();
  }

  void _generateDartBindings() {
    _generateDartFile(path: _generatedDartBindingsFile, () {
      _writeln('// GENERATED CODE - DO NOT MODIFY BY HAND');
      _writeln("import 'dart:typed_data';");
      _writeln("import 'message_buffer.dart';");
      _writeln("import 'message.dart';");
      _writeln();
      _writeDartEnums();
      _writeDartStructs();
    });
  }

  void _write(Object? text) {
    _buffer.write(text);
  }

  void _writeln([Object? text = '']) {
    _buffer.writeln(text);
  }

  void _generateFile(void Function() fn, {required String path}) {
    _buffer.clear();
    fn();
    File(path).writeAsStringSync(_buffer.toString());
  }

  void _generateDartFile(void Function() fn, {required String path}) {
    _generateFile(fn, path: path);
    _formatDartFile(path);
  }

  void _formatDartFile(String path) {
    Process.runSync(
      'dart',
      ['format', path],
      runInShell: true,
    );
  }

  void _writeDartType(TypeRef type) {
    _write(_resolveDartType(type));
  }

  String _resolveDartType(TypeRef type) {
    if (type.name == 'std::vector' &&
        type.typeArguments?.first.name == 'std::byte') {
      return 'Uint8List';
    }

    switch (type.name) {
      case 'std::monostate':
        return 'Null';
      case 'std::bool':
        return 'bool';
      case 'std::byte':
      case 'std::uint8_t':
      case 'std::int8_t':
      case 'std::uint16_t':
      case 'std::int16_t':
      case 'std::uint32_t':
      case 'std::int32_t':
      case 'std::uint64_t':
      case 'std::int64_t':
      case 'std::size_t':
        return 'int';
      case 'std::float':
      case 'std::double':
        return 'double';
      case 'std::chrono::seconds':
      case 'std::chrono::milliseconds':
      case 'std::chrono::microseconds':
      case 'std::chrono::nanoseconds':
        return 'Duration';
      case 'std::string':
        return 'String';
      case 'std::optional':
        return '${_resolveDartType(type.typeArguments!.first)}?';
      case 'std::vector':
      case 'std::array':
        return 'List<${_resolveDartType(type.typeArguments!.first)}>';
      case 'std::set':
        return 'Set<${_resolveDartType(type.typeArguments!.first)}>';
      case 'std::map':
        return 'Map<${_resolveDartType(type.typeArguments!.first)}, '
            '${_resolveDartType(type.typeArguments!.last)}>';
      case 'std::variant':
        if (type.typeArguments!
            .any((typeArgument) => typeArgument.name == 'std::monostate'))
          return 'Object?';
        else
          return 'Object';
      case 'std::error_code':
        return 'ErrorCode';
      case 'couchbase::core::json_string':
        return 'String';
    }

    final structType =
        _model.structs.firstWhereOrNull((struct) => struct.name == type.name);
    if (structType != null) {
      return structType.dartName;
    }

    final enumType =
        _model.enums.firstWhereOrNull((enumType) => enumType.name == type.name);
    if (enumType != null) {
      return enumType.dartName;
    }

    throw Exception('Unknown type: ${type.name}');
  }

  void _writeValueInDart(TypeRef type, String identifier) {
    if (type.name == 'std::vector' &&
        type.typeArguments?.first.name == 'std::byte') {
      _writeln('buffer.writeData($identifier);');
      return;
    }

    switch (type.name) {
      case 'std::bool':
        _writeln('buffer.writeBool($identifier);');
        return;
      case 'std::byte':
      case 'std::uint8_t':
        _writeln('buffer.writeUInt8($identifier);');
        return;
      case 'std::int8_t':
        _writeln('buffer.writeInt8($identifier);');
        return;
      case 'std::uint16_t':
        _writeln('buffer.writeUInt16($identifier);');
        return;
      case 'std::int16_t':
        _writeln('buffer.writeInt16($identifier);');
        return;
      case 'std::uint32_t':
        _writeln('buffer.writeUInt32($identifier);');
        return;
      case 'std::int32_t':
        _writeln('buffer.writeInt32($identifier);');
        return;
      case 'std::uint64_t':
        _writeln('buffer.writeUInt64($identifier);');
        return;
      case 'std::int64_t':
        _writeln('buffer.writeInt64($identifier);');
        return;
      case 'std::size_t':
        _writeln('buffer.writeUInt64($identifier);');
        return;
      case 'std::float':
        _writeln('buffer.writeFloat($identifier);');
        return;
      case 'std::double':
        _writeln('buffer.writeDouble($identifier);');
        return;
      case 'std::chrono::seconds':
      case 'std::chrono::milliseconds':
      case 'std::chrono::microseconds':
      case 'std::chrono::nanoseconds':
        _writeln('buffer.writeInt64($identifier.inMicroseconds);');
        return;
      case 'std::string':
        _writeln('buffer.writeString($identifier);');
        return;
      case 'std::optional':
        _writeln('buffer.writeBool($identifier != null);');
        _writeln('if ($identifier != null) {');
        _writeValueInDart(type.typeArguments!.first, '$identifier!');
        _writeln('}');
        return;
      case 'std::vector':
        _writeln('buffer.writeUInt64($identifier.length);');
        _writeln('for (final item in $identifier) {');
        _writeValueInDart(type.typeArguments!.first, 'item');
        _writeln('}');
        return;
      case 'std::array':
        _writeln('for (final item in $identifier) {');
        _writeValueInDart(type.typeArguments!.first, 'item');
        _writeln('}');
        return;
      case 'std::set':
        _writeln('buffer.writeUInt64($identifier.length);');
        _writeln('for (final item in $identifier) {');
        _writeValueInDart(type.typeArguments!.first, 'item');
        _writeln('}');
        return;
      case 'std::map':
        _writeln('buffer.writeUInt64($identifier.length);');
        _writeln('for (final entry in $identifier.entries) {');
        _writeValueInDart(type.typeArguments!.first, 'entry.key');
        _writeValueInDart(type.typeArguments!.last, 'entry.value');
        _writeln('}');
        return;
      case 'std::variant':
        var first = true;
        for (final variantType in type.typeArguments!) {
          if (first) {
            first = false;
          } else {
            _writeln('else ');
          }
          _writeln('if ($identifier is ${_resolveDartType(variantType)}) {');
          final variantIndex =
              type.typeArguments!.indexWhere((t) => t.name == variantType.name);
          _writeln('buffer.writeUInt8(${variantIndex});');
          if (variantType.name != 'std::monostate')
            _writeValueInDart(
              variantType,
              '($identifier as ${_resolveDartType(variantType)})',
            );
          _writeln('}');
        }
        _writeln('else {');
        _writeln('throw StateError("Invalid variant type: \$$identifier");');
        _writeln('}');
        return;
      case 'std::error_code':
        _writeln('$identifier.write(buffer);');
        return;
      case 'couchbase::core::json_string':
        _writeln('buffer.writeString($identifier);');
        return;
    }

    final structType =
        _model.structs.firstWhereOrNull((struct) => struct.name == type.name);
    if (structType != null) {
      _writeln('$identifier.write(buffer);');
      return;
    }

    final enumType =
        _model.enums.firstWhereOrNull((enumType) => enumType.name == type.name);
    if (enumType != null) {
      _writeln('$identifier.write(buffer);');
      return;
    }

    throw Exception('Unknown type: ${type.name}');
  }

  void _readValueInDart(TypeRef type) {
    if (type.name == 'std::vector' &&
        type.typeArguments?.first.name == 'std::byte') {
      _write('buffer.readData()');
      return;
    }

    switch (type.name) {
      case 'std::bool':
        _write('buffer.readBool()');
        return;
      case 'std::byte':
      case 'std::uint8_t':
        _write('buffer.readUInt8()');
        return;
      case 'std::int8_t':
        _write('buffer.readInt8()');
        return;
      case 'std::uint16_t':
        _write('buffer.readUInt16()');
        return;
      case 'std::int16_t':
        _write('buffer.readInt16()');
        return;
      case 'std::uint32_t':
        _write('buffer.readUInt32()');
        return;
      case 'std::int32_t':
        _write('buffer.readInt32()');
        return;
      case 'std::uint64_t':
        _write('buffer.readUInt64()');
        return;
      case 'std::int64_t':
        _write('buffer.readInt64()');
        return;
      case 'std::size_t':
        _write('buffer.readUInt64()');
        return;
      case 'std::float':
        _write('buffer.readFloat()');
        return;
      case 'std::double':
        _write('buffer.readDouble()');
        return;
      case 'std::chrono::seconds':
      case 'std::chrono::milliseconds':
      case 'std::chrono::microseconds':
      case 'std::chrono::nanoseconds':
        _write('Duration(microseconds: buffer.readInt64())');
        return;
      case 'std::string':
        _write('buffer.readString()');
        return;
      case 'std::optional':
        _write('buffer.readBool() ? ');
        _readValueInDart(type.typeArguments!.first);
        _write(' : null');
        return;
      case 'std::vector':
        _write('List.generate(buffer.readUInt64(), (_) => ');
        _readValueInDart(type.typeArguments!.first);
        _write(')');
        return;
      case 'std::array':
        _write('List.generate(${type.size}, (_) => ');
        _readValueInDart(type.typeArguments!.first);
        _write(')');
        return;
      case 'std::set':
        _write('Iterable.generate(buffer.readUInt64(), (_) => ');
        _readValueInDart(type.typeArguments!.first);
        _write(').toSet()');
        return;
      case 'std::map':
        _writeln('(() {');
        _write('final map = <');
        _writeDartType(type.typeArguments!.first);
        _write(', ');
        _writeDartType(type.typeArguments!.last);
        _writeln('>{};');
        _writeln('final length = buffer.readUInt64();');
        _writeln('for (var i = 0; i < length; i++) {');
        _write('map[');
        _readValueInDart(type.typeArguments!.first);
        _write('] = ');
        _readValueInDart(type.typeArguments!.last);
        _writeln(';');
        _writeln('}');
        _write('return map;');
        _writeln('})()');
        return;
      case 'std::variant':
        _writeln('(() {');
        _writeln('final variantIndex = buffer.readUInt8();');
        _writeln('switch (variantIndex) {');
        for (final variantType in type.typeArguments!) {
          final variantIndex =
              type.typeArguments!.indexWhere((t) => t.name == variantType.name);
          _writeln('case ${variantIndex}:');
          if (variantType.name != 'std::monostate') {
            _write('return ');
            _readValueInDart(variantType);
          } else {
            _write('return null');
          }
          _writeln(';');
        }
        _writeln('default:');
        _writeln('throw StateError("Invalid variant index: \$variantIndex");');
        _writeln('}');
        _writeln('})()');
        return;
      case 'std::error_code':
        _writeln('ErrorCode.read(buffer)');
        return;
      case 'couchbase::core::json_string':
        _writeln('buffer.readString()');
        return;
    }

    final structType =
        _model.structs.firstWhereOrNull((struct) => struct.name == type.name);
    if (structType != null) {
      _write('${structType.dartName}.read(buffer)');
      return;
    }

    final enumType =
        _model.enums.firstWhereOrNull((enumType) => enumType.name == type.name);
    if (enumType != null) {
      _write('${enumType.dartName}.read(buffer)');
      return;
    }

    throw Exception('Unknown type: ${type.name}');
  }

  void _writeDartEnums() {
    for (final enumType in _model.enums) {
      _writeDartEnum(enumType);
    }
    _writeln();
  }

  void _writeDartEnum(EnumType type) {
    final dartName = type.dartName;

    _writeln('enum ${dartName} {');
    for (final value in type.values) {
      _writeln('  ${value.dartName},');
    }
    _writeln(';');
    _writeln();
    _writeln('  factory $dartName.read(MessageBuffer buffer) {');
    _write('    final value = ');
    _readValueInDart(type.type);
    _writeln(';');
    _writeln('    switch (value) {');
    for (final value in type.values) {
      _writeln('      case ${value.value}: return ${value.dartName};');
    }
    _writeln('      default: throw Exception(\'Unknown value: \$value\');');
    _writeln('    }');
    _writeln('  }');
    _writeln();
    _writeln('  void write(MessageBuffer buffer) {');
    _writeln('    final int value;');
    _writeln('    switch (this) {');
    for (final value in type.values) {
      _writeln('      case ${value.dartName}: value = ${value.value}; break;');
    }
    _writeln('    }');
    _writeValueInDart(type.type, 'value');
    _writeln('  }');
    _writeln('}');
    _writeln();
  }

  void _writeDartStructs() {
    final structs = _model.structs.whereNot(_isIgnoredStruct);
    for (final structType in structs) {
      _writeDartStruct(structType);
    }
    _writeln();
  }

  void _writeDartStruct(StructType type) {
    final fields = type.usedFields;

    _writeln('class ${type.dartName} {');

    // Constructor
    _write('${type.dartName}(');
    if (fields.isNotEmpty) {
      _writeln('{');
      for (final field in fields) {
        _writeln('required this.${field.dartName},');
      }
      _write('}');
    }

    _writeln(');');
    _writeln();

    // Read factory
    _writeln('factory ${type.dartName}.read(MessageBuffer buffer) {');
    _writeln('  return ${type.dartName}(');
    for (final field in fields) {
      _write(field.dartName);
      _write(': ');
      _readValueInDart(field.type);
      _writeln(',');
    }
    _writeln('  );');
    _writeln('}');
    _writeln();

    // Fields
    for (final field in fields) {
      _write('final ');
      _writeDartType(field.type);
      _write(' ');
      _write(field.dartName);
      _writeln(';');
    }
    _writeln();

    // Write method
    _writeln('void write(MessageBuffer buffer) {');
    for (final field in fields) {
      _writeValueInDart(field.type, field.dartName);
    }
    _writeln('}');

    _writeln('}');
  }
}

extension on String {
  String get camelCase {
    final parts = split('_').where((element) => element.isNotEmpty).toList();
    return parts[0] + parts.skip(1).map((part) => part.capitalize).join();
  }

  String get capitalize => substring(0, 1).toUpperCase() + substring(1);
}

extension on EnumType {
  String get dartName => name.split('::').last.camelCase.capitalize;
}

extension on EnumValue {
  String get dartName => name.camelCase;
}

extension on StructType {
  String get dartName => _unprefixedName(name).camelCase.capitalize;

  List<StructField> get usedFields =>
      fields.whereNot((element) => _isIgnoredField(this, element)).toList();
}

extension on StructField {
  String get dartName => name.camelCase;
}

const _customDefinedTypes = [
  'couchbase::core::json_string',
  'couchbase::core::document_id',
  'couchbase::cas',
  'couchbase::mutation_token',
  'couchbase::retry_strategy',
  'couchbase::core::query_context',
];

bool _isIgnoredStruct(StructType type) {
  return _customDefinedTypes.contains(type.name) ||
      type.name.endsWith('::internal');
}

const _structsWithAllowedPrivateField = [
  'couchbase::core::impl::subdoc::command',
  'couchbase::core::range_scan',
];

bool _isIgnoredField(StructType type, StructField field) {
  final name = field.name;
  if (name == 'retries' ||
      name == 'ctx' ||
      name == 'row_callback' ||
      name == 'parent_span' ||
      name == 'retry_strategy' ||
      name == 'internal' ||
      (name.endsWith('_') &&
          !_structsWithAllowedPrivateField.contains(type.name))) {
    return true;
  }

  return false;
}

String _unprefixedName(String name) {
  const basePrefix = 'couchbase::';
  const corePrefix = 'couchbase::core::';
  const opsPrefix = 'couchbase::core::operations::';

  if (name.startsWith(opsPrefix)) {
    name = name.substring(opsPrefix.length);
  } else if (name.startsWith(corePrefix)) {
    name = name.substring(corePrefix.length);
  } else if (name.startsWith(basePrefix)) {
    name = name.substring(basePrefix.length);
  } else {
    throw ArgumentError('unexpected struct name: $name');
  }

  // Replace all namespace separators with underscores.
  name = name.replaceAll('::', '_');
  if (name.contains('_with_legacy_durability')) {
    name = name.replaceAll('_request_', '_');
  }

  return name;
}
