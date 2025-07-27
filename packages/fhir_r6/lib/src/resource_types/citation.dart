import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'citation.g.dart';

/// [Citation]
/// The Citation Resource enables reference to any knowledge artifact for
/// purposes of identification and attribution. The Citation Resource
/// supports existing reference structures and developing publication
/// practices such as versioning, expressing complex contributorship roles,
/// and referencing computable resources.
class Citation extends MetadataResource {
  /// Primary constructor for
  /// [Citation]

  const Citation({
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
    VersionAlgorithmXCitation? versionAlgorithmX,
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
    super.approvalDate,
    super.lastReviewDate,
    super.effectivePeriod,
    super.author,
    super.editor,
    super.reviewer,
    super.endorser,
    this.summary,
    this.classification,
    this.note,
    this.currentState,
    this.statusDate,
    super.relatedArtifact,
    this.citedArtifact,
  })  : versionAlgorithmX = versionAlgorithmX ??
            versionAlgorithmString ??
            versionAlgorithmCoding,
        super(
          resourceType: R6ResourceType.Citation,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Citation.fromJson(
    Map<String, dynamic> json,
  ) {
    return Citation(
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
      versionAlgorithmX: JsonParser.parsePolymorphic<VersionAlgorithmXCitation>(
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
      summary: (json['summary'] as List<dynamic>?)
          ?.map<CitationSummary>(
            (v) => CitationSummary.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      classification: (json['classification'] as List<dynamic>?)
          ?.map<CitationClassification>(
            (v) => CitationClassification.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      currentState: (json['currentState'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      statusDate: (json['statusDate'] as List<dynamic>?)
          ?.map<CitationStatusDate>(
            (v) => CitationStatusDate.fromJson(
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
      citedArtifact: JsonParser.parseObject<CitationCitedArtifact>(
        json,
        'citedArtifact',
        CitationCitedArtifact.fromJson,
      ),
    );
  }

  /// Deserialize [Citation]
  /// from a [String] or [YamlMap] object
  factory Citation.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Citation.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Citation.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Citation '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Citation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Citation.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return Citation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Citation';

  /// [identifier]
  /// A formal identifier that is used to identify this citation record when
  /// it is represented in other formats, or referenced in a specification,
  /// model, design or an instance.
  final List<Identifier>? identifier;

  /// [versionAlgorithmX]
  /// Indicates the mechanism used to compare versions to determine which is
  /// more current.
  final VersionAlgorithmXCitation? versionAlgorithmX;

  /// Getter for [versionAlgorithmString] as a FhirString
  FhirString? get versionAlgorithmString =>
      versionAlgorithmX?.isAs<FhirString>();

  /// Getter for [versionAlgorithmCoding] as a Coding
  Coding? get versionAlgorithmCoding => versionAlgorithmX?.isAs<Coding>();

  /// [name]
  /// A natural language name identifying the citation record. This name
  /// should be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  final FhirString? name;

  /// [title]
  /// A short, descriptive, user-friendly title for the citation record.
  final FhirString? title;

  /// [purpose]
  /// Explanation of why this citation is needed and why it has been designed
  /// as it has.
  final FhirMarkdown? purpose;

  /// [copyright]
  /// Use and/or publishing restrictions for the citation record, not for the
  /// cited artifact.
  final FhirMarkdown? copyright;

  /// [copyrightLabel]
  /// A short string (<50 characters), suitable for inclusion in a page
  /// footer that identifies the copyright holder, effective period, and
  /// optionally whether rights are resctricted. (e.g. 'All rights reserved',
  /// 'Some rights reserved').
  final FhirString? copyrightLabel;

  /// [summary]
  /// A human-readable display of key concepts to represent the citation.
  final List<CitationSummary>? summary;

  /// [classification]
  /// The assignment to an organizing scheme.
  final List<CitationClassification>? classification;

  /// [note]
  /// Used for general notes and annotations not coded elsewhere.
  final List<Annotation>? note;

  /// [currentState]
  /// The status of the citation record.
  final List<CodeableConcept>? currentState;

  /// [statusDate]
  /// The state or status of the citation record paired with an effective
  /// date or period for that state.
  final List<CitationStatusDate>? statusDate;

  /// [citedArtifact]
  /// The article or artifact being described.
  final CitationCitedArtifact? citedArtifact;
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
      'summary',
      summary,
    );
    addField(
      'classification',
      classification,
    );
    addField(
      'note',
      note,
    );
    addField(
      'currentState',
      currentState,
    );
    addField(
      'statusDate',
      statusDate,
    );
    addField(
      'relatedArtifact',
      relatedArtifact,
    );
    addField(
      'citedArtifact',
      citedArtifact,
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
      'approvalDate',
      'lastReviewDate',
      'effectivePeriod',
      'author',
      'editor',
      'reviewer',
      'endorser',
      'summary',
      'classification',
      'note',
      'currentState',
      'statusDate',
      'relatedArtifact',
      'citedArtifact',
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
      case 'summary':
        if (summary != null) {
          fields.addAll(summary!);
        }
      case 'classification':
        if (classification != null) {
          fields.addAll(classification!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      case 'currentState':
        if (currentState != null) {
          fields.addAll(currentState!);
        }
      case 'statusDate':
        if (statusDate != null) {
          fields.addAll(statusDate!);
        }
      case 'relatedArtifact':
        if (relatedArtifact != null) {
          fields.addAll(relatedArtifact!);
        }
      case 'citedArtifact':
        if (citedArtifact != null) {
          fields.add(citedArtifact!);
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
  Citation clone() => copyWith();

  /// Copy function for [Citation]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $CitationCopyWith<Citation> get copyWith => _$CitationCopyWithImpl<Citation>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Citation) {
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
    if (!listEquals<CitationSummary>(
      summary,
      o.summary,
    )) {
      return false;
    }
    if (!listEquals<CitationClassification>(
      classification,
      o.classification,
    )) {
      return false;
    }
    if (!listEquals<Annotation>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      currentState,
      o.currentState,
    )) {
      return false;
    }
    if (!listEquals<CitationStatusDate>(
      statusDate,
      o.statusDate,
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
      citedArtifact,
      o.citedArtifact,
    )) {
      return false;
    }
    return true;
  }
}

/// [CitationSummary]
/// A human-readable display of key concepts to represent the citation.
class CitationSummary extends BackboneElement {
  /// Primary constructor for
  /// [CitationSummary]

  const CitationSummary({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.style,
    required this.text,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationSummary.fromJson(
    Map<String, dynamic> json,
  ) {
    return CitationSummary(
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
      style: JsonParser.parseObject<CodeableConcept>(
        json,
        'style',
        CodeableConcept.fromJson,
      ),
      text: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'text',
        FhirMarkdown.fromJson,
      )!,
    );
  }

  /// Deserialize [CitationSummary]
  /// from a [String] or [YamlMap] object
  factory CitationSummary.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CitationSummary.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CitationSummary.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CitationSummary '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CitationSummary]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CitationSummary.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CitationSummary.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CitationSummary';

  /// [style]
  /// Format for display of the citation summary.
  final CodeableConcept? style;

  /// [text]
  /// The human-readable display of the citation summary.
  final FhirMarkdown text;
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
      'style',
      style,
    );
    addField(
      'text',
      text,
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
      'style',
      'text',
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
      case 'style':
        if (style != null) {
          fields.add(style!);
        }
      case 'text':
        fields.add(text);
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
  CitationSummary clone() => copyWith();

  /// Copy function for [CitationSummary]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $CitationSummaryCopyWith<CitationSummary> get copyWith =>
      _$CitationSummaryCopyWithImpl<CitationSummary>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CitationSummary) {
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
      style,
      o.style,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      text,
      o.text,
    )) {
      return false;
    }
    return true;
  }
}

/// [CitationClassification]
/// The assignment to an organizing scheme.
class CitationClassification extends BackboneElement {
  /// Primary constructor for
  /// [CitationClassification]

  const CitationClassification({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.classifier,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationClassification.fromJson(
    Map<String, dynamic> json,
  ) {
    return CitationClassification(
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
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
      classifier: (json['classifier'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [CitationClassification]
  /// from a [String] or [YamlMap] object
  factory CitationClassification.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CitationClassification.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CitationClassification.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CitationClassification '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CitationClassification]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CitationClassification.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CitationClassification.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CitationClassification';

  /// [type]
  /// The kind of classifier (e.g. publication type, keyword).
  final CodeableConcept? type;

  /// [classifier]
  /// The specific classification value.
  final List<CodeableConcept>? classifier;
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
      'classifier',
      classifier,
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
      'classifier',
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
        if (type != null) {
          fields.add(type!);
        }
      case 'classifier':
        if (classifier != null) {
          fields.addAll(classifier!);
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
  CitationClassification clone() => copyWith();

  /// Copy function for [CitationClassification]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $CitationClassificationCopyWith<CitationClassification> get copyWith =>
      _$CitationClassificationCopyWithImpl<CitationClassification>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CitationClassification) {
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
    if (!listEquals<CodeableConcept>(
      classifier,
      o.classifier,
    )) {
      return false;
    }
    return true;
  }
}

/// [CitationStatusDate]
/// The state or status of the citation record paired with an effective
/// date or period for that state.
class CitationStatusDate extends BackboneElement {
  /// Primary constructor for
  /// [CitationStatusDate]

  const CitationStatusDate({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.activity,
    this.actual,
    required this.period,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationStatusDate.fromJson(
    Map<String, dynamic> json,
  ) {
    return CitationStatusDate(
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
      activity: JsonParser.parseObject<CodeableConcept>(
        json,
        'activity',
        CodeableConcept.fromJson,
      )!,
      actual: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'actual',
        FhirBoolean.fromJson,
      ),
      period: JsonParser.parseObject<Period>(
        json,
        'period',
        Period.fromJson,
      )!,
    );
  }

  /// Deserialize [CitationStatusDate]
  /// from a [String] or [YamlMap] object
  factory CitationStatusDate.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CitationStatusDate.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CitationStatusDate.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CitationStatusDate '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CitationStatusDate]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CitationStatusDate.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CitationStatusDate.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CitationStatusDate';

  /// [activity]
  /// The state or status of the citation record (that will be paired with
  /// the period).
  final CodeableConcept activity;

  /// [actual]
  /// Whether the status date is actual (has occurred) or expected (estimated
  /// or anticipated).
  final FhirBoolean? actual;

  /// [period]
  /// When the status started and/or ended.
  final Period period;
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
      'activity',
      activity,
    );
    addField(
      'actual',
      actual,
    );
    addField(
      'period',
      period,
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
      'activity',
      'actual',
      'period',
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
      case 'activity':
        fields.add(activity);
      case 'actual':
        if (actual != null) {
          fields.add(actual!);
        }
      case 'period':
        fields.add(period);
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
  CitationStatusDate clone() => copyWith();

  /// Copy function for [CitationStatusDate]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $CitationStatusDateCopyWith<CitationStatusDate> get copyWith =>
      _$CitationStatusDateCopyWithImpl<CitationStatusDate>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CitationStatusDate) {
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
      activity,
      o.activity,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      actual,
      o.actual,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      period,
      o.period,
    )) {
      return false;
    }
    return true;
  }
}

/// [CitationCitedArtifact]
/// The article or artifact being described.
class CitationCitedArtifact extends BackboneElement {
  /// Primary constructor for
  /// [CitationCitedArtifact]

  const CitationCitedArtifact({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.relatedIdentifier,
    this.dateAccessed,
    this.version,
    this.currentState,
    this.statusDate,
    this.title,
    this.abstract_,
    this.part_,
    this.relatesTo,
    this.publicationForm,
    this.webLocation,
    this.classification,
    this.contributorship,
    this.note,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationCitedArtifact.fromJson(
    Map<String, dynamic> json,
  ) {
    return CitationCitedArtifact(
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
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      relatedIdentifier: (json['relatedIdentifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      dateAccessed: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'dateAccessed',
        FhirDateTime.fromJson,
      ),
      version: JsonParser.parseObject<CitationVersion>(
        json,
        'version',
        CitationVersion.fromJson,
      ),
      currentState: (json['currentState'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      statusDate: (json['statusDate'] as List<dynamic>?)
          ?.map<CitationStatusDate>(
            (v) => CitationStatusDate.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      title: (json['title'] as List<dynamic>?)
          ?.map<CitationTitle>(
            (v) => CitationTitle.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      abstract_: (json['abstract'] as List<dynamic>?)
          ?.map<CitationAbstract>(
            (v) => CitationAbstract.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      part_: JsonParser.parseObject<CitationPart>(
        json,
        'part',
        CitationPart.fromJson,
      ),
      relatesTo: (json['relatesTo'] as List<dynamic>?)
          ?.map<CitationRelatesTo>(
            (v) => CitationRelatesTo.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      publicationForm: (json['publicationForm'] as List<dynamic>?)
          ?.map<CitationPublicationForm>(
            (v) => CitationPublicationForm.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      webLocation: (json['webLocation'] as List<dynamic>?)
          ?.map<CitationWebLocation>(
            (v) => CitationWebLocation.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      classification: (json['classification'] as List<dynamic>?)
          ?.map<CitationClassification>(
            (v) => CitationClassification.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      contributorship: JsonParser.parseObject<CitationContributorship>(
        json,
        'contributorship',
        CitationContributorship.fromJson,
      ),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [CitationCitedArtifact]
  /// from a [String] or [YamlMap] object
  factory CitationCitedArtifact.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CitationCitedArtifact.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CitationCitedArtifact.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CitationCitedArtifact '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CitationCitedArtifact]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CitationCitedArtifact.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CitationCitedArtifact.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CitationCitedArtifact';

  /// [identifier]
  /// A formal identifier that is used to identify the cited artifact when it
  /// is represented in other formats, or referenced in a specification,
  /// model, design or an instance.
  final List<Identifier>? identifier;

  /// [relatedIdentifier]
  /// A formal identifier that is used to identify things closely related to
  /// the cited artifact.
  final List<Identifier>? relatedIdentifier;

  /// [dateAccessed]
  /// When the cited artifact was accessed.
  final FhirDateTime? dateAccessed;

  /// [version]
  /// The defined version of the cited artifact.
  final CitationVersion? version;

  /// [currentState]
  /// The status of the cited artifact.
  final List<CodeableConcept>? currentState;

  /// [statusDate]
  /// An effective date or period, historical or future, actual or expected,
  /// for a status of the cited artifact.
  final List<CitationStatusDate>? statusDate;

  /// [title]
  /// The title details of the article or artifact.
  final List<CitationTitle>? title;

  /// [abstract_]
  /// The abstract may be used to convey article-contained abstracts,
  /// externally-created abstracts, or other descriptive summaries.
  final List<CitationAbstract>? abstract_;

  /// [part_]
  /// The component of the article or artifact.
  final CitationPart? part_;

  /// [relatesTo]
  /// The artifact related to the cited artifact.
  final List<CitationRelatesTo>? relatesTo;

  /// [publicationForm]
  /// If multiple, used to represent alternative forms of the article that
  /// are not separate citations.
  final List<CitationPublicationForm>? publicationForm;

  /// [webLocation]
  /// Used for any URL for the article or artifact cited.
  final List<CitationWebLocation>? webLocation;

  /// [classification]
  /// The assignment to an organizing scheme.
  final List<CitationClassification>? classification;

  /// [contributorship]
  /// This element is used to list authors and other contributors, their
  /// contact information, specific contributions, and summary statements.
  final CitationContributorship? contributorship;

  /// [note]
  /// Any additional information or content for the article or artifact.
  final List<Annotation>? note;
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
      'relatedIdentifier',
      relatedIdentifier,
    );
    addField(
      'dateAccessed',
      dateAccessed,
    );
    addField(
      'version',
      version,
    );
    addField(
      'currentState',
      currentState,
    );
    addField(
      'statusDate',
      statusDate,
    );
    addField(
      'title',
      title,
    );
    addField(
      'abstract',
      abstract_,
    );
    addField(
      'part',
      part_,
    );
    addField(
      'relatesTo',
      relatesTo,
    );
    addField(
      'publicationForm',
      publicationForm,
    );
    addField(
      'webLocation',
      webLocation,
    );
    addField(
      'classification',
      classification,
    );
    addField(
      'contributorship',
      contributorship,
    );
    addField(
      'note',
      note,
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
      'relatedIdentifier',
      'dateAccessed',
      'version',
      'currentState',
      'statusDate',
      'title',
      'abstract',
      'part',
      'relatesTo',
      'publicationForm',
      'webLocation',
      'classification',
      'contributorship',
      'note',
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
          fields.addAll(identifier!);
        }
      case 'relatedIdentifier':
        if (relatedIdentifier != null) {
          fields.addAll(relatedIdentifier!);
        }
      case 'dateAccessed':
        if (dateAccessed != null) {
          fields.add(dateAccessed!);
        }
      case 'version':
        if (version != null) {
          fields.add(version!);
        }
      case 'currentState':
        if (currentState != null) {
          fields.addAll(currentState!);
        }
      case 'statusDate':
        if (statusDate != null) {
          fields.addAll(statusDate!);
        }
      case 'title':
        if (title != null) {
          fields.addAll(title!);
        }
      case 'abstract':
        if (abstract_ != null) {
          fields.addAll(abstract_!);
        }
      case 'part':
        if (part_ != null) {
          fields.add(part_!);
        }
      case 'relatesTo':
        if (relatesTo != null) {
          fields.addAll(relatesTo!);
        }
      case 'publicationForm':
        if (publicationForm != null) {
          fields.addAll(publicationForm!);
        }
      case 'webLocation':
        if (webLocation != null) {
          fields.addAll(webLocation!);
        }
      case 'classification':
        if (classification != null) {
          fields.addAll(classification!);
        }
      case 'contributorship':
        if (contributorship != null) {
          fields.add(contributorship!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
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
  CitationCitedArtifact clone() => copyWith();

  /// Copy function for [CitationCitedArtifact]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $CitationCitedArtifactCopyWith<CitationCitedArtifact> get copyWith =>
      _$CitationCitedArtifactCopyWithImpl<CitationCitedArtifact>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CitationCitedArtifact) {
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
    if (!listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!listEquals<Identifier>(
      relatedIdentifier,
      o.relatedIdentifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      dateAccessed,
      o.dateAccessed,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      version,
      o.version,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      currentState,
      o.currentState,
    )) {
      return false;
    }
    if (!listEquals<CitationStatusDate>(
      statusDate,
      o.statusDate,
    )) {
      return false;
    }
    if (!listEquals<CitationTitle>(
      title,
      o.title,
    )) {
      return false;
    }
    if (!listEquals<CitationAbstract>(
      abstract_,
      o.abstract_,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      part_,
      o.part_,
    )) {
      return false;
    }
    if (!listEquals<CitationRelatesTo>(
      relatesTo,
      o.relatesTo,
    )) {
      return false;
    }
    if (!listEquals<CitationPublicationForm>(
      publicationForm,
      o.publicationForm,
    )) {
      return false;
    }
    if (!listEquals<CitationWebLocation>(
      webLocation,
      o.webLocation,
    )) {
      return false;
    }
    if (!listEquals<CitationClassification>(
      classification,
      o.classification,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      contributorship,
      o.contributorship,
    )) {
      return false;
    }
    if (!listEquals<Annotation>(
      note,
      o.note,
    )) {
      return false;
    }
    return true;
  }
}

/// [CitationVersion]
/// The defined version of the cited artifact.
class CitationVersion extends BackboneElement {
  /// Primary constructor for
  /// [CitationVersion]

  const CitationVersion({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.value,
    this.baseCitation,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationVersion.fromJson(
    Map<String, dynamic> json,
  ) {
    return CitationVersion(
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
      value: JsonParser.parsePrimitive<FhirString>(
        json,
        'value',
        FhirString.fromJson,
      )!,
      baseCitation: JsonParser.parseObject<Reference>(
        json,
        'baseCitation',
        Reference.fromJson,
      ),
    );
  }

  /// Deserialize [CitationVersion]
  /// from a [String] or [YamlMap] object
  factory CitationVersion.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CitationVersion.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CitationVersion.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CitationVersion '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CitationVersion]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CitationVersion.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CitationVersion.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CitationVersion';

  /// [value]
  /// The version number or other version identifier.
  final FhirString value;

  /// [baseCitation]
  /// Citation for the main version of the cited artifact.
  final Reference? baseCitation;
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
      'value',
      value,
    );
    addField(
      'baseCitation',
      baseCitation,
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
      'value',
      'baseCitation',
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
      case 'value':
        fields.add(value);
      case 'baseCitation':
        if (baseCitation != null) {
          fields.add(baseCitation!);
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
  CitationVersion clone() => copyWith();

  /// Copy function for [CitationVersion]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $CitationVersionCopyWith<CitationVersion> get copyWith =>
      _$CitationVersionCopyWithImpl<CitationVersion>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CitationVersion) {
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
      value,
      o.value,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      baseCitation,
      o.baseCitation,
    )) {
      return false;
    }
    return true;
  }
}

/// [CitationStatusDate1]
/// An effective date or period, historical or future, actual or expected,
/// for a status of the cited artifact.
class CitationStatusDate1 extends BackboneElement {
  /// Primary constructor for
  /// [CitationStatusDate1]

  const CitationStatusDate1({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.activity,
    this.actual,
    required this.period,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationStatusDate1.fromJson(
    Map<String, dynamic> json,
  ) {
    return CitationStatusDate1(
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
      activity: JsonParser.parseObject<CodeableConcept>(
        json,
        'activity',
        CodeableConcept.fromJson,
      )!,
      actual: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'actual',
        FhirBoolean.fromJson,
      ),
      period: JsonParser.parseObject<Period>(
        json,
        'period',
        Period.fromJson,
      )!,
    );
  }

  /// Deserialize [CitationStatusDate1]
  /// from a [String] or [YamlMap] object
  factory CitationStatusDate1.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CitationStatusDate1.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CitationStatusDate1.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CitationStatusDate1 '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CitationStatusDate1]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CitationStatusDate1.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CitationStatusDate1.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CitationStatusDate1';

  /// [activity]
  /// A definition of the status associated with a date or period.
  final CodeableConcept activity;

  /// [actual]
  /// Either occurred or expected.
  final FhirBoolean? actual;

  /// [period]
  /// When the status started and/or ended.
  final Period period;
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
      'activity',
      activity,
    );
    addField(
      'actual',
      actual,
    );
    addField(
      'period',
      period,
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
      'activity',
      'actual',
      'period',
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
      case 'activity':
        fields.add(activity);
      case 'actual':
        if (actual != null) {
          fields.add(actual!);
        }
      case 'period':
        fields.add(period);
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
  CitationStatusDate1 clone() => copyWith();

  /// Copy function for [CitationStatusDate1]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $CitationStatusDate1CopyWith<CitationStatusDate1> get copyWith =>
      _$CitationStatusDate1CopyWithImpl<CitationStatusDate1>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CitationStatusDate1) {
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
      activity,
      o.activity,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      actual,
      o.actual,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      period,
      o.period,
    )) {
      return false;
    }
    return true;
  }
}

/// [CitationTitle]
/// The title details of the article or artifact.
class CitationTitle extends BackboneElement {
  /// Primary constructor for
  /// [CitationTitle]

  const CitationTitle({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.language,
    required this.text,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationTitle.fromJson(
    Map<String, dynamic> json,
  ) {
    return CitationTitle(
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
      type: (json['type'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      language: JsonParser.parseObject<CodeableConcept>(
        json,
        'language',
        CodeableConcept.fromJson,
      ),
      text: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'text',
        FhirMarkdown.fromJson,
      )!,
    );
  }

  /// Deserialize [CitationTitle]
  /// from a [String] or [YamlMap] object
  factory CitationTitle.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CitationTitle.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CitationTitle.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CitationTitle '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CitationTitle]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CitationTitle.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CitationTitle.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CitationTitle';

  /// [type]
  /// Used to express the reason for or classification of the title.
  final List<CodeableConcept>? type;

  /// [language]
  /// Used to express the specific language of the title.
  final CodeableConcept? language;

  /// [text]
  /// The title of the article or artifact.
  final FhirMarkdown text;
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
      'language',
      language,
    );
    addField(
      'text',
      text,
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
      'language',
      'text',
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
        if (type != null) {
          fields.addAll(type!);
        }
      case 'language':
        if (language != null) {
          fields.add(language!);
        }
      case 'text':
        fields.add(text);
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
  CitationTitle clone() => copyWith();

  /// Copy function for [CitationTitle]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $CitationTitleCopyWith<CitationTitle> get copyWith =>
      _$CitationTitleCopyWithImpl<CitationTitle>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CitationTitle) {
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
      type,
      o.type,
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
    return true;
  }
}

/// [CitationAbstract]
/// The abstract may be used to convey article-contained abstracts,
/// externally-created abstracts, or other descriptive summaries.
class CitationAbstract extends BackboneElement {
  /// Primary constructor for
  /// [CitationAbstract]

  const CitationAbstract({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.language,
    required this.text,
    this.copyright,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationAbstract.fromJson(
    Map<String, dynamic> json,
  ) {
    return CitationAbstract(
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
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
      language: JsonParser.parseObject<CodeableConcept>(
        json,
        'language',
        CodeableConcept.fromJson,
      ),
      text: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'text',
        FhirMarkdown.fromJson,
      )!,
      copyright: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'copyright',
        FhirMarkdown.fromJson,
      ),
    );
  }

  /// Deserialize [CitationAbstract]
  /// from a [String] or [YamlMap] object
  factory CitationAbstract.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CitationAbstract.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CitationAbstract.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CitationAbstract '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CitationAbstract]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CitationAbstract.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CitationAbstract.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CitationAbstract';

  /// [type]
  /// Used to express the reason for or classification of the abstract.
  final CodeableConcept? type;

  /// [language]
  /// Used to express the specific language of the abstract.
  final CodeableConcept? language;

  /// [text]
  /// Abstract content.
  final FhirMarkdown text;

  /// [copyright]
  /// Copyright notice for the abstract.
  final FhirMarkdown? copyright;
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
      'language',
      language,
    );
    addField(
      'text',
      text,
    );
    addField(
      'copyright',
      copyright,
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
      'language',
      'text',
      'copyright',
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
        if (type != null) {
          fields.add(type!);
        }
      case 'language':
        if (language != null) {
          fields.add(language!);
        }
      case 'text':
        fields.add(text);
      case 'copyright':
        if (copyright != null) {
          fields.add(copyright!);
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
  CitationAbstract clone() => copyWith();

  /// Copy function for [CitationAbstract]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $CitationAbstractCopyWith<CitationAbstract> get copyWith =>
      _$CitationAbstractCopyWithImpl<CitationAbstract>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CitationAbstract) {
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
    if (!equalsDeepWithNull(
      copyright,
      o.copyright,
    )) {
      return false;
    }
    return true;
  }
}

/// [CitationPart]
/// The component of the article or artifact.
class CitationPart extends BackboneElement {
  /// Primary constructor for
  /// [CitationPart]

  const CitationPart({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.value,
    this.baseCitation,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationPart.fromJson(
    Map<String, dynamic> json,
  ) {
    return CitationPart(
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
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
      value: JsonParser.parsePrimitive<FhirString>(
        json,
        'value',
        FhirString.fromJson,
      ),
      baseCitation: JsonParser.parseObject<Reference>(
        json,
        'baseCitation',
        Reference.fromJson,
      ),
    );
  }

  /// Deserialize [CitationPart]
  /// from a [String] or [YamlMap] object
  factory CitationPart.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CitationPart.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CitationPart.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CitationPart '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CitationPart]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CitationPart.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CitationPart.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CitationPart';

  /// [type]
  /// The kind of component.
  final CodeableConcept? type;

  /// [value]
  /// The specification of the component.
  final FhirString? value;

  /// [baseCitation]
  /// The citation for the full article or artifact.
  final Reference? baseCitation;
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
      'baseCitation',
      baseCitation,
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
      'baseCitation',
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
        if (type != null) {
          fields.add(type!);
        }
      case 'value':
        if (value != null) {
          fields.add(value!);
        }
      case 'baseCitation':
        if (baseCitation != null) {
          fields.add(baseCitation!);
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
  CitationPart clone() => copyWith();

  /// Copy function for [CitationPart]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $CitationPartCopyWith<CitationPart> get copyWith =>
      _$CitationPartCopyWithImpl<CitationPart>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CitationPart) {
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
      baseCitation,
      o.baseCitation,
    )) {
      return false;
    }
    return true;
  }
}

/// [CitationRelatesTo]
/// The artifact related to the cited artifact.
class CitationRelatesTo extends BackboneElement {
  /// Primary constructor for
  /// [CitationRelatesTo]

  const CitationRelatesTo({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.classifier,
    this.label,
    this.display,
    this.citation,
    this.document,
    this.resource,
    this.resourceReference,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationRelatesTo.fromJson(
    Map<String, dynamic> json,
  ) {
    return CitationRelatesTo(
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
      type: JsonParser.parsePrimitive<RelatedArtifactTypeExpanded>(
        json,
        'type',
        RelatedArtifactTypeExpanded.fromJson,
      )!,
      classifier: (json['classifier'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      label: JsonParser.parsePrimitive<FhirString>(
        json,
        'label',
        FhirString.fromJson,
      ),
      display: JsonParser.parsePrimitive<FhirString>(
        json,
        'display',
        FhirString.fromJson,
      ),
      citation: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'citation',
        FhirMarkdown.fromJson,
      ),
      document: JsonParser.parseObject<Attachment>(
        json,
        'document',
        Attachment.fromJson,
      ),
      resource: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'resource',
        FhirCanonical.fromJson,
      ),
      resourceReference: JsonParser.parseObject<Reference>(
        json,
        'resourceReference',
        Reference.fromJson,
      ),
    );
  }

  /// Deserialize [CitationRelatesTo]
  /// from a [String] or [YamlMap] object
  factory CitationRelatesTo.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CitationRelatesTo.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CitationRelatesTo.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CitationRelatesTo '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CitationRelatesTo]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CitationRelatesTo.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CitationRelatesTo.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CitationRelatesTo';

  /// [type]
  /// The type of relationship to the related artifact.
  final RelatedArtifactTypeExpanded type;

  /// [classifier]
  /// Provides additional classifiers of the related artifact.
  final List<CodeableConcept>? classifier;

  /// [label]
  /// A short label that can be used to reference the related artifact from
  /// elsewhere in the containing artifact, such as a footnote index.
  final FhirString? label;

  /// [display]
  /// A brief description of the document or knowledge resource being
  /// referenced, suitable for display to a consumer.
  final FhirString? display;

  /// [citation]
  /// A bibliographic citation for the related artifact. This text SHOULD be
  /// formatted according to an accepted citation format.
  final FhirMarkdown? citation;

  /// [document]
  /// The document being referenced, represented as an attachment. Do not use
  /// this element if using the resource element to provide the canonical to
  /// the related artifact.
  final Attachment? document;

  /// [resource]
  /// The related artifact, such as a library, value set, profile, or other
  /// knowledge resource.
  final FhirCanonical? resource;

  /// [resourceReference]
  /// The related artifact, if the artifact is not a canonical resource, or a
  /// resource reference to a canonical resource.
  final Reference? resourceReference;
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
      'classifier',
      classifier,
    );
    addField(
      'label',
      label,
    );
    addField(
      'display',
      display,
    );
    addField(
      'citation',
      citation,
    );
    addField(
      'document',
      document,
    );
    addField(
      'resource',
      resource,
    );
    addField(
      'resourceReference',
      resourceReference,
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
      'classifier',
      'label',
      'display',
      'citation',
      'document',
      'resource',
      'resourceReference',
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
      case 'classifier':
        if (classifier != null) {
          fields.addAll(classifier!);
        }
      case 'label':
        if (label != null) {
          fields.add(label!);
        }
      case 'display':
        if (display != null) {
          fields.add(display!);
        }
      case 'citation':
        if (citation != null) {
          fields.add(citation!);
        }
      case 'document':
        if (document != null) {
          fields.add(document!);
        }
      case 'resource':
        if (resource != null) {
          fields.add(resource!);
        }
      case 'resourceReference':
        if (resourceReference != null) {
          fields.add(resourceReference!);
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
  CitationRelatesTo clone() => copyWith();

  /// Copy function for [CitationRelatesTo]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $CitationRelatesToCopyWith<CitationRelatesTo> get copyWith =>
      _$CitationRelatesToCopyWithImpl<CitationRelatesTo>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CitationRelatesTo) {
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
    if (!listEquals<CodeableConcept>(
      classifier,
      o.classifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      label,
      o.label,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      display,
      o.display,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      citation,
      o.citation,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      document,
      o.document,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      resource,
      o.resource,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      resourceReference,
      o.resourceReference,
    )) {
      return false;
    }
    return true;
  }
}

/// [CitationPublicationForm]
/// If multiple, used to represent alternative forms of the article that
/// are not separate citations.
class CitationPublicationForm extends BackboneElement {
  /// Primary constructor for
  /// [CitationPublicationForm]

  const CitationPublicationForm({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.publishedIn,
    this.citedMedium,
    this.volume,
    this.issue,
    this.articleDate,
    this.publicationDateText,
    this.publicationDateSeason,
    this.lastRevisionDate,
    this.language,
    this.accessionNumber,
    this.pageString,
    this.firstPage,
    this.lastPage,
    this.pageCount,
    this.copyright,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationPublicationForm.fromJson(
    Map<String, dynamic> json,
  ) {
    return CitationPublicationForm(
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
      publishedIn: JsonParser.parseObject<CitationPublishedIn>(
        json,
        'publishedIn',
        CitationPublishedIn.fromJson,
      ),
      citedMedium: JsonParser.parseObject<CodeableConcept>(
        json,
        'citedMedium',
        CodeableConcept.fromJson,
      ),
      volume: JsonParser.parsePrimitive<FhirString>(
        json,
        'volume',
        FhirString.fromJson,
      ),
      issue: JsonParser.parsePrimitive<FhirString>(
        json,
        'issue',
        FhirString.fromJson,
      ),
      articleDate: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'articleDate',
        FhirDateTime.fromJson,
      ),
      publicationDateText: JsonParser.parsePrimitive<FhirString>(
        json,
        'publicationDateText',
        FhirString.fromJson,
      ),
      publicationDateSeason: JsonParser.parsePrimitive<FhirString>(
        json,
        'publicationDateSeason',
        FhirString.fromJson,
      ),
      lastRevisionDate: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'lastRevisionDate',
        FhirDateTime.fromJson,
      ),
      language: (json['language'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      accessionNumber: JsonParser.parsePrimitive<FhirString>(
        json,
        'accessionNumber',
        FhirString.fromJson,
      ),
      pageString: JsonParser.parsePrimitive<FhirString>(
        json,
        'pageString',
        FhirString.fromJson,
      ),
      firstPage: JsonParser.parsePrimitive<FhirString>(
        json,
        'firstPage',
        FhirString.fromJson,
      ),
      lastPage: JsonParser.parsePrimitive<FhirString>(
        json,
        'lastPage',
        FhirString.fromJson,
      ),
      pageCount: JsonParser.parsePrimitive<FhirString>(
        json,
        'pageCount',
        FhirString.fromJson,
      ),
      copyright: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'copyright',
        FhirMarkdown.fromJson,
      ),
    );
  }

  /// Deserialize [CitationPublicationForm]
  /// from a [String] or [YamlMap] object
  factory CitationPublicationForm.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CitationPublicationForm.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CitationPublicationForm.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CitationPublicationForm '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CitationPublicationForm]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CitationPublicationForm.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CitationPublicationForm.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CitationPublicationForm';

  /// [publishedIn]
  /// The collection the cited article or artifact is published in.
  final CitationPublishedIn? publishedIn;

  /// [citedMedium]
  /// Describes the form of the medium cited. Common codes are "Internet" or
  /// "Print". The CitedMedium value set has 6 codes. The codes internet,
  /// print, and offline-digital-storage are the common codes for a typical
  /// publication form, though internet and print are more common for study
  /// citations. Three additional codes (each appending one of the primary
  /// codes with "-without-issue" are used for situations when a study is
  /// published both within an issue (of a periodical release as commonly
  /// done for journals) AND is published separately from the issue (as
  /// commonly done with early online publication), to represent specific
  /// identification of the publication form not associated with the issue.
  final CodeableConcept? citedMedium;

  /// [volume]
  /// Volume number of journal or other collection in which the article is
  /// published.
  final FhirString? volume;

  /// [issue]
  /// Issue, part or supplement of journal or other collection in which the
  /// article is published.
  final FhirString? issue;

  /// [articleDate]
  /// The date the article was added to the database, or the date the article
  /// was released.
  final FhirDateTime? articleDate;

  /// [publicationDateText]
  /// Text representation of the date on which the issue of the cited
  /// artifact was published.
  final FhirString? publicationDateText;

  /// [publicationDateSeason]
  /// Spring, Summer, Fall/Autumn, Winter.
  final FhirString? publicationDateSeason;

  /// [lastRevisionDate]
  /// The date the article was last revised or updated in the database.
  final FhirDateTime? lastRevisionDate;

  /// [language]
  /// The language or languages in which this form of the article is
  /// published.
  final List<CodeableConcept>? language;

  /// [accessionNumber]
  /// Entry number or identifier for inclusion in a database.
  final FhirString? accessionNumber;

  /// [pageString]
  /// Used for full display of pagination.
  final FhirString? pageString;

  /// [firstPage]
  /// Used for isolated representation of first page.
  final FhirString? firstPage;

  /// [lastPage]
  /// Used for isolated representation of last page.
  final FhirString? lastPage;

  /// [pageCount]
  /// Actual or approximate number of pages or screens. Distinct from
  /// reporting the page numbers.
  final FhirString? pageCount;

  /// [copyright]
  /// Copyright notice for the full article or artifact.
  final FhirMarkdown? copyright;
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
      'publishedIn',
      publishedIn,
    );
    addField(
      'citedMedium',
      citedMedium,
    );
    addField(
      'volume',
      volume,
    );
    addField(
      'issue',
      issue,
    );
    addField(
      'articleDate',
      articleDate,
    );
    addField(
      'publicationDateText',
      publicationDateText,
    );
    addField(
      'publicationDateSeason',
      publicationDateSeason,
    );
    addField(
      'lastRevisionDate',
      lastRevisionDate,
    );
    addField(
      'language',
      language,
    );
    addField(
      'accessionNumber',
      accessionNumber,
    );
    addField(
      'pageString',
      pageString,
    );
    addField(
      'firstPage',
      firstPage,
    );
    addField(
      'lastPage',
      lastPage,
    );
    addField(
      'pageCount',
      pageCount,
    );
    addField(
      'copyright',
      copyright,
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
      'publishedIn',
      'citedMedium',
      'volume',
      'issue',
      'articleDate',
      'publicationDateText',
      'publicationDateSeason',
      'lastRevisionDate',
      'language',
      'accessionNumber',
      'pageString',
      'firstPage',
      'lastPage',
      'pageCount',
      'copyright',
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
      case 'publishedIn':
        if (publishedIn != null) {
          fields.add(publishedIn!);
        }
      case 'citedMedium':
        if (citedMedium != null) {
          fields.add(citedMedium!);
        }
      case 'volume':
        if (volume != null) {
          fields.add(volume!);
        }
      case 'issue':
        if (issue != null) {
          fields.add(issue!);
        }
      case 'articleDate':
        if (articleDate != null) {
          fields.add(articleDate!);
        }
      case 'publicationDateText':
        if (publicationDateText != null) {
          fields.add(publicationDateText!);
        }
      case 'publicationDateSeason':
        if (publicationDateSeason != null) {
          fields.add(publicationDateSeason!);
        }
      case 'lastRevisionDate':
        if (lastRevisionDate != null) {
          fields.add(lastRevisionDate!);
        }
      case 'language':
        if (language != null) {
          fields.addAll(language!);
        }
      case 'accessionNumber':
        if (accessionNumber != null) {
          fields.add(accessionNumber!);
        }
      case 'pageString':
        if (pageString != null) {
          fields.add(pageString!);
        }
      case 'firstPage':
        if (firstPage != null) {
          fields.add(firstPage!);
        }
      case 'lastPage':
        if (lastPage != null) {
          fields.add(lastPage!);
        }
      case 'pageCount':
        if (pageCount != null) {
          fields.add(pageCount!);
        }
      case 'copyright':
        if (copyright != null) {
          fields.add(copyright!);
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
  CitationPublicationForm clone() => copyWith();

  /// Copy function for [CitationPublicationForm]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $CitationPublicationFormCopyWith<CitationPublicationForm> get copyWith =>
      _$CitationPublicationFormCopyWithImpl<CitationPublicationForm>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CitationPublicationForm) {
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
      publishedIn,
      o.publishedIn,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      citedMedium,
      o.citedMedium,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      volume,
      o.volume,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      issue,
      o.issue,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      articleDate,
      o.articleDate,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      publicationDateText,
      o.publicationDateText,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      publicationDateSeason,
      o.publicationDateSeason,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      lastRevisionDate,
      o.lastRevisionDate,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      language,
      o.language,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      accessionNumber,
      o.accessionNumber,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      pageString,
      o.pageString,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      firstPage,
      o.firstPage,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      lastPage,
      o.lastPage,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      pageCount,
      o.pageCount,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      copyright,
      o.copyright,
    )) {
      return false;
    }
    return true;
  }
}

/// [CitationPublishedIn]
/// The collection the cited article or artifact is published in.
class CitationPublishedIn extends BackboneElement {
  /// Primary constructor for
  /// [CitationPublishedIn]

  const CitationPublishedIn({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.identifier,
    this.title,
    this.publisher,
    this.publisherLocation,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationPublishedIn.fromJson(
    Map<String, dynamic> json,
  ) {
    return CitationPublishedIn(
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
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      title: JsonParser.parsePrimitive<FhirString>(
        json,
        'title',
        FhirString.fromJson,
      ),
      publisher: JsonParser.parseObject<Reference>(
        json,
        'publisher',
        Reference.fromJson,
      ),
      publisherLocation: JsonParser.parsePrimitive<FhirString>(
        json,
        'publisherLocation',
        FhirString.fromJson,
      ),
    );
  }

  /// Deserialize [CitationPublishedIn]
  /// from a [String] or [YamlMap] object
  factory CitationPublishedIn.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CitationPublishedIn.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CitationPublishedIn.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CitationPublishedIn '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CitationPublishedIn]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CitationPublishedIn.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CitationPublishedIn.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CitationPublishedIn';

  /// [type]
  /// Kind of container (e.g. Periodical, database, or book).
  final CodeableConcept? type;

  /// [identifier]
  /// Journal identifiers include ISSN, ISO Abbreviation and NLMuniqueID;
  /// Book identifiers include ISBN.
  final List<Identifier>? identifier;

  /// [title]
  /// Name of the database or title of the book or journal.
  final FhirString? title;

  /// [publisher]
  /// Name of or resource describing the publisher.
  final Reference? publisher;

  /// [publisherLocation]
  /// Geographic location of the publisher.
  final FhirString? publisherLocation;
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
      'identifier',
      identifier,
    );
    addField(
      'title',
      title,
    );
    addField(
      'publisher',
      publisher,
    );
    addField(
      'publisherLocation',
      publisherLocation,
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
      'identifier',
      'title',
      'publisher',
      'publisherLocation',
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
        if (type != null) {
          fields.add(type!);
        }
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
        }
      case 'title':
        if (title != null) {
          fields.add(title!);
        }
      case 'publisher':
        if (publisher != null) {
          fields.add(publisher!);
        }
      case 'publisherLocation':
        if (publisherLocation != null) {
          fields.add(publisherLocation!);
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
  CitationPublishedIn clone() => copyWith();

  /// Copy function for [CitationPublishedIn]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $CitationPublishedInCopyWith<CitationPublishedIn> get copyWith =>
      _$CitationPublishedInCopyWithImpl<CitationPublishedIn>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CitationPublishedIn) {
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
    if (!listEquals<Identifier>(
      identifier,
      o.identifier,
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
      publisher,
      o.publisher,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      publisherLocation,
      o.publisherLocation,
    )) {
      return false;
    }
    return true;
  }
}

/// [CitationWebLocation]
/// Used for any URL for the article or artifact cited.
class CitationWebLocation extends BackboneElement {
  /// Primary constructor for
  /// [CitationWebLocation]

  const CitationWebLocation({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.classifier,
    this.url,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationWebLocation.fromJson(
    Map<String, dynamic> json,
  ) {
    return CitationWebLocation(
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
      classifier: (json['classifier'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      url: JsonParser.parsePrimitive<FhirUri>(
        json,
        'url',
        FhirUri.fromJson,
      ),
    );
  }

  /// Deserialize [CitationWebLocation]
  /// from a [String] or [YamlMap] object
  factory CitationWebLocation.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CitationWebLocation.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CitationWebLocation.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CitationWebLocation '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CitationWebLocation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CitationWebLocation.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CitationWebLocation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CitationWebLocation';

  /// [classifier]
  /// A characterization of the object expected at the web location.
  final List<CodeableConcept>? classifier;

  /// [url]
  /// The specific URL.
  final FhirUri? url;
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
      'classifier',
      classifier,
    );
    addField(
      'url',
      url,
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
      'classifier',
      'url',
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
      case 'classifier':
        if (classifier != null) {
          fields.addAll(classifier!);
        }
      case 'url':
        if (url != null) {
          fields.add(url!);
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
  CitationWebLocation clone() => copyWith();

  /// Copy function for [CitationWebLocation]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $CitationWebLocationCopyWith<CitationWebLocation> get copyWith =>
      _$CitationWebLocationCopyWithImpl<CitationWebLocation>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CitationWebLocation) {
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
      classifier,
      o.classifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      url,
      o.url,
    )) {
      return false;
    }
    return true;
  }
}

/// [CitationClassification1]
/// The assignment to an organizing scheme.
class CitationClassification1 extends BackboneElement {
  /// Primary constructor for
  /// [CitationClassification1]

  const CitationClassification1({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.classifier,
    this.artifactAssessment,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationClassification1.fromJson(
    Map<String, dynamic> json,
  ) {
    return CitationClassification1(
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
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
      classifier: (json['classifier'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      artifactAssessment: (json['artifactAssessment'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [CitationClassification1]
  /// from a [String] or [YamlMap] object
  factory CitationClassification1.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CitationClassification1.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CitationClassification1.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CitationClassification1 '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CitationClassification1]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CitationClassification1.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CitationClassification1.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CitationClassification1';

  /// [type]
  /// The kind of classifier (e.g. publication type, keyword).
  final CodeableConcept? type;

  /// [classifier]
  /// The specific classification value.
  final List<CodeableConcept>? classifier;

  /// [artifactAssessment]
  /// Complex or externally created classification.
  final List<Reference>? artifactAssessment;
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
      'classifier',
      classifier,
    );
    addField(
      'artifactAssessment',
      artifactAssessment,
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
      'classifier',
      'artifactAssessment',
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
        if (type != null) {
          fields.add(type!);
        }
      case 'classifier':
        if (classifier != null) {
          fields.addAll(classifier!);
        }
      case 'artifactAssessment':
        if (artifactAssessment != null) {
          fields.addAll(artifactAssessment!);
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
  CitationClassification1 clone() => copyWith();

  /// Copy function for [CitationClassification1]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $CitationClassification1CopyWith<CitationClassification1> get copyWith =>
      _$CitationClassification1CopyWithImpl<CitationClassification1>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CitationClassification1) {
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
    if (!listEquals<CodeableConcept>(
      classifier,
      o.classifier,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      artifactAssessment,
      o.artifactAssessment,
    )) {
      return false;
    }
    return true;
  }
}

/// [CitationContributorship]
/// This element is used to list authors and other contributors, their
/// contact information, specific contributions, and summary statements.
class CitationContributorship extends BackboneElement {
  /// Primary constructor for
  /// [CitationContributorship]

  const CitationContributorship({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.complete,
    this.entry,
    this.summary,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationContributorship.fromJson(
    Map<String, dynamic> json,
  ) {
    return CitationContributorship(
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
      complete: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'complete',
        FhirBoolean.fromJson,
      ),
      entry: (json['entry'] as List<dynamic>?)
          ?.map<CitationEntry>(
            (v) => CitationEntry.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      summary: (json['summary'] as List<dynamic>?)
          ?.map<CitationSummary1>(
            (v) => CitationSummary1.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [CitationContributorship]
  /// from a [String] or [YamlMap] object
  factory CitationContributorship.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CitationContributorship.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CitationContributorship.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CitationContributorship '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CitationContributorship]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CitationContributorship.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CitationContributorship.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CitationContributorship';

  /// [complete]
  /// Indicates if the list includes all authors and/or contributors.
  final FhirBoolean? complete;

  /// [entry]
  /// An individual entity named as a contributor, for example in the author
  /// list or contributor list.
  final List<CitationEntry>? entry;

  /// [summary]
  /// Used to record a display of the author/contributor list without
  /// separate data element for each list member.
  final List<CitationSummary1>? summary;
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
      'complete',
      complete,
    );
    addField(
      'entry',
      entry,
    );
    addField(
      'summary',
      summary,
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
      'complete',
      'entry',
      'summary',
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
      case 'complete':
        if (complete != null) {
          fields.add(complete!);
        }
      case 'entry':
        if (entry != null) {
          fields.addAll(entry!);
        }
      case 'summary':
        if (summary != null) {
          fields.addAll(summary!);
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
  CitationContributorship clone() => copyWith();

  /// Copy function for [CitationContributorship]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $CitationContributorshipCopyWith<CitationContributorship> get copyWith =>
      _$CitationContributorshipCopyWithImpl<CitationContributorship>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CitationContributorship) {
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
      complete,
      o.complete,
    )) {
      return false;
    }
    if (!listEquals<CitationEntry>(
      entry,
      o.entry,
    )) {
      return false;
    }
    if (!listEquals<CitationSummary1>(
      summary,
      o.summary,
    )) {
      return false;
    }
    return true;
  }
}

/// [CitationEntry]
/// An individual entity named as a contributor, for example in the author
/// list or contributor list.
class CitationEntry extends BackboneElement {
  /// Primary constructor for
  /// [CitationEntry]

  const CitationEntry({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.contributor,
    this.forenameInitials,
    this.affiliation,
    this.contributionType,
    this.role,
    this.contributionInstance,
    this.correspondingContact,
    this.rankingOrder,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationEntry.fromJson(
    Map<String, dynamic> json,
  ) {
    return CitationEntry(
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
      contributor: JsonParser.parseObject<Reference>(
        json,
        'contributor',
        Reference.fromJson,
      )!,
      forenameInitials: JsonParser.parsePrimitive<FhirString>(
        json,
        'forenameInitials',
        FhirString.fromJson,
      ),
      affiliation: (json['affiliation'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      contributionType: (json['contributionType'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      role: JsonParser.parseObject<CodeableConcept>(
        json,
        'role',
        CodeableConcept.fromJson,
      ),
      contributionInstance: (json['contributionInstance'] as List<dynamic>?)
          ?.map<CitationContributionInstance>(
            (v) => CitationContributionInstance.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      correspondingContact: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'correspondingContact',
        FhirBoolean.fromJson,
      ),
      rankingOrder: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'rankingOrder',
        FhirPositiveInt.fromJson,
      ),
    );
  }

  /// Deserialize [CitationEntry]
  /// from a [String] or [YamlMap] object
  factory CitationEntry.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CitationEntry.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CitationEntry.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CitationEntry '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CitationEntry]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CitationEntry.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CitationEntry.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CitationEntry';

  /// [contributor]
  /// The identity of the individual contributor.
  final Reference contributor;

  /// [forenameInitials]
  /// For citation styles that use initials.
  final FhirString? forenameInitials;

  /// [affiliation]
  /// Organization affiliated with the contributor.
  final List<Reference>? affiliation;

  /// [contributionType]
  /// This element identifies the specific nature of an individual’s
  /// contribution with respect to the cited work.
  final List<CodeableConcept>? contributionType;

  /// [role]
  /// The role of the contributor (e.g. author, editor, reviewer, funder).
  final CodeableConcept? role;

  /// [contributionInstance]
  /// Contributions with accounting for time or number.
  final List<CitationContributionInstance>? contributionInstance;

  /// [correspondingContact]
  /// Whether the contributor is the corresponding contributor for the role.
  final FhirBoolean? correspondingContact;

  /// [rankingOrder]
  /// Provides a numerical ranking to represent the degree of contributorship
  /// relative to other contributors, such as 1 for first author and 2 for
  /// second author.
  final FhirPositiveInt? rankingOrder;
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
      'contributor',
      contributor,
    );
    addField(
      'forenameInitials',
      forenameInitials,
    );
    addField(
      'affiliation',
      affiliation,
    );
    addField(
      'contributionType',
      contributionType,
    );
    addField(
      'role',
      role,
    );
    addField(
      'contributionInstance',
      contributionInstance,
    );
    addField(
      'correspondingContact',
      correspondingContact,
    );
    addField(
      'rankingOrder',
      rankingOrder,
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
      'contributor',
      'forenameInitials',
      'affiliation',
      'contributionType',
      'role',
      'contributionInstance',
      'correspondingContact',
      'rankingOrder',
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
      case 'contributor':
        fields.add(contributor);
      case 'forenameInitials':
        if (forenameInitials != null) {
          fields.add(forenameInitials!);
        }
      case 'affiliation':
        if (affiliation != null) {
          fields.addAll(affiliation!);
        }
      case 'contributionType':
        if (contributionType != null) {
          fields.addAll(contributionType!);
        }
      case 'role':
        if (role != null) {
          fields.add(role!);
        }
      case 'contributionInstance':
        if (contributionInstance != null) {
          fields.addAll(contributionInstance!);
        }
      case 'correspondingContact':
        if (correspondingContact != null) {
          fields.add(correspondingContact!);
        }
      case 'rankingOrder':
        if (rankingOrder != null) {
          fields.add(rankingOrder!);
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
  CitationEntry clone() => copyWith();

  /// Copy function for [CitationEntry]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $CitationEntryCopyWith<CitationEntry> get copyWith =>
      _$CitationEntryCopyWithImpl<CitationEntry>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CitationEntry) {
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
      contributor,
      o.contributor,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      forenameInitials,
      o.forenameInitials,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      affiliation,
      o.affiliation,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      contributionType,
      o.contributionType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      role,
      o.role,
    )) {
      return false;
    }
    if (!listEquals<CitationContributionInstance>(
      contributionInstance,
      o.contributionInstance,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      correspondingContact,
      o.correspondingContact,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      rankingOrder,
      o.rankingOrder,
    )) {
      return false;
    }
    return true;
  }
}

/// [CitationContributionInstance]
/// Contributions with accounting for time or number.
class CitationContributionInstance extends BackboneElement {
  /// Primary constructor for
  /// [CitationContributionInstance]

  const CitationContributionInstance({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.time,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationContributionInstance.fromJson(
    Map<String, dynamic> json,
  ) {
    return CitationContributionInstance(
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
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      )!,
      time: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'time',
        FhirDateTime.fromJson,
      ),
    );
  }

  /// Deserialize [CitationContributionInstance]
  /// from a [String] or [YamlMap] object
  factory CitationContributionInstance.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CitationContributionInstance.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CitationContributionInstance.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CitationContributionInstance '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CitationContributionInstance]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CitationContributionInstance.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CitationContributionInstance.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CitationContributionInstance';

  /// [type]
  /// The specific contribution.
  final CodeableConcept type;

  /// [time]
  /// The time that the contribution was made.
  final FhirDateTime? time;
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
      'time',
      time,
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
      'time',
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
      case 'time':
        if (time != null) {
          fields.add(time!);
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
  CitationContributionInstance clone() => copyWith();

  /// Copy function for [CitationContributionInstance]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $CitationContributionInstanceCopyWith<CitationContributionInstance>
      get copyWith => _$CitationContributionInstanceCopyWithImpl<
              CitationContributionInstance>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CitationContributionInstance) {
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
      time,
      o.time,
    )) {
      return false;
    }
    return true;
  }
}

/// [CitationSummary1]
/// Used to record a display of the author/contributor list without
/// separate data element for each list member.
class CitationSummary1 extends BackboneElement {
  /// Primary constructor for
  /// [CitationSummary1]

  const CitationSummary1({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.style,
    this.source,
    required this.value,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationSummary1.fromJson(
    Map<String, dynamic> json,
  ) {
    return CitationSummary1(
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
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
      style: JsonParser.parseObject<CodeableConcept>(
        json,
        'style',
        CodeableConcept.fromJson,
      ),
      source: JsonParser.parseObject<CodeableConcept>(
        json,
        'source',
        CodeableConcept.fromJson,
      ),
      value: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'value',
        FhirMarkdown.fromJson,
      )!,
    );
  }

  /// Deserialize [CitationSummary1]
  /// from a [String] or [YamlMap] object
  factory CitationSummary1.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CitationSummary1.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CitationSummary1.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CitationSummary1 '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CitationSummary1]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CitationSummary1.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CitationSummary1.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CitationSummary1';

  /// [type]
  /// Used most commonly to express an author list or a contributorship
  /// statement.
  final CodeableConcept? type;

  /// [style]
  /// The format for the display string, such as author last name with first
  /// letter capitalized followed by forename initials.
  final CodeableConcept? style;

  /// [source]
  /// Used to code the producer or rule for creating the display string.
  final CodeableConcept? source;

  /// [value]
  /// The display string for the author list, contributor list, or
  /// contributorship statement.
  final FhirMarkdown value;
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
      'style',
      style,
    );
    addField(
      'source',
      source,
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
      'type',
      'style',
      'source',
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
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'style':
        if (style != null) {
          fields.add(style!);
        }
      case 'source':
        if (source != null) {
          fields.add(source!);
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
  CitationSummary1 clone() => copyWith();

  /// Copy function for [CitationSummary1]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $CitationSummary1CopyWith<CitationSummary1> get copyWith =>
      _$CitationSummary1CopyWithImpl<CitationSummary1>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CitationSummary1) {
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
      style,
      o.style,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      source,
      o.source,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      value,
      o.value,
    )) {
      return false;
    }
    return true;
  }
}
