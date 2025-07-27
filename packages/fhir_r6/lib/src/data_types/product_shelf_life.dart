import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'product_shelf_life.g.dart';

/// [ProductShelfLife]
/// The shelf-life and storage information for a medicinal product item or
/// container can be described using this class.
class ProductShelfLife extends BackboneType {
  /// Primary constructor for
  /// [ProductShelfLife]

  const ProductShelfLife({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    PeriodXProductShelfLife? periodX,
    FhirDuration? periodDuration,
    FhirString? periodString,
    this.specialPrecautionsForStorage,
    super.disallowExtensions,
  }) : periodX = periodX ?? periodDuration ?? periodString;

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ProductShelfLife.fromJson(
    Map<String, dynamic> json,
  ) {
    return ProductShelfLife(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
      periodX: JsonParser.parsePolymorphic<PeriodXProductShelfLife>(
        json,
        {
          'periodDuration': FhirDuration.fromJson,
          'periodString': FhirString.fromJson,
        },
      ),
      specialPrecautionsForStorage:
          (json['specialPrecautionsForStorage'] as List<dynamic>?)
              ?.map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  {...v as Map<String, dynamic>},
                ),
              )
              .toList(),
    );
  }

  /// Deserialize [ProductShelfLife]
  /// from a [String] or [YamlMap] object
  factory ProductShelfLife.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ProductShelfLife.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ProductShelfLife.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ProductShelfLife '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ProductShelfLife]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ProductShelfLife.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ProductShelfLife.fromJson(json);
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
  final CodeableConcept? type;

  /// [periodX]
  /// The shelf life time period can be specified using a numerical value for
  /// the period of time and its unit of time measurement The unit of
  /// measurement shall be specified in accordance with ISO 11240 and the
  /// resulting terminology The symbol and the symbol identifier shall be
  /// used.
  final PeriodXProductShelfLife? periodX;

  /// Getter for [periodDuration] as a FhirDuration
  FhirDuration? get periodDuration => periodX?.isAs<FhirDuration>();

  /// Getter for [periodString] as a FhirString
  FhirString? get periodString => periodX?.isAs<FhirString>();

  /// [specialPrecautionsForStorage]
  /// Special precautions for storage, if any, can be specified using an
  /// appropriate controlled vocabulary The controlled term and the
  /// controlled term identifier shall be specified.
  final List<CodeableConcept>? specialPrecautionsForStorage;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          final hasAnyValues = tempList.any((v) => v != null);
          if (hasAnyValues) {
            json[key] = tempList;
          }
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'type',
      type,
    );
    if (periodX != null) {
      final fhirType = periodX!.fhirType;
      addField(
        'period${fhirType.capitalize()}',
        periodX,
      );
    }

    addField(
      'specialPrecautionsForStorage',
      specialPrecautionsForStorage,
    );
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
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
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
        fields.add(periodX!);
      case 'periodX':
        fields.add(periodX!);
      case 'periodDuration':
        if (periodX is FhirDuration) {
          fields.add(periodX!);
        }
      case 'periodString':
        if (periodX is FhirString) {
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  ProductShelfLife clone() => copyWith();

  /// Copy function for [ProductShelfLife]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ProductShelfLifeCopyWith<ProductShelfLife> get copyWith =>
      _$ProductShelfLifeCopyWithImpl<ProductShelfLife>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ProductShelfLife) {
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
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
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
    if (!listEquals<CodeableConcept>(
      specialPrecautionsForStorage,
      o.specialPrecautionsForStorage,
    )) {
      return false;
    }
    return true;
  }
}
