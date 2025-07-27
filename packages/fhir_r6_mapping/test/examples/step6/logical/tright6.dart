import 'package:collection/collection.dart';
import 'package:fhir_r5/fhir_r5.dart'
    show Element, FhirBase, FhirExtension, FhirInteger, FhirString;
import 'package:fhir_r5_mapping/fhir_r5_mapping.dart';

/// [TRight6]
/// TRight definition
class TRight6 extends Element {
  const TRight6({
    super.id,
    super.extension_,
    this.a23,
    super.disallowExtensions,
  });

  factory TRight6.empty() => const TRight6();

  /// FromJson Factory Constructor
  factory TRight6.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TRight6';
    return TRight6(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      a23: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'a23',
        FhirInteger.fromJson,
        '$objectPath.a23',
      ),
    );
  }

  /// [a23]
  /// TRight definition
  final FhirInteger? a23;

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{'resourceType': 'TRight'};
    if (id != null) json['id'] = id!.valueString;
    if (extension_ != null) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }
    if (a23 != null) {
      json['a23'] = a23!.valueInt;
    }
    return json;
  }

  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! TRight6) return false;
    return id == o.id &&
        const DeepCollectionEquality().equals(extension_, o.extension_) &&
        a23 == o.a23;
  }
}

/// Extension to convert [TRight6] to a Builder
extension BuilderTRight6 on TRight6 {
  /// Converts [TRight6] to a [TRight6Builder]
  TRight6Builder get toBuilder => TRight6Builder.fromJson(toJson());
}

/// [TRight6Builder]
/// TRight definition - builder version for mutability
class TRight6Builder extends ElementBuilder {
  /// Constructor for TRight6Builder
  TRight6Builder({
    super.id,
    super.extension_,
    this.a23,
    super.disallowExtensions,
    super.objectPath = 'TRight6Builder',
  });

  /// An empty constructor for partial usage
  factory TRight6Builder.empty() => TRight6Builder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TRight6Builder.fromJson(Map<String, dynamic> json) {
    final objectPath = json['resourceType'] as String? ?? 'TRight6';
    return TRight6Builder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      a23: JsonParser.parsePrimitive<FhirIntegerBuilder>(
        json,
        'a23',
        FhirIntegerBuilder.fromJson,
        '$objectPath.a23',
      ),
    );
  }

  /// [a23]
  /// TRight definition
  FhirIntegerBuilder? a23;

  @override
  String get fhirType => 'TRight6';

  /// converts a [TRight6Builder]
  /// to [TRight6]
  @override
  TRight6 build() => TRight6.fromJson(toJson());

  @override
  TRight6Builder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    FhirIntegerBuilder? a23,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return TRight6Builder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      a23: a23 ?? this.a23,
      objectPath: newObjectPath,
    );
  }

  @override
  List<String> listChildrenNames() => ['id', 'extension', 'a23'];

  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'a23':
        if (a23 != null) {
          fields.add(a23!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid field name: $fieldName');
        }
    }
    return fields;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'a23':
        {
          if (child is FhirIntegerBuilder) {
            a23 = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types, first parse to num then pass the
              // number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirIntegerBuilder.tryParse(numValue);
                if (converted != null) {
                  a23 = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  @override
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Multiple values found for $name');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'a23':
        return ['FhirIntegerBuilder'];
      default:
        return <String>[];
    }
  }

  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'a23':
        {
          a23 = FhirIntegerBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{'resourceType': 'TRight'};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('a23', a23);
    return json;
  }

  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! TRight6Builder) return false;
    return id == o.id &&
        const DeepCollectionEquality().equals(extension_, o.extension_) &&
        a23 == o.a23;
  }

  @override
  TRight6Builder clone() => copyWith();
}
