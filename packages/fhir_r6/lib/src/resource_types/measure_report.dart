import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'measure_report.g.dart';

/// [MeasureReport]
/// The MeasureReport resource contains the results of the calculation of a
/// measure; and optionally a reference to the resources involved in that
/// calculation.
class MeasureReport extends DomainResource {
  /// Primary constructor for
  /// [MeasureReport]

  const MeasureReport({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.status,
    required this.type,
    this.dataUpdateType,
    this.measure,
    this.subject,
    this.date,
    this.reporter,
    this.reportingVendor,
    this.location,
    required this.period,
    this.inputParameters,
    this.scoring,
    this.improvementNotation,
    this.group,
    this.supplementalData,
    this.evaluatedResource,
  }) : super(
          resourceType: R5ResourceType.MeasureReport,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MeasureReport.fromJson(
    Map<String, dynamic> json,
  ) {
    return MeasureReport(
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
      status: JsonParser.parsePrimitive<MeasureReportStatus>(
        json,
        'status',
        MeasureReportStatus.fromJson,
      )!,
      type: JsonParser.parsePrimitive<MeasureReportType>(
        json,
        'type',
        MeasureReportType.fromJson,
      )!,
      dataUpdateType: JsonParser.parsePrimitive<SubmitDataUpdateType>(
        json,
        'dataUpdateType',
        SubmitDataUpdateType.fromJson,
      ),
      measure: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'measure',
        FhirCanonical.fromJson,
      ),
      subject: JsonParser.parseObject<Reference>(
        json,
        'subject',
        Reference.fromJson,
      ),
      date: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'date',
        FhirDateTime.fromJson,
      ),
      reporter: JsonParser.parseObject<Reference>(
        json,
        'reporter',
        Reference.fromJson,
      ),
      reportingVendor: JsonParser.parseObject<Reference>(
        json,
        'reportingVendor',
        Reference.fromJson,
      ),
      location: JsonParser.parseObject<Reference>(
        json,
        'location',
        Reference.fromJson,
      ),
      period: JsonParser.parseObject<Period>(
        json,
        'period',
        Period.fromJson,
      )!,
      inputParameters: JsonParser.parseObject<Reference>(
        json,
        'inputParameters',
        Reference.fromJson,
      ),
      scoring: JsonParser.parseObject<CodeableConcept>(
        json,
        'scoring',
        CodeableConcept.fromJson,
      ),
      improvementNotation: JsonParser.parseObject<CodeableConcept>(
        json,
        'improvementNotation',
        CodeableConcept.fromJson,
      ),
      group: (json['group'] as List<dynamic>?)
          ?.map<MeasureReportGroup>(
            (v) => MeasureReportGroup.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      supplementalData: (json['supplementalData'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      evaluatedResource: (json['evaluatedResource'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [MeasureReport]
  /// from a [String] or [YamlMap] object
  factory MeasureReport.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MeasureReport.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MeasureReport.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MeasureReport '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MeasureReport]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MeasureReport.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MeasureReport.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MeasureReport';

  /// [identifier]
  /// A formal identifier that is used to identify this MeasureReport when it
  /// is represented in other formats or referenced in a specification,
  /// model, design or an instance.
  final List<Identifier>? identifier;

  /// [status]
  /// The MeasureReport status. No data will be available until the
  /// MeasureReport status is complete.
  final MeasureReportStatus status;

  /// [type]
  /// The type of measure report. This may be an individual report, which
  /// provides the score for the measure for an individual member of the
  /// population; a subject-listing, which returns the list of members that
  /// meet the various criteria in the measure; a summary report, which
  /// returns a population count for each of the criteria in the measure; or
  /// a data-collection, which enables the MeasureReport to be used to
  /// exchange the data-of-interest for a quality measure.
  final MeasureReportType type;

  /// [dataUpdateType]
  /// Indicates whether the data submitted in a data-exchange report
  /// represents a snapshot or incremental update. A snapshot update replaces
  /// all previously submitted data for the receiver, whereas an incremental
  /// update represents only updated and/or changed data and should be
  /// applied as a differential update to the existing submitted data for the
  /// receiver.
  final SubmitDataUpdateType? dataUpdateType;

  /// [measure]
  /// A reference to the Measure that was calculated to produce this report.
  final FhirCanonical? measure;

  /// [subject]
  /// Optional subject identifying the individual or individuals the report
  /// is for.
  final Reference? subject;

  /// [date]
  /// The date this measure was calculated.
  final FhirDateTime? date;

  /// [reporter]
  /// The individual or organization that is reporting the data.
  final Reference? reporter;

  /// [reportingVendor]
  /// A reference to the vendor who queried the data, calculated results
  /// and/or generated the report. The ‘reporting vendor’ is intended to
  /// represent the submitting entity when it is not the same as the
  /// reporting entity. This extension is used when the Receiver is
  /// interested in getting vendor information in the report.
  final Reference? reportingVendor;

  /// [location]
  /// A reference to the location for which the data is being reported.
  final Reference? location;

  /// [period]
  /// The reporting period for which the report was calculated.
  final Period period;

  /// [inputParameters]
  /// A reference to a Parameters resource (typically represented using a
  /// contained resource) that represents any input parameters that were
  /// provided to the operation that generated the report.
  final Reference? inputParameters;

  /// [scoring]
  /// Indicates how the calculation is performed for the measure, including
  /// proportion, ratio, continuous-variable, and cohort. The value set is
  /// extensible, allowing additional measure scoring types to be
  /// represented. It is expected to be the same as the scoring element on
  /// the referenced Measure.
  final CodeableConcept? scoring;

  /// [improvementNotation]
  /// Whether improvement in the measure is noted by an increase or decrease
  /// in the measure score.
  final CodeableConcept? improvementNotation;

  /// [group]
  /// The results of the calculation, one for each population group in the
  /// measure.
  final List<MeasureReportGroup>? group;

  /// [supplementalData]
  /// A reference to a Resource that represents additional information
  /// collected for the report. If the value of the supplemental data is not
  /// a Resource (i.e. evaluating the supplementalData expression for this
  /// case in the measure results in a value that is not a FHIR Resource), it
  /// is reported as a reference to a contained Observation resource.
  final List<Reference>? supplementalData;

  /// [evaluatedResource]
  /// Evaluated resources are used to capture what data was involved in the
  /// calculation of a measure. This usage is only allowed for individual
  /// reports to ensure that the size of the MeasureReport resource is
  /// bounded.
  final List<Reference>? evaluatedResource;
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
      'status',
      status,
    );
    addField(
      'type',
      type,
    );
    addField(
      'dataUpdateType',
      dataUpdateType,
    );
    addField(
      'measure',
      measure,
    );
    addField(
      'subject',
      subject,
    );
    addField(
      'date',
      date,
    );
    addField(
      'reporter',
      reporter,
    );
    addField(
      'reportingVendor',
      reportingVendor,
    );
    addField(
      'location',
      location,
    );
    addField(
      'period',
      period,
    );
    addField(
      'inputParameters',
      inputParameters,
    );
    addField(
      'scoring',
      scoring,
    );
    addField(
      'improvementNotation',
      improvementNotation,
    );
    addField(
      'group',
      group,
    );
    addField(
      'supplementalData',
      supplementalData,
    );
    addField(
      'evaluatedResource',
      evaluatedResource,
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
      'status',
      'type',
      'dataUpdateType',
      'measure',
      'subject',
      'date',
      'reporter',
      'reportingVendor',
      'location',
      'period',
      'inputParameters',
      'scoring',
      'improvementNotation',
      'group',
      'supplementalData',
      'evaluatedResource',
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
      case 'status':
        fields.add(status);
      case 'type':
        fields.add(type);
      case 'dataUpdateType':
        if (dataUpdateType != null) {
          fields.add(dataUpdateType!);
        }
      case 'measure':
        if (measure != null) {
          fields.add(measure!);
        }
      case 'subject':
        if (subject != null) {
          fields.add(subject!);
        }
      case 'date':
        if (date != null) {
          fields.add(date!);
        }
      case 'reporter':
        if (reporter != null) {
          fields.add(reporter!);
        }
      case 'reportingVendor':
        if (reportingVendor != null) {
          fields.add(reportingVendor!);
        }
      case 'location':
        if (location != null) {
          fields.add(location!);
        }
      case 'period':
        fields.add(period);
      case 'inputParameters':
        if (inputParameters != null) {
          fields.add(inputParameters!);
        }
      case 'scoring':
        if (scoring != null) {
          fields.add(scoring!);
        }
      case 'improvementNotation':
        if (improvementNotation != null) {
          fields.add(improvementNotation!);
        }
      case 'group':
        if (group != null) {
          fields.addAll(group!);
        }
      case 'supplementalData':
        if (supplementalData != null) {
          fields.addAll(supplementalData!);
        }
      case 'evaluatedResource':
        if (evaluatedResource != null) {
          fields.addAll(evaluatedResource!);
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
  MeasureReport clone() => copyWith();

  /// Copy function for [MeasureReport]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MeasureReportCopyWith<MeasureReport> get copyWith =>
      _$MeasureReportCopyWithImpl<MeasureReport>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MeasureReport) {
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
      status,
      o.status,
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
      dataUpdateType,
      o.dataUpdateType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      measure,
      o.measure,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      subject,
      o.subject,
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
      reporter,
      o.reporter,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      reportingVendor,
      o.reportingVendor,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      location,
      o.location,
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
      inputParameters,
      o.inputParameters,
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
      improvementNotation,
      o.improvementNotation,
    )) {
      return false;
    }
    if (!listEquals<MeasureReportGroup>(
      group,
      o.group,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      supplementalData,
      o.supplementalData,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      evaluatedResource,
      o.evaluatedResource,
    )) {
      return false;
    }
    return true;
  }
}

/// [MeasureReportGroup]
/// The results of the calculation, one for each population group in the
/// measure.
class MeasureReportGroup extends BackboneElement {
  /// Primary constructor for
  /// [MeasureReportGroup]

  const MeasureReportGroup({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.linkId,
    this.code,
    this.subject,
    this.population,
    MeasureScoreXMeasureReportGroup? measureScoreX,
    Quantity? measureScoreQuantity,
    FhirDateTime? measureScoreDateTime,
    CodeableConcept? measureScoreCodeableConcept,
    Period? measureScorePeriod,
    Range? measureScoreRange,
    FhirDuration? measureScoreDuration,
    this.stratifier,
    super.disallowExtensions,
  })  : measureScoreX = measureScoreX ??
            measureScoreQuantity ??
            measureScoreDateTime ??
            measureScoreCodeableConcept ??
            measureScorePeriod ??
            measureScoreRange ??
            measureScoreDuration,
        super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MeasureReportGroup.fromJson(
    Map<String, dynamic> json,
  ) {
    return MeasureReportGroup(
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
      subject: JsonParser.parseObject<Reference>(
        json,
        'subject',
        Reference.fromJson,
      ),
      population: (json['population'] as List<dynamic>?)
          ?.map<MeasureReportPopulation>(
            (v) => MeasureReportPopulation.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      measureScoreX:
          JsonParser.parsePolymorphic<MeasureScoreXMeasureReportGroup>(
        json,
        {
          'measureScoreQuantity': Quantity.fromJson,
          'measureScoreDateTime': FhirDateTime.fromJson,
          'measureScoreCodeableConcept': CodeableConcept.fromJson,
          'measureScorePeriod': Period.fromJson,
          'measureScoreRange': Range.fromJson,
          'measureScoreDuration': FhirDuration.fromJson,
        },
      ),
      stratifier: (json['stratifier'] as List<dynamic>?)
          ?.map<MeasureReportStratifier>(
            (v) => MeasureReportStratifier.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [MeasureReportGroup]
  /// from a [String] or [YamlMap] object
  factory MeasureReportGroup.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MeasureReportGroup.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MeasureReportGroup.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MeasureReportGroup '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MeasureReportGroup]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MeasureReportGroup.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MeasureReportGroup.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MeasureReportGroup';

  /// [linkId]
  /// The group from the Measure that corresponds to this group in the
  /// MeasureReport resource.
  final FhirString? linkId;

  /// [code]
  /// The meaning of the population group as defined in the measure
  /// definition.
  final CodeableConcept? code;

  /// [subject]
  /// Optional subject identifying the individual or individuals the report
  /// is for.
  final Reference? subject;

  /// [population]
  /// The populations that make up the population group, one for each type of
  /// population appropriate for the measure.
  final List<MeasureReportPopulation>? population;

  /// [measureScoreX]
  /// The measure score for this population group, calculated as appropriate
  /// for the measure type and scoring method, and based on the contents of
  /// the populations defined in the group.
  final MeasureScoreXMeasureReportGroup? measureScoreX;

  /// Getter for [measureScoreQuantity] as a Quantity
  Quantity? get measureScoreQuantity => measureScoreX?.isAs<Quantity>();

  /// Getter for [measureScoreDateTime] as a FhirDateTime
  FhirDateTime? get measureScoreDateTime => measureScoreX?.isAs<FhirDateTime>();

  /// Getter for [measureScoreCodeableConcept] as a CodeableConcept
  CodeableConcept? get measureScoreCodeableConcept =>
      measureScoreX?.isAs<CodeableConcept>();

  /// Getter for [measureScorePeriod] as a Period
  Period? get measureScorePeriod => measureScoreX?.isAs<Period>();

  /// Getter for [measureScoreRange] as a Range
  Range? get measureScoreRange => measureScoreX?.isAs<Range>();

  /// Getter for [measureScoreDuration] as a FhirDuration
  FhirDuration? get measureScoreDuration => measureScoreX?.isAs<FhirDuration>();

  /// [stratifier]
  /// When a measure includes multiple stratifiers, there will be a
  /// stratifier group for each stratifier defined by the measure.
  final List<MeasureReportStratifier>? stratifier;
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
      'subject',
      subject,
    );
    addField(
      'population',
      population,
    );
    if (measureScoreX != null) {
      final fhirType = measureScoreX!.fhirType;
      addField(
        'measureScore${fhirType.capitalize()}',
        measureScoreX,
      );
    }

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
      'subject',
      'population',
      'measureScoreX',
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
      case 'subject':
        if (subject != null) {
          fields.add(subject!);
        }
      case 'population':
        if (population != null) {
          fields.addAll(population!);
        }
      case 'measureScore':
        fields.add(measureScoreX!);
      case 'measureScoreX':
        fields.add(measureScoreX!);
      case 'measureScoreQuantity':
        if (measureScoreX is Quantity) {
          fields.add(measureScoreX!);
        }
      case 'measureScoreDateTime':
        if (measureScoreX is FhirDateTime) {
          fields.add(measureScoreX!);
        }
      case 'measureScoreCodeableConcept':
        if (measureScoreX is CodeableConcept) {
          fields.add(measureScoreX!);
        }
      case 'measureScorePeriod':
        if (measureScoreX is Period) {
          fields.add(measureScoreX!);
        }
      case 'measureScoreRange':
        if (measureScoreX is Range) {
          fields.add(measureScoreX!);
        }
      case 'measureScoreDuration':
        if (measureScoreX is FhirDuration) {
          fields.add(measureScoreX!);
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
  MeasureReportGroup clone() => copyWith();

  /// Copy function for [MeasureReportGroup]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MeasureReportGroupCopyWith<MeasureReportGroup> get copyWith =>
      _$MeasureReportGroupCopyWithImpl<MeasureReportGroup>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MeasureReportGroup) {
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
      subject,
      o.subject,
    )) {
      return false;
    }
    if (!listEquals<MeasureReportPopulation>(
      population,
      o.population,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      measureScoreX,
      o.measureScoreX,
    )) {
      return false;
    }
    if (!listEquals<MeasureReportStratifier>(
      stratifier,
      o.stratifier,
    )) {
      return false;
    }
    return true;
  }
}

/// [MeasureReportPopulation]
/// The populations that make up the population group, one for each type of
/// population appropriate for the measure.
class MeasureReportPopulation extends BackboneElement {
  /// Primary constructor for
  /// [MeasureReportPopulation]

  const MeasureReportPopulation({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.linkId,
    this.code,
    this.count,
    this.subjectResults,
    this.subjectReport,
    this.subjects,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MeasureReportPopulation.fromJson(
    Map<String, dynamic> json,
  ) {
    return MeasureReportPopulation(
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
      count: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'count',
        FhirInteger.fromJson,
      ),
      subjectResults: JsonParser.parseObject<Reference>(
        json,
        'subjectResults',
        Reference.fromJson,
      ),
      subjectReport: (json['subjectReport'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      subjects: JsonParser.parseObject<Reference>(
        json,
        'subjects',
        Reference.fromJson,
      ),
    );
  }

  /// Deserialize [MeasureReportPopulation]
  /// from a [String] or [YamlMap] object
  factory MeasureReportPopulation.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MeasureReportPopulation.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MeasureReportPopulation.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MeasureReportPopulation '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MeasureReportPopulation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MeasureReportPopulation.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MeasureReportPopulation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MeasureReportPopulation';

  /// [linkId]
  /// The population from the Measure that corresponds to this population in
  /// the MeasureReport resource.
  final FhirString? linkId;

  /// [code]
  /// The type of the population.
  final CodeableConcept? code;

  /// [count]
  /// The number of members of the population.
  final FhirInteger? count;

  /// [subjectResults]
  /// This element refers to a List of individual level MeasureReport
  /// resources, one for each subject in this population.
  final Reference? subjectResults;

  /// [subjectReport]
  /// A reference to an individual level MeasureReport resource for a member
  /// of the population.
  final List<Reference>? subjectReport;

  /// [subjects]
  /// Optional Group identifying the individuals that make up the population.
  final Reference? subjects;
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
      'count',
      count,
    );
    addField(
      'subjectResults',
      subjectResults,
    );
    addField(
      'subjectReport',
      subjectReport,
    );
    addField(
      'subjects',
      subjects,
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
      'count',
      'subjectResults',
      'subjectReport',
      'subjects',
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
      case 'count':
        if (count != null) {
          fields.add(count!);
        }
      case 'subjectResults':
        if (subjectResults != null) {
          fields.add(subjectResults!);
        }
      case 'subjectReport':
        if (subjectReport != null) {
          fields.addAll(subjectReport!);
        }
      case 'subjects':
        if (subjects != null) {
          fields.add(subjects!);
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
  MeasureReportPopulation clone() => copyWith();

  /// Copy function for [MeasureReportPopulation]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MeasureReportPopulationCopyWith<MeasureReportPopulation> get copyWith =>
      _$MeasureReportPopulationCopyWithImpl<MeasureReportPopulation>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MeasureReportPopulation) {
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
      count,
      o.count,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      subjectResults,
      o.subjectResults,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      subjectReport,
      o.subjectReport,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      subjects,
      o.subjects,
    )) {
      return false;
    }
    return true;
  }
}

/// [MeasureReportStratifier]
/// When a measure includes multiple stratifiers, there will be a
/// stratifier group for each stratifier defined by the measure.
class MeasureReportStratifier extends BackboneElement {
  /// Primary constructor for
  /// [MeasureReportStratifier]

  const MeasureReportStratifier({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.linkId,
    this.code,
    this.stratum,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MeasureReportStratifier.fromJson(
    Map<String, dynamic> json,
  ) {
    return MeasureReportStratifier(
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
      stratum: (json['stratum'] as List<dynamic>?)
          ?.map<MeasureReportStratum>(
            (v) => MeasureReportStratum.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [MeasureReportStratifier]
  /// from a [String] or [YamlMap] object
  factory MeasureReportStratifier.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MeasureReportStratifier.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MeasureReportStratifier.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MeasureReportStratifier '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MeasureReportStratifier]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MeasureReportStratifier.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MeasureReportStratifier.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MeasureReportStratifier';

  /// [linkId]
  /// The stratifier from the Measure that corresponds to this stratifier in
  /// the MeasureReport resource.
  final FhirString? linkId;

  /// [code]
  /// The meaning of this stratifier, as defined in the measure definition.
  final CodeableConcept? code;

  /// [stratum]
  /// This element contains the results for a single stratum within the
  /// stratifier. For example, when stratifying on administrative gender,
  /// there will be four strata, one for each possible gender value.
  final List<MeasureReportStratum>? stratum;
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
      'stratum',
      stratum,
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
      'stratum',
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
      case 'stratum':
        if (stratum != null) {
          fields.addAll(stratum!);
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
  MeasureReportStratifier clone() => copyWith();

  /// Copy function for [MeasureReportStratifier]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MeasureReportStratifierCopyWith<MeasureReportStratifier> get copyWith =>
      _$MeasureReportStratifierCopyWithImpl<MeasureReportStratifier>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MeasureReportStratifier) {
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
    if (!listEquals<MeasureReportStratum>(
      stratum,
      o.stratum,
    )) {
      return false;
    }
    return true;
  }
}

/// [MeasureReportStratum]
/// This element contains the results for a single stratum within the
/// stratifier. For example, when stratifying on administrative gender,
/// there will be four strata, one for each possible gender value.
class MeasureReportStratum extends BackboneElement {
  /// Primary constructor for
  /// [MeasureReportStratum]

  const MeasureReportStratum({
    super.id,
    super.extension_,
    super.modifierExtension,
    ValueXMeasureReportStratum? valueX,
    CodeableConcept? valueCodeableConcept,
    FhirBoolean? valueBoolean,
    Quantity? valueQuantity,
    Range? valueRange,
    Reference? valueReference,
    this.component,
    this.population,
    MeasureScoreXMeasureReportStratum? measureScoreX,
    Quantity? measureScoreQuantity,
    FhirDateTime? measureScoreDateTime,
    CodeableConcept? measureScoreCodeableConcept,
    Period? measureScorePeriod,
    Range? measureScoreRange,
    FhirDuration? measureScoreDuration,
    super.disallowExtensions,
  })  : valueX = valueX ??
            valueCodeableConcept ??
            valueBoolean ??
            valueQuantity ??
            valueRange ??
            valueReference,
        measureScoreX = measureScoreX ??
            measureScoreQuantity ??
            measureScoreDateTime ??
            measureScoreCodeableConcept ??
            measureScorePeriod ??
            measureScoreRange ??
            measureScoreDuration,
        super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MeasureReportStratum.fromJson(
    Map<String, dynamic> json,
  ) {
    return MeasureReportStratum(
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
      valueX: JsonParser.parsePolymorphic<ValueXMeasureReportStratum>(
        json,
        {
          'valueCodeableConcept': CodeableConcept.fromJson,
          'valueBoolean': FhirBoolean.fromJson,
          'valueQuantity': Quantity.fromJson,
          'valueRange': Range.fromJson,
          'valueReference': Reference.fromJson,
        },
      ),
      component: (json['component'] as List<dynamic>?)
          ?.map<MeasureReportComponent>(
            (v) => MeasureReportComponent.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      population: (json['population'] as List<dynamic>?)
          ?.map<MeasureReportPopulation>(
            (v) => MeasureReportPopulation.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      measureScoreX:
          JsonParser.parsePolymorphic<MeasureScoreXMeasureReportStratum>(
        json,
        {
          'measureScoreQuantity': Quantity.fromJson,
          'measureScoreDateTime': FhirDateTime.fromJson,
          'measureScoreCodeableConcept': CodeableConcept.fromJson,
          'measureScorePeriod': Period.fromJson,
          'measureScoreRange': Range.fromJson,
          'measureScoreDuration': FhirDuration.fromJson,
        },
      ),
    );
  }

  /// Deserialize [MeasureReportStratum]
  /// from a [String] or [YamlMap] object
  factory MeasureReportStratum.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MeasureReportStratum.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MeasureReportStratum.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MeasureReportStratum '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MeasureReportStratum]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MeasureReportStratum.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MeasureReportStratum.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MeasureReportStratum';

  /// [valueX]
  /// The value for this stratum, expressed as a CodeableConcept. When
  /// defining stratifiers on complex values, the value must be rendered such
  /// that the value for each stratum within the stratifier is unique.
  final ValueXMeasureReportStratum? valueX;

  /// Getter for [valueCodeableConcept] as a CodeableConcept
  CodeableConcept? get valueCodeableConcept => valueX?.isAs<CodeableConcept>();

  /// Getter for [valueBoolean] as a FhirBoolean
  FhirBoolean? get valueBoolean => valueX?.isAs<FhirBoolean>();

  /// Getter for [valueQuantity] as a Quantity
  Quantity? get valueQuantity => valueX?.isAs<Quantity>();

  /// Getter for [valueRange] as a Range
  Range? get valueRange => valueX?.isAs<Range>();

  /// Getter for [valueReference] as a Reference
  Reference? get valueReference => valueX?.isAs<Reference>();

  /// [component]
  /// A stratifier component value.
  final List<MeasureReportComponent>? component;

  /// [population]
  /// The populations that make up the stratum, one for each type of
  /// population appropriate to the measure.
  final List<MeasureReportPopulation>? population;

  /// [measureScoreX]
  /// The measure score for this stratum, calculated as appropriate for the
  /// measure type and scoring method, and based on only the members of this
  /// stratum.
  final MeasureScoreXMeasureReportStratum? measureScoreX;

  /// Getter for [measureScoreQuantity] as a Quantity
  Quantity? get measureScoreQuantity => measureScoreX?.isAs<Quantity>();

  /// Getter for [measureScoreDateTime] as a FhirDateTime
  FhirDateTime? get measureScoreDateTime => measureScoreX?.isAs<FhirDateTime>();

  /// Getter for [measureScoreCodeableConcept] as a CodeableConcept
  CodeableConcept? get measureScoreCodeableConcept =>
      measureScoreX?.isAs<CodeableConcept>();

  /// Getter for [measureScorePeriod] as a Period
  Period? get measureScorePeriod => measureScoreX?.isAs<Period>();

  /// Getter for [measureScoreRange] as a Range
  Range? get measureScoreRange => measureScoreX?.isAs<Range>();

  /// Getter for [measureScoreDuration] as a FhirDuration
  FhirDuration? get measureScoreDuration => measureScoreX?.isAs<FhirDuration>();
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
    if (valueX != null) {
      final fhirType = valueX!.fhirType;
      addField(
        'value${fhirType.capitalize()}',
        valueX,
      );
    }

    addField(
      'component',
      component,
    );
    addField(
      'population',
      population,
    );
    if (measureScoreX != null) {
      final fhirType = measureScoreX!.fhirType;
      addField(
        'measureScore${fhirType.capitalize()}',
        measureScoreX,
      );
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
      'valueX',
      'component',
      'population',
      'measureScoreX',
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
        fields.add(valueX!);
      case 'valueX':
        fields.add(valueX!);
      case 'valueCodeableConcept':
        if (valueX is CodeableConcept) {
          fields.add(valueX!);
        }
      case 'valueBoolean':
        if (valueX is FhirBoolean) {
          fields.add(valueX!);
        }
      case 'valueQuantity':
        if (valueX is Quantity) {
          fields.add(valueX!);
        }
      case 'valueRange':
        if (valueX is Range) {
          fields.add(valueX!);
        }
      case 'valueReference':
        if (valueX is Reference) {
          fields.add(valueX!);
        }
      case 'component':
        if (component != null) {
          fields.addAll(component!);
        }
      case 'population':
        if (population != null) {
          fields.addAll(population!);
        }
      case 'measureScore':
        fields.add(measureScoreX!);
      case 'measureScoreX':
        fields.add(measureScoreX!);
      case 'measureScoreQuantity':
        if (measureScoreX is Quantity) {
          fields.add(measureScoreX!);
        }
      case 'measureScoreDateTime':
        if (measureScoreX is FhirDateTime) {
          fields.add(measureScoreX!);
        }
      case 'measureScoreCodeableConcept':
        if (measureScoreX is CodeableConcept) {
          fields.add(measureScoreX!);
        }
      case 'measureScorePeriod':
        if (measureScoreX is Period) {
          fields.add(measureScoreX!);
        }
      case 'measureScoreRange':
        if (measureScoreX is Range) {
          fields.add(measureScoreX!);
        }
      case 'measureScoreDuration':
        if (measureScoreX is FhirDuration) {
          fields.add(measureScoreX!);
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
  MeasureReportStratum clone() => copyWith();

  /// Copy function for [MeasureReportStratum]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MeasureReportStratumCopyWith<MeasureReportStratum> get copyWith =>
      _$MeasureReportStratumCopyWithImpl<MeasureReportStratum>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MeasureReportStratum) {
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
      valueX,
      o.valueX,
    )) {
      return false;
    }
    if (!listEquals<MeasureReportComponent>(
      component,
      o.component,
    )) {
      return false;
    }
    if (!listEquals<MeasureReportPopulation>(
      population,
      o.population,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      measureScoreX,
      o.measureScoreX,
    )) {
      return false;
    }
    return true;
  }
}

/// [MeasureReportComponent]
/// A stratifier component value.
class MeasureReportComponent extends BackboneElement {
  /// Primary constructor for
  /// [MeasureReportComponent]

  const MeasureReportComponent({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.linkId,
    required this.code,
    required this.valueX,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MeasureReportComponent.fromJson(
    Map<String, dynamic> json,
  ) {
    return MeasureReportComponent(
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
      )!,
      valueX: JsonParser.parsePolymorphic<ValueXMeasureReportComponent>(
        json,
        {
          'valueCodeableConcept': CodeableConcept.fromJson,
          'valueBoolean': FhirBoolean.fromJson,
          'valueQuantity': Quantity.fromJson,
          'valueRange': Range.fromJson,
          'valueReference': Reference.fromJson,
        },
      )!,
    );
  }

  /// Deserialize [MeasureReportComponent]
  /// from a [String] or [YamlMap] object
  factory MeasureReportComponent.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MeasureReportComponent.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MeasureReportComponent.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MeasureReportComponent '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MeasureReportComponent]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MeasureReportComponent.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MeasureReportComponent.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MeasureReportComponent';

  /// [linkId]
  /// The stratifier component from the Measure that corresponds to this
  /// stratifier component in the MeasureReport resource.
  final FhirString? linkId;

  /// [code]
  /// The code for the stratum component value.
  final CodeableConcept code;

  /// [valueX]
  /// The stratum component value.
  final ValueXMeasureReportComponent valueX;

  /// Getter for [valueCodeableConcept] as a CodeableConcept
  CodeableConcept? get valueCodeableConcept => valueX.isAs<CodeableConcept>();

  /// Getter for [valueBoolean] as a FhirBoolean
  FhirBoolean? get valueBoolean => valueX.isAs<FhirBoolean>();

  /// Getter for [valueQuantity] as a Quantity
  Quantity? get valueQuantity => valueX.isAs<Quantity>();

  /// Getter for [valueRange] as a Range
  Range? get valueRange => valueX.isAs<Range>();

  /// Getter for [valueReference] as a Reference
  Reference? get valueReference => valueX.isAs<Reference>();
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
    final valueXFhirType = valueX.fhirType;
    addField(
      'value${valueXFhirType.capitalize()}',
      valueX,
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
      'valueX',
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
        fields.add(code);
      case 'value':
        fields.add(valueX);
      case 'valueX':
        fields.add(valueX);
      case 'valueCodeableConcept':
        if (valueX is CodeableConcept) {
          fields.add(valueX);
        }
      case 'valueBoolean':
        if (valueX is FhirBoolean) {
          fields.add(valueX);
        }
      case 'valueQuantity':
        if (valueX is Quantity) {
          fields.add(valueX);
        }
      case 'valueRange':
        if (valueX is Range) {
          fields.add(valueX);
        }
      case 'valueReference':
        if (valueX is Reference) {
          fields.add(valueX);
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
  MeasureReportComponent clone() => copyWith();

  /// Copy function for [MeasureReportComponent]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MeasureReportComponentCopyWith<MeasureReportComponent> get copyWith =>
      _$MeasureReportComponentCopyWithImpl<MeasureReportComponent>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MeasureReportComponent) {
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
      valueX,
      o.valueX,
    )) {
      return false;
    }
    return true;
  }
}

/// [MeasureReportPopulation1]
/// The populations that make up the stratum, one for each type of
/// population appropriate to the measure.
class MeasureReportPopulation1 extends BackboneElement {
  /// Primary constructor for
  /// [MeasureReportPopulation1]

  const MeasureReportPopulation1({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.linkId,
    this.code,
    this.count,
    this.subjectResults,
    this.subjectReport,
    this.subjects,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MeasureReportPopulation1.fromJson(
    Map<String, dynamic> json,
  ) {
    return MeasureReportPopulation1(
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
      count: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'count',
        FhirInteger.fromJson,
      ),
      subjectResults: JsonParser.parseObject<Reference>(
        json,
        'subjectResults',
        Reference.fromJson,
      ),
      subjectReport: (json['subjectReport'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      subjects: JsonParser.parseObject<Reference>(
        json,
        'subjects',
        Reference.fromJson,
      ),
    );
  }

  /// Deserialize [MeasureReportPopulation1]
  /// from a [String] or [YamlMap] object
  factory MeasureReportPopulation1.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MeasureReportPopulation1.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MeasureReportPopulation1.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MeasureReportPopulation1 '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MeasureReportPopulation1]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MeasureReportPopulation1.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MeasureReportPopulation1.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MeasureReportPopulation1';

  /// [linkId]
  /// The population from the Measure that corresponds to this population in
  /// the MeasureReport resource.
  final FhirString? linkId;

  /// [code]
  /// The type of the population.
  final CodeableConcept? code;

  /// [count]
  /// The number of members of the population in this stratum.
  final FhirInteger? count;

  /// [subjectResults]
  /// This element refers to a List of individual level MeasureReport
  /// resources, one for each subject in this population in this stratum.
  final Reference? subjectResults;

  /// [subjectReport]
  /// A reference to an individual level MeasureReport resource for a member
  /// of the population.
  final List<Reference>? subjectReport;

  /// [subjects]
  /// Optional Group identifying the individuals that make up the population.
  final Reference? subjects;
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
      'count',
      count,
    );
    addField(
      'subjectResults',
      subjectResults,
    );
    addField(
      'subjectReport',
      subjectReport,
    );
    addField(
      'subjects',
      subjects,
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
      'count',
      'subjectResults',
      'subjectReport',
      'subjects',
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
      case 'count':
        if (count != null) {
          fields.add(count!);
        }
      case 'subjectResults':
        if (subjectResults != null) {
          fields.add(subjectResults!);
        }
      case 'subjectReport':
        if (subjectReport != null) {
          fields.addAll(subjectReport!);
        }
      case 'subjects':
        if (subjects != null) {
          fields.add(subjects!);
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
  MeasureReportPopulation1 clone() => copyWith();

  /// Copy function for [MeasureReportPopulation1]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MeasureReportPopulation1CopyWith<MeasureReportPopulation1> get copyWith =>
      _$MeasureReportPopulation1CopyWithImpl<MeasureReportPopulation1>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MeasureReportPopulation1) {
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
      count,
      o.count,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      subjectResults,
      o.subjectResults,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      subjectReport,
      o.subjectReport,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      subjects,
      o.subjects,
    )) {
      return false;
    }
    return true;
  }
}
