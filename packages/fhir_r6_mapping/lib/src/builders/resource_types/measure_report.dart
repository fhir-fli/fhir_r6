import 'dart:convert';
import 'package:fhir_r5/fhir_r5.dart'
    show
        MeasureReport,
        MeasureReportComponent,
        MeasureReportGroup,
        MeasureReportPopulation,
        MeasureReportPopulation1,
        MeasureReportStratifier,
        MeasureReportStratum,
        R5ResourceType,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r5_mapping/fhir_r5_mapping.dart';
import 'package:yaml/yaml.dart';

/// [MeasureReportBuilder]
/// The MeasureReport resource contains the results of the calculation of a
/// measure; and optionally a reference to the resources involved in that
/// calculation.
class MeasureReportBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [MeasureReportBuilder]

  MeasureReportBuilder({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.status,
    this.type,
    this.dataUpdateType,
    this.measure,
    this.subject,
    this.date,
    this.reporter,
    this.reportingVendor,
    this.location,
    this.period,
    this.inputParameters,
    this.scoring,
    this.improvementNotation,
    this.group,
    this.supplementalData,
    this.evaluatedResource,
  }) : super(
          objectPath: 'MeasureReport',
          resourceType: R5ResourceType.MeasureReport,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MeasureReportBuilder.empty() => MeasureReportBuilder(
        status: MeasureReportStatusBuilder.values.first,
        type: MeasureReportTypeBuilder.values.first,
        period: PeriodBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MeasureReportBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MeasureReport';
    return MeasureReportBuilder(
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
      status: JsonParser.parsePrimitive<MeasureReportStatusBuilder>(
        json,
        'status',
        MeasureReportStatusBuilder.fromJson,
        '$objectPath.status',
      ),
      type: JsonParser.parsePrimitive<MeasureReportTypeBuilder>(
        json,
        'type',
        MeasureReportTypeBuilder.fromJson,
        '$objectPath.type',
      ),
      dataUpdateType: JsonParser.parsePrimitive<SubmitDataUpdateTypeBuilder>(
        json,
        'dataUpdateType',
        SubmitDataUpdateTypeBuilder.fromJson,
        '$objectPath.dataUpdateType',
      ),
      measure: JsonParser.parsePrimitive<FhirCanonicalBuilder>(
        json,
        'measure',
        FhirCanonicalBuilder.fromJson,
        '$objectPath.measure',
      ),
      subject: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'subject',
        ReferenceBuilder.fromJson,
        '$objectPath.subject',
      ),
      date: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'date',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.date',
      ),
      reporter: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'reporter',
        ReferenceBuilder.fromJson,
        '$objectPath.reporter',
      ),
      reportingVendor: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'reportingVendor',
        ReferenceBuilder.fromJson,
        '$objectPath.reportingVendor',
      ),
      location: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'location',
        ReferenceBuilder.fromJson,
        '$objectPath.location',
      ),
      period: JsonParser.parseObject<PeriodBuilder>(
        json,
        'period',
        PeriodBuilder.fromJson,
        '$objectPath.period',
      ),
      inputParameters: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'inputParameters',
        ReferenceBuilder.fromJson,
        '$objectPath.inputParameters',
      ),
      scoring: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'scoring',
        CodeableConceptBuilder.fromJson,
        '$objectPath.scoring',
      ),
      improvementNotation: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'improvementNotation',
        CodeableConceptBuilder.fromJson,
        '$objectPath.improvementNotation',
      ),
      group: (json['group'] as List<dynamic>?)
          ?.map<MeasureReportGroupBuilder>(
            (v) => MeasureReportGroupBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.group',
              },
            ),
          )
          .toList(),
      supplementalData: (json['supplementalData'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.supplementalData',
              },
            ),
          )
          .toList(),
      evaluatedResource: (json['evaluatedResource'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.evaluatedResource',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [MeasureReportBuilder]
  /// from a [String] or [YamlMap] object
  factory MeasureReportBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MeasureReportBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MeasureReportBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MeasureReportBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MeasureReportBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MeasureReportBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MeasureReportBuilder.fromJson(json);
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
  List<IdentifierBuilder>? identifier;

  /// [status]
  /// The MeasureReport status. No data will be available until the
  /// MeasureReport status is complete.
  MeasureReportStatusBuilder? status;

  /// [type]
  /// The type of measure report. This may be an individual report, which
  /// provides the score for the measure for an individual member of the
  /// population; a subject-listing, which returns the list of members that
  /// meet the various criteria in the measure; a summary report, which
  /// returns a population count for each of the criteria in the measure; or
  /// a data-collection, which enables the MeasureReport to be used to
  /// exchange the data-of-interest for a quality measure.
  MeasureReportTypeBuilder? type;

  /// [dataUpdateType]
  /// Indicates whether the data submitted in a data-exchange report
  /// represents a snapshot or incremental update. A snapshot update replaces
  /// all previously submitted data for the receiver, whereas an incremental
  /// update represents only updated and/or changed data and should be
  /// applied as a differential update to the existing submitted data for the
  /// receiver.
  SubmitDataUpdateTypeBuilder? dataUpdateType;

  /// [measure]
  /// A reference to the Measure that was calculated to produce this report.
  FhirCanonicalBuilder? measure;

  /// [subject]
  /// Optional subject identifying the individual or individuals the report
  /// is for.
  ReferenceBuilder? subject;

  /// [date]
  /// The date this measure was calculated.
  FhirDateTimeBuilder? date;

  /// [reporter]
  /// The individual or organization that is reporting the data.
  ReferenceBuilder? reporter;

  /// [reportingVendor]
  /// A reference to the vendor who queried the data, calculated results
  /// and/or generated the report. The ‘reporting vendor’ is intended to
  /// represent the submitting entity when it is not the same as the
  /// reporting entity. This extension is used when the Receiver is
  /// interested in getting vendor information in the report.
  ReferenceBuilder? reportingVendor;

  /// [location]
  /// A reference to the location for which the data is being reported.
  ReferenceBuilder? location;

  /// [period]
  /// The reporting period for which the report was calculated.
  PeriodBuilder? period;

  /// [inputParameters]
  /// A reference to a Parameters resource (typically represented using a
  /// contained resource) that represents any input parameters that were
  /// provided to the operation that generated the report.
  ReferenceBuilder? inputParameters;

  /// [scoring]
  /// Indicates how the calculation is performed for the measure, including
  /// proportion, ratio, continuous-variable, and cohort. The value set is
  /// extensible, allowing additional measure scoring types to be
  /// represented. It is expected to be the same as the scoring element on
  /// the referenced Measure.
  CodeableConceptBuilder? scoring;

  /// [improvementNotation]
  /// Whether improvement in the measure is noted by an increase or decrease
  /// in the measure score.
  CodeableConceptBuilder? improvementNotation;

  /// [group]
  /// The results of the calculation, one for each population group in the
  /// measure.
  List<MeasureReportGroupBuilder>? group;

  /// [supplementalData]
  /// A reference to a Resource that represents additional information
  /// collected for the report. If the value of the supplemental data is not
  /// a Resource (i.e. evaluating the supplementalData expression for this
  /// case in the measure results in a value that is not a FHIR Resource), it
  /// is reported as a reference to a contained Observation resource.
  List<ReferenceBuilder>? supplementalData;

  /// [evaluatedResource]
  /// Evaluated resources are used to capture what data was involved in the
  /// calculation of a measure. This usage is only allowed for individual
  /// reports to ensure that the size of the MeasureReport resource is
  /// bounded.
  List<ReferenceBuilder>? evaluatedResource;

  /// Converts a [MeasureReportBuilder]
  /// to [MeasureReport]
  @override
  MeasureReport build() => MeasureReport.fromJson(toJson());

  /// Converts a [MeasureReportBuilder]
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
    addField('identifier', identifier);
    addField('status', status);
    addField('type', type);
    addField('dataUpdateType', dataUpdateType);
    addField('measure', measure);
    addField('subject', subject);
    addField('date', date);
    addField('reporter', reporter);
    addField('reportingVendor', reportingVendor);
    addField('location', location);
    addField('period', period);
    addField('inputParameters', inputParameters);
    addField('scoring', scoring);
    addField('improvementNotation', improvementNotation);
    addField('group', group);
    addField('supplementalData', supplementalData);
    addField('evaluatedResource', evaluatedResource);
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
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
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
        if (period != null) {
          fields.add(period!);
        }
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
      case 'status':
        {
          if (child is MeasureReportStatusBuilder) {
            status = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = MeasureReportStatusBuilder(stringValue);
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
      case 'type':
        {
          if (child is MeasureReportTypeBuilder) {
            type = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = MeasureReportTypeBuilder(stringValue);
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
      case 'dataUpdateType':
        {
          if (child is SubmitDataUpdateTypeBuilder) {
            dataUpdateType = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = SubmitDataUpdateTypeBuilder(stringValue);
                dataUpdateType = converted;
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
      case 'measure':
        {
          if (child is FhirCanonicalBuilder) {
            measure = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirCanonicalBuilder.tryParse(stringValue);
              if (converted != null) {
                measure = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'subject':
        {
          if (child is ReferenceBuilder) {
            subject = child;
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
      case 'reporter':
        {
          if (child is ReferenceBuilder) {
            reporter = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'reportingVendor':
        {
          if (child is ReferenceBuilder) {
            reportingVendor = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'location':
        {
          if (child is ReferenceBuilder) {
            location = child;
            return;
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
      case 'inputParameters':
        {
          if (child is ReferenceBuilder) {
            inputParameters = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'scoring':
        {
          if (child is CodeableConceptBuilder) {
            scoring = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'improvementNotation':
        {
          if (child is CodeableConceptBuilder) {
            improvementNotation = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'group':
        {
          if (child is List<MeasureReportGroupBuilder>) {
            // Replace or create new list
            group = child;
            return;
          } else if (child is MeasureReportGroupBuilder) {
            // Add single element to existing list or create new list
            group = [
              ...(group ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'supplementalData':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            supplementalData = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            supplementalData = [
              ...(supplementalData ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'evaluatedResource':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            evaluatedResource = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            evaluatedResource = [
              ...(evaluatedResource ?? []),
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
      case 'identifier':
        return ['IdentifierBuilder'];
      case 'status':
        return ['FhirCodeEnumBuilder'];
      case 'type':
        return ['FhirCodeEnumBuilder'];
      case 'dataUpdateType':
        return ['FhirCodeEnumBuilder'];
      case 'measure':
        return ['FhirCanonicalBuilder'];
      case 'subject':
        return ['ReferenceBuilder'];
      case 'date':
        return ['FhirDateTimeBuilder'];
      case 'reporter':
        return ['ReferenceBuilder'];
      case 'reportingVendor':
        return ['ReferenceBuilder'];
      case 'location':
        return ['ReferenceBuilder'];
      case 'period':
        return ['PeriodBuilder'];
      case 'inputParameters':
        return ['ReferenceBuilder'];
      case 'scoring':
        return ['CodeableConceptBuilder'];
      case 'improvementNotation':
        return ['CodeableConceptBuilder'];
      case 'group':
        return ['MeasureReportGroupBuilder'];
      case 'supplementalData':
        return ['ReferenceBuilder'];
      case 'evaluatedResource':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MeasureReportBuilder]
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
      case 'identifier':
        {
          identifier = <IdentifierBuilder>[];
          return;
        }
      case 'status':
        {
          status = MeasureReportStatusBuilder.empty();
          return;
        }
      case 'type':
        {
          type = MeasureReportTypeBuilder.empty();
          return;
        }
      case 'dataUpdateType':
        {
          dataUpdateType = SubmitDataUpdateTypeBuilder.empty();
          return;
        }
      case 'measure':
        {
          measure = FhirCanonicalBuilder.empty();
          return;
        }
      case 'subject':
        {
          subject = ReferenceBuilder.empty();
          return;
        }
      case 'date':
        {
          date = FhirDateTimeBuilder.empty();
          return;
        }
      case 'reporter':
        {
          reporter = ReferenceBuilder.empty();
          return;
        }
      case 'reportingVendor':
        {
          reportingVendor = ReferenceBuilder.empty();
          return;
        }
      case 'location':
        {
          location = ReferenceBuilder.empty();
          return;
        }
      case 'period':
        {
          period = PeriodBuilder.empty();
          return;
        }
      case 'inputParameters':
        {
          inputParameters = ReferenceBuilder.empty();
          return;
        }
      case 'scoring':
        {
          scoring = CodeableConceptBuilder.empty();
          return;
        }
      case 'improvementNotation':
        {
          improvementNotation = CodeableConceptBuilder.empty();
          return;
        }
      case 'group':
        {
          group = <MeasureReportGroupBuilder>[];
          return;
        }
      case 'supplementalData':
        {
          supplementalData = <ReferenceBuilder>[];
          return;
        }
      case 'evaluatedResource':
        {
          evaluatedResource = <ReferenceBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MeasureReportBuilder clone() => throw UnimplementedError();
  @override
  MeasureReportBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    AllLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    MeasureReportStatusBuilder? status,
    MeasureReportTypeBuilder? type,
    SubmitDataUpdateTypeBuilder? dataUpdateType,
    FhirCanonicalBuilder? measure,
    ReferenceBuilder? subject,
    FhirDateTimeBuilder? date,
    ReferenceBuilder? reporter,
    ReferenceBuilder? reportingVendor,
    ReferenceBuilder? location,
    PeriodBuilder? period,
    ReferenceBuilder? inputParameters,
    CodeableConceptBuilder? scoring,
    CodeableConceptBuilder? improvementNotation,
    List<MeasureReportGroupBuilder>? group,
    List<ReferenceBuilder>? supplementalData,
    List<ReferenceBuilder>? evaluatedResource,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = MeasureReportBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      status: status ?? this.status,
      type: type ?? this.type,
      dataUpdateType: dataUpdateType ?? this.dataUpdateType,
      measure: measure ?? this.measure,
      subject: subject ?? this.subject,
      date: date ?? this.date,
      reporter: reporter ?? this.reporter,
      reportingVendor: reportingVendor ?? this.reportingVendor,
      location: location ?? this.location,
      period: period ?? this.period,
      inputParameters: inputParameters ?? this.inputParameters,
      scoring: scoring ?? this.scoring,
      improvementNotation: improvementNotation ?? this.improvementNotation,
      group: group ?? this.group,
      supplementalData: supplementalData ?? this.supplementalData,
      evaluatedResource: evaluatedResource ?? this.evaluatedResource,
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
    if (o is! MeasureReportBuilder) {
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
    if (!listEquals<IdentifierBuilder>(
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
    if (!listEquals<MeasureReportGroupBuilder>(
      group,
      o.group,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      supplementalData,
      o.supplementalData,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      evaluatedResource,
      o.evaluatedResource,
    )) {
      return false;
    }
    return true;
  }
}

/// [MeasureReportGroupBuilder]
/// The results of the calculation, one for each population group in the
/// measure.
class MeasureReportGroupBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MeasureReportGroupBuilder]

  MeasureReportGroupBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.linkId,
    this.code,
    this.subject,
    this.population,
    MeasureScoreXMeasureReportGroupBuilder? measureScoreX,
    QuantityBuilder? measureScoreQuantity,
    FhirDateTimeBuilder? measureScoreDateTime,
    CodeableConceptBuilder? measureScoreCodeableConcept,
    PeriodBuilder? measureScorePeriod,
    RangeBuilder? measureScoreRange,
    FhirDurationBuilder? measureScoreDuration,
    this.stratifier,
    super.disallowExtensions,
  })  : measureScoreX = measureScoreX ??
            measureScoreQuantity ??
            measureScoreDateTime ??
            measureScoreCodeableConcept ??
            measureScorePeriod ??
            measureScoreRange ??
            measureScoreDuration,
        super(
          objectPath: 'MeasureReport.group',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MeasureReportGroupBuilder.empty() => MeasureReportGroupBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MeasureReportGroupBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MeasureReport.group';
    return MeasureReportGroupBuilder(
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
      linkId: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'linkId',
        FhirStringBuilder.fromJson,
        '$objectPath.linkId',
      ),
      code: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'code',
        CodeableConceptBuilder.fromJson,
        '$objectPath.code',
      ),
      subject: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'subject',
        ReferenceBuilder.fromJson,
        '$objectPath.subject',
      ),
      population: (json['population'] as List<dynamic>?)
          ?.map<MeasureReportPopulationBuilder>(
            (v) => MeasureReportPopulationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.population',
              },
            ),
          )
          .toList(),
      measureScoreX:
          JsonParser.parsePolymorphic<MeasureScoreXMeasureReportGroupBuilder>(
        json,
        {
          'measureScoreQuantity': QuantityBuilder.fromJson,
          'measureScoreDateTime': FhirDateTimeBuilder.fromJson,
          'measureScoreCodeableConcept': CodeableConceptBuilder.fromJson,
          'measureScorePeriod': PeriodBuilder.fromJson,
          'measureScoreRange': RangeBuilder.fromJson,
          'measureScoreDuration': FhirDurationBuilder.fromJson,
        },
        objectPath,
      ),
      stratifier: (json['stratifier'] as List<dynamic>?)
          ?.map<MeasureReportStratifierBuilder>(
            (v) => MeasureReportStratifierBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.stratifier',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [MeasureReportGroupBuilder]
  /// from a [String] or [YamlMap] object
  factory MeasureReportGroupBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MeasureReportGroupBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MeasureReportGroupBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MeasureReportGroupBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MeasureReportGroupBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MeasureReportGroupBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MeasureReportGroupBuilder.fromJson(json);
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
  FhirStringBuilder? linkId;

  /// [code]
  /// The meaning of the population group as defined in the measure
  /// definition.
  CodeableConceptBuilder? code;

  /// [subject]
  /// Optional subject identifying the individual or individuals the report
  /// is for.
  ReferenceBuilder? subject;

  /// [population]
  /// The populations that make up the population group, one for each type of
  /// population appropriate for the measure.
  List<MeasureReportPopulationBuilder>? population;

  /// [measureScoreX]
  /// The measure score for this population group, calculated as appropriate
  /// for the measure type and scoring method, and based on the contents of
  /// the populations defined in the group.
  MeasureScoreXMeasureReportGroupBuilder? measureScoreX;

  /// Getter for [measureScoreQuantity] as a QuantityBuilder
  QuantityBuilder? get measureScoreQuantity =>
      measureScoreX?.isAs<QuantityBuilder>();

  /// Getter for [measureScoreDateTime] as a FhirDateTimeBuilder
  FhirDateTimeBuilder? get measureScoreDateTime =>
      measureScoreX?.isAs<FhirDateTimeBuilder>();

  /// Getter for [measureScoreCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get measureScoreCodeableConcept =>
      measureScoreX?.isAs<CodeableConceptBuilder>();

  /// Getter for [measureScorePeriod] as a PeriodBuilder
  PeriodBuilder? get measureScorePeriod => measureScoreX?.isAs<PeriodBuilder>();

  /// Getter for [measureScoreRange] as a RangeBuilder
  RangeBuilder? get measureScoreRange => measureScoreX?.isAs<RangeBuilder>();

  /// Getter for [measureScoreDuration] as a FhirDurationBuilder
  FhirDurationBuilder? get measureScoreDuration =>
      measureScoreX?.isAs<FhirDurationBuilder>();

  /// [stratifier]
  /// When a measure includes multiple stratifiers, there will be a
  /// stratifier group for each stratifier defined by the measure.
  List<MeasureReportStratifierBuilder>? stratifier;

  /// Converts a [MeasureReportGroupBuilder]
  /// to [MeasureReportGroup]
  @override
  MeasureReportGroup build() => MeasureReportGroup.fromJson(toJson());

  /// Converts a [MeasureReportGroupBuilder]
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
    addField('linkId', linkId);
    addField('code', code);
    addField('subject', subject);
    addField('population', population);
    if (measureScoreX != null) {
      final fhirType = measureScoreX!.fhirType;
      addField(
        'measureScore${fhirType.capitalizeFirstLetter()}',
        measureScoreX,
      );
    }

    addField('stratifier', stratifier);
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
        if (measureScoreX != null) {
          fields.add(measureScoreX!);
        }
      case 'measureScoreX':
        if (measureScoreX != null) {
          fields.add(measureScoreX!);
        }
      case 'measureScoreQuantity':
        if (measureScoreX is QuantityBuilder) {
          fields.add(measureScoreX!);
        }
      case 'measureScoreDateTime':
        if (measureScoreX is FhirDateTimeBuilder) {
          fields.add(measureScoreX!);
        }
      case 'measureScoreCodeableConcept':
        if (measureScoreX is CodeableConceptBuilder) {
          fields.add(measureScoreX!);
        }
      case 'measureScorePeriod':
        if (measureScoreX is PeriodBuilder) {
          fields.add(measureScoreX!);
        }
      case 'measureScoreRange':
        if (measureScoreX is RangeBuilder) {
          fields.add(measureScoreX!);
        }
      case 'measureScoreDuration':
        if (measureScoreX is FhirDurationBuilder) {
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
      case 'linkId':
        {
          if (child is FhirStringBuilder) {
            linkId = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                linkId = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'code':
        {
          if (child is CodeableConceptBuilder) {
            code = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'subject':
        {
          if (child is ReferenceBuilder) {
            subject = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'population':
        {
          if (child is List<MeasureReportPopulationBuilder>) {
            // Replace or create new list
            population = child;
            return;
          } else if (child is MeasureReportPopulationBuilder) {
            // Add single element to existing list or create new list
            population = [
              ...(population ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'measureScore':
      case 'measureScoreX':
        {
          if (child is MeasureScoreXMeasureReportGroupBuilder) {
            measureScoreX = child;
            return;
          } else {
            if (child is QuantityBuilder) {
              measureScoreX = child;
              return;
            }
            if (child is FhirDateTimeBuilder) {
              measureScoreX = child;
              return;
            }
            if (child is CodeableConceptBuilder) {
              measureScoreX = child;
              return;
            }
            if (child is PeriodBuilder) {
              measureScoreX = child;
              return;
            }
            if (child is RangeBuilder) {
              measureScoreX = child;
              return;
            }
            if (child is FhirDurationBuilder) {
              measureScoreX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'measureScoreQuantity':
        {
          if (child is QuantityBuilder) {
            measureScoreX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'measureScoreDateTime':
        {
          if (child is FhirDateTimeBuilder) {
            measureScoreX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'measureScoreCodeableConcept':
        {
          if (child is CodeableConceptBuilder) {
            measureScoreX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'measureScorePeriod':
        {
          if (child is PeriodBuilder) {
            measureScoreX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'measureScoreRange':
        {
          if (child is RangeBuilder) {
            measureScoreX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'measureScoreDuration':
        {
          if (child is FhirDurationBuilder) {
            measureScoreX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'stratifier':
        {
          if (child is List<MeasureReportStratifierBuilder>) {
            // Replace or create new list
            stratifier = child;
            return;
          } else if (child is MeasureReportStratifierBuilder) {
            // Add single element to existing list or create new list
            stratifier = [
              ...(stratifier ?? []),
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
      case 'linkId':
        return ['FhirStringBuilder'];
      case 'code':
        return ['CodeableConceptBuilder'];
      case 'subject':
        return ['ReferenceBuilder'];
      case 'population':
        return ['MeasureReportPopulationBuilder'];
      case 'measureScore':
      case 'measureScoreX':
        return [
          'QuantityBuilder',
          'FhirDateTimeBuilder',
          'CodeableConceptBuilder',
          'PeriodBuilder',
          'RangeBuilder',
          'FhirDurationBuilder',
        ];
      case 'measureScoreQuantity':
        return ['QuantityBuilder'];
      case 'measureScoreDateTime':
        return ['FhirDateTimeBuilder'];
      case 'measureScoreCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'measureScorePeriod':
        return ['PeriodBuilder'];
      case 'measureScoreRange':
        return ['RangeBuilder'];
      case 'measureScoreDuration':
        return ['FhirDurationBuilder'];
      case 'stratifier':
        return ['MeasureReportStratifierBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MeasureReportGroupBuilder]
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
      case 'linkId':
        {
          linkId = FhirStringBuilder.empty();
          return;
        }
      case 'code':
        {
          code = CodeableConceptBuilder.empty();
          return;
        }
      case 'subject':
        {
          subject = ReferenceBuilder.empty();
          return;
        }
      case 'population':
        {
          population = <MeasureReportPopulationBuilder>[];
          return;
        }
      case 'measureScore':
      case 'measureScoreX':
      case 'measureScoreQuantity':
        {
          measureScoreX = QuantityBuilder.empty();
          return;
        }
      case 'measureScoreDateTime':
        {
          measureScoreX = FhirDateTimeBuilder.empty();
          return;
        }
      case 'measureScoreCodeableConcept':
        {
          measureScoreX = CodeableConceptBuilder.empty();
          return;
        }
      case 'measureScorePeriod':
        {
          measureScoreX = PeriodBuilder.empty();
          return;
        }
      case 'measureScoreRange':
        {
          measureScoreX = RangeBuilder.empty();
          return;
        }
      case 'measureScoreDuration':
        {
          measureScoreX = FhirDurationBuilder.empty();
          return;
        }
      case 'stratifier':
        {
          stratifier = <MeasureReportStratifierBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MeasureReportGroupBuilder clone() => throw UnimplementedError();
  @override
  MeasureReportGroupBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? linkId,
    CodeableConceptBuilder? code,
    ReferenceBuilder? subject,
    List<MeasureReportPopulationBuilder>? population,
    MeasureScoreXMeasureReportGroupBuilder? measureScoreX,
    List<MeasureReportStratifierBuilder>? stratifier,
    QuantityBuilder? measureScoreQuantity,
    FhirDateTimeBuilder? measureScoreDateTime,
    CodeableConceptBuilder? measureScoreCodeableConcept,
    PeriodBuilder? measureScorePeriod,
    RangeBuilder? measureScoreRange,
    FhirDurationBuilder? measureScoreDuration,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MeasureReportGroupBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      linkId: linkId ?? this.linkId,
      code: code ?? this.code,
      subject: subject ?? this.subject,
      population: population ?? this.population,
      measureScoreX: measureScoreX ??
          measureScoreQuantity ??
          measureScoreDateTime ??
          measureScoreCodeableConcept ??
          measureScorePeriod ??
          measureScoreRange ??
          measureScoreDuration ??
          this.measureScoreX,
      stratifier: stratifier ?? this.stratifier,
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
    if (o is! MeasureReportGroupBuilder) {
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
    if (!listEquals<MeasureReportPopulationBuilder>(
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
    if (!listEquals<MeasureReportStratifierBuilder>(
      stratifier,
      o.stratifier,
    )) {
      return false;
    }
    return true;
  }
}

/// [MeasureReportPopulationBuilder]
/// The populations that make up the population group, one for each type of
/// population appropriate for the measure.
class MeasureReportPopulationBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MeasureReportPopulationBuilder]

  MeasureReportPopulationBuilder({
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
  }) : super(
          objectPath: 'MeasureReport.group.population',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MeasureReportPopulationBuilder.empty() =>
      MeasureReportPopulationBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MeasureReportPopulationBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MeasureReport.group.population';
    return MeasureReportPopulationBuilder(
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
      linkId: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'linkId',
        FhirStringBuilder.fromJson,
        '$objectPath.linkId',
      ),
      code: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'code',
        CodeableConceptBuilder.fromJson,
        '$objectPath.code',
      ),
      count: JsonParser.parsePrimitive<FhirIntegerBuilder>(
        json,
        'count',
        FhirIntegerBuilder.fromJson,
        '$objectPath.count',
      ),
      subjectResults: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'subjectResults',
        ReferenceBuilder.fromJson,
        '$objectPath.subjectResults',
      ),
      subjectReport: (json['subjectReport'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.subjectReport',
              },
            ),
          )
          .toList(),
      subjects: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'subjects',
        ReferenceBuilder.fromJson,
        '$objectPath.subjects',
      ),
    );
  }

  /// Deserialize [MeasureReportPopulationBuilder]
  /// from a [String] or [YamlMap] object
  factory MeasureReportPopulationBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MeasureReportPopulationBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MeasureReportPopulationBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MeasureReportPopulationBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MeasureReportPopulationBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MeasureReportPopulationBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MeasureReportPopulationBuilder.fromJson(json);
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
  FhirStringBuilder? linkId;

  /// [code]
  /// The type of the population.
  CodeableConceptBuilder? code;

  /// [count]
  /// The number of members of the population.
  FhirIntegerBuilder? count;

  /// [subjectResults]
  /// This element refers to a List of individual level MeasureReport
  /// resources, one for each subject in this population.
  ReferenceBuilder? subjectResults;

  /// [subjectReport]
  /// A reference to an individual level MeasureReport resource for a member
  /// of the population.
  List<ReferenceBuilder>? subjectReport;

  /// [subjects]
  /// Optional Group identifying the individuals that make up the population.
  ReferenceBuilder? subjects;

  /// Converts a [MeasureReportPopulationBuilder]
  /// to [MeasureReportPopulation]
  @override
  MeasureReportPopulation build() => MeasureReportPopulation.fromJson(toJson());

  /// Converts a [MeasureReportPopulationBuilder]
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
    addField('linkId', linkId);
    addField('code', code);
    addField('count', count);
    addField('subjectResults', subjectResults);
    addField('subjectReport', subjectReport);
    addField('subjects', subjects);
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
      case 'linkId':
        {
          if (child is FhirStringBuilder) {
            linkId = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                linkId = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'code':
        {
          if (child is CodeableConceptBuilder) {
            code = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'count':
        {
          if (child is FhirIntegerBuilder) {
            count = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirIntegerBuilder.tryParse(numValue);
                if (converted != null) {
                  count = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'subjectResults':
        {
          if (child is ReferenceBuilder) {
            subjectResults = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'subjectReport':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            subjectReport = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            subjectReport = [
              ...(subjectReport ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'subjects':
        {
          if (child is ReferenceBuilder) {
            subjects = child;
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
      case 'linkId':
        return ['FhirStringBuilder'];
      case 'code':
        return ['CodeableConceptBuilder'];
      case 'count':
        return ['FhirIntegerBuilder'];
      case 'subjectResults':
        return ['ReferenceBuilder'];
      case 'subjectReport':
        return ['ReferenceBuilder'];
      case 'subjects':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MeasureReportPopulationBuilder]
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
      case 'linkId':
        {
          linkId = FhirStringBuilder.empty();
          return;
        }
      case 'code':
        {
          code = CodeableConceptBuilder.empty();
          return;
        }
      case 'count':
        {
          count = FhirIntegerBuilder.empty();
          return;
        }
      case 'subjectResults':
        {
          subjectResults = ReferenceBuilder.empty();
          return;
        }
      case 'subjectReport':
        {
          subjectReport = <ReferenceBuilder>[];
          return;
        }
      case 'subjects':
        {
          subjects = ReferenceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MeasureReportPopulationBuilder clone() => throw UnimplementedError();
  @override
  MeasureReportPopulationBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? linkId,
    CodeableConceptBuilder? code,
    FhirIntegerBuilder? count,
    ReferenceBuilder? subjectResults,
    List<ReferenceBuilder>? subjectReport,
    ReferenceBuilder? subjects,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MeasureReportPopulationBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      linkId: linkId ?? this.linkId,
      code: code ?? this.code,
      count: count ?? this.count,
      subjectResults: subjectResults ?? this.subjectResults,
      subjectReport: subjectReport ?? this.subjectReport,
      subjects: subjects ?? this.subjects,
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
    if (o is! MeasureReportPopulationBuilder) {
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
    if (!listEquals<ReferenceBuilder>(
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

/// [MeasureReportStratifierBuilder]
/// When a measure includes multiple stratifiers, there will be a
/// stratifier group for each stratifier defined by the measure.
class MeasureReportStratifierBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MeasureReportStratifierBuilder]

  MeasureReportStratifierBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.linkId,
    this.code,
    this.stratum,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MeasureReport.group.stratifier',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MeasureReportStratifierBuilder.empty() =>
      MeasureReportStratifierBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MeasureReportStratifierBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MeasureReport.group.stratifier';
    return MeasureReportStratifierBuilder(
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
      linkId: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'linkId',
        FhirStringBuilder.fromJson,
        '$objectPath.linkId',
      ),
      code: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'code',
        CodeableConceptBuilder.fromJson,
        '$objectPath.code',
      ),
      stratum: (json['stratum'] as List<dynamic>?)
          ?.map<MeasureReportStratumBuilder>(
            (v) => MeasureReportStratumBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.stratum',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [MeasureReportStratifierBuilder]
  /// from a [String] or [YamlMap] object
  factory MeasureReportStratifierBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MeasureReportStratifierBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MeasureReportStratifierBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MeasureReportStratifierBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MeasureReportStratifierBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MeasureReportStratifierBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MeasureReportStratifierBuilder.fromJson(json);
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
  FhirStringBuilder? linkId;

  /// [code]
  /// The meaning of this stratifier, as defined in the measure definition.
  CodeableConceptBuilder? code;

  /// [stratum]
  /// This element contains the results for a single stratum within the
  /// stratifier. For example, when stratifying on administrative gender,
  /// there will be four strata, one for each possible gender value.
  List<MeasureReportStratumBuilder>? stratum;

  /// Converts a [MeasureReportStratifierBuilder]
  /// to [MeasureReportStratifier]
  @override
  MeasureReportStratifier build() => MeasureReportStratifier.fromJson(toJson());

  /// Converts a [MeasureReportStratifierBuilder]
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
    addField('linkId', linkId);
    addField('code', code);
    addField('stratum', stratum);
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
      case 'linkId':
        {
          if (child is FhirStringBuilder) {
            linkId = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                linkId = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'code':
        {
          if (child is CodeableConceptBuilder) {
            code = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'stratum':
        {
          if (child is List<MeasureReportStratumBuilder>) {
            // Replace or create new list
            stratum = child;
            return;
          } else if (child is MeasureReportStratumBuilder) {
            // Add single element to existing list or create new list
            stratum = [
              ...(stratum ?? []),
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
      case 'linkId':
        return ['FhirStringBuilder'];
      case 'code':
        return ['CodeableConceptBuilder'];
      case 'stratum':
        return ['MeasureReportStratumBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MeasureReportStratifierBuilder]
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
      case 'linkId':
        {
          linkId = FhirStringBuilder.empty();
          return;
        }
      case 'code':
        {
          code = CodeableConceptBuilder.empty();
          return;
        }
      case 'stratum':
        {
          stratum = <MeasureReportStratumBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MeasureReportStratifierBuilder clone() => throw UnimplementedError();
  @override
  MeasureReportStratifierBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? linkId,
    CodeableConceptBuilder? code,
    List<MeasureReportStratumBuilder>? stratum,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MeasureReportStratifierBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      linkId: linkId ?? this.linkId,
      code: code ?? this.code,
      stratum: stratum ?? this.stratum,
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
    if (o is! MeasureReportStratifierBuilder) {
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
    if (!listEquals<MeasureReportStratumBuilder>(
      stratum,
      o.stratum,
    )) {
      return false;
    }
    return true;
  }
}

/// [MeasureReportStratumBuilder]
/// This element contains the results for a single stratum within the
/// stratifier. For example, when stratifying on administrative gender,
/// there will be four strata, one for each possible gender value.
class MeasureReportStratumBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MeasureReportStratumBuilder]

  MeasureReportStratumBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    ValueXMeasureReportStratumBuilder? valueX,
    CodeableConceptBuilder? valueCodeableConcept,
    FhirBooleanBuilder? valueBoolean,
    QuantityBuilder? valueQuantity,
    RangeBuilder? valueRange,
    ReferenceBuilder? valueReference,
    this.component,
    this.population,
    MeasureScoreXMeasureReportStratumBuilder? measureScoreX,
    QuantityBuilder? measureScoreQuantity,
    FhirDateTimeBuilder? measureScoreDateTime,
    CodeableConceptBuilder? measureScoreCodeableConcept,
    PeriodBuilder? measureScorePeriod,
    RangeBuilder? measureScoreRange,
    FhirDurationBuilder? measureScoreDuration,
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
        super(
          objectPath: 'MeasureReport.group.stratifier.stratum',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MeasureReportStratumBuilder.empty() => MeasureReportStratumBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MeasureReportStratumBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MeasureReport.group.stratifier.stratum';
    return MeasureReportStratumBuilder(
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
      valueX: JsonParser.parsePolymorphic<ValueXMeasureReportStratumBuilder>(
        json,
        {
          'valueCodeableConcept': CodeableConceptBuilder.fromJson,
          'valueBoolean': FhirBooleanBuilder.fromJson,
          'valueQuantity': QuantityBuilder.fromJson,
          'valueRange': RangeBuilder.fromJson,
          'valueReference': ReferenceBuilder.fromJson,
        },
        objectPath,
      ),
      component: (json['component'] as List<dynamic>?)
          ?.map<MeasureReportComponentBuilder>(
            (v) => MeasureReportComponentBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.component',
              },
            ),
          )
          .toList(),
      population: (json['population'] as List<dynamic>?)
          ?.map<MeasureReportPopulationBuilder>(
            (v) => MeasureReportPopulationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.population',
              },
            ),
          )
          .toList(),
      measureScoreX:
          JsonParser.parsePolymorphic<MeasureScoreXMeasureReportStratumBuilder>(
        json,
        {
          'measureScoreQuantity': QuantityBuilder.fromJson,
          'measureScoreDateTime': FhirDateTimeBuilder.fromJson,
          'measureScoreCodeableConcept': CodeableConceptBuilder.fromJson,
          'measureScorePeriod': PeriodBuilder.fromJson,
          'measureScoreRange': RangeBuilder.fromJson,
          'measureScoreDuration': FhirDurationBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [MeasureReportStratumBuilder]
  /// from a [String] or [YamlMap] object
  factory MeasureReportStratumBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MeasureReportStratumBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MeasureReportStratumBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MeasureReportStratumBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MeasureReportStratumBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MeasureReportStratumBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MeasureReportStratumBuilder.fromJson(json);
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
  ValueXMeasureReportStratumBuilder? valueX;

  /// Getter for [valueCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get valueCodeableConcept =>
      valueX?.isAs<CodeableConceptBuilder>();

  /// Getter for [valueBoolean] as a FhirBooleanBuilder
  FhirBooleanBuilder? get valueBoolean => valueX?.isAs<FhirBooleanBuilder>();

  /// Getter for [valueQuantity] as a QuantityBuilder
  QuantityBuilder? get valueQuantity => valueX?.isAs<QuantityBuilder>();

  /// Getter for [valueRange] as a RangeBuilder
  RangeBuilder? get valueRange => valueX?.isAs<RangeBuilder>();

  /// Getter for [valueReference] as a ReferenceBuilder
  ReferenceBuilder? get valueReference => valueX?.isAs<ReferenceBuilder>();

  /// [component]
  /// A stratifier component value.
  List<MeasureReportComponentBuilder>? component;

  /// [population]
  /// The populations that make up the stratum, one for each type of
  /// population appropriate to the measure.
  List<MeasureReportPopulationBuilder>? population;

  /// [measureScoreX]
  /// The measure score for this stratum, calculated as appropriate for the
  /// measure type and scoring method, and based on only the members of this
  /// stratum.
  MeasureScoreXMeasureReportStratumBuilder? measureScoreX;

  /// Getter for [measureScoreQuantity] as a QuantityBuilder
  QuantityBuilder? get measureScoreQuantity =>
      measureScoreX?.isAs<QuantityBuilder>();

  /// Getter for [measureScoreDateTime] as a FhirDateTimeBuilder
  FhirDateTimeBuilder? get measureScoreDateTime =>
      measureScoreX?.isAs<FhirDateTimeBuilder>();

  /// Getter for [measureScoreCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get measureScoreCodeableConcept =>
      measureScoreX?.isAs<CodeableConceptBuilder>();

  /// Getter for [measureScorePeriod] as a PeriodBuilder
  PeriodBuilder? get measureScorePeriod => measureScoreX?.isAs<PeriodBuilder>();

  /// Getter for [measureScoreRange] as a RangeBuilder
  RangeBuilder? get measureScoreRange => measureScoreX?.isAs<RangeBuilder>();

  /// Getter for [measureScoreDuration] as a FhirDurationBuilder
  FhirDurationBuilder? get measureScoreDuration =>
      measureScoreX?.isAs<FhirDurationBuilder>();

  /// Converts a [MeasureReportStratumBuilder]
  /// to [MeasureReportStratum]
  @override
  MeasureReportStratum build() => MeasureReportStratum.fromJson(toJson());

  /// Converts a [MeasureReportStratumBuilder]
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
    if (valueX != null) {
      final fhirType = valueX!.fhirType;
      addField('value${fhirType.capitalizeFirstLetter()}', valueX);
    }

    addField('component', component);
    addField('population', population);
    if (measureScoreX != null) {
      final fhirType = measureScoreX!.fhirType;
      addField(
        'measureScore${fhirType.capitalizeFirstLetter()}',
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
      case 'value':
        if (valueX != null) {
          fields.add(valueX!);
        }
      case 'valueX':
        if (valueX != null) {
          fields.add(valueX!);
        }
      case 'valueCodeableConcept':
        if (valueX is CodeableConceptBuilder) {
          fields.add(valueX!);
        }
      case 'valueBoolean':
        if (valueX is FhirBooleanBuilder) {
          fields.add(valueX!);
        }
      case 'valueQuantity':
        if (valueX is QuantityBuilder) {
          fields.add(valueX!);
        }
      case 'valueRange':
        if (valueX is RangeBuilder) {
          fields.add(valueX!);
        }
      case 'valueReference':
        if (valueX is ReferenceBuilder) {
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
        if (measureScoreX != null) {
          fields.add(measureScoreX!);
        }
      case 'measureScoreX':
        if (measureScoreX != null) {
          fields.add(measureScoreX!);
        }
      case 'measureScoreQuantity':
        if (measureScoreX is QuantityBuilder) {
          fields.add(measureScoreX!);
        }
      case 'measureScoreDateTime':
        if (measureScoreX is FhirDateTimeBuilder) {
          fields.add(measureScoreX!);
        }
      case 'measureScoreCodeableConcept':
        if (measureScoreX is CodeableConceptBuilder) {
          fields.add(measureScoreX!);
        }
      case 'measureScorePeriod':
        if (measureScoreX is PeriodBuilder) {
          fields.add(measureScoreX!);
        }
      case 'measureScoreRange':
        if (measureScoreX is RangeBuilder) {
          fields.add(measureScoreX!);
        }
      case 'measureScoreDuration':
        if (measureScoreX is FhirDurationBuilder) {
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
      case 'value':
      case 'valueX':
        {
          if (child is ValueXMeasureReportStratumBuilder) {
            valueX = child;
            return;
          } else {
            if (child is CodeableConceptBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirBooleanBuilder) {
              valueX = child;
              return;
            }
            if (child is QuantityBuilder) {
              valueX = child;
              return;
            }
            if (child is RangeBuilder) {
              valueX = child;
              return;
            }
            if (child is ReferenceBuilder) {
              valueX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'valueCodeableConcept':
        {
          if (child is CodeableConceptBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueBoolean':
        {
          if (child is FhirBooleanBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueQuantity':
        {
          if (child is QuantityBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueRange':
        {
          if (child is RangeBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueReference':
        {
          if (child is ReferenceBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'component':
        {
          if (child is List<MeasureReportComponentBuilder>) {
            // Replace or create new list
            component = child;
            return;
          } else if (child is MeasureReportComponentBuilder) {
            // Add single element to existing list or create new list
            component = [
              ...(component ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'population':
        {
          if (child is List<MeasureReportPopulationBuilder>) {
            // Replace or create new list
            population = child;
            return;
          } else if (child is MeasureReportPopulationBuilder) {
            // Add single element to existing list or create new list
            population = [
              ...(population ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'measureScore':
      case 'measureScoreX':
        {
          if (child is MeasureScoreXMeasureReportStratumBuilder) {
            measureScoreX = child;
            return;
          } else {
            if (child is QuantityBuilder) {
              measureScoreX = child;
              return;
            }
            if (child is FhirDateTimeBuilder) {
              measureScoreX = child;
              return;
            }
            if (child is CodeableConceptBuilder) {
              measureScoreX = child;
              return;
            }
            if (child is PeriodBuilder) {
              measureScoreX = child;
              return;
            }
            if (child is RangeBuilder) {
              measureScoreX = child;
              return;
            }
            if (child is FhirDurationBuilder) {
              measureScoreX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'measureScoreQuantity':
        {
          if (child is QuantityBuilder) {
            measureScoreX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'measureScoreDateTime':
        {
          if (child is FhirDateTimeBuilder) {
            measureScoreX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'measureScoreCodeableConcept':
        {
          if (child is CodeableConceptBuilder) {
            measureScoreX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'measureScorePeriod':
        {
          if (child is PeriodBuilder) {
            measureScoreX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'measureScoreRange':
        {
          if (child is RangeBuilder) {
            measureScoreX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'measureScoreDuration':
        {
          if (child is FhirDurationBuilder) {
            measureScoreX = child;
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
      case 'value':
      case 'valueX':
        return [
          'CodeableConceptBuilder',
          'FhirBooleanBuilder',
          'QuantityBuilder',
          'RangeBuilder',
          'ReferenceBuilder',
        ];
      case 'valueCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'valueBoolean':
        return ['FhirBooleanBuilder'];
      case 'valueQuantity':
        return ['QuantityBuilder'];
      case 'valueRange':
        return ['RangeBuilder'];
      case 'valueReference':
        return ['ReferenceBuilder'];
      case 'component':
        return ['MeasureReportComponentBuilder'];
      case 'population':
        return ['MeasureReportPopulationBuilder'];
      case 'measureScore':
      case 'measureScoreX':
        return [
          'QuantityBuilder',
          'FhirDateTimeBuilder',
          'CodeableConceptBuilder',
          'PeriodBuilder',
          'RangeBuilder',
          'FhirDurationBuilder',
        ];
      case 'measureScoreQuantity':
        return ['QuantityBuilder'];
      case 'measureScoreDateTime':
        return ['FhirDateTimeBuilder'];
      case 'measureScoreCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'measureScorePeriod':
        return ['PeriodBuilder'];
      case 'measureScoreRange':
        return ['RangeBuilder'];
      case 'measureScoreDuration':
        return ['FhirDurationBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MeasureReportStratumBuilder]
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
      case 'value':
      case 'valueX':
      case 'valueCodeableConcept':
        {
          valueX = CodeableConceptBuilder.empty();
          return;
        }
      case 'valueBoolean':
        {
          valueX = FhirBooleanBuilder.empty();
          return;
        }
      case 'valueQuantity':
        {
          valueX = QuantityBuilder.empty();
          return;
        }
      case 'valueRange':
        {
          valueX = RangeBuilder.empty();
          return;
        }
      case 'valueReference':
        {
          valueX = ReferenceBuilder.empty();
          return;
        }
      case 'component':
        {
          component = <MeasureReportComponentBuilder>[];
          return;
        }
      case 'population':
        {
          population = <MeasureReportPopulationBuilder>[];
          return;
        }
      case 'measureScore':
      case 'measureScoreX':
      case 'measureScoreQuantity':
        {
          measureScoreX = QuantityBuilder.empty();
          return;
        }
      case 'measureScoreDateTime':
        {
          measureScoreX = FhirDateTimeBuilder.empty();
          return;
        }
      case 'measureScoreCodeableConcept':
        {
          measureScoreX = CodeableConceptBuilder.empty();
          return;
        }
      case 'measureScorePeriod':
        {
          measureScoreX = PeriodBuilder.empty();
          return;
        }
      case 'measureScoreRange':
        {
          measureScoreX = RangeBuilder.empty();
          return;
        }
      case 'measureScoreDuration':
        {
          measureScoreX = FhirDurationBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MeasureReportStratumBuilder clone() => throw UnimplementedError();
  @override
  MeasureReportStratumBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    ValueXMeasureReportStratumBuilder? valueX,
    List<MeasureReportComponentBuilder>? component,
    List<MeasureReportPopulationBuilder>? population,
    MeasureScoreXMeasureReportStratumBuilder? measureScoreX,
    CodeableConceptBuilder? valueCodeableConcept,
    FhirBooleanBuilder? valueBoolean,
    QuantityBuilder? valueQuantity,
    RangeBuilder? valueRange,
    ReferenceBuilder? valueReference,
    QuantityBuilder? measureScoreQuantity,
    FhirDateTimeBuilder? measureScoreDateTime,
    CodeableConceptBuilder? measureScoreCodeableConcept,
    PeriodBuilder? measureScorePeriod,
    RangeBuilder? measureScoreRange,
    FhirDurationBuilder? measureScoreDuration,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MeasureReportStratumBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      valueX: valueX ??
          valueCodeableConcept ??
          valueBoolean ??
          valueQuantity ??
          valueRange ??
          valueReference ??
          this.valueX,
      component: component ?? this.component,
      population: population ?? this.population,
      measureScoreX: measureScoreX ??
          measureScoreQuantity ??
          measureScoreDateTime ??
          measureScoreCodeableConcept ??
          measureScorePeriod ??
          measureScoreRange ??
          measureScoreDuration ??
          this.measureScoreX,
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
    if (o is! MeasureReportStratumBuilder) {
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
      valueX,
      o.valueX,
    )) {
      return false;
    }
    if (!listEquals<MeasureReportComponentBuilder>(
      component,
      o.component,
    )) {
      return false;
    }
    if (!listEquals<MeasureReportPopulationBuilder>(
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

/// [MeasureReportComponentBuilder]
/// A stratifier component value.
class MeasureReportComponentBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MeasureReportComponentBuilder]

  MeasureReportComponentBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.linkId,
    this.code,
    ValueXMeasureReportComponentBuilder? valueX,
    CodeableConceptBuilder? valueCodeableConcept,
    FhirBooleanBuilder? valueBoolean,
    QuantityBuilder? valueQuantity,
    RangeBuilder? valueRange,
    ReferenceBuilder? valueReference,
    super.disallowExtensions,
  })  : valueX = valueX ??
            valueCodeableConcept ??
            valueBoolean ??
            valueQuantity ??
            valueRange ??
            valueReference,
        super(
          objectPath: 'MeasureReport.group.stratifier.stratum.component',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MeasureReportComponentBuilder.empty() =>
      MeasureReportComponentBuilder(
        code: CodeableConceptBuilder.empty(),
        valueX: CodeableConceptBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MeasureReportComponentBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MeasureReport.group.stratifier.stratum.component';
    return MeasureReportComponentBuilder(
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
      linkId: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'linkId',
        FhirStringBuilder.fromJson,
        '$objectPath.linkId',
      ),
      code: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'code',
        CodeableConceptBuilder.fromJson,
        '$objectPath.code',
      ),
      valueX: JsonParser.parsePolymorphic<ValueXMeasureReportComponentBuilder>(
        json,
        {
          'valueCodeableConcept': CodeableConceptBuilder.fromJson,
          'valueBoolean': FhirBooleanBuilder.fromJson,
          'valueQuantity': QuantityBuilder.fromJson,
          'valueRange': RangeBuilder.fromJson,
          'valueReference': ReferenceBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [MeasureReportComponentBuilder]
  /// from a [String] or [YamlMap] object
  factory MeasureReportComponentBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MeasureReportComponentBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MeasureReportComponentBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MeasureReportComponentBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MeasureReportComponentBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MeasureReportComponentBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MeasureReportComponentBuilder.fromJson(json);
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
  FhirStringBuilder? linkId;

  /// [code]
  /// The code for the stratum component value.
  CodeableConceptBuilder? code;

  /// [valueX]
  /// The stratum component value.
  ValueXMeasureReportComponentBuilder? valueX;

  /// Getter for [valueCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get valueCodeableConcept =>
      valueX?.isAs<CodeableConceptBuilder>();

  /// Getter for [valueBoolean] as a FhirBooleanBuilder
  FhirBooleanBuilder? get valueBoolean => valueX?.isAs<FhirBooleanBuilder>();

  /// Getter for [valueQuantity] as a QuantityBuilder
  QuantityBuilder? get valueQuantity => valueX?.isAs<QuantityBuilder>();

  /// Getter for [valueRange] as a RangeBuilder
  RangeBuilder? get valueRange => valueX?.isAs<RangeBuilder>();

  /// Getter for [valueReference] as a ReferenceBuilder
  ReferenceBuilder? get valueReference => valueX?.isAs<ReferenceBuilder>();

  /// Converts a [MeasureReportComponentBuilder]
  /// to [MeasureReportComponent]
  @override
  MeasureReportComponent build() => MeasureReportComponent.fromJson(toJson());

  /// Converts a [MeasureReportComponentBuilder]
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
    addField('linkId', linkId);
    addField('code', code);
    if (valueX != null) {
      final fhirType = valueX!.fhirType;
      addField('value${fhirType.capitalizeFirstLetter()}', valueX);
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
      'linkId',
      'code',
      'valueX',
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
      case 'linkId':
        if (linkId != null) {
          fields.add(linkId!);
        }
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'value':
        if (valueX != null) {
          fields.add(valueX!);
        }
      case 'valueX':
        if (valueX != null) {
          fields.add(valueX!);
        }
      case 'valueCodeableConcept':
        if (valueX is CodeableConceptBuilder) {
          fields.add(valueX!);
        }
      case 'valueBoolean':
        if (valueX is FhirBooleanBuilder) {
          fields.add(valueX!);
        }
      case 'valueQuantity':
        if (valueX is QuantityBuilder) {
          fields.add(valueX!);
        }
      case 'valueRange':
        if (valueX is RangeBuilder) {
          fields.add(valueX!);
        }
      case 'valueReference':
        if (valueX is ReferenceBuilder) {
          fields.add(valueX!);
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
      case 'linkId':
        {
          if (child is FhirStringBuilder) {
            linkId = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                linkId = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'code':
        {
          if (child is CodeableConceptBuilder) {
            code = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'value':
      case 'valueX':
        {
          if (child is ValueXMeasureReportComponentBuilder) {
            valueX = child;
            return;
          } else {
            if (child is CodeableConceptBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirBooleanBuilder) {
              valueX = child;
              return;
            }
            if (child is QuantityBuilder) {
              valueX = child;
              return;
            }
            if (child is RangeBuilder) {
              valueX = child;
              return;
            }
            if (child is ReferenceBuilder) {
              valueX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'valueCodeableConcept':
        {
          if (child is CodeableConceptBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueBoolean':
        {
          if (child is FhirBooleanBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueQuantity':
        {
          if (child is QuantityBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueRange':
        {
          if (child is RangeBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueReference':
        {
          if (child is ReferenceBuilder) {
            valueX = child;
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
      case 'linkId':
        return ['FhirStringBuilder'];
      case 'code':
        return ['CodeableConceptBuilder'];
      case 'value':
      case 'valueX':
        return [
          'CodeableConceptBuilder',
          'FhirBooleanBuilder',
          'QuantityBuilder',
          'RangeBuilder',
          'ReferenceBuilder',
        ];
      case 'valueCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'valueBoolean':
        return ['FhirBooleanBuilder'];
      case 'valueQuantity':
        return ['QuantityBuilder'];
      case 'valueRange':
        return ['RangeBuilder'];
      case 'valueReference':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MeasureReportComponentBuilder]
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
      case 'linkId':
        {
          linkId = FhirStringBuilder.empty();
          return;
        }
      case 'code':
        {
          code = CodeableConceptBuilder.empty();
          return;
        }
      case 'value':
      case 'valueX':
      case 'valueCodeableConcept':
        {
          valueX = CodeableConceptBuilder.empty();
          return;
        }
      case 'valueBoolean':
        {
          valueX = FhirBooleanBuilder.empty();
          return;
        }
      case 'valueQuantity':
        {
          valueX = QuantityBuilder.empty();
          return;
        }
      case 'valueRange':
        {
          valueX = RangeBuilder.empty();
          return;
        }
      case 'valueReference':
        {
          valueX = ReferenceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MeasureReportComponentBuilder clone() => throw UnimplementedError();
  @override
  MeasureReportComponentBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? linkId,
    CodeableConceptBuilder? code,
    ValueXMeasureReportComponentBuilder? valueX,
    CodeableConceptBuilder? valueCodeableConcept,
    FhirBooleanBuilder? valueBoolean,
    QuantityBuilder? valueQuantity,
    RangeBuilder? valueRange,
    ReferenceBuilder? valueReference,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MeasureReportComponentBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      linkId: linkId ?? this.linkId,
      code: code ?? this.code,
      valueX: valueX ??
          valueCodeableConcept ??
          valueBoolean ??
          valueQuantity ??
          valueRange ??
          valueReference ??
          this.valueX,
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
    if (o is! MeasureReportComponentBuilder) {
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

/// [MeasureReportPopulation1Builder]
/// The populations that make up the stratum, one for each type of
/// population appropriate to the measure.
class MeasureReportPopulation1Builder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MeasureReportPopulation1Builder]

  MeasureReportPopulation1Builder({
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
  }) : super(
          objectPath: 'MeasureReport.group.stratifier.stratum.population',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MeasureReportPopulation1Builder.empty() =>
      MeasureReportPopulation1Builder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MeasureReportPopulation1Builder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MeasureReport.group.stratifier.stratum.population';
    return MeasureReportPopulation1Builder(
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
      linkId: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'linkId',
        FhirStringBuilder.fromJson,
        '$objectPath.linkId',
      ),
      code: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'code',
        CodeableConceptBuilder.fromJson,
        '$objectPath.code',
      ),
      count: JsonParser.parsePrimitive<FhirIntegerBuilder>(
        json,
        'count',
        FhirIntegerBuilder.fromJson,
        '$objectPath.count',
      ),
      subjectResults: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'subjectResults',
        ReferenceBuilder.fromJson,
        '$objectPath.subjectResults',
      ),
      subjectReport: (json['subjectReport'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.subjectReport',
              },
            ),
          )
          .toList(),
      subjects: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'subjects',
        ReferenceBuilder.fromJson,
        '$objectPath.subjects',
      ),
    );
  }

  /// Deserialize [MeasureReportPopulation1Builder]
  /// from a [String] or [YamlMap] object
  factory MeasureReportPopulation1Builder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MeasureReportPopulation1Builder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MeasureReportPopulation1Builder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MeasureReportPopulation1Builder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MeasureReportPopulation1Builder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MeasureReportPopulation1Builder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MeasureReportPopulation1Builder.fromJson(json);
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
  FhirStringBuilder? linkId;

  /// [code]
  /// The type of the population.
  CodeableConceptBuilder? code;

  /// [count]
  /// The number of members of the population in this stratum.
  FhirIntegerBuilder? count;

  /// [subjectResults]
  /// This element refers to a List of individual level MeasureReport
  /// resources, one for each subject in this population in this stratum.
  ReferenceBuilder? subjectResults;

  /// [subjectReport]
  /// A reference to an individual level MeasureReport resource for a member
  /// of the population.
  List<ReferenceBuilder>? subjectReport;

  /// [subjects]
  /// Optional Group identifying the individuals that make up the population.
  ReferenceBuilder? subjects;

  /// Converts a [MeasureReportPopulation1Builder]
  /// to [MeasureReportPopulation1]
  @override
  MeasureReportPopulation1 build() =>
      MeasureReportPopulation1.fromJson(toJson());

  /// Converts a [MeasureReportPopulation1Builder]
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
    addField('linkId', linkId);
    addField('code', code);
    addField('count', count);
    addField('subjectResults', subjectResults);
    addField('subjectReport', subjectReport);
    addField('subjects', subjects);
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
      case 'linkId':
        {
          if (child is FhirStringBuilder) {
            linkId = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                linkId = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'code':
        {
          if (child is CodeableConceptBuilder) {
            code = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'count':
        {
          if (child is FhirIntegerBuilder) {
            count = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirIntegerBuilder.tryParse(numValue);
                if (converted != null) {
                  count = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'subjectResults':
        {
          if (child is ReferenceBuilder) {
            subjectResults = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'subjectReport':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            subjectReport = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            subjectReport = [
              ...(subjectReport ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'subjects':
        {
          if (child is ReferenceBuilder) {
            subjects = child;
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
      case 'linkId':
        return ['FhirStringBuilder'];
      case 'code':
        return ['CodeableConceptBuilder'];
      case 'count':
        return ['FhirIntegerBuilder'];
      case 'subjectResults':
        return ['ReferenceBuilder'];
      case 'subjectReport':
        return ['ReferenceBuilder'];
      case 'subjects':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MeasureReportPopulation1Builder]
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
      case 'linkId':
        {
          linkId = FhirStringBuilder.empty();
          return;
        }
      case 'code':
        {
          code = CodeableConceptBuilder.empty();
          return;
        }
      case 'count':
        {
          count = FhirIntegerBuilder.empty();
          return;
        }
      case 'subjectResults':
        {
          subjectResults = ReferenceBuilder.empty();
          return;
        }
      case 'subjectReport':
        {
          subjectReport = <ReferenceBuilder>[];
          return;
        }
      case 'subjects':
        {
          subjects = ReferenceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MeasureReportPopulation1Builder clone() => throw UnimplementedError();
  @override
  MeasureReportPopulation1Builder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? linkId,
    CodeableConceptBuilder? code,
    FhirIntegerBuilder? count,
    ReferenceBuilder? subjectResults,
    List<ReferenceBuilder>? subjectReport,
    ReferenceBuilder? subjects,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MeasureReportPopulation1Builder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      linkId: linkId ?? this.linkId,
      code: code ?? this.code,
      count: count ?? this.count,
      subjectResults: subjectResults ?? this.subjectResults,
      subjectReport: subjectReport ?? this.subjectReport,
      subjects: subjects ?? this.subjects,
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
    if (o is! MeasureReportPopulation1Builder) {
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
    if (!listEquals<ReferenceBuilder>(
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
