import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'molecular_definition.g.dart';

/// [MolecularDefinition]
/// Definitional content for a molecular entity, such as a nucleotide or
/// protein sequence.
class MolecularDefinition extends DomainResource {
  /// Primary constructor for
  /// [MolecularDefinition]

  const MolecularDefinition({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.description,
    this.moleculeType,
    this.type,
    this.topology,
    this.member,
    this.location,
    this.representation,
  }) : super(
          resourceType: R6ResourceType.MolecularDefinition,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularDefinition.fromJson(
    Map<String, dynamic> json,
  ) {
    return MolecularDefinition(
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
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
      ),
      moleculeType: JsonParser.parseObject<CodeableConcept>(
        json,
        'moleculeType',
        CodeableConcept.fromJson,
      ),
      type: (json['type'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      topology: (json['topology'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      member: (json['member'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      location: (json['location'] as List<dynamic>?)
          ?.map<MolecularDefinitionLocation>(
            (v) => MolecularDefinitionLocation.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      representation: (json['representation'] as List<dynamic>?)
          ?.map<MolecularDefinitionRepresentation>(
            (v) => MolecularDefinitionRepresentation.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [MolecularDefinition]
  /// from a [String] or [YamlMap] object
  factory MolecularDefinition.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularDefinition.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularDefinition.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularDefinition '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularDefinition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularDefinition.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MolecularDefinition';

  /// [identifier]
  /// A unique identifier for a particular instance of this resource.
  final List<Identifier>? identifier;

  /// [description]
  /// A description of the molecular entity in a human friendly format.
  final FhirMarkdown? description;

  /// [moleculeType]
  /// The type of molecule (e.g., DNA, RNA, amino acid). This is a broad
  /// concept that refers to the general physical composition of the
  /// molecule, intended to facilitate searching and to provide domain
  /// context for profiles and instances. The terminology binding may be
  /// expanded to support additional types of molecules in the future (e.g.,
  /// peptide nucleic acids, oligosaccharides).
  final CodeableConcept? moleculeType;

  /// [type]
  /// Classifications of an instance of the resource into arbitrary types,
  /// based on domain semantics. For example, this element could indicate
  /// that an instance of moleculeType 'RNA' could have a type of 'mRNA' or
  /// 'siRNA'.
  final List<CodeableConcept>? type;

  /// [topology]
  /// The structural topology of the molecular entity. For sequences (e.g.,
  /// DNA), this could specify 'linear' and 'circular'. More complex entities
  /// might be branched or have a quaternary structure.
  final List<CodeableConcept>? topology;

  /// [member]
  /// Constituents of an aggregate molecular concept (e.g., haplotype,
  /// genotype).
  final List<Reference>? member;

  /// [location]
  /// A defined location on a molecular entity. Location definitions may vary
  /// with respect to coordinate space and precision or level of granularity.
  final List<MolecularDefinitionLocation>? location;

  /// [representation]
  /// A representation of a molecular entity, specifically including
  /// sequence. Note this element is intended to define the entity primarily
  /// through computable, discrete elements that express domain semantics
  /// rather than replicating a particular file format or relational schema.
  final List<MolecularDefinitionRepresentation>? representation;
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
      'description',
      description,
    );
    addField(
      'moleculeType',
      moleculeType,
    );
    addField(
      'type',
      type,
    );
    addField(
      'topology',
      topology,
    );
    addField(
      'member',
      member,
    );
    addField(
      'location',
      location,
    );
    addField(
      'representation',
      representation,
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
      'description',
      'moleculeType',
      'type',
      'topology',
      'member',
      'location',
      'representation',
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
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'moleculeType':
        if (moleculeType != null) {
          fields.add(moleculeType!);
        }
      case 'type':
        if (type != null) {
          fields.addAll(type!);
        }
      case 'topology':
        if (topology != null) {
          fields.addAll(topology!);
        }
      case 'member':
        if (member != null) {
          fields.addAll(member!);
        }
      case 'location':
        if (location != null) {
          fields.addAll(location!);
        }
      case 'representation':
        if (representation != null) {
          fields.addAll(representation!);
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
  MolecularDefinition clone() => copyWith();

  /// Copy function for [MolecularDefinition]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MolecularDefinitionCopyWith<MolecularDefinition> get copyWith =>
      _$MolecularDefinitionCopyWithImpl<MolecularDefinition>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MolecularDefinition) {
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
    if (!FhirBase.listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      moleculeType,
      o.moleculeType,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<CodeableConcept>(
      type,
      o.type,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<CodeableConcept>(
      topology,
      o.topology,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Reference>(
      member,
      o.member,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<MolecularDefinitionLocation>(
      location,
      o.location,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<MolecularDefinitionRepresentation>(
      representation,
      o.representation,
    )) {
      return false;
    }
    return true;
  }
}

/// [MolecularDefinitionLocation]
/// A defined location on a molecular entity. Location definitions may vary
/// with respect to coordinate space and precision or level of granularity.
class MolecularDefinitionLocation extends BackboneElement {
  /// Primary constructor for
  /// [MolecularDefinitionLocation]

  const MolecularDefinitionLocation({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.sequenceLocation,
    this.cytobandLocation,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularDefinitionLocation.fromJson(
    Map<String, dynamic> json,
  ) {
    return MolecularDefinitionLocation(
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
      sequenceLocation:
          JsonParser.parseObject<MolecularDefinitionSequenceLocation>(
        json,
        'sequenceLocation',
        MolecularDefinitionSequenceLocation.fromJson,
      ),
      cytobandLocation:
          JsonParser.parseObject<MolecularDefinitionCytobandLocation>(
        json,
        'cytobandLocation',
        MolecularDefinitionCytobandLocation.fromJson,
      ),
    );
  }

  /// Deserialize [MolecularDefinitionLocation]
  /// from a [String] or [YamlMap] object
  factory MolecularDefinitionLocation.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularDefinitionLocation.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularDefinitionLocation.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularDefinitionLocation '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularDefinitionLocation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularDefinitionLocation.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularDefinitionLocation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MolecularDefinitionLocation';

  /// [sequenceLocation]
  /// A location on a sequence, defined using a nucleotide coordinate system.
  final MolecularDefinitionSequenceLocation? sequenceLocation;

  /// [cytobandLocation]
  /// A location on a sequence, defined using cytobands.
  final MolecularDefinitionCytobandLocation? cytobandLocation;
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
      'sequenceLocation',
      sequenceLocation,
    );
    addField(
      'cytobandLocation',
      cytobandLocation,
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
      'sequenceLocation',
      'cytobandLocation',
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
      case 'sequenceLocation':
        if (sequenceLocation != null) {
          fields.add(sequenceLocation!);
        }
      case 'cytobandLocation':
        if (cytobandLocation != null) {
          fields.add(cytobandLocation!);
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
  MolecularDefinitionLocation clone() => copyWith();

  /// Copy function for [MolecularDefinitionLocation]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MolecularDefinitionLocationCopyWith<MolecularDefinitionLocation>
      get copyWith => _$MolecularDefinitionLocationCopyWithImpl<
              MolecularDefinitionLocation>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MolecularDefinitionLocation) {
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
      sequenceLocation,
      o.sequenceLocation,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      cytobandLocation,
      o.cytobandLocation,
    )) {
      return false;
    }
    return true;
  }
}

/// [MolecularDefinitionSequenceLocation]
/// A location on a sequence, defined using a nucleotide coordinate system.
class MolecularDefinitionSequenceLocation extends BackboneElement {
  /// Primary constructor for
  /// [MolecularDefinitionSequenceLocation]

  const MolecularDefinitionSequenceLocation({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.sequenceContext,
    this.coordinateInterval,
    this.strand,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularDefinitionSequenceLocation.fromJson(
    Map<String, dynamic> json,
  ) {
    return MolecularDefinitionSequenceLocation(
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
      sequenceContext: JsonParser.parseObject<Reference>(
        json,
        'sequenceContext',
        Reference.fromJson,
      )!,
      coordinateInterval:
          JsonParser.parseObject<MolecularDefinitionCoordinateInterval>(
        json,
        'coordinateInterval',
        MolecularDefinitionCoordinateInterval.fromJson,
      ),
      strand: JsonParser.parseObject<CodeableConcept>(
        json,
        'strand',
        CodeableConcept.fromJson,
      ),
    );
  }

  /// Deserialize [MolecularDefinitionSequenceLocation]
  /// from a [String] or [YamlMap] object
  factory MolecularDefinitionSequenceLocation.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularDefinitionSequenceLocation.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularDefinitionSequenceLocation.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularDefinitionSequenceLocation '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularDefinitionSequenceLocation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularDefinitionSequenceLocation.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularDefinitionSequenceLocation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MolecularDefinitionSequenceLocation';

  /// [sequenceContext]
  /// A reference to a sequence on which the location is defined.
  final Reference sequenceContext;

  /// [coordinateInterval]
  /// An interval on a sequence, defined by coordinate-based start and end
  /// coordinates.
  final MolecularDefinitionCoordinateInterval? coordinateInterval;

  /// [strand]
  /// The specific strand at the coordinateInterval, when the interval alone
  /// is not sufficient to define a location (e.g., double stranded DNA).
  /// Example values include 'forward' and 'reverse'.
  final CodeableConcept? strand;
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
      'sequenceContext',
      sequenceContext,
    );
    addField(
      'coordinateInterval',
      coordinateInterval,
    );
    addField(
      'strand',
      strand,
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
      'sequenceContext',
      'coordinateInterval',
      'strand',
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
      case 'sequenceContext':
        fields.add(sequenceContext);
      case 'coordinateInterval':
        if (coordinateInterval != null) {
          fields.add(coordinateInterval!);
        }
      case 'strand':
        if (strand != null) {
          fields.add(strand!);
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
  MolecularDefinitionSequenceLocation clone() => copyWith();

  /// Copy function for [MolecularDefinitionSequenceLocation]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MolecularDefinitionSequenceLocationCopyWith<
          MolecularDefinitionSequenceLocation>
      get copyWith => _$MolecularDefinitionSequenceLocationCopyWithImpl<
              MolecularDefinitionSequenceLocation>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MolecularDefinitionSequenceLocation) {
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
      sequenceContext,
      o.sequenceContext,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      coordinateInterval,
      o.coordinateInterval,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      strand,
      o.strand,
    )) {
      return false;
    }
    return true;
  }
}

/// [MolecularDefinitionCoordinateInterval]
/// An interval on a sequence, defined by coordinate-based start and end
/// coordinates.
class MolecularDefinitionCoordinateInterval extends BackboneElement {
  /// Primary constructor for
  /// [MolecularDefinitionCoordinateInterval]

  const MolecularDefinitionCoordinateInterval({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.coordinateSystem,
    StartXMolecularDefinitionLocationSequenceLocationCoordinateInterval? startX,
    Quantity? startQuantity,
    Range? startRange,
    EndXMolecularDefinitionLocationSequenceLocationCoordinateInterval? endX,
    Quantity? endQuantity,
    Range? endRange,
    super.disallowExtensions,
  })  : startX = startX ?? startQuantity ?? startRange,
        endX = endX ?? endQuantity ?? endRange,
        super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularDefinitionCoordinateInterval.fromJson(
    Map<String, dynamic> json,
  ) {
    return MolecularDefinitionCoordinateInterval(
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
      coordinateSystem:
          JsonParser.parseObject<MolecularDefinitionCoordinateSystem>(
        json,
        'coordinateSystem',
        MolecularDefinitionCoordinateSystem.fromJson,
      ),
      startX: JsonParser.parsePolymorphic<
          StartXMolecularDefinitionLocationSequenceLocationCoordinateInterval>(
        json,
        {
          'startQuantity': Quantity.fromJson,
          'startRange': Range.fromJson,
        },
      ),
      endX: JsonParser.parsePolymorphic<
          EndXMolecularDefinitionLocationSequenceLocationCoordinateInterval>(
        json,
        {
          'endQuantity': Quantity.fromJson,
          'endRange': Range.fromJson,
        },
      ),
    );
  }

  /// Deserialize [MolecularDefinitionCoordinateInterval]
  /// from a [String] or [YamlMap] object
  factory MolecularDefinitionCoordinateInterval.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularDefinitionCoordinateInterval.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularDefinitionCoordinateInterval.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularDefinitionCoordinateInterval '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularDefinitionCoordinateInterval]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularDefinitionCoordinateInterval.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularDefinitionCoordinateInterval.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MolecularDefinitionCoordinateInterval';

  /// [coordinateSystem]
  /// A definition of the coordinate system. Examples include 1-based
  /// character counting, and 0-based interval counting.
  final MolecularDefinitionCoordinateSystem? coordinateSystem;

  /// [startX]
  /// The start location of the interval expressed as a precise coordinate
  /// (Quantity) or expressed as a range (Range) that is defined by low
  /// (range start) and high (range end). Open-ended ranges, where one end is
  /// unbounded, may be supported.
  final StartXMolecularDefinitionLocationSequenceLocationCoordinateInterval?
      startX;

  /// Getter for [startQuantity] as a Quantity
  Quantity? get startQuantity => startX?.isAs<Quantity>();

  /// Getter for [startRange] as a Range
  Range? get startRange => startX?.isAs<Range>();

  /// [endX]
  /// The end location of the interval expressed as a precise coordinate
  /// (Quantity) or as a range (Range) that is defined by low (range start)
  /// and high (range end). Open-ended ranges, where one end is unbounded,
  /// may be supported..
  final EndXMolecularDefinitionLocationSequenceLocationCoordinateInterval? endX;

  /// Getter for [endQuantity] as a Quantity
  Quantity? get endQuantity => endX?.isAs<Quantity>();

  /// Getter for [endRange] as a Range
  Range? get endRange => endX?.isAs<Range>();
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
      'coordinateSystem',
      coordinateSystem,
    );
    if (startX != null) {
      final fhirType = startX!.fhirType;
      addField(
        'start${fhirType.capitalize()}',
        startX,
      );
    }

    if (endX != null) {
      final fhirType = endX!.fhirType;
      addField(
        'end${fhirType.capitalize()}',
        endX,
      );
    }

    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'coordinateSystem',
      'startX',
      'endX',
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
      case 'coordinateSystem':
        if (coordinateSystem != null) {
          fields.add(coordinateSystem!);
        }
      case 'start':
        if (startX != null) {
          fields.add(startX!);
        }
      case 'startX':
        if (startX != null) {
          fields.add(startX!);
        }
      case 'startQuantity':
        if (startX is Quantity) {
          fields.add(startX!);
        }
      case 'startRange':
        if (startX is Range) {
          fields.add(startX!);
        }
      case 'end':
        if (endX != null) {
          fields.add(endX!);
        }
      case 'endX':
        if (endX != null) {
          fields.add(endX!);
        }
      case 'endQuantity':
        if (endX is Quantity) {
          fields.add(endX!);
        }
      case 'endRange':
        if (endX is Range) {
          fields.add(endX!);
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
  MolecularDefinitionCoordinateInterval clone() => copyWith();

  /// Copy function for [MolecularDefinitionCoordinateInterval]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MolecularDefinitionCoordinateIntervalCopyWith<
          MolecularDefinitionCoordinateInterval>
      get copyWith => _$MolecularDefinitionCoordinateIntervalCopyWithImpl<
              MolecularDefinitionCoordinateInterval>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MolecularDefinitionCoordinateInterval) {
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
      coordinateSystem,
      o.coordinateSystem,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      startX,
      o.startX,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      endX,
      o.endX,
    )) {
      return false;
    }
    return true;
  }
}

/// [MolecularDefinitionCoordinateSystem]
/// A definition of the coordinate system. Examples include 1-based
/// character counting, and 0-based interval counting.
class MolecularDefinitionCoordinateSystem extends BackboneElement {
  /// Primary constructor for
  /// [MolecularDefinitionCoordinateSystem]

  const MolecularDefinitionCoordinateSystem({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.system,
    this.origin,
    this.normalizationMethod,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularDefinitionCoordinateSystem.fromJson(
    Map<String, dynamic> json,
  ) {
    return MolecularDefinitionCoordinateSystem(
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
      system: JsonParser.parseObject<CodeableConcept>(
        json,
        'system',
        CodeableConcept.fromJson,
      ),
      origin: JsonParser.parseObject<CodeableConcept>(
        json,
        'origin',
        CodeableConcept.fromJson,
      ),
      normalizationMethod: JsonParser.parseObject<CodeableConcept>(
        json,
        'normalizationMethod',
        CodeableConcept.fromJson,
      ),
    );
  }

  /// Deserialize [MolecularDefinitionCoordinateSystem]
  /// from a [String] or [YamlMap] object
  factory MolecularDefinitionCoordinateSystem.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularDefinitionCoordinateSystem.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularDefinitionCoordinateSystem.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularDefinitionCoordinateSystem '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularDefinitionCoordinateSystem]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularDefinitionCoordinateSystem.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularDefinitionCoordinateSystem.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MolecularDefinitionCoordinateSystem';

  /// [system]
  /// A definition of the coordinate system. Examples include 1-based
  /// character counting, and 0-based interval counting.
  final CodeableConcept? system;

  /// [origin]
  /// The location of the origin (0 or 1, depending on the coordinate
  /// system). For example, this could specify the origin is at the start of
  /// the sequence (e.g., 5’ end or N-terminus), the beginning of a
  /// designated feature (e.g., A in the ATG translation initiation codon),
  /// or the end of a designated feature (e.g., 3’ end of an exon, from which
  /// an offset is calculated into the following intron).
  final CodeableConcept? origin;

  /// [normalizationMethod]
  /// The normalization method used for determining a location within the
  /// coordinate system. Examples include left shift (e.g., VCF), right shift
  /// (e.g., HGVS), or fully justified (e.g., VOCA).
  final CodeableConcept? normalizationMethod;
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
      'system',
      system,
    );
    addField(
      'origin',
      origin,
    );
    addField(
      'normalizationMethod',
      normalizationMethod,
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
      'system',
      'origin',
      'normalizationMethod',
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
      case 'system':
        if (system != null) {
          fields.add(system!);
        }
      case 'origin':
        if (origin != null) {
          fields.add(origin!);
        }
      case 'normalizationMethod':
        if (normalizationMethod != null) {
          fields.add(normalizationMethod!);
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
  MolecularDefinitionCoordinateSystem clone() => copyWith();

  /// Copy function for [MolecularDefinitionCoordinateSystem]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MolecularDefinitionCoordinateSystemCopyWith<
          MolecularDefinitionCoordinateSystem>
      get copyWith => _$MolecularDefinitionCoordinateSystemCopyWithImpl<
              MolecularDefinitionCoordinateSystem>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MolecularDefinitionCoordinateSystem) {
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
      system,
      o.system,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      origin,
      o.origin,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      normalizationMethod,
      o.normalizationMethod,
    )) {
      return false;
    }
    return true;
  }
}

/// [MolecularDefinitionCytobandLocation]
/// A location on a sequence, defined using cytobands.
class MolecularDefinitionCytobandLocation extends BackboneElement {
  /// Primary constructor for
  /// [MolecularDefinitionCytobandLocation]

  const MolecularDefinitionCytobandLocation({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.genomeAssembly,
    required this.cytobandInterval,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularDefinitionCytobandLocation.fromJson(
    Map<String, dynamic> json,
  ) {
    return MolecularDefinitionCytobandLocation(
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
      genomeAssembly: JsonParser.parseObject<MolecularDefinitionGenomeAssembly>(
        json,
        'genomeAssembly',
        MolecularDefinitionGenomeAssembly.fromJson,
      )!,
      cytobandInterval:
          JsonParser.parseObject<MolecularDefinitionCytobandInterval>(
        json,
        'cytobandInterval',
        MolecularDefinitionCytobandInterval.fromJson,
      )!,
    );
  }

  /// Deserialize [MolecularDefinitionCytobandLocation]
  /// from a [String] or [YamlMap] object
  factory MolecularDefinitionCytobandLocation.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularDefinitionCytobandLocation.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularDefinitionCytobandLocation.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularDefinitionCytobandLocation '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularDefinitionCytobandLocation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularDefinitionCytobandLocation.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularDefinitionCytobandLocation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MolecularDefinitionCytobandLocation';

  /// [genomeAssembly]
  /// The reference genome assemble.
  final MolecularDefinitionGenomeAssembly genomeAssembly;

  /// [cytobandInterval]
  /// The Cytoband Interval.
  final MolecularDefinitionCytobandInterval cytobandInterval;
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
      'genomeAssembly',
      genomeAssembly,
    );
    addField(
      'cytobandInterval',
      cytobandInterval,
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
      'genomeAssembly',
      'cytobandInterval',
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
      case 'genomeAssembly':
        fields.add(genomeAssembly);
      case 'cytobandInterval':
        fields.add(cytobandInterval);
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
  MolecularDefinitionCytobandLocation clone() => copyWith();

  /// Copy function for [MolecularDefinitionCytobandLocation]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MolecularDefinitionCytobandLocationCopyWith<
          MolecularDefinitionCytobandLocation>
      get copyWith => _$MolecularDefinitionCytobandLocationCopyWithImpl<
              MolecularDefinitionCytobandLocation>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MolecularDefinitionCytobandLocation) {
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
      genomeAssembly,
      o.genomeAssembly,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      cytobandInterval,
      o.cytobandInterval,
    )) {
      return false;
    }
    return true;
  }
}

/// [MolecularDefinitionGenomeAssembly]
/// The reference genome assemble.
class MolecularDefinitionGenomeAssembly extends BackboneElement {
  /// Primary constructor for
  /// [MolecularDefinitionGenomeAssembly]

  const MolecularDefinitionGenomeAssembly({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.organism,
    this.build,
    this.accession,
    DescriptionXMolecularDefinitionGenomeAssembly? descriptionX,
    FhirMarkdown? descriptionMarkdown,
    FhirString? descriptionString,
    super.disallowExtensions,
  })  : descriptionX = descriptionX ?? descriptionMarkdown ?? descriptionString,
        super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularDefinitionGenomeAssembly.fromJson(
    Map<String, dynamic> json,
  ) {
    return MolecularDefinitionGenomeAssembly(
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
      organism: JsonParser.parseObject<CodeableConcept>(
        json,
        'organism',
        CodeableConcept.fromJson,
      ),
      build: JsonParser.parseObject<CodeableConcept>(
        json,
        'build',
        CodeableConcept.fromJson,
      ),
      accession: JsonParser.parseObject<CodeableConcept>(
        json,
        'accession',
        CodeableConcept.fromJson,
      ),
      descriptionX: JsonParser.parsePolymorphic<
          DescriptionXMolecularDefinitionGenomeAssembly>(
        json,
        {
          'descriptionMarkdown': FhirMarkdown.fromJson,
          'descriptionString': FhirString.fromJson,
        },
      ),
    );
  }

  /// Deserialize [MolecularDefinitionGenomeAssembly]
  /// from a [String] or [YamlMap] object
  factory MolecularDefinitionGenomeAssembly.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularDefinitionGenomeAssembly.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularDefinitionGenomeAssembly.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularDefinitionGenomeAssembly '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularDefinitionGenomeAssembly]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularDefinitionGenomeAssembly.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularDefinitionGenomeAssembly.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MolecularDefinitionGenomeAssembly';

  /// [organism]
  /// Species of the organism.
  final CodeableConcept? organism;

  /// [build]
  /// The build number of this genome assemble.
  final CodeableConcept? build;

  /// [accession]
  /// The accession of this genome assemble.
  final CodeableConcept? accession;

  /// [descriptionX]
  /// The description of this genome assembly.
  final DescriptionXMolecularDefinitionGenomeAssembly? descriptionX;

  /// Getter for [descriptionMarkdown] as a FhirMarkdown
  FhirMarkdown? get descriptionMarkdown => descriptionX?.isAs<FhirMarkdown>();

  /// Getter for [descriptionString] as a FhirString
  FhirString? get descriptionString => descriptionX?.isAs<FhirString>();
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
      'organism',
      organism,
    );
    addField(
      'build',
      build,
    );
    addField(
      'accession',
      accession,
    );
    if (descriptionX != null) {
      final fhirType = descriptionX!.fhirType;
      addField(
        'description${fhirType.capitalize()}',
        descriptionX,
      );
    }

    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'organism',
      'build',
      'accession',
      'descriptionX',
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
      case 'organism':
        if (organism != null) {
          fields.add(organism!);
        }
      case 'build':
        if (build != null) {
          fields.add(build!);
        }
      case 'accession':
        if (accession != null) {
          fields.add(accession!);
        }
      case 'description':
        if (descriptionX != null) {
          fields.add(descriptionX!);
        }
      case 'descriptionX':
        if (descriptionX != null) {
          fields.add(descriptionX!);
        }
      case 'descriptionMarkdown':
        if (descriptionX is FhirMarkdown) {
          fields.add(descriptionX!);
        }
      case 'descriptionString':
        if (descriptionX is FhirString) {
          fields.add(descriptionX!);
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
  MolecularDefinitionGenomeAssembly clone() => copyWith();

  /// Copy function for [MolecularDefinitionGenomeAssembly]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MolecularDefinitionGenomeAssemblyCopyWith<MolecularDefinitionGenomeAssembly>
      get copyWith => _$MolecularDefinitionGenomeAssemblyCopyWithImpl<
              MolecularDefinitionGenomeAssembly>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MolecularDefinitionGenomeAssembly) {
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
      organism,
      o.organism,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      build,
      o.build,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      accession,
      o.accession,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      descriptionX,
      o.descriptionX,
    )) {
      return false;
    }
    return true;
  }
}

/// [MolecularDefinitionCytobandInterval]
/// The Cytoband Interval.
class MolecularDefinitionCytobandInterval extends BackboneElement {
  /// Primary constructor for
  /// [MolecularDefinitionCytobandInterval]

  const MolecularDefinitionCytobandInterval({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.chromosome,
    this.startCytoband,
    this.endCytoband,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularDefinitionCytobandInterval.fromJson(
    Map<String, dynamic> json,
  ) {
    return MolecularDefinitionCytobandInterval(
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
      chromosome: JsonParser.parseObject<CodeableConcept>(
        json,
        'chromosome',
        CodeableConcept.fromJson,
      )!,
      startCytoband: JsonParser.parseObject<MolecularDefinitionStartCytoband>(
        json,
        'startCytoband',
        MolecularDefinitionStartCytoband.fromJson,
      ),
      endCytoband: JsonParser.parseObject<MolecularDefinitionEndCytoband>(
        json,
        'endCytoband',
        MolecularDefinitionEndCytoband.fromJson,
      ),
    );
  }

  /// Deserialize [MolecularDefinitionCytobandInterval]
  /// from a [String] or [YamlMap] object
  factory MolecularDefinitionCytobandInterval.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularDefinitionCytobandInterval.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularDefinitionCytobandInterval.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularDefinitionCytobandInterval '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularDefinitionCytobandInterval]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularDefinitionCytobandInterval.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularDefinitionCytobandInterval.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MolecularDefinitionCytobandInterval';

  /// [chromosome]
  /// The chromosome where this cytoband interval occurs.
  final CodeableConcept chromosome;

  /// [startCytoband]
  /// The start of this cytoband Interval.
  final MolecularDefinitionStartCytoband? startCytoband;

  /// [endCytoband]
  /// The end of this cytoband Interval.
  final MolecularDefinitionEndCytoband? endCytoband;
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
      'chromosome',
      chromosome,
    );
    addField(
      'startCytoband',
      startCytoband,
    );
    addField(
      'endCytoband',
      endCytoband,
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
      'chromosome',
      'startCytoband',
      'endCytoband',
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
      case 'chromosome':
        fields.add(chromosome);
      case 'startCytoband':
        if (startCytoband != null) {
          fields.add(startCytoband!);
        }
      case 'endCytoband':
        if (endCytoband != null) {
          fields.add(endCytoband!);
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
  MolecularDefinitionCytobandInterval clone() => copyWith();

  /// Copy function for [MolecularDefinitionCytobandInterval]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MolecularDefinitionCytobandIntervalCopyWith<
          MolecularDefinitionCytobandInterval>
      get copyWith => _$MolecularDefinitionCytobandIntervalCopyWithImpl<
              MolecularDefinitionCytobandInterval>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MolecularDefinitionCytobandInterval) {
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
      chromosome,
      o.chromosome,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      startCytoband,
      o.startCytoband,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      endCytoband,
      o.endCytoband,
    )) {
      return false;
    }
    return true;
  }
}

/// [MolecularDefinitionStartCytoband]
/// The start of this cytoband Interval.
class MolecularDefinitionStartCytoband extends BackboneElement {
  /// Primary constructor for
  /// [MolecularDefinitionStartCytoband]

  const MolecularDefinitionStartCytoband({
    super.id,
    super.extension_,
    super.modifierExtension,
    ArmXMolecularDefinitionStartCytoband? armX,
    FhirCode? armCode,
    FhirString? armString,
    RegionXMolecularDefinitionStartCytoband? regionX,
    FhirCode? regionCode,
    FhirString? regionString,
    BandXMolecularDefinitionStartCytoband? bandX,
    FhirCode? bandCode,
    FhirString? bandString,
    SubBandXMolecularDefinitionStartCytoband? subBandX,
    FhirCode? subBandCode,
    FhirString? subBandString,
    super.disallowExtensions,
  })  : armX = armX ?? armCode ?? armString,
        regionX = regionX ?? regionCode ?? regionString,
        bandX = bandX ?? bandCode ?? bandString,
        subBandX = subBandX ?? subBandCode ?? subBandString,
        super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularDefinitionStartCytoband.fromJson(
    Map<String, dynamic> json,
  ) {
    return MolecularDefinitionStartCytoband(
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
      armX: JsonParser.parsePolymorphic<ArmXMolecularDefinitionStartCytoband>(
        json,
        {
          'armCode': FhirCode.fromJson,
          'armString': FhirString.fromJson,
        },
      ),
      regionX:
          JsonParser.parsePolymorphic<RegionXMolecularDefinitionStartCytoband>(
        json,
        {
          'regionCode': FhirCode.fromJson,
          'regionString': FhirString.fromJson,
        },
      ),
      bandX: JsonParser.parsePolymorphic<BandXMolecularDefinitionStartCytoband>(
        json,
        {
          'bandCode': FhirCode.fromJson,
          'bandString': FhirString.fromJson,
        },
      ),
      subBandX:
          JsonParser.parsePolymorphic<SubBandXMolecularDefinitionStartCytoband>(
        json,
        {
          'subBandCode': FhirCode.fromJson,
          'subBandString': FhirString.fromJson,
        },
      ),
    );
  }

  /// Deserialize [MolecularDefinitionStartCytoband]
  /// from a [String] or [YamlMap] object
  factory MolecularDefinitionStartCytoband.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularDefinitionStartCytoband.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularDefinitionStartCytoband.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularDefinitionStartCytoband '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularDefinitionStartCytoband]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularDefinitionStartCytoband.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularDefinitionStartCytoband.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MolecularDefinitionStartCytoband';

  /// [armX]
  /// The arm of this start interval.
  final ArmXMolecularDefinitionStartCytoband? armX;

  /// Getter for [armCode] as a FhirCode
  FhirCode? get armCode => armX?.isAs<FhirCode>();

  /// Getter for [armString] as a FhirString
  FhirString? get armString => armX?.isAs<FhirString>();

  /// [regionX]
  /// The region of this start interval.
  final RegionXMolecularDefinitionStartCytoband? regionX;

  /// Getter for [regionCode] as a FhirCode
  FhirCode? get regionCode => regionX?.isAs<FhirCode>();

  /// Getter for [regionString] as a FhirString
  FhirString? get regionString => regionX?.isAs<FhirString>();

  /// [bandX]
  /// The band of this start interval.
  final BandXMolecularDefinitionStartCytoband? bandX;

  /// Getter for [bandCode] as a FhirCode
  FhirCode? get bandCode => bandX?.isAs<FhirCode>();

  /// Getter for [bandString] as a FhirString
  FhirString? get bandString => bandX?.isAs<FhirString>();

  /// [subBandX]
  /// The sub-band of this start interval.
  final SubBandXMolecularDefinitionStartCytoband? subBandX;

  /// Getter for [subBandCode] as a FhirCode
  FhirCode? get subBandCode => subBandX?.isAs<FhirCode>();

  /// Getter for [subBandString] as a FhirString
  FhirString? get subBandString => subBandX?.isAs<FhirString>();
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
    if (armX != null) {
      final fhirType = armX!.fhirType;
      addField(
        'arm${fhirType.capitalize()}',
        armX,
      );
    }

    if (regionX != null) {
      final fhirType = regionX!.fhirType;
      addField(
        'region${fhirType.capitalize()}',
        regionX,
      );
    }

    if (bandX != null) {
      final fhirType = bandX!.fhirType;
      addField(
        'band${fhirType.capitalize()}',
        bandX,
      );
    }

    if (subBandX != null) {
      final fhirType = subBandX!.fhirType;
      addField(
        'subBand${fhirType.capitalize()}',
        subBandX,
      );
    }

    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'armX',
      'regionX',
      'bandX',
      'subBandX',
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
      case 'arm':
        if (armX != null) {
          fields.add(armX!);
        }
      case 'armX':
        if (armX != null) {
          fields.add(armX!);
        }
      case 'armCode':
        if (armX is FhirCode) {
          fields.add(armX!);
        }
      case 'armString':
        if (armX is FhirString) {
          fields.add(armX!);
        }
      case 'region':
        if (regionX != null) {
          fields.add(regionX!);
        }
      case 'regionX':
        if (regionX != null) {
          fields.add(regionX!);
        }
      case 'regionCode':
        if (regionX is FhirCode) {
          fields.add(regionX!);
        }
      case 'regionString':
        if (regionX is FhirString) {
          fields.add(regionX!);
        }
      case 'band':
        if (bandX != null) {
          fields.add(bandX!);
        }
      case 'bandX':
        if (bandX != null) {
          fields.add(bandX!);
        }
      case 'bandCode':
        if (bandX is FhirCode) {
          fields.add(bandX!);
        }
      case 'bandString':
        if (bandX is FhirString) {
          fields.add(bandX!);
        }
      case 'subBand':
        if (subBandX != null) {
          fields.add(subBandX!);
        }
      case 'subBandX':
        if (subBandX != null) {
          fields.add(subBandX!);
        }
      case 'subBandCode':
        if (subBandX is FhirCode) {
          fields.add(subBandX!);
        }
      case 'subBandString':
        if (subBandX is FhirString) {
          fields.add(subBandX!);
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
  MolecularDefinitionStartCytoband clone() => copyWith();

  /// Copy function for [MolecularDefinitionStartCytoband]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MolecularDefinitionStartCytobandCopyWith<MolecularDefinitionStartCytoband>
      get copyWith => _$MolecularDefinitionStartCytobandCopyWithImpl<
              MolecularDefinitionStartCytoband>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MolecularDefinitionStartCytoband) {
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
      armX,
      o.armX,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      regionX,
      o.regionX,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      bandX,
      o.bandX,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      subBandX,
      o.subBandX,
    )) {
      return false;
    }
    return true;
  }
}

/// [MolecularDefinitionEndCytoband]
/// The end of this cytoband Interval.
class MolecularDefinitionEndCytoband extends BackboneElement {
  /// Primary constructor for
  /// [MolecularDefinitionEndCytoband]

  const MolecularDefinitionEndCytoband({
    super.id,
    super.extension_,
    super.modifierExtension,
    ArmXMolecularDefinitionEndCytoband? armX,
    FhirCode? armCode,
    FhirString? armString,
    RegionXMolecularDefinitionEndCytoband? regionX,
    FhirCode? regionCode,
    FhirString? regionString,
    BandXMolecularDefinitionEndCytoband? bandX,
    FhirCode? bandCode,
    FhirString? bandString,
    SubBandXMolecularDefinitionEndCytoband? subBandX,
    FhirCode? subBandCode,
    FhirString? subBandString,
    super.disallowExtensions,
  })  : armX = armX ?? armCode ?? armString,
        regionX = regionX ?? regionCode ?? regionString,
        bandX = bandX ?? bandCode ?? bandString,
        subBandX = subBandX ?? subBandCode ?? subBandString,
        super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularDefinitionEndCytoband.fromJson(
    Map<String, dynamic> json,
  ) {
    return MolecularDefinitionEndCytoband(
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
      armX: JsonParser.parsePolymorphic<ArmXMolecularDefinitionEndCytoband>(
        json,
        {
          'armCode': FhirCode.fromJson,
          'armString': FhirString.fromJson,
        },
      ),
      regionX:
          JsonParser.parsePolymorphic<RegionXMolecularDefinitionEndCytoband>(
        json,
        {
          'regionCode': FhirCode.fromJson,
          'regionString': FhirString.fromJson,
        },
      ),
      bandX: JsonParser.parsePolymorphic<BandXMolecularDefinitionEndCytoband>(
        json,
        {
          'bandCode': FhirCode.fromJson,
          'bandString': FhirString.fromJson,
        },
      ),
      subBandX:
          JsonParser.parsePolymorphic<SubBandXMolecularDefinitionEndCytoband>(
        json,
        {
          'subBandCode': FhirCode.fromJson,
          'subBandString': FhirString.fromJson,
        },
      ),
    );
  }

  /// Deserialize [MolecularDefinitionEndCytoband]
  /// from a [String] or [YamlMap] object
  factory MolecularDefinitionEndCytoband.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularDefinitionEndCytoband.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularDefinitionEndCytoband.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularDefinitionEndCytoband '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularDefinitionEndCytoband]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularDefinitionEndCytoband.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularDefinitionEndCytoband.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MolecularDefinitionEndCytoband';

  /// [armX]
  /// The arm of this end interval.
  final ArmXMolecularDefinitionEndCytoband? armX;

  /// Getter for [armCode] as a FhirCode
  FhirCode? get armCode => armX?.isAs<FhirCode>();

  /// Getter for [armString] as a FhirString
  FhirString? get armString => armX?.isAs<FhirString>();

  /// [regionX]
  /// The region of this end interval.
  final RegionXMolecularDefinitionEndCytoband? regionX;

  /// Getter for [regionCode] as a FhirCode
  FhirCode? get regionCode => regionX?.isAs<FhirCode>();

  /// Getter for [regionString] as a FhirString
  FhirString? get regionString => regionX?.isAs<FhirString>();

  /// [bandX]
  /// The band of this end interval.
  final BandXMolecularDefinitionEndCytoband? bandX;

  /// Getter for [bandCode] as a FhirCode
  FhirCode? get bandCode => bandX?.isAs<FhirCode>();

  /// Getter for [bandString] as a FhirString
  FhirString? get bandString => bandX?.isAs<FhirString>();

  /// [subBandX]
  /// The sub-band of this end interval.
  final SubBandXMolecularDefinitionEndCytoband? subBandX;

  /// Getter for [subBandCode] as a FhirCode
  FhirCode? get subBandCode => subBandX?.isAs<FhirCode>();

  /// Getter for [subBandString] as a FhirString
  FhirString? get subBandString => subBandX?.isAs<FhirString>();
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
    if (armX != null) {
      final fhirType = armX!.fhirType;
      addField(
        'arm${fhirType.capitalize()}',
        armX,
      );
    }

    if (regionX != null) {
      final fhirType = regionX!.fhirType;
      addField(
        'region${fhirType.capitalize()}',
        regionX,
      );
    }

    if (bandX != null) {
      final fhirType = bandX!.fhirType;
      addField(
        'band${fhirType.capitalize()}',
        bandX,
      );
    }

    if (subBandX != null) {
      final fhirType = subBandX!.fhirType;
      addField(
        'subBand${fhirType.capitalize()}',
        subBandX,
      );
    }

    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'armX',
      'regionX',
      'bandX',
      'subBandX',
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
      case 'arm':
        if (armX != null) {
          fields.add(armX!);
        }
      case 'armX':
        if (armX != null) {
          fields.add(armX!);
        }
      case 'armCode':
        if (armX is FhirCode) {
          fields.add(armX!);
        }
      case 'armString':
        if (armX is FhirString) {
          fields.add(armX!);
        }
      case 'region':
        if (regionX != null) {
          fields.add(regionX!);
        }
      case 'regionX':
        if (regionX != null) {
          fields.add(regionX!);
        }
      case 'regionCode':
        if (regionX is FhirCode) {
          fields.add(regionX!);
        }
      case 'regionString':
        if (regionX is FhirString) {
          fields.add(regionX!);
        }
      case 'band':
        if (bandX != null) {
          fields.add(bandX!);
        }
      case 'bandX':
        if (bandX != null) {
          fields.add(bandX!);
        }
      case 'bandCode':
        if (bandX is FhirCode) {
          fields.add(bandX!);
        }
      case 'bandString':
        if (bandX is FhirString) {
          fields.add(bandX!);
        }
      case 'subBand':
        if (subBandX != null) {
          fields.add(subBandX!);
        }
      case 'subBandX':
        if (subBandX != null) {
          fields.add(subBandX!);
        }
      case 'subBandCode':
        if (subBandX is FhirCode) {
          fields.add(subBandX!);
        }
      case 'subBandString':
        if (subBandX is FhirString) {
          fields.add(subBandX!);
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
  MolecularDefinitionEndCytoband clone() => copyWith();

  /// Copy function for [MolecularDefinitionEndCytoband]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MolecularDefinitionEndCytobandCopyWith<MolecularDefinitionEndCytoband>
      get copyWith => _$MolecularDefinitionEndCytobandCopyWithImpl<
              MolecularDefinitionEndCytoband>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MolecularDefinitionEndCytoband) {
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
      armX,
      o.armX,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      regionX,
      o.regionX,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      bandX,
      o.bandX,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      subBandX,
      o.subBandX,
    )) {
      return false;
    }
    return true;
  }
}

/// [MolecularDefinitionRepresentation]
/// A representation of a molecular entity, specifically including
/// sequence. Note this element is intended to define the entity primarily
/// through computable, discrete elements that express domain semantics
/// rather than replicating a particular file format or relational schema.
class MolecularDefinitionRepresentation extends BackboneElement {
  /// Primary constructor for
  /// [MolecularDefinitionRepresentation]

  const MolecularDefinitionRepresentation({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.focus,
    this.code,
    this.literal,
    this.resolvable,
    this.extracted,
    this.repeated,
    this.concatenated,
    this.relative,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularDefinitionRepresentation.fromJson(
    Map<String, dynamic> json,
  ) {
    return MolecularDefinitionRepresentation(
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
      focus: JsonParser.parseObject<CodeableConcept>(
        json,
        'focus',
        CodeableConcept.fromJson,
      ),
      code: (json['code'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      literal: JsonParser.parseObject<MolecularDefinitionLiteral>(
        json,
        'literal',
        MolecularDefinitionLiteral.fromJson,
      ),
      resolvable: JsonParser.parseObject<Reference>(
        json,
        'resolvable',
        Reference.fromJson,
      ),
      extracted: JsonParser.parseObject<MolecularDefinitionExtracted>(
        json,
        'extracted',
        MolecularDefinitionExtracted.fromJson,
      ),
      repeated: JsonParser.parseObject<MolecularDefinitionRepeated>(
        json,
        'repeated',
        MolecularDefinitionRepeated.fromJson,
      ),
      concatenated: JsonParser.parseObject<MolecularDefinitionConcatenated>(
        json,
        'concatenated',
        MolecularDefinitionConcatenated.fromJson,
      ),
      relative: JsonParser.parseObject<MolecularDefinitionRelative>(
        json,
        'relative',
        MolecularDefinitionRelative.fromJson,
      ),
    );
  }

  /// Deserialize [MolecularDefinitionRepresentation]
  /// from a [String] or [YamlMap] object
  factory MolecularDefinitionRepresentation.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularDefinitionRepresentation.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularDefinitionRepresentation.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularDefinitionRepresentation '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularDefinitionRepresentation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularDefinitionRepresentation.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularDefinitionRepresentation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MolecularDefinitionRepresentation';

  /// [focus]
  /// The domain concept that is the focus of the representation. This
  /// element is used to disambiguate the representations of the “reference”
  /// and the “alternate” alleles at a given location, for example.
  final CodeableConcept? focus;

  /// [code]
  /// A code (e.g., sequence accession number) used to represent a molecular
  /// entity.
  final List<CodeableConcept>? code;

  /// [literal]
  /// A molecular entity defined as a string literal.
  final MolecularDefinitionLiteral? literal;

  /// [resolvable]
  /// A resolvable representation of a molecular entity, which may be
  /// specified as a URI and/or attached document (in a defined format).
  final Reference? resolvable;

  /// [extracted]
  /// A molecular entity that is represented as a portion of a different
  /// entity. For example, this element can represent a subsequence (e.g.,
  /// genetic region) that is part of and conceptually extracted from a
  /// longer sequence (e.g., chromosome sequence). The “parent” entity is
  /// specified in startingMolecule and the location of the intended
  /// molecular entity on the parent entity is defined by coordinateInterval.
  final MolecularDefinitionExtracted? extracted;

  /// [repeated]
  /// A representation of a molecular entity that is expressed as a number of
  /// copies of a repeated motif.
  final MolecularDefinitionRepeated? repeated;

  /// [concatenated]
  /// A representation comprised of an ordered concatenation of two or more
  /// molecular entities.
  final MolecularDefinitionConcatenated? concatenated;

  /// [relative]
  /// A molecular entity represented as an ordered series of edits on a
  /// specified starting entity. This representation can be used to define
  /// one entity relative to another.
  final MolecularDefinitionRelative? relative;
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
      'focus',
      focus,
    );
    addField(
      'code',
      code,
    );
    addField(
      'literal',
      literal,
    );
    addField(
      'resolvable',
      resolvable,
    );
    addField(
      'extracted',
      extracted,
    );
    addField(
      'repeated',
      repeated,
    );
    addField(
      'concatenated',
      concatenated,
    );
    addField(
      'relative',
      relative,
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
      'focus',
      'code',
      'literal',
      'resolvable',
      'extracted',
      'repeated',
      'concatenated',
      'relative',
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
      case 'focus':
        if (focus != null) {
          fields.add(focus!);
        }
      case 'code':
        if (code != null) {
          fields.addAll(code!);
        }
      case 'literal':
        if (literal != null) {
          fields.add(literal!);
        }
      case 'resolvable':
        if (resolvable != null) {
          fields.add(resolvable!);
        }
      case 'extracted':
        if (extracted != null) {
          fields.add(extracted!);
        }
      case 'repeated':
        if (repeated != null) {
          fields.add(repeated!);
        }
      case 'concatenated':
        if (concatenated != null) {
          fields.add(concatenated!);
        }
      case 'relative':
        if (relative != null) {
          fields.add(relative!);
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
  MolecularDefinitionRepresentation clone() => copyWith();

  /// Copy function for [MolecularDefinitionRepresentation]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MolecularDefinitionRepresentationCopyWith<MolecularDefinitionRepresentation>
      get copyWith => _$MolecularDefinitionRepresentationCopyWithImpl<
              MolecularDefinitionRepresentation>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MolecularDefinitionRepresentation) {
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
      focus,
      o.focus,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<CodeableConcept>(
      code,
      o.code,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      literal,
      o.literal,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      resolvable,
      o.resolvable,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      extracted,
      o.extracted,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      repeated,
      o.repeated,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      concatenated,
      o.concatenated,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      relative,
      o.relative,
    )) {
      return false;
    }
    return true;
  }
}

/// [MolecularDefinitionLiteral]
/// A molecular entity defined as a string literal.
class MolecularDefinitionLiteral extends BackboneElement {
  /// Primary constructor for
  /// [MolecularDefinitionLiteral]

  const MolecularDefinitionLiteral({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.encoding,
    required this.value,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularDefinitionLiteral.fromJson(
    Map<String, dynamic> json,
  ) {
    return MolecularDefinitionLiteral(
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
      encoding: JsonParser.parseObject<CodeableConcept>(
        json,
        'encoding',
        CodeableConcept.fromJson,
      ),
      value: JsonParser.parsePrimitive<FhirString>(
        json,
        'value',
        FhirString.fromJson,
      )!,
    );
  }

  /// Deserialize [MolecularDefinitionLiteral]
  /// from a [String] or [YamlMap] object
  factory MolecularDefinitionLiteral.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularDefinitionLiteral.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularDefinitionLiteral.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularDefinitionLiteral '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularDefinitionLiteral]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularDefinitionLiteral.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularDefinitionLiteral.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MolecularDefinitionLiteral';

  /// [encoding]
  /// The encoding used for the expression of the entity. For a primary
  /// sequence, this element represents the alphabet used (e.g., 1 character
  /// DNA without ambiguity codes, 3 character amino acid codes).
  final CodeableConcept? encoding;

  /// [value]
  /// A string literal representation of the molecular entity, using a
  /// specific encoding. For example, this may be the primary sequence of a
  /// strand of DNA.
  final FhirString value;
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
      'encoding',
      encoding,
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
      'encoding',
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
      case 'encoding':
        if (encoding != null) {
          fields.add(encoding!);
        }
      case 'value':
        fields.add(value);
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
  MolecularDefinitionLiteral clone() => copyWith();

  /// Copy function for [MolecularDefinitionLiteral]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MolecularDefinitionLiteralCopyWith<MolecularDefinitionLiteral>
      get copyWith =>
          _$MolecularDefinitionLiteralCopyWithImpl<MolecularDefinitionLiteral>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MolecularDefinitionLiteral) {
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
      encoding,
      o.encoding,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      value,
      o.value,
    )) {
      return false;
    }
    return true;
  }
}

/// [MolecularDefinitionExtracted]
/// A molecular entity that is represented as a portion of a different
/// entity. For example, this element can represent a subsequence (e.g.,
/// genetic region) that is part of and conceptually extracted from a
/// longer sequence (e.g., chromosome sequence). The “parent” entity is
/// specified in startingMolecule and the location of the intended
/// molecular entity on the parent entity is defined by coordinateInterval.
class MolecularDefinitionExtracted extends BackboneElement {
  /// Primary constructor for
  /// [MolecularDefinitionExtracted]

  const MolecularDefinitionExtracted({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.startingMolecule,
    this.coordinateInterval,
    this.reverseComplement,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularDefinitionExtracted.fromJson(
    Map<String, dynamic> json,
  ) {
    return MolecularDefinitionExtracted(
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
      startingMolecule: JsonParser.parseObject<Reference>(
        json,
        'startingMolecule',
        Reference.fromJson,
      )!,
      coordinateInterval:
          JsonParser.parseObject<MolecularDefinitionCoordinateInterval>(
        json,
        'coordinateInterval',
        MolecularDefinitionCoordinateInterval.fromJson,
      ),
      reverseComplement: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'reverseComplement',
        FhirBoolean.fromJson,
      ),
    );
  }

  /// Deserialize [MolecularDefinitionExtracted]
  /// from a [String] or [YamlMap] object
  factory MolecularDefinitionExtracted.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularDefinitionExtracted.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularDefinitionExtracted.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularDefinitionExtracted '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularDefinitionExtracted]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularDefinitionExtracted.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularDefinitionExtracted.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MolecularDefinitionExtracted';

  /// [startingMolecule]
  /// A reference to the molecular entity that serves as the conceptual
  /// 'parent' from which the intended entity is derived. For example, this
  /// could be a chromosome sequence on which a coordinateInterval is
  /// defined.
  final Reference startingMolecule;

  /// [coordinateInterval]
  /// The interval on startingMolecule that defines the portion to be
  /// extracted in order to create the intended entity.
  final MolecularDefinitionCoordinateInterval? coordinateInterval;

  /// [reverseComplement]
  /// A flag that indicates whether the extracted sequence should be reverse
  /// complemented in order to produce the intended entity. This element is
  /// only relevant to molecular entities that support the concept of reverse
  /// complement (e.g., double stranded DNA).
  final FhirBoolean? reverseComplement;
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
      'startingMolecule',
      startingMolecule,
    );
    addField(
      'coordinateInterval',
      coordinateInterval,
    );
    addField(
      'reverseComplement',
      reverseComplement,
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
      'startingMolecule',
      'coordinateInterval',
      'reverseComplement',
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
      case 'startingMolecule':
        fields.add(startingMolecule);
      case 'coordinateInterval':
        if (coordinateInterval != null) {
          fields.add(coordinateInterval!);
        }
      case 'reverseComplement':
        if (reverseComplement != null) {
          fields.add(reverseComplement!);
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
  MolecularDefinitionExtracted clone() => copyWith();

  /// Copy function for [MolecularDefinitionExtracted]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MolecularDefinitionExtractedCopyWith<MolecularDefinitionExtracted>
      get copyWith => _$MolecularDefinitionExtractedCopyWithImpl<
              MolecularDefinitionExtracted>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MolecularDefinitionExtracted) {
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
      startingMolecule,
      o.startingMolecule,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      coordinateInterval,
      o.coordinateInterval,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      reverseComplement,
      o.reverseComplement,
    )) {
      return false;
    }
    return true;
  }
}

/// [MolecularDefinitionCoordinateInterval1]
/// The interval on startingMolecule that defines the portion to be
/// extracted in order to create the intended entity.
class MolecularDefinitionCoordinateInterval1 extends BackboneElement {
  /// Primary constructor for
  /// [MolecularDefinitionCoordinateInterval1]

  const MolecularDefinitionCoordinateInterval1({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.coordinateSystem,
    StartXMolecularDefinitionRepresentationExtractedCoordinateInterval? startX,
    Quantity? startQuantity,
    Range? startRange,
    EndXMolecularDefinitionRepresentationExtractedCoordinateInterval? endX,
    Quantity? endQuantity,
    Range? endRange,
    super.disallowExtensions,
  })  : startX = startX ?? startQuantity ?? startRange,
        endX = endX ?? endQuantity ?? endRange,
        super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularDefinitionCoordinateInterval1.fromJson(
    Map<String, dynamic> json,
  ) {
    return MolecularDefinitionCoordinateInterval1(
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
      coordinateSystem:
          JsonParser.parseObject<MolecularDefinitionCoordinateSystem>(
        json,
        'coordinateSystem',
        MolecularDefinitionCoordinateSystem.fromJson,
      ),
      startX: JsonParser.parsePolymorphic<
          StartXMolecularDefinitionRepresentationExtractedCoordinateInterval>(
        json,
        {
          'startQuantity': Quantity.fromJson,
          'startRange': Range.fromJson,
        },
      ),
      endX: JsonParser.parsePolymorphic<
          EndXMolecularDefinitionRepresentationExtractedCoordinateInterval>(
        json,
        {
          'endQuantity': Quantity.fromJson,
          'endRange': Range.fromJson,
        },
      ),
    );
  }

  /// Deserialize [MolecularDefinitionCoordinateInterval1]
  /// from a [String] or [YamlMap] object
  factory MolecularDefinitionCoordinateInterval1.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularDefinitionCoordinateInterval1.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularDefinitionCoordinateInterval1.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularDefinitionCoordinateInterval1 '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularDefinitionCoordinateInterval1]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularDefinitionCoordinateInterval1.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularDefinitionCoordinateInterval1.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MolecularDefinitionCoordinateInterval1';

  /// [coordinateSystem]
  /// The coordinate system used to define the location, which may vary
  /// depending on application or context of use.
  final MolecularDefinitionCoordinateSystem? coordinateSystem;

  /// [startX]
  /// The start location of the interval expressed as a precise coordinate
  /// (Quantity) or expressed as a range (Range) that is defined by low
  /// (range start) and high (range end). Open-ended ranges, where one end is
  /// unbounded, may be supported.
  final StartXMolecularDefinitionRepresentationExtractedCoordinateInterval?
      startX;

  /// Getter for [startQuantity] as a Quantity
  Quantity? get startQuantity => startX?.isAs<Quantity>();

  /// Getter for [startRange] as a Range
  Range? get startRange => startX?.isAs<Range>();

  /// [endX]
  /// The end location of the interval expressed as a precise coordinate
  /// (Quantity) or as a range (Range) that is defined by low (range start)
  /// and high (range end). Open-ended ranges, where one end is unbounded,
  /// may be supported..
  final EndXMolecularDefinitionRepresentationExtractedCoordinateInterval? endX;

  /// Getter for [endQuantity] as a Quantity
  Quantity? get endQuantity => endX?.isAs<Quantity>();

  /// Getter for [endRange] as a Range
  Range? get endRange => endX?.isAs<Range>();
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
      'coordinateSystem',
      coordinateSystem,
    );
    if (startX != null) {
      final fhirType = startX!.fhirType;
      addField(
        'start${fhirType.capitalize()}',
        startX,
      );
    }

    if (endX != null) {
      final fhirType = endX!.fhirType;
      addField(
        'end${fhirType.capitalize()}',
        endX,
      );
    }

    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'coordinateSystem',
      'startX',
      'endX',
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
      case 'coordinateSystem':
        if (coordinateSystem != null) {
          fields.add(coordinateSystem!);
        }
      case 'start':
        if (startX != null) {
          fields.add(startX!);
        }
      case 'startX':
        if (startX != null) {
          fields.add(startX!);
        }
      case 'startQuantity':
        if (startX is Quantity) {
          fields.add(startX!);
        }
      case 'startRange':
        if (startX is Range) {
          fields.add(startX!);
        }
      case 'end':
        if (endX != null) {
          fields.add(endX!);
        }
      case 'endX':
        if (endX != null) {
          fields.add(endX!);
        }
      case 'endQuantity':
        if (endX is Quantity) {
          fields.add(endX!);
        }
      case 'endRange':
        if (endX is Range) {
          fields.add(endX!);
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
  MolecularDefinitionCoordinateInterval1 clone() => copyWith();

  /// Copy function for [MolecularDefinitionCoordinateInterval1]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MolecularDefinitionCoordinateInterval1CopyWith<
          MolecularDefinitionCoordinateInterval1>
      get copyWith => _$MolecularDefinitionCoordinateInterval1CopyWithImpl<
              MolecularDefinitionCoordinateInterval1>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MolecularDefinitionCoordinateInterval1) {
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
      coordinateSystem,
      o.coordinateSystem,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      startX,
      o.startX,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      endX,
      o.endX,
    )) {
      return false;
    }
    return true;
  }
}

/// [MolecularDefinitionCoordinateSystem1]
/// The coordinate system used to define the location, which may vary
/// depending on application or context of use.
class MolecularDefinitionCoordinateSystem1 extends BackboneElement {
  /// Primary constructor for
  /// [MolecularDefinitionCoordinateSystem1]

