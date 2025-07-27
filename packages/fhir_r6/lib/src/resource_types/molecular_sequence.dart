import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'molecular_sequence.g.dart';

/// [MolecularSequence]
/// Representation of a molecular sequence.
class MolecularSequence extends DomainResource {
  /// Primary constructor for
  /// [MolecularSequence]

  const MolecularSequence({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.type,
    this.subject,
    this.focus,
    this.specimen,
    this.device,
    this.performer,
    this.literal,
    this.formatted,
    this.relative,
  }) : super(
          resourceType: R5ResourceType.MolecularSequence,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularSequence.fromJson(
    Map<String, dynamic> json,
  ) {
    return MolecularSequence(
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
      type: JsonParser.parsePrimitive<SequenceType>(
        json,
        'type',
        SequenceType.fromJson,
      ),
      subject: JsonParser.parseObject<Reference>(
        json,
        'subject',
        Reference.fromJson,
      ),
      focus: (json['focus'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      specimen: JsonParser.parseObject<Reference>(
        json,
        'specimen',
        Reference.fromJson,
      ),
      device: JsonParser.parseObject<Reference>(
        json,
        'device',
        Reference.fromJson,
      ),
      performer: JsonParser.parseObject<Reference>(
        json,
        'performer',
        Reference.fromJson,
      ),
      literal: JsonParser.parsePrimitive<FhirString>(
        json,
        'literal',
        FhirString.fromJson,
      ),
      formatted: (json['formatted'] as List<dynamic>?)
          ?.map<Attachment>(
            (v) => Attachment.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      relative: (json['relative'] as List<dynamic>?)
          ?.map<MolecularSequenceRelative>(
            (v) => MolecularSequenceRelative.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [MolecularSequence]
  /// from a [String] or [YamlMap] object
  factory MolecularSequence.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularSequence.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularSequence.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularSequence '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularSequence]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularSequence.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularSequence.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MolecularSequence';

  /// [identifier]
  /// A unique identifier for this particular sequence instance.
  final List<Identifier>? identifier;

  /// [type]
  /// Amino Acid Sequence/ DNA Sequence / RNA Sequence.
  final SequenceType? type;

  /// [subject]
  /// Indicates the subject this sequence is associated too.
  final Reference? subject;

  /// [focus]
  /// The actual focus of a molecular sequence when it is not the patient of
  /// record representing something or someone associated with the patient
  /// such as a spouse, parent, child, or sibling. For example, in trio
  /// testing, the subject would be the child (proband) and the focus would
  /// be the parent.
  final List<Reference>? focus;

  /// [specimen]
  /// Specimen used for sequencing.
  final Reference? specimen;

  /// [device]
  /// The method for sequencing, for example, chip information.
  final Reference? device;

  /// [performer]
  /// The organization or lab that should be responsible for this result.
  final Reference? performer;

  /// [literal]
  /// Sequence that was observed.
  final FhirString? literal;

  /// [formatted]
  /// Sequence that was observed as file content. Can be an actual file
  /// contents, or referenced by a URL to an external system.
  final List<Attachment>? formatted;

  /// [relative]
  /// A sequence defined relative to another sequence.
  final List<MolecularSequenceRelative>? relative;
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
      'type',
      type,
    );
    addField(
      'subject',
      subject,
    );
    addField(
      'focus',
      focus,
    );
    addField(
      'specimen',
      specimen,
    );
    addField(
      'device',
      device,
    );
    addField(
      'performer',
      performer,
    );
    addField(
      'literal',
      literal,
    );
    addField(
      'formatted',
      formatted,
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
      'meta',
      'implicitRules',
      'language',
      'text',
      'contained',
      'extension',
      'modifierExtension',
      'identifier',
      'type',
      'subject',
      'focus',
      'specimen',
      'device',
      'performer',
      'literal',
      'formatted',
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
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'subject':
        if (subject != null) {
          fields.add(subject!);
        }
      case 'focus':
        if (focus != null) {
          fields.addAll(focus!);
        }
      case 'specimen':
        if (specimen != null) {
          fields.add(specimen!);
        }
      case 'device':
        if (device != null) {
          fields.add(device!);
        }
      case 'performer':
        if (performer != null) {
          fields.add(performer!);
        }
      case 'literal':
        if (literal != null) {
          fields.add(literal!);
        }
      case 'formatted':
        if (formatted != null) {
          fields.addAll(formatted!);
        }
      case 'relative':
        if (relative != null) {
          fields.addAll(relative!);
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
  MolecularSequence clone() => copyWith();

  /// Copy function for [MolecularSequence]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MolecularSequenceCopyWith<MolecularSequence> get copyWith =>
      _$MolecularSequenceCopyWithImpl<MolecularSequence>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MolecularSequence) {
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
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      subject,
      o.subject,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      focus,
      o.focus,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      specimen,
      o.specimen,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      device,
      o.device,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      performer,
      o.performer,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      literal,
      o.literal,
    )) {
      return false;
    }
    if (!listEquals<Attachment>(
      formatted,
      o.formatted,
    )) {
      return false;
    }
    if (!listEquals<MolecularSequenceRelative>(
      relative,
      o.relative,
    )) {
      return false;
    }
    return true;
  }
}

/// [MolecularSequenceRelative]
/// A sequence defined relative to another sequence.
class MolecularSequenceRelative extends BackboneElement {
  /// Primary constructor for
  /// [MolecularSequenceRelative]

  const MolecularSequenceRelative({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.coordinateSystem,
    this.ordinalPosition,
    this.sequenceRange,
    this.startingSequence,
    this.edit,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularSequenceRelative.fromJson(
    Map<String, dynamic> json,
  ) {
    return MolecularSequenceRelative(
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
      coordinateSystem: JsonParser.parseObject<CodeableConcept>(
        json,
        'coordinateSystem',
        CodeableConcept.fromJson,
      )!,
      ordinalPosition: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'ordinalPosition',
        FhirInteger.fromJson,
      ),
      sequenceRange: JsonParser.parseObject<Range>(
        json,
        'sequenceRange',
        Range.fromJson,
      ),
      startingSequence:
          JsonParser.parseObject<MolecularSequenceStartingSequence>(
        json,
        'startingSequence',
        MolecularSequenceStartingSequence.fromJson,
      ),
      edit: (json['edit'] as List<dynamic>?)
          ?.map<MolecularSequenceEdit>(
            (v) => MolecularSequenceEdit.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [MolecularSequenceRelative]
  /// from a [String] or [YamlMap] object
  factory MolecularSequenceRelative.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularSequenceRelative.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularSequenceRelative.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularSequenceRelative '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularSequenceRelative]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularSequenceRelative.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularSequenceRelative.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MolecularSequenceRelative';

  /// [coordinateSystem]
  /// These are different ways of identifying nucleotides or amino acids
  /// within a sequence. Different databases and file types may use different
  /// systems. For detail definitions, see https://loinc.org/92822-6/ for
  /// more detail.
  final CodeableConcept coordinateSystem;

  /// [ordinalPosition]
  /// Indicates the order in which the sequence should be considered when
  /// putting multiple 'relative' elements together.
  final FhirInteger? ordinalPosition;

  /// [sequenceRange]
  /// Indicates the nucleotide range in the composed sequence when multiple
  /// 'relative' elements are used together.
  final Range? sequenceRange;

  /// [startingSequence]
  /// A sequence that is used as a starting sequence to describe variants
  /// that are present in a sequence analyzed.
  final MolecularSequenceStartingSequence? startingSequence;

  /// [edit]
  /// Changes in sequence from the starting sequence.
  final List<MolecularSequenceEdit>? edit;
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
    addField(
      'ordinalPosition',
      ordinalPosition,
    );
    addField(
      'sequenceRange',
      sequenceRange,
    );
    addField(
      'startingSequence',
      startingSequence,
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
      'coordinateSystem',
      'ordinalPosition',
      'sequenceRange',
      'startingSequence',
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
      case 'coordinateSystem':
        fields.add(coordinateSystem);
      case 'ordinalPosition':
        if (ordinalPosition != null) {
          fields.add(ordinalPosition!);
        }
      case 'sequenceRange':
        if (sequenceRange != null) {
          fields.add(sequenceRange!);
        }
      case 'startingSequence':
        if (startingSequence != null) {
          fields.add(startingSequence!);
        }
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
  MolecularSequenceRelative clone() => copyWith();

  /// Copy function for [MolecularSequenceRelative]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MolecularSequenceRelativeCopyWith<MolecularSequenceRelative> get copyWith =>
      _$MolecularSequenceRelativeCopyWithImpl<MolecularSequenceRelative>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MolecularSequenceRelative) {
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
      coordinateSystem,
      o.coordinateSystem,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      ordinalPosition,
      o.ordinalPosition,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      sequenceRange,
      o.sequenceRange,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      startingSequence,
      o.startingSequence,
    )) {
      return false;
    }
    if (!listEquals<MolecularSequenceEdit>(
      edit,
      o.edit,
    )) {
      return false;
    }
    return true;
  }
}

/// [MolecularSequenceStartingSequence]
/// A sequence that is used as a starting sequence to describe variants
/// that are present in a sequence analyzed.
class MolecularSequenceStartingSequence extends BackboneElement {
  /// Primary constructor for
  /// [MolecularSequenceStartingSequence]

  const MolecularSequenceStartingSequence({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.genomeAssembly,
    this.chromosome,
    SequenceXMolecularSequenceStartingSequence? sequenceX,
    CodeableConcept? sequenceCodeableConcept,
    FhirString? sequenceString,
    Reference? sequenceReference,
    this.windowStart,
    this.windowEnd,
    this.orientation,
    this.strand,
    super.disallowExtensions,
  })  : sequenceX = sequenceX ??
            sequenceCodeableConcept ??
            sequenceString ??
            sequenceReference,
        super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularSequenceStartingSequence.fromJson(
    Map<String, dynamic> json,
  ) {
    return MolecularSequenceStartingSequence(
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
      genomeAssembly: JsonParser.parseObject<CodeableConcept>(
        json,
        'genomeAssembly',
        CodeableConcept.fromJson,
      ),
      chromosome: JsonParser.parseObject<CodeableConcept>(
        json,
        'chromosome',
        CodeableConcept.fromJson,
      ),
      sequenceX: JsonParser.parsePolymorphic<
          SequenceXMolecularSequenceStartingSequence>(
        json,
        {
          'sequenceCodeableConcept': CodeableConcept.fromJson,
          'sequenceString': FhirString.fromJson,
          'sequenceReference': Reference.fromJson,
        },
      ),
      windowStart: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'windowStart',
        FhirInteger.fromJson,
      ),
      windowEnd: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'windowEnd',
        FhirInteger.fromJson,
      ),
      orientation: JsonParser.parsePrimitive<OrientationType>(
        json,
        'orientation',
        OrientationType.fromJson,
      ),
      strand: JsonParser.parsePrimitive<StrandType>(
        json,
        'strand',
        StrandType.fromJson,
      ),
    );
  }

  /// Deserialize [MolecularSequenceStartingSequence]
  /// from a [String] or [YamlMap] object
  factory MolecularSequenceStartingSequence.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularSequenceStartingSequence.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularSequenceStartingSequence.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularSequenceStartingSequence '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularSequenceStartingSequence]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularSequenceStartingSequence.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularSequenceStartingSequence.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MolecularSequenceStartingSequence';

  /// [genomeAssembly]
  /// The genome assembly used for starting sequence, e.g. GRCh38.
  final CodeableConcept? genomeAssembly;

  /// [chromosome]
  /// Structural unit composed of a nucleic acid molecule which controls its
  /// own replication through the interaction of specific proteins at one or
  /// more origins of replication
  /// ([SO:0000340](http://www.sequenceontology.org/browser/current_svn/term/SO:0000340)).
  final CodeableConcept? chromosome;

  /// [sequenceX]
  /// The reference sequence that represents the starting sequence.
  final SequenceXMolecularSequenceStartingSequence? sequenceX;

  /// Getter for [sequenceCodeableConcept] as a CodeableConcept
  CodeableConcept? get sequenceCodeableConcept =>
      sequenceX?.isAs<CodeableConcept>();

  /// Getter for [sequenceString] as a FhirString
  FhirString? get sequenceString => sequenceX?.isAs<FhirString>();

  /// Getter for [sequenceReference] as a Reference
  Reference? get sequenceReference => sequenceX?.isAs<Reference>();

  /// [windowStart]
  /// Start position of the window on the starting sequence. This value
  /// should honor the rules of the coordinateSystem.
  final FhirInteger? windowStart;

  /// [windowEnd]
  /// End position of the window on the starting sequence. This value should
  /// honor the rules of the coordinateSystem.
  final FhirInteger? windowEnd;

  /// [orientation]
  /// A relative reference to a DNA strand based on gene orientation. The
  /// strand that contains the open reading frame of the gene is the "sense"
  /// strand, and the opposite complementary strand is the "antisense"
  /// strand.
  final OrientationType? orientation;

  /// [strand]
  /// An absolute reference to a strand. The Watson strand is the strand
  /// whose 5'-end is on the short arm of the chromosome, and the Crick
  /// strand as the one whose 5'-end is on the long arm.
  final StrandType? strand;
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
      'chromosome',
      chromosome,
    );
    if (sequenceX != null) {
      final fhirType = sequenceX!.fhirType;
      addField(
        'sequence${fhirType.capitalize()}',
        sequenceX,
      );
    }

    addField(
      'windowStart',
      windowStart,
    );
    addField(
      'windowEnd',
      windowEnd,
    );
    addField(
      'orientation',
      orientation,
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
      'genomeAssembly',
      'chromosome',
      'sequenceX',
      'windowStart',
      'windowEnd',
      'orientation',
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
      case 'genomeAssembly':
        if (genomeAssembly != null) {
          fields.add(genomeAssembly!);
        }
      case 'chromosome':
        if (chromosome != null) {
          fields.add(chromosome!);
        }
      case 'sequence':
        fields.add(sequenceX!);
      case 'sequenceX':
        fields.add(sequenceX!);
      case 'sequenceCodeableConcept':
        if (sequenceX is CodeableConcept) {
          fields.add(sequenceX!);
        }
      case 'sequenceString':
        if (sequenceX is FhirString) {
          fields.add(sequenceX!);
        }
      case 'sequenceReference':
        if (sequenceX is Reference) {
          fields.add(sequenceX!);
        }
      case 'windowStart':
        if (windowStart != null) {
          fields.add(windowStart!);
        }
      case 'windowEnd':
        if (windowEnd != null) {
          fields.add(windowEnd!);
        }
      case 'orientation':
        if (orientation != null) {
          fields.add(orientation!);
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
  MolecularSequenceStartingSequence clone() => copyWith();

  /// Copy function for [MolecularSequenceStartingSequence]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MolecularSequenceStartingSequenceCopyWith<MolecularSequenceStartingSequence>
      get copyWith => _$MolecularSequenceStartingSequenceCopyWithImpl<
              MolecularSequenceStartingSequence>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MolecularSequenceStartingSequence) {
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
      genomeAssembly,
      o.genomeAssembly,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      chromosome,
      o.chromosome,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      sequenceX,
      o.sequenceX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      windowStart,
      o.windowStart,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      windowEnd,
      o.windowEnd,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      orientation,
      o.orientation,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      strand,
      o.strand,
    )) {
      return false;
    }
    return true;
  }
}

/// [MolecularSequenceEdit]
/// Changes in sequence from the starting sequence.
class MolecularSequenceEdit extends BackboneElement {
  /// Primary constructor for
  /// [MolecularSequenceEdit]

  const MolecularSequenceEdit({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.start,
    this.end,
    this.replacementSequence,
    this.replacedSequence,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularSequenceEdit.fromJson(
    Map<String, dynamic> json,
  ) {
    return MolecularSequenceEdit(
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
      start: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'start',
        FhirInteger.fromJson,
      ),
      end: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'end',
        FhirInteger.fromJson,
      ),
      replacementSequence: JsonParser.parsePrimitive<FhirString>(
        json,
        'replacementSequence',
        FhirString.fromJson,
      ),
      replacedSequence: JsonParser.parsePrimitive<FhirString>(
        json,
        'replacedSequence',
        FhirString.fromJson,
      ),
    );
  }

  /// Deserialize [MolecularSequenceEdit]
  /// from a [String] or [YamlMap] object
  factory MolecularSequenceEdit.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularSequenceEdit.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularSequenceEdit.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularSequenceEdit '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularSequenceEdit]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularSequenceEdit.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularSequenceEdit.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MolecularSequenceEdit';

  /// [start]
  /// Start position of the edit on the starting sequence. If the coordinate
  /// system is either 0-based or 1-based, then start position is inclusive.
  final FhirInteger? start;

  /// [end]
  /// End position of the edit on the starting sequence. If the coordinate
  /// system is 0-based then end is exclusive and does not include the last
  /// position. If the coordinate system is 1-base, then end is inclusive and
  /// includes the last position.
  final FhirInteger? end;

  /// [replacementSequence]
  /// Allele that was observed. Nucleotide(s)/amino acids from start position
  /// of sequence to stop position of sequence on the positive (+) strand of
  /// the observed sequence. When the sequence type is DNA, it should be the
  /// sequence on the positive (+) strand. This will lay in the range between
  /// variant.start and variant.end.
  final FhirString? replacementSequence;

  /// [replacedSequence]
  /// Allele in the starting sequence. Nucleotide(s)/amino acids from start
  /// position of sequence to stop position of sequence on the positive (+)
  /// strand of the starting sequence. When the sequence type is DNA, it
  /// should be the sequence on the positive (+) strand. This will lay in the
  /// range between variant.start and variant.end.
  final FhirString? replacedSequence;
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
      'start',
      start,
    );
    addField(
      'end',
      end,
    );
    addField(
      'replacementSequence',
      replacementSequence,
    );
    addField(
      'replacedSequence',
      replacedSequence,
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
      'start',
      'end',
      'replacementSequence',
      'replacedSequence',
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
      case 'start':
        if (start != null) {
          fields.add(start!);
        }
      case 'end':
        if (end != null) {
          fields.add(end!);
        }
      case 'replacementSequence':
        if (replacementSequence != null) {
          fields.add(replacementSequence!);
        }
      case 'replacedSequence':
        if (replacedSequence != null) {
          fields.add(replacedSequence!);
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
  MolecularSequenceEdit clone() => copyWith();

  /// Copy function for [MolecularSequenceEdit]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MolecularSequenceEditCopyWith<MolecularSequenceEdit> get copyWith =>
      _$MolecularSequenceEditCopyWithImpl<MolecularSequenceEdit>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MolecularSequenceEdit) {
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
      start,
      o.start,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      end,
      o.end,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      replacementSequence,
      o.replacementSequence,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      replacedSequence,
      o.replacedSequence,
    )) {
      return false;
    }
    return true;
  }
}
