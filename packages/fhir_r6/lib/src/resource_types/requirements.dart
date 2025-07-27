import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'requirements.g.dart';

/// [Requirements]
/// A set of requirements - a list of features or behaviors of designed
/// systems that are necessary to achieve organizational or regulatory
/// goals.
class Requirements extends CanonicalResource {
  /// Primary constructor for
  /// [Requirements]

  const Requirements({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    super.url,
    this.identifier,
    super.version,
    VersionAlgorithmXRequirements? versionAlgorithmX,
    FhirString? versionAlgorithmString,
    Coding? versionAlgorithmCoding,
    this.name,
    this.title,
    required super.status,
    super.experimental,
    super.date,
    super.publisher,
    super.contact,
    super.description,
    super.useContext,
    super.jurisdiction,
    this.purpose,
    this.copyright,
    this.copyrightLabel,
    this.derivedFrom,
    this.reference,
    this.actor,
    this.statement,
  })  : versionAlgorithmX = versionAlgorithmX ??
            versionAlgorithmString ??
            versionAlgorithmCoding,
        super(
          resourceType: R5ResourceType.Requirements,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Requirements.fromJson(
    Map<String, dynamic> json,
  ) {
    return Requirements(
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
      url: JsonParser.parsePrimitive<FhirUri>(
        json,
        'url',
        FhirUri.fromJson,
      ),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      version: JsonParser.parsePrimitive<FhirString>(
        json,
        'version',
        FhirString.fromJson,
      ),
      versionAlgorithmX:
          JsonParser.parsePolymorphic<VersionAlgorithmXRequirements>(
        json,
        {
          'versionAlgorithmString': FhirString.fromJson,
          'versionAlgorithmCoding': Coding.fromJson,
        },
      ),
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
      ),
      title: JsonParser.parsePrimitive<FhirString>(
        json,
        'title',
        FhirString.fromJson,
      ),
      status: JsonParser.parsePrimitive<PublicationStatus>(
        json,
        'status',
        PublicationStatus.fromJson,
      ),
      experimental: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'experimental',
        FhirBoolean.fromJson,
      ),
      date: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'date',
        FhirDateTime.fromJson,
      ),
      publisher: JsonParser.parsePrimitive<FhirString>(
        json,
        'publisher',
        FhirString.fromJson,
      ),
      contact: (json['contact'] as List<dynamic>?)
          ?.map<ContactDetail>(
            (v) => ContactDetail.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
      ),
      useContext: (json['useContext'] as List<dynamic>?)
          ?.map<UsageContext>(
            (v) => UsageContext.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      jurisdiction: (json['jurisdiction'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      purpose: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'purpose',
        FhirMarkdown.fromJson,
      ),
      copyright: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'copyright',
        FhirMarkdown.fromJson,
      ),
      copyrightLabel: JsonParser.parsePrimitive<FhirString>(
        json,
        'copyrightLabel',
        FhirString.fromJson,
      ),
      derivedFrom: JsonParser.parsePrimitiveList<FhirCanonical>(
        json,
        'derivedFrom',
        FhirCanonical.fromJson,
      ),
      reference: JsonParser.parsePrimitiveList<FhirUrl>(
        json,
        'reference',
        FhirUrl.fromJson,
      ),
      actor: JsonParser.parsePrimitiveList<FhirCanonical>(
        json,
        'actor',
        FhirCanonical.fromJson,
      ),
      statement: (json['statement'] as List<dynamic>?)
          ?.map<RequirementsStatement>(
            (v) => RequirementsStatement.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [Requirements]
  /// from a [String] or [YamlMap] object
  factory Requirements.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Requirements.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Requirements.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Requirements '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Requirements]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Requirements.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return Requirements.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Requirements';

  /// [identifier]
  /// A formal identifier that is used to identify this Requirements when it
  /// is represented in other formats, or referenced in a specification,
  /// model, design or an instance.
  final List<Identifier>? identifier;

  /// [versionAlgorithmX]
  /// Indicates the mechanism used to compare versions to determine which is
  /// more current.
  final VersionAlgorithmXRequirements? versionAlgorithmX;

  /// Getter for [versionAlgorithmString] as a FhirString
  FhirString? get versionAlgorithmString =>
      versionAlgorithmX?.isAs<FhirString>();

  /// Getter for [versionAlgorithmCoding] as a Coding
  Coding? get versionAlgorithmCoding => versionAlgorithmX?.isAs<Coding>();

  /// [name]
  /// A natural language name identifying the Requirements. This name should
  /// be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  final FhirString? name;

  /// [title]
  /// A short, descriptive, user-friendly title for the Requirements.
  final FhirString? title;

  /// [purpose]
  /// Explanation of why this Requirements is needed and why it has been
  /// designed as it has.
  final FhirMarkdown? purpose;

  /// [copyright]
  /// A copyright statement relating to the Requirements and/or its contents.
  /// Copyright statements are generally legal restrictions on the use and
  /// publishing of the Requirements.
  final FhirMarkdown? copyright;

  /// [copyrightLabel]
  /// A short string (<50 characters), suitable for inclusion in a page
  /// footer that identifies the copyright holder, effective period, and
  /// optionally whether rights are resctricted. (e.g. 'All rights reserved',
  /// 'Some rights reserved').
  final FhirString? copyrightLabel;

  /// [derivedFrom]
  /// Another set of Requirements that this set of Requirements builds on and
  /// updates.
  final List<FhirCanonical>? derivedFrom;

  /// [reference]
  /// A reference to another artifact that created this set of requirements.
  /// This could be a Profile, etc., or external regulation, or business
  /// requirements expressed elsewhere.
  final List<FhirUrl>? reference;

  /// [actor]
  /// An actor these requirements are in regard to.
  final List<FhirCanonical>? actor;

  /// [statement]
  /// The actual statement of requirement, in markdown format.
  final List<RequirementsStatement>? statement;
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
      'url',
      url,
    );
    addField(
      'identifier',
      identifier,
    );
    addField(
      'version',
      version,
    );
    if (versionAlgorithmX != null) {
      final fhirType = versionAlgorithmX!.fhirType;
      addField(
        'versionAlgorithm${fhirType.capitalize()}',
        versionAlgorithmX,
      );
    }

    addField(
      'name',
      name,
    );
    addField(
      'title',
      title,
    );
    addField(
      'status',
      status,
    );
    addField(
      'experimental',
      experimental,
    );
    addField(
      'date',
      date,
    );
    addField(
      'publisher',
      publisher,
    );
    addField(
      'contact',
      contact,
    );
    addField(
      'description',
      description,
    );
    addField(
      'useContext',
      useContext,
    );
    addField(
      'jurisdiction',
      jurisdiction,
    );
    addField(
      'purpose',
      purpose,
    );
    addField(
      'copyright',
      copyright,
    );
    addField(
      'copyrightLabel',
      copyrightLabel,
    );
    addField(
      'derivedFrom',
      derivedFrom,
    );
    addField(
      'reference',
      reference,
    );
    addField(
      'actor',
      actor,
    );
    addField(
      'statement',
      statement,
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
      'url',
      'identifier',
      'version',
      'versionAlgorithmX',
      'name',
      'title',
      'status',
      'experimental',
      'date',
      'publisher',
      'contact',
      'description',
      'useContext',
      'jurisdiction',
      'purpose',
      'copyright',
      'copyrightLabel',
      'derivedFrom',
      'reference',
      'actor',
      'statement',
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
      case 'url':
        if (url != null) {
          fields.add(url!);
        }
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
        }
      case 'version':
        if (version != null) {
          fields.add(version!);
        }
      case 'versionAlgorithm':
        fields.add(versionAlgorithmX!);
      case 'versionAlgorithmX':
        fields.add(versionAlgorithmX!);
      case 'versionAlgorithmString':
        if (versionAlgorithmX is FhirString) {
          fields.add(versionAlgorithmX!);
        }
      case 'versionAlgorithmCoding':
        if (versionAlgorithmX is Coding) {
          fields.add(versionAlgorithmX!);
        }
      case 'name':
        if (name != null) {
          fields.add(name!);
        }
      case 'title':
        if (title != null) {
          fields.add(title!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'experimental':
        if (experimental != null) {
          fields.add(experimental!);
        }
      case 'date':
        if (date != null) {
          fields.add(date!);
        }
      case 'publisher':
        if (publisher != null) {
          fields.add(publisher!);
        }
      case 'contact':
        if (contact != null) {
          fields.addAll(contact!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'useContext':
        if (useContext != null) {
          fields.addAll(useContext!);
        }
      case 'jurisdiction':
        if (jurisdiction != null) {
          fields.addAll(jurisdiction!);
        }
      case 'purpose':
        if (purpose != null) {
          fields.add(purpose!);
        }
      case 'copyright':
        if (copyright != null) {
          fields.add(copyright!);
        }
      case 'copyrightLabel':
        if (copyrightLabel != null) {
          fields.add(copyrightLabel!);
        }
      case 'derivedFrom':
        if (derivedFrom != null) {
          fields.addAll(derivedFrom!);
        }
      case 'reference':
        if (reference != null) {
          fields.addAll(reference!);
        }
      case 'actor':
        if (actor != null) {
          fields.addAll(actor!);
        }
      case 'statement':
        if (statement != null) {
          fields.addAll(statement!);
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
  Requirements clone() => copyWith();

  /// Copy function for [Requirements]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $RequirementsCopyWith<Requirements> get copyWith =>
      _$RequirementsCopyWithImpl<Requirements>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Requirements) {
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
      url,
      o.url,
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
      version,
      o.version,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      versionAlgorithmX,
      o.versionAlgorithmX,
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
      title,
      o.title,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      experimental,
      o.experimental,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      date,
      o.date,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      publisher,
      o.publisher,
    )) {
      return false;
    }
    if (!listEquals<ContactDetail>(
      contact,
      o.contact,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!listEquals<UsageContext>(
      useContext,
      o.useContext,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      jurisdiction,
      o.jurisdiction,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      purpose,
      o.purpose,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      copyright,
      o.copyright,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      copyrightLabel,
      o.copyrightLabel,
    )) {
      return false;
    }
    if (!listEquals<FhirCanonical>(
      derivedFrom,
      o.derivedFrom,
    )) {
      return false;
    }
    if (!listEquals<FhirUrl>(
      reference,
      o.reference,
    )) {
      return false;
    }
    if (!listEquals<FhirCanonical>(
      actor,
      o.actor,
    )) {
      return false;
    }
    if (!listEquals<RequirementsStatement>(
      statement,
      o.statement,
    )) {
      return false;
    }
    return true;
  }
}

/// [RequirementsStatement]
/// The actual statement of requirement, in markdown format.
class RequirementsStatement extends BackboneElement {
  /// Primary constructor for
  /// [RequirementsStatement]

  const RequirementsStatement({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.key,
    this.label,
    this.conformance,
    this.conditionality,
    required this.requirement,
    this.derivedFrom,
    this.parent,
    this.satisfiedBy,
    this.reference,
    this.source,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory RequirementsStatement.fromJson(
    Map<String, dynamic> json,
  ) {
    return RequirementsStatement(
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
      key: JsonParser.parsePrimitive<FhirId>(
        json,
        'key',
        FhirId.fromJson,
      )!,
      label: JsonParser.parsePrimitive<FhirString>(
        json,
        'label',
        FhirString.fromJson,
      ),
      conformance: JsonParser.parsePrimitiveList<ConformanceExpectation>(
        json,
        'conformance',
        ConformanceExpectation.fromJson,
      ),
      conditionality: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'conditionality',
        FhirBoolean.fromJson,
      ),
      requirement: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'requirement',
        FhirMarkdown.fromJson,
      )!,
      derivedFrom: JsonParser.parsePrimitive<FhirString>(
        json,
        'derivedFrom',
        FhirString.fromJson,
      ),
      parent: JsonParser.parsePrimitive<FhirString>(
        json,
        'parent',
        FhirString.fromJson,
      ),
      satisfiedBy: JsonParser.parsePrimitiveList<FhirUrl>(
        json,
        'satisfiedBy',
        FhirUrl.fromJson,
      ),
      reference: JsonParser.parsePrimitiveList<FhirUrl>(
        json,
        'reference',
        FhirUrl.fromJson,
      ),
      source: (json['source'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [RequirementsStatement]
  /// from a [String] or [YamlMap] object
  factory RequirementsStatement.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return RequirementsStatement.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return RequirementsStatement.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'RequirementsStatement '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [RequirementsStatement]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory RequirementsStatement.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return RequirementsStatement.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'RequirementsStatement';

  /// [key]
  /// Key that identifies this statement (unique within this resource).
  final FhirId key;

  /// [label]
  /// A short human usable label for this statement.
  final FhirString? label;

  /// [conformance]
  /// A short human usable label for this statement.
  final List<ConformanceExpectation>? conformance;

  /// [conditionality]
  /// This boolean flag is set to true of the text of the requirement is
  /// conditional on something e.g. it includes lanauage like 'if x then y'.
  /// This conditionality flag is introduced for purposes of filtering and
  /// colour highlighting etc.
  final FhirBoolean? conditionality;

  /// [requirement]
  /// The actual requirement for human consumption.
  final FhirMarkdown requirement;

  /// [derivedFrom]
  /// Another statement on one of the requirements that this requirement
  /// clarifies or restricts.
  final FhirString? derivedFrom;

  /// [parent]
  /// A larger requirement that this requirement helps to refine and enable.
  final FhirString? parent;

  /// [satisfiedBy]
  /// A reference to another artifact that satisfies this requirement. This
  /// could be a Profile, extension, or an element in one of those, or a
  /// CapabilityStatement, OperationDefinition, SearchParameter,
  /// CodeSystem(/code), ValueSet, Libary etc.
  final List<FhirUrl>? satisfiedBy;

  /// [reference]
  /// A reference to another artifact that created this requirement. This
  /// could be a Profile, etc., or external regulation, or business
  /// requirements expressed elsewhere.
  final List<FhirUrl>? reference;

  /// [source]
  /// Who asked for this statement to be a requirement. By default, it's
  /// assumed that the publisher knows who it is if it matters.
  final List<Reference>? source;
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
      'key',
      key,
    );
    addField(
      'label',
      label,
    );
    addField(
      'conformance',
      conformance,
    );
    addField(
      'conditionality',
      conditionality,
    );
    addField(
      'requirement',
      requirement,
    );
    addField(
      'derivedFrom',
      derivedFrom,
    );
    addField(
      'parent',
      parent,
    );
    addField(
      'satisfiedBy',
      satisfiedBy,
    );
    addField(
      'reference',
      reference,
    );
    addField(
      'source',
      source,
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
      'key',
      'label',
      'conformance',
      'conditionality',
      'requirement',
      'derivedFrom',
      'parent',
      'satisfiedBy',
      'reference',
      'source',
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
      case 'key':
        fields.add(key);
      case 'label':
        if (label != null) {
          fields.add(label!);
        }
      case 'conformance':
        if (conformance != null) {
          fields.addAll(conformance!);
        }
      case 'conditionality':
        if (conditionality != null) {
          fields.add(conditionality!);
        }
      case 'requirement':
        fields.add(requirement);
      case 'derivedFrom':
        if (derivedFrom != null) {
          fields.add(derivedFrom!);
        }
      case 'parent':
        if (parent != null) {
          fields.add(parent!);
        }
      case 'satisfiedBy':
        if (satisfiedBy != null) {
          fields.addAll(satisfiedBy!);
        }
      case 'reference':
        if (reference != null) {
          fields.addAll(reference!);
        }
      case 'source':
        if (source != null) {
          fields.addAll(source!);
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
  RequirementsStatement clone() => copyWith();

  /// Copy function for [RequirementsStatement]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $RequirementsStatementCopyWith<RequirementsStatement> get copyWith =>
      _$RequirementsStatementCopyWithImpl<RequirementsStatement>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! RequirementsStatement) {
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
      key,
      o.key,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      label,
      o.label,
    )) {
      return false;
    }
    if (!listEquals<ConformanceExpectation>(
      conformance,
      o.conformance,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      conditionality,
      o.conditionality,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      requirement,
      o.requirement,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      derivedFrom,
      o.derivedFrom,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      parent,
      o.parent,
    )) {
      return false;
    }
    if (!listEquals<FhirUrl>(
      satisfiedBy,
      o.satisfiedBy,
    )) {
      return false;
    }
    if (!listEquals<FhirUrl>(
      reference,
      o.reference,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      source,
      o.source,
    )) {
      return false;
    }
    return true;
  }
}
