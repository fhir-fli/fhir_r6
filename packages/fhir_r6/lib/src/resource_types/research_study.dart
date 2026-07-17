import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'research_study.g.dart';

/// [ResearchStudy]
/// A scientific study intended to increase health-related knowledge. For
/// example, clinical trials are research studies that involve people.
/// These studies may be related to new ways to screen, prevent, diagnose,
/// and treat disease. They may also study certain outcomes and certain
/// groups of people by looking at data collected in the past or future.
class ResearchStudy extends DomainResource {
  /// Primary constructor for
  /// [ResearchStudy]

  const ResearchStudy({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.url,
    this.identifier,
    this.version,
    this.name,
    this.title,
    this.label,
    this.protocol,
    this.partOf,
    this.citeAs,
    this.relatesTo,
    this.date,
    required this.status,
    this.primaryPurposeType,
    this.phase,
    this.studyDesign,
    this.focus,
    this.condition,
    this.keyword,
    this.region,
    this.descriptionSummary,
    this.description,
    this.period,
    this.site,
    this.note,
    this.classifier,
    this.associatedParty,
    this.progressStatus,
    this.whyStopped,
    this.recruitment,
    this.comparisonGroup,
    this.objective,
    this.result,
  }) : super(
          resourceType: R6ResourceType.ResearchStudy,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ResearchStudy.fromJson(
    Map<String, dynamic> json,
  ) {
    return ResearchStudy(
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
      label: (json['label'] as List<dynamic>?)
          ?.map<ResearchStudyLabel>(
            (v) => ResearchStudyLabel.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      protocol: (json['protocol'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      partOf: (json['partOf'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      citeAs: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'citeAs',
        FhirMarkdown.fromJson,
      ),
      relatesTo: (json['relatesTo'] as List<dynamic>?)
          ?.map<ResearchStudyRelatesTo>(
            (v) => ResearchStudyRelatesTo.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      date: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'date',
        FhirDateTime.fromJson,
      ),
      status: JsonParser.parsePrimitive<PublicationStatus>(
        json,
        'status',
        PublicationStatus.fromJson,
      )!,
      primaryPurposeType: JsonParser.parseObject<CodeableConcept>(
        json,
        'primaryPurposeType',
        CodeableConcept.fromJson,
      ),
      phase: JsonParser.parseObject<CodeableConcept>(
        json,
        'phase',
        CodeableConcept.fromJson,
      ),
      studyDesign: (json['studyDesign'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      focus: (json['focus'] as List<dynamic>?)
          ?.map<CodeableReference>(
            (v) => CodeableReference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      condition: (json['condition'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      keyword: (json['keyword'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      region: (json['region'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      descriptionSummary: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'descriptionSummary',
        FhirMarkdown.fromJson,
      ),
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
      ),
      period: JsonParser.parseObject<Period>(
        json,
        'period',
        Period.fromJson,
      ),
      site: (json['site'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
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
      classifier: (json['classifier'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      associatedParty: (json['associatedParty'] as List<dynamic>?)
          ?.map<ResearchStudyAssociatedParty>(
            (v) => ResearchStudyAssociatedParty.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      progressStatus: (json['progressStatus'] as List<dynamic>?)
          ?.map<ResearchStudyProgressStatus>(
            (v) => ResearchStudyProgressStatus.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      whyStopped: JsonParser.parseObject<CodeableConcept>(
        json,
        'whyStopped',
        CodeableConcept.fromJson,
      ),
      recruitment: JsonParser.parseObject<ResearchStudyRecruitment>(
        json,
        'recruitment',
        ResearchStudyRecruitment.fromJson,
      ),
      comparisonGroup: (json['comparisonGroup'] as List<dynamic>?)
          ?.map<ResearchStudyComparisonGroup>(
            (v) => ResearchStudyComparisonGroup.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      objective: (json['objective'] as List<dynamic>?)
          ?.map<ResearchStudyObjective>(
            (v) => ResearchStudyObjective.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      result: (json['result'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ResearchStudy]
  /// from a [String] or [YamlMap] object
  factory ResearchStudy.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ResearchStudy.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ResearchStudy.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ResearchStudy '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ResearchStudy]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ResearchStudy.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ResearchStudy.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ResearchStudy';

  /// [url]
  /// Canonical identifier for this study resource, represented as a globally
  /// unique URI.
  final FhirUri? url;

  /// [identifier]
  /// Identifiers assigned to this research study by the sponsor or other
  /// systems.
  final List<Identifier>? identifier;

  /// [version]
  /// The business version for the study record.
  final FhirString? version;

  /// [name]
  /// Name for this study (computer friendly).
  final FhirString? name;

  /// [title]
  /// The human readable name of the research study.
  final FhirString? title;

  /// [label]
  /// Additional names for the study.
  final List<ResearchStudyLabel>? label;

  /// [protocol]
  /// The set of steps expected to be performed as part of the execution of
  /// the study.
  final List<Reference>? protocol;

  /// [partOf]
  /// A larger research study of which this particular study is a component
  /// or step.
  final List<Reference>? partOf;

  /// [citeAs]
  /// Display of the bibliographic citation of this ResearchStudy.
  final FhirMarkdown? citeAs;

  /// [relatesTo]
  /// Relationships that this ResearchStudy has with other FHIR or non-FHIR
  /// resources that already exist.
  final List<ResearchStudyRelatesTo>? relatesTo;

  /// [date]
  /// The date (and optionally time) when the ResearchStudy Resource was last
  /// significantly changed. The date must change when the business version
  /// changes and it must change if the status code changes. In addition, it
  /// should change when the substantive content of the ResearchStudy
  /// Resource changes.
  final FhirDateTime? date;

  /// [status]
  /// The publication state of the resource (not of the study).
  final PublicationStatus status;

  /// [primaryPurposeType]
  /// The type of study based upon the intent of the study activities. A
  /// classification of the intent of the study.
  final CodeableConcept? primaryPurposeType;

  /// [phase]
  /// The stage in the progression of a therapy from initial experimental use
  /// in humans in clinical trials to post-market evaluation.
  final CodeableConcept? phase;

  /// [studyDesign]
  /// Codes categorizing the type of study such as investigational vs.
  /// observational, type of blinding, type of randomization, safety vs.
  /// efficacy, etc.
  final List<CodeableConcept>? studyDesign;

  /// [focus]
  /// The medication(s), food(s), therapy(ies), device(s) or other concerns
  /// or interventions that the study is seeking to gain more information
  /// about.
  final List<CodeableReference>? focus;

  /// [condition]
  /// The condition that is the focus of the study. For example, In a study
  /// to examine risk factors for Lupus, might have as an inclusion criterion
  /// "healthy volunteer", but the target condition code would be a Lupus
  /// SNOMED code.
  final List<CodeableConcept>? condition;

  /// [keyword]
  /// Key terms to aid in searching for or filtering the study.
  final List<CodeableConcept>? keyword;

  /// [region]
  /// A country, state or other area where the study is taking place rather
  /// than its precise geographic location or address.
  final List<CodeableConcept>? region;

  /// [descriptionSummary]
  /// A brief text for explaining the study.
  final FhirMarkdown? descriptionSummary;

  /// [description]
  /// A detailed and human-readable narrative of the study. E.g., study
  /// abstract.
  final FhirMarkdown? description;

  /// [period]
  /// Identifies the start date and the expected (or actual, depending on
  /// status) end date for the study.
  final Period? period;

  /// [site]
  /// A facility in which study activities are conducted.
  final List<Reference>? site;

  /// [note]
  /// Comments made about the study by the performer, subject or other
  /// participants.
  final List<Annotation>? note;

  /// [classifier]
  /// Additional grouping mechanism or categorization of a research study.
  /// Example: FDA regulated device, FDA regulated drug, MPG Paragraph 23b (a
  /// German legal requirement), IRB-exempt, etc. Implementation Note: do not
  /// use the classifier element to support existing semantics that are
  /// already supported thru explicit elements in the resource.
  final List<CodeableConcept>? classifier;

  /// [associatedParty]
  /// Sponsors, collaborators, and other parties.
  final List<ResearchStudyAssociatedParty>? associatedParty;

  /// [progressStatus]
  /// Status of study with time for that status.
  final List<ResearchStudyProgressStatus>? progressStatus;

  /// [whyStopped]
  /// A description and/or code explaining the premature termination of the
  /// study.
  final CodeableConcept? whyStopped;

  /// [recruitment]
  /// Target or actual group of participants enrolled in study.
  final ResearchStudyRecruitment? recruitment;

  /// [comparisonGroup]
  /// Describes an expected event or sequence of events for one of the
  /// subjects of a study. E.g. for a living subject: exposure to drug A,
  /// wash-out, exposure to drug B, wash-out, follow-up. E.g. for a stability
  /// study: {store sample from lot A at 25 degrees for 1 month}, {store
  /// sample from lot A at 40 degrees for 1 month}.
  final List<ResearchStudyComparisonGroup>? comparisonGroup;

  /// [objective]
  /// A goal that the study is aiming to achieve in terms of a scientific
  /// question to be answered by the analysis of data collected during the
  /// study.
  final List<ResearchStudyObjective>? objective;

  /// [result]
  /// Link to one or more sets of results generated by the study. Could also
  /// link to a research registry holding the results such as
  /// ClinicalTrials.gov.
  final List<Reference>? result;
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
    addField(
      'name',
      name,
    );
    addField(
      'title',
      title,
    );
    addField(
      'label',
      label,
    );
    addField(
      'protocol',
      protocol,
    );
    addField(
      'partOf',
      partOf,
    );
    addField(
      'citeAs',
      citeAs,
    );
    addField(
      'relatesTo',
      relatesTo,
    );
    addField(
      'date',
      date,
    );
    addField(
      'status',
      status,
    );
    addField(
      'primaryPurposeType',
      primaryPurposeType,
    );
    addField(
      'phase',
      phase,
    );
    addField(
      'studyDesign',
      studyDesign,
    );
    addField(
      'focus',
      focus,
    );
    addField(
      'condition',
      condition,
    );
    addField(
      'keyword',
      keyword,
    );
    addField(
      'region',
      region,
    );
    addField(
      'descriptionSummary',
      descriptionSummary,
    );
    addField(
      'description',
      description,
    );
    addField(
      'period',
      period,
    );
    addField(
      'site',
      site,
    );
    addField(
      'note',
      note,
    );
    addField(
      'classifier',
      classifier,
    );
    addField(
      'associatedParty',
      associatedParty,
    );
    addField(
      'progressStatus',
      progressStatus,
    );
    addField(
      'whyStopped',
      whyStopped,
    );
    addField(
      'recruitment',
      recruitment,
    );
    addField(
      'comparisonGroup',
      comparisonGroup,
    );
    addField(
      'objective',
      objective,
    );
    addField(
      'result',
      result,
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
      'name',
      'title',
      'label',
      'protocol',
      'partOf',
      'citeAs',
      'relatesTo',
      'date',
      'status',
      'primaryPurposeType',
      'phase',
      'studyDesign',
      'focus',
      'condition',
      'keyword',
      'region',
      'descriptionSummary',
      'description',
      'period',
      'site',
      'note',
      'classifier',
      'associatedParty',
      'progressStatus',
      'whyStopped',
      'recruitment',
      'comparisonGroup',
      'objective',
      'result',
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
      case 'name':
        if (name != null) {
          fields.add(name!);
        }
      case 'title':
        if (title != null) {
          fields.add(title!);
        }
      case 'label':
        if (label != null) {
          fields.addAll(label!);
        }
      case 'protocol':
        if (protocol != null) {
          fields.addAll(protocol!);
        }
      case 'partOf':
        if (partOf != null) {
          fields.addAll(partOf!);
        }
      case 'citeAs':
        if (citeAs != null) {
          fields.add(citeAs!);
        }
      case 'relatesTo':
        if (relatesTo != null) {
          fields.addAll(relatesTo!);
        }
      case 'date':
        if (date != null) {
          fields.add(date!);
        }
      case 'status':
        fields.add(status);
      case 'primaryPurposeType':
        if (primaryPurposeType != null) {
          fields.add(primaryPurposeType!);
        }
      case 'phase':
        if (phase != null) {
          fields.add(phase!);
        }
      case 'studyDesign':
        if (studyDesign != null) {
          fields.addAll(studyDesign!);
        }
      case 'focus':
        if (focus != null) {
          fields.addAll(focus!);
        }
      case 'condition':
        if (condition != null) {
          fields.addAll(condition!);
        }
      case 'keyword':
        if (keyword != null) {
          fields.addAll(keyword!);
        }
      case 'region':
        if (region != null) {
          fields.addAll(region!);
        }
      case 'descriptionSummary':
        if (descriptionSummary != null) {
          fields.add(descriptionSummary!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'period':
        if (period != null) {
          fields.add(period!);
        }
      case 'site':
        if (site != null) {
          fields.addAll(site!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      case 'classifier':
        if (classifier != null) {
          fields.addAll(classifier!);
        }
      case 'associatedParty':
        if (associatedParty != null) {
          fields.addAll(associatedParty!);
        }
      case 'progressStatus':
        if (progressStatus != null) {
          fields.addAll(progressStatus!);
        }
      case 'whyStopped':
        if (whyStopped != null) {
          fields.add(whyStopped!);
        }
      case 'recruitment':
        if (recruitment != null) {
          fields.add(recruitment!);
        }
      case 'comparisonGroup':
        if (comparisonGroup != null) {
          fields.addAll(comparisonGroup!);
        }
      case 'objective':
        if (objective != null) {
          fields.addAll(objective!);
        }
      case 'result':
        if (result != null) {
          fields.addAll(result!);
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
  ResearchStudy clone() => copyWith();

  /// Copy function for [ResearchStudy]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ResearchStudyCopyWith<ResearchStudy> get copyWith =>
      _$ResearchStudyCopyWithImpl<ResearchStudy>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ResearchStudy) {
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
      url,
      o.url,
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
      version,
      o.version,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      name,
      o.name,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      title,
      o.title,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<ResearchStudyLabel>(
      label,
      o.label,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Reference>(
      protocol,
      o.protocol,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Reference>(
      partOf,
      o.partOf,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      citeAs,
      o.citeAs,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<ResearchStudyRelatesTo>(
      relatesTo,
      o.relatesTo,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      date,
      o.date,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      primaryPurposeType,
      o.primaryPurposeType,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      phase,
      o.phase,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<CodeableConcept>(
      studyDesign,
      o.studyDesign,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<CodeableReference>(
      focus,
      o.focus,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<CodeableConcept>(
      condition,
      o.condition,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<CodeableConcept>(
      keyword,
      o.keyword,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<CodeableConcept>(
      region,
      o.region,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      descriptionSummary,
      o.descriptionSummary,
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
      period,
      o.period,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Reference>(
      site,
      o.site,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Annotation>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<CodeableConcept>(
      classifier,
      o.classifier,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<ResearchStudyAssociatedParty>(
      associatedParty,
      o.associatedParty,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<ResearchStudyProgressStatus>(
      progressStatus,
      o.progressStatus,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      whyStopped,
      o.whyStopped,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      recruitment,
      o.recruitment,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<ResearchStudyComparisonGroup>(
      comparisonGroup,
      o.comparisonGroup,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<ResearchStudyObjective>(
      objective,
      o.objective,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Reference>(
      result,
      o.result,
    )) {
      return false;
    }
    return true;
  }
}

/// [ResearchStudyLabel]
/// Additional names for the study.
class ResearchStudyLabel extends BackboneElement {
  /// Primary constructor for
  /// [ResearchStudyLabel]

  const ResearchStudyLabel({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.value,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ResearchStudyLabel.fromJson(
    Map<String, dynamic> json,
  ) {
    return ResearchStudyLabel(
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
    );
  }

  /// Deserialize [ResearchStudyLabel]
  /// from a [String] or [YamlMap] object
  factory ResearchStudyLabel.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ResearchStudyLabel.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ResearchStudyLabel.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ResearchStudyLabel '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ResearchStudyLabel]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ResearchStudyLabel.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ResearchStudyLabel.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ResearchStudyLabel';

  /// [type]
  /// Kind of name.
  final CodeableConcept? type;

  /// [value]
  /// The name.
  final FhirString? value;
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
  ResearchStudyLabel clone() => copyWith();

  /// Copy function for [ResearchStudyLabel]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ResearchStudyLabelCopyWith<ResearchStudyLabel> get copyWith =>
      _$ResearchStudyLabelCopyWithImpl<ResearchStudyLabel>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ResearchStudyLabel) {
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
      type,
      o.type,
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

/// [ResearchStudyRelatesTo]
/// Relationships that this ResearchStudy has with other FHIR or non-FHIR
/// resources that already exist.
class ResearchStudyRelatesTo extends BackboneElement {
  /// Primary constructor for
  /// [ResearchStudyRelatesTo]

  const ResearchStudyRelatesTo({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    required this.targetX,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ResearchStudyRelatesTo.fromJson(
    Map<String, dynamic> json,
  ) {
    return ResearchStudyRelatesTo(
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
      type: JsonParser.parsePrimitive<ArtifactRelationshipType>(
        json,
        'type',
        ArtifactRelationshipType.fromJson,
      )!,
      targetX: JsonParser.parsePolymorphic<TargetXResearchStudyRelatesTo>(
        json,
        {
          'targetUri': FhirUri.fromJson,
          'targetAttachment': Attachment.fromJson,
          'targetCanonical': FhirCanonical.fromJson,
          'targetReference': Reference.fromJson,
          'targetMarkdown': FhirMarkdown.fromJson,
        },
      )!,
    );
  }

  /// Deserialize [ResearchStudyRelatesTo]
  /// from a [String] or [YamlMap] object
  factory ResearchStudyRelatesTo.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ResearchStudyRelatesTo.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ResearchStudyRelatesTo.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ResearchStudyRelatesTo '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ResearchStudyRelatesTo]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ResearchStudyRelatesTo.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ResearchStudyRelatesTo.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ResearchStudyRelatesTo';

  /// [type]
  /// The type of relationship to the related artifact.
  final ArtifactRelationshipType type;

  /// [targetX]
  /// The artifact that is related to this ResearchStudy Resource.
  final TargetXResearchStudyRelatesTo targetX;

  /// Getter for [targetUri] as a FhirUri
  FhirUri? get targetUri => targetX.isAs<FhirUri>();

  /// Getter for [targetAttachment] as a Attachment
  Attachment? get targetAttachment => targetX.isAs<Attachment>();

  /// Getter for [targetCanonical] as a FhirCanonical
  FhirCanonical? get targetCanonical => targetX.isAs<FhirCanonical>();

  /// Getter for [targetReference] as a Reference
  Reference? get targetReference => targetX.isAs<Reference>();

  /// Getter for [targetMarkdown] as a FhirMarkdown
  FhirMarkdown? get targetMarkdown => targetX.isAs<FhirMarkdown>();
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
    final targetXFhirType = targetX.fhirType;
    addField(
      'target${targetXFhirType.capitalize()}',
      targetX,
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
      'targetX',
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
      case 'target':
        fields.add(targetX);
      case 'targetX':
        fields.add(targetX);
      case 'targetUri':
        if (targetX is FhirUri) {
          fields.add(targetX);
        }
      case 'targetAttachment':
        if (targetX is Attachment) {
          fields.add(targetX);
        }
      case 'targetCanonical':
        if (targetX is FhirCanonical) {
          fields.add(targetX);
        }
      case 'targetReference':
        if (targetX is Reference) {
          fields.add(targetX);
        }
      case 'targetMarkdown':
        if (targetX is FhirMarkdown) {
          fields.add(targetX);
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
  ResearchStudyRelatesTo clone() => copyWith();

  /// Copy function for [ResearchStudyRelatesTo]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ResearchStudyRelatesToCopyWith<ResearchStudyRelatesTo> get copyWith =>
      _$ResearchStudyRelatesToCopyWithImpl<ResearchStudyRelatesTo>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ResearchStudyRelatesTo) {
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
      type,
      o.type,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      targetX,
      o.targetX,
    )) {
      return false;
    }
    return true;
  }
}

/// [ResearchStudyAssociatedParty]
/// Sponsors, collaborators, and other parties.
class ResearchStudyAssociatedParty extends BackboneElement {
  /// Primary constructor for
  /// [ResearchStudyAssociatedParty]

  const ResearchStudyAssociatedParty({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.name,
    required this.role,
    this.period,
    this.classifier,
    this.party,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ResearchStudyAssociatedParty.fromJson(
    Map<String, dynamic> json,
  ) {
    return ResearchStudyAssociatedParty(
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
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
      ),
      role: JsonParser.parseObject<CodeableConcept>(
        json,
        'role',
        CodeableConcept.fromJson,
      )!,
      period: (json['period'] as List<dynamic>?)
          ?.map<Period>(
            (v) => Period.fromJson(
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
      party: JsonParser.parseObject<Reference>(
        json,
        'party',
        Reference.fromJson,
      ),
    );
  }

  /// Deserialize [ResearchStudyAssociatedParty]
  /// from a [String] or [YamlMap] object
  factory ResearchStudyAssociatedParty.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ResearchStudyAssociatedParty.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ResearchStudyAssociatedParty.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ResearchStudyAssociatedParty '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ResearchStudyAssociatedParty]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ResearchStudyAssociatedParty.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ResearchStudyAssociatedParty.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ResearchStudyAssociatedParty';

  /// [name]
  /// Name of associated party.
  final FhirString? name;

  /// [role]
  /// Type of association.
  final CodeableConcept role;

  /// [period]
  /// Identifies the start date and the end date of the associated party in
  /// the role.
  final List<Period>? period;

  /// [classifier]
  /// A categorization other than role for the associated party.
  final List<CodeableConcept>? classifier;

  /// [party]
  /// Individual or organization associated with study (use practitionerRole
  /// to specify their organisation).
  final Reference? party;
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
      'name',
      name,
    );
    addField(
      'role',
      role,
    );
    addField(
      'period',
      period,
    );
    addField(
      'classifier',
      classifier,
    );
    addField(
      'party',
      party,
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
      'name',
      'role',
      'period',
      'classifier',
      'party',
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
      case 'name':
        if (name != null) {
          fields.add(name!);
        }
      case 'role':
        fields.add(role);
      case 'period':
        if (period != null) {
          fields.addAll(period!);
        }
      case 'classifier':
        if (classifier != null) {
          fields.addAll(classifier!);
        }
      case 'party':
        if (party != null) {
          fields.add(party!);
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
  ResearchStudyAssociatedParty clone() => copyWith();

  /// Copy function for [ResearchStudyAssociatedParty]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ResearchStudyAssociatedPartyCopyWith<ResearchStudyAssociatedParty>
      get copyWith => _$ResearchStudyAssociatedPartyCopyWithImpl<
              ResearchStudyAssociatedParty>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ResearchStudyAssociatedParty) {
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
      name,
      o.name,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      role,
      o.role,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Period>(
      period,
      o.period,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<CodeableConcept>(
      classifier,
      o.classifier,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      party,
      o.party,
    )) {
      return false;
    }
    return true;
  }
}

/// [ResearchStudyProgressStatus]
/// Status of study with time for that status.
class ResearchStudyProgressStatus extends BackboneElement {
  /// Primary constructor for
  /// [ResearchStudyProgressStatus]

  const ResearchStudyProgressStatus({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.state,
    this.actual,
    this.period,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ResearchStudyProgressStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    return ResearchStudyProgressStatus(
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
      state: JsonParser.parseObject<CodeableConcept>(
        json,
        'state',
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
      ),
    );
  }

  /// Deserialize [ResearchStudyProgressStatus]
  /// from a [String] or [YamlMap] object
  factory ResearchStudyProgressStatus.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ResearchStudyProgressStatus.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ResearchStudyProgressStatus.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ResearchStudyProgressStatus '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ResearchStudyProgressStatus]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ResearchStudyProgressStatus.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ResearchStudyProgressStatus.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ResearchStudyProgressStatus';

  /// [state]
  /// Label for status or state (e.g. recruitment status).
  final CodeableConcept state;

  /// [actual]
  /// An indication of whether or not the date is a known date when the state
  /// changed or will change. A value of true indicates a known date. A value
  /// of false indicates an estimated date.
  final FhirBoolean? actual;

  /// [period]
  /// Date range.
  final Period? period;
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
      'state',
      state,
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
      'state',
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
      case 'state':
        fields.add(state);
      case 'actual':
        if (actual != null) {
          fields.add(actual!);
        }
      case 'period':
        if (period != null) {
          fields.add(period!);
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
  ResearchStudyProgressStatus clone() => copyWith();

  /// Copy function for [ResearchStudyProgressStatus]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ResearchStudyProgressStatusCopyWith<ResearchStudyProgressStatus>
      get copyWith => _$ResearchStudyProgressStatusCopyWithImpl<
              ResearchStudyProgressStatus>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ResearchStudyProgressStatus) {
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
      state,
      o.state,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      actual,
      o.actual,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      period,
      o.period,
    )) {
      return false;
    }
    return true;
  }
}

/// [ResearchStudyRecruitment]
/// Target or actual group of participants enrolled in study.
class ResearchStudyRecruitment extends BackboneElement {
  /// Primary constructor for
  /// [ResearchStudyRecruitment]

  const ResearchStudyRecruitment({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.targetNumber,
    this.actualNumber,
    this.eligibility,
    this.actualGroup,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ResearchStudyRecruitment.fromJson(
    Map<String, dynamic> json,
  ) {
    return ResearchStudyRecruitment(
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
      targetNumber: JsonParser.parsePrimitive<FhirUnsignedInt>(
        json,
        'targetNumber',
        FhirUnsignedInt.fromJson,
      ),
      actualNumber: JsonParser.parsePrimitive<FhirUnsignedInt>(
        json,
        'actualNumber',
        FhirUnsignedInt.fromJson,
      ),
      eligibility: JsonParser.parseObject<Reference>(
        json,
        'eligibility',
        Reference.fromJson,
      ),
      actualGroup: JsonParser.parseObject<Reference>(
        json,
        'actualGroup',
        Reference.fromJson,
      ),
    );
  }

  /// Deserialize [ResearchStudyRecruitment]
  /// from a [String] or [YamlMap] object
  factory ResearchStudyRecruitment.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ResearchStudyRecruitment.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ResearchStudyRecruitment.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ResearchStudyRecruitment '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ResearchStudyRecruitment]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ResearchStudyRecruitment.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ResearchStudyRecruitment.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ResearchStudyRecruitment';

  /// [targetNumber]
  /// Estimated total number of participants to be enrolled.
  final FhirUnsignedInt? targetNumber;

  /// [actualNumber]
  /// Actual total number of participants enrolled in study.
  final FhirUnsignedInt? actualNumber;

  /// [eligibility]
  /// Inclusion and exclusion criteria. The referenced Group Resource should
  /// have a membership element value of either 'definitional' or
  /// 'conceptual'.
  final Reference? eligibility;

  /// [actualGroup]
  /// Group of participants who were enrolled in study. The referenced Group
  /// Resource should have a membership element value of 'enumerated'.
  final Reference? actualGroup;
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
      'targetNumber',
      targetNumber,
    );
    addField(
      'actualNumber',
      actualNumber,
    );
    addField(
      'eligibility',
      eligibility,
    );
    addField(
      'actualGroup',
      actualGroup,
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
      'targetNumber',
      'actualNumber',
      'eligibility',
      'actualGroup',
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
      case 'targetNumber':
        if (targetNumber != null) {
          fields.add(targetNumber!);
        }
      case 'actualNumber':
        if (actualNumber != null) {
          fields.add(actualNumber!);
        }
      case 'eligibility':
        if (eligibility != null) {
          fields.add(eligibility!);
        }
      case 'actualGroup':
        if (actualGroup != null) {
          fields.add(actualGroup!);
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
  ResearchStudyRecruitment clone() => copyWith();

  /// Copy function for [ResearchStudyRecruitment]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ResearchStudyRecruitmentCopyWith<ResearchStudyRecruitment> get copyWith =>
      _$ResearchStudyRecruitmentCopyWithImpl<ResearchStudyRecruitment>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ResearchStudyRecruitment) {
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
      targetNumber,
      o.targetNumber,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      actualNumber,
      o.actualNumber,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      eligibility,
      o.eligibility,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      actualGroup,
      o.actualGroup,
    )) {
      return false;
    }
    return true;
  }
}

/// [ResearchStudyComparisonGroup]
/// Describes an expected event or sequence of events for one of the
/// subjects of a study. E.g. for a living subject: exposure to drug A,
/// wash-out, exposure to drug B, wash-out, follow-up. E.g. for a stability
/// study: {store sample from lot A at 25 degrees for 1 month}, {store
/// sample from lot A at 40 degrees for 1 month}.
class ResearchStudyComparisonGroup extends BackboneElement {
  /// Primary constructor for
  /// [ResearchStudyComparisonGroup]

  const ResearchStudyComparisonGroup({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.targetNumber,
    this.actualNumber,
    this.eligibility,
    this.observedGroup,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ResearchStudyComparisonGroup.fromJson(
    Map<String, dynamic> json,
  ) {
    return ResearchStudyComparisonGroup(
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
      targetNumber: JsonParser.parsePrimitive<FhirUnsignedInt>(
        json,
        'targetNumber',
        FhirUnsignedInt.fromJson,
      ),
      actualNumber: JsonParser.parsePrimitive<FhirUnsignedInt>(
        json,
        'actualNumber',
        FhirUnsignedInt.fromJson,
      ),
      eligibility: JsonParser.parseObject<Reference>(
        json,
        'eligibility',
        Reference.fromJson,
      ),
      observedGroup: JsonParser.parseObject<Reference>(
        json,
        'observedGroup',
        Reference.fromJson,
      ),
    );
  }

  /// Deserialize [ResearchStudyComparisonGroup]
  /// from a [String] or [YamlMap] object
  factory ResearchStudyComparisonGroup.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ResearchStudyComparisonGroup.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ResearchStudyComparisonGroup.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ResearchStudyComparisonGroup '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ResearchStudyComparisonGroup]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ResearchStudyComparisonGroup.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ResearchStudyComparisonGroup.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ResearchStudyComparisonGroup';

  /// [targetNumber]
  /// Estimated total number of participants to be enrolled in the comparison
  /// group.
  final FhirUnsignedInt? targetNumber;

  /// [actualNumber]
  /// Actual total number of participants enrolled in the comparison group.
  final FhirUnsignedInt? actualNumber;

  /// [eligibility]
  /// Inclusion and exclusion criteria for the comparison group as a subset
  /// of the eligibility for the overall study. The referenced Group Resource
  /// should have a membership element value of either 'definitional' or
  /// 'conceptual'.
  final Reference? eligibility;

  /// [observedGroup]
  /// Group of participants who were enrolled in the comparison group as a
  /// subset of those enrolled in the overall study. The referenced Group
  /// Resource should have a membership element value of 'enumerated'.
  final Reference? observedGroup;
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
      'targetNumber',
      targetNumber,
    );
    addField(
      'actualNumber',
      actualNumber,
    );
    addField(
      'eligibility',
      eligibility,
    );
    addField(
      'observedGroup',
      observedGroup,
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
      'targetNumber',
      'actualNumber',
      'eligibility',
      'observedGroup',
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
      case 'targetNumber':
        if (targetNumber != null) {
          fields.add(targetNumber!);
        }
      case 'actualNumber':
        if (actualNumber != null) {
          fields.add(actualNumber!);
        }
      case 'eligibility':
        if (eligibility != null) {
          fields.add(eligibility!);
        }
      case 'observedGroup':
        if (observedGroup != null) {
          fields.add(observedGroup!);
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
  ResearchStudyComparisonGroup clone() => copyWith();

  /// Copy function for [ResearchStudyComparisonGroup]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ResearchStudyComparisonGroupCopyWith<ResearchStudyComparisonGroup>
      get copyWith => _$ResearchStudyComparisonGroupCopyWithImpl<
              ResearchStudyComparisonGroup>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ResearchStudyComparisonGroup) {
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
      targetNumber,
      o.targetNumber,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      actualNumber,
      o.actualNumber,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      eligibility,
      o.eligibility,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      observedGroup,
      o.observedGroup,
    )) {
      return false;
    }
    return true;
  }
}

/// [ResearchStudyObjective]
/// A goal that the study is aiming to achieve in terms of a scientific
/// question to be answered by the analysis of data collected during the
/// study.
class ResearchStudyObjective extends BackboneElement {
  /// Primary constructor for
  /// [ResearchStudyObjective]

  const ResearchStudyObjective({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.name,
    this.type,
    this.description,
    this.outcomeMeasure,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ResearchStudyObjective.fromJson(
    Map<String, dynamic> json,
  ) {
    return ResearchStudyObjective(
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
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
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
      outcomeMeasure: (json['outcomeMeasure'] as List<dynamic>?)
          ?.map<ResearchStudyOutcomeMeasure>(
            (v) => ResearchStudyOutcomeMeasure.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ResearchStudyObjective]
  /// from a [String] or [YamlMap] object
  factory ResearchStudyObjective.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ResearchStudyObjective.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ResearchStudyObjective.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ResearchStudyObjective '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ResearchStudyObjective]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ResearchStudyObjective.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ResearchStudyObjective.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ResearchStudyObjective';

  /// [name]
  /// Unique, human-readable label for this objective of the study.
  final FhirString? name;

  /// [type]
  /// The kind of study objective.
  final CodeableConcept? type;

  /// [description]
  /// Free text description of the objective of the study. This is what the
  /// study is trying to achieve rather than how it is going to achieve it
  /// (see ResearchStudy.description).
  final FhirMarkdown? description;

  /// [outcomeMeasure]
  /// An "outcome measure", "endpoint", "effect measure" or "measure of
  /// effect" is a specific measurement or observation used to quantify the
  /// effect of experimental variables on the participants in a study, or for
  /// observational studies, to describe patterns of diseases or traits or
  /// associations with exposures, risk factors or treatment.
  final List<ResearchStudyOutcomeMeasure>? outcomeMeasure;
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
      'name',
      name,
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
      'outcomeMeasure',
      outcomeMeasure,
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
      'name',
      'type',
      'description',
      'outcomeMeasure',
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
      case 'name':
        if (name != null) {
          fields.add(name!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'outcomeMeasure':
        if (outcomeMeasure != null) {
          fields.addAll(outcomeMeasure!);
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
  ResearchStudyObjective clone() => copyWith();

  /// Copy function for [ResearchStudyObjective]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ResearchStudyObjectiveCopyWith<ResearchStudyObjective> get copyWith =>
      _$ResearchStudyObjectiveCopyWithImpl<ResearchStudyObjective>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ResearchStudyObjective) {
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
      name,
      o.name,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<ResearchStudyOutcomeMeasure>(
      outcomeMeasure,
      o.outcomeMeasure,
    )) {
      return false;
    }
    return true;
  }
}

/// [ResearchStudyOutcomeMeasure]
/// An "outcome measure", "endpoint", "effect measure" or "measure of
/// effect" is a specific measurement or observation used to quantify the
/// effect of experimental variables on the participants in a study, or for
/// observational studies, to describe patterns of diseases or traits or
/// associations with exposures, risk factors or treatment.
class ResearchStudyOutcomeMeasure extends BackboneElement {
  /// Primary constructor for
  /// [ResearchStudyOutcomeMeasure]

  const ResearchStudyOutcomeMeasure({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.name,
    this.type,
    this.description,
    required this.endpoint,
    this.population,
    this.intervention,
    this.comparator,
    this.summaryMeasure,
    this.eventHandling,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ResearchStudyOutcomeMeasure.fromJson(
    Map<String, dynamic> json,
  ) {
    return ResearchStudyOutcomeMeasure(
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
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
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
      endpoint: JsonParser.parseObject<Reference>(
        json,
        'endpoint',
        Reference.fromJson,
      )!,
      population: JsonParser.parseObject<Reference>(
        json,
        'population',
        Reference.fromJson,
      ),
      intervention: JsonParser.parseObject<Reference>(
        json,
        'intervention',
        Reference.fromJson,
      ),
      comparator: JsonParser.parseObject<Reference>(
        json,
        'comparator',
        Reference.fromJson,
      ),
      summaryMeasure: JsonParser.parseObject<CodeableConcept>(
        json,
        'summaryMeasure',
        CodeableConcept.fromJson,
      ),
      eventHandling: (json['eventHandling'] as List<dynamic>?)
          ?.map<ResearchStudyEventHandling>(
            (v) => ResearchStudyEventHandling.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ResearchStudyOutcomeMeasure]
  /// from a [String] or [YamlMap] object
  factory ResearchStudyOutcomeMeasure.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ResearchStudyOutcomeMeasure.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ResearchStudyOutcomeMeasure.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ResearchStudyOutcomeMeasure '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ResearchStudyOutcomeMeasure]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ResearchStudyOutcomeMeasure.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ResearchStudyOutcomeMeasure.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ResearchStudyOutcomeMeasure';

  /// [name]
  /// Label for the outcome measure.
  final FhirString? name;

  /// [type]
  /// The kind of outcome measure.
  final CodeableConcept? type;

  /// [description]
  /// Description of the outcome measure.
  final FhirMarkdown? description;

  /// [endpoint]
  /// Definition of the outcome measure.
  final Reference endpoint;

  /// [population]
  /// Population for this estimand.
  final Reference? population;

  /// [intervention]
  /// Comparison group of interest.
  final Reference? intervention;

  /// [comparator]
  /// Comparison group for comparison.
  final Reference? comparator;

  /// [summaryMeasure]
  /// Statistical measure for treatment effect estimate.
  final CodeableConcept? summaryMeasure;

  /// [eventHandling]
  /// Handling of intercurrent event.
  final List<ResearchStudyEventHandling>? eventHandling;
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
      'name',
      name,
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
      'endpoint',
      endpoint,
    );
    addField(
      'population',
      population,
    );
    addField(
      'intervention',
      intervention,
    );
    addField(
      'comparator',
      comparator,
    );
    addField(
      'summaryMeasure',
      summaryMeasure,
    );
    addField(
      'eventHandling',
      eventHandling,
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
      'name',
      'type',
      'description',
      'endpoint',
      'population',
      'intervention',
      'comparator',
      'summaryMeasure',
      'eventHandling',
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
      case 'name':
        if (name != null) {
          fields.add(name!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'endpoint':
        fields.add(endpoint);
      case 'population':
        if (population != null) {
          fields.add(population!);
        }
      case 'intervention':
        if (intervention != null) {
          fields.add(intervention!);
        }
      case 'comparator':
        if (comparator != null) {
          fields.add(comparator!);
        }
      case 'summaryMeasure':
        if (summaryMeasure != null) {
          fields.add(summaryMeasure!);
        }
      case 'eventHandling':
        if (eventHandling != null) {
          fields.addAll(eventHandling!);
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
  ResearchStudyOutcomeMeasure clone() => copyWith();

  /// Copy function for [ResearchStudyOutcomeMeasure]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ResearchStudyOutcomeMeasureCopyWith<ResearchStudyOutcomeMeasure>
      get copyWith => _$ResearchStudyOutcomeMeasureCopyWithImpl<
              ResearchStudyOutcomeMeasure>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ResearchStudyOutcomeMeasure) {
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
      name,
      o.name,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      type,
      o.type,
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
      endpoint,
      o.endpoint,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      population,
      o.population,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      intervention,
      o.intervention,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      comparator,
      o.comparator,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      summaryMeasure,
      o.summaryMeasure,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<ResearchStudyEventHandling>(
      eventHandling,
      o.eventHandling,
    )) {
      return false;
    }
    return true;
  }
}

/// [ResearchStudyEventHandling]
/// Handling of intercurrent event.
class ResearchStudyEventHandling extends BackboneElement {
  /// Primary constructor for
  /// [ResearchStudyEventHandling]

  const ResearchStudyEventHandling({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.event,
    this.group,
    this.handling,
    this.description,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ResearchStudyEventHandling.fromJson(
    Map<String, dynamic> json,
  ) {
    return ResearchStudyEventHandling(
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
      event: JsonParser.parseObject<CodeableConcept>(
        json,
        'event',
        CodeableConcept.fromJson,
      ),
      group: JsonParser.parseObject<CodeableConcept>(
        json,
        'group',
        CodeableConcept.fromJson,
      ),
      handling: JsonParser.parseObject<CodeableConcept>(
        json,
        'handling',
        CodeableConcept.fromJson,
      ),
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
      ),
    );
  }

  /// Deserialize [ResearchStudyEventHandling]
  /// from a [String] or [YamlMap] object
  factory ResearchStudyEventHandling.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ResearchStudyEventHandling.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ResearchStudyEventHandling.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ResearchStudyEventHandling '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ResearchStudyEventHandling]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ResearchStudyEventHandling.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ResearchStudyEventHandling.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ResearchStudyEventHandling';

  /// [event]
  /// The event.
  final CodeableConcept? event;

  /// [group]
  /// The group that is affected by this event handling.
  final CodeableConcept? group;

  /// [handling]
  /// How the data is handled.
  final CodeableConcept? handling;

  /// [description]
  /// Text summary of event handling.
  final FhirMarkdown? description;
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
      'event',
      event,
    );
    addField(
      'group',
      group,
    );
    addField(
      'handling',
      handling,
    );
    addField(
      'description',
      description,
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
      'event',
      'group',
      'handling',
      'description',
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
      case 'event':
        if (event != null) {
          fields.add(event!);
        }
      case 'group':
        if (group != null) {
          fields.add(group!);
        }
      case 'handling':
        if (handling != null) {
          fields.add(handling!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
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
  ResearchStudyEventHandling clone() => copyWith();

  /// Copy function for [ResearchStudyEventHandling]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ResearchStudyEventHandlingCopyWith<ResearchStudyEventHandling>
      get copyWith =>
          _$ResearchStudyEventHandlingCopyWithImpl<ResearchStudyEventHandling>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ResearchStudyEventHandling) {
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
      event,
      o.event,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      group,
      o.group,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      handling,
      o.handling,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    return true;
  }
}
