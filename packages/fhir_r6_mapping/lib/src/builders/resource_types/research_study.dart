import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart'
    show
        R6ResourceType,
        ResearchStudy,
        ResearchStudyAssociatedParty,
        ResearchStudyComparisonGroup,
        ResearchStudyEventHandling,
        ResearchStudyLabel,
        ResearchStudyObjective,
        ResearchStudyOutcomeMeasure,
        ResearchStudyProgressStatus,
        ResearchStudyRecruitment,
        ResearchStudyRelatesTo,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r6_mapping/fhir_r6_mapping.dart';
import 'package:yaml/yaml.dart';

/// [ResearchStudyBuilder]
/// A scientific study intended to increase health-related knowledge. For
/// example, clinical trials are research studies that involve people.
/// These studies may be related to new ways to screen, prevent, diagnose,
/// and treat disease. They may also study certain outcomes and certain
/// groups of people by looking at data collected in the past or future.
class ResearchStudyBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [ResearchStudyBuilder]

  ResearchStudyBuilder({
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
    this.status,
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
          objectPath: 'ResearchStudy',
          resourceType: R6ResourceType.ResearchStudy,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ResearchStudyBuilder.empty() => ResearchStudyBuilder(
        status: PublicationStatusBuilder.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ResearchStudyBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ResearchStudy';
    return ResearchStudyBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMetaBuilder>(
        json,
        'meta',
        FhirMetaBuilder.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'implicitRules',
        FhirUriBuilder.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<AllLanguagesBuilder>(
        json,
        'language',
        AllLanguagesBuilder.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parseObject<NarrativeBuilder>(
        json,
        'text',
        NarrativeBuilder.fromJson,
        '$objectPath.text',
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<ResourceBuilder>(
            (v) => ResourceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contained',
              },
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      url: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'url',
        FhirUriBuilder.fromJson,
        '$objectPath.url',
      ),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<IdentifierBuilder>(
            (v) => IdentifierBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.identifier',
              },
            ),
          )
          .toList(),
      version: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'version',
        FhirStringBuilder.fromJson,
        '$objectPath.version',
      ),
      name: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'name',
        FhirStringBuilder.fromJson,
        '$objectPath.name',
      ),
      title: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'title',
        FhirStringBuilder.fromJson,
        '$objectPath.title',
      ),
      label: (json['label'] as List<dynamic>?)
          ?.map<ResearchStudyLabelBuilder>(
            (v) => ResearchStudyLabelBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.label',
              },
            ),
          )
          .toList(),
      protocol: (json['protocol'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.protocol',
              },
            ),
          )
          .toList(),
      partOf: (json['partOf'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.partOf',
              },
            ),
          )
          .toList(),
      citeAs: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'citeAs',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.citeAs',
      ),
      relatesTo: (json['relatesTo'] as List<dynamic>?)
          ?.map<ResearchStudyRelatesToBuilder>(
            (v) => ResearchStudyRelatesToBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.relatesTo',
              },
            ),
          )
          .toList(),
      date: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'date',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.date',
      ),
      status: JsonParser.parsePrimitive<PublicationStatusBuilder>(
        json,
        'status',
        PublicationStatusBuilder.fromJson,
        '$objectPath.status',
      ),
      primaryPurposeType: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'primaryPurposeType',
        CodeableConceptBuilder.fromJson,
        '$objectPath.primaryPurposeType',
      ),
      phase: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'phase',
        CodeableConceptBuilder.fromJson,
        '$objectPath.phase',
      ),
      studyDesign: (json['studyDesign'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.studyDesign',
              },
            ),
          )
          .toList(),
      focus: (json['focus'] as List<dynamic>?)
          ?.map<CodeableReferenceBuilder>(
            (v) => CodeableReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.focus',
              },
            ),
          )
          .toList(),
      condition: (json['condition'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.condition',
              },
            ),
          )
          .toList(),
      keyword: (json['keyword'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.keyword',
              },
            ),
          )
          .toList(),
      region: (json['region'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.region',
              },
            ),
          )
          .toList(),
      descriptionSummary: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'descriptionSummary',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.descriptionSummary',
      ),
      description: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'description',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.description',
      ),
      period: JsonParser.parseObject<PeriodBuilder>(
        json,
        'period',
        PeriodBuilder.fromJson,
        '$objectPath.period',
      ),
      site: (json['site'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.site',
              },
            ),
          )
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map<AnnotationBuilder>(
            (v) => AnnotationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.note',
              },
            ),
          )
          .toList(),
      classifier: (json['classifier'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.classifier',
              },
            ),
          )
          .toList(),
      associatedParty: (json['associatedParty'] as List<dynamic>?)
          ?.map<ResearchStudyAssociatedPartyBuilder>(
            (v) => ResearchStudyAssociatedPartyBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.associatedParty',
              },
            ),
          )
          .toList(),
      progressStatus: (json['progressStatus'] as List<dynamic>?)
          ?.map<ResearchStudyProgressStatusBuilder>(
            (v) => ResearchStudyProgressStatusBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.progressStatus',
              },
            ),
          )
          .toList(),
      whyStopped: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'whyStopped',
        CodeableConceptBuilder.fromJson,
        '$objectPath.whyStopped',
      ),
      recruitment: JsonParser.parseObject<ResearchStudyRecruitmentBuilder>(
        json,
        'recruitment',
        ResearchStudyRecruitmentBuilder.fromJson,
        '$objectPath.recruitment',
      ),
      comparisonGroup: (json['comparisonGroup'] as List<dynamic>?)
          ?.map<ResearchStudyComparisonGroupBuilder>(
            (v) => ResearchStudyComparisonGroupBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.comparisonGroup',
              },
            ),
          )
          .toList(),
      objective: (json['objective'] as List<dynamic>?)
          ?.map<ResearchStudyObjectiveBuilder>(
            (v) => ResearchStudyObjectiveBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.objective',
              },
            ),
          )
          .toList(),
      result: (json['result'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.result',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ResearchStudyBuilder]
  /// from a [String] or [YamlMap] object
  factory ResearchStudyBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ResearchStudyBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ResearchStudyBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ResearchStudyBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ResearchStudyBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ResearchStudyBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ResearchStudyBuilder.fromJson(json);
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
  FhirUriBuilder? url;

  /// [identifier]
  /// Identifiers assigned to this research study by the sponsor or other
  /// systems.
  List<IdentifierBuilder>? identifier;

  /// [version]
  /// The business version for the study record.
  FhirStringBuilder? version;

  /// [name]
  /// Name for this study (computer friendly).
  FhirStringBuilder? name;

  /// [title]
  /// The human readable name of the research study.
  FhirStringBuilder? title;

  /// [label]
  /// Additional names for the study.
  List<ResearchStudyLabelBuilder>? label;

  /// [protocol]
  /// The set of steps expected to be performed as part of the execution of
  /// the study.
  List<ReferenceBuilder>? protocol;

  /// [partOf]
  /// A larger research study of which this particular study is a component
  /// or step.
  List<ReferenceBuilder>? partOf;

  /// [citeAs]
  /// Display of the bibliographic citation of this ResearchStudy.
  FhirMarkdownBuilder? citeAs;

  /// [relatesTo]
  /// Relationships that this ResearchStudy has with other FHIR or non-FHIR
  /// resources that already exist.
  List<ResearchStudyRelatesToBuilder>? relatesTo;

  /// [date]
  /// The date (and optionally time) when the ResearchStudy Resource was last
  /// significantly changed. The date must change when the business version
  /// changes and it must change if the status code changes. In addition, it
  /// should change when the substantive content of the ResearchStudy
  /// Resource changes.
  FhirDateTimeBuilder? date;

  /// [status]
  /// The publication state of the resource (not of the study).
  PublicationStatusBuilder? status;

  /// [primaryPurposeType]
  /// The type of study based upon the intent of the study activities. A
  /// classification of the intent of the study.
  CodeableConceptBuilder? primaryPurposeType;

  /// [phase]
  /// The stage in the progression of a therapy from initial experimental use
  /// in humans in clinical trials to post-market evaluation.
  CodeableConceptBuilder? phase;

  /// [studyDesign]
  /// Codes categorizing the type of study such as investigational vs.
  /// observational, type of blinding, type of randomization, safety vs.
  /// efficacy, etc.
  List<CodeableConceptBuilder>? studyDesign;

  /// [focus]
  /// The medication(s), food(s), therapy(ies), device(s) or other concerns
  /// or interventions that the study is seeking to gain more information
  /// about.
  List<CodeableReferenceBuilder>? focus;

  /// [condition]
  /// The condition that is the focus of the study. For example, In a study
  /// to examine risk factors for Lupus, might have as an inclusion criterion
  /// "healthy volunteer", but the target condition code would be a Lupus
  /// SNOMED code.
  List<CodeableConceptBuilder>? condition;

  /// [keyword]
  /// Key terms to aid in searching for or filtering the study.
  List<CodeableConceptBuilder>? keyword;

  /// [region]
  /// A country, state or other area where the study is taking place rather
  /// than its precise geographic location or address.
  List<CodeableConceptBuilder>? region;

  /// [descriptionSummary]
  /// A brief text for explaining the study.
  FhirMarkdownBuilder? descriptionSummary;

  /// [description]
  /// A detailed and human-readable narrative of the study. E.g., study
  /// abstract.
  FhirMarkdownBuilder? description;

  /// [period]
  /// Identifies the start date and the expected (or actual, depending on
  /// status) end date for the study.
  PeriodBuilder? period;

  /// [site]
  /// A facility in which study activities are conducted.
  List<ReferenceBuilder>? site;

  /// [note]
  /// Comments made about the study by the performer, subject or other
  /// participants.
  List<AnnotationBuilder>? note;

  /// [classifier]
  /// Additional grouping mechanism or categorization of a research study.
  /// Example: FDA regulated device, FDA regulated drug, MPG Paragraph 23b (a
  /// German legal requirement), IRB-exempt, etc. Implementation Note: do not
  /// use the classifier element to support existing semantics that are
  /// already supported thru explicit elements in the resource.
  List<CodeableConceptBuilder>? classifier;

  /// [associatedParty]
  /// Sponsors, collaborators, and other parties.
  List<ResearchStudyAssociatedPartyBuilder>? associatedParty;

  /// [progressStatus]
  /// Status of study with time for that status.
  List<ResearchStudyProgressStatusBuilder>? progressStatus;

  /// [whyStopped]
  /// A description and/or code explaining the premature termination of the
  /// study.
  CodeableConceptBuilder? whyStopped;

  /// [recruitment]
  /// Target or actual group of participants enrolled in study.
  ResearchStudyRecruitmentBuilder? recruitment;

  /// [comparisonGroup]
  /// Describes an expected event or sequence of events for one of the
  /// subjects of a study. E.g. for a living subject: exposure to drug A,
  /// wash-out, exposure to drug B, wash-out, follow-up. E.g. for a stability
  /// study: {store sample from lot A at 25 degrees for 1 month}, {store
  /// sample from lot A at 40 degrees for 1 month}.
  List<ResearchStudyComparisonGroupBuilder>? comparisonGroup;

  /// [objective]
  /// A goal that the study is aiming to achieve in terms of a scientific
  /// question to be answered by the analysis of data collected during the
  /// study.
  List<ResearchStudyObjectiveBuilder>? objective;

  /// [result]
  /// Link to one or more sets of results generated by the study. Could also
  /// link to a research registry holding the results such as
  /// ClinicalTrials.gov.
  List<ReferenceBuilder>? result;

  /// Converts a [ResearchStudyBuilder]
  /// to [ResearchStudy]
  @override
  ResearchStudy build() => ResearchStudy.fromJson(toJson());

  /// Converts a [ResearchStudyBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    addField('meta', meta);
    addField('implicitRules', implicitRules);
    addField('language', language);
    addField('text', text);
    addField('contained', contained);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('url', url);
    addField('identifier', identifier);
    addField('version', version);
    addField('name', name);
    addField('title', title);
    addField('label', label);
    addField('protocol', protocol);
    addField('partOf', partOf);
    addField('citeAs', citeAs);
    addField('relatesTo', relatesTo);
    addField('date', date);
    addField('status', status);
    addField('primaryPurposeType', primaryPurposeType);
    addField('phase', phase);
    addField('studyDesign', studyDesign);
    addField('focus', focus);
    addField('condition', condition);
    addField('keyword', keyword);
    addField('region', region);
    addField('descriptionSummary', descriptionSummary);
    addField('description', description);
    addField('period', period);
    addField('site', site);
    addField('note', note);
    addField('classifier', classifier);
    addField('associatedParty', associatedParty);
    addField('progressStatus', progressStatus);
    addField('whyStopped', whyStopped);
    addField('recruitment', recruitment);
    addField('comparisonGroup', comparisonGroup);
    addField('objective', objective);
    addField('result', result);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (status != null) {
          fields.add(status!);
        }
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'meta':
        {
          if (child is FhirMetaBuilder) {
            meta = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'implicitRules':
        {
          if (child is FhirUriBuilder) {
            implicitRules = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                implicitRules = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'language':
        {
          if (child is AllLanguagesBuilder) {
            language = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = AllLanguagesBuilder(stringValue);
                language = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'text':
        {
          if (child is NarrativeBuilder) {
            text = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'contained':
        {
          if (child is List<ResourceBuilder>) {
            // Replace or create new list
            contained = child;
            return;
          } else if (child is ResourceBuilder) {
            // Add single element to existing list or create new list
            contained = [
              ...(contained ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'url':
        {
          if (child is FhirUriBuilder) {
            url = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                url = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'identifier':
        {
          if (child is List<IdentifierBuilder>) {
            // Replace or create new list
            identifier = child;
            return;
          } else if (child is IdentifierBuilder) {
            // Add single element to existing list or create new list
            identifier = [
              ...(identifier ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'version':
        {
          if (child is FhirStringBuilder) {
            version = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                version = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'name':
        {
          if (child is FhirStringBuilder) {
            name = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                name = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'title':
        {
          if (child is FhirStringBuilder) {
            title = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                title = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'label':
        {
          if (child is List<ResearchStudyLabelBuilder>) {
            // Replace or create new list
            label = child;
            return;
          } else if (child is ResearchStudyLabelBuilder) {
            // Add single element to existing list or create new list
            label = [
              ...(label ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'protocol':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            protocol = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            protocol = [
              ...(protocol ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'partOf':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            partOf = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            partOf = [
              ...(partOf ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'citeAs':
        {
          if (child is FhirMarkdownBuilder) {
            citeAs = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
              if (converted != null) {
                citeAs = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'relatesTo':
        {
          if (child is List<ResearchStudyRelatesToBuilder>) {
            // Replace or create new list
            relatesTo = child;
            return;
          } else if (child is ResearchStudyRelatesToBuilder) {
            // Add single element to existing list or create new list
            relatesTo = [
              ...(relatesTo ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'date':
        {
          if (child is FhirDateTimeBuilder) {
            date = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                date = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'status':
        {
          if (child is PublicationStatusBuilder) {
            status = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = PublicationStatusBuilder(stringValue);
                status = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'primaryPurposeType':
        {
          if (child is CodeableConceptBuilder) {
            primaryPurposeType = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'phase':
        {
          if (child is CodeableConceptBuilder) {
            phase = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'studyDesign':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            studyDesign = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            studyDesign = [
              ...(studyDesign ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'focus':
        {
          if (child is List<CodeableReferenceBuilder>) {
            // Replace or create new list
            focus = child;
            return;
          } else if (child is CodeableReferenceBuilder) {
            // Add single element to existing list or create new list
            focus = [
              ...(focus ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'condition':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            condition = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            condition = [
              ...(condition ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'keyword':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            keyword = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            keyword = [
              ...(keyword ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'region':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            region = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            region = [
              ...(region ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'descriptionSummary':
        {
          if (child is FhirMarkdownBuilder) {
            descriptionSummary = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
              if (converted != null) {
                descriptionSummary = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'description':
        {
          if (child is FhirMarkdownBuilder) {
            description = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
              if (converted != null) {
                description = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'period':
        {
          if (child is PeriodBuilder) {
            period = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'site':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            site = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            site = [
              ...(site ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'note':
        {
          if (child is List<AnnotationBuilder>) {
            // Replace or create new list
            note = child;
            return;
          } else if (child is AnnotationBuilder) {
            // Add single element to existing list or create new list
            note = [
              ...(note ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'classifier':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            classifier = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            classifier = [
              ...(classifier ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'associatedParty':
        {
          if (child is List<ResearchStudyAssociatedPartyBuilder>) {
            // Replace or create new list
            associatedParty = child;
            return;
          } else if (child is ResearchStudyAssociatedPartyBuilder) {
            // Add single element to existing list or create new list
            associatedParty = [
              ...(associatedParty ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'progressStatus':
        {
          if (child is List<ResearchStudyProgressStatusBuilder>) {
            // Replace or create new list
            progressStatus = child;
            return;
          } else if (child is ResearchStudyProgressStatusBuilder) {
            // Add single element to existing list or create new list
            progressStatus = [
              ...(progressStatus ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'whyStopped':
        {
          if (child is CodeableConceptBuilder) {
            whyStopped = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'recruitment':
        {
          if (child is ResearchStudyRecruitmentBuilder) {
            recruitment = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'comparisonGroup':
        {
          if (child is List<ResearchStudyComparisonGroupBuilder>) {
            // Replace or create new list
            comparisonGroup = child;
            return;
          } else if (child is ResearchStudyComparisonGroupBuilder) {
            // Add single element to existing list or create new list
            comparisonGroup = [
              ...(comparisonGroup ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'objective':
        {
          if (child is List<ResearchStudyObjectiveBuilder>) {
            // Replace or create new list
            objective = child;
            return;
          } else if (child is ResearchStudyObjectiveBuilder) {
            // Add single element to existing list or create new list
            objective = [
              ...(objective ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'result':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            result = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            result = [
              ...(result ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'meta':
        return ['FhirMetaBuilder'];
      case 'implicitRules':
        return ['FhirUriBuilder'];
      case 'language':
        return ['FhirCodeEnumBuilder'];
      case 'text':
        return ['NarrativeBuilder'];
      case 'contained':
        return ['ResourceBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'url':
        return ['FhirUriBuilder'];
      case 'identifier':
        return ['IdentifierBuilder'];
      case 'version':
        return ['FhirStringBuilder'];
      case 'name':
        return ['FhirStringBuilder'];
      case 'title':
        return ['FhirStringBuilder'];
      case 'label':
        return ['ResearchStudyLabelBuilder'];
      case 'protocol':
        return ['ReferenceBuilder'];
      case 'partOf':
        return ['ReferenceBuilder'];
      case 'citeAs':
        return ['FhirMarkdownBuilder'];
      case 'relatesTo':
        return ['ResearchStudyRelatesToBuilder'];
      case 'date':
        return ['FhirDateTimeBuilder'];
      case 'status':
        return ['FhirCodeEnumBuilder'];
      case 'primaryPurposeType':
        return ['CodeableConceptBuilder'];
      case 'phase':
        return ['CodeableConceptBuilder'];
      case 'studyDesign':
        return ['CodeableConceptBuilder'];
      case 'focus':
        return ['CodeableReferenceBuilder'];
      case 'condition':
        return ['CodeableConceptBuilder'];
      case 'keyword':
        return ['CodeableConceptBuilder'];
      case 'region':
        return ['CodeableConceptBuilder'];
      case 'descriptionSummary':
        return ['FhirMarkdownBuilder'];
      case 'description':
        return ['FhirMarkdownBuilder'];
      case 'period':
        return ['PeriodBuilder'];
      case 'site':
        return ['ReferenceBuilder'];
      case 'note':
        return ['AnnotationBuilder'];
      case 'classifier':
        return ['CodeableConceptBuilder'];
      case 'associatedParty':
        return ['ResearchStudyAssociatedPartyBuilder'];
      case 'progressStatus':
        return ['ResearchStudyProgressStatusBuilder'];
      case 'whyStopped':
        return ['CodeableConceptBuilder'];
      case 'recruitment':
        return ['ResearchStudyRecruitmentBuilder'];
      case 'comparisonGroup':
        return ['ResearchStudyComparisonGroupBuilder'];
      case 'objective':
        return ['ResearchStudyObjectiveBuilder'];
      case 'result':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ResearchStudyBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'meta':
        {
          meta = FhirMetaBuilder.empty();
          return;
        }
      case 'implicitRules':
        {
          implicitRules = FhirUriBuilder.empty();
          return;
        }
      case 'language':
        {
          language = AllLanguagesBuilder.empty();
          return;
        }
      case 'text':
        {
          text = NarrativeBuilder.empty();
          return;
        }
      case 'contained':
        {
          contained = <ResourceBuilder>[];
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'url':
        {
          url = FhirUriBuilder.empty();
          return;
        }
      case 'identifier':
        {
          identifier = <IdentifierBuilder>[];
          return;
        }
      case 'version':
        {
          version = FhirStringBuilder.empty();
          return;
        }
      case 'name':
        {
          name = FhirStringBuilder.empty();
          return;
        }
      case 'title':
        {
          title = FhirStringBuilder.empty();
          return;
        }
      case 'label':
        {
          label = <ResearchStudyLabelBuilder>[];
          return;
        }
      case 'protocol':
        {
          protocol = <ReferenceBuilder>[];
          return;
        }
      case 'partOf':
        {
          partOf = <ReferenceBuilder>[];
          return;
        }
      case 'citeAs':
        {
          citeAs = FhirMarkdownBuilder.empty();
          return;
        }
      case 'relatesTo':
        {
          relatesTo = <ResearchStudyRelatesToBuilder>[];
          return;
        }
      case 'date':
        {
          date = FhirDateTimeBuilder.empty();
          return;
        }
      case 'status':
        {
          status = PublicationStatusBuilder.empty();
          return;
        }
      case 'primaryPurposeType':
        {
          primaryPurposeType = CodeableConceptBuilder.empty();
          return;
        }
      case 'phase':
        {
          phase = CodeableConceptBuilder.empty();
          return;
        }
      case 'studyDesign':
        {
          studyDesign = <CodeableConceptBuilder>[];
          return;
        }
      case 'focus':
        {
          focus = <CodeableReferenceBuilder>[];
          return;
        }
      case 'condition':
        {
          condition = <CodeableConceptBuilder>[];
          return;
        }
      case 'keyword':
        {
          keyword = <CodeableConceptBuilder>[];
          return;
        }
      case 'region':
        {
          region = <CodeableConceptBuilder>[];
          return;
        }
      case 'descriptionSummary':
        {
          descriptionSummary = FhirMarkdownBuilder.empty();
          return;
        }
      case 'description':
        {
          description = FhirMarkdownBuilder.empty();
          return;
        }
      case 'period':
        {
          period = PeriodBuilder.empty();
          return;
        }
      case 'site':
        {
          site = <ReferenceBuilder>[];
          return;
        }
      case 'note':
        {
          note = <AnnotationBuilder>[];
          return;
        }
      case 'classifier':
        {
          classifier = <CodeableConceptBuilder>[];
          return;
        }
      case 'associatedParty':
        {
          associatedParty = <ResearchStudyAssociatedPartyBuilder>[];
          return;
        }
      case 'progressStatus':
        {
          progressStatus = <ResearchStudyProgressStatusBuilder>[];
          return;
        }
      case 'whyStopped':
        {
          whyStopped = CodeableConceptBuilder.empty();
          return;
        }
      case 'recruitment':
        {
          recruitment = ResearchStudyRecruitmentBuilder.empty();
          return;
        }
      case 'comparisonGroup':
        {
          comparisonGroup = <ResearchStudyComparisonGroupBuilder>[];
          return;
        }
      case 'objective':
        {
          objective = <ResearchStudyObjectiveBuilder>[];
          return;
        }
      case 'result':
        {
          result = <ReferenceBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ResearchStudyBuilder clone() => throw UnimplementedError();
  @override
  ResearchStudyBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    AllLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirUriBuilder? url,
    List<IdentifierBuilder>? identifier,
    FhirStringBuilder? version,
    FhirStringBuilder? name,
    FhirStringBuilder? title,
    List<ResearchStudyLabelBuilder>? label,
    List<ReferenceBuilder>? protocol,
    List<ReferenceBuilder>? partOf,
    FhirMarkdownBuilder? citeAs,
    List<ResearchStudyRelatesToBuilder>? relatesTo,
    FhirDateTimeBuilder? date,
    PublicationStatusBuilder? status,
    CodeableConceptBuilder? primaryPurposeType,
    CodeableConceptBuilder? phase,
    List<CodeableConceptBuilder>? studyDesign,
    List<CodeableReferenceBuilder>? focus,
    List<CodeableConceptBuilder>? condition,
    List<CodeableConceptBuilder>? keyword,
    List<CodeableConceptBuilder>? region,
    FhirMarkdownBuilder? descriptionSummary,
    FhirMarkdownBuilder? description,
    PeriodBuilder? period,
    List<ReferenceBuilder>? site,
    List<AnnotationBuilder>? note,
    List<CodeableConceptBuilder>? classifier,
    List<ResearchStudyAssociatedPartyBuilder>? associatedParty,
    List<ResearchStudyProgressStatusBuilder>? progressStatus,
    CodeableConceptBuilder? whyStopped,
    ResearchStudyRecruitmentBuilder? recruitment,
    List<ResearchStudyComparisonGroupBuilder>? comparisonGroup,
    List<ResearchStudyObjectiveBuilder>? objective,
    List<ReferenceBuilder>? result,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = ResearchStudyBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      url: url ?? this.url,
      identifier: identifier ?? this.identifier,
      version: version ?? this.version,
      name: name ?? this.name,
      title: title ?? this.title,
      label: label ?? this.label,
      protocol: protocol ?? this.protocol,
      partOf: partOf ?? this.partOf,
      citeAs: citeAs ?? this.citeAs,
      relatesTo: relatesTo ?? this.relatesTo,
      date: date ?? this.date,
      status: status ?? this.status,
      primaryPurposeType: primaryPurposeType ?? this.primaryPurposeType,
      phase: phase ?? this.phase,
      studyDesign: studyDesign ?? this.studyDesign,
      focus: focus ?? this.focus,
      condition: condition ?? this.condition,
      keyword: keyword ?? this.keyword,
      region: region ?? this.region,
      descriptionSummary: descriptionSummary ?? this.descriptionSummary,
      description: description ?? this.description,
      period: period ?? this.period,
      site: site ?? this.site,
      note: note ?? this.note,
      classifier: classifier ?? this.classifier,
      associatedParty: associatedParty ?? this.associatedParty,
      progressStatus: progressStatus ?? this.progressStatus,
      whyStopped: whyStopped ?? this.whyStopped,
      recruitment: recruitment ?? this.recruitment,
      comparisonGroup: comparisonGroup ?? this.comparisonGroup,
      objective: objective ?? this.objective,
      result: result ?? this.result,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! ResearchStudyBuilder) {
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
    if (!listEquals<ResourceBuilder>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
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
    if (!listEquals<IdentifierBuilder>(
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
    if (!listEquals<ResearchStudyLabelBuilder>(
      label,
      o.label,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      protocol,
      o.protocol,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      partOf,
      o.partOf,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      citeAs,
      o.citeAs,
    )) {
      return false;
    }
    if (!listEquals<ResearchStudyRelatesToBuilder>(
      relatesTo,
      o.relatesTo,
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
      status,
      o.status,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      primaryPurposeType,
      o.primaryPurposeType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      phase,
      o.phase,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      studyDesign,
      o.studyDesign,
    )) {
      return false;
    }
    if (!listEquals<CodeableReferenceBuilder>(
      focus,
      o.focus,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      condition,
      o.condition,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      keyword,
      o.keyword,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      region,
      o.region,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      descriptionSummary,
      o.descriptionSummary,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      period,
      o.period,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      site,
      o.site,
    )) {
      return false;
    }
    if (!listEquals<AnnotationBuilder>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      classifier,
      o.classifier,
    )) {
      return false;
    }
    if (!listEquals<ResearchStudyAssociatedPartyBuilder>(
      associatedParty,
      o.associatedParty,
    )) {
      return false;
    }
    if (!listEquals<ResearchStudyProgressStatusBuilder>(
      progressStatus,
      o.progressStatus,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      whyStopped,
      o.whyStopped,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      recruitment,
      o.recruitment,
    )) {
      return false;
    }
    if (!listEquals<ResearchStudyComparisonGroupBuilder>(
      comparisonGroup,
      o.comparisonGroup,
    )) {
      return false;
    }
    if (!listEquals<ResearchStudyObjectiveBuilder>(
      objective,
      o.objective,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      result,
      o.result,
    )) {
      return false;
    }
    return true;
  }
}

/// [ResearchStudyLabelBuilder]
/// Additional names for the study.
class ResearchStudyLabelBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ResearchStudyLabelBuilder]

  ResearchStudyLabelBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.value,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ResearchStudy.label',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ResearchStudyLabelBuilder.empty() => ResearchStudyLabelBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ResearchStudyLabelBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ResearchStudy.label';
    return ResearchStudyLabelBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      value: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'value',
        FhirStringBuilder.fromJson,
        '$objectPath.value',
      ),
    );
  }

  /// Deserialize [ResearchStudyLabelBuilder]
  /// from a [String] or [YamlMap] object
  factory ResearchStudyLabelBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ResearchStudyLabelBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ResearchStudyLabelBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ResearchStudyLabelBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ResearchStudyLabelBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ResearchStudyLabelBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ResearchStudyLabelBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ResearchStudyLabel';

  /// [type]
  /// Kind of name.
  CodeableConceptBuilder? type;

  /// [value]
  /// The name.
  FhirStringBuilder? value;

  /// Converts a [ResearchStudyLabelBuilder]
  /// to [ResearchStudyLabel]
  @override
  ResearchStudyLabel build() => ResearchStudyLabel.fromJson(toJson());

  /// Converts a [ResearchStudyLabelBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('type', type);
    addField('value', value);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'value':
        {
          if (child is FhirStringBuilder) {
            value = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                value = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'value':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ResearchStudyLabelBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'value':
        {
          value = FhirStringBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ResearchStudyLabelBuilder clone() => throw UnimplementedError();
  @override
  ResearchStudyLabelBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? type,
    FhirStringBuilder? value,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ResearchStudyLabelBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      value: value ?? this.value,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! ResearchStudyLabelBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
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
    return true;
  }
}

/// [ResearchStudyRelatesToBuilder]
/// Relationships that this ResearchStudy has with other FHIR or non-FHIR
/// resources that already exist.
class ResearchStudyRelatesToBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ResearchStudyRelatesToBuilder]

  ResearchStudyRelatesToBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    TargetXResearchStudyRelatesToBuilder? targetX,
    FhirUriBuilder? targetUri,
    AttachmentBuilder? targetAttachment,
    FhirCanonicalBuilder? targetCanonical,
    ReferenceBuilder? targetReference,
    FhirMarkdownBuilder? targetMarkdown,
    super.disallowExtensions,
  })  : targetX = targetX ??
            targetUri ??
            targetAttachment ??
            targetCanonical ??
            targetReference ??
            targetMarkdown,
        super(
          objectPath: 'ResearchStudy.relatesTo',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ResearchStudyRelatesToBuilder.empty() =>
      ResearchStudyRelatesToBuilder(
        type: ArtifactRelationshipTypeBuilder.values.first,
        targetX: FhirUriBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ResearchStudyRelatesToBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ResearchStudy.relatesTo';
    return ResearchStudyRelatesToBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      type: JsonParser.parsePrimitive<ArtifactRelationshipTypeBuilder>(
        json,
        'type',
        ArtifactRelationshipTypeBuilder.fromJson,
        '$objectPath.type',
      ),
      targetX:
          JsonParser.parsePolymorphic<TargetXResearchStudyRelatesToBuilder>(
        json,
        {
          'targetUri': FhirUriBuilder.fromJson,
          'targetAttachment': AttachmentBuilder.fromJson,
          'targetCanonical': FhirCanonicalBuilder.fromJson,
          'targetReference': ReferenceBuilder.fromJson,
          'targetMarkdown': FhirMarkdownBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [ResearchStudyRelatesToBuilder]
  /// from a [String] or [YamlMap] object
  factory ResearchStudyRelatesToBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ResearchStudyRelatesToBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ResearchStudyRelatesToBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ResearchStudyRelatesToBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ResearchStudyRelatesToBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ResearchStudyRelatesToBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ResearchStudyRelatesToBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ResearchStudyRelatesTo';

  /// [type]
  /// The type of relationship to the related artifact.
  ArtifactRelationshipTypeBuilder? type;

  /// [targetX]
  /// The artifact that is related to this ResearchStudy Resource.
  TargetXResearchStudyRelatesToBuilder? targetX;

  /// Getter for [targetUri] as a FhirUriBuilder
  FhirUriBuilder? get targetUri => targetX?.isAs<FhirUriBuilder>();

  /// Getter for [targetAttachment] as a AttachmentBuilder
  AttachmentBuilder? get targetAttachment => targetX?.isAs<AttachmentBuilder>();

  /// Getter for [targetCanonical] as a FhirCanonicalBuilder
  FhirCanonicalBuilder? get targetCanonical =>
      targetX?.isAs<FhirCanonicalBuilder>();

  /// Getter for [targetReference] as a ReferenceBuilder
  ReferenceBuilder? get targetReference => targetX?.isAs<ReferenceBuilder>();

  /// Getter for [targetMarkdown] as a FhirMarkdownBuilder
  FhirMarkdownBuilder? get targetMarkdown =>
      targetX?.isAs<FhirMarkdownBuilder>();

  /// Converts a [ResearchStudyRelatesToBuilder]
  /// to [ResearchStudyRelatesTo]
  @override
  ResearchStudyRelatesTo build() => ResearchStudyRelatesTo.fromJson(toJson());

  /// Converts a [ResearchStudyRelatesToBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('type', type);
    if (targetX != null) {
      final fhirType = targetX!.fhirType;
      addField('target${fhirType.capitalizeFirstLetter()}', targetX);
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
      'type',
      'targetX',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
      case 'target':
        if (targetX != null) {
          fields.add(targetX!);
        }
      case 'targetX':
        if (targetX != null) {
          fields.add(targetX!);
        }
      case 'targetUri':
        if (targetX is FhirUriBuilder) {
          fields.add(targetX!);
        }
      case 'targetAttachment':
        if (targetX is AttachmentBuilder) {
          fields.add(targetX!);
        }
      case 'targetCanonical':
        if (targetX is FhirCanonicalBuilder) {
          fields.add(targetX!);
        }
      case 'targetReference':
        if (targetX is ReferenceBuilder) {
          fields.add(targetX!);
        }
      case 'targetMarkdown':
        if (targetX is FhirMarkdownBuilder) {
          fields.add(targetX!);
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is ArtifactRelationshipTypeBuilder) {
            type = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = ArtifactRelationshipTypeBuilder(stringValue);
                type = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'target':
      case 'targetX':
        {
          if (child is TargetXResearchStudyRelatesToBuilder) {
            targetX = child;
            return;
          } else {
            if (child is FhirUriBuilder) {
              targetX = child;
              return;
            }
            if (child is AttachmentBuilder) {
              targetX = child;
              return;
            }
            if (child is FhirCanonicalBuilder) {
              targetX = child;
              return;
            }
            if (child is ReferenceBuilder) {
              targetX = child;
              return;
            }
            if (child is FhirMarkdownBuilder) {
              targetX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'targetUri':
        {
          if (child is FhirUriBuilder) {
            targetX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'targetAttachment':
        {
          if (child is AttachmentBuilder) {
            targetX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'targetCanonical':
        {
          if (child is FhirCanonicalBuilder) {
            targetX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'targetReference':
        {
          if (child is ReferenceBuilder) {
            targetX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'targetMarkdown':
        {
          if (child is FhirMarkdownBuilder) {
            targetX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'type':
        return ['FhirCodeEnumBuilder'];
      case 'target':
      case 'targetX':
        return [
          'FhirUriBuilder',
          'AttachmentBuilder',
          'FhirCanonicalBuilder',
          'ReferenceBuilder',
          'FhirMarkdownBuilder',
        ];
      case 'targetUri':
        return ['FhirUriBuilder'];
      case 'targetAttachment':
        return ['AttachmentBuilder'];
      case 'targetCanonical':
        return ['FhirCanonicalBuilder'];
      case 'targetReference':
        return ['ReferenceBuilder'];
      case 'targetMarkdown':
        return ['FhirMarkdownBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ResearchStudyRelatesToBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'type':
        {
          type = ArtifactRelationshipTypeBuilder.empty();
          return;
        }
      case 'target':
      case 'targetX':
      case 'targetUri':
        {
          targetX = FhirUriBuilder.empty();
          return;
        }
      case 'targetAttachment':
        {
          targetX = AttachmentBuilder.empty();
          return;
        }
      case 'targetCanonical':
        {
          targetX = FhirCanonicalBuilder.empty();
          return;
        }
      case 'targetReference':
        {
          targetX = ReferenceBuilder.empty();
          return;
        }
      case 'targetMarkdown':
        {
          targetX = FhirMarkdownBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ResearchStudyRelatesToBuilder clone() => throw UnimplementedError();
  @override
  ResearchStudyRelatesToBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    ArtifactRelationshipTypeBuilder? type,
    TargetXResearchStudyRelatesToBuilder? targetX,
    FhirUriBuilder? targetUri,
    AttachmentBuilder? targetAttachment,
    FhirCanonicalBuilder? targetCanonical,
    ReferenceBuilder? targetReference,
    FhirMarkdownBuilder? targetMarkdown,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ResearchStudyRelatesToBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      targetX: targetX ??
          targetUri ??
          targetAttachment ??
          targetCanonical ??
          targetReference ??
          targetMarkdown ??
          this.targetX,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! ResearchStudyRelatesToBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
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
      targetX,
      o.targetX,
    )) {
      return false;
    }
    return true;
  }
}

/// [ResearchStudyAssociatedPartyBuilder]
/// Sponsors, collaborators, and other parties.
class ResearchStudyAssociatedPartyBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ResearchStudyAssociatedPartyBuilder]

  ResearchStudyAssociatedPartyBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.name,
    this.role,
    this.period,
    this.classifier,
    this.party,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ResearchStudy.associatedParty',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ResearchStudyAssociatedPartyBuilder.empty() =>
      ResearchStudyAssociatedPartyBuilder(
        role: CodeableConceptBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ResearchStudyAssociatedPartyBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ResearchStudy.associatedParty';
    return ResearchStudyAssociatedPartyBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      name: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'name',
        FhirStringBuilder.fromJson,
        '$objectPath.name',
      ),
      role: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'role',
        CodeableConceptBuilder.fromJson,
        '$objectPath.role',
      ),
      period: (json['period'] as List<dynamic>?)
          ?.map<PeriodBuilder>(
            (v) => PeriodBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.period',
              },
            ),
          )
          .toList(),
      classifier: (json['classifier'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.classifier',
              },
            ),
          )
          .toList(),
      party: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'party',
        ReferenceBuilder.fromJson,
        '$objectPath.party',
      ),
    );
  }

  /// Deserialize [ResearchStudyAssociatedPartyBuilder]
  /// from a [String] or [YamlMap] object
  factory ResearchStudyAssociatedPartyBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ResearchStudyAssociatedPartyBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ResearchStudyAssociatedPartyBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ResearchStudyAssociatedPartyBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ResearchStudyAssociatedPartyBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ResearchStudyAssociatedPartyBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ResearchStudyAssociatedPartyBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ResearchStudyAssociatedParty';

  /// [name]
  /// Name of associated party.
  FhirStringBuilder? name;

  /// [role]
  /// Type of association.
  CodeableConceptBuilder? role;

  /// [period]
  /// Identifies the start date and the end date of the associated party in
  /// the role.
  List<PeriodBuilder>? period;

  /// [classifier]
  /// A categorization other than role for the associated party.
  List<CodeableConceptBuilder>? classifier;

  /// [party]
  /// Individual or organization associated with study (use practitionerRole
  /// to specify their organisation).
  ReferenceBuilder? party;

  /// Converts a [ResearchStudyAssociatedPartyBuilder]
  /// to [ResearchStudyAssociatedParty]
  @override
  ResearchStudyAssociatedParty build() =>
      ResearchStudyAssociatedParty.fromJson(toJson());

  /// Converts a [ResearchStudyAssociatedPartyBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('name', name);
    addField('role', role);
    addField('period', period);
    addField('classifier', classifier);
    addField('party', party);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (role != null) {
          fields.add(role!);
        }
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'name':
        {
          if (child is FhirStringBuilder) {
            name = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                name = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'role':
        {
          if (child is CodeableConceptBuilder) {
            role = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'period':
        {
          if (child is List<PeriodBuilder>) {
            // Replace or create new list
            period = child;
            return;
          } else if (child is PeriodBuilder) {
            // Add single element to existing list or create new list
            period = [
              ...(period ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'classifier':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            classifier = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            classifier = [
              ...(classifier ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'party':
        {
          if (child is ReferenceBuilder) {
            party = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'name':
        return ['FhirStringBuilder'];
      case 'role':
        return ['CodeableConceptBuilder'];
      case 'period':
        return ['PeriodBuilder'];
      case 'classifier':
        return ['CodeableConceptBuilder'];
      case 'party':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ResearchStudyAssociatedPartyBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'name':
        {
          name = FhirStringBuilder.empty();
          return;
        }
      case 'role':
        {
          role = CodeableConceptBuilder.empty();
          return;
        }
      case 'period':
        {
          period = <PeriodBuilder>[];
          return;
        }
      case 'classifier':
        {
          classifier = <CodeableConceptBuilder>[];
          return;
        }
      case 'party':
        {
          party = ReferenceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ResearchStudyAssociatedPartyBuilder clone() => throw UnimplementedError();
  @override
  ResearchStudyAssociatedPartyBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? name,
    CodeableConceptBuilder? role,
    List<PeriodBuilder>? period,
    List<CodeableConceptBuilder>? classifier,
    ReferenceBuilder? party,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ResearchStudyAssociatedPartyBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      role: role ?? this.role,
      period: period ?? this.period,
      classifier: classifier ?? this.classifier,
      party: party ?? this.party,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! ResearchStudyAssociatedPartyBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
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
      role,
      o.role,
    )) {
      return false;
    }
    if (!listEquals<PeriodBuilder>(
      period,
      o.period,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      classifier,
      o.classifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      party,
      o.party,
    )) {
      return false;
    }
    return true;
  }
}

/// [ResearchStudyProgressStatusBuilder]
/// Status of study with time for that status.
class ResearchStudyProgressStatusBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ResearchStudyProgressStatusBuilder]

  ResearchStudyProgressStatusBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.state,
    this.actual,
    this.period,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ResearchStudy.progressStatus',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ResearchStudyProgressStatusBuilder.empty() =>
      ResearchStudyProgressStatusBuilder(
        state: CodeableConceptBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ResearchStudyProgressStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ResearchStudy.progressStatus';
    return ResearchStudyProgressStatusBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      state: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'state',
        CodeableConceptBuilder.fromJson,
        '$objectPath.state',
      ),
      actual: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'actual',
        FhirBooleanBuilder.fromJson,
        '$objectPath.actual',
      ),
      period: JsonParser.parseObject<PeriodBuilder>(
        json,
        'period',
        PeriodBuilder.fromJson,
        '$objectPath.period',
      ),
    );
  }

  /// Deserialize [ResearchStudyProgressStatusBuilder]
  /// from a [String] or [YamlMap] object
  factory ResearchStudyProgressStatusBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ResearchStudyProgressStatusBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ResearchStudyProgressStatusBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ResearchStudyProgressStatusBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ResearchStudyProgressStatusBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ResearchStudyProgressStatusBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ResearchStudyProgressStatusBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ResearchStudyProgressStatus';

  /// [state]
  /// Label for status or state (e.g. recruitment status).
  CodeableConceptBuilder? state;

  /// [actual]
  /// An indication of whether or not the date is a known date when the state
  /// changed or will change. A value of true indicates a known date. A value
  /// of false indicates an estimated date.
  FhirBooleanBuilder? actual;

  /// [period]
  /// Date range.
  PeriodBuilder? period;

  /// Converts a [ResearchStudyProgressStatusBuilder]
  /// to [ResearchStudyProgressStatus]
  @override
  ResearchStudyProgressStatus build() =>
      ResearchStudyProgressStatus.fromJson(toJson());

  /// Converts a [ResearchStudyProgressStatusBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('state', state);
    addField('actual', actual);
    addField('period', period);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (state != null) {
          fields.add(state!);
        }
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'state':
        {
          if (child is CodeableConceptBuilder) {
            state = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'actual':
        {
          if (child is FhirBooleanBuilder) {
            actual = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                actual = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'period':
        {
          if (child is PeriodBuilder) {
            period = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'state':
        return ['CodeableConceptBuilder'];
      case 'actual':
        return ['FhirBooleanBuilder'];
      case 'period':
        return ['PeriodBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ResearchStudyProgressStatusBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'state':
        {
          state = CodeableConceptBuilder.empty();
          return;
        }
      case 'actual':
        {
          actual = FhirBooleanBuilder.empty();
          return;
        }
      case 'period':
        {
          period = PeriodBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ResearchStudyProgressStatusBuilder clone() => throw UnimplementedError();
  @override
  ResearchStudyProgressStatusBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? state,
    FhirBooleanBuilder? actual,
    PeriodBuilder? period,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ResearchStudyProgressStatusBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      state: state ?? this.state,
      actual: actual ?? this.actual,
      period: period ?? this.period,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! ResearchStudyProgressStatusBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      state,
      o.state,
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

/// [ResearchStudyRecruitmentBuilder]
/// Target or actual group of participants enrolled in study.
class ResearchStudyRecruitmentBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ResearchStudyRecruitmentBuilder]

  ResearchStudyRecruitmentBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.targetNumber,
    this.actualNumber,
    this.eligibility,
    this.actualGroup,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ResearchStudy.recruitment',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ResearchStudyRecruitmentBuilder.empty() =>
      ResearchStudyRecruitmentBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ResearchStudyRecruitmentBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ResearchStudy.recruitment';
    return ResearchStudyRecruitmentBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      targetNumber: JsonParser.parsePrimitive<FhirUnsignedIntBuilder>(
        json,
        'targetNumber',
        FhirUnsignedIntBuilder.fromJson,
        '$objectPath.targetNumber',
      ),
      actualNumber: JsonParser.parsePrimitive<FhirUnsignedIntBuilder>(
        json,
        'actualNumber',
        FhirUnsignedIntBuilder.fromJson,
        '$objectPath.actualNumber',
      ),
      eligibility: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'eligibility',
        ReferenceBuilder.fromJson,
        '$objectPath.eligibility',
      ),
      actualGroup: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'actualGroup',
        ReferenceBuilder.fromJson,
        '$objectPath.actualGroup',
      ),
    );
  }

  /// Deserialize [ResearchStudyRecruitmentBuilder]
  /// from a [String] or [YamlMap] object
  factory ResearchStudyRecruitmentBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ResearchStudyRecruitmentBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ResearchStudyRecruitmentBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ResearchStudyRecruitmentBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ResearchStudyRecruitmentBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ResearchStudyRecruitmentBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ResearchStudyRecruitmentBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ResearchStudyRecruitment';

  /// [targetNumber]
  /// Estimated total number of participants to be enrolled.
  FhirUnsignedIntBuilder? targetNumber;

  /// [actualNumber]
  /// Actual total number of participants enrolled in study.
  FhirUnsignedIntBuilder? actualNumber;

  /// [eligibility]
  /// Inclusion and exclusion criteria. The referenced Group Resource should
  /// have a membership element value of either 'definitional' or
  /// 'conceptual'.
  ReferenceBuilder? eligibility;

  /// [actualGroup]
  /// Group of participants who were enrolled in study. The referenced Group
  /// Resource should have a membership element value of 'enumerated'.
  ReferenceBuilder? actualGroup;

  /// Converts a [ResearchStudyRecruitmentBuilder]
  /// to [ResearchStudyRecruitment]
  @override
  ResearchStudyRecruitment build() =>
      ResearchStudyRecruitment.fromJson(toJson());

  /// Converts a [ResearchStudyRecruitmentBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('targetNumber', targetNumber);
    addField('actualNumber', actualNumber);
    addField('eligibility', eligibility);
    addField('actualGroup', actualGroup);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'targetNumber':
        {
          if (child is FhirUnsignedIntBuilder) {
            targetNumber = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirUnsignedIntBuilder.tryParse(numValue);
                if (converted != null) {
                  targetNumber = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'actualNumber':
        {
          if (child is FhirUnsignedIntBuilder) {
            actualNumber = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirUnsignedIntBuilder.tryParse(numValue);
                if (converted != null) {
                  actualNumber = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'eligibility':
        {
          if (child is ReferenceBuilder) {
            eligibility = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'actualGroup':
        {
          if (child is ReferenceBuilder) {
            actualGroup = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'targetNumber':
        return ['FhirUnsignedIntBuilder'];
      case 'actualNumber':
        return ['FhirUnsignedIntBuilder'];
      case 'eligibility':
        return ['ReferenceBuilder'];
      case 'actualGroup':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ResearchStudyRecruitmentBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'targetNumber':
        {
          targetNumber = FhirUnsignedIntBuilder.empty();
          return;
        }
      case 'actualNumber':
        {
          actualNumber = FhirUnsignedIntBuilder.empty();
          return;
        }
      case 'eligibility':
        {
          eligibility = ReferenceBuilder.empty();
          return;
        }
      case 'actualGroup':
        {
          actualGroup = ReferenceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ResearchStudyRecruitmentBuilder clone() => throw UnimplementedError();
  @override
  ResearchStudyRecruitmentBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirUnsignedIntBuilder? targetNumber,
    FhirUnsignedIntBuilder? actualNumber,
    ReferenceBuilder? eligibility,
    ReferenceBuilder? actualGroup,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ResearchStudyRecruitmentBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      targetNumber: targetNumber ?? this.targetNumber,
      actualNumber: actualNumber ?? this.actualNumber,
      eligibility: eligibility ?? this.eligibility,
      actualGroup: actualGroup ?? this.actualGroup,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! ResearchStudyRecruitmentBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      targetNumber,
      o.targetNumber,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      actualNumber,
      o.actualNumber,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      eligibility,
      o.eligibility,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      actualGroup,
      o.actualGroup,
    )) {
      return false;
    }
    return true;
  }
}

/// [ResearchStudyComparisonGroupBuilder]
/// Describes an expected event or sequence of events for one of the
/// subjects of a study. E.g. for a living subject: exposure to drug A,
/// wash-out, exposure to drug B, wash-out, follow-up. E.g. for a stability
/// study: {store sample from lot A at 25 degrees for 1 month}, {store
/// sample from lot A at 40 degrees for 1 month}.
class ResearchStudyComparisonGroupBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ResearchStudyComparisonGroupBuilder]

  ResearchStudyComparisonGroupBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.targetNumber,
    this.actualNumber,
    this.eligibility,
    this.observedGroup,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ResearchStudy.comparisonGroup',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ResearchStudyComparisonGroupBuilder.empty() =>
      ResearchStudyComparisonGroupBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ResearchStudyComparisonGroupBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ResearchStudy.comparisonGroup';
    return ResearchStudyComparisonGroupBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      targetNumber: JsonParser.parsePrimitive<FhirUnsignedIntBuilder>(
        json,
        'targetNumber',
        FhirUnsignedIntBuilder.fromJson,
        '$objectPath.targetNumber',
      ),
      actualNumber: JsonParser.parsePrimitive<FhirUnsignedIntBuilder>(
        json,
        'actualNumber',
        FhirUnsignedIntBuilder.fromJson,
        '$objectPath.actualNumber',
      ),
      eligibility: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'eligibility',
        ReferenceBuilder.fromJson,
        '$objectPath.eligibility',
      ),
      observedGroup: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'observedGroup',
        ReferenceBuilder.fromJson,
        '$objectPath.observedGroup',
      ),
    );
  }

  /// Deserialize [ResearchStudyComparisonGroupBuilder]
  /// from a [String] or [YamlMap] object
  factory ResearchStudyComparisonGroupBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ResearchStudyComparisonGroupBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ResearchStudyComparisonGroupBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ResearchStudyComparisonGroupBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ResearchStudyComparisonGroupBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ResearchStudyComparisonGroupBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ResearchStudyComparisonGroupBuilder.fromJson(json);
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
  FhirUnsignedIntBuilder? targetNumber;

  /// [actualNumber]
  /// Actual total number of participants enrolled in the comparison group.
  FhirUnsignedIntBuilder? actualNumber;

  /// [eligibility]
  /// Inclusion and exclusion criteria for the comparison group as a subset
  /// of the eligibility for the overall study. The referenced Group Resource
  /// should have a membership element value of either 'definitional' or
  /// 'conceptual'.
  ReferenceBuilder? eligibility;

  /// [observedGroup]
  /// Group of participants who were enrolled in the comparison group as a
  /// subset of those enrolled in the overall study. The referenced Group
  /// Resource should have a membership element value of 'enumerated'.
  ReferenceBuilder? observedGroup;

  /// Converts a [ResearchStudyComparisonGroupBuilder]
  /// to [ResearchStudyComparisonGroup]
  @override
  ResearchStudyComparisonGroup build() =>
      ResearchStudyComparisonGroup.fromJson(toJson());

  /// Converts a [ResearchStudyComparisonGroupBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('targetNumber', targetNumber);
    addField('actualNumber', actualNumber);
    addField('eligibility', eligibility);
    addField('observedGroup', observedGroup);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'targetNumber':
        {
          if (child is FhirUnsignedIntBuilder) {
            targetNumber = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirUnsignedIntBuilder.tryParse(numValue);
                if (converted != null) {
                  targetNumber = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'actualNumber':
        {
          if (child is FhirUnsignedIntBuilder) {
            actualNumber = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirUnsignedIntBuilder.tryParse(numValue);
                if (converted != null) {
                  actualNumber = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'eligibility':
        {
          if (child is ReferenceBuilder) {
            eligibility = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'observedGroup':
        {
          if (child is ReferenceBuilder) {
            observedGroup = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'targetNumber':
        return ['FhirUnsignedIntBuilder'];
      case 'actualNumber':
        return ['FhirUnsignedIntBuilder'];
      case 'eligibility':
        return ['ReferenceBuilder'];
      case 'observedGroup':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ResearchStudyComparisonGroupBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'targetNumber':
        {
          targetNumber = FhirUnsignedIntBuilder.empty();
          return;
        }
      case 'actualNumber':
        {
          actualNumber = FhirUnsignedIntBuilder.empty();
          return;
        }
      case 'eligibility':
        {
          eligibility = ReferenceBuilder.empty();
          return;
        }
      case 'observedGroup':
        {
          observedGroup = ReferenceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ResearchStudyComparisonGroupBuilder clone() => throw UnimplementedError();
  @override
  ResearchStudyComparisonGroupBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirUnsignedIntBuilder? targetNumber,
    FhirUnsignedIntBuilder? actualNumber,
    ReferenceBuilder? eligibility,
    ReferenceBuilder? observedGroup,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ResearchStudyComparisonGroupBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      targetNumber: targetNumber ?? this.targetNumber,
      actualNumber: actualNumber ?? this.actualNumber,
      eligibility: eligibility ?? this.eligibility,
      observedGroup: observedGroup ?? this.observedGroup,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! ResearchStudyComparisonGroupBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      targetNumber,
      o.targetNumber,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      actualNumber,
      o.actualNumber,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      eligibility,
      o.eligibility,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      observedGroup,
      o.observedGroup,
    )) {
      return false;
    }
    return true;
  }
}

/// [ResearchStudyObjectiveBuilder]
/// A goal that the study is aiming to achieve in terms of a scientific
/// question to be answered by the analysis of data collected during the
/// study.
class ResearchStudyObjectiveBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ResearchStudyObjectiveBuilder]

  ResearchStudyObjectiveBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.name,
    this.type,
    this.description,
    this.outcomeMeasure,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ResearchStudy.objective',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ResearchStudyObjectiveBuilder.empty() =>
      ResearchStudyObjectiveBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ResearchStudyObjectiveBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ResearchStudy.objective';
    return ResearchStudyObjectiveBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      name: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'name',
        FhirStringBuilder.fromJson,
        '$objectPath.name',
      ),
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      description: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'description',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.description',
      ),
      outcomeMeasure: (json['outcomeMeasure'] as List<dynamic>?)
          ?.map<ResearchStudyOutcomeMeasureBuilder>(
            (v) => ResearchStudyOutcomeMeasureBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.outcomeMeasure',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ResearchStudyObjectiveBuilder]
  /// from a [String] or [YamlMap] object
  factory ResearchStudyObjectiveBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ResearchStudyObjectiveBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ResearchStudyObjectiveBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ResearchStudyObjectiveBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ResearchStudyObjectiveBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ResearchStudyObjectiveBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ResearchStudyObjectiveBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ResearchStudyObjective';

  /// [name]
  /// Unique, human-readable label for this objective of the study.
  FhirStringBuilder? name;

  /// [type]
  /// The kind of study objective.
  CodeableConceptBuilder? type;

  /// [description]
  /// Free text description of the objective of the study. This is what the
  /// study is trying to achieve rather than how it is going to achieve it
  /// (see ResearchStudy.description).
  FhirMarkdownBuilder? description;

  /// [outcomeMeasure]
  /// An "outcome measure", "endpoint", "effect measure" or "measure of
  /// effect" is a specific measurement or observation used to quantify the
  /// effect of experimental variables on the participants in a study, or for
  /// observational studies, to describe patterns of diseases or traits or
  /// associations with exposures, risk factors or treatment.
  List<ResearchStudyOutcomeMeasureBuilder>? outcomeMeasure;

  /// Converts a [ResearchStudyObjectiveBuilder]
  /// to [ResearchStudyObjective]
  @override
  ResearchStudyObjective build() => ResearchStudyObjective.fromJson(toJson());

  /// Converts a [ResearchStudyObjectiveBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('name', name);
    addField('type', type);
    addField('description', description);
    addField('outcomeMeasure', outcomeMeasure);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'name':
        {
          if (child is FhirStringBuilder) {
            name = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                name = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'description':
        {
          if (child is FhirMarkdownBuilder) {
            description = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
              if (converted != null) {
                description = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'outcomeMeasure':
        {
          if (child is List<ResearchStudyOutcomeMeasureBuilder>) {
            // Replace or create new list
            outcomeMeasure = child;
            return;
          } else if (child is ResearchStudyOutcomeMeasureBuilder) {
            // Add single element to existing list or create new list
            outcomeMeasure = [
              ...(outcomeMeasure ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'name':
        return ['FhirStringBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'description':
        return ['FhirMarkdownBuilder'];
      case 'outcomeMeasure':
        return ['ResearchStudyOutcomeMeasureBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ResearchStudyObjectiveBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'name':
        {
          name = FhirStringBuilder.empty();
          return;
        }
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'description':
        {
          description = FhirMarkdownBuilder.empty();
          return;
        }
      case 'outcomeMeasure':
        {
          outcomeMeasure = <ResearchStudyOutcomeMeasureBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ResearchStudyObjectiveBuilder clone() => throw UnimplementedError();
  @override
  ResearchStudyObjectiveBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? name,
    CodeableConceptBuilder? type,
    FhirMarkdownBuilder? description,
    List<ResearchStudyOutcomeMeasureBuilder>? outcomeMeasure,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ResearchStudyObjectiveBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      type: type ?? this.type,
      description: description ?? this.description,
      outcomeMeasure: outcomeMeasure ?? this.outcomeMeasure,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! ResearchStudyObjectiveBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
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
    if (!listEquals<ResearchStudyOutcomeMeasureBuilder>(
      outcomeMeasure,
      o.outcomeMeasure,
    )) {
      return false;
    }
    return true;
  }
}

/// [ResearchStudyOutcomeMeasureBuilder]
/// An "outcome measure", "endpoint", "effect measure" or "measure of
/// effect" is a specific measurement or observation used to quantify the
/// effect of experimental variables on the participants in a study, or for
/// observational studies, to describe patterns of diseases or traits or
/// associations with exposures, risk factors or treatment.
class ResearchStudyOutcomeMeasureBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ResearchStudyOutcomeMeasureBuilder]

  ResearchStudyOutcomeMeasureBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.name,
    this.type,
    this.description,
    this.endpoint,
    this.population,
    this.intervention,
    this.comparator,
    this.summaryMeasure,
    this.eventHandling,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ResearchStudy.objective.outcomeMeasure',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ResearchStudyOutcomeMeasureBuilder.empty() =>
      ResearchStudyOutcomeMeasureBuilder(
        endpoint: ReferenceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ResearchStudyOutcomeMeasureBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ResearchStudy.objective.outcomeMeasure';
    return ResearchStudyOutcomeMeasureBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      name: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'name',
        FhirStringBuilder.fromJson,
        '$objectPath.name',
      ),
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      description: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'description',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.description',
      ),
      endpoint: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'endpoint',
        ReferenceBuilder.fromJson,
        '$objectPath.endpoint',
      ),
      population: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'population',
        ReferenceBuilder.fromJson,
        '$objectPath.population',
      ),
      intervention: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'intervention',
        ReferenceBuilder.fromJson,
        '$objectPath.intervention',
      ),
      comparator: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'comparator',
        ReferenceBuilder.fromJson,
        '$objectPath.comparator',
      ),
      summaryMeasure: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'summaryMeasure',
        CodeableConceptBuilder.fromJson,
        '$objectPath.summaryMeasure',
      ),
      eventHandling: (json['eventHandling'] as List<dynamic>?)
          ?.map<ResearchStudyEventHandlingBuilder>(
            (v) => ResearchStudyEventHandlingBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.eventHandling',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ResearchStudyOutcomeMeasureBuilder]
  /// from a [String] or [YamlMap] object
  factory ResearchStudyOutcomeMeasureBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ResearchStudyOutcomeMeasureBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ResearchStudyOutcomeMeasureBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ResearchStudyOutcomeMeasureBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ResearchStudyOutcomeMeasureBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ResearchStudyOutcomeMeasureBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ResearchStudyOutcomeMeasureBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ResearchStudyOutcomeMeasure';

  /// [name]
  /// Label for the outcome measure.
  FhirStringBuilder? name;

  /// [type]
  /// The kind of outcome measure.
  CodeableConceptBuilder? type;

  /// [description]
  /// Description of the outcome measure.
  FhirMarkdownBuilder? description;

  /// [endpoint]
  /// Definition of the outcome measure.
  ReferenceBuilder? endpoint;

  /// [population]
  /// Population for this estimand.
  ReferenceBuilder? population;

  /// [intervention]
  /// Comparison group of interest.
  ReferenceBuilder? intervention;

  /// [comparator]
  /// Comparison group for comparison.
  ReferenceBuilder? comparator;

  /// [summaryMeasure]
  /// Statistical measure for treatment effect estimate.
  CodeableConceptBuilder? summaryMeasure;

  /// [eventHandling]
  /// Handling of intercurrent event.
  List<ResearchStudyEventHandlingBuilder>? eventHandling;

  /// Converts a [ResearchStudyOutcomeMeasureBuilder]
  /// to [ResearchStudyOutcomeMeasure]
  @override
  ResearchStudyOutcomeMeasure build() =>
      ResearchStudyOutcomeMeasure.fromJson(toJson());

  /// Converts a [ResearchStudyOutcomeMeasureBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('name', name);
    addField('type', type);
    addField('description', description);
    addField('endpoint', endpoint);
    addField('population', population);
    addField('intervention', intervention);
    addField('comparator', comparator);
    addField('summaryMeasure', summaryMeasure);
    addField('eventHandling', eventHandling);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (endpoint != null) {
          fields.add(endpoint!);
        }
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'name':
        {
          if (child is FhirStringBuilder) {
            name = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                name = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'description':
        {
          if (child is FhirMarkdownBuilder) {
            description = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
              if (converted != null) {
                description = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'endpoint':
        {
          if (child is ReferenceBuilder) {
            endpoint = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'population':
        {
          if (child is ReferenceBuilder) {
            population = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'intervention':
        {
          if (child is ReferenceBuilder) {
            intervention = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'comparator':
        {
          if (child is ReferenceBuilder) {
            comparator = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'summaryMeasure':
        {
          if (child is CodeableConceptBuilder) {
            summaryMeasure = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'eventHandling':
        {
          if (child is List<ResearchStudyEventHandlingBuilder>) {
            // Replace or create new list
            eventHandling = child;
            return;
          } else if (child is ResearchStudyEventHandlingBuilder) {
            // Add single element to existing list or create new list
            eventHandling = [
              ...(eventHandling ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'name':
        return ['FhirStringBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'description':
        return ['FhirMarkdownBuilder'];
      case 'endpoint':
        return ['ReferenceBuilder'];
      case 'population':
        return ['ReferenceBuilder'];
      case 'intervention':
        return ['ReferenceBuilder'];
      case 'comparator':
        return ['ReferenceBuilder'];
      case 'summaryMeasure':
        return ['CodeableConceptBuilder'];
      case 'eventHandling':
        return ['ResearchStudyEventHandlingBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ResearchStudyOutcomeMeasureBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'name':
        {
          name = FhirStringBuilder.empty();
          return;
        }
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'description':
        {
          description = FhirMarkdownBuilder.empty();
          return;
        }
      case 'endpoint':
        {
          endpoint = ReferenceBuilder.empty();
          return;
        }
      case 'population':
        {
          population = ReferenceBuilder.empty();
          return;
        }
      case 'intervention':
        {
          intervention = ReferenceBuilder.empty();
          return;
        }
      case 'comparator':
        {
          comparator = ReferenceBuilder.empty();
          return;
        }
      case 'summaryMeasure':
        {
          summaryMeasure = CodeableConceptBuilder.empty();
          return;
        }
      case 'eventHandling':
        {
          eventHandling = <ResearchStudyEventHandlingBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ResearchStudyOutcomeMeasureBuilder clone() => throw UnimplementedError();
  @override
  ResearchStudyOutcomeMeasureBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? name,
    CodeableConceptBuilder? type,
    FhirMarkdownBuilder? description,
    ReferenceBuilder? endpoint,
    ReferenceBuilder? population,
    ReferenceBuilder? intervention,
    ReferenceBuilder? comparator,
    CodeableConceptBuilder? summaryMeasure,
    List<ResearchStudyEventHandlingBuilder>? eventHandling,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ResearchStudyOutcomeMeasureBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      type: type ?? this.type,
      description: description ?? this.description,
      endpoint: endpoint ?? this.endpoint,
      population: population ?? this.population,
      intervention: intervention ?? this.intervention,
      comparator: comparator ?? this.comparator,
      summaryMeasure: summaryMeasure ?? this.summaryMeasure,
      eventHandling: eventHandling ?? this.eventHandling,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! ResearchStudyOutcomeMeasureBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
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
    if (!equalsDeepWithNull(
      endpoint,
      o.endpoint,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      population,
      o.population,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      intervention,
      o.intervention,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      comparator,
      o.comparator,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      summaryMeasure,
      o.summaryMeasure,
    )) {
      return false;
    }
    if (!listEquals<ResearchStudyEventHandlingBuilder>(
      eventHandling,
      o.eventHandling,
    )) {
      return false;
    }
    return true;
  }
}

/// [ResearchStudyEventHandlingBuilder]
/// Handling of intercurrent event.
class ResearchStudyEventHandlingBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ResearchStudyEventHandlingBuilder]

  ResearchStudyEventHandlingBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.event,
    this.group,
    this.handling,
    this.description,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ResearchStudy.objective.outcomeMeasure.eventHandling',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ResearchStudyEventHandlingBuilder.empty() =>
      ResearchStudyEventHandlingBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ResearchStudyEventHandlingBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ResearchStudy.objective.outcomeMeasure.eventHandling';
    return ResearchStudyEventHandlingBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      event: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'event',
        CodeableConceptBuilder.fromJson,
        '$objectPath.event',
      ),
      group: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'group',
        CodeableConceptBuilder.fromJson,
        '$objectPath.group',
      ),
      handling: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'handling',
        CodeableConceptBuilder.fromJson,
        '$objectPath.handling',
      ),
      description: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'description',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.description',
      ),
    );
  }

  /// Deserialize [ResearchStudyEventHandlingBuilder]
  /// from a [String] or [YamlMap] object
  factory ResearchStudyEventHandlingBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ResearchStudyEventHandlingBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ResearchStudyEventHandlingBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ResearchStudyEventHandlingBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ResearchStudyEventHandlingBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ResearchStudyEventHandlingBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ResearchStudyEventHandlingBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ResearchStudyEventHandling';

  /// [event]
  /// The event.
  CodeableConceptBuilder? event;

  /// [group]
  /// The group that is affected by this event handling.
  CodeableConceptBuilder? group;

  /// [handling]
  /// How the data is handled.
  CodeableConceptBuilder? handling;

  /// [description]
  /// Text summary of event handling.
  FhirMarkdownBuilder? description;

  /// Converts a [ResearchStudyEventHandlingBuilder]
  /// to [ResearchStudyEventHandling]
  @override
  ResearchStudyEventHandling build() =>
      ResearchStudyEventHandling.fromJson(toJson());

  /// Converts a [ResearchStudyEventHandlingBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('event', event);
    addField('group', group);
    addField('handling', handling);
    addField('description', description);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'event':
        {
          if (child is CodeableConceptBuilder) {
            event = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'group':
        {
          if (child is CodeableConceptBuilder) {
            group = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'handling':
        {
          if (child is CodeableConceptBuilder) {
            handling = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'description':
        {
          if (child is FhirMarkdownBuilder) {
            description = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
              if (converted != null) {
                description = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'event':
        return ['CodeableConceptBuilder'];
      case 'group':
        return ['CodeableConceptBuilder'];
      case 'handling':
        return ['CodeableConceptBuilder'];
      case 'description':
        return ['FhirMarkdownBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ResearchStudyEventHandlingBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'event':
        {
          event = CodeableConceptBuilder.empty();
          return;
        }
      case 'group':
        {
          group = CodeableConceptBuilder.empty();
          return;
        }
      case 'handling':
        {
          handling = CodeableConceptBuilder.empty();
          return;
        }
      case 'description':
        {
          description = FhirMarkdownBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ResearchStudyEventHandlingBuilder clone() => throw UnimplementedError();
  @override
  ResearchStudyEventHandlingBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? event,
    CodeableConceptBuilder? group,
    CodeableConceptBuilder? handling,
    FhirMarkdownBuilder? description,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ResearchStudyEventHandlingBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      event: event ?? this.event,
      group: group ?? this.group,
      handling: handling ?? this.handling,
      description: description ?? this.description,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! ResearchStudyEventHandlingBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      event,
      o.event,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      group,
      o.group,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      handling,
      o.handling,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    return true;
  }
}
