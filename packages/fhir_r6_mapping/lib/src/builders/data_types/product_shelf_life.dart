import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart'
    show ProductShelfLife, yamlMapToJson, yamlToJson;
import 'package:fhir_r6_mapping/fhir_r6_mapping.dart';
import 'package:yaml/yaml.dart';

/// [ProductShelfLifeBuilder]
/// The shelf-life and storage information for a medicinal product item or
/// container can be described using this class.
class ProductShelfLifeBuilder extends BackboneTypeBuilder {
  /// Primary constructor for
  /// [ProductShelfLifeBuilder]

  ProductShelfLifeBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    PeriodXProductShelfLifeBuilder? periodX,
    FhirDurationBuilder? periodDuration,
    FhirStringBuilder? periodString,
    this.specialPrecautionsForStorage,
    super.disallowExtensions,
    super.objectPath = 'ProductShelfLifeBuilder',
  }) : periodX = periodX ?? periodDuration ?? periodString;

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ProductShelfLifeBuilder.empty() => ProductShelfLifeBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ProductShelfLifeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'ProductShelfLife';
    return ProductShelfLifeBuilder(
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
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      periodX: JsonParser.parsePolymorphic<PeriodXProductShelfLifeBuilder>(
        json,
        {
          'periodDuration': FhirDurationBuilder.fromJson,
          'periodString': FhirStringBuilder.fromJson,
        },
        objectPath,
      ),
      specialPrecautionsForStorage:
          (json['specialPrecautionsForStorage'] as List<dynamic>?)
              ?.map<CodeableConceptBuilder>(
                (v) => CodeableConceptBuilder.fromJson(
                  {
                    ...v as Map<String, dynamic>,
                    'objectPath': '$objectPath.specialPrecautionsForStorage',
                  },
                ),
              )
              .toList(),
    );
  }

  /// Deserialize [ProductShelfLifeBuilder]
  /// from a [String] or [YamlMap] object
  factory ProductShelfLifeBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ProductShelfLifeBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ProductShelfLifeBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ProductShelfLifeBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ProductShelfLifeBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ProductShelfLifeBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ProductShelfLifeBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ProductShelfLife';

  /// [type]
  /// This describes the shelf life, taking into account various scenarios
  /// such as shelf life of the packaged Medicinal Product itself, shelf life
  /// after transformation where necessary and shelf life after the first
  /// opening of a bottle, etc. The shelf life type shall be specified using
  /// an appropriate controlled vocabulary The controlled term and the
  /// controlled term identifier shall be specified.
  CodeableConceptBuilder? type;

  /// [periodX]
  /// The shelf life time period can be specified using a numerical value for
  /// the period of time and its unit of time measurement The unit of
  /// measurement shall be specified in accordance with ISO 11240 and the
  /// resulting terminology The symbol and the symbol identifier shall be
  /// used.
  PeriodXProductShelfLifeBuilder? periodX;

  /// Getter for [periodDuration] as a FhirDurationBuilder
  FhirDurationBuilder? get periodDuration =>
      periodX?.isAs<FhirDurationBuilder>();

  /// Getter for [periodString] as a FhirStringBuilder
  FhirStringBuilder? get periodString => periodX?.isAs<FhirStringBuilder>();

  /// [specialPrecautionsForStorage]
  /// Special precautions for storage, if any, can be specified using an
  /// appropriate controlled vocabulary The controlled term and the
  /// controlled term identifier shall be specified.
  List<CodeableConceptBuilder>? specialPrecautionsForStorage;

  /// Converts a [ProductShelfLifeBuilder]
  /// to [ProductShelfLife]
  @override
  ProductShelfLife build() => ProductShelfLife.fromJson(toJson());

  /// Converts a [ProductShelfLifeBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    addField('modifierExtension', modifierExtension);
    addField('type', type);
    if (periodX != null) {
      final fhirType = periodX!.fhirType;
      addField('period${fhirType.capitalizeFirstLetter()}', periodX);
    }

    addField('specialPrecautionsForStorage', specialPrecautionsForStorage);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'type',
      'periodX',
      'specialPrecautionsForStorage',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
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
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'period':
        if (periodX != null) {
          fields.add(periodX!);
        }
      case 'periodX':
        if (periodX != null) {
          fields.add(periodX!);
        }
      case 'periodDuration':
        if (periodX is FhirDurationBuilder) {
          fields.add(periodX!);
        }
      case 'periodString':
        if (periodX is FhirStringBuilder) {
          fields.add(periodX!);
        }
      case 'specialPrecautionsForStorage':
        if (specialPrecautionsForStorage != null) {
          fields.addAll(specialPrecautionsForStorage!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
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
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'period':
      case 'periodX':
        {
          if (child is PeriodXProductShelfLifeBuilder) {
            periodX = child;
            return;
          } else {
            if (child is FhirDurationBuilder) {
              periodX = child;
              return;
            }
            if (child is FhirStringBuilder) {
              periodX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'periodDuration':
        {
          if (child is FhirDurationBuilder) {
            periodX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'periodString':
        {
          if (child is FhirStringBuilder) {
            periodX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'specialPrecautionsForStorage':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            specialPrecautionsForStorage = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            specialPrecautionsForStorage = [
              ...(specialPrecautionsForStorage ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'period':
      case 'periodX':
        return [
          'FhirDurationBuilder',
          'FhirStringBuilder',
        ];
      case 'periodDuration':
        return ['FhirDurationBuilder'];
      case 'periodString':
        return ['FhirStringBuilder'];
      case 'specialPrecautionsForStorage':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ProductShelfLifeBuilder]
  ///  with a chosen field set to an empty object.
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
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'period':
      case 'periodX':
      case 'periodDuration':
        {
          periodX = FhirDurationBuilder.empty();
          return;
        }
      case 'periodString':
        {
          periodX = FhirStringBuilder.empty();
          return;
        }
      case 'specialPrecautionsForStorage':
        {
          specialPrecautionsForStorage = <CodeableConceptBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ProductShelfLifeBuilder clone() => throw UnimplementedError();
  @override
  ProductShelfLifeBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? type,
    PeriodXProductShelfLifeBuilder? periodX,
    List<CodeableConceptBuilder>? specialPrecautionsForStorage,
    FhirDurationBuilder? periodDuration,
    FhirStringBuilder? periodString,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    final newResult = ProductShelfLifeBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      periodX: periodX ?? periodDuration ?? periodString ?? this.periodX,
      specialPrecautionsForStorage:
          specialPrecautionsForStorage ?? this.specialPrecautionsForStorage,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! ProductShelfLifeBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      periodX,
      o.periodX,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      specialPrecautionsForStorage,
      o.specialPrecautionsForStorage,
    )) {
      return false;
    }
    return true;
  }
}
