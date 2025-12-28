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
    this.literal,
    this.file,
    this.relative,
    this.extracted,
    this.repeated,
    this.concatenated,
  }) : super(
          resourceType: R6ResourceType.MolecularSequence,
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
      literal: (json['literal'] as List<dynamic>?)
          ?.map<MolecularSequenceLiteral>(
            (v) => MolecularSequenceLiteral.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      file: (json['file'] as List<dynamic>?)
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
      extracted: (json['extracted'] as List<dynamic>?)
          ?.map<MolecularSequenceExtracted>(
            (v) => MolecularSequenceExtracted.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      repeated: (json['repeated'] as List<dynamic>?)
          ?.map<MolecularSequenceRepeated>(
            (v) => MolecularSequenceRepeated.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      concatenated: JsonParser.parseObject<MolecularSequenceConcatenated>(
        json,
        'concatenated',
        MolecularSequenceConcatenated.fromJson,
      ),
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
  /// The type of the Molecular Sequence (Amino Acid Sequence, DNA Sequence,
  /// RNA Sequence).
  final SequenceType? type;

  /// [literal]
  /// A literal representation of a Molecular Sequence.
  final List<MolecularSequenceLiteral>? literal;

  /// [file]
  /// Sequence that was observed as file content. Can be an actual file
  /// contents, or referenced by a URL to an external system.
  final List<Attachment>? file;

  /// [relative]
  /// A Molecular Sequence that is represented as an ordered series of edits
  /// on a specified starting sequence.
  final List<MolecularSequenceRelative>? relative;

  /// [extracted]
  /// A Molecular Sequence that is represented as an extracted portion of a
  /// different Molecular Sequence.
  final List<MolecularSequenceExtracted>? extracted;

  /// [repeated]
  /// A Molecular Sequence that is represented as a repeated sequence motif.
  final List<MolecularSequenceRepeated>? repeated;

  /// [concatenated]
  /// A Molecular Sequence that is represented as an ordered concatenation of
  /// two or more Molecular Sequences.
  final MolecularSequenceConcatenated? concatenated;
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
      'literal',
      literal,
    );
    addField(
      'file',
      file,
    );
    addField(
      'relative',
      relative,
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
      'literal',
      'file',
      'relative',
      'extracted',
      'repeated',
      'concatenated',
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
      case 'literal':
        if (literal != null) {
          fields.addAll(literal!);
        }
      case 'file':
        if (file != null) {
          fields.addAll(file!);
        }
      case 'relative':
        if (relative != null) {
          fields.addAll(relative!);
        }
      case 'extracted':
        if (extracted != null) {
          fields.addAll(extracted!);
        }
      case 'repeated':
        if (repeated != null) {
          fields.addAll(repeated!);
        }
      case 'concatenated':
        if (concatenated != null) {
          fields.add(concatenated!);
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
    if (!listEquals<MolecularSequenceLiteral>(
      literal,
      o.literal,
    )) {
      return false;
    }
    if (!listEquals<Attachment>(
      file,
      o.file,
    )) {
      return false;
    }
    if (!listEquals<MolecularSequenceRelative>(
      relative,
      o.relative,
    )) {
      return false;
    }
    if (!listEquals<MolecularSequenceExtracted>(
      extracted,
      o.extracted,
    )) {
      return false;
    }
    if (!listEquals<MolecularSequenceRepeated>(
      repeated,
      o.repeated,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      concatenated,
      o.concatenated,
    )) {
      return false;
    }
    return true;
  }
}

/// [MolecularSequenceLiteral]
/// A literal representation of a Molecular Sequence.
class MolecularSequenceLiteral extends BackboneElement {
  /// Primary constructor for
  /// [MolecularSequenceLiteral]

  const MolecularSequenceLiteral({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.sequenceValue,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularSequenceLiteral.fromJson(
    Map<String, dynamic> json,
  ) {
    return MolecularSequenceLiteral(
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
      sequenceValue: JsonParser.parsePrimitive<FhirString>(
        json,
        'sequenceValue',
        FhirString.fromJson,
      )!,
    );
  }

  /// Deserialize [MolecularSequenceLiteral]
  /// from a [String] or [YamlMap] object
  factory MolecularSequenceLiteral.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularSequenceLiteral.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularSequenceLiteral.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularSequenceLiteral '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularSequenceLiteral]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularSequenceLiteral.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularSequenceLiteral.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MolecularSequenceLiteral';

  /// [sequenceValue]
  /// The primary (linear) sequence, expressed as a literal string.
  final FhirString sequenceValue;
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
      'sequenceValue',
      sequenceValue,
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
      'sequenceValue',
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
      case 'sequenceValue':
        fields.add(sequenceValue);
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
  MolecularSequenceLiteral clone() => copyWith();

  /// Copy function for [MolecularSequenceLiteral]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MolecularSequenceLiteralCopyWith<MolecularSequenceLiteral> get copyWith =>
      _$MolecularSequenceLiteralCopyWithImpl<MolecularSequenceLiteral>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MolecularSequenceLiteral) {
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
      sequenceValue,
      o.sequenceValue,
    )) {
      return false;
    }
    return true;
  }
}

/// [MolecularSequenceRelative]
/// A Molecular Sequence that is represented as an ordered series of edits
/// on a specified starting sequence.
class MolecularSequenceRelative extends BackboneElement {
  /// Primary constructor for
  /// [MolecularSequenceRelative]

  const MolecularSequenceRelative({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.startingSequence,
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
      startingSequence: JsonParser.parseObject<Reference>(
        json,
        'startingSequence',
        Reference.fromJson,
      )!,
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

  /// [startingSequence]
  /// The Molecular Sequence that serves as the starting sequence, on which
  /// edits will be applied.
  final Reference startingSequence;

  /// [edit]
  /// An edit (change) made to a sequence.
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
      case 'startingSequence':
        fields.add(startingSequence);
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

/// [MolecularSequenceEdit]
/// An edit (change) made to a sequence.
class MolecularSequenceEdit extends BackboneElement {
  /// Primary constructor for
  /// [MolecularSequenceEdit]

  const MolecularSequenceEdit({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.editOrder,
    required this.coordinateSystem,
    required this.start,
    required this.end,
    required this.replacementSequence,
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
      editOrder: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'editOrder',
        FhirInteger.fromJson,
      ),
      coordinateSystem: JsonParser.parseObject<CodeableConcept>(
        json,
        'coordinateSystem',
        CodeableConcept.fromJson,
      )!,
      start: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'start',
        FhirInteger.fromJson,
      )!,
      end: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'end',
        FhirInteger.fromJson,
      )!,
      replacementSequence: JsonParser.parseObject<Reference>(
        json,
        'replacementSequence',
        Reference.fromJson,
      )!,
      replacedSequence: JsonParser.parseObject<Reference>(
        json,
        'replacedSequence',
        Reference.fromJson,
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

  /// [editOrder]
  /// The order of this edit, relative to other edits on the starting
  /// sequence.
  final FhirInteger? editOrder;

  /// [coordinateSystem]
  /// The coordinate system used to define the edited intervals on the
  /// starting sequence. Coordinate systems are usually 0- or 1-based.
  final CodeableConcept coordinateSystem;

  /// [start]
  /// The start coordinate of the interval that will be edited.
  final FhirInteger start;

  /// [end]
  /// The end coordinate of the interval that will be edited.
  final FhirInteger end;

  /// [replacementSequence]
  /// The sequence that defines the replacement sequence used in the edit
  /// operation.
  final Reference replacementSequence;

  /// [replacedSequence]
  /// The sequence on the 'starting' sequence for the edit operation, defined
  /// by the specified interval, that will be replaced during the edit.
  final Reference? replacedSequence;
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
      'coordinateSystem',
      coordinateSystem,
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
      'editOrder',
      'coordinateSystem',
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
      case 'editOrder':
        if (editOrder != null) {
          fields.add(editOrder!);
        }
      case 'coordinateSystem':
        fields.add(coordinateSystem);
      case 'start':
        fields.add(start);
      case 'end':
        fields.add(end);
      case 'replacementSequence':
        fields.add(replacementSequence);
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
      editOrder,
      o.editOrder,
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

/// [MolecularSequenceExtracted]
/// A Molecular Sequence that is represented as an extracted portion of a
/// different Molecular Sequence.
class MolecularSequenceExtracted extends BackboneElement {
  /// Primary constructor for
  /// [MolecularSequenceExtracted]

  const MolecularSequenceExtracted({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.startingSequence,
    required this.start,
    required this.end,
    required this.coordinateSystem,
    this.reverseComplement,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularSequenceExtracted.fromJson(
    Map<String, dynamic> json,
  ) {
    return MolecularSequenceExtracted(
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
      startingSequence: JsonParser.parseObject<Reference>(
        json,
        'startingSequence',
        Reference.fromJson,
      )!,
      start: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'start',
        FhirInteger.fromJson,
      )!,
      end: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'end',
        FhirInteger.fromJson,
      )!,
      coordinateSystem: JsonParser.parseObject<CodeableConcept>(
        json,
        'coordinateSystem',
        CodeableConcept.fromJson,
      )!,
      reverseComplement: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'reverseComplement',
        FhirBoolean.fromJson,
      ),
    );
  }

  /// Deserialize [MolecularSequenceExtracted]
  /// from a [String] or [YamlMap] object
  factory MolecularSequenceExtracted.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularSequenceExtracted.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularSequenceExtracted.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularSequenceExtracted '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularSequenceExtracted]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularSequenceExtracted.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularSequenceExtracted.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MolecularSequenceExtracted';

  /// [startingSequence]
  /// The Molecular Sequence that serves as the parent sequence, from which
  /// the intended sequence will be extracted.
  final Reference startingSequence;

  /// [start]
  /// The start coordinate (on the parent sequence) of the interval that
  /// defines the subsequence to be extracted.
  final FhirInteger start;

  /// [end]
  /// The end coordinate (on the parent sequence) of the interval that
  /// defines the subsequence to be extracted.
  final FhirInteger end;

  /// [coordinateSystem]
  /// The coordinate system used to define the interval that defines the
  /// subsequence to be extracted. Coordinate systems are usually 0- or
  /// 1-based.
  final CodeableConcept coordinateSystem;

  /// [reverseComplement]
  /// A flag that indicates whether the extracted sequence should be reverse
  /// complemented.
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
      'startingSequence',
      startingSequence,
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
      'coordinateSystem',
      coordinateSystem,
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
      'startingSequence',
      'start',
      'end',
      'coordinateSystem',
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
      case 'startingSequence':
        fields.add(startingSequence);
      case 'start':
        fields.add(start);
      case 'end':
        fields.add(end);
      case 'coordinateSystem':
        fields.add(coordinateSystem);
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
  MolecularSequenceExtracted clone() => copyWith();

  /// Copy function for [MolecularSequenceExtracted]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MolecularSequenceExtractedCopyWith<MolecularSequenceExtracted>
      get copyWith =>
          _$MolecularSequenceExtractedCopyWithImpl<MolecularSequenceExtracted>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MolecularSequenceExtracted) {
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
      startingSequence,
      o.startingSequence,
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
      coordinateSystem,
      o.coordinateSystem,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      reverseComplement,
      o.reverseComplement,
    )) {
      return false;
    }
    return true;
  }
}

/// [MolecularSequenceRepeated]
/// A Molecular Sequence that is represented as a repeated sequence motif.
class MolecularSequenceRepeated extends BackboneElement {
  /// Primary constructor for
  /// [MolecularSequenceRepeated]

  const MolecularSequenceRepeated({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.sequenceMotif,
    required this.copyCount,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularSequenceRepeated.fromJson(
    Map<String, dynamic> json,
  ) {
    return MolecularSequenceRepeated(
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

  /// Deserialize [MolecularSequenceRepeated]
  /// from a [String] or [YamlMap] object
  factory MolecularSequenceRepeated.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularSequenceRepeated.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularSequenceRepeated.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularSequenceRepeated '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularSequenceRepeated]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularSequenceRepeated.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularSequenceRepeated.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MolecularSequenceRepeated';

  /// [sequenceMotif]
  /// The sequence that defines the repeated motif.
  final Reference sequenceMotif;

  /// [copyCount]
  /// The number of repeats (copies) of the sequence motif.
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
  MolecularSequenceRepeated clone() => copyWith();

  /// Copy function for [MolecularSequenceRepeated]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MolecularSequenceRepeatedCopyWith<MolecularSequenceRepeated> get copyWith =>
      _$MolecularSequenceRepeatedCopyWithImpl<MolecularSequenceRepeated>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MolecularSequenceRepeated) {
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
      sequenceMotif,
      o.sequenceMotif,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      copyCount,
      o.copyCount,
    )) {
      return false;
    }
    return true;
  }
}

/// [MolecularSequenceConcatenated]
/// A Molecular Sequence that is represented as an ordered concatenation of
/// two or more Molecular Sequences.
class MolecularSequenceConcatenated extends BackboneElement {
  /// Primary constructor for
  /// [MolecularSequenceConcatenated]

  const MolecularSequenceConcatenated({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.sequenceElement,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularSequenceConcatenated.fromJson(
    Map<String, dynamic> json,
  ) {
    return MolecularSequenceConcatenated(
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
          .map<MolecularSequenceSequenceElement>(
            (v) => MolecularSequenceSequenceElement.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [MolecularSequenceConcatenated]
  /// from a [String] or [YamlMap] object
  factory MolecularSequenceConcatenated.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularSequenceConcatenated.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularSequenceConcatenated.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularSequenceConcatenated '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularSequenceConcatenated]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularSequenceConcatenated.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularSequenceConcatenated.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MolecularSequenceConcatenated';

  /// [sequenceElement]
  /// One element of a concatenated Molecular Sequence.
  final List<MolecularSequenceSequenceElement> sequenceElement;
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
  MolecularSequenceConcatenated clone() => copyWith();

  /// Copy function for [MolecularSequenceConcatenated]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MolecularSequenceConcatenatedCopyWith<MolecularSequenceConcatenated>
      get copyWith => _$MolecularSequenceConcatenatedCopyWithImpl<
              MolecularSequenceConcatenated>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MolecularSequenceConcatenated) {
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
    if (!listEquals<MolecularSequenceSequenceElement>(
      sequenceElement,
      o.sequenceElement,
    )) {
      return false;
    }
    return true;
  }
}

/// [MolecularSequenceSequenceElement]
/// One element of a concatenated Molecular Sequence.
class MolecularSequenceSequenceElement extends BackboneElement {
  /// Primary constructor for
  /// [MolecularSequenceSequenceElement]

  const MolecularSequenceSequenceElement({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.sequence,
    required this.ordinalIndex,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularSequenceSequenceElement.fromJson(
    Map<String, dynamic> json,
  ) {
    return MolecularSequenceSequenceElement(
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

  /// Deserialize [MolecularSequenceSequenceElement]
  /// from a [String] or [YamlMap] object
  factory MolecularSequenceSequenceElement.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularSequenceSequenceElement.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularSequenceSequenceElement.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularSequenceSequenceElement '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularSequenceSequenceElement]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularSequenceSequenceElement.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularSequenceSequenceElement.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MolecularSequenceSequenceElement';

  /// [sequence]
  /// The Molecular Sequence corresponding to this element.
  final Reference sequence;

  /// [ordinalIndex]
  /// The ordinal position of this sequence element within the concatenated
  /// Molecular Sequence.
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
  MolecularSequenceSequenceElement clone() => copyWith();

  /// Copy function for [MolecularSequenceSequenceElement]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MolecularSequenceSequenceElementCopyWith<MolecularSequenceSequenceElement>
      get copyWith => _$MolecularSequenceSequenceElementCopyWithImpl<
              MolecularSequenceSequenceElement>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MolecularSequenceSequenceElement) {
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
      sequence,
      o.sequence,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      ordinalIndex,
      o.ordinalIndex,
    )) {
      return false;
    }
    return true;
  }
}
