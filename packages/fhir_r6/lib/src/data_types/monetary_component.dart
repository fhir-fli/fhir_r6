import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'monetary_component.g.dart';

/// [MonetaryComponent]
/// Availability data for an {item}.
class MonetaryComponent extends DataType {
  /// Primary constructor for
  /// [MonetaryComponent]

  const MonetaryComponent({
    super.id,
    super.extension_,
    required this.type,
    this.code,
    this.factor,
    this.amount,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MonetaryComponent.fromJson(
    Map<String, dynamic> json,
  ) {
    return MonetaryComponent(
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
      type: JsonParser.parsePrimitive<PriceComponentType>(
        json,
        'type',
        PriceComponentType.fromJson,
      )!,
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
      ),
      factor: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'factor',
        FhirDecimal.fromJson,
      ),
      amount: JsonParser.parseObject<Money>(
        json,
        'amount',
        Money.fromJson,
      ),
    );
  }

  /// Deserialize [MonetaryComponent]
  /// from a [String] or [YamlMap] object
  factory MonetaryComponent.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MonetaryComponent.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MonetaryComponent.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MonetaryComponent '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MonetaryComponent]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MonetaryComponent.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MonetaryComponent.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MonetaryComponent';

  /// [type]
  /// base | surcharge | deduction | discount | tax | informational.
  final PriceComponentType type;

  /// [code]
  /// Codes may be used to differentiate between kinds of taxes, surcharges,
  /// discounts etc.
  final CodeableConcept? code;

  /// [factor]
  /// Factor used for calculating this component.
  final FhirDecimal? factor;

  /// [amount]
  /// Explicit value amount to be used.
  final Money? amount;
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
      'type',
      type,
    );
    addField(
      'code',
      code,
    );
    addField(
      'factor',
      factor,
    );
    addField(
      'amount',
      amount,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'type',
      'code',
      'factor',
      'amount',
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
      case 'type':
        fields.add(type);
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'factor':
        if (factor != null) {
          fields.add(factor!);
        }
      case 'amount':
        if (amount != null) {
          fields.add(amount!);
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
  MonetaryComponent clone() => copyWith();

  /// Copy function for [MonetaryComponent]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MonetaryComponentCopyWith<MonetaryComponent> get copyWith =>
      _$MonetaryComponentCopyWithImpl<MonetaryComponent>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MonetaryComponent) {
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
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      code,
      o.code,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      factor,
      o.factor,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      amount,
      o.amount,
    )) {
      return false;
    }
    return true;
  }
}
