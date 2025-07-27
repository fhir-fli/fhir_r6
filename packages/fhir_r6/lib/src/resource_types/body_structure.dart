import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'body_structure.g.dart';

/// [BodyStructure]
/// Record details about an anatomical structure. This resource may be used
/// when a coded concept does not provide the necessary detail needed for
/// the use case.
class BodyStructure extends DomainResource {
  /// Primary constructor for
  /// [BodyStructure]

  const BodyStructure({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.active,
    this.morphology,
    required this.includedStructure,
    this.excludedStructure,
    this.description,
    this.image,
    required this.patient,
  }) : super(
          resourceType: R5ResourceType.BodyStructure,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory BodyStructure.fromJson(
    Map<String, dynamic> json,
  ) {
    return BodyStructure(
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
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      active: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'active',
        FhirBoolean.fromJson,
      ),
      morphology: JsonParser.parseObject<CodeableConcept>(
        json,
        'morphology',
        CodeableConcept.fromJson,
      ),
      includedStructure: (json['includedStructure'] as List<dynamic>)
          .map<BodyStructureIncludedStructure>(
            (v) => BodyStructureIncludedStructure.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      excludedStructure: (json['excludedStructure'] as List<dynamic>?)
          ?.map<BodyStructureIncludedStructure>(
            (v) => BodyStructureIncludedStructure.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
      ),
      image: (json['image'] as List<dynamic>?)
          ?.map<Attachment>(
            (v) => Attachment.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      patient: JsonParser.parseObject<Reference>(
        json,
        'patient',
        Reference.fromJson,
      )!,
    );
  }

  /// Deserialize [BodyStructure]
  /// from a [String] or [YamlMap] object
  factory BodyStructure.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return BodyStructure.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return BodyStructure.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'BodyStructure '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [BodyStructure]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory BodyStructure.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return BodyStructure.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'BodyStructure';

  /// [identifier]
  /// Identifier for this instance of the anatomical structure.
  final List<Identifier>? identifier;

  /// [active]
  /// Whether this body site is in active use.
  final FhirBoolean? active;

  /// [morphology]
  /// The kind of structure being represented by the body structure at
  /// `BodyStructure.location`. This can define both normal and abnormal
  /// morphologies.
  final CodeableConcept? morphology;

  /// [includedStructure]
  /// The anatomical location(s) or region(s) of the specimen, lesion, or
  /// body structure.
  final List<BodyStructureIncludedStructure> includedStructure;

  /// [excludedStructure]
  /// The anatomical location(s) or region(s) not occupied or represented by
  /// the specimen, lesion, or body structure.
  final List<BodyStructureIncludedStructure>? excludedStructure;

  /// [description]
  /// A summary, characterization or explanation of the body structure.
  final FhirMarkdown? description;

  /// [image]
  /// Image or images used to identify a location.
  final List<Attachment>? image;

  /// [patient]
  /// The person to which the body site belongs.
  final Reference patient;
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
      'identifier',
      identifier,
    );
    addField(
      'active',
      active,
    );
    addField(
      'morphology',
      morphology,
    );
    addField(
      'includedStructure',
      includedStructure,
    );
    addField(
      'excludedStructure',
      excludedStructure,
    );
    addField(
      'description',
      description,
    );
    addField(
      'image',
      image,
    );
    addField(
      'patient',
      patient,
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
      'identifier',
      'active',
      'morphology',
      'includedStructure',
      'excludedStructure',
      'description',
      'image',
      'patient',
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
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
        }
      case 'active':
        if (active != null) {
          fields.add(active!);
        }
      case 'morphology':
        if (morphology != null) {
          fields.add(morphology!);
        }
      case 'includedStructure':
        fields.addAll(includedStructure);
      case 'excludedStructure':
        if (excludedStructure != null) {
          fields.addAll(excludedStructure!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'image':
        if (image != null) {
          fields.addAll(image!);
        }
      case 'patient':
        fields.add(patient);
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
  BodyStructure clone() => copyWith();

  /// Copy function for [BodyStructure]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $BodyStructureCopyWith<BodyStructure> get copyWith =>
      _$BodyStructureCopyWithImpl<BodyStructure>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! BodyStructure) {
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
    if (!equalsDeepWithNull(
      meta,
      o.meta,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      implicitRules,
      o.implicitRules,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      language,
      o.language,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      text,
      o.text,
    )) {
      return false;
    }
    if (!listEquals<Resource>(
      contained,
      o.contained,
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
    if (!listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      active,
      o.active,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      morphology,
      o.morphology,
    )) {
      return false;
    }
    if (!listEquals<BodyStructureIncludedStructure>(
      includedStructure,
      o.includedStructure,
    )) {
      return false;
    }
    if (!listEquals<BodyStructureIncludedStructure>(
      excludedStructure,
      o.excludedStructure,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!listEquals<Attachment>(
      image,
      o.image,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      patient,
      o.patient,
    )) {
      return false;
    }
    return true;
  }
}

/// [BodyStructureIncludedStructure]
/// The anatomical location(s) or region(s) of the specimen, lesion, or
/// body structure.
class BodyStructureIncludedStructure extends BackboneElement {
  /// Primary constructor for
  /// [BodyStructureIncludedStructure]

  const BodyStructureIncludedStructure({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.structure,
    this.laterality,
    this.bodyLandmarkOrientation,
    this.spatialReference,
    this.qualifier,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory BodyStructureIncludedStructure.fromJson(
    Map<String, dynamic> json,
  ) {
    return BodyStructureIncludedStructure(
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
      structure: JsonParser.parseObject<CodeableConcept>(
        json,
        'structure',
        CodeableConcept.fromJson,
      )!,
      laterality: JsonParser.parseObject<CodeableConcept>(
        json,
        'laterality',
        CodeableConcept.fromJson,
      ),
      bodyLandmarkOrientation:
          (json['bodyLandmarkOrientation'] as List<dynamic>?)
              ?.map<BodyStructureBodyLandmarkOrientation>(
                (v) => BodyStructureBodyLandmarkOrientation.fromJson(
                  {...v as Map<String, dynamic>},
                ),
              )
              .toList(),
      spatialReference: (json['spatialReference'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      qualifier: (json['qualifier'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [BodyStructureIncludedStructure]
  /// from a [String] or [YamlMap] object
  factory BodyStructureIncludedStructure.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return BodyStructureIncludedStructure.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return BodyStructureIncludedStructure.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'BodyStructureIncludedStructure '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [BodyStructureIncludedStructure]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory BodyStructureIncludedStructure.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return BodyStructureIncludedStructure.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'BodyStructureIncludedStructure';

  /// [structure]
  /// Code that represents the included structure.
  final CodeableConcept structure;

  /// [laterality]
  /// Code that represents the included structure laterality.
  final CodeableConcept? laterality;

  /// [bodyLandmarkOrientation]
  /// Body locations in relation to a specific body landmark (tatoo, scar,
  /// other body structure).
  final List<BodyStructureBodyLandmarkOrientation>? bodyLandmarkOrientation;

  /// [spatialReference]
  /// XY or XYZ-coordinate orientation for structure.
  final List<Reference>? spatialReference;

  /// [qualifier]
  /// Code that represents the included structure qualifier.
  final List<CodeableConcept>? qualifier;
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
      'structure',
      structure,
    );
    addField(
      'laterality',
      laterality,
    );
    addField(
      'bodyLandmarkOrientation',
      bodyLandmarkOrientation,
    );
    addField(
      'spatialReference',
      spatialReference,
    );
    addField(
      'qualifier',
      qualifier,
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
      'structure',
      'laterality',
      'bodyLandmarkOrientation',
      'spatialReference',
      'qualifier',
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
      case 'structure':
        fields.add(structure);
      case 'laterality':
        if (laterality != null) {
          fields.add(laterality!);
        }
      case 'bodyLandmarkOrientation':
        if (bodyLandmarkOrientation != null) {
          fields.addAll(bodyLandmarkOrientation!);
        }
      case 'spatialReference':
        if (spatialReference != null) {
          fields.addAll(spatialReference!);
        }
      case 'qualifier':
        if (qualifier != null) {
          fields.addAll(qualifier!);
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
  BodyStructureIncludedStructure clone() => copyWith();

  /// Copy function for [BodyStructureIncludedStructure]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $BodyStructureIncludedStructureCopyWith<BodyStructureIncludedStructure>
      get copyWith => _$BodyStructureIncludedStructureCopyWithImpl<
              BodyStructureIncludedStructure>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! BodyStructureIncludedStructure) {
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
      structure,
      o.structure,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      laterality,
      o.laterality,
    )) {
      return false;
    }
    if (!listEquals<BodyStructureBodyLandmarkOrientation>(
      bodyLandmarkOrientation,
      o.bodyLandmarkOrientation,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      spatialReference,
      o.spatialReference,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      qualifier,
      o.qualifier,
    )) {
      return false;
    }
    return true;
  }
}

/// [BodyStructureBodyLandmarkOrientation]
/// Body locations in relation to a specific body landmark (tatoo, scar,
/// other body structure).
class BodyStructureBodyLandmarkOrientation extends BackboneElement {
  /// Primary constructor for
  /// [BodyStructureBodyLandmarkOrientation]

  const BodyStructureBodyLandmarkOrientation({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.landmarkDescription,
    this.clockFacePosition,
    this.distanceFromLandmark,
    this.surfaceOrientation,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory BodyStructureBodyLandmarkOrientation.fromJson(
    Map<String, dynamic> json,
  ) {
    return BodyStructureBodyLandmarkOrientation(
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
      landmarkDescription: (json['landmarkDescription'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      clockFacePosition: (json['clockFacePosition'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      distanceFromLandmark: (json['distanceFromLandmark'] as List<dynamic>?)
          ?.map<BodyStructureDistanceFromLandmark>(
            (v) => BodyStructureDistanceFromLandmark.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      surfaceOrientation: (json['surfaceOrientation'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [BodyStructureBodyLandmarkOrientation]
  /// from a [String] or [YamlMap] object
  factory BodyStructureBodyLandmarkOrientation.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return BodyStructureBodyLandmarkOrientation.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return BodyStructureBodyLandmarkOrientation.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'BodyStructureBodyLandmarkOrientation '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [BodyStructureBodyLandmarkOrientation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory BodyStructureBodyLandmarkOrientation.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return BodyStructureBodyLandmarkOrientation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'BodyStructureBodyLandmarkOrientation';

  /// [landmarkDescription]
  /// A description of a landmark on the body used as a reference to locate
  /// something else.
  final List<CodeableConcept>? landmarkDescription;

  /// [clockFacePosition]
  /// An description of the direction away from a landmark something is
  /// located based on a radial clock dial.
  final List<CodeableConcept>? clockFacePosition;

  /// [distanceFromLandmark]
  /// The distance in centimeters a certain observation is made from a body
  /// landmark.
  final List<BodyStructureDistanceFromLandmark>? distanceFromLandmark;

  /// [surfaceOrientation]
  /// The surface area a body location is in relation to a landmark.
  final List<CodeableConcept>? surfaceOrientation;
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
      'landmarkDescription',
      landmarkDescription,
    );
    addField(
      'clockFacePosition',
      clockFacePosition,
    );
    addField(
      'distanceFromLandmark',
      distanceFromLandmark,
    );
    addField(
      'surfaceOrientation',
      surfaceOrientation,
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
      'landmarkDescription',
      'clockFacePosition',
      'distanceFromLandmark',
      'surfaceOrientation',
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
      case 'landmarkDescription':
        if (landmarkDescription != null) {
          fields.addAll(landmarkDescription!);
        }
      case 'clockFacePosition':
        if (clockFacePosition != null) {
          fields.addAll(clockFacePosition!);
        }
      case 'distanceFromLandmark':
        if (distanceFromLandmark != null) {
          fields.addAll(distanceFromLandmark!);
        }
      case 'surfaceOrientation':
        if (surfaceOrientation != null) {
          fields.addAll(surfaceOrientation!);
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
  BodyStructureBodyLandmarkOrientation clone() => copyWith();

  /// Copy function for [BodyStructureBodyLandmarkOrientation]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $BodyStructureBodyLandmarkOrientationCopyWith<
          BodyStructureBodyLandmarkOrientation>
      get copyWith => _$BodyStructureBodyLandmarkOrientationCopyWithImpl<
              BodyStructureBodyLandmarkOrientation>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! BodyStructureBodyLandmarkOrientation) {
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
    if (!listEquals<CodeableConcept>(
      landmarkDescription,
      o.landmarkDescription,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      clockFacePosition,
      o.clockFacePosition,
    )) {
      return false;
    }
    if (!listEquals<BodyStructureDistanceFromLandmark>(
      distanceFromLandmark,
      o.distanceFromLandmark,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      surfaceOrientation,
      o.surfaceOrientation,
    )) {
      return false;
    }
    return true;
  }
}

/// [BodyStructureDistanceFromLandmark]
/// The distance in centimeters a certain observation is made from a body
/// landmark.
class BodyStructureDistanceFromLandmark extends BackboneElement {
  /// Primary constructor for
  /// [BodyStructureDistanceFromLandmark]

  const BodyStructureDistanceFromLandmark({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.device,
    this.value,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory BodyStructureDistanceFromLandmark.fromJson(
    Map<String, dynamic> json,
  ) {
    return BodyStructureDistanceFromLandmark(
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
      device: (json['device'] as List<dynamic>?)
          ?.map<CodeableReference>(
            (v) => CodeableReference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      value: (json['value'] as List<dynamic>?)
          ?.map<Quantity>(
            (v) => Quantity.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [BodyStructureDistanceFromLandmark]
  /// from a [String] or [YamlMap] object
  factory BodyStructureDistanceFromLandmark.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return BodyStructureDistanceFromLandmark.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return BodyStructureDistanceFromLandmark.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'BodyStructureDistanceFromLandmark '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [BodyStructureDistanceFromLandmark]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory BodyStructureDistanceFromLandmark.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return BodyStructureDistanceFromLandmark.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'BodyStructureDistanceFromLandmark';

  /// [device]
  /// An instrument, tool, analyzer, etc. used in the measurement.
  final List<CodeableReference>? device;

  /// [value]
  /// The measured distance (e.g., in cm) from a body landmark.
  final List<Quantity>? value;
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
      'device',
      device,
    );
    addField(
      'value',
      value,
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
      'device',
      'value',
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
      case 'device':
        if (device != null) {
          fields.addAll(device!);
        }
      case 'value':
        if (value != null) {
          fields.addAll(value!);
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
  BodyStructureDistanceFromLandmark clone() => copyWith();

  /// Copy function for [BodyStructureDistanceFromLandmark]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $BodyStructureDistanceFromLandmarkCopyWith<BodyStructureDistanceFromLandmark>
      get copyWith => _$BodyStructureDistanceFromLandmarkCopyWithImpl<
              BodyStructureDistanceFromLandmark>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! BodyStructureDistanceFromLandmark) {
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
    if (!listEquals<CodeableReference>(
      device,
      o.device,
    )) {
      return false;
    }
    if (!listEquals<Quantity>(
      value,
      o.value,
    )) {
      return false;
    }
    return true;
  }
}
