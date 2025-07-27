import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'measure.g.dart';

/// [Measure]
/// The Measure resource provides the definition of a quality measure.
class Measure extends MetadataResource {
  /// Primary constructor for
  /// [Measure]

  const Measure({
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
    VersionAlgorithmXMeasure? versionAlgorithmX,
    FhirString? versionAlgorithmString,
    Coding? versionAlgorithmCoding,
    this.name,
    this.title,
    this.subtitle,
    required super.status,
    super.experimental,
    SubjectXMeasure? subjectX,
    CodeableConcept? subjectCodeableConcept,
    Reference? subjectReference,
    this.basis,
    super.date,
    super.publisher,
    super.contact,
    super.description,
    super.useContext,
    super.jurisdiction,
    this.purpose,
    super.usage,
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
    this.library_,
    this.disclaimer,
    this.scoring,
    this.scoringUnit,
    this.compositeScoring,
    this.type,
    this.riskAdjustment,
    this.rateAggregation,
    this.rationale,
    this.clinicalRecommendationStatement,
    this.improvementNotation,
    this.term,
    this.guidance,
    this.group,
    this.supplementalData,
  })  : versionAlgorithmX = versionAlgorithmX ??
            versionAlgorithmString ??
            versionAlgorithmCoding,
        subjectX = subjectX ?? subjectCodeableConcept ?? subjectReference,
        super(
          resourceType: R5ResourceType.Measure,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Measure.fromJson(
    Map<String, dynamic> json,
  ) {
    return Measure(
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
      versionAlgorithmX: JsonParser.parsePolymorphic<VersionAlgorithmXMeasure>(
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
      subtitle: JsonParser.parsePrimitive<FhirString>(
        json,
        'subtitle',
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
      subjectX: JsonParser.parsePolymorphic<SubjectXMeasure>(
        json,
        {
          'subjectCodeableConcept': CodeableConcept.fromJson,
          'subjectReference': Reference.fromJson,
        },
      ),
      basis: JsonParser.parsePrimitive<FHIRTypes>(
        json,
        'basis',
        FHIRTypes.fromJson,
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
      usage: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'usage',
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
      library_: JsonParser.parsePrimitiveList<FhirCanonical>(
        json,
        'library',
        FhirCanonical.fromJson,
      ),
      disclaimer: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'disclaimer',
        FhirMarkdown.fromJson,
      ),
      scoring: JsonParser.parseObject<CodeableConcept>(
        json,
        'scoring',
        CodeableConcept.fromJson,
      ),
      scoringUnit: JsonParser.parseObject<CodeableConcept>(
        json,
        'scoringUnit',
        CodeableConcept.fromJson,
      ),
      compositeScoring: JsonParser.parseObject<CodeableConcept>(
        json,
        'compositeScoring',
        CodeableConcept.fromJson,
      ),
      type: (json['type'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      riskAdjustment: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'riskAdjustment',
        FhirMarkdown.fromJson,
      ),
      rateAggregation: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'rateAggregation',
        FhirMarkdown.fromJson,
      ),
      rationale: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'rationale',
        FhirMarkdown.fromJson,
      ),
      clinicalRecommendationStatement: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'clinicalRecommendationStatement',
        FhirMarkdown.fromJson,
      ),
      improvementNotation: JsonParser.parseObject<CodeableConcept>(
        json,
        'improvementNotation',
        CodeableConcept.fromJson,
      ),
      term: (json['term'] as List<dynamic>?)
          ?.map<MeasureTerm>(
            (v) => MeasureTerm.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      guidance: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'guidance',
        FhirMarkdown.fromJson,
      ),
      group: (json['group'] as List<dynamic>?)
          ?.map<MeasureGroup>(
            (v) => MeasureGroup.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      supplementalData: (json['supplementalData'] as List<dynamic>?)
          ?.map<MeasureSupplementalData>(
            (v) => MeasureSupplementalData.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [Measure]
  /// from a [String] or [YamlMap] object
  factory Measure.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Measure.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Measure.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Measure '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Measure]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Measure.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return Measure.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Measure';

  /// [identifier]
  /// A formal identifier that is used to identify this measure when it is
  /// represented in other formats, or referenced in a specification, model,
  /// design or an instance.
  final List<Identifier>? identifier;

  /// [versionAlgorithmX]
  /// Indicates the mechanism used to compare versions to determine which is
  /// more current.
  final VersionAlgorithmXMeasure? versionAlgorithmX;

  /// Getter for [versionAlgorithmString] as a FhirString
  FhirString? get versionAlgorithmString =>
      versionAlgorithmX?.isAs<FhirString>();

  /// Getter for [versionAlgorithmCoding] as a Coding
  Coding? get versionAlgorithmCoding => versionAlgorithmX?.isAs<Coding>();

  /// [name]
  /// A natural language name identifying the measure. This name should be
  /// usable as an identifier for the module by machine processing
  /// applications such as code generation.
  final FhirString? name;

  /// [title]
  /// A short, descriptive, user-friendly title for the measure.
  final FhirString? title;

  /// [subtitle]
  /// An explanatory or alternate title for the measure giving additional
  /// information about its content.
  final FhirString? subtitle;

  /// [subjectX]
  /// The intended subjects for the measure. If this element is not provided,
  /// a Patient subject is assumed, but the subject of the measure can be
  /// anything.
  final SubjectXMeasure? subjectX;

  /// Getter for [subjectCodeableConcept] as a CodeableConcept
  CodeableConcept? get subjectCodeableConcept =>
      subjectX?.isAs<CodeableConcept>();

  /// Getter for [subjectReference] as a Reference
  Reference? get subjectReference => subjectX?.isAs<Reference>();

  /// [basis]
  /// The population basis specifies the type of elements in the population.
  /// For a subject-based measure, this is boolean (because the subject and
  /// the population basis are the same, and the population criteria define
  /// yes/no values for each individual in the population). For measures that
  /// have a population basis that is different than the subject, this
  /// element specifies the type of the population basis. For example, an
  /// encounter-based measure has a subject of Patient and a population basis
  /// of Encounter, and the population criteria all return lists of
  /// Encounters.
  final FHIRTypes? basis;

  /// [purpose]
  /// Explanation of why this measure is needed and why it has been designed
  /// as it has.
  final FhirMarkdown? purpose;

  /// [copyright]
  /// A copyright statement relating to the measure and/or its contents.
  /// Copyright statements are generally legal restrictions on the use and
  /// publishing of the measure.
  final FhirMarkdown? copyright;

  /// [copyrightLabel]
  /// A short string (<50 characters), suitable for inclusion in a page
  /// footer that identifies the copyright holder, effective period, and
  /// optionally whether rights are resctricted. (e.g. 'All rights reserved',
  /// 'Some rights reserved').
  final FhirString? copyrightLabel;

  /// [library_]
  /// A reference to a Library resource containing the formal logic used by
  /// the measure.
  final List<FhirCanonical>? library_;

  /// [disclaimer]
  /// Notices and disclaimers regarding the use of the measure or related to
  /// intellectual property (such as code systems) referenced by the measure.
  final FhirMarkdown? disclaimer;

  /// [scoring]
  /// Indicates how the calculation is performed for the measure, including
  /// proportion, ratio, continuous-variable, and cohort. The value set is
  /// extensible, allowing additional measure scoring types to be
  /// represented.
  final CodeableConcept? scoring;

  /// [scoringUnit]
  /// Defines the expected units of measure for the measure score. This
  /// element SHOULD be specified as a UCUM unit.
  final CodeableConcept? scoringUnit;

  /// [compositeScoring]
  /// If this is a composite measure, the scoring method used to combine the
  /// component measures to determine the composite score.
  final CodeableConcept? compositeScoring;

  /// [type]
  /// Indicates whether the measure is used to examine a process, an outcome
  /// over time, a patient-reported outcome, or a structure measure such as
  /// utilization.
  final List<CodeableConcept>? type;

  /// [riskAdjustment]
  /// A description of the risk adjustment factors that may impact the
  /// resulting score for the measure and how they may be accounted for when
  /// computing and reporting measure results.
  final FhirMarkdown? riskAdjustment;

  /// [rateAggregation]
  /// Describes how to combine the information calculated, based on logic in
  /// each of several populations, into one summarized result.
  final FhirMarkdown? rateAggregation;

  /// [rationale]
  /// Provides a succinct statement of the need for the measure. Usually
  /// includes statements pertaining to importance criterion: impact, gap in
  /// care, and evidence.
  final FhirMarkdown? rationale;

  /// [clinicalRecommendationStatement]
  /// Provides a summary of relevant clinical guidelines or other clinical
  /// recommendations supporting the measure.
  final FhirMarkdown? clinicalRecommendationStatement;

  /// [improvementNotation]
  /// Information on whether an increase or decrease in score is the
  /// preferred result (e.g., a higher score indicates better quality OR a
  /// lower score indicates better quality OR quality is within a range).
  final CodeableConcept? improvementNotation;

  /// [term]
  /// Provides a description of an individual term used within the measure.
  final List<MeasureTerm>? term;

  /// [guidance]
  /// Additional guidance for the measure including how it can be used in a
  /// clinical context, and the intent of the measure.
  final FhirMarkdown? guidance;

  /// [group]
  /// A group of population criteria for the measure.
  final List<MeasureGroup>? group;

  /// [supplementalData]
  /// The supplemental data criteria for the measure report, specified as
  /// either the name of a valid CQL expression within a referenced library,
  /// or a valid FHIR Resource Path.
  final List<MeasureSupplementalData>? supplementalData;
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
      'subtitle',
      subtitle,
    );
    addField(
      'status',
      status,
    );
    addField(
      'experimental',
      experimental,
    );
    if (subjectX != null) {
      final fhirType = subjectX!.fhirType;
      addField(
        'subject${fhirType.capitalize()}',
        subjectX,
      );
    }

    addField(
      'basis',
      basis,
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
      'usage',
      usage,
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
      'library',
      library_,
    );
    addField(
      'disclaimer',
      disclaimer,
    );
    addField(
      'scoring',
      scoring,
    );
    addField(
      'scoringUnit',
      scoringUnit,
    );
    addField(
      'compositeScoring',
      compositeScoring,
    );
    addField(
      'type',
      type,
    );
    addField(
      'riskAdjustment',
      riskAdjustment,
    );
    addField(
      'rateAggregation',
      rateAggregation,
    );
    addField(
      'rationale',
      rationale,
    );
    addField(
      'clinicalRecommendationStatement',
      clinicalRecommendationStatement,
    );
    addField(
      'improvementNotation',
      improvementNotation,
    );
    addField(
      'term',
      term,
    );
    addField(
      'guidance',
      guidance,
    );
    addField(
      'group',
      group,
    );
    addField(
      'supplementalData',
      supplementalData,
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
      'subtitle',
      'status',
      'experimental',
      'subjectX',
      'basis',
      'date',
      'publisher',
      'contact',
      'description',
      'useContext',
      'jurisdiction',
      'purpose',
      'usage',
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
      'library',
      'disclaimer',
      'scoring',
      'scoringUnit',
      'compositeScoring',
      'type',
      'riskAdjustment',
      'rateAggregation',
      'rationale',
      'clinicalRecommendationStatement',
      'improvementNotation',
      'term',
      'guidance',
      'group',
      'supplementalData',
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
      case 'subtitle':
        if (subtitle != null) {
          fields.add(subtitle!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'experimental':
        if (experimental != null) {
          fields.add(experimental!);
        }
      case 'subject':
        fields.add(subjectX!);
      case 'subjectX':
        fields.add(subjectX!);
      case 'subjectCodeableConcept':
        if (subjectX is CodeableConcept) {
          fields.add(subjectX!);
        }
      case 'subjectReference':
        if (subjectX is Reference) {
          fields.add(subjectX!);
        }
      case 'basis':
        if (basis != null) {
          fields.add(basis!);
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
      case 'usage':
        if (usage != null) {
          fields.add(usage!);
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
      case 'library':
        if (library_ != null) {
          fields.addAll(library_!);
        }
      case 'disclaimer':
        if (disclaimer != null) {
          fields.add(disclaimer!);
        }
      case 'scoring':
        if (scoring != null) {
          fields.add(scoring!);
        }
      case 'scoringUnit':
        if (scoringUnit != null) {
          fields.add(scoringUnit!);
        }
      case 'compositeScoring':
        if (compositeScoring != null) {
          fields.add(compositeScoring!);
        }
      case 'type':
        if (type != null) {
          fields.addAll(type!);
        }
      case 'riskAdjustment':
        if (riskAdjustment != null) {
          fields.add(riskAdjustment!);
        }
      case 'rateAggregation':
        if (rateAggregation != null) {
          fields.add(rateAggregation!);
        }
      case 'rationale':
        if (rationale != null) {
          fields.add(rationale!);
        }
      case 'clinicalRecommendationStatement':
        if (clinicalRecommendationStatement != null) {
          fields.add(clinicalRecommendationStatement!);
        }
      case 'improvementNotation':
        if (improvementNotation != null) {
          fields.add(improvementNotation!);
        }
      case 'term':
        if (term != null) {
          fields.addAll(term!);
        }
      case 'guidance':
        if (guidance != null) {
          fields.add(guidance!);
        }
      case 'group':
        if (group != null) {
          fields.addAll(group!);
        }
      case 'supplementalData':
        if (supplementalData != null) {
          fields.addAll(supplementalData!);
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
  Measure clone() => copyWith();

  /// Copy function for [Measure]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MeasureCopyWith<Measure> get copyWith => _$MeasureCopyWithImpl<Measure>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Measure) {
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
      subtitle,
      o.subtitle,
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
      subjectX,
      o.subjectX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      basis,
      o.basis,
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
      usage,
      o.usage,
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
    if (!listEquals<FhirCanonical>(
      library_,
      o.library_,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      disclaimer,
      o.disclaimer,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      scoring,
      o.scoring,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      scoringUnit,
      o.scoringUnit,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      compositeScoring,
      o.compositeScoring,
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
      riskAdjustment,
      o.riskAdjustment,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      rateAggregation,
      o.rateAggregation,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      rationale,
      o.rationale,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      clinicalRecommendationStatement,
      o.clinicalRecommendationStatement,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      improvementNotation,
      o.improvementNotation,
    )) {
      return false;
    }
    if (!listEquals<MeasureTerm>(
      term,
      o.term,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      guidance,
      o.guidance,
    )) {
      return false;
    }
    if (!listEquals<MeasureGroup>(
      group,
      o.group,
    )) {
      return false;
    }
    if (!listEquals<MeasureSupplementalData>(
      supplementalData,
      o.supplementalData,
    )) {
      return false;
    }
    return true;
  }
}

/// [MeasureTerm]
/// Provides a description of an individual term used within the measure.
class MeasureTerm extends BackboneElement {
  /// Primary constructor for
  /// [MeasureTerm]

  const MeasureTerm({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.definition,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MeasureTerm.fromJson(
    Map<String, dynamic> json,
  ) {
    return MeasureTerm(
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
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
      ),
      definition: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'definition',
        FhirMarkdown.fromJson,
      ),
    );
  }

  /// Deserialize [MeasureTerm]
  /// from a [String] or [YamlMap] object
  factory MeasureTerm.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MeasureTerm.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MeasureTerm.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MeasureTerm '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MeasureTerm]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MeasureTerm.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MeasureTerm.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MeasureTerm';

  /// [code]
  /// A codeable representation of the defined term.
  final CodeableConcept? code;

  /// [definition]
  /// Provides a definition for the term as used within the measure.
  final FhirMarkdown? definition;
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
      'code',
      code,
    );
    addField(
      'definition',
      definition,
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
      'code',
      'definition',
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
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'definition':
        if (definition != null) {
          fields.add(definition!);
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
  MeasureTerm clone() => copyWith();

  /// Copy function for [MeasureTerm]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MeasureTermCopyWith<MeasureTerm> get copyWith =>
      _$MeasureTermCopyWithImpl<MeasureTerm>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MeasureTerm) {
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
      code,
      o.code,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      definition,
      o.definition,
    )) {
      return false;
    }
    return true;
  }
}

/// [MeasureGroup]
/// A group of population criteria for the measure.
class MeasureGroup extends BackboneElement {
  /// Primary constructor for
  /// [MeasureGroup]

  const MeasureGroup({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.linkId,
    this.code,
    this.description,
    this.type,
    SubjectXMeasureGroup? subjectX,
    CodeableConcept? subjectCodeableConcept,
    Reference? subjectReference,
    this.basis,
    this.scoring,
    this.scoringUnit,
    this.rateAggregation,
    this.improvementNotation,
    this.library_,
    this.population,
    this.stratifier,
    super.disallowExtensions,
  })  : subjectX = subjectX ?? subjectCodeableConcept ?? subjectReference,
        super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MeasureGroup.fromJson(
    Map<String, dynamic> json,
  ) {
    return MeasureGroup(
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
      linkId: JsonParser.parsePrimitive<FhirString>(
        json,
        'linkId',
        FhirString.fromJson,
      ),
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
      ),
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
      ),
      type: (json['type'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      subjectX: JsonParser.parsePolymorphic<SubjectXMeasureGroup>(
        json,
        {
          'subjectCodeableConcept': CodeableConcept.fromJson,
          'subjectReference': Reference.fromJson,
        },
      ),
      basis: JsonParser.parsePrimitive<FHIRTypes>(
        json,
        'basis',
        FHIRTypes.fromJson,
      ),
      scoring: JsonParser.parseObject<CodeableConcept>(
        json,
        'scoring',
        CodeableConcept.fromJson,
      ),
      scoringUnit: JsonParser.parseObject<CodeableConcept>(
        json,
        'scoringUnit',
        CodeableConcept.fromJson,
      ),
      rateAggregation: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'rateAggregation',
        FhirMarkdown.fromJson,
      ),
      improvementNotation: JsonParser.parseObject<CodeableConcept>(
        json,
        'improvementNotation',
        CodeableConcept.fromJson,
      ),
      library_: JsonParser.parsePrimitiveList<FhirCanonical>(
        json,
        'library',
        FhirCanonical.fromJson,
      ),
      population: (json['population'] as List<dynamic>?)
          ?.map<MeasurePopulation>(
            (v) => MeasurePopulation.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      stratifier: (json['stratifier'] as List<dynamic>?)
          ?.map<MeasureStratifier>(
            (v) => MeasureStratifier.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [MeasureGroup]
  /// from a [String] or [YamlMap] object
  factory MeasureGroup.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MeasureGroup.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MeasureGroup.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MeasureGroup '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MeasureGroup]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MeasureGroup.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MeasureGroup.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MeasureGroup';

  /// [linkId]
  /// An identifier that is unique within the Measure allowing linkage to the
  /// equivalent item in a MeasureReport resource.
  final FhirString? linkId;

  /// [code]
  /// Indicates a meaning for the group. This can be as simple as a unique
  /// identifier, or it can establish meaning in a broader context by drawing
  /// from a terminology, allowing groups to be correlated across measures.
  final CodeableConcept? code;

  /// [description]
  /// The human readable description of this population group.
  final FhirMarkdown? description;

  /// [type]
  /// Indicates whether the measure is used to examine a process, an outcome
  /// over time, a patient-reported outcome, or a structure measure such as
  /// utilization.
  final List<CodeableConcept>? type;

  /// [subjectX]
  /// The intended subjects for the measure. If this element is not provided,
  /// a Patient subject is assumed, but the subject of the measure can be
  /// anything.
  final SubjectXMeasureGroup? subjectX;

  /// Getter for [subjectCodeableConcept] as a CodeableConcept
  CodeableConcept? get subjectCodeableConcept =>
      subjectX?.isAs<CodeableConcept>();

  /// Getter for [subjectReference] as a Reference
  Reference? get subjectReference => subjectX?.isAs<Reference>();

  /// [basis]
  /// The population basis specifies the type of elements in the population.
  /// For a subject-based measure, this is boolean (because the subject and
  /// the population basis are the same, and the population criteria define
  /// yes/no values for each individual in the population). For measures that
  /// have a population basis that is different than the subject, this
  /// element specifies the type of the population basis. For example, an
  /// encounter-based measure has a subject of Patient and a population basis
  /// of Encounter, and the population criteria all return lists of
  /// Encounters.
  final FHIRTypes? basis;

  /// [scoring]
  /// Indicates how the calculation is performed for the measure, including
  /// proportion, ratio, continuous-variable, and cohort. The value set is
  /// extensible, allowing additional measure scoring types to be
  /// represented.
  final CodeableConcept? scoring;

  /// [scoringUnit]
  /// Defines the expected units of measure for the measure score. This
  /// element SHOULD be specified as a UCUM unit.
  final CodeableConcept? scoringUnit;

  /// [rateAggregation]
  /// Describes how to combine the information calculated, based on logic in
  /// each of several populations, into one summarized result.
  final FhirMarkdown? rateAggregation;

  /// [improvementNotation]
  /// Information on whether an increase or decrease in score is the
  /// preferred result (e.g., a higher score indicates better quality OR a
  /// lower score indicates better quality OR quality is within a range).
  final CodeableConcept? improvementNotation;

  /// [library_]
  /// A reference to a Library resource containing the formal logic used by
  /// the measure group.
  final List<FhirCanonical>? library_;

  /// [population]
  /// A population criteria for the measure.
  final List<MeasurePopulation>? population;

  /// [stratifier]
  /// The stratifier criteria for the measure report, specified as either the
  /// name of a valid CQL expression defined within a referenced library or a
  /// valid FHIR Resource Path.
  final List<MeasureStratifier>? stratifier;
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
      'linkId',
      linkId,
    );
    addField(
      'code',
      code,
    );
    addField(
      'description',
      description,
    );
    addField(
      'type',
      type,
    );
    if (subjectX != null) {
      final fhirType = subjectX!.fhirType;
      addField(
        'subject${fhirType.capitalize()}',
        subjectX,
      );
    }

    addField(
      'basis',
      basis,
    );
    addField(
      'scoring',
      scoring,
    );
    addField(
      'scoringUnit',
      scoringUnit,
    );
    addField(
      'rateAggregation',
      rateAggregation,
    );
    addField(
      'improvementNotation',
      improvementNotation,
    );
    addField(
      'library',
      library_,
    );
    addField(
      'population',
      population,
    );
    addField(
      'stratifier',
      stratifier,
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
      'linkId',
      'code',
      'description',
      'type',
      'subjectX',
      'basis',
      'scoring',
      'scoringUnit',
      'rateAggregation',
      'improvementNotation',
      'library',
      'population',
      'stratifier',
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
      case 'linkId':
        if (linkId != null) {
          fields.add(linkId!);
        }
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'type':
        if (type != null) {
          fields.addAll(type!);
        }
      case 'subject':
        fields.add(subjectX!);
      case 'subjectX':
        fields.add(subjectX!);
      case 'subjectCodeableConcept':
        if (subjectX is CodeableConcept) {
          fields.add(subjectX!);
        }
      case 'subjectReference':
        if (subjectX is Reference) {
          fields.add(subjectX!);
        }
      case 'basis':
        if (basis != null) {
          fields.add(basis!);
        }
      case 'scoring':
        if (scoring != null) {
          fields.add(scoring!);
        }
      case 'scoringUnit':
        if (scoringUnit != null) {
          fields.add(scoringUnit!);
        }
      case 'rateAggregation':
        if (rateAggregation != null) {
          fields.add(rateAggregation!);
        }
      case 'improvementNotation':
        if (improvementNotation != null) {
          fields.add(improvementNotation!);
        }
      case 'library':
        if (library_ != null) {
          fields.addAll(library_!);
        }
      case 'population':
        if (population != null) {
          fields.addAll(population!);
        }
      case 'stratifier':
        if (stratifier != null) {
          fields.addAll(stratifier!);
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
  MeasureGroup clone() => copyWith();

  /// Copy function for [MeasureGroup]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MeasureGroupCopyWith<MeasureGroup> get copyWith =>
      _$MeasureGroupCopyWithImpl<MeasureGroup>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MeasureGroup) {
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
      linkId,
      o.linkId,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      code,
      o.code,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      description,
      o.description,
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
      subjectX,
      o.subjectX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      basis,
      o.basis,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      scoring,
      o.scoring,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      scoringUnit,
      o.scoringUnit,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      rateAggregation,
      o.rateAggregation,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      improvementNotation,
      o.improvementNotation,
    )) {
      return false;
    }
    if (!listEquals<FhirCanonical>(
      library_,
      o.library_,
    )) {
      return false;
    }
    if (!listEquals<MeasurePopulation>(
      population,
      o.population,
    )) {
      return false;
    }
    if (!listEquals<MeasureStratifier>(
      stratifier,
      o.stratifier,
    )) {
      return false;
    }
    return true;
  }
}

/// [MeasurePopulation]
/// A population criteria for the measure.
class MeasurePopulation extends BackboneElement {
  /// Primary constructor for
  /// [MeasurePopulation]

  const MeasurePopulation({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.linkId,
    this.code,
    this.description,
    this.criteria,
    this.groupDefinition,
    this.inputPopulationId,
    this.aggregateMethod,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MeasurePopulation.fromJson(
    Map<String, dynamic> json,
  ) {
    return MeasurePopulation(
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
      linkId: JsonParser.parsePrimitive<FhirString>(
        json,
        'linkId',
        FhirString.fromJson,
      ),
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
      ),
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
      ),
      criteria: JsonParser.parseObject<FhirExpression>(
        json,
        'criteria',
        FhirExpression.fromJson,
      ),
      groupDefinition: JsonParser.parseObject<Reference>(
        json,
        'groupDefinition',
        Reference.fromJson,
      ),
      inputPopulationId: JsonParser.parsePrimitive<FhirString>(
        json,
        'inputPopulationId',
        FhirString.fromJson,
      ),
      aggregateMethod: JsonParser.parseObject<CodeableConcept>(
        json,
        'aggregateMethod',
        CodeableConcept.fromJson,
      ),
    );
  }

  /// Deserialize [MeasurePopulation]
  /// from a [String] or [YamlMap] object
  factory MeasurePopulation.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MeasurePopulation.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MeasurePopulation.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MeasurePopulation '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MeasurePopulation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MeasurePopulation.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MeasurePopulation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MeasurePopulation';

  /// [linkId]
  /// An identifier that is unique within the Measure allowing linkage to the
  /// equivalent population in a MeasureReport resource.
  final FhirString? linkId;

  /// [code]
  /// The type of population criteria.
  final CodeableConcept? code;

  /// [description]
  /// The human readable description of this population criteria.
  final FhirMarkdown? description;

  /// [criteria]
  /// An expression that specifies the criteria for the population, typically
  /// the name of an expression in a library.
  final FhirExpression? criteria;

  /// [groupDefinition]
  /// A Group resource that defines this population as a set of
  /// characteristics.
  final Reference? groupDefinition;

  /// [inputPopulationId]
  /// The id of a population element in this measure that provides the input
  /// for this population criteria. In most cases, the scoring structure of
  /// the measure implies specific relationships (e.g. the Numerator uses the
  /// Denominator as the source in a proportion scoring). In some cases,
  /// however, multiple possible choices exist and must be resolved
  /// explicitly. For example in a ratio measure with multiple initial
  /// populations, the denominator must specify which population should be
  /// used as the starting point.
  final FhirString? inputPopulationId;

  /// [aggregateMethod]
  /// Specifies which method should be used to aggregate measure observation
  /// values. For most scoring types, this is implied by scoring (e.g. a
  /// proportion measure counts members of the populations). For continuous
  /// variables, however, this information must be specified to ensure
  /// correct calculation.
  final CodeableConcept? aggregateMethod;
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
      'linkId',
      linkId,
    );
    addField(
      'code',
      code,
    );
    addField(
      'description',
      description,
    );
    addField(
      'criteria',
      criteria,
    );
    addField(
      'groupDefinition',
      groupDefinition,
    );
    addField(
      'inputPopulationId',
      inputPopulationId,
    );
    addField(
      'aggregateMethod',
      aggregateMethod,
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
      'linkId',
      'code',
      'description',
      'criteria',
      'groupDefinition',
      'inputPopulationId',
      'aggregateMethod',
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
      case 'linkId':
        if (linkId != null) {
          fields.add(linkId!);
        }
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'criteria':
        if (criteria != null) {
          fields.add(criteria!);
        }
      case 'groupDefinition':
        if (groupDefinition != null) {
          fields.add(groupDefinition!);
        }
      case 'inputPopulationId':
        if (inputPopulationId != null) {
          fields.add(inputPopulationId!);
        }
      case 'aggregateMethod':
        if (aggregateMethod != null) {
          fields.add(aggregateMethod!);
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
  MeasurePopulation clone() => copyWith();

  /// Copy function for [MeasurePopulation]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MeasurePopulationCopyWith<MeasurePopulation> get copyWith =>
      _$MeasurePopulationCopyWithImpl<MeasurePopulation>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MeasurePopulation) {
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
      linkId,
      o.linkId,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      code,
      o.code,
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
      criteria,
      o.criteria,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      groupDefinition,
      o.groupDefinition,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      inputPopulationId,
      o.inputPopulationId,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      aggregateMethod,
      o.aggregateMethod,
    )) {
      return false;
    }
    return true;
  }
}

/// [MeasureStratifier]
/// The stratifier criteria for the measure report, specified as either the
/// name of a valid CQL expression defined within a referenced library or a
/// valid FHIR Resource Path.
class MeasureStratifier extends BackboneElement {
  /// Primary constructor for
  /// [MeasureStratifier]

  const MeasureStratifier({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.linkId,
    this.code,
    this.description,
    this.criteria,
    this.groupDefinition,
    this.component,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MeasureStratifier.fromJson(
    Map<String, dynamic> json,
  ) {
    return MeasureStratifier(
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
      linkId: JsonParser.parsePrimitive<FhirString>(
        json,
        'linkId',
        FhirString.fromJson,
      ),
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
      ),
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
      ),
      criteria: JsonParser.parseObject<FhirExpression>(
        json,
        'criteria',
        FhirExpression.fromJson,
      ),
      groupDefinition: JsonParser.parseObject<Reference>(
        json,
        'groupDefinition',
        Reference.fromJson,
      ),
      component: (json['component'] as List<dynamic>?)
          ?.map<MeasureComponent>(
            (v) => MeasureComponent.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [MeasureStratifier]
  /// from a [String] or [YamlMap] object
  factory MeasureStratifier.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MeasureStratifier.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MeasureStratifier.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MeasureStratifier '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MeasureStratifier]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MeasureStratifier.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MeasureStratifier.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MeasureStratifier';

  /// [linkId]
  /// An identifier that is unique within the Measure allowing linkage to the
  /// equivalent item in a MeasureReport resource.
  final FhirString? linkId;

  /// [code]
  /// Indicates a meaning for the stratifier. This can be as simple as a
  /// unique identifier, or it can establish meaning in a broader context by
  /// drawing from a terminology, allowing stratifiers to be correlated
  /// across measures.
  final CodeableConcept? code;

  /// [description]
  /// The human readable description of this stratifier criteria.
  final FhirMarkdown? description;

  /// [criteria]
  /// An expression that specifies the criteria for the stratifier. This is
  /// typically the name of an expression defined within a referenced
  /// library, but it may also be a path to a stratifier element.
  final FhirExpression? criteria;

  /// [groupDefinition]
  /// A Group resource that defines this population as a set of
  /// characteristics.
  final Reference? groupDefinition;

  /// [component]
  /// A component of the stratifier criteria for the measure report,
  /// specified as either the name of a valid CQL expression defined within a
  /// referenced library or a valid FHIR Resource Path.
  final List<MeasureComponent>? component;
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
      'linkId',
      linkId,
    );
    addField(
      'code',
      code,
    );
    addField(
      'description',
      description,
    );
    addField(
      'criteria',
      criteria,
    );
    addField(
      'groupDefinition',
      groupDefinition,
    );
    addField(
      'component',
      component,
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
      'linkId',
      'code',
      'description',
      'criteria',
      'groupDefinition',
      'component',
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
      case 'linkId':
        if (linkId != null) {
          fields.add(linkId!);
        }
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'criteria':
        if (criteria != null) {
          fields.add(criteria!);
        }
      case 'groupDefinition':
        if (groupDefinition != null) {
          fields.add(groupDefinition!);
        }
      case 'component':
        if (component != null) {
          fields.addAll(component!);
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
  MeasureStratifier clone() => copyWith();

  /// Copy function for [MeasureStratifier]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MeasureStratifierCopyWith<MeasureStratifier> get copyWith =>
      _$MeasureStratifierCopyWithImpl<MeasureStratifier>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MeasureStratifier) {
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
      linkId,
      o.linkId,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      code,
      o.code,
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
      criteria,
      o.criteria,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      groupDefinition,
      o.groupDefinition,
    )) {
      return false;
    }
    if (!listEquals<MeasureComponent>(
      component,
      o.component,
    )) {
      return false;
    }
    return true;
  }
}

/// [MeasureComponent]
/// A component of the stratifier criteria for the measure report,
/// specified as either the name of a valid CQL expression defined within a
/// referenced library or a valid FHIR Resource Path.
class MeasureComponent extends BackboneElement {
  /// Primary constructor for
  /// [MeasureComponent]

  const MeasureComponent({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.linkId,
    this.code,
    this.description,
    this.criteria,
    this.groupDefinition,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MeasureComponent.fromJson(
    Map<String, dynamic> json,
  ) {
    return MeasureComponent(
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
      linkId: JsonParser.parsePrimitive<FhirString>(
        json,
        'linkId',
        FhirString.fromJson,
      ),
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
      ),
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
      ),
      criteria: JsonParser.parseObject<FhirExpression>(
        json,
        'criteria',
        FhirExpression.fromJson,
      ),
      groupDefinition: JsonParser.parseObject<Reference>(
        json,
        'groupDefinition',
        Reference.fromJson,
      ),
    );
  }

  /// Deserialize [MeasureComponent]
  /// from a [String] or [YamlMap] object
  factory MeasureComponent.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MeasureComponent.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MeasureComponent.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MeasureComponent '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MeasureComponent]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MeasureComponent.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MeasureComponent.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MeasureComponent';

  /// [linkId]
  /// An identifier that is unique within the Measure allowing linkage to the
  /// equivalent item in a MeasureReport resource.
  final FhirString? linkId;

  /// [code]
  /// Indicates a meaning for the stratifier component. This can be as simple
  /// as a unique identifier, or it can establish meaning in a broader
  /// context by drawing from a terminology, allowing stratifiers to be
  /// correlated across measures.
  final CodeableConcept? code;

  /// [description]
  /// The human readable description of this stratifier criteria component.
  final FhirMarkdown? description;

  /// [criteria]
  /// An expression that specifies the criteria for this component of the
  /// stratifier. This is typically the name of an expression defined within
  /// a referenced library, but it may also be a path to a stratifier
  /// element.
  final FhirExpression? criteria;

  /// [groupDefinition]
  /// A Group resource that defines this population as a set of
  /// characteristics.
  final Reference? groupDefinition;
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
      'linkId',
      linkId,
    );
    addField(
      'code',
      code,
    );
    addField(
      'description',
      description,
    );
    addField(
      'criteria',
      criteria,
    );
    addField(
      'groupDefinition',
      groupDefinition,
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
      'linkId',
      'code',
      'description',
      'criteria',
      'groupDefinition',
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
      case 'linkId':
        if (linkId != null) {
          fields.add(linkId!);
        }
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'criteria':
        if (criteria != null) {
          fields.add(criteria!);
        }
      case 'groupDefinition':
        if (groupDefinition != null) {
          fields.add(groupDefinition!);
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
  MeasureComponent clone() => copyWith();

  /// Copy function for [MeasureComponent]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MeasureComponentCopyWith<MeasureComponent> get copyWith =>
      _$MeasureComponentCopyWithImpl<MeasureComponent>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MeasureComponent) {
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
      linkId,
      o.linkId,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      code,
      o.code,
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
      criteria,
      o.criteria,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      groupDefinition,
      o.groupDefinition,
    )) {
      return false;
    }
    return true;
  }
}

/// [MeasureSupplementalData]
/// The supplemental data criteria for the measure report, specified as
/// either the name of a valid CQL expression within a referenced library,
/// or a valid FHIR Resource Path.
class MeasureSupplementalData extends BackboneElement {
  /// Primary constructor for
  /// [MeasureSupplementalData]

  const MeasureSupplementalData({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.linkId,
    this.code,
    this.usage,
    this.description,
    required this.criteria,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MeasureSupplementalData.fromJson(
    Map<String, dynamic> json,
  ) {
    return MeasureSupplementalData(
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
      linkId: JsonParser.parsePrimitive<FhirString>(
        json,
        'linkId',
        FhirString.fromJson,
      ),
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
      ),
      usage: (json['usage'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
      ),
      criteria: JsonParser.parseObject<FhirExpression>(
        json,
        'criteria',
        FhirExpression.fromJson,
      )!,
    );
  }

  /// Deserialize [MeasureSupplementalData]
  /// from a [String] or [YamlMap] object
  factory MeasureSupplementalData.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MeasureSupplementalData.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MeasureSupplementalData.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MeasureSupplementalData '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MeasureSupplementalData]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MeasureSupplementalData.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MeasureSupplementalData.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MeasureSupplementalData';

  /// [linkId]
  /// An identifier that is unique within the Measure allowing linkage to the
  /// equivalent item in a MeasureReport resource.
  final FhirString? linkId;

  /// [code]
  /// Indicates a meaning for the supplemental data. This can be as simple as
  /// a unique identifier, or it can establish meaning in a broader context
  /// by drawing from a terminology, allowing supplemental data to be
  /// correlated across measures.
  final CodeableConcept? code;

  /// [usage]
  /// An indicator of the intended usage for the supplemental data element.
  /// Supplemental data indicates the data is additional information
  /// requested to augment the measure information. Risk adjustment factor
  /// indicates the data is additional information used to calculate risk
  /// adjustment factors when applying a risk model to the measure
  /// calculation.
  final List<CodeableConcept>? usage;

  /// [description]
  /// The human readable description of this supplemental data.
  final FhirMarkdown? description;

  /// [criteria]
  /// The criteria for the supplemental data. This is typically the name of a
  /// valid expression defined within a referenced library, but it may also
  /// be a path to a specific data element. The criteria defines the data to
  /// be returned for this element.
  final FhirExpression criteria;
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
      'linkId',
      linkId,
    );
    addField(
      'code',
      code,
    );
    addField(
      'usage',
      usage,
    );
    addField(
      'description',
      description,
    );
    addField(
      'criteria',
      criteria,
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
      'linkId',
      'code',
      'usage',
      'description',
      'criteria',
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
      case 'linkId':
        if (linkId != null) {
          fields.add(linkId!);
        }
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'usage':
        if (usage != null) {
          fields.addAll(usage!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'criteria':
        fields.add(criteria);
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
  MeasureSupplementalData clone() => copyWith();

  /// Copy function for [MeasureSupplementalData]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MeasureSupplementalDataCopyWith<MeasureSupplementalData> get copyWith =>
      _$MeasureSupplementalDataCopyWithImpl<MeasureSupplementalData>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MeasureSupplementalData) {
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
      linkId,
      o.linkId,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      code,
      o.code,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      usage,
      o.usage,
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
      criteria,
      o.criteria,
    )) {
      return false;
    }
    return true;
  }
}
