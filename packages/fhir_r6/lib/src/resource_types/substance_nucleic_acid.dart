import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'substance_nucleic_acid.g.dart';

/// [SubstanceNucleicAcid]
/// Nucleic acids are defined by three distinct elements: the base, sugar
/// and linkage. Individual substance/moiety IDs will be created for each
/// of these elements. The nucleotide sequence will be always entered in
/// the 5’-3’ direction.
class SubstanceNucleicAcid extends DomainResource {
  /// Primary constructor for
  /// [SubstanceNucleicAcid]

  const SubstanceNucleicAcid({
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
    this.areaOfHybridisation,
    this.oligoNucleotideType,
    this.subunit,
  }) : super(
          resourceType: R5ResourceType.SubstanceNucleicAcid,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceNucleicAcid.fromJson(
    Map<String, dynamic> json,
  ) {
    return SubstanceNucleicAcid(
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
      areaOfHybridisation: JsonParser.parsePrimitive<FhirString>(
        json,
        'areaOfHybridisation',
        FhirString.fromJson,
      ),
      oligoNucleotideType: JsonParser.parseObject<CodeableConcept>(
        json,
        'oligoNucleotideType',
        CodeableConcept.fromJson,
      ),
      subunit: (json['subunit'] as List<dynamic>?)
          ?.map<SubstanceNucleicAcidSubunit>(
            (v) => SubstanceNucleicAcidSubunit.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [SubstanceNucleicAcid]
  /// from a [String] or [YamlMap] object
  factory SubstanceNucleicAcid.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstanceNucleicAcid.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstanceNucleicAcid.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstanceNucleicAcid '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstanceNucleicAcid]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstanceNucleicAcid.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SubstanceNucleicAcid.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SubstanceNucleicAcid';

  /// [sequenceType]
  /// The type of the sequence shall be specified based on a controlled
  /// vocabulary.
  final CodeableConcept? sequenceType;

  /// [numberOfSubunits]
  /// The number of linear sequences of nucleotides linked through
  /// phosphodiester bonds shall be described. Subunits would be strands of
  /// nucleic acids that are tightly associated typically through
  /// Watson-Crick base pairing. NOTE: If not specified in the reference
  /// source, the assumption is that there is 1 subunit.
  final FhirInteger? numberOfSubunits;

  /// [areaOfHybridisation]
  /// The area of hybridisation shall be described if applicable for double
  /// stranded RNA or DNA. The number associated with the subunit followed by
  /// the number associated to the residue shall be specified in increasing
  /// order. The underscore “” shall be used as separator as follows:
  /// “Subunitnumber Residue”.
  final FhirString? areaOfHybridisation;

  /// [oligoNucleotideType]
  /// (TBC).
  final CodeableConcept? oligoNucleotideType;

  /// [subunit]
  /// Subunits are listed in order of decreasing length; sequences of the
  /// same length will be ordered by molecular weight; subunits that have
  /// identical sequences will be repeated multiple times.
  final List<SubstanceNucleicAcidSubunit>? subunit;
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
      'areaOfHybridisation',
      areaOfHybridisation,
    );
    addField(
      'oligoNucleotideType',
      oligoNucleotideType,
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
      'areaOfHybridisation',
      'oligoNucleotideType',
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
      case 'areaOfHybridisation':
        if (areaOfHybridisation != null) {
          fields.add(areaOfHybridisation!);
        }
      case 'oligoNucleotideType':
        if (oligoNucleotideType != null) {
          fields.add(oligoNucleotideType!);
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
  SubstanceNucleicAcid clone() => copyWith();

  /// Copy function for [SubstanceNucleicAcid]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $SubstanceNucleicAcidCopyWith<SubstanceNucleicAcid> get copyWith =>
      _$SubstanceNucleicAcidCopyWithImpl<SubstanceNucleicAcid>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SubstanceNucleicAcid) {
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
    if (!equalsDeepWithNull(
      areaOfHybridisation,
      o.areaOfHybridisation,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      oligoNucleotideType,
      o.oligoNucleotideType,
    )) {
      return false;
    }
    if (!listEquals<SubstanceNucleicAcidSubunit>(
      subunit,
      o.subunit,
    )) {
      return false;
    }
    return true;
  }
}

/// [SubstanceNucleicAcidSubunit]
/// Subunits are listed in order of decreasing length; sequences of the
/// same length will be ordered by molecular weight; subunits that have
/// identical sequences will be repeated multiple times.
class SubstanceNucleicAcidSubunit extends BackboneElement {
  /// Primary constructor for
  /// [SubstanceNucleicAcidSubunit]

  const SubstanceNucleicAcidSubunit({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.subunit,
    this.sequence,
    this.length,
    this.sequenceAttachment,
    this.fivePrime,
    this.threePrime,
    this.linkage,
    this.sugar,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceNucleicAcidSubunit.fromJson(
    Map<String, dynamic> json,
  ) {
    return SubstanceNucleicAcidSubunit(
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
      fivePrime: JsonParser.parseObject<CodeableConcept>(
        json,
        'fivePrime',
        CodeableConcept.fromJson,
      ),
      threePrime: JsonParser.parseObject<CodeableConcept>(
        json,
        'threePrime',
        CodeableConcept.fromJson,
      ),
      linkage: (json['linkage'] as List<dynamic>?)
          ?.map<SubstanceNucleicAcidLinkage>(
            (v) => SubstanceNucleicAcidLinkage.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      sugar: (json['sugar'] as List<dynamic>?)
          ?.map<SubstanceNucleicAcidSugar>(
            (v) => SubstanceNucleicAcidSugar.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [SubstanceNucleicAcidSubunit]
  /// from a [String] or [YamlMap] object
  factory SubstanceNucleicAcidSubunit.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstanceNucleicAcidSubunit.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstanceNucleicAcidSubunit.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstanceNucleicAcidSubunit '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstanceNucleicAcidSubunit]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstanceNucleicAcidSubunit.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SubstanceNucleicAcidSubunit.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SubstanceNucleicAcidSubunit';

  /// [subunit]
  /// Index of linear sequences of nucleic acids in order of decreasing
  /// length. Sequences of the same length will be ordered by molecular
  /// weight. Subunits that have identical sequences will be repeated and
  /// have sequential subscripts.
  final FhirInteger? subunit;

  /// [sequence]
  /// Actual nucleotide sequence notation from 5' to 3' end using standard
  /// single letter codes. In addition to the base sequence, sugar and type
  /// of phosphate or non-phosphate linkage should also be captured.
  final FhirString? sequence;

  /// [length]
  /// The length of the sequence shall be captured.
  final FhirInteger? length;

  /// [sequenceAttachment]
  /// (TBC).
  final Attachment? sequenceAttachment;

  /// [fivePrime]
  /// The nucleotide present at the 5’ terminal shall be specified based on a
  /// controlled vocabulary. Since the sequence is represented from the 5' to
  /// the 3' end, the 5’ prime nucleotide is the letter at the first position
  /// in the sequence. A separate representation would be redundant.
  final CodeableConcept? fivePrime;

  /// [threePrime]
  /// The nucleotide present at the 3’ terminal shall be specified based on a
  /// controlled vocabulary. Since the sequence is represented from the 5' to
  /// the 3' end, the 5’ prime nucleotide is the letter at the last position
  /// in the sequence. A separate representation would be redundant.
  final CodeableConcept? threePrime;

  /// [linkage]
  /// The linkages between sugar residues will also be captured.
  final List<SubstanceNucleicAcidLinkage>? linkage;

  /// [sugar]
  /// 5.3.6.8.1 Sugar ID (Mandatory).
  final List<SubstanceNucleicAcidSugar>? sugar;
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
      'fivePrime',
      fivePrime,
    );
    addField(
      'threePrime',
      threePrime,
    );
    addField(
      'linkage',
      linkage,
    );
    addField(
      'sugar',
      sugar,
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
      'fivePrime',
      'threePrime',
      'linkage',
      'sugar',
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
      case 'fivePrime':
        if (fivePrime != null) {
          fields.add(fivePrime!);
        }
      case 'threePrime':
        if (threePrime != null) {
          fields.add(threePrime!);
        }
      case 'linkage':
        if (linkage != null) {
          fields.addAll(linkage!);
        }
      case 'sugar':
        if (sugar != null) {
          fields.addAll(sugar!);
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
  SubstanceNucleicAcidSubunit clone() => copyWith();

  /// Copy function for [SubstanceNucleicAcidSubunit]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $SubstanceNucleicAcidSubunitCopyWith<SubstanceNucleicAcidSubunit>
      get copyWith => _$SubstanceNucleicAcidSubunitCopyWithImpl<
              SubstanceNucleicAcidSubunit>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SubstanceNucleicAcidSubunit) {
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
      fivePrime,
      o.fivePrime,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      threePrime,
      o.threePrime,
    )) {
      return false;
    }
    if (!listEquals<SubstanceNucleicAcidLinkage>(
      linkage,
      o.linkage,
    )) {
      return false;
    }
    if (!listEquals<SubstanceNucleicAcidSugar>(
      sugar,
      o.sugar,
    )) {
      return false;
    }
    return true;
  }
}

/// [SubstanceNucleicAcidLinkage]
/// The linkages between sugar residues will also be captured.
class SubstanceNucleicAcidLinkage extends BackboneElement {
  /// Primary constructor for
  /// [SubstanceNucleicAcidLinkage]

  const SubstanceNucleicAcidLinkage({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.connectivity,
    this.identifier,
    this.name,
    this.residueSite,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceNucleicAcidLinkage.fromJson(
    Map<String, dynamic> json,
  ) {
    return SubstanceNucleicAcidLinkage(
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
      connectivity: JsonParser.parsePrimitive<FhirString>(
        json,
        'connectivity',
        FhirString.fromJson,
      ),
      identifier: JsonParser.parseObject<Identifier>(
        json,
        'identifier',
        Identifier.fromJson,
      ),
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
      ),
      residueSite: JsonParser.parsePrimitive<FhirString>(
        json,
        'residueSite',
        FhirString.fromJson,
      ),
    );
  }

  /// Deserialize [SubstanceNucleicAcidLinkage]
  /// from a [String] or [YamlMap] object
  factory SubstanceNucleicAcidLinkage.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstanceNucleicAcidLinkage.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstanceNucleicAcidLinkage.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstanceNucleicAcidLinkage '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstanceNucleicAcidLinkage]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstanceNucleicAcidLinkage.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SubstanceNucleicAcidLinkage.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SubstanceNucleicAcidLinkage';

  /// [connectivity]
  /// The entity that links the sugar residues together should also be
  /// captured for nearly all naturally occurring nucleic acid the linkage is
  /// a phosphate group. For many synthetic oligonucleotides phosphorothioate
  /// linkages are often seen. Linkage connectivity is assumed to be 3’-5’.
  /// If the linkage is either 3’-3’ or 5’-5’ this should be specified.
  final FhirString? connectivity;

  /// [identifier]
  /// Each linkage will be registered as a fragment and have an ID.
  final Identifier? identifier;

  /// [name]
  /// Each linkage will be registered as a fragment and have at least one
  /// name. A single name shall be assigned to each linkage.
  final FhirString? name;

  /// [residueSite]
  /// Residues shall be captured as described in 5.3.6.8.3.
  final FhirString? residueSite;
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
      'connectivity',
      connectivity,
    );
    addField(
      'identifier',
      identifier,
    );
    addField(
      'name',
      name,
    );
    addField(
      'residueSite',
      residueSite,
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
      'connectivity',
      'identifier',
      'name',
      'residueSite',
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
      case 'connectivity':
        if (connectivity != null) {
          fields.add(connectivity!);
        }
      case 'identifier':
        if (identifier != null) {
          fields.add(identifier!);
        }
      case 'name':
        if (name != null) {
          fields.add(name!);
        }
      case 'residueSite':
        if (residueSite != null) {
          fields.add(residueSite!);
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
  SubstanceNucleicAcidLinkage clone() => copyWith();

  /// Copy function for [SubstanceNucleicAcidLinkage]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $SubstanceNucleicAcidLinkageCopyWith<SubstanceNucleicAcidLinkage>
      get copyWith => _$SubstanceNucleicAcidLinkageCopyWithImpl<
              SubstanceNucleicAcidLinkage>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SubstanceNucleicAcidLinkage) {
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
      connectivity,
      o.connectivity,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      name,
      o.name,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      residueSite,
      o.residueSite,
    )) {
      return false;
    }
    return true;
  }
}

/// [SubstanceNucleicAcidSugar]
/// 5.3.6.8.1 Sugar ID (Mandatory).
class SubstanceNucleicAcidSugar extends BackboneElement {
  /// Primary constructor for
  /// [SubstanceNucleicAcidSugar]

  const SubstanceNucleicAcidSugar({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.name,
    this.residueSite,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceNucleicAcidSugar.fromJson(
    Map<String, dynamic> json,
  ) {
    return SubstanceNucleicAcidSugar(
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
      identifier: JsonParser.parseObject<Identifier>(
        json,
        'identifier',
        Identifier.fromJson,
      ),
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
      ),
      residueSite: JsonParser.parsePrimitive<FhirString>(
        json,
        'residueSite',
        FhirString.fromJson,
      ),
    );
  }

  /// Deserialize [SubstanceNucleicAcidSugar]
  /// from a [String] or [YamlMap] object
  factory SubstanceNucleicAcidSugar.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstanceNucleicAcidSugar.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstanceNucleicAcidSugar.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstanceNucleicAcidSugar '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstanceNucleicAcidSugar]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstanceNucleicAcidSugar.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SubstanceNucleicAcidSugar.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SubstanceNucleicAcidSugar';

  /// [identifier]
  /// The Substance ID of the sugar or sugar-like component that make up the
  /// nucleotide.
  final Identifier? identifier;

  /// [name]
  /// The name of the sugar or sugar-like component that make up the
  /// nucleotide.
  final FhirString? name;

  /// [residueSite]
  /// The residues that contain a given sugar will be captured. The order of
  /// given residues will be captured in the 5‘-3‘direction consistent with
  /// the base sequences listed above.
  final FhirString? residueSite;
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
      'identifier',
      identifier,
    );
    addField(
      'name',
      name,
    );
    addField(
      'residueSite',
      residueSite,
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
      'identifier',
      'name',
      'residueSite',
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
      case 'identifier':
        if (identifier != null) {
          fields.add(identifier!);
        }
      case 'name':
        if (name != null) {
          fields.add(name!);
        }
      case 'residueSite':
        if (residueSite != null) {
          fields.add(residueSite!);
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
  SubstanceNucleicAcidSugar clone() => copyWith();

  /// Copy function for [SubstanceNucleicAcidSugar]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $SubstanceNucleicAcidSugarCopyWith<SubstanceNucleicAcidSugar> get copyWith =>
      _$SubstanceNucleicAcidSugarCopyWithImpl<SubstanceNucleicAcidSugar>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SubstanceNucleicAcidSugar) {
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
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      name,
      o.name,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      residueSite,
      o.residueSite,
    )) {
      return false;
    }
    return true;
  }
}
