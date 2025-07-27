import 'package:fhir_r6_mapping/fhir_r6_mapping.dart';

/// A utility class to parse JSON fields.
class JsonParser {
  /// Parse a single primitive or enum field.
  static T? parsePrimitive<T>(
    Map<String, dynamic> json,
    String fieldName,
    T Function(Map<String, dynamic>) fromJson,
    String objectPath,
  ) {
    if (json[fieldName] != null || json['_$fieldName'] != null) {
      return fromJson({
        'value': json[fieldName],
        '_value': json['_$fieldName'],
        'objectPath': '$objectPath.$fieldName',
      });
    }
    return null;
  }

  /// Parse a list of primitives or enums.
  static List<T>? parsePrimitiveList<T>(
    Map<String, dynamic> json,
    String fieldName,
    T Function(Map<String, dynamic>) fromJson,
    String objectPath,
  ) {
    final values = json[fieldName] as List<dynamic>?;
    final extensions = json['_$fieldName'] as List<dynamic>?;
    if (values == null && extensions == null) return null;

    return List<T>.generate(
      values?.length ?? extensions!.length,
      (i) => fromJson({
        'value': values?[i],
        '_value': extensions?[i],
        'objectPath': '$objectPath.$fieldName',
      }),
    );
  }

  /// Parse a single complex object.
  static T? parseObject<T>(
    Map<String, dynamic> json,
    String fieldName,
    T Function(Map<String, dynamic>) fromJson,
    String objectPath,
  ) {
    final result = json[fieldName] != null
        ? fromJson(
            (Map<String, dynamic>.from(json[fieldName] as Map<String, dynamic>))
              ..addAll({'objectPath': objectPath}),
          )
        : null;
    return result;
  }

  /// Parse polymorphic fields.
  static T? parsePolymorphic<T>(
    Map<String, dynamic> json,
    Map<String, T Function(Map<String, dynamic>)> typeParsers,
    String objectPath,
  ) {
    for (final entry in typeParsers.entries) {
      final jsonKey = entry.key;
      final parser = entry.value;

      if (json[jsonKey] != null || json['_$jsonKey'] != null) {
        if (json[jsonKey] is Map<String, dynamic>) {
          return parser(
            (Map<String, dynamic>.from(json[jsonKey] as Map<String, dynamic>))
              ..addAll({'objectPath': '$objectPath.$jsonKey'}),
          );
        } else {
          return parser({
            'value': json[jsonKey],
            '_value': json['_$jsonKey'],
            'objectPath': '$objectPath.$jsonKey',
          });
        }
      }
    }
    return null;
  }

  /// Add a single primitive or enum field to a JSON map.
  static void addPrimitive<T extends DataTypeBuilder>(
    Map<String, dynamic> json,
    String key,
    PrimitiveTypeBuilder? field,
  ) {
    if (field != null) {
      final fieldJson = field.toJson();
      json[key] = fieldJson['value'];
      if (fieldJson['_value'] != null) {
        json['_$key'] = fieldJson['_value'];
      }
    }
  }

  /// Add a list of primitives or enums to a JSON map.
  static void addPrimitiveList<T extends DataTypeBuilder>(
    Map<String, dynamic> json,
    String key,
    List<PrimitiveTypeBuilder>? field,
  ) {
    if (field != null && field.isNotEmpty) {
      final fieldJson = field.map((e) => e.toJson()).toList();
      json[key] = fieldJson.map((e) => e['value']).toList();
      if (fieldJson.any((e) => e['_value'] != null)) {
        json['_$key'] = fieldJson.map((e) => e['_value']).toList();
      }
    }
  }

  /// Add a single complex object to a JSON map.
  static void addObject<T extends DataTypeBuilder>(
    Map<String, dynamic> json,
    String key,
    T? field,
  ) {
    if (field != null) {
      json[key] = field.toJson();
    }
  }

  /// Add a list of complex objects to a JSON map.
  static void addList<T extends FhirBaseBuilder>(
    Map<String, dynamic> json,
    String key,
    List<T>? field,
  ) {
    if (field != null && field.isNotEmpty) {
      json[key] = field.map((e) => e.toJson()).toList();
    }
  }

  /// Add polymorphic fields to a JSON map.
  static void addPolymorphic(
    Map<String, dynamic> json,
    String key,
    FhirBaseBuilder? field,
    Map<String, Function> polymorphicTypeMap,
  ) {
    if (field != null) {
      final fieldType = field.fhirType;
      if (polymorphicTypeMap.containsKey(fieldType)) {
        // ignore: avoid_dynamic_calls
        json[key] = polymorphicTypeMap[fieldType]!();
      }
    }
  }
}