  const MolecularDefinitionCoordinateSystem1({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.system,
    this.origin,
    this.normalizationMethod,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularDefinitionCoordinateSystem1.fromJson(
    Map<String, dynamic> json,
  ) {
    return MolecularDefinitionCoordinateSystem1(
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
      system: JsonParser.parseObject<CodeableConcept>(
        json,
        'system',
        CodeableConcept.fromJson,
      ),
      origin: JsonParser.parseObject<CodeableConcept>(
        json,
        'origin',
        CodeableConcept.fromJson,
      ),
      normalizationMethod: JsonParser.parseObject<CodeableConcept>(
        json,
        'normalizationMethod',
        CodeableConcept.fromJson,
      ),
    );
  }

  /// Deserialize [MolecularDefinitionCoordinateSystem1]
  /// from a [String] or [YamlMap] object
  factory MolecularDefinitionCoordinateSystem1.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularDefinitionCoordinateSystem1.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularDefinitionCoordinateSystem1.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularDefinitionCoordinateSystem1 '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularDefinitionCoordinateSystem1]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularDefinitionCoordinateSystem1.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularDefinitionCoordinateSystem1.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MolecularDefinitionCoordinateSystem1';

  /// [system]
  /// A definition of the coordinate system. Examples include 1-based
  /// character counting, and 0-based interval counting.
  final CodeableConcept? system;

  /// [origin]
  /// The location of the origin (0 or 1, depending on the coordinate
  /// system). For example, this could specify the origin is at the start of
  /// the sequence (e.g., 5’ end or N-terminus), the beginning of a
  /// designated feature (e.g., A in the ATG translation initiation codon),
  /// or the end of a designated feature (e.g., 3’ end of an exon, from which
  /// an offset is calculated into the following intron).
  final CodeableConcept? origin;

  /// [normalizationMethod]
  /// The normalization method used for determining a location within the
  /// coordinate system. Examples include left shift (e.g., VCF), right shift
  /// (e.g., HGVS), or fully justified (e.g., VOCA).
  final CodeableConcept? normalizationMethod;
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
      'system',
      system,
    );
    addField(
      'origin',
      origin,
    );
    addField(
      'normalizationMethod',
      normalizationMethod,
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
      'system',
      'origin',
      'normalizationMethod',
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
      case 'system':
        if (system != null) {
          fields.add(system!);
        }
      case 'origin':
        if (origin != null) {
          fields.add(origin!);
        }
      case 'normalizationMethod':
        if (normalizationMethod != null) {
          fields.add(normalizationMethod!);
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
  MolecularDefinitionCoordinateSystem1 clone() => copyWith();

  /// Copy function for [MolecularDefinitionCoordinateSystem1]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MolecularDefinitionCoordinateSystem1CopyWith<
          MolecularDefinitionCoordinateSystem1>
      get copyWith => _$MolecularDefinitionCoordinateSystem1CopyWithImpl<
              MolecularDefinitionCoordinateSystem1>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MolecularDefinitionCoordinateSystem1) {
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
      system,
      o.system,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      origin,
      o.origin,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      normalizationMethod,
      o.normalizationMethod,
    )) {
      return false;
    }
    return true;
  }
}

/// [MolecularDefinitionRepeated]
/// A representation of a molecular entity that is expressed as a number of
/// copies of a repeated motif.
class MolecularDefinitionRepeated extends BackboneElement {
  /// Primary constructor for
  /// [MolecularDefinitionRepeated]

