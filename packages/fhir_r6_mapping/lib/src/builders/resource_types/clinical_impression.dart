import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart'
    show
        ClinicalImpression,
        ClinicalImpressionFinding,
        R6ResourceType,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r6_mapping/fhir_r6_mapping.dart';
import 'package:yaml/yaml.dart';

/// [ClinicalImpressionBuilder]
/// A record of a clinical assessment performed to determine what
/// problem(s) may affect the patient and before planning the treatments or
/// management strategies that are best to manage a patient's condition.
/// Assessments are often 1:1 with a clinical consultation / encounter, but
/// this varies greatly depending on the clinical workflow. This resource
/// is called "ClinicalImpression" rather than "ClinicalAssessment" to
/// avoid confusion with the recording of assessment tools such as Apgar
/// score.
class ClinicalImpressionBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [ClinicalImpressionBuilder]

  ClinicalImpressionBuilder({
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
    this.statusReason,
    this.description,
    this.subject,
    this.encounter,
    EffectiveXClinicalImpressionBuilder? effectiveX,
    FhirDateTimeBuilder? effectiveDateTime,
    PeriodBuilder? effectivePeriod,
    this.date,
    this.performer,
    this.previous,
    this.problem,
    this.changePattern,
    this.protocol,
    this.summary,
    this.finding,
    this.prognosisCodeableConcept,
    this.prognosisReference,
    this.supportingInfo,
    this.note,
  })  : effectiveX = effectiveX ?? effectiveDateTime ?? effectivePeriod,
        super(
          objectPath: 'ClinicalImpression',
          resourceType: R6ResourceType.ClinicalImpression,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ClinicalImpressionBuilder.empty() => ClinicalImpressionBuilder(
        status: EventStatusBuilder.values.first,
        subject: ReferenceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClinicalImpressionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ClinicalImpression';
    return ClinicalImpressionBuilder(
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
      status: JsonParser.parsePrimitive<EventStatusBuilder>(
        json,
        'status',
        EventStatusBuilder.fromJson,
        '$objectPath.status',
      ),
      statusReason: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'statusReason',
        CodeableConceptBuilder.fromJson,
        '$objectPath.statusReason',
      ),
      description: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'description',
        FhirStringBuilder.fromJson,
        '$objectPath.description',
      ),
      subject: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'subject',
        ReferenceBuilder.fromJson,
        '$objectPath.subject',
      ),
      encounter: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'encounter',
        ReferenceBuilder.fromJson,
        '$objectPath.encounter',
      ),
      effectiveX:
          JsonParser.parsePolymorphic<EffectiveXClinicalImpressionBuilder>(
        json,
        {
          'effectiveDateTime': FhirDateTimeBuilder.fromJson,
          'effectivePeriod': PeriodBuilder.fromJson,
        },
        objectPath,
      ),
      date: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'date',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.date',
      ),
      performer: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'performer',
        ReferenceBuilder.fromJson,
        '$objectPath.performer',
      ),
      previous: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'previous',
        ReferenceBuilder.fromJson,
        '$objectPath.previous',
      ),
      problem: (json['problem'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.problem',
              },
            ),
          )
          .toList(),
      changePattern: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'changePattern',
        CodeableConceptBuilder.fromJson,
        '$objectPath.changePattern',
      ),
      protocol: JsonParser.parsePrimitiveList<FhirUriBuilder>(
        json,
        'protocol',
        FhirUriBuilder.fromJson,
        '$objectPath.protocol',
      ),
      summary: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'summary',
        FhirStringBuilder.fromJson,
        '$objectPath.summary',
      ),
      finding: (json['finding'] as List<dynamic>?)
          ?.map<ClinicalImpressionFindingBuilder>(
            (v) => ClinicalImpressionFindingBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.finding',
              },
            ),
          )
          .toList(),
      prognosisCodeableConcept:
          (json['prognosisCodeableConcept'] as List<dynamic>?)
              ?.map<CodeableConceptBuilder>(
                (v) => CodeableConceptBuilder.fromJson(
                  {
                    ...v as Map<String, dynamic>,
                    'objectPath': '$objectPath.prognosisCodeableConcept',
                  },
                ),
              )
              .toList(),
      prognosisReference: (json['prognosisReference'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.prognosisReference',
              },
            ),
          )
          .toList(),
      supportingInfo: (json['supportingInfo'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.supportingInfo',
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
    );
  }

  /// Deserialize [ClinicalImpressionBuilder]
  /// from a [String] or [YamlMap] object
  factory ClinicalImpressionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClinicalImpressionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClinicalImpressionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClinicalImpressionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClinicalImpressionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClinicalImpressionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ClinicalImpressionBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ClinicalImpression';

  /// [identifier]
  /// Business identifiers assigned to this clinical impression by the
  /// performer or other systems which remain constant as the resource is
  /// updated and propagates from server to server.
  List<IdentifierBuilder>? identifier;

  /// [status]
  /// Identifies the workflow status of the assessment.
  EventStatusBuilder? status;

  /// [statusReason]
  /// Captures the reason for the current state of the ClinicalImpression.
  CodeableConceptBuilder? statusReason;

  /// [description]
  /// A summary of the context and/or cause of the assessment - why / where
  /// it was performed, and what patient events/status prompted it.
  FhirStringBuilder? description;

  /// [subject]
  /// The patient or group of individuals assessed as part of this record.
  ReferenceBuilder? subject;

  /// [encounter]
  /// The Encounter during which this ClinicalImpression was created or to
  /// which the creation of this record is tightly associated.
  ReferenceBuilder? encounter;

  /// [effectiveX]
  /// The point in time or period over which the subject was assessed.
  EffectiveXClinicalImpressionBuilder? effectiveX;

  /// Getter for [effectiveDateTime] as a FhirDateTimeBuilder
  FhirDateTimeBuilder? get effectiveDateTime =>
      effectiveX?.isAs<FhirDateTimeBuilder>();

  /// Getter for [effectivePeriod] as a PeriodBuilder
  PeriodBuilder? get effectivePeriod => effectiveX?.isAs<PeriodBuilder>();

  /// [date]
  /// Indicates when the documentation of the assessment was complete.
  FhirDateTimeBuilder? date;

  /// [performer]
  /// The clinician performing the assessment.
  ReferenceBuilder? performer;

  /// [previous]
  /// A reference to the last assessment that was conducted on this patient.
  /// Assessments are often/usually ongoing in nature; a care provider
  /// (practitioner or team) will make new assessments on an ongoing basis as
  /// new data arises or the patient's conditions changes.
  ReferenceBuilder? previous;

  /// [problem]
  /// A list of the relevant problems/conditions for a patient.
  List<ReferenceBuilder>? problem;

  /// [changePattern]
  /// Change in the status/pattern of a subject's condition since previously
  /// assessed, such as worsening, improving, or no change. It is a
  /// subjective assessment of the direction of the change.
  CodeableConceptBuilder? changePattern;

  /// [protocol]
  /// Reference to a specific published clinical protocol that was followed
  /// during this assessment, and/or that provides evidence in support of the
  /// diagnosis.
  List<FhirUriBuilder>? protocol;

  /// [summary]
  /// A text summary of the investigations and the diagnosis.
  FhirStringBuilder? summary;

  /// [finding]
  /// Specific findings or diagnoses that were considered likely or relevant
  /// to ongoing treatment.
  List<ClinicalImpressionFindingBuilder>? finding;

  /// [prognosisCodeableConcept]
  /// Estimate of likely outcome.
  List<CodeableConceptBuilder>? prognosisCodeableConcept;

  /// [prognosisReference]
  /// RiskAssessment expressing likely outcome.
  List<ReferenceBuilder>? prognosisReference;

  /// [supportingInfo]
  /// Information supporting the clinical impression, which can contain
  /// investigation results.
  List<ReferenceBuilder>? supportingInfo;

  /// [note]
  /// Commentary about the impression, typically recorded after the
  /// impression itself was made, though supplemental notes by the original
  /// author could also appear.
  List<AnnotationBuilder>? note;

  /// Converts a [ClinicalImpressionBuilder]
  /// to [ClinicalImpression]
  @override
  ClinicalImpression build() => ClinicalImpression.fromJson(toJson());

  /// Converts a [ClinicalImpressionBuilder]
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
    addField('statusReason', statusReason);
    addField('description', description);
    addField('subject', subject);
    addField('encounter', encounter);
    if (effectiveX != null) {
      final fhirType = effectiveX!.fhirType;
      addField('effective${fhirType.capitalizeFirstLetter()}', effectiveX);
    }

    addField('date', date);
    addField('performer', performer);
    addField('previous', previous);
    addField('problem', problem);
    addField('changePattern', changePattern);
    addField('protocol', protocol);
    addField('summary', summary);
    addField('finding', finding);
    addField('prognosisCodeableConcept', prognosisCodeableConcept);
    addField('prognosisReference', prognosisReference);
    addField('supportingInfo', supportingInfo);
    addField('note', note);
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
      'statusReason',
      'description',
      'subject',
      'encounter',
      'effectiveX',
      'date',
      'performer',
      'previous',
      'problem',
      'changePattern',
      'protocol',
      'summary',
      'finding',
      'prognosisCodeableConcept',
      'prognosisReference',
      'supportingInfo',
      'note',
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
      case 'statusReason':
        if (statusReason != null) {
          fields.add(statusReason!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'subject':
        if (subject != null) {
          fields.add(subject!);
        }
      case 'encounter':
        if (encounter != null) {
          fields.add(encounter!);
        }
      case 'effective':
        if (effectiveX != null) {
          fields.add(effectiveX!);
        }
      case 'effectiveX':
        if (effectiveX != null) {
          fields.add(effectiveX!);
        }
      case 'effectiveDateTime':
        if (effectiveX is FhirDateTimeBuilder) {
          fields.add(effectiveX!);
        }
      case 'effectivePeriod':
        if (effectiveX is PeriodBuilder) {
          fields.add(effectiveX!);
        }
      case 'date':
        if (date != null) {
          fields.add(date!);
        }
      case 'performer':
        if (performer != null) {
          fields.add(performer!);
        }
      case 'previous':
        if (previous != null) {
          fields.add(previous!);
        }
      case 'problem':
        if (problem != null) {
          fields.addAll(problem!);
        }
      case 'changePattern':
        if (changePattern != null) {
          fields.add(changePattern!);
        }
      case 'protocol':
        if (protocol != null) {
          fields.addAll(protocol!);
        }
      case 'summary':
        if (summary != null) {
          fields.add(summary!);
        }
      case 'finding':
        if (finding != null) {
          fields.addAll(finding!);
        }
      case 'prognosisCodeableConcept':
        if (prognosisCodeableConcept != null) {
          fields.addAll(prognosisCodeableConcept!);
        }
      case 'prognosisReference':
        if (prognosisReference != null) {
          fields.addAll(prognosisReference!);
        }
      case 'supportingInfo':
        if (supportingInfo != null) {
          fields.addAll(supportingInfo!);
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
          if (child is EventStatusBuilder) {
            status = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = EventStatusBuilder(stringValue);
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
      case 'statusReason':
        {
          if (child is CodeableConceptBuilder) {
            statusReason = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'description':
        {
          if (child is FhirStringBuilder) {
            description = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
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
      case 'subject':
        {
          if (child is ReferenceBuilder) {
            subject = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'encounter':
        {
          if (child is ReferenceBuilder) {
            encounter = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'effective':
      case 'effectiveX':
        {
          if (child is EffectiveXClinicalImpressionBuilder) {
            effectiveX = child;
            return;
          } else {
            if (child is FhirDateTimeBuilder) {
              effectiveX = child;
              return;
            }
            if (child is PeriodBuilder) {
              effectiveX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'effectiveDateTime':
        {
          if (child is FhirDateTimeBuilder) {
            effectiveX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'effectivePeriod':
        {
          if (child is PeriodBuilder) {
            effectiveX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
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
      case 'performer':
        {
          if (child is ReferenceBuilder) {
            performer = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'previous':
        {
          if (child is ReferenceBuilder) {
            previous = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'problem':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            problem = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            problem = [
              ...(problem ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'changePattern':
        {
          if (child is CodeableConceptBuilder) {
            changePattern = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'protocol':
        {
          if (child is List<FhirUriBuilder>) {
            // Replace or create new list
            protocol = child;
            return;
          } else if (child is FhirUriBuilder) {
            // Add single element to existing list or create new list
            protocol = [
              ...(protocol ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirUriBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                final converted = FhirUriBuilder.tryParse(stringValue);
                if (converted != null) {
                  convertedList.add(converted);
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              protocol = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                protocol = [
                  ...(protocol ?? []),
                  converted,
                ];
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'summary':
        {
          if (child is FhirStringBuilder) {
            summary = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                summary = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'finding':
        {
          if (child is List<ClinicalImpressionFindingBuilder>) {
            // Replace or create new list
            finding = child;
            return;
          } else if (child is ClinicalImpressionFindingBuilder) {
            // Add single element to existing list or create new list
            finding = [
              ...(finding ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'prognosisCodeableConcept':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            prognosisCodeableConcept = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            prognosisCodeableConcept = [
              ...(prognosisCodeableConcept ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'prognosisReference':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            prognosisReference = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            prognosisReference = [
              ...(prognosisReference ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'supportingInfo':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            supportingInfo = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            supportingInfo = [
              ...(supportingInfo ?? []),
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
      case 'statusReason':
        return ['CodeableConceptBuilder'];
      case 'description':
        return ['FhirStringBuilder'];
      case 'subject':
        return ['ReferenceBuilder'];
      case 'encounter':
        return ['ReferenceBuilder'];
      case 'effective':
      case 'effectiveX':
        return [
          'FhirDateTimeBuilder',
          'PeriodBuilder',
        ];
      case 'effectiveDateTime':
        return ['FhirDateTimeBuilder'];
      case 'effectivePeriod':
        return ['PeriodBuilder'];
      case 'date':
        return ['FhirDateTimeBuilder'];
      case 'performer':
        return ['ReferenceBuilder'];
      case 'previous':
        return ['ReferenceBuilder'];
      case 'problem':
        return ['ReferenceBuilder'];
      case 'changePattern':
        return ['CodeableConceptBuilder'];
      case 'protocol':
        return ['FhirUriBuilder'];
      case 'summary':
        return ['FhirStringBuilder'];
      case 'finding':
        return ['ClinicalImpressionFindingBuilder'];
      case 'prognosisCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'prognosisReference':
        return ['ReferenceBuilder'];
      case 'supportingInfo':
        return ['ReferenceBuilder'];
      case 'note':
        return ['AnnotationBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ClinicalImpressionBuilder]
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
          status = EventStatusBuilder.empty();
          return;
        }
      case 'statusReason':
        {
          statusReason = CodeableConceptBuilder.empty();
          return;
        }
      case 'description':
        {
          description = FhirStringBuilder.empty();
          return;
        }
      case 'subject':
        {
          subject = ReferenceBuilder.empty();
          return;
        }
      case 'encounter':
        {
          encounter = ReferenceBuilder.empty();
          return;
        }
      case 'effective':
      case 'effectiveX':
      case 'effectiveDateTime':
        {
          effectiveX = FhirDateTimeBuilder.empty();
          return;
        }
      case 'effectivePeriod':
        {
          effectiveX = PeriodBuilder.empty();
          return;
        }
      case 'date':
        {
          date = FhirDateTimeBuilder.empty();
          return;
        }
      case 'performer':
        {
          performer = ReferenceBuilder.empty();
          return;
        }
      case 'previous':
        {
          previous = ReferenceBuilder.empty();
          return;
        }
      case 'problem':
        {
          problem = <ReferenceBuilder>[];
          return;
        }
      case 'changePattern':
        {
          changePattern = CodeableConceptBuilder.empty();
          return;
        }
      case 'protocol':
        {
          protocol = <FhirUriBuilder>[];
          return;
        }
      case 'summary':
        {
          summary = FhirStringBuilder.empty();
          return;
        }
      case 'finding':
        {
          finding = <ClinicalImpressionFindingBuilder>[];
          return;
        }
      case 'prognosisCodeableConcept':
        {
          prognosisCodeableConcept = <CodeableConceptBuilder>[];
          return;
        }
      case 'prognosisReference':
        {
          prognosisReference = <ReferenceBuilder>[];
          return;
        }
      case 'supportingInfo':
        {
          supportingInfo = <ReferenceBuilder>[];
          return;
        }
      case 'note':
        {
          note = <AnnotationBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ClinicalImpressionBuilder clone() => throw UnimplementedError();
  @override
  ClinicalImpressionBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    AllLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    EventStatusBuilder? status,
    CodeableConceptBuilder? statusReason,
    FhirStringBuilder? description,
    ReferenceBuilder? subject,
    ReferenceBuilder? encounter,
    EffectiveXClinicalImpressionBuilder? effectiveX,
    FhirDateTimeBuilder? date,
    ReferenceBuilder? performer,
    ReferenceBuilder? previous,
    List<ReferenceBuilder>? problem,
    CodeableConceptBuilder? changePattern,
    List<FhirUriBuilder>? protocol,
    FhirStringBuilder? summary,
    List<ClinicalImpressionFindingBuilder>? finding,
    List<CodeableConceptBuilder>? prognosisCodeableConcept,
    List<ReferenceBuilder>? prognosisReference,
    List<ReferenceBuilder>? supportingInfo,
    List<AnnotationBuilder>? note,
    FhirDateTimeBuilder? effectiveDateTime,
    PeriodBuilder? effectivePeriod,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = ClinicalImpressionBuilder(
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
      statusReason: statusReason ?? this.statusReason,
      description: description ?? this.description,
      subject: subject ?? this.subject,
      encounter: encounter ?? this.encounter,
      effectiveX:
          effectiveX ?? effectiveDateTime ?? effectivePeriod ?? this.effectiveX,
      date: date ?? this.date,
      performer: performer ?? this.performer,
      previous: previous ?? this.previous,
      problem: problem ?? this.problem,
      changePattern: changePattern ?? this.changePattern,
      protocol: protocol ?? this.protocol,
      summary: summary ?? this.summary,
      finding: finding ?? this.finding,
      prognosisCodeableConcept:
          prognosisCodeableConcept ?? this.prognosisCodeableConcept,
      prognosisReference: prognosisReference ?? this.prognosisReference,
      supportingInfo: supportingInfo ?? this.supportingInfo,
      note: note ?? this.note,
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
    if (o is! ClinicalImpressionBuilder) {
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
      statusReason,
      o.statusReason,
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
      subject,
      o.subject,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      encounter,
      o.encounter,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      effectiveX,
      o.effectiveX,
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
      performer,
      o.performer,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      previous,
      o.previous,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      problem,
      o.problem,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      changePattern,
      o.changePattern,
    )) {
      return false;
    }
    if (!listEquals<FhirUriBuilder>(
      protocol,
      o.protocol,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      summary,
      o.summary,
    )) {
      return false;
    }
    if (!listEquals<ClinicalImpressionFindingBuilder>(
      finding,
      o.finding,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      prognosisCodeableConcept,
      o.prognosisCodeableConcept,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      prognosisReference,
      o.prognosisReference,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      supportingInfo,
      o.supportingInfo,
    )) {
      return false;
    }
    if (!listEquals<AnnotationBuilder>(
      note,
      o.note,
    )) {
      return false;
    }
    return true;
  }
}

/// [ClinicalImpressionFindingBuilder]
/// Specific findings or diagnoses that were considered likely or relevant
/// to ongoing treatment.
class ClinicalImpressionFindingBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ClinicalImpressionFindingBuilder]

  ClinicalImpressionFindingBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.item,
    this.basis,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ClinicalImpression.finding',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ClinicalImpressionFindingBuilder.empty() =>
      ClinicalImpressionFindingBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClinicalImpressionFindingBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ClinicalImpression.finding';
    return ClinicalImpressionFindingBuilder(
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
      item: JsonParser.parseObject<CodeableReferenceBuilder>(
        json,
        'item',
        CodeableReferenceBuilder.fromJson,
        '$objectPath.item',
      ),
      basis: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'basis',
        FhirStringBuilder.fromJson,
        '$objectPath.basis',
      ),
    );
  }

  /// Deserialize [ClinicalImpressionFindingBuilder]
  /// from a [String] or [YamlMap] object
  factory ClinicalImpressionFindingBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClinicalImpressionFindingBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClinicalImpressionFindingBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClinicalImpressionFindingBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClinicalImpressionFindingBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClinicalImpressionFindingBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ClinicalImpressionFindingBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ClinicalImpressionFinding';

  /// [item]
  /// Specific text, code or reference for finding or diagnosis, which may
  /// include ruled-out or resolved conditions.
  CodeableReferenceBuilder? item;

  /// [basis]
  /// Which investigations support finding or diagnosis.
  FhirStringBuilder? basis;

  /// Converts a [ClinicalImpressionFindingBuilder]
  /// to [ClinicalImpressionFinding]
  @override
  ClinicalImpressionFinding build() =>
      ClinicalImpressionFinding.fromJson(toJson());

  /// Converts a [ClinicalImpressionFindingBuilder]
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
    addField('item', item);
    addField('basis', basis);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'item',
      'basis',
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
      case 'item':
        if (item != null) {
          fields.add(item!);
        }
      case 'basis':
        if (basis != null) {
          fields.add(basis!);
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
      case 'item':
        {
          if (child is CodeableReferenceBuilder) {
            item = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'basis':
        {
          if (child is FhirStringBuilder) {
            basis = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                basis = converted;
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
      case 'item':
        return ['CodeableReferenceBuilder'];
      case 'basis':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ClinicalImpressionFindingBuilder]
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
      case 'item':
        {
          item = CodeableReferenceBuilder.empty();
          return;
        }
      case 'basis':
        {
          basis = FhirStringBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ClinicalImpressionFindingBuilder clone() => throw UnimplementedError();
  @override
  ClinicalImpressionFindingBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableReferenceBuilder? item,
    FhirStringBuilder? basis,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ClinicalImpressionFindingBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      item: item ?? this.item,
      basis: basis ?? this.basis,
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
    if (o is! ClinicalImpressionFindingBuilder) {
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
      item,
      o.item,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      basis,
      o.basis,
    )) {
      return false;
    }
    return true;
  }
}
