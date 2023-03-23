import 'dart:convert';
import 'dart:io';

typedef JsonMap = Map<String, Object?>;

class TypeRef {
  final String name;
  final List<TypeRef>? typeArguments;
  final int? size;
  final TypeRef? comparator;

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
            .map((json) => TypeRef.fromJson(json as JsonMap))
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
      name: json['name'] as String,
      typeArguments: typeArguments,
      size: json['size'] as int?,
      comparator: json['comparator'] != null
          ? TypeRef.fromJson(json['comparator'] as JsonMap)
          : null,
    );
  }
}

class StructType {
  final String name;
  final List<StructField> fields;

  const StructType({
    required this.name,
    required this.fields,
  });

  factory StructType.fromJson(JsonMap json) {
    _warnOfUnknownFields(json, ['name', 'fields']);

    return StructType(
      name: json['name'] as String,
      fields: (json['fields'] as List<Object?>)
          .map((json) => StructField.fromJson(json as JsonMap))
          .toList(),
    );
  }
}

class StructField {
  final String name;
  final TypeRef type;

  const StructField({
    required this.name,
    required this.type,
  });

  factory StructField.fromJson(JsonMap json) {
    _warnOfUnknownFields(json, ['name', 'type']);

    return StructField(
      name: json['name'] as String,
      type: TypeRef.fromJson(json['type'] as JsonMap),
    );
  }
}

class EnumType {
  final String name;
  final TypeRef type;
  final List<EnumValue> values;

  const EnumType({
    required this.name,
    required this.type,
    required this.values,
  });

  factory EnumType.fromJson(JsonMap json) {
    _warnOfUnknownFields(json, ['name', 'type', 'values']);

    return EnumType(
      name: json['name'] as String,
      type: TypeRef.fromJson(json['type'] as JsonMap),
      values: (json['values'] as List<Object?>)
          .map((json) => EnumValue.fromJson(json as JsonMap))
          .toList(),
    );
  }
}

class EnumValue {
  final String name;
  final int value;

  const EnumValue({
    required this.name,
    required this.value,
  });

  factory EnumValue.fromJson(JsonMap json) {
    _warnOfUnknownFields(json, ['name', 'value']);

    return EnumValue(
      name: json['name'] as String,
      value: json['value'] as int,
    );
  }
}

class BindingsModel {
  final List<StructType> structs;
  final List<EnumType> enums;

  const BindingsModel({
    required this.structs,
    required this.enums,
  });

  factory BindingsModel.fromJson(JsonMap json) {
    _warnOfUnknownFields(json, ['op_structs', 'op_enums']);

    return BindingsModel(
      structs: (json['op_structs'] as List<Object?>)
          .map((json) => StructType.fromJson(json as JsonMap))
          .toList(),
      enums: (json['op_enums'] as List<Object?>)
          .map((json) => EnumType.fromJson(json as JsonMap))
          .toList(),
    );
  }

  factory BindingsModel.fromFile(String path) {
    return BindingsModel.fromJson(
      jsonDecode(File(path).readAsStringSync()) as JsonMap,
    );
  }
}

void _warnOfUnknownFields(JsonMap json, List<String> knownFields) {
  for (final entry in json.entries) {
    if (!knownFields.contains(entry.key)) {
      print('Unknown field: ${entry.key}: ${entry.value}');
    }
  }
}