  const MolecularDefinitionRepeated({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.sequenceMotif,
    required this.copyCount,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularDefinitionRepeated.fromJson(
    Map<String, dynamic> json,
  ) {
    return MolecularDefinitionRepeated(
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
      sequenceMotif: JsonParser.parseObject<Reference>(
        json,
        'sequenceMotif',
        Reference.fromJson,
      )!,
      copyCount: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'copyCount',
        FhirInteger.fromJson,
      )!,
    );
  }

  /// Deserialize [MolecularDefinitionRepeated]
  /// from a [String] or [YamlMap] object
  factory MolecularDefinitionRepeated.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularDefinitionRepeated.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularDefinitionRepeated.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularDefinitionRepeated '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularDefinitionRepeated]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularDefinitionRepeated.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularDefinitionRepeated.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MolecularDefinitionRepeated';

  /// [sequenceMotif]
  /// The motif that is repeated in tandem, which ultimately defines the
  /// intended molecular entity.
  final Reference sequenceMotif;

  /// [copyCount]
  /// The number of times the motif is repeated to create the intended
  /// molecular entity.
  final FhirInteger copyCount;
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
      'sequenceMotif',
      sequenceMotif,
    );
    addField(
      'copyCount',
      copyCount,
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
      'sequenceMotif',
      'copyCount',
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
      case 'sequenceMotif':
        fields.add(sequenceMotif);
      case 'copyCount':
        fields.add(copyCount);
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
  MolecularDefinitionRepeated clone() => copyWith();

  /// Copy function for [MolecularDefinitionRepeated]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MolecularDefinitionRepeatedCopyWith<MolecularDefinitionRepeated>
      get copyWith => _$MolecularDefinitionRepeatedCopyWithImpl<
              MolecularDefinitionRepeated>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MolecularDefinitionRepeated) {
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
      sequenceMotif,
      o.sequenceMotif,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      copyCount,
      o.copyCount,
    )) {
      return false;
    }
    return true;
  }
}

