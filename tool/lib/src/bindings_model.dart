// ignore_for_file: public_member_api_docs

import 'dart:convert';
import 'dart:io';

typedef JsonMap = Map<String, Object?>;

class TypeRef {
  const TypeRef({
    required this.name,
    required this.typeArguments,
    required this.size,
    required this.comparator,
  });

  factory TypeRef.fromJson(JsonMap json) {
    _warnOfUnknownFields(json, ['name', 'of', 'to', 'size', 'comparator']);

    final rawTypeArguments = json['of'];

    final List<TypeRef>? typeArguments;
    if (rawTypeArguments != null) {
      if (rawTypeArguments is List<Object?>) {
        typeArguments = rawTypeArguments
            .map((json) => TypeRef.fromJson(json! as JsonMap))
            .toList();
      } else {
        typeArguments = [TypeRef.fromJson(rawTypeArguments as JsonMap)];
      }
    } else {
      typeArguments = null;
    }

    final rawToTypeArgument = json['to'];
    if (rawToTypeArgument != null) {
      if (typeArguments == null) {
        throw Exception('Cannot have "to" without "of" in type.');
      }

      typeArguments.add(TypeRef.fromJson(rawToTypeArgument as JsonMap));
    }

    return TypeRef(
      name: json['name']! as String,
      typeArguments: typeArguments,
      size: json['size']! as int?,
      comparator: json['comparator'] != null
          ? TypeRef.fromJson(json['comparator']! as JsonMap)
          : null,
    );
  }

  final String name;
  final List<TypeRef>? typeArguments;
  final int? size;
  final TypeRef? comparator;
}

class StructType {
  const StructType({
    required this.name,
    required this.fields,
  });
  factory StructType.fromJson(JsonMap json) {
    _warnOfUnknownFields(json, ['name', 'fields']);

    return StructType(
      name: json['name']! as String,
      fields: (json['fields']! as List<Object?>)
          .map((json) => StructField.fromJson(json! as JsonMap))
          .toList(),
    );
  }
  final String name;
  final List<StructField> fields;
}

class StructField {
  const StructField({
    required this.name,
    required this.type,
  });
  factory StructField.fromJson(JsonMap json) {
    _warnOfUnknownFields(json, ['name', 'type']);

    return StructField(
      name: json['name']! as String,
      type: TypeRef.fromJson(json['type']! as JsonMap),
    );
  }
  final String name;
  final TypeRef type;
}

class EnumType {
  const EnumType({
    required this.name,
    required this.type,
    required this.values,
  });
  factory EnumType.fromJson(JsonMap json) {
    _warnOfUnknownFields(json, ['name', 'type', 'values']);

    return EnumType(
      name: json['name']! as String,
      type: TypeRef.fromJson(json['type']! as JsonMap),
      values: (json['values']! as List<Object?>)
          .map((json) => EnumValue.fromJson(json! as JsonMap))
          .toList(),
    );
  }
  final String name;
  final TypeRef type;
  final List<EnumValue> values;
}

class EnumValue {
  const EnumValue({
    required this.name,
    required this.value,
  });
  factory EnumValue.fromJson(JsonMap json) {
    _warnOfUnknownFields(json, ['name', 'value']);

    return EnumValue(
      name: json['name']! as String,
      value: json['value']! as int,
    );
  }
  final String name;
  final int value;
}

class BindingsModel {
  const BindingsModel({
    required this.structs,
    required this.enums,
  });
  factory BindingsModel.fromFile(String path) {
    return BindingsModel.fromJson(
      jsonDecode(File(path).readAsStringSync()) as JsonMap,
    );
  }

  factory BindingsModel.fromJson(JsonMap json) {
    _warnOfUnknownFields(json, ['op_structs', 'op_enums']);

    return BindingsModel(
      structs: (json['op_structs']! as List<Object?>)
          .map((json) => StructType.fromJson(json! as JsonMap))
          .toList(),
      enums: (json['op_enums']! as List<Object?>)
          .map((json) => EnumType.fromJson(json! as JsonMap))
          .toList(),
    );
  }
  final List<StructType> structs;
  final List<EnumType> enums;
}

void _warnOfUnknownFields(JsonMap json, List<String> knownFields) {
  for (final entry in json.entries) {
    if (!knownFields.contains(entry.key)) {
      // ignore: avoid_print
      print('Unknown field: ${entry.key}: ${entry.value}');
    }
  }
}
