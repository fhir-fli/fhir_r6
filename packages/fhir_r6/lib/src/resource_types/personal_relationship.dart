import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'personal_relationship.g.dart';

/// [PersonalRelationship]
/// The details of a direct relationship between two individuals. It does
/// not contain information about the individuals themselves, just the
/// relationship itself.
class PersonalRelationship extends DomainResource {
  /// Primary constructor for
  /// [PersonalRelationship]

  const PersonalRelationship({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    required this.source,
    required this.relationshipType,
    required this.target,
    this.period,
    this.confidence,
    this.asserter,
    this.group,
  }) : super(
          resourceType: R6ResourceType.PersonalRelationship,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PersonalRelationship.fromJson(
    Map<String, dynamic> json,
  ) {
    return PersonalRelationship(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
      ),
      language: JsonParser.parsePrimitive<AllLanguages>(
        json,
        'language',
        AllLanguages.fromJson,
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
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
      source: JsonParser.parseObject<Reference>(
        json,
        'source',
        Reference.fromJson,
      )!,
      relationshipType: JsonParser.parseObject<CodeableConcept>(
        json,
        'relationshipType',
        CodeableConcept.fromJson,
      )!,
      target: JsonParser.parseObject<Reference>(
        json,
        'target',
        Reference.fromJson,
      )!,
      period: (json['period'] as List<dynamic>?)
          ?.map<Period>(
            (v) => Period.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      confidence: JsonParser.parseObject<CodeableConcept>(
        json,
        'confidence',
        CodeableConcept.fromJson,
      ),
      asserter: JsonParser.parseObject<Reference>(
        json,
        'asserter',
        Reference.fromJson,
      ),
      group: (json['group'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [PersonalRelationship]
  /// from a [String] or [YamlMap] object
  factory PersonalRelationship.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return PersonalRelationship.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return PersonalRelationship.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'PersonalRelationship '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [PersonalRelationship]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PersonalRelationship.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return PersonalRelationship.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'PersonalRelationship';

  /// [source]
  /// The source is the individual that is described by the relationshipType.
  /// In human language, you would say that `source` is the `relationship` of
  /// `target`.
  final Reference source;

  /// [relationshipType]
  /// The relationship the source has with the target.
  final CodeableConcept relationshipType;

  /// [target]
  /// The `target` is the individual to which the `source` is related. In
  /// human language, you would say that **source** is the
  /// **relationshipType** of **target**.
  final Reference target;

  /// [period]
  /// The period of time during which this relationship is or was active. If
  /// there are no dates defined, then the interval is unknown.
  final List<Period>? period;

  /// [confidence]
  /// A coded representation of the confidence in the validity of the
  /// relationship.
  final CodeableConcept? confidence;

  /// [asserter]
  /// The asserter of the relationship. Typically is the source of the
  /// relationship information. (The relationship was reported by ...).
  final Reference? asserter;

  /// [group]
  /// Some relationships are applicable within the context of a specific
  /// group. Such as a caregiver within a specific household.
  final List<Reference>? group;
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

    json['resourceType'] = resourceType.toJson();
    addField(
      'id',
      id,
    );
    addField(
      'meta',
      meta,
    );
    addField(
      'implicitRules',
      implicitRules,
    );
    addField(
      'language',
      language,
    );
    addField(
      'text',
      text,
    );
    addField(
      'contained',
      contained,
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
      'source',
      source,
    );
    addField(
      'relationshipType',
      relationshipType,
    );
    addField(
      'target',
      target,
    );
    addField(
      'period',
      period,
    );
    addField(
      'confidence',
      confidence,
    );
    addField(
      'asserter',
      asserter,
    );
    addField(
      'group',
      group,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'meta',
      'implicitRules',
      'language',
      'text',
      'contained',
      'extension',
      'modifierExtension',
      'source',
      'relationshipType',
      'target',
      'period',
      'confidence',
      'asserter',
      'group',
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
      case 'meta':
        if (meta != null) {
          fields.add(meta!);
        }
      case 'implicitRules':
        if (implicitRules != null) {
          fields.add(implicitRules!);
        }
      case 'language':
        if (language != null) {
          fields.add(language!);
        }
      case 'text':
        if (text != null) {
          fields.add(text!);
        }
      case 'contained':
        if (contained != null) {
          fields.addAll(contained!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'source':
        fields.add(source);
      case 'relationshipType':
        fields.add(relationshipType);
      case 'target':
        fields.add(target);
      case 'period':
        if (period != null) {
          fields.addAll(period!);
        }
      case 'confidence':
        if (confidence != null) {
          fields.add(confidence!);
        }
      case 'asserter':
        if (asserter != null) {
          fields.add(asserter!);
        }
      case 'group':
        if (group != null) {
          fields.addAll(group!);
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
  PersonalRelationship clone() => copyWith();

  /// Copy function for [PersonalRelationship]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $PersonalRelationshipCopyWith<PersonalRelationship> get copyWith =>
      _$PersonalRelationshipCopyWithImpl<PersonalRelationship>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! PersonalRelationship) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      meta,
      o.meta,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      implicitRules,
      o.implicitRules,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      language,
      o.language,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      text,
      o.text,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Resource>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      source,
      o.source,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      relationshipType,
      o.relationshipType,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      target,
      o.target,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Period>(
      period,
      o.period,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      confidence,
      o.confidence,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      asserter,
      o.asserter,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Reference>(
      group,
      o.group,
    )) {
      return false;
    }
    return true;
  }
}