/// [MolecularDefinitionConcatenated]
/// A representation comprised of an ordered concatenation of two or more
/// molecular entities.
class MolecularDefinitionConcatenated extends BackboneElement {
  /// Primary constructor for
  /// [MolecularDefinitionConcatenated]

  const MolecularDefinitionConcatenated({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.sequenceElement,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularDefinitionConcatenated.fromJson(
    Map<String, dynamic> json,
  ) {
    return MolecularDefinitionConcatenated(
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
      sequenceElement: (json['sequenceElement'] as List<dynamic>)
          .map<MolecularDefinitionSequenceElement>(
            (v) => MolecularDefinitionSequenceElement.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [MolecularDefinitionConcatenated]
  /// from a [String] or [YamlMap] object
  factory MolecularDefinitionConcatenated.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularDefinitionConcatenated.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularDefinitionConcatenated.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularDefinitionConcatenated '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularDefinitionConcatenated]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularDefinitionConcatenated.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularDefinitionConcatenated.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MolecularDefinitionConcatenated';

  /// [sequenceElement]
  /// One of the concatenated entities within the concatenated
  /// representation.
  final List<MolecularDefinitionSequenceElement> sequenceElement;
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
      'sequenceElement',
      sequenceElement,
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
      'sequenceElement',
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
      case 'sequenceElement':
        fields.addAll(sequenceElement);
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
  MolecularDefinitionConcatenated clone() => copyWith();

  /// Copy function for [MolecularDefinitionConcatenated]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MolecularDefinitionConcatenatedCopyWith<MolecularDefinitionConcatenated>
      get copyWith => _$MolecularDefinitionConcatenatedCopyWithImpl<
              MolecularDefinitionConcatenated>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MolecularDefinitionConcatenated) {
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
    if (!FhirBase.listEquals<MolecularDefinitionSequenceElement>(
      sequenceElement,
      o.sequenceElement,
    )) {
      return false;
    }
    return true;
  }
}

/// [MolecularDefinitionSequenceElement]
/// One of the concatenated entities within the concatenated
/// representation.
class MolecularDefinitionSequenceElement extends BackboneElement {
  /// Primary constructor for
  /// [MolecularDefinitionSequenceElement]

  const MolecularDefinitionSequenceElement({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.sequence,
    required this.ordinalIndex,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularDefinitionSequenceElement.fromJson(
    Map<String, dynamic> json,
  ) {
    return MolecularDefinitionSequenceElement(
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
      sequence: JsonParser.parseObject<Reference>(
        json,
        'sequence',
        Reference.fromJson,
      )!,
      ordinalIndex: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'ordinalIndex',
        FhirInteger.fromJson,
      )!,
    );
  }

  /// Deserialize [MolecularDefinitionSequenceElement]
  /// from a [String] or [YamlMap] object
  factory MolecularDefinitionSequenceElement.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularDefinitionSequenceElement.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularDefinitionSequenceElement.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularDefinitionSequenceElement '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularDefinitionSequenceElement]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularDefinitionSequenceElement.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularDefinitionSequenceElement.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MolecularDefinitionSequenceElement';

  /// [sequence]
  /// A reference to the sequence that defines this specific concatenated
  /// element.
  final Reference sequence;

  /// [ordinalIndex]
  /// The ordinal index of the element within the concatenated
  /// representation.
  final FhirInteger ordinalIndex;
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
      'sequence',
      sequence,
    );
    addField(
      'ordinalIndex',
      ordinalIndex,
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
      'sequence',
      'ordinalIndex',
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
      case 'sequence':
        fields.add(sequence);
      case 'ordinalIndex':
        fields.add(ordinalIndex);
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
  MolecularDefinitionSequenceElement clone() => copyWith();

  /// Copy function for [MolecularDefinitionSequenceElement]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MolecularDefinitionSequenceElementCopyWith<
          MolecularDefinitionSequenceElement>
      get copyWith => _$MolecularDefinitionSequenceElementCopyWithImpl<
              MolecularDefinitionSequenceElement>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MolecularDefinitionSequenceElement) {
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
      sequence,
      o.sequence,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      ordinalIndex,
      o.ordinalIndex,
    )) {
      return false;
    }
    return true;
  }
}

/// [MolecularDefinitionRelative]
/// A molecular entity represented as an ordered series of edits on a
/// specified starting entity. This representation can be used to define
/// one entity relative to another.
class MolecularDefinitionRelative extends BackboneElement {
  /// Primary constructor for
  /// [MolecularDefinitionRelative]

  const MolecularDefinitionRelative({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.startingMolecule,
    this.edit,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularDefinitionRelative.fromJson(
    Map<String, dynamic> json,
  ) {
    return MolecularDefinitionRelative(
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
      startingMolecule: JsonParser.parseObject<Reference>(
        json,
        'startingMolecule',
        Reference.fromJson,
      )!,
      edit: (json['edit'] as List<dynamic>?)
          ?.map<MolecularDefinitionEdit>(
            (v) => MolecularDefinitionEdit.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [MolecularDefinitionRelative]
  /// from a [String] or [YamlMap] object
  factory MolecularDefinitionRelative.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularDefinitionRelative.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularDefinitionRelative.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularDefinitionRelative '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularDefinitionRelative]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularDefinitionRelative.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularDefinitionRelative.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MolecularDefinitionRelative';

  /// [startingMolecule]
  /// The molecular entity that serves as the starting point, on which edits
  /// will be applied.
  final Reference startingMolecule;

  /// [edit]
  /// A defined edit (change) to be applied to the molecular entity.
  final List<MolecularDefinitionEdit>? edit;
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
      'startingMolecule',
      startingMolecule,
    );
    addField(
      'edit',
      edit,
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
      'startingMolecule',
      'edit',
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
      case 'startingMolecule':
        fields.add(startingMolecule);
      case 'edit':
        if (edit != null) {
          fields.addAll(edit!);
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
  MolecularDefinitionRelative clone() => copyWith();

  /// Copy function for [MolecularDefinitionRelative]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MolecularDefinitionRelativeCopyWith<MolecularDefinitionRelative>
      get copyWith => _$MolecularDefinitionRelativeCopyWithImpl<
              MolecularDefinitionRelative>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MolecularDefinitionRelative) {
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
      startingMolecule,
      o.startingMolecule,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<MolecularDefinitionEdit>(
      edit,
      o.edit,
    )) {
      return false;
    }
    return true;
  }
}

/// [MolecularDefinitionEdit]
/// A defined edit (change) to be applied to the molecular entity.
class MolecularDefinitionEdit extends BackboneElement {
  /// Primary constructor for
  /// [MolecularDefinitionEdit]

  const MolecularDefinitionEdit({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.editOrder,
    this.coordinateInterval,
    required this.replacementMolecule,
    this.replacedMolecule,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularDefinitionEdit.fromJson(
    Map<String, dynamic> json,
  ) {
    return MolecularDefinitionEdit(
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
      editOrder: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'editOrder',
        FhirInteger.fromJson,
      ),
      coordinateInterval:
          JsonParser.parseObject<MolecularDefinitionCoordinateInterval>(
        json,
        'coordinateInterval',
        MolecularDefinitionCoordinateInterval.fromJson,
      ),
      replacementMolecule: JsonParser.parseObject<Reference>(
        json,
        'replacementMolecule',
        Reference.fromJson,
      )!,
      replacedMolecule: JsonParser.parseObject<Reference>(
        json,
        'replacedMolecule',
        Reference.fromJson,
      ),
    );
  }

  /// Deserialize [MolecularDefinitionEdit]
  /// from a [String] or [YamlMap] object
  factory MolecularDefinitionEdit.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularDefinitionEdit.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularDefinitionEdit.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularDefinitionEdit '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularDefinitionEdit]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularDefinitionEdit.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularDefinitionEdit.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MolecularDefinitionEdit';

  /// [editOrder]
  /// Defines the order of edits when multiple edits are to be applied to the
  /// startingMolecule. This is important when edits may overlap (intervals)
  /// or when edits change the length of the entity.
  final FhirInteger? editOrder;

  /// [coordinateInterval]
  /// The interval on startingMolecule that defines the portion to be
  /// extracted in order to create the intended entity.
  final MolecularDefinitionCoordinateInterval? coordinateInterval;

  /// [replacementMolecule]
  /// The molecular entity that serves as the replacement in the edit
  /// operation. After the edit has been applied, the state of the entity at
  /// the specified coordinateInterval is defined by the state of the
  /// replacementMolecule.
  final Reference replacementMolecule;

  /// [replacedMolecule]
  /// The portion of the molecular entity that is replaced by the
  /// replacementMolecule as a result of the edit. The value of this element
  /// can be derived as the state of the entity at the specified
  /// coordinateInterval, prior to the edit being applied. It is provided for
  /// convenience.
  final Reference? replacedMolecule;
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
      'editOrder',
      editOrder,
    );
    addField(
      'coordinateInterval',
      coordinateInterval,
    );
    addField(
      'replacementMolecule',
      replacementMolecule,
    );
    addField(
      'replacedMolecule',
      replacedMolecule,
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
      'editOrder',
      'coordinateInterval',
      'replacementMolecule',
      'replacedMolecule',
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
      case 'editOrder':
        if (editOrder != null) {
          fields.add(editOrder!);
        }
      case 'coordinateInterval':
        if (coordinateInterval != null) {
          fields.add(coordinateInterval!);
        }
      case 'replacementMolecule':
        fields.add(replacementMolecule);
      case 'replacedMolecule':
        if (replacedMolecule != null) {
          fields.add(replacedMolecule!);
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
  MolecularDefinitionEdit clone() => copyWith();

  /// Copy function for [MolecularDefinitionEdit]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MolecularDefinitionEditCopyWith<MolecularDefinitionEdit> get copyWith =>
      _$MolecularDefinitionEditCopyWithImpl<MolecularDefinitionEdit>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MolecularDefinitionEdit) {
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
      editOrder,
      o.editOrder,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      coordinateInterval,
      o.coordinateInterval,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      replacementMolecule,
      o.replacementMolecule,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      replacedMolecule,
      o.replacedMolecule,
    )) {
      return false;
    }
    return true;
  }
}

/// [MolecularDefinitionCoordinateInterval2]
/// The interval on startingMolecule that defines the portion to be
/// extracted in order to create the intended entity.
class MolecularDefinitionCoordinateInterval2 extends BackboneElement {
  /// Primary constructor for
  /// [MolecularDefinitionCoordinateInterval2]

  const MolecularDefinitionCoordinateInterval2({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.coordinateSystem,
    StartXMolecularDefinitionRepresentationRelativeEditCoordinateInterval?
        startX,
    Quantity? startQuantity,
    Range? startRange,
    EndXMolecularDefinitionRepresentationRelativeEditCoordinateInterval? endX,
    Quantity? endQuantity,
    Range? endRange,
    super.disallowExtensions,
  })  : startX = startX ?? startQuantity ?? startRange,
        endX = endX ?? endQuantity ?? endRange,
        super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularDefinitionCoordinateInterval2.fromJson(
    Map<String, dynamic> json,
  ) {
    return MolecularDefinitionCoordinateInterval2(
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
      coordinateSystem:
          JsonParser.parseObject<MolecularDefinitionCoordinateSystem>(
        json,
        'coordinateSystem',
        MolecularDefinitionCoordinateSystem.fromJson,
      ),
      startX: JsonParser.parsePolymorphic<
          StartXMolecularDefinitionRepresentationRelativeEditCoordinateInterval>(
        json,
        {
          'startQuantity': Quantity.fromJson,
          'startRange': Range.fromJson,
        },
      ),
      endX: JsonParser.parsePolymorphic<
          EndXMolecularDefinitionRepresentationRelativeEditCoordinateInterval>(
        json,
        {
          'endQuantity': Quantity.fromJson,
          'endRange': Range.fromJson,
        },
      ),
    );
  }

  /// Deserialize [MolecularDefinitionCoordinateInterval2]
  /// from a [String] or [YamlMap] object
  factory MolecularDefinitionCoordinateInterval2.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularDefinitionCoordinateInterval2.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularDefinitionCoordinateInterval2.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularDefinitionCoordinateInterval2 '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularDefinitionCoordinateInterval2]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularDefinitionCoordinateInterval2.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularDefinitionCoordinateInterval2.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MolecularDefinitionCoordinateInterval2';

  /// [coordinateSystem]
  /// The coordinate system used to define the location, which may vary
  /// depending on application or context of use.
  final MolecularDefinitionCoordinateSystem? coordinateSystem;

  /// [startX]
  /// The start location of the interval expressed as a precise coordinate
  /// (Quantity) or expressed as a range (Range) that is defined by low
  /// (range start) and high (range end). Open-ended ranges, where one end is
  /// unbounded, may be supported.
  final StartXMolecularDefinitionRepresentationRelativeEditCoordinateInterval?
      startX;

  /// Getter for [startQuantity] as a Quantity
  Quantity? get startQuantity => startX?.isAs<Quantity>();

  /// Getter for [startRange] as a Range
  Range? get startRange => startX?.isAs<Range>();

  /// [endX]
  /// The end location of the interval expressed as a precise coordinate
  /// (Quantity) or as a range (Range) that is defined by low (range start)
  /// and high (range end). Open-ended ranges, where one end is unbounded,
  /// may be supported..
  final EndXMolecularDefinitionRepresentationRelativeEditCoordinateInterval?
      endX;

  /// Getter for [endQuantity] as a Quantity
  Quantity? get endQuantity => endX?.isAs<Quantity>();

  /// Getter for [endRange] as a Range
  Range? get endRange => endX?.isAs<Range>();
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
      'coordinateSystem',
      coordinateSystem,
    );
    if (startX != null) {
      final fhirType = startX!.fhirType;
      addField(
        'start${fhirType.capitalize()}',
        startX,
      );
    }

    if (endX != null) {
      final fhirType = endX!.fhirType;
      addField(
        'end${fhirType.capitalize()}',
        endX,
      );
    }

    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'coordinateSystem',
      'startX',
      'endX',
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
      case 'coordinateSystem':
        if (coordinateSystem != null) {
          fields.add(coordinateSystem!);
        }
      case 'start':
        if (startX != null) {
          fields.add(startX!);
        }
      case 'startX':
        if (startX != null) {
          fields.add(startX!);
        }
      case 'startQuantity':
        if (startX is Quantity) {
          fields.add(startX!);
        }
      case 'startRange':
        if (startX is Range) {
          fields.add(startX!);
        }
      case 'end':
        if (endX != null) {
          fields.add(endX!);
        }
      case 'endX':
        if (endX != null) {
          fields.add(endX!);
        }
      case 'endQuantity':
        if (endX is Quantity) {
          fields.add(endX!);
        }
      case 'endRange':
        if (endX is Range) {
          fields.add(endX!);
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
  MolecularDefinitionCoordinateInterval2 clone() => copyWith();

  /// Copy function for [MolecularDefinitionCoordinateInterval2]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MolecularDefinitionCoordinateInterval2CopyWith<
          MolecularDefinitionCoordinateInterval2>
      get copyWith => _$MolecularDefinitionCoordinateInterval2CopyWithImpl<
              MolecularDefinitionCoordinateInterval2>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MolecularDefinitionCoordinateInterval2) {
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
      coordinateSystem,
      o.coordinateSystem,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      startX,
      o.startX,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      endX,
      o.endX,
    )) {
      return false;
    }
    return true;
  }
}

/// [MolecularDefinitionCoordinateSystem2]
/// The coordinate system used to define the location, which may vary
/// depending on application or context of use.
class MolecularDefinitionCoordinateSystem2 extends BackboneElement {
  /// Primary constructor for
  /// [MolecularDefinitionCoordinateSystem2]

  const MolecularDefinitionCoordinateSystem2({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.system,
    this.origin,
    this.normalizationMethod,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularDefinitionCoordinateSystem2.fromJson(
    Map<String, dynamic> json,
  ) {
    return MolecularDefinitionCoordinateSystem2(
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
      system: JsonParser.parseObject<CodeableConcept>(
        json,
        'system',
        CodeableConcept.fromJson,
      ),
      origin: JsonParser.parseObject<CodeableConcept>(
        json,
        'origin',
        CodeableConcept.fromJson,
      ),
      normalizationMethod: JsonParser.parseObject<CodeableConcept>(
        json,
        'normalizationMethod',
        CodeableConcept.fromJson,
      ),
    );
  }

  /// Deserialize [MolecularDefinitionCoordinateSystem2]
  /// from a [String] or [YamlMap] object
  factory MolecularDefinitionCoordinateSystem2.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularDefinitionCoordinateSystem2.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularDefinitionCoordinateSystem2.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularDefinitionCoordinateSystem2 '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularDefinitionCoordinateSystem2]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularDefinitionCoordinateSystem2.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularDefinitionCoordinateSystem2.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MolecularDefinitionCoordinateSystem2';

  /// [system]
  /// A definition of the coordinate system. Examples include 1-based
  /// character counting, and 0-based interval counting.
  final CodeableConcept? system;

  /// [origin]
  /// The location of the origin (0 or 1, depending on the coordinate
  /// system). For example, this could specify the origin is at the start of
  /// the sequence (e.g., 5’ end or N-terminus), the beginning of a
  /// designated feature (e.g., A in the ATG translation initiation codon),
  /// or the end of a designated feature (e.g., 3’ end of an exon, from which
  /// an offset is calculated into the following intron).
  final CodeableConcept? origin;

  /// [normalizationMethod]
  /// The normalization method used for determining a location within the
  /// coordinate system. Examples include left shift (e.g., VCF), right shift
  /// (e.g., HGVS), or fully justified (e.g., VOCA).
  final CodeableConcept? normalizationMethod;
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
      'system',
      system,
    );
    addField(
      'origin',
      origin,
    );
    addField(
      'normalizationMethod',
      normalizationMethod,
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
      'system',
      'origin',
      'normalizationMethod',
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
      case 'system':
        if (system != null) {
          fields.add(system!);
        }
      case 'origin':
        if (origin != null) {
          fields.add(origin!);
        }
      case 'normalizationMethod':
        if (normalizationMethod != null) {
          fields.add(normalizationMethod!);
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
  MolecularDefinitionCoordinateSystem2 clone() => copyWith();

  /// Copy function for [MolecularDefinitionCoordinateSystem2]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MolecularDefinitionCoordinateSystem2CopyWith<
          MolecularDefinitionCoordinateSystem2>
      get copyWith => _$MolecularDefinitionCoordinateSystem2CopyWithImpl<
              MolecularDefinitionCoordinateSystem2>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MolecularDefinitionCoordinateSystem2) {
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
      system,
      o.system,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      origin,
      o.origin,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      normalizationMethod,
      o.normalizationMethod,
    )) {
      return false;
    }
    return true;
  }
}
