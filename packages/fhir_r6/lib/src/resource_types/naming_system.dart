import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'naming_system.g.dart';

/// [NamingSystem]
/// A curated namespace that issues unique symbols within that namespace
/// for the identification of concepts, people, devices, etc. Represents a
/// "System" used within the Identifier and Coding data types.
class NamingSystem extends MetadataResource {
  /// Primary constructor for
  /// [NamingSystem]

  const NamingSystem({
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
    VersionAlgorithmXNamingSystem? versionAlgorithmX,
    FhirString? versionAlgorithmString,
    Coding? versionAlgorithmCoding,
    required this.name,
    this.title,
    required super.status,
    required this.kind,
    super.experimental,
    required super.date,
    super.publisher,
    super.contact,
    this.responsible,
    this.type,
    super.description,
    super.useContext,
    super.jurisdiction,
    this.purpose,
    this.copyright,
    this.copyrightLabel,
    super.approvalDate,
    super.lastReviewDate,
    super.effectivePeriod,
    super.topic,
    super.author,
    super.editor,
    super.reviewer,
    super.endorser,
    super.relatedArtifact,
    super.usage,
    required this.uniqueId,
  })  : versionAlgorithmX = versionAlgorithmX ??
            versionAlgorithmString ??
            versionAlgorithmCoding,
        super(
          resourceType: R5ResourceType.NamingSystem,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory NamingSystem.fromJson(
    Map<String, dynamic> json,
  ) {
    return NamingSystem(
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
          JsonParser.parsePolymorphic<VersionAlgorithmXNamingSystem>(
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
      )!,
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
      kind: JsonParser.parsePrimitive<NamingSystemType>(
        json,
        'kind',
        NamingSystemType.fromJson,
      )!,
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
      responsible: JsonParser.parsePrimitive<FhirString>(
        json,
        'responsible',
        FhirString.fromJson,
      ),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
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
      approvalDate: JsonParser.parsePrimitive<FhirDate>(
        json,
        'approvalDate',
        FhirDate.fromJson,
      ),
      lastReviewDate: JsonParser.parsePrimitive<FhirDate>(
        json,
        'lastReviewDate',
        FhirDate.fromJson,
      ),
      effectivePeriod: JsonParser.parseObject<Period>(
        json,
        'effectivePeriod',
        Period.fromJson,
      ),
      topic: (json['topic'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      author: (json['author'] as List<dynamic>?)
          ?.map<ContactDetail>(
            (v) => ContactDetail.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      editor: (json['editor'] as List<dynamic>?)
          ?.map<ContactDetail>(
            (v) => ContactDetail.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      reviewer: (json['reviewer'] as List<dynamic>?)
          ?.map<ContactDetail>(
            (v) => ContactDetail.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      endorser: (json['endorser'] as List<dynamic>?)
          ?.map<ContactDetail>(
            (v) => ContactDetail.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      relatedArtifact: (json['relatedArtifact'] as List<dynamic>?)
          ?.map<RelatedArtifact>(
            (v) => RelatedArtifact.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      usage: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'usage',
        FhirMarkdown.fromJson,
      ),
      uniqueId: (json['uniqueId'] as List<dynamic>)
          .map<NamingSystemUniqueId>(
            (v) => NamingSystemUniqueId.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [NamingSystem]
  /// from a [String] or [YamlMap] object
  factory NamingSystem.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return NamingSystem.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return NamingSystem.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'NamingSystem '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [NamingSystem]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory NamingSystem.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return NamingSystem.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'NamingSystem';

  /// [identifier]
  /// A formal identifier that is used to identify this naming system when it
  /// is represented in other formats, or referenced in a specification,
  /// model, design or an instance.
  final List<Identifier>? identifier;

  /// [versionAlgorithmX]
  /// Indicates the mechanism used to compare versions to determine which
  /// NamingSystem is more current.
  final VersionAlgorithmXNamingSystem? versionAlgorithmX;

  /// Getter for [versionAlgorithmString] as a FhirString
  FhirString? get versionAlgorithmString =>
      versionAlgorithmX?.isAs<FhirString>();

  /// Getter for [versionAlgorithmCoding] as a Coding
  Coding? get versionAlgorithmCoding => versionAlgorithmX?.isAs<Coding>();

  /// [name]
  /// A natural language name identifying the naming system. This name should
  /// be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  final FhirString name;

  /// [title]
  /// A short, descriptive, user-friendly title for the naming system.
  final FhirString? title;

  /// [kind]
  /// Indicates the purpose for the naming system - what kinds of things does
  /// it make unique?
  final NamingSystemType kind;

  /// [responsible]
  /// The name of the organization that is responsible for issuing
  /// identifiers or codes for this namespace and ensuring their
  /// non-collision.
  final FhirString? responsible;

  /// [type]
  /// Categorizes a naming system for easier search by grouping related
  /// naming systems.
  final CodeableConcept? type;

  /// [purpose]
  /// Explanation of why this naming system is needed and why it has been
  /// designed as it has.
  final FhirMarkdown? purpose;

  /// [copyright]
  /// A copyright statement relating to the naming system and/or its
  /// contents. Copyright statements are generally legal restrictions on the
  /// use and publishing of the naming system.
  final FhirMarkdown? copyright;

  /// [copyrightLabel]
  /// A short string (<50 characters), suitable for inclusion in a page
  /// footer that identifies the copyright holder, effective period, and
  /// optionally whether rights are resctricted. (e.g. 'All rights reserved',
  /// 'Some rights reserved').
  final FhirString? copyrightLabel;

  /// [uniqueId]
  /// Indicates how the system may be identified when referenced in
  /// electronic exchange.
  final List<NamingSystemUniqueId> uniqueId;
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
      'kind',
      kind,
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
      'responsible',
      responsible,
    );
    addField(
      'type',
      type,
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
      'approvalDate',
      approvalDate,
    );
    addField(
      'lastReviewDate',
      lastReviewDate,
    );
    addField(
      'effectivePeriod',
      effectivePeriod,
    );
    addField(
      'topic',
      topic,
    );
    addField(
      'author',
      author,
    );
    addField(
      'editor',
      editor,
    );
    addField(
      'reviewer',
      reviewer,
    );
    addField(
      'endorser',
      endorser,
    );
    addField(
      'relatedArtifact',
      relatedArtifact,
    );
    addField(
      'usage',
      usage,
    );
    addField(
      'uniqueId',
      uniqueId,
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
      'kind',
      'experimental',
      'date',
      'publisher',
      'contact',
      'responsible',
      'type',
      'description',
      'useContext',
      'jurisdiction',
      'purpose',
      'copyright',
      'copyrightLabel',
      'approvalDate',
      'lastReviewDate',
      'effectivePeriod',
      'topic',
      'author',
      'editor',
      'reviewer',
      'endorser',
      'relatedArtifact',
      'usage',
      'uniqueId',
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
        fields.add(name);
      case 'title':
        if (title != null) {
          fields.add(title!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'kind':
        fields.add(kind);
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
      case 'responsible':
        if (responsible != null) {
          fields.add(responsible!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
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
      case 'approvalDate':
        if (approvalDate != null) {
          fields.add(approvalDate!);
        }
      case 'lastReviewDate':
        if (lastReviewDate != null) {
          fields.add(lastReviewDate!);
        }
      case 'effectivePeriod':
        if (effectivePeriod != null) {
          fields.add(effectivePeriod!);
        }
      case 'topic':
        if (topic != null) {
          fields.addAll(topic!);
        }
      case 'author':
        if (author != null) {
          fields.addAll(author!);
        }
      case 'editor':
        if (editor != null) {
          fields.addAll(editor!);
        }
      case 'reviewer':
        if (reviewer != null) {
          fields.addAll(reviewer!);
        }
      case 'endorser':
        if (endorser != null) {
          fields.addAll(endorser!);
        }
      case 'relatedArtifact':
        if (relatedArtifact != null) {
          fields.addAll(relatedArtifact!);
        }
      case 'usage':
        if (usage != null) {
          fields.add(usage!);
        }
      case 'uniqueId':
        fields.addAll(uniqueId);
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
  NamingSystem clone() => copyWith();

  /// Copy function for [NamingSystem]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $NamingSystemCopyWith<NamingSystem> get copyWith =>
      _$NamingSystemCopyWithImpl<NamingSystem>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! NamingSystem) {
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
      kind,
      o.kind,
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
      responsible,
      o.responsible,
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
    if (!equalsDeepWithNull(
      approvalDate,
      o.approvalDate,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      lastReviewDate,
      o.lastReviewDate,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      effectivePeriod,
      o.effectivePeriod,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      topic,
      o.topic,
    )) {
      return false;
    }
    if (!listEquals<ContactDetail>(
      author,
      o.author,
    )) {
      return false;
    }
    if (!listEquals<ContactDetail>(
      editor,
      o.editor,
    )) {
      return false;
    }
    if (!listEquals<ContactDetail>(
      reviewer,
      o.reviewer,
    )) {
      return false;
    }
    if (!listEquals<ContactDetail>(
      endorser,
      o.endorser,
    )) {
      return false;
    }
    if (!listEquals<RelatedArtifact>(
      relatedArtifact,
      o.relatedArtifact,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      usage,
      o.usage,
    )) {
      return false;
    }
    if (!listEquals<NamingSystemUniqueId>(
      uniqueId,
      o.uniqueId,
    )) {
      return false;
    }
    return true;
  }
}

/// [NamingSystemUniqueId]
/// Indicates how the system may be identified when referenced in
/// electronic exchange.
class NamingSystemUniqueId extends BackboneElement {
  /// Primary constructor for
  /// [NamingSystemUniqueId]

  const NamingSystemUniqueId({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    required this.value,
    this.preferred,
    this.comment,
    this.period,
    this.authoritative,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory NamingSystemUniqueId.fromJson(
    Map<String, dynamic> json,
  ) {
    return NamingSystemUniqueId(
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
      type: JsonParser.parsePrimitive<NamingSystemIdentifierType>(
        json,
        'type',
        NamingSystemIdentifierType.fromJson,
      )!,
      value: JsonParser.parsePrimitive<FhirString>(
        json,
        'value',
        FhirString.fromJson,
      )!,
      preferred: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'preferred',
        FhirBoolean.fromJson,
      ),
      comment: JsonParser.parsePrimitive<FhirString>(
        json,
        'comment',
        FhirString.fromJson,
      ),
      period: JsonParser.parseObject<Period>(
        json,
        'period',
        Period.fromJson,
      ),
      authoritative: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'authoritative',
        FhirBoolean.fromJson,
      ),
    );
  }

  /// Deserialize [NamingSystemUniqueId]
  /// from a [String] or [YamlMap] object
  factory NamingSystemUniqueId.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return NamingSystemUniqueId.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return NamingSystemUniqueId.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'NamingSystemUniqueId '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [NamingSystemUniqueId]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory NamingSystemUniqueId.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return NamingSystemUniqueId.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'NamingSystemUniqueId';

  /// [type]
  /// Identifies the unique identifier scheme used for this particular
  /// identifier.
  final NamingSystemIdentifierType type;

  /// [value]
  /// The string that should be sent over the wire to identify the code
  /// system or identifier system.
  final FhirString value;

  /// [preferred]
  /// Indicates whether this identifier is the "preferred" identifier of this
  /// type.
  final FhirBoolean? preferred;

  /// [comment]
  /// Notes about the past or intended usage of this identifier.
  final FhirString? comment;

  /// [period]
  /// Identifies the period of time over which this identifier is considered
  /// appropriate to refer to the naming system. Outside of this window, the
  /// identifier might be non-deterministic.
  final Period? period;

  /// [authoritative]
  /// Indicates whether this identifier ie endorsed by the official owner of
  /// the associated naming system.
  final FhirBoolean? authoritative;
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
    addField(
      'value',
      value,
    );
    addField(
      'preferred',
      preferred,
    );
    addField(
      'comment',
      comment,
    );
    addField(
      'period',
      period,
    );
    addField(
      'authoritative',
      authoritative,
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
      'value',
      'preferred',
      'comment',
      'period',
      'authoritative',
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
        fields.add(type);
      case 'value':
        fields.add(value);
      case 'preferred':
        if (preferred != null) {
          fields.add(preferred!);
        }
      case 'comment':
        if (comment != null) {
          fields.add(comment!);
        }
      case 'period':
        if (period != null) {
          fields.add(period!);
        }
      case 'authoritative':
        if (authoritative != null) {
          fields.add(authoritative!);
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
  NamingSystemUniqueId clone() => copyWith();

  /// Copy function for [NamingSystemUniqueId]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $NamingSystemUniqueIdCopyWith<NamingSystemUniqueId> get copyWith =>
      _$NamingSystemUniqueIdCopyWithImpl<NamingSystemUniqueId>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! NamingSystemUniqueId) {
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
      value,
      o.value,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      preferred,
      o.preferred,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      comment,
      o.comment,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      period,
      o.period,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      authoritative,
      o.authoritative,
    )) {
      return false;
    }
    return true;
  }
}
