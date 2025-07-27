import 'dart:convert';
import 'package:fhir_r5/fhir_r5.dart'
    show
        AdverseEvent,
        AdverseEventCausality,
        AdverseEventContributingFactor,
        AdverseEventMitigatingAction,
        AdverseEventParticipant,
        AdverseEventPreventiveAction,
        AdverseEventSupportingInfo,
        AdverseEventSuspectEntity,
        R5ResourceType,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r5_mapping/fhir_r5_mapping.dart';
import 'package:yaml/yaml.dart';

/// [AdverseEventBuilder]
/// An event (i.e. any change to current patient status) that may be
/// related to unintended effects on a patient or research participant. The
/// unintended effects may require additional monitoring, treatment,
/// hospitalization, or may result in death. The AdverseEvent resource also
/// extends to potential or avoided events that could have had such
/// effects. There are two major domains where the AdverseEvent resource is
/// expected to be used. One is in clinical care reported adverse events
/// and the other is in reporting adverse events in clinical research trial
/// management. Adverse events can be reported by healthcare providers,
/// patients, caregivers or by medical products manufacturers. Given the
/// differences between these two concepts, we recommend consulting the
/// domain specific implementation guides when implementing the
/// AdverseEvent Resource. The implementation guides include specific
/// extensions, value sets and constraints.
class AdverseEventBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [AdverseEventBuilder]

  AdverseEventBuilder({
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
    this.actuality,
    this.category,
    this.code,
    this.subject,
    this.encounter,
    OccurrenceXAdverseEventBuilder? occurrenceX,
    FhirDateTimeBuilder? occurrenceDateTime,
    PeriodBuilder? occurrencePeriod,
    TimingBuilder? occurrenceTiming,
    this.detected,
    this.recordedDate,
    this.resultingEffect,
    this.location,
    this.seriousness,
    this.outcome,
    this.recorder,
    this.participant,
    this.study,
    this.expectedInResearchStudy,
    this.suspectEntity,
    this.contributingFactor,
    this.preventiveAction,
    this.mitigatingAction,
    this.supportingInfo,
    this.note,
  })  : occurrenceX = occurrenceX ??
            occurrenceDateTime ??
            occurrencePeriod ??
            occurrenceTiming,
        super(
          objectPath: 'AdverseEvent',
          resourceType: R5ResourceType.AdverseEvent,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory AdverseEventBuilder.empty() => AdverseEventBuilder(
        status: AdverseEventStatusBuilder.values.first,
        actuality: AdverseEventActualityBuilder.values.first,
        subject: ReferenceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AdverseEventBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'AdverseEvent';
    return AdverseEventBuilder(
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
      status: JsonParser.parsePrimitive<AdverseEventStatusBuilder>(
        json,
        'status',
        AdverseEventStatusBuilder.fromJson,
        '$objectPath.status',
      ),
      actuality: JsonParser.parsePrimitive<AdverseEventActualityBuilder>(
        json,
        'actuality',
        AdverseEventActualityBuilder.fromJson,
        '$objectPath.actuality',
      ),
      category: (json['category'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.category',
              },
            ),
          )
          .toList(),
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
      encounter: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'encounter',
        ReferenceBuilder.fromJson,
        '$objectPath.encounter',
      ),
      occurrenceX: JsonParser.parsePolymorphic<OccurrenceXAdverseEventBuilder>(
        json,
        {
          'occurrenceDateTime': FhirDateTimeBuilder.fromJson,
          'occurrencePeriod': PeriodBuilder.fromJson,
          'occurrenceTiming': TimingBuilder.fromJson,
        },
        objectPath,
      ),
      detected: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'detected',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.detected',
      ),
      recordedDate: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'recordedDate',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.recordedDate',
      ),
      resultingEffect: (json['resultingEffect'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.resultingEffect',
              },
            ),
          )
          .toList(),
      location: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'location',
        ReferenceBuilder.fromJson,
        '$objectPath.location',
      ),
      seriousness: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'seriousness',
        CodeableConceptBuilder.fromJson,
        '$objectPath.seriousness',
      ),
      outcome: (json['outcome'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.outcome',
              },
            ),
          )
          .toList(),
      recorder: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'recorder',
        ReferenceBuilder.fromJson,
        '$objectPath.recorder',
      ),
      participant: (json['participant'] as List<dynamic>?)
          ?.map<AdverseEventParticipantBuilder>(
            (v) => AdverseEventParticipantBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.participant',
              },
            ),
          )
          .toList(),
      study: (json['study'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.study',
              },
            ),
          )
          .toList(),
      expectedInResearchStudy: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'expectedInResearchStudy',
        FhirBooleanBuilder.fromJson,
        '$objectPath.expectedInResearchStudy',
      ),
      suspectEntity: (json['suspectEntity'] as List<dynamic>?)
          ?.map<AdverseEventSuspectEntityBuilder>(
            (v) => AdverseEventSuspectEntityBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.suspectEntity',
              },
            ),
          )
          .toList(),
      contributingFactor: (json['contributingFactor'] as List<dynamic>?)
          ?.map<AdverseEventContributingFactorBuilder>(
            (v) => AdverseEventContributingFactorBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contributingFactor',
              },
            ),
          )
          .toList(),
      preventiveAction: (json['preventiveAction'] as List<dynamic>?)
          ?.map<AdverseEventPreventiveActionBuilder>(
            (v) => AdverseEventPreventiveActionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.preventiveAction',
              },
            ),
          )
          .toList(),
      mitigatingAction: (json['mitigatingAction'] as List<dynamic>?)
          ?.map<AdverseEventMitigatingActionBuilder>(
            (v) => AdverseEventMitigatingActionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.mitigatingAction',
              },
            ),
          )
          .toList(),
      supportingInfo: (json['supportingInfo'] as List<dynamic>?)
          ?.map<AdverseEventSupportingInfoBuilder>(
            (v) => AdverseEventSupportingInfoBuilder.fromJson(
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

  /// Deserialize [AdverseEventBuilder]
  /// from a [String] or [YamlMap] object
  factory AdverseEventBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AdverseEventBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AdverseEventBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AdverseEventBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AdverseEventBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AdverseEventBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AdverseEventBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AdverseEvent';

  /// [identifier]
  /// Business identifiers assigned to this adverse event by the performer or
  /// other systems which remain constant as the resource is updated and
  /// propagates from server to server.
  List<IdentifierBuilder>? identifier;

  /// [status]
  /// The current state of the adverse event or potential adverse event.
  AdverseEventStatusBuilder? status;

  /// [actuality]
  /// Whether the event actually happened or was a near miss. Note that this
  /// is independent of whether anyone was affected or harmed or how
  /// severely.
  AdverseEventActualityBuilder? actuality;

  /// [category]
  /// The overall type of event, intended for search and filtering purposes.
  List<CodeableConceptBuilder>? category;

  /// [code]
  /// Specific event that occurred or that was averted, such as patient fall,
  /// wrong organ removed, or wrong blood transfused.
  CodeableConceptBuilder? code;

  /// [subject]
  /// This subject or group impacted by the event.
  ReferenceBuilder? subject;

  /// [encounter]
  /// The Encounter associated with the start of the AdverseEvent.
  ReferenceBuilder? encounter;

  /// [occurrenceX]
  /// The date (and perhaps time) when the adverse event occurred.
  OccurrenceXAdverseEventBuilder? occurrenceX;

  /// Getter for [occurrenceDateTime] as a FhirDateTimeBuilder
  FhirDateTimeBuilder? get occurrenceDateTime =>
      occurrenceX?.isAs<FhirDateTimeBuilder>();

  /// Getter for [occurrencePeriod] as a PeriodBuilder
  PeriodBuilder? get occurrencePeriod => occurrenceX?.isAs<PeriodBuilder>();

  /// Getter for [occurrenceTiming] as a TimingBuilder
  TimingBuilder? get occurrenceTiming => occurrenceX?.isAs<TimingBuilder>();

  /// [detected]
  /// Estimated or actual date the AdverseEvent began, in the opinion of the
  /// reporter.
  FhirDateTimeBuilder? detected;

  /// [recordedDate]
  /// The date on which the existence of the AdverseEvent was first recorded.
  FhirDateTimeBuilder? recordedDate;

  /// [resultingEffect]
  /// Information about the condition that occurred as a result of the
  /// adverse event, such as hives due to the exposure to a substance (for
  /// example, a drug or a chemical) or a broken leg as a result of the fall.
  List<ReferenceBuilder>? resultingEffect;

  /// [location]
  /// The information about where the adverse event occurred.
  ReferenceBuilder? location;

  /// [seriousness]
  /// Assessment whether this event, or averted event, was of clinical
  /// importance.
  CodeableConceptBuilder? seriousness;

  /// [outcome]
  /// Describes the type of outcome from the adverse event, such as resolved,
  /// recovering, ongoing, resolved-with-sequelae, or fatal.
  List<CodeableConceptBuilder>? outcome;

  /// [recorder]
  /// Information on who recorded the adverse event. May be the patient or a
  /// practitioner.
  ReferenceBuilder? recorder;

  /// [participant]
  /// Indicates who or what participated in the adverse event and how they
  /// were involved.
  List<AdverseEventParticipantBuilder>? participant;

  /// [study]
  /// The research study that the subject is enrolled in.
  List<ReferenceBuilder>? study;

  /// [expectedInResearchStudy]
  /// Considered likely or probable or anticipated in the research study.
  /// Whether the reported event matches any of the outcomes for the patient
  /// that are considered by the study as known or likely.
  FhirBooleanBuilder? expectedInResearchStudy;

  /// [suspectEntity]
  /// Describes the entity that is suspected to have caused the adverse
  /// event.
  List<AdverseEventSuspectEntityBuilder>? suspectEntity;

  /// [contributingFactor]
  /// The contributing factors suspected to have increased the probability or
  /// severity of the adverse event.
  List<AdverseEventContributingFactorBuilder>? contributingFactor;

  /// [preventiveAction]
  /// Preventive actions that contributed to avoiding the adverse event.
  List<AdverseEventPreventiveActionBuilder>? preventiveAction;

  /// [mitigatingAction]
  /// The ameliorating action taken after the adverse event occured in order
  /// to reduce the extent of harm.
  List<AdverseEventMitigatingActionBuilder>? mitigatingAction;

  /// [supportingInfo]
  /// Supporting information relevant to the event.
  List<AdverseEventSupportingInfoBuilder>? supportingInfo;

  /// [note]
  /// Comments made about the adverse event by the performer, subject or
  /// other participants.
  List<AnnotationBuilder>? note;

  /// Converts a [AdverseEventBuilder]
  /// to [AdverseEvent]
  @override
  AdverseEvent build() => AdverseEvent.fromJson(toJson());

  /// Converts a [AdverseEventBuilder]
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
    addField('actuality', actuality);
    addField('category', category);
    addField('code', code);
    addField('subject', subject);
    addField('encounter', encounter);
    if (occurrenceX != null) {
      final fhirType = occurrenceX!.fhirType;
      addField('occurrence${fhirType.capitalizeFirstLetter()}', occurrenceX);
    }

    addField('detected', detected);
    addField('recordedDate', recordedDate);
    addField('resultingEffect', resultingEffect);
    addField('location', location);
    addField('seriousness', seriousness);
    addField('outcome', outcome);
    addField('recorder', recorder);
    addField('participant', participant);
    addField('study', study);
    addField('expectedInResearchStudy', expectedInResearchStudy);
    addField('suspectEntity', suspectEntity);
    addField('contributingFactor', contributingFactor);
    addField('preventiveAction', preventiveAction);
    addField('mitigatingAction', mitigatingAction);
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
      'actuality',
      'category',
      'code',
      'subject',
      'encounter',
      'occurrenceX',
      'detected',
      'recordedDate',
      'resultingEffect',
      'location',
      'seriousness',
      'outcome',
      'recorder',
      'participant',
      'study',
      'expectedInResearchStudy',
      'suspectEntity',
      'contributingFactor',
      'preventiveAction',
      'mitigatingAction',
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
      case 'actuality':
        if (actuality != null) {
          fields.add(actuality!);
        }
      case 'category':
        if (category != null) {
          fields.addAll(category!);
        }
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'subject':
        if (subject != null) {
          fields.add(subject!);
        }
      case 'encounter':
        if (encounter != null) {
          fields.add(encounter!);
        }
      case 'occurrence':
        if (occurrenceX != null) {
          fields.add(occurrenceX!);
        }
      case 'occurrenceX':
        if (occurrenceX != null) {
          fields.add(occurrenceX!);
        }
      case 'occurrenceDateTime':
        if (occurrenceX is FhirDateTimeBuilder) {
          fields.add(occurrenceX!);
        }
      case 'occurrencePeriod':
        if (occurrenceX is PeriodBuilder) {
          fields.add(occurrenceX!);
        }
      case 'occurrenceTiming':
        if (occurrenceX is TimingBuilder) {
          fields.add(occurrenceX!);
        }
      case 'detected':
        if (detected != null) {
          fields.add(detected!);
        }
      case 'recordedDate':
        if (recordedDate != null) {
          fields.add(recordedDate!);
        }
      case 'resultingEffect':
        if (resultingEffect != null) {
          fields.addAll(resultingEffect!);
        }
      case 'location':
        if (location != null) {
          fields.add(location!);
        }
      case 'seriousness':
        if (seriousness != null) {
          fields.add(seriousness!);
        }
      case 'outcome':
        if (outcome != null) {
          fields.addAll(outcome!);
        }
      case 'recorder':
        if (recorder != null) {
          fields.add(recorder!);
        }
      case 'participant':
        if (participant != null) {
          fields.addAll(participant!);
        }
      case 'study':
        if (study != null) {
          fields.addAll(study!);
        }
      case 'expectedInResearchStudy':
        if (expectedInResearchStudy != null) {
          fields.add(expectedInResearchStudy!);
        }
      case 'suspectEntity':
        if (suspectEntity != null) {
          fields.addAll(suspectEntity!);
        }
      case 'contributingFactor':
        if (contributingFactor != null) {
          fields.addAll(contributingFactor!);
        }
      case 'preventiveAction':
        if (preventiveAction != null) {
          fields.addAll(preventiveAction!);
        }
      case 'mitigatingAction':
        if (mitigatingAction != null) {
          fields.addAll(mitigatingAction!);
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
          if (child is AdverseEventStatusBuilder) {
            status = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = AdverseEventStatusBuilder(stringValue);
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
      case 'actuality':
        {
          if (child is AdverseEventActualityBuilder) {
            actuality = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = AdverseEventActualityBuilder(stringValue);
                actuality = converted;
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
      case 'category':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            category = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            category = [
              ...(category ?? []),
              child,
            ];
            return;
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
      case 'encounter':
        {
          if (child is ReferenceBuilder) {
            encounter = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'occurrence':
      case 'occurrenceX':
        {
          if (child is OccurrenceXAdverseEventBuilder) {
            occurrenceX = child;
            return;
          } else {
            if (child is FhirDateTimeBuilder) {
              occurrenceX = child;
              return;
            }
            if (child is PeriodBuilder) {
              occurrenceX = child;
              return;
            }
            if (child is TimingBuilder) {
              occurrenceX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'occurrenceDateTime':
        {
          if (child is FhirDateTimeBuilder) {
            occurrenceX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'occurrencePeriod':
        {
          if (child is PeriodBuilder) {
            occurrenceX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'occurrenceTiming':
        {
          if (child is TimingBuilder) {
            occurrenceX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'detected':
        {
          if (child is FhirDateTimeBuilder) {
            detected = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                detected = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'recordedDate':
        {
          if (child is FhirDateTimeBuilder) {
            recordedDate = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                recordedDate = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'resultingEffect':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            resultingEffect = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            resultingEffect = [
              ...(resultingEffect ?? []),
              child,
            ];
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
      case 'seriousness':
        {
          if (child is CodeableConceptBuilder) {
            seriousness = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'outcome':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            outcome = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            outcome = [
              ...(outcome ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'recorder':
        {
          if (child is ReferenceBuilder) {
            recorder = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'participant':
        {
          if (child is List<AdverseEventParticipantBuilder>) {
            // Replace or create new list
            participant = child;
            return;
          } else if (child is AdverseEventParticipantBuilder) {
            // Add single element to existing list or create new list
            participant = [
              ...(participant ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'study':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            study = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            study = [
              ...(study ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'expectedInResearchStudy':
        {
          if (child is FhirBooleanBuilder) {
            expectedInResearchStudy = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                expectedInResearchStudy = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'suspectEntity':
        {
          if (child is List<AdverseEventSuspectEntityBuilder>) {
            // Replace or create new list
            suspectEntity = child;
            return;
          } else if (child is AdverseEventSuspectEntityBuilder) {
            // Add single element to existing list or create new list
            suspectEntity = [
              ...(suspectEntity ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'contributingFactor':
        {
          if (child is List<AdverseEventContributingFactorBuilder>) {
            // Replace or create new list
            contributingFactor = child;
            return;
          } else if (child is AdverseEventContributingFactorBuilder) {
            // Add single element to existing list or create new list
            contributingFactor = [
              ...(contributingFactor ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'preventiveAction':
        {
          if (child is List<AdverseEventPreventiveActionBuilder>) {
            // Replace or create new list
            preventiveAction = child;
            return;
          } else if (child is AdverseEventPreventiveActionBuilder) {
            // Add single element to existing list or create new list
            preventiveAction = [
              ...(preventiveAction ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'mitigatingAction':
        {
          if (child is List<AdverseEventMitigatingActionBuilder>) {
            // Replace or create new list
            mitigatingAction = child;
            return;
          } else if (child is AdverseEventMitigatingActionBuilder) {
            // Add single element to existing list or create new list
            mitigatingAction = [
              ...(mitigatingAction ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'supportingInfo':
        {
          if (child is List<AdverseEventSupportingInfoBuilder>) {
            // Replace or create new list
            supportingInfo = child;
            return;
          } else if (child is AdverseEventSupportingInfoBuilder) {
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
      case 'actuality':
        return ['FhirCodeEnumBuilder'];
      case 'category':
        return ['CodeableConceptBuilder'];
      case 'code':
        return ['CodeableConceptBuilder'];
      case 'subject':
        return ['ReferenceBuilder'];
      case 'encounter':
        return ['ReferenceBuilder'];
      case 'occurrence':
      case 'occurrenceX':
        return [
          'FhirDateTimeBuilder',
          'PeriodBuilder',
          'TimingBuilder',
        ];
      case 'occurrenceDateTime':
        return ['FhirDateTimeBuilder'];
      case 'occurrencePeriod':
        return ['PeriodBuilder'];
      case 'occurrenceTiming':
        return ['TimingBuilder'];
      case 'detected':
        return ['FhirDateTimeBuilder'];
      case 'recordedDate':
        return ['FhirDateTimeBuilder'];
      case 'resultingEffect':
        return ['ReferenceBuilder'];
      case 'location':
        return ['ReferenceBuilder'];
      case 'seriousness':
        return ['CodeableConceptBuilder'];
      case 'outcome':
        return ['CodeableConceptBuilder'];
      case 'recorder':
        return ['ReferenceBuilder'];
      case 'participant':
        return ['AdverseEventParticipantBuilder'];
      case 'study':
        return ['ReferenceBuilder'];
      case 'expectedInResearchStudy':
        return ['FhirBooleanBuilder'];
      case 'suspectEntity':
        return ['AdverseEventSuspectEntityBuilder'];
      case 'contributingFactor':
        return ['AdverseEventContributingFactorBuilder'];
      case 'preventiveAction':
        return ['AdverseEventPreventiveActionBuilder'];
      case 'mitigatingAction':
        return ['AdverseEventMitigatingActionBuilder'];
      case 'supportingInfo':
        return ['AdverseEventSupportingInfoBuilder'];
      case 'note':
        return ['AnnotationBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [AdverseEventBuilder]
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
          status = AdverseEventStatusBuilder.empty();
          return;
        }
      case 'actuality':
        {
          actuality = AdverseEventActualityBuilder.empty();
          return;
        }
      case 'category':
        {
          category = <CodeableConceptBuilder>[];
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
      case 'encounter':
        {
          encounter = ReferenceBuilder.empty();
          return;
        }
      case 'occurrence':
      case 'occurrenceX':
      case 'occurrenceDateTime':
        {
          occurrenceX = FhirDateTimeBuilder.empty();
          return;
        }
      case 'occurrencePeriod':
        {
          occurrenceX = PeriodBuilder.empty();
          return;
        }
      case 'occurrenceTiming':
        {
          occurrenceX = TimingBuilder.empty();
          return;
        }
      case 'detected':
        {
          detected = FhirDateTimeBuilder.empty();
          return;
        }
      case 'recordedDate':
        {
          recordedDate = FhirDateTimeBuilder.empty();
          return;
        }
      case 'resultingEffect':
        {
          resultingEffect = <ReferenceBuilder>[];
          return;
        }
      case 'location':
        {
          location = ReferenceBuilder.empty();
          return;
        }
      case 'seriousness':
        {
          seriousness = CodeableConceptBuilder.empty();
          return;
        }
      case 'outcome':
        {
          outcome = <CodeableConceptBuilder>[];
          return;
        }
      case 'recorder':
        {
          recorder = ReferenceBuilder.empty();
          return;
        }
      case 'participant':
        {
          participant = <AdverseEventParticipantBuilder>[];
          return;
        }
      case 'study':
        {
          study = <ReferenceBuilder>[];
          return;
        }
      case 'expectedInResearchStudy':
        {
          expectedInResearchStudy = FhirBooleanBuilder.empty();
          return;
        }
      case 'suspectEntity':
        {
          suspectEntity = <AdverseEventSuspectEntityBuilder>[];
          return;
        }
      case 'contributingFactor':
        {
          contributingFactor = <AdverseEventContributingFactorBuilder>[];
          return;
        }
      case 'preventiveAction':
        {
          preventiveAction = <AdverseEventPreventiveActionBuilder>[];
          return;
        }
      case 'mitigatingAction':
        {
          mitigatingAction = <AdverseEventMitigatingActionBuilder>[];
          return;
        }
      case 'supportingInfo':
        {
          supportingInfo = <AdverseEventSupportingInfoBuilder>[];
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
  AdverseEventBuilder clone() => throw UnimplementedError();
  @override
  AdverseEventBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    AllLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    AdverseEventStatusBuilder? status,
    AdverseEventActualityBuilder? actuality,
    List<CodeableConceptBuilder>? category,
    CodeableConceptBuilder? code,
    ReferenceBuilder? subject,
    ReferenceBuilder? encounter,
    OccurrenceXAdverseEventBuilder? occurrenceX,
    FhirDateTimeBuilder? detected,
    FhirDateTimeBuilder? recordedDate,
    List<ReferenceBuilder>? resultingEffect,
    ReferenceBuilder? location,
    CodeableConceptBuilder? seriousness,
    List<CodeableConceptBuilder>? outcome,
    ReferenceBuilder? recorder,
    List<AdverseEventParticipantBuilder>? participant,
    List<ReferenceBuilder>? study,
    FhirBooleanBuilder? expectedInResearchStudy,
    List<AdverseEventSuspectEntityBuilder>? suspectEntity,
    List<AdverseEventContributingFactorBuilder>? contributingFactor,
    List<AdverseEventPreventiveActionBuilder>? preventiveAction,
    List<AdverseEventMitigatingActionBuilder>? mitigatingAction,
    List<AdverseEventSupportingInfoBuilder>? supportingInfo,
    List<AnnotationBuilder>? note,
    FhirDateTimeBuilder? occurrenceDateTime,
    PeriodBuilder? occurrencePeriod,
    TimingBuilder? occurrenceTiming,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = AdverseEventBuilder(
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
      actuality: actuality ?? this.actuality,
      category: category ?? this.category,
      code: code ?? this.code,
      subject: subject ?? this.subject,
      encounter: encounter ?? this.encounter,
      occurrenceX: occurrenceX ??
          occurrenceDateTime ??
          occurrencePeriod ??
          occurrenceTiming ??
          this.occurrenceX,
      detected: detected ?? this.detected,
      recordedDate: recordedDate ?? this.recordedDate,
      resultingEffect: resultingEffect ?? this.resultingEffect,
      location: location ?? this.location,
      seriousness: seriousness ?? this.seriousness,
      outcome: outcome ?? this.outcome,
      recorder: recorder ?? this.recorder,
      participant: participant ?? this.participant,
      study: study ?? this.study,
      expectedInResearchStudy:
          expectedInResearchStudy ?? this.expectedInResearchStudy,
      suspectEntity: suspectEntity ?? this.suspectEntity,
      contributingFactor: contributingFactor ?? this.contributingFactor,
      preventiveAction: preventiveAction ?? this.preventiveAction,
      mitigatingAction: mitigatingAction ?? this.mitigatingAction,
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
    if (o is! AdverseEventBuilder) {
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
      actuality,
      o.actuality,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      category,
      o.category,
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
    if (!equalsDeepWithNull(
      encounter,
      o.encounter,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      occurrenceX,
      o.occurrenceX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      detected,
      o.detected,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      recordedDate,
      o.recordedDate,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      resultingEffect,
      o.resultingEffect,
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
      seriousness,
      o.seriousness,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      outcome,
      o.outcome,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      recorder,
      o.recorder,
    )) {
      return false;
    }
    if (!listEquals<AdverseEventParticipantBuilder>(
      participant,
      o.participant,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      study,
      o.study,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      expectedInResearchStudy,
      o.expectedInResearchStudy,
    )) {
      return false;
    }
    if (!listEquals<AdverseEventSuspectEntityBuilder>(
      suspectEntity,
      o.suspectEntity,
    )) {
      return false;
    }
    if (!listEquals<AdverseEventContributingFactorBuilder>(
      contributingFactor,
      o.contributingFactor,
    )) {
      return false;
    }
    if (!listEquals<AdverseEventPreventiveActionBuilder>(
      preventiveAction,
      o.preventiveAction,
    )) {
      return false;
    }
    if (!listEquals<AdverseEventMitigatingActionBuilder>(
      mitigatingAction,
      o.mitigatingAction,
    )) {
      return false;
    }
    if (!listEquals<AdverseEventSupportingInfoBuilder>(
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

/// [AdverseEventParticipantBuilder]
/// Indicates who or what participated in the adverse event and how they
/// were involved.
class AdverseEventParticipantBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [AdverseEventParticipantBuilder]

  AdverseEventParticipantBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.function_,
    this.actor,
    super.disallowExtensions,
  }) : super(
          objectPath: 'AdverseEvent.participant',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory AdverseEventParticipantBuilder.empty() =>
      AdverseEventParticipantBuilder(
        actor: ReferenceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AdverseEventParticipantBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'AdverseEvent.participant';
    return AdverseEventParticipantBuilder(
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
      function_: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'function',
        CodeableConceptBuilder.fromJson,
        '$objectPath.function',
      ),
      actor: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'actor',
        ReferenceBuilder.fromJson,
        '$objectPath.actor',
      ),
    );
  }

  /// Deserialize [AdverseEventParticipantBuilder]
  /// from a [String] or [YamlMap] object
  factory AdverseEventParticipantBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AdverseEventParticipantBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AdverseEventParticipantBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AdverseEventParticipantBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AdverseEventParticipantBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AdverseEventParticipantBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AdverseEventParticipantBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AdverseEventParticipant';

  /// [function_]
  /// Distinguishes the type of involvement of the actor in the adverse
  /// event, such as contributor or informant.
  CodeableConceptBuilder? function_;

  /// [actor]
  /// Indicates who or what participated in the event.
  ReferenceBuilder? actor;

  /// Converts a [AdverseEventParticipantBuilder]
  /// to [AdverseEventParticipant]
  @override
  AdverseEventParticipant build() => AdverseEventParticipant.fromJson(toJson());

  /// Converts a [AdverseEventParticipantBuilder]
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
    addField('function', function_);
    addField('actor', actor);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'function',
      'actor',
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
      case 'function':
        if (function_ != null) {
          fields.add(function_!);
        }
      case 'actor':
        if (actor != null) {
          fields.add(actor!);
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
      case 'function':
        {
          if (child is CodeableConceptBuilder) {
            function_ = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'actor':
        {
          if (child is ReferenceBuilder) {
            actor = child;
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
      case 'function':
        return ['CodeableConceptBuilder'];
      case 'actor':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [AdverseEventParticipantBuilder]
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
      case 'function':
        {
          function_ = CodeableConceptBuilder.empty();
          return;
        }
      case 'actor':
        {
          actor = ReferenceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  AdverseEventParticipantBuilder clone() => throw UnimplementedError();
  @override
  AdverseEventParticipantBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? function_,
    ReferenceBuilder? actor,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = AdverseEventParticipantBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      function_: function_ ?? this.function_,
      actor: actor ?? this.actor,
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
    if (o is! AdverseEventParticipantBuilder) {
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
      function_,
      o.function_,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      actor,
      o.actor,
    )) {
      return false;
    }
    return true;
  }
}

/// [AdverseEventSuspectEntityBuilder]
/// Describes the entity that is suspected to have caused the adverse
/// event.
class AdverseEventSuspectEntityBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [AdverseEventSuspectEntityBuilder]

  AdverseEventSuspectEntityBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    InstanceXAdverseEventSuspectEntityBuilder? instanceX,
    CodeableConceptBuilder? instanceCodeableConcept,
    ReferenceBuilder? instanceReference,
    this.causality,
    super.disallowExtensions,
  })  : instanceX = instanceX ?? instanceCodeableConcept ?? instanceReference,
        super(
          objectPath: 'AdverseEvent.suspectEntity',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory AdverseEventSuspectEntityBuilder.empty() =>
      AdverseEventSuspectEntityBuilder(
        instanceX: CodeableConceptBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AdverseEventSuspectEntityBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'AdverseEvent.suspectEntity';
    return AdverseEventSuspectEntityBuilder(
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
      instanceX: JsonParser.parsePolymorphic<
          InstanceXAdverseEventSuspectEntityBuilder>(
        json,
        {
          'instanceCodeableConcept': CodeableConceptBuilder.fromJson,
          'instanceReference': ReferenceBuilder.fromJson,
        },
        objectPath,
      ),
      causality: JsonParser.parseObject<AdverseEventCausalityBuilder>(
        json,
        'causality',
        AdverseEventCausalityBuilder.fromJson,
        '$objectPath.causality',
      ),
    );
  }

  /// Deserialize [AdverseEventSuspectEntityBuilder]
  /// from a [String] or [YamlMap] object
  factory AdverseEventSuspectEntityBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AdverseEventSuspectEntityBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AdverseEventSuspectEntityBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AdverseEventSuspectEntityBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AdverseEventSuspectEntityBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AdverseEventSuspectEntityBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AdverseEventSuspectEntityBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AdverseEventSuspectEntity';

  /// [instanceX]
  /// Identifies the actual instance of what caused the adverse event. May be
  /// a substance, medication, medication administration, medication
  /// statement or a device.
  InstanceXAdverseEventSuspectEntityBuilder? instanceX;

  /// Getter for [instanceCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get instanceCodeableConcept =>
      instanceX?.isAs<CodeableConceptBuilder>();

  /// Getter for [instanceReference] as a ReferenceBuilder
  ReferenceBuilder? get instanceReference =>
      instanceX?.isAs<ReferenceBuilder>();

  /// [causality]
  /// Information on the possible cause of the event.
  AdverseEventCausalityBuilder? causality;

  /// Converts a [AdverseEventSuspectEntityBuilder]
  /// to [AdverseEventSuspectEntity]
  @override
  AdverseEventSuspectEntity build() =>
      AdverseEventSuspectEntity.fromJson(toJson());

  /// Converts a [AdverseEventSuspectEntityBuilder]
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
    if (instanceX != null) {
      final fhirType = instanceX!.fhirType;
      addField('instance${fhirType.capitalizeFirstLetter()}', instanceX);
    }

    addField('causality', causality);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'instanceX',
      'causality',
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
      case 'instance':
        if (instanceX != null) {
          fields.add(instanceX!);
        }
      case 'instanceX':
        if (instanceX != null) {
          fields.add(instanceX!);
        }
      case 'instanceCodeableConcept':
        if (instanceX is CodeableConceptBuilder) {
          fields.add(instanceX!);
        }
      case 'instanceReference':
        if (instanceX is ReferenceBuilder) {
          fields.add(instanceX!);
        }
      case 'causality':
        if (causality != null) {
          fields.add(causality!);
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
      case 'instance':
      case 'instanceX':
        {
          if (child is InstanceXAdverseEventSuspectEntityBuilder) {
            instanceX = child;
            return;
          } else {
            if (child is CodeableConceptBuilder) {
              instanceX = child;
              return;
            }
            if (child is ReferenceBuilder) {
              instanceX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'instanceCodeableConcept':
        {
          if (child is CodeableConceptBuilder) {
            instanceX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'instanceReference':
        {
          if (child is ReferenceBuilder) {
            instanceX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'causality':
        {
          if (child is AdverseEventCausalityBuilder) {
            causality = child;
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
      case 'instance':
      case 'instanceX':
        return [
          'CodeableConceptBuilder',
          'ReferenceBuilder',
        ];
      case 'instanceCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'instanceReference':
        return ['ReferenceBuilder'];
      case 'causality':
        return ['AdverseEventCausalityBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [AdverseEventSuspectEntityBuilder]
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
      case 'instance':
      case 'instanceX':
      case 'instanceCodeableConcept':
        {
          instanceX = CodeableConceptBuilder.empty();
          return;
        }
      case 'instanceReference':
        {
          instanceX = ReferenceBuilder.empty();
          return;
        }
      case 'causality':
        {
          causality = AdverseEventCausalityBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  AdverseEventSuspectEntityBuilder clone() => throw UnimplementedError();
  @override
  AdverseEventSuspectEntityBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    InstanceXAdverseEventSuspectEntityBuilder? instanceX,
    AdverseEventCausalityBuilder? causality,
    CodeableConceptBuilder? instanceCodeableConcept,
    ReferenceBuilder? instanceReference,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = AdverseEventSuspectEntityBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      instanceX: instanceX ??
          instanceCodeableConcept ??
          instanceReference ??
          this.instanceX,
      causality: causality ?? this.causality,
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
    if (o is! AdverseEventSuspectEntityBuilder) {
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
      instanceX,
      o.instanceX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      causality,
      o.causality,
    )) {
      return false;
    }
    return true;
  }
}

/// [AdverseEventCausalityBuilder]
/// Information on the possible cause of the event.
class AdverseEventCausalityBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [AdverseEventCausalityBuilder]

  AdverseEventCausalityBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.assessmentMethod,
    this.entityRelatedness,
    this.author,
    super.disallowExtensions,
  }) : super(
          objectPath: 'AdverseEvent.suspectEntity.causality',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory AdverseEventCausalityBuilder.empty() =>
      AdverseEventCausalityBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AdverseEventCausalityBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'AdverseEvent.suspectEntity.causality';
    return AdverseEventCausalityBuilder(
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
      assessmentMethod: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'assessmentMethod',
        CodeableConceptBuilder.fromJson,
        '$objectPath.assessmentMethod',
      ),
      entityRelatedness: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'entityRelatedness',
        CodeableConceptBuilder.fromJson,
        '$objectPath.entityRelatedness',
      ),
      author: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'author',
        ReferenceBuilder.fromJson,
        '$objectPath.author',
      ),
    );
  }

  /// Deserialize [AdverseEventCausalityBuilder]
  /// from a [String] or [YamlMap] object
  factory AdverseEventCausalityBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AdverseEventCausalityBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AdverseEventCausalityBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AdverseEventCausalityBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AdverseEventCausalityBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AdverseEventCausalityBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AdverseEventCausalityBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AdverseEventCausality';

  /// [assessmentMethod]
  /// The method of evaluating the relatedness of the suspected entity to the
  /// event.
  CodeableConceptBuilder? assessmentMethod;

  /// [entityRelatedness]
  /// The result of the assessment regarding the relatedness of the suspected
  /// entity to the event.
  CodeableConceptBuilder? entityRelatedness;

  /// [author]
  /// The author of the information on the possible cause of the event.
  ReferenceBuilder? author;

  /// Converts a [AdverseEventCausalityBuilder]
  /// to [AdverseEventCausality]
  @override
  AdverseEventCausality build() => AdverseEventCausality.fromJson(toJson());

  /// Converts a [AdverseEventCausalityBuilder]
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
    addField('assessmentMethod', assessmentMethod);
    addField('entityRelatedness', entityRelatedness);
    addField('author', author);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'assessmentMethod',
      'entityRelatedness',
      'author',
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
      case 'assessmentMethod':
        if (assessmentMethod != null) {
          fields.add(assessmentMethod!);
        }
      case 'entityRelatedness':
        if (entityRelatedness != null) {
          fields.add(entityRelatedness!);
        }
      case 'author':
        if (author != null) {
          fields.add(author!);
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
      case 'assessmentMethod':
        {
          if (child is CodeableConceptBuilder) {
            assessmentMethod = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'entityRelatedness':
        {
          if (child is CodeableConceptBuilder) {
            entityRelatedness = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'author':
        {
          if (child is ReferenceBuilder) {
            author = child;
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
      case 'assessmentMethod':
        return ['CodeableConceptBuilder'];
      case 'entityRelatedness':
        return ['CodeableConceptBuilder'];
      case 'author':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [AdverseEventCausalityBuilder]
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
      case 'assessmentMethod':
        {
          assessmentMethod = CodeableConceptBuilder.empty();
          return;
        }
      case 'entityRelatedness':
        {
          entityRelatedness = CodeableConceptBuilder.empty();
          return;
        }
      case 'author':
        {
          author = ReferenceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  AdverseEventCausalityBuilder clone() => throw UnimplementedError();
  @override
  AdverseEventCausalityBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? assessmentMethod,
    CodeableConceptBuilder? entityRelatedness,
    ReferenceBuilder? author,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = AdverseEventCausalityBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      assessmentMethod: assessmentMethod ?? this.assessmentMethod,
      entityRelatedness: entityRelatedness ?? this.entityRelatedness,
      author: author ?? this.author,
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
    if (o is! AdverseEventCausalityBuilder) {
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
      assessmentMethod,
      o.assessmentMethod,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      entityRelatedness,
      o.entityRelatedness,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      author,
      o.author,
    )) {
      return false;
    }
    return true;
  }
}

/// [AdverseEventContributingFactorBuilder]
/// The contributing factors suspected to have increased the probability or
/// severity of the adverse event.
class AdverseEventContributingFactorBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [AdverseEventContributingFactorBuilder]

  AdverseEventContributingFactorBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    ItemXAdverseEventContributingFactorBuilder? itemX,
    ReferenceBuilder? itemReference,
    CodeableConceptBuilder? itemCodeableConcept,
    super.disallowExtensions,
  })  : itemX = itemX ?? itemReference ?? itemCodeableConcept,
        super(
          objectPath: 'AdverseEvent.contributingFactor',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory AdverseEventContributingFactorBuilder.empty() =>
      AdverseEventContributingFactorBuilder(
        itemX: ReferenceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AdverseEventContributingFactorBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'AdverseEvent.contributingFactor';
    return AdverseEventContributingFactorBuilder(
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
      itemX: JsonParser.parsePolymorphic<
          ItemXAdverseEventContributingFactorBuilder>(
        json,
        {
          'itemReference': ReferenceBuilder.fromJson,
          'itemCodeableConcept': CodeableConceptBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [AdverseEventContributingFactorBuilder]
  /// from a [String] or [YamlMap] object
  factory AdverseEventContributingFactorBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AdverseEventContributingFactorBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AdverseEventContributingFactorBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AdverseEventContributingFactorBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AdverseEventContributingFactorBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AdverseEventContributingFactorBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AdverseEventContributingFactorBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AdverseEventContributingFactor';

  /// [itemX]
  /// The item that is suspected to have increased the probability or
  /// severity of the adverse event.
  ItemXAdverseEventContributingFactorBuilder? itemX;

  /// Getter for [itemReference] as a ReferenceBuilder
  ReferenceBuilder? get itemReference => itemX?.isAs<ReferenceBuilder>();

  /// Getter for [itemCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get itemCodeableConcept =>
      itemX?.isAs<CodeableConceptBuilder>();

  /// Converts a [AdverseEventContributingFactorBuilder]
  /// to [AdverseEventContributingFactor]
  @override
  AdverseEventContributingFactor build() =>
      AdverseEventContributingFactor.fromJson(toJson());

  /// Converts a [AdverseEventContributingFactorBuilder]
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
    if (itemX != null) {
      final fhirType = itemX!.fhirType;
      addField('item${fhirType.capitalizeFirstLetter()}', itemX);
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
      'itemX',
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
        if (itemX != null) {
          fields.add(itemX!);
        }
      case 'itemX':
        if (itemX != null) {
          fields.add(itemX!);
        }
      case 'itemReference':
        if (itemX is ReferenceBuilder) {
          fields.add(itemX!);
        }
      case 'itemCodeableConcept':
        if (itemX is CodeableConceptBuilder) {
          fields.add(itemX!);
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
      case 'itemX':
        {
          if (child is ItemXAdverseEventContributingFactorBuilder) {
            itemX = child;
            return;
          } else {
            if (child is ReferenceBuilder) {
              itemX = child;
              return;
            }
            if (child is CodeableConceptBuilder) {
              itemX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'itemReference':
        {
          if (child is ReferenceBuilder) {
            itemX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'itemCodeableConcept':
        {
          if (child is CodeableConceptBuilder) {
            itemX = child;
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
      case 'item':
      case 'itemX':
        return [
          'ReferenceBuilder',
          'CodeableConceptBuilder',
        ];
      case 'itemReference':
        return ['ReferenceBuilder'];
      case 'itemCodeableConcept':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [AdverseEventContributingFactorBuilder]
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
      case 'itemX':
      case 'itemReference':
        {
          itemX = ReferenceBuilder.empty();
          return;
        }
      case 'itemCodeableConcept':
        {
          itemX = CodeableConceptBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  AdverseEventContributingFactorBuilder clone() => throw UnimplementedError();
  @override
  AdverseEventContributingFactorBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    ItemXAdverseEventContributingFactorBuilder? itemX,
    ReferenceBuilder? itemReference,
    CodeableConceptBuilder? itemCodeableConcept,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = AdverseEventContributingFactorBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      itemX: itemX ?? itemReference ?? itemCodeableConcept ?? this.itemX,
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
    if (o is! AdverseEventContributingFactorBuilder) {
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
      itemX,
      o.itemX,
    )) {
      return false;
    }
    return true;
  }
}

/// [AdverseEventPreventiveActionBuilder]
/// Preventive actions that contributed to avoiding the adverse event.
class AdverseEventPreventiveActionBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [AdverseEventPreventiveActionBuilder]

  AdverseEventPreventiveActionBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    ItemXAdverseEventPreventiveActionBuilder? itemX,
    ReferenceBuilder? itemReference,
    CodeableConceptBuilder? itemCodeableConcept,
    super.disallowExtensions,
  })  : itemX = itemX ?? itemReference ?? itemCodeableConcept,
        super(
          objectPath: 'AdverseEvent.preventiveAction',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory AdverseEventPreventiveActionBuilder.empty() =>
      AdverseEventPreventiveActionBuilder(
        itemX: ReferenceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AdverseEventPreventiveActionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'AdverseEvent.preventiveAction';
    return AdverseEventPreventiveActionBuilder(
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
      itemX:
          JsonParser.parsePolymorphic<ItemXAdverseEventPreventiveActionBuilder>(
        json,
        {
          'itemReference': ReferenceBuilder.fromJson,
          'itemCodeableConcept': CodeableConceptBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [AdverseEventPreventiveActionBuilder]
  /// from a [String] or [YamlMap] object
  factory AdverseEventPreventiveActionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AdverseEventPreventiveActionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AdverseEventPreventiveActionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AdverseEventPreventiveActionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AdverseEventPreventiveActionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AdverseEventPreventiveActionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AdverseEventPreventiveActionBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AdverseEventPreventiveAction';

  /// [itemX]
  /// The action that contributed to avoiding the adverse event.
  ItemXAdverseEventPreventiveActionBuilder? itemX;

  /// Getter for [itemReference] as a ReferenceBuilder
  ReferenceBuilder? get itemReference => itemX?.isAs<ReferenceBuilder>();

  /// Getter for [itemCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get itemCodeableConcept =>
      itemX?.isAs<CodeableConceptBuilder>();

  /// Converts a [AdverseEventPreventiveActionBuilder]
  /// to [AdverseEventPreventiveAction]
  @override
  AdverseEventPreventiveAction build() =>
      AdverseEventPreventiveAction.fromJson(toJson());

  /// Converts a [AdverseEventPreventiveActionBuilder]
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
    if (itemX != null) {
      final fhirType = itemX!.fhirType;
      addField('item${fhirType.capitalizeFirstLetter()}', itemX);
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
      'itemX',
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
        if (itemX != null) {
          fields.add(itemX!);
        }
      case 'itemX':
        if (itemX != null) {
          fields.add(itemX!);
        }
      case 'itemReference':
        if (itemX is ReferenceBuilder) {
          fields.add(itemX!);
        }
      case 'itemCodeableConcept':
        if (itemX is CodeableConceptBuilder) {
          fields.add(itemX!);
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
      case 'itemX':
        {
          if (child is ItemXAdverseEventPreventiveActionBuilder) {
            itemX = child;
            return;
          } else {
            if (child is ReferenceBuilder) {
              itemX = child;
              return;
            }
            if (child is CodeableConceptBuilder) {
              itemX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'itemReference':
        {
          if (child is ReferenceBuilder) {
            itemX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'itemCodeableConcept':
        {
          if (child is CodeableConceptBuilder) {
            itemX = child;
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
      case 'item':
      case 'itemX':
        return [
          'ReferenceBuilder',
          'CodeableConceptBuilder',
        ];
      case 'itemReference':
        return ['ReferenceBuilder'];
      case 'itemCodeableConcept':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [AdverseEventPreventiveActionBuilder]
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
      case 'itemX':
      case 'itemReference':
        {
          itemX = ReferenceBuilder.empty();
          return;
        }
      case 'itemCodeableConcept':
        {
          itemX = CodeableConceptBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  AdverseEventPreventiveActionBuilder clone() => throw UnimplementedError();
  @override
  AdverseEventPreventiveActionBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    ItemXAdverseEventPreventiveActionBuilder? itemX,
    ReferenceBuilder? itemReference,
    CodeableConceptBuilder? itemCodeableConcept,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = AdverseEventPreventiveActionBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      itemX: itemX ?? itemReference ?? itemCodeableConcept ?? this.itemX,
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
    if (o is! AdverseEventPreventiveActionBuilder) {
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
      itemX,
      o.itemX,
    )) {
      return false;
    }
    return true;
  }
}

/// [AdverseEventMitigatingActionBuilder]
/// The ameliorating action taken after the adverse event occured in order
/// to reduce the extent of harm.
class AdverseEventMitigatingActionBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [AdverseEventMitigatingActionBuilder]

  AdverseEventMitigatingActionBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    ItemXAdverseEventMitigatingActionBuilder? itemX,
    ReferenceBuilder? itemReference,
    CodeableConceptBuilder? itemCodeableConcept,
    super.disallowExtensions,
  })  : itemX = itemX ?? itemReference ?? itemCodeableConcept,
        super(
          objectPath: 'AdverseEvent.mitigatingAction',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory AdverseEventMitigatingActionBuilder.empty() =>
      AdverseEventMitigatingActionBuilder(
        itemX: ReferenceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AdverseEventMitigatingActionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'AdverseEvent.mitigatingAction';
    return AdverseEventMitigatingActionBuilder(
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
      itemX:
          JsonParser.parsePolymorphic<ItemXAdverseEventMitigatingActionBuilder>(
        json,
        {
          'itemReference': ReferenceBuilder.fromJson,
          'itemCodeableConcept': CodeableConceptBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [AdverseEventMitigatingActionBuilder]
  /// from a [String] or [YamlMap] object
  factory AdverseEventMitigatingActionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AdverseEventMitigatingActionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AdverseEventMitigatingActionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AdverseEventMitigatingActionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AdverseEventMitigatingActionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AdverseEventMitigatingActionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AdverseEventMitigatingActionBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AdverseEventMitigatingAction';

  /// [itemX]
  /// The ameliorating action taken after the adverse event occured in order
  /// to reduce the extent of harm.
  ItemXAdverseEventMitigatingActionBuilder? itemX;

  /// Getter for [itemReference] as a ReferenceBuilder
  ReferenceBuilder? get itemReference => itemX?.isAs<ReferenceBuilder>();

  /// Getter for [itemCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get itemCodeableConcept =>
      itemX?.isAs<CodeableConceptBuilder>();

  /// Converts a [AdverseEventMitigatingActionBuilder]
  /// to [AdverseEventMitigatingAction]
  @override
  AdverseEventMitigatingAction build() =>
      AdverseEventMitigatingAction.fromJson(toJson());

  /// Converts a [AdverseEventMitigatingActionBuilder]
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
    if (itemX != null) {
      final fhirType = itemX!.fhirType;
      addField('item${fhirType.capitalizeFirstLetter()}', itemX);
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
      'itemX',
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
        if (itemX != null) {
          fields.add(itemX!);
        }
      case 'itemX':
        if (itemX != null) {
          fields.add(itemX!);
        }
      case 'itemReference':
        if (itemX is ReferenceBuilder) {
          fields.add(itemX!);
        }
      case 'itemCodeableConcept':
        if (itemX is CodeableConceptBuilder) {
          fields.add(itemX!);
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
      case 'itemX':
        {
          if (child is ItemXAdverseEventMitigatingActionBuilder) {
            itemX = child;
            return;
          } else {
            if (child is ReferenceBuilder) {
              itemX = child;
              return;
            }
            if (child is CodeableConceptBuilder) {
              itemX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'itemReference':
        {
          if (child is ReferenceBuilder) {
            itemX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'itemCodeableConcept':
        {
          if (child is CodeableConceptBuilder) {
            itemX = child;
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
      case 'item':
      case 'itemX':
        return [
          'ReferenceBuilder',
          'CodeableConceptBuilder',
        ];
      case 'itemReference':
        return ['ReferenceBuilder'];
      case 'itemCodeableConcept':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [AdverseEventMitigatingActionBuilder]
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
      case 'itemX':
      case 'itemReference':
        {
          itemX = ReferenceBuilder.empty();
          return;
        }
      case 'itemCodeableConcept':
        {
          itemX = CodeableConceptBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  AdverseEventMitigatingActionBuilder clone() => throw UnimplementedError();
  @override
  AdverseEventMitigatingActionBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    ItemXAdverseEventMitigatingActionBuilder? itemX,
    ReferenceBuilder? itemReference,
    CodeableConceptBuilder? itemCodeableConcept,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = AdverseEventMitigatingActionBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      itemX: itemX ?? itemReference ?? itemCodeableConcept ?? this.itemX,
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
    if (o is! AdverseEventMitigatingActionBuilder) {
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
      itemX,
      o.itemX,
    )) {
      return false;
    }
    return true;
  }
}

/// [AdverseEventSupportingInfoBuilder]
/// Supporting information relevant to the event.
class AdverseEventSupportingInfoBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [AdverseEventSupportingInfoBuilder]

  AdverseEventSupportingInfoBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    ItemXAdverseEventSupportingInfoBuilder? itemX,
    ReferenceBuilder? itemReference,
    CodeableConceptBuilder? itemCodeableConcept,
    super.disallowExtensions,
  })  : itemX = itemX ?? itemReference ?? itemCodeableConcept,
        super(
          objectPath: 'AdverseEvent.supportingInfo',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory AdverseEventSupportingInfoBuilder.empty() =>
      AdverseEventSupportingInfoBuilder(
        itemX: ReferenceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AdverseEventSupportingInfoBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'AdverseEvent.supportingInfo';
    return AdverseEventSupportingInfoBuilder(
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
      itemX:
          JsonParser.parsePolymorphic<ItemXAdverseEventSupportingInfoBuilder>(
        json,
        {
          'itemReference': ReferenceBuilder.fromJson,
          'itemCodeableConcept': CodeableConceptBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [AdverseEventSupportingInfoBuilder]
  /// from a [String] or [YamlMap] object
  factory AdverseEventSupportingInfoBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AdverseEventSupportingInfoBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AdverseEventSupportingInfoBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AdverseEventSupportingInfoBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AdverseEventSupportingInfoBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AdverseEventSupportingInfoBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AdverseEventSupportingInfoBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AdverseEventSupportingInfo';

  /// [itemX]
  /// Relevant past history for the subject. In a clinical care context, an
  /// example being a patient had an adverse event following a pencillin
  /// administration and the patient had a previously documented penicillin
  /// allergy. In a clinical trials context, an example is a bunion or rash
  /// that was present prior to the study. Additionally, the supporting item
  /// can be a document that is relevant to this instance of the adverse
  /// event that is not part of the subject's medical history. For example, a
  /// clinical note, staff list, or material safety data sheet (MSDS).
  /// Supporting information is not a contributing factor, preventive action,
  /// or mitigating action.
  ItemXAdverseEventSupportingInfoBuilder? itemX;

  /// Getter for [itemReference] as a ReferenceBuilder
  ReferenceBuilder? get itemReference => itemX?.isAs<ReferenceBuilder>();

  /// Getter for [itemCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get itemCodeableConcept =>
      itemX?.isAs<CodeableConceptBuilder>();

  /// Converts a [AdverseEventSupportingInfoBuilder]
  /// to [AdverseEventSupportingInfo]
  @override
  AdverseEventSupportingInfo build() =>
      AdverseEventSupportingInfo.fromJson(toJson());

  /// Converts a [AdverseEventSupportingInfoBuilder]
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
    if (itemX != null) {
      final fhirType = itemX!.fhirType;
      addField('item${fhirType.capitalizeFirstLetter()}', itemX);
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
      'itemX',
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
        if (itemX != null) {
          fields.add(itemX!);
        }
      case 'itemX':
        if (itemX != null) {
          fields.add(itemX!);
        }
      case 'itemReference':
        if (itemX is ReferenceBuilder) {
          fields.add(itemX!);
        }
      case 'itemCodeableConcept':
        if (itemX is CodeableConceptBuilder) {
          fields.add(itemX!);
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
      case 'itemX':
        {
          if (child is ItemXAdverseEventSupportingInfoBuilder) {
            itemX = child;
            return;
          } else {
            if (child is ReferenceBuilder) {
              itemX = child;
              return;
            }
            if (child is CodeableConceptBuilder) {
              itemX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'itemReference':
        {
          if (child is ReferenceBuilder) {
            itemX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'itemCodeableConcept':
        {
          if (child is CodeableConceptBuilder) {
            itemX = child;
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
      case 'item':
      case 'itemX':
        return [
          'ReferenceBuilder',
          'CodeableConceptBuilder',
        ];
      case 'itemReference':
        return ['ReferenceBuilder'];
      case 'itemCodeableConcept':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [AdverseEventSupportingInfoBuilder]
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
      case 'itemX':
      case 'itemReference':
        {
          itemX = ReferenceBuilder.empty();
          return;
        }
      case 'itemCodeableConcept':
        {
          itemX = CodeableConceptBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  AdverseEventSupportingInfoBuilder clone() => throw UnimplementedError();
  @override
  AdverseEventSupportingInfoBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    ItemXAdverseEventSupportingInfoBuilder? itemX,
    ReferenceBuilder? itemReference,
    CodeableConceptBuilder? itemCodeableConcept,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = AdverseEventSupportingInfoBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      itemX: itemX ?? itemReference ?? itemCodeableConcept ?? this.itemX,
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
    if (o is! AdverseEventSupportingInfoBuilder) {
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
      itemX,
      o.itemX,
    )) {
      return false;
    }
    return true;
  }
}
