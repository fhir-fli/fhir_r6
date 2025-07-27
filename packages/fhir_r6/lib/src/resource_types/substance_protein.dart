import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'substance_protein.g.dart';

/// [SubstanceProtein]
/// A SubstanceProtein is defined as a single unit of a linear amino acid
/// sequence, or a combination of subunits that are either covalently
/// linked or have a defined invariant stoichiometric relationship. This
/// includes all synthetic, recombinant and purified SubstanceProteins of
/// defined sequence, whether the use is therapeutic or prophylactic. This
/// set of elements will be used to describe albumins, coagulation factors,
/// cytokines, growth factors, peptide/SubstanceProtein hormones, enzymes,
/// toxins, toxoids, recombinant vaccines, and immunomodulators.
class SubstanceProtein extends DomainResource {
  /// Primary constructor for
  /// [SubstanceProtein]

  const SubstanceProtein({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.sequenceType,
    this.numberOfSubunits,
    this.disulfideLinkage,
    this.subunit,
  }) : super(
          resourceType: R5ResourceType.SubstanceProtein,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceProtein.fromJson(
    Map<String, dynamic> json,
  ) {
    return SubstanceProtein(
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
      sequenceType: JsonParser.parseObject<CodeableConcept>(
        json,
        'sequenceType',
        CodeableConcept.fromJson,
      ),
      numberOfSubunits: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'numberOfSubunits',
        FhirInteger.fromJson,
      ),
      disulfideLinkage: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'disulfideLinkage',
        FhirString.fromJson,
      ),
      subunit: (json['subunit'] as List<dynamic>?)
          ?.map<SubstanceProteinSubunit>(
            (v) => SubstanceProteinSubunit.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [SubstanceProtein]
  /// from a [String] or [YamlMap] object
  factory SubstanceProtein.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstanceProtein.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstanceProtein.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstanceProtein '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstanceProtein]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstanceProtein.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SubstanceProtein.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SubstanceProtein';

  /// [sequenceType]
  /// The SubstanceProtein descriptive elements will only be used when a
  /// complete or partial amino acid sequence is available or derivable from
  /// a nucleic acid sequence.
  final CodeableConcept? sequenceType;

  /// [numberOfSubunits]
  /// Number of linear sequences of amino acids linked through peptide bonds.
  /// The number of subunits constituting the SubstanceProtein shall be
  /// described. It is possible that the number of subunits can be variable.
  final FhirInteger? numberOfSubunits;

  /// [disulfideLinkage]
  /// The disulphide bond between two cysteine residues either on the same
  /// subunit or on two different subunits shall be described. The position
  /// of the disulfide bonds in the SubstanceProtein shall be listed in
  /// increasing order of subunit number and position within subunit followed
  /// by the abbreviation of the amino acids involved. The disulfide linkage
  /// positions shall actually contain the amino acid Cysteine at the
  /// respective positions.
  final List<FhirString>? disulfideLinkage;

  /// [subunit]
  /// This subclause refers to the description of each subunit constituting
  /// the SubstanceProtein. A subunit is a linear sequence of amino acids
  /// linked through peptide bonds. The Subunit information shall be provided
  /// when the finished SubstanceProtein is a complex of multiple sequences;
  /// subunits are not used to delineate domains within a single sequence.
  /// Subunits are listed in order of decreasing length; sequences of the
  /// same length will be ordered by decreasing molecular weight; subunits
  /// that have identical sequences will be repeated multiple times.
  final List<SubstanceProteinSubunit>? subunit;
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
      'sequenceType',
      sequenceType,
    );
    addField(
      'numberOfSubunits',
      numberOfSubunits,
    );
    addField(
      'disulfideLinkage',
      disulfideLinkage,
    );
    addField(
      'subunit',
      subunit,
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
      'sequenceType',
      'numberOfSubunits',
      'disulfideLinkage',
      'subunit',
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
      case 'sequenceType':
        if (sequenceType != null) {
          fields.add(sequenceType!);
        }
      case 'numberOfSubunits':
        if (numberOfSubunits != null) {
          fields.add(numberOfSubunits!);
        }
      case 'disulfideLinkage':
        if (disulfideLinkage != null) {
          fields.addAll(disulfideLinkage!);
        }
      case 'subunit':
        if (subunit != null) {
          fields.addAll(subunit!);
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
  SubstanceProtein clone() => copyWith();

  /// Copy function for [SubstanceProtein]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $SubstanceProteinCopyWith<SubstanceProtein> get copyWith =>
      _$SubstanceProteinCopyWithImpl<SubstanceProtein>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SubstanceProtein) {
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
    if (!equalsDeepWithNull(
      sequenceType,
      o.sequenceType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      numberOfSubunits,
      o.numberOfSubunits,
    )) {
      return false;
    }
    if (!listEquals<FhirString>(
      disulfideLinkage,
      o.disulfideLinkage,
    )) {
      return false;
    }
    if (!listEquals<SubstanceProteinSubunit>(
      subunit,
      o.subunit,
    )) {
      return false;
    }
    return true;
  }
}

/// [SubstanceProteinSubunit]
/// This subclause refers to the description of each subunit constituting
/// the SubstanceProtein. A subunit is a linear sequence of amino acids
/// linked through peptide bonds. The Subunit information shall be provided
/// when the finished SubstanceProtein is a complex of multiple sequences;
/// subunits are not used to delineate domains within a single sequence.
/// Subunits are listed in order of decreasing length; sequences of the
/// same length will be ordered by decreasing molecular weight; subunits
/// that have identical sequences will be repeated multiple times.
class SubstanceProteinSubunit extends BackboneElement {
  /// Primary constructor for
  /// [SubstanceProteinSubunit]

  const SubstanceProteinSubunit({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.subunit,
    this.sequence,
    this.length,
    this.sequenceAttachment,
    this.nTerminalModificationId,
    this.nTerminalModification,
    this.cTerminalModificationId,
    this.cTerminalModification,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceProteinSubunit.fromJson(
    Map<String, dynamic> json,
  ) {
    return SubstanceProteinSubunit(
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
      subunit: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'subunit',
        FhirInteger.fromJson,
      ),
      sequence: JsonParser.parsePrimitive<FhirString>(
        json,
        'sequence',
        FhirString.fromJson,
      ),
      length: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'length',
        FhirInteger.fromJson,
      ),
      sequenceAttachment: JsonParser.parseObject<Attachment>(
        json,
        'sequenceAttachment',
        Attachment.fromJson,
      ),
      nTerminalModificationId: JsonParser.parseObject<Identifier>(
        json,
        'nTerminalModificationId',
        Identifier.fromJson,
      ),
      nTerminalModification: JsonParser.parsePrimitive<FhirString>(
        json,
        'nTerminalModification',
        FhirString.fromJson,
      ),
      cTerminalModificationId: JsonParser.parseObject<Identifier>(
        json,
        'cTerminalModificationId',
        Identifier.fromJson,
      ),
      cTerminalModification: JsonParser.parsePrimitive<FhirString>(
        json,
        'cTerminalModification',
        FhirString.fromJson,
      ),
    );
  }

  /// Deserialize [SubstanceProteinSubunit]
  /// from a [String] or [YamlMap] object
  factory SubstanceProteinSubunit.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstanceProteinSubunit.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstanceProteinSubunit.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstanceProteinSubunit '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstanceProteinSubunit]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstanceProteinSubunit.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SubstanceProteinSubunit.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SubstanceProteinSubunit';

  /// [subunit]
  /// Index of primary sequences of amino acids linked through peptide bonds
  /// in order of decreasing length. Sequences of the same length will be
  /// ordered by molecular weight. Subunits that have identical sequences
  /// will be repeated and have sequential subscripts.
  final FhirInteger? subunit;

  /// [sequence]
  /// The sequence information shall be provided enumerating the amino acids
  /// from N- to C-terminal end using standard single-letter amino acid
  /// codes. Uppercase shall be used for L-amino acids and lowercase for
  /// D-amino acids. Transcribed SubstanceProteins will always be described
  /// using the translated sequence; for synthetic peptide containing amino
  /// acids that are not represented with a single letter code an X should be
  /// used within the sequence. The modified amino acids will be
  /// distinguished by their position in the sequence.
  final FhirString? sequence;

  /// [length]
  /// Length of linear sequences of amino acids contained in the subunit.
  final FhirInteger? length;

  /// [sequenceAttachment]
  /// The sequence information shall be provided enumerating the amino acids
  /// from N- to C-terminal end using standard single-letter amino acid
  /// codes. Uppercase shall be used for L-amino acids and lowercase for
  /// D-amino acids. Transcribed SubstanceProteins will always be described
  /// using the translated sequence; for synthetic peptide containing amino
  /// acids that are not represented with a single letter code an X should be
  /// used within the sequence. The modified amino acids will be
  /// distinguished by their position in the sequence.
  final Attachment? sequenceAttachment;

  /// [nTerminalModificationId]
  /// Unique identifier for molecular fragment modification based on the ISO
  /// 11238 Substance ID.
  final Identifier? nTerminalModificationId;

  /// [nTerminalModification]
  /// The name of the fragment modified at the N-terminal of the
  /// SubstanceProtein shall be specified.
  final FhirString? nTerminalModification;

  /// [cTerminalModificationId]
  /// Unique identifier for molecular fragment modification based on the ISO
  /// 11238 Substance ID.
  final Identifier? cTerminalModificationId;

  /// [cTerminalModification]
  /// The modification at the C-terminal shall be specified.
  final FhirString? cTerminalModification;
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
      'subunit',
      subunit,
    );
    addField(
      'sequence',
      sequence,
    );
    addField(
      'length',
      length,
    );
    addField(
      'sequenceAttachment',
      sequenceAttachment,
    );
    addField(
      'nTerminalModificationId',
      nTerminalModificationId,
    );
    addField(
      'nTerminalModification',
      nTerminalModification,
    );
    addField(
      'cTerminalModificationId',
      cTerminalModificationId,
    );
    addField(
      'cTerminalModification',
      cTerminalModification,
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
      'subunit',
      'sequence',
      'length',
      'sequenceAttachment',
      'nTerminalModificationId',
      'nTerminalModification',
      'cTerminalModificationId',
      'cTerminalModification',
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
      case 'subunit':
        if (subunit != null) {
          fields.add(subunit!);
        }
      case 'sequence':
        if (sequence != null) {
          fields.add(sequence!);
        }
      case 'length':
        if (length != null) {
          fields.add(length!);
        }
      case 'sequenceAttachment':
        if (sequenceAttachment != null) {
          fields.add(sequenceAttachment!);
        }
      case 'nTerminalModificationId':
        if (nTerminalModificationId != null) {
          fields.add(nTerminalModificationId!);
        }
      case 'nTerminalModification':
        if (nTerminalModification != null) {
          fields.add(nTerminalModification!);
        }
      case 'cTerminalModificationId':
        if (cTerminalModificationId != null) {
          fields.add(cTerminalModificationId!);
        }
      case 'cTerminalModification':
        if (cTerminalModification != null) {
          fields.add(cTerminalModification!);
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
  SubstanceProteinSubunit clone() => copyWith();

  /// Copy function for [SubstanceProteinSubunit]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $SubstanceProteinSubunitCopyWith<SubstanceProteinSubunit> get copyWith =>
      _$SubstanceProteinSubunitCopyWithImpl<SubstanceProteinSubunit>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SubstanceProteinSubunit) {
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
      subunit,
      o.subunit,
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
      length,
      o.length,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      sequenceAttachment,
      o.sequenceAttachment,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      nTerminalModificationId,
      o.nTerminalModificationId,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      nTerminalModification,
      o.nTerminalModification,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      cTerminalModificationId,
      o.cTerminalModificationId,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      cTerminalModification,
      o.cTerminalModification,
    )) {
      return false;
    }
    return true;
  }
}
