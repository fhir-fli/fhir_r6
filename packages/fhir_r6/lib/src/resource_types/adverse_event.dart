import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'adverse_event.g.dart';

/// [AdverseEvent]
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
class AdverseEvent extends DomainResource {
  /// Primary constructor for
  /// [AdverseEvent]

  const AdverseEvent({
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
    required this.actuality,
    this.category,
    this.code,
    required this.subject,
    this.encounter,
    OccurrenceXAdverseEvent? occurrenceX,
    FhirDateTime? occurrenceDateTime,
    Period? occurrencePeriod,
    Timing? occurrenceTiming,
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
          resourceType: R6ResourceType.AdverseEvent,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AdverseEvent.fromJson(
    Map<String, dynamic> json,
  ) {
    return AdverseEvent(
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
      status: JsonParser.parsePrimitive<AdverseEventStatus>(
        json,
        'status',
        AdverseEventStatus.fromJson,
      )!,
      actuality: JsonParser.parsePrimitive<AdverseEventActuality>(
        json,
        'actuality',
        AdverseEventActuality.fromJson,
      )!,
      category: (json['category'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
      ),
      subject: JsonParser.parseObject<Reference>(
        json,
        'subject',
        Reference.fromJson,
      )!,
      encounter: JsonParser.parseObject<Reference>(
        json,
        'encounter',
        Reference.fromJson,
      ),
      occurrenceX: JsonParser.parsePolymorphic<OccurrenceXAdverseEvent>(
        json,
        {
          'occurrenceDateTime': FhirDateTime.fromJson,
          'occurrencePeriod': Period.fromJson,
          'occurrenceTiming': Timing.fromJson,
        },
      ),
      detected: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'detected',
        FhirDateTime.fromJson,
      ),
      recordedDate: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'recordedDate',
        FhirDateTime.fromJson,
      ),
      resultingEffect: (json['resultingEffect'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      location: JsonParser.parseObject<Reference>(
        json,
        'location',
        Reference.fromJson,
      ),
      seriousness: JsonParser.parseObject<CodeableConcept>(
        json,
        'seriousness',
        CodeableConcept.fromJson,
      ),
      outcome: (json['outcome'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      recorder: JsonParser.parseObject<Reference>(
        json,
        'recorder',
        Reference.fromJson,
      ),
      participant: (json['participant'] as List<dynamic>?)
          ?.map<AdverseEventParticipant>(
            (v) => AdverseEventParticipant.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      study: (json['study'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      expectedInResearchStudy: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'expectedInResearchStudy',
        FhirBoolean.fromJson,
      ),
      suspectEntity: (json['suspectEntity'] as List<dynamic>?)
          ?.map<AdverseEventSuspectEntity>(
            (v) => AdverseEventSuspectEntity.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      contributingFactor: (json['contributingFactor'] as List<dynamic>?)
          ?.map<AdverseEventContributingFactor>(
            (v) => AdverseEventContributingFactor.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      preventiveAction: (json['preventiveAction'] as List<dynamic>?)
          ?.map<AdverseEventPreventiveAction>(
            (v) => AdverseEventPreventiveAction.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      mitigatingAction: (json['mitigatingAction'] as List<dynamic>?)
          ?.map<AdverseEventMitigatingAction>(
            (v) => AdverseEventMitigatingAction.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      supportingInfo: (json['supportingInfo'] as List<dynamic>?)
          ?.map<AdverseEventSupportingInfo>(
            (v) => AdverseEventSupportingInfo.fromJson(
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
    );
  }

  /// Deserialize [AdverseEvent]
  /// from a [String] or [YamlMap] object
  factory AdverseEvent.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AdverseEvent.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AdverseEvent.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AdverseEvent '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AdverseEvent]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AdverseEvent.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AdverseEvent.fromJson(json);
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
  final List<Identifier>? identifier;

  /// [status]
  /// The current state of the adverse event or potential adverse event.
  final AdverseEventStatus status;

  /// [actuality]
  /// Whether the event actually happened or was a near miss. Note that this
  /// is independent of whether anyone was affected or harmed or how
  /// severely.
  final AdverseEventActuality actuality;

  /// [category]
  /// The overall type of event, intended for search and filtering purposes.
  final List<CodeableConcept>? category;

  /// [code]
  /// Specific event that occurred or that was averted, such as patient fall,
  /// wrong organ removed, or wrong blood transfused.
  final CodeableConcept? code;

  /// [subject]
  /// This subject or group impacted by the event.
  final Reference subject;

  /// [encounter]
  /// The Encounter associated with the start of the AdverseEvent.
  final Reference? encounter;

  /// [occurrenceX]
  /// The date (and perhaps time) when the adverse event occurred.
  final OccurrenceXAdverseEvent? occurrenceX;

  /// Getter for [occurrenceDateTime] as a FhirDateTime
  FhirDateTime? get occurrenceDateTime => occurrenceX?.isAs<FhirDateTime>();

  /// Getter for [occurrencePeriod] as a Period
  Period? get occurrencePeriod => occurrenceX?.isAs<Period>();

  /// Getter for [occurrenceTiming] as a Timing
  Timing? get occurrenceTiming => occurrenceX?.isAs<Timing>();

  /// [detected]
  /// Estimated or actual date the AdverseEvent began, in the opinion of the
  /// reporter.
  final FhirDateTime? detected;

  /// [recordedDate]
  /// The date on which the existence of the AdverseEvent was first recorded.
  final FhirDateTime? recordedDate;

  /// [resultingEffect]
  /// Information about the condition that occurred as a result of the
  /// adverse event, such as hives due to the exposure to a substance (for
  /// example, a drug or a chemical) or a broken leg as a result of the fall.
  final List<Reference>? resultingEffect;

  /// [location]
  /// The information about where the adverse event occurred.
  final Reference? location;

  /// [seriousness]
  /// Assessment whether this event, or averted event, was of clinical
  /// importance.
  final CodeableConcept? seriousness;

  /// [outcome]
  /// Describes the type of outcome from the adverse event, such as resolved,
  /// recovering, ongoing, resolved-with-sequelae, or fatal.
  final List<CodeableConcept>? outcome;

  /// [recorder]
  /// Information on who recorded the adverse event. May be the patient or a
  /// practitioner.
  final Reference? recorder;

  /// [participant]
  /// Indicates who or what participated in the adverse event and how they
  /// were involved.
  final List<AdverseEventParticipant>? participant;

  /// [study]
  /// The research study that the subject is enrolled in.
  final List<Reference>? study;

  /// [expectedInResearchStudy]
  /// Considered likely or probable or anticipated in the research study.
  /// Whether the reported event matches any of the outcomes for the patient
  /// that are considered by the study as known or likely.
  final FhirBoolean? expectedInResearchStudy;

  /// [suspectEntity]
  /// Describes the entity that is suspected to have caused the adverse
  /// event.
  final List<AdverseEventSuspectEntity>? suspectEntity;

  /// [contributingFactor]
  /// The contributing factors suspected to have increased the probability or
  /// severity of the adverse event.
  final List<AdverseEventContributingFactor>? contributingFactor;

  /// [preventiveAction]
  /// Preventive actions that contributed to avoiding the adverse event.
  final List<AdverseEventPreventiveAction>? preventiveAction;

  /// [mitigatingAction]
  /// The ameliorating action taken after the adverse event occured in order
  /// to reduce the extent of harm.
  final List<AdverseEventMitigatingAction>? mitigatingAction;

  /// [supportingInfo]
  /// Supporting information relevant to the event.
  final List<AdverseEventSupportingInfo>? supportingInfo;

  /// [note]
  /// Comments made about the adverse event by the performer, subject or
  /// other participants.
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
      'actuality',
      actuality,
    );
    addField(
      'category',
      category,
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
      'encounter',
      encounter,
    );
    if (occurrenceX != null) {
      final fhirType = occurrenceX!.fhirType;
      addField(
        'occurrence${fhirType.capitalize()}',
        occurrenceX,
      );
    }

    addField(
      'detected',
      detected,
    );
    addField(
      'recordedDate',
      recordedDate,
    );
    addField(
      'resultingEffect',
      resultingEffect,
    );
    addField(
      'location',
      location,
    );
    addField(
      'seriousness',
      seriousness,
    );
    addField(
      'outcome',
      outcome,
    );
    addField(
      'recorder',
      recorder,
    );
    addField(
      'participant',
      participant,
    );
    addField(
      'study',
      study,
    );
    addField(
      'expectedInResearchStudy',
      expectedInResearchStudy,
    );
    addField(
      'suspectEntity',
      suspectEntity,
    );
    addField(
      'contributingFactor',
      contributingFactor,
    );
    addField(
      'preventiveAction',
      preventiveAction,
    );
    addField(
      'mitigatingAction',
      mitigatingAction,
    );
    addField(
      'supportingInfo',
      supportingInfo,
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
      case 'actuality':
        fields.add(actuality);
      case 'category':
        if (category != null) {
          fields.addAll(category!);
        }
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'subject':
        fields.add(subject);
      case 'encounter':
        if (encounter != null) {
          fields.add(encounter!);
        }
      case 'occurrence':
        fields.add(occurrenceX!);
      case 'occurrenceX':
        fields.add(occurrenceX!);
      case 'occurrenceDateTime':
        if (occurrenceX is FhirDateTime) {
          fields.add(occurrenceX!);
        }
      case 'occurrencePeriod':
        if (occurrenceX is Period) {
          fields.add(occurrenceX!);
        }
      case 'occurrenceTiming':
        if (occurrenceX is Timing) {
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  AdverseEvent clone() => copyWith();

  /// Copy function for [AdverseEvent]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $AdverseEventCopyWith<AdverseEvent> get copyWith =>
      _$AdverseEventCopyWithImpl<AdverseEvent>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! AdverseEvent) {
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
      actuality,
      o.actuality,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
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
    if (!listEquals<Reference>(
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
    if (!listEquals<CodeableConcept>(
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
    if (!listEquals<AdverseEventParticipant>(
      participant,
      o.participant,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
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
    if (!listEquals<AdverseEventSuspectEntity>(
      suspectEntity,
      o.suspectEntity,
    )) {
      return false;
    }
    if (!listEquals<AdverseEventContributingFactor>(
      contributingFactor,
      o.contributingFactor,
    )) {
      return false;
    }
    if (!listEquals<AdverseEventPreventiveAction>(
      preventiveAction,
      o.preventiveAction,
    )) {
      return false;
    }
    if (!listEquals<AdverseEventMitigatingAction>(
      mitigatingAction,
      o.mitigatingAction,
    )) {
      return false;
    }
    if (!listEquals<AdverseEventSupportingInfo>(
      supportingInfo,
      o.supportingInfo,
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

/// [AdverseEventParticipant]
/// Indicates who or what participated in the adverse event and how they
/// were involved.
class AdverseEventParticipant extends BackboneElement {
  /// Primary constructor for
  /// [AdverseEventParticipant]

  const AdverseEventParticipant({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.function_,
    required this.actor,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AdverseEventParticipant.fromJson(
    Map<String, dynamic> json,
  ) {
    return AdverseEventParticipant(
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
      function_: JsonParser.parseObject<CodeableConcept>(
        json,
        'function',
        CodeableConcept.fromJson,
      ),
      actor: JsonParser.parseObject<Reference>(
        json,
        'actor',
        Reference.fromJson,
      )!,
    );
  }

  /// Deserialize [AdverseEventParticipant]
  /// from a [String] or [YamlMap] object
  factory AdverseEventParticipant.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AdverseEventParticipant.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AdverseEventParticipant.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AdverseEventParticipant '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AdverseEventParticipant]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AdverseEventParticipant.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AdverseEventParticipant.fromJson(json);
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
  final CodeableConcept? function_;

  /// [actor]
  /// Indicates who or what participated in the event.
  final Reference actor;
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
      'function',
      function_,
    );
    addField(
      'actor',
      actor,
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
      'function',
      'actor',
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
      case 'function':
        if (function_ != null) {
          fields.add(function_!);
        }
      case 'actor':
        fields.add(actor);
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
  AdverseEventParticipant clone() => copyWith();

  /// Copy function for [AdverseEventParticipant]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $AdverseEventParticipantCopyWith<AdverseEventParticipant> get copyWith =>
      _$AdverseEventParticipantCopyWithImpl<AdverseEventParticipant>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! AdverseEventParticipant) {
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

/// [AdverseEventSuspectEntity]
/// Describes the entity that is suspected to have caused the adverse
/// event.
class AdverseEventSuspectEntity extends BackboneElement {
  /// Primary constructor for
  /// [AdverseEventSuspectEntity]

  const AdverseEventSuspectEntity({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.instanceX,
    this.causality,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AdverseEventSuspectEntity.fromJson(
    Map<String, dynamic> json,
  ) {
    return AdverseEventSuspectEntity(
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
      instanceX:
          JsonParser.parsePolymorphic<InstanceXAdverseEventSuspectEntity>(
        json,
        {
          'instanceCodeableConcept': CodeableConcept.fromJson,
          'instanceReference': Reference.fromJson,
        },
      )!,
      causality: JsonParser.parseObject<AdverseEventCausality>(
        json,
        'causality',
        AdverseEventCausality.fromJson,
      ),
    );
  }

  /// Deserialize [AdverseEventSuspectEntity]
  /// from a [String] or [YamlMap] object
  factory AdverseEventSuspectEntity.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AdverseEventSuspectEntity.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AdverseEventSuspectEntity.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AdverseEventSuspectEntity '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AdverseEventSuspectEntity]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AdverseEventSuspectEntity.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AdverseEventSuspectEntity.fromJson(json);
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
  final InstanceXAdverseEventSuspectEntity instanceX;

  /// Getter for [instanceCodeableConcept] as a CodeableConcept
  CodeableConcept? get instanceCodeableConcept =>
      instanceX.isAs<CodeableConcept>();

  /// Getter for [instanceReference] as a Reference
  Reference? get instanceReference => instanceX.isAs<Reference>();

  /// [causality]
  /// Information on the possible cause of the event.
  final AdverseEventCausality? causality;
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
    final instanceXFhirType = instanceX.fhirType;
    addField(
      'instance${instanceXFhirType.capitalize()}',
      instanceX,
    );

    addField(
      'causality',
      causality,
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
      'instanceX',
      'causality',
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
      case 'instance':
        fields.add(instanceX);
      case 'instanceX':
        fields.add(instanceX);
      case 'instanceCodeableConcept':
        if (instanceX is CodeableConcept) {
          fields.add(instanceX);
        }
      case 'instanceReference':
        if (instanceX is Reference) {
          fields.add(instanceX);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  AdverseEventSuspectEntity clone() => copyWith();

  /// Copy function for [AdverseEventSuspectEntity]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $AdverseEventSuspectEntityCopyWith<AdverseEventSuspectEntity> get copyWith =>
      _$AdverseEventSuspectEntityCopyWithImpl<AdverseEventSuspectEntity>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! AdverseEventSuspectEntity) {
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

/// [AdverseEventCausality]
/// Information on the possible cause of the event.
class AdverseEventCausality extends BackboneElement {
  /// Primary constructor for
  /// [AdverseEventCausality]

  const AdverseEventCausality({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.assessmentMethod,
    this.entityRelatedness,
    this.author,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AdverseEventCausality.fromJson(
    Map<String, dynamic> json,
  ) {
    return AdverseEventCausality(
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
      assessmentMethod: JsonParser.parseObject<CodeableConcept>(
        json,
        'assessmentMethod',
        CodeableConcept.fromJson,
      ),
      entityRelatedness: JsonParser.parseObject<CodeableConcept>(
        json,
        'entityRelatedness',
        CodeableConcept.fromJson,
      ),
      author: JsonParser.parseObject<Reference>(
        json,
        'author',
        Reference.fromJson,
      ),
    );
  }

  /// Deserialize [AdverseEventCausality]
  /// from a [String] or [YamlMap] object
  factory AdverseEventCausality.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AdverseEventCausality.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AdverseEventCausality.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AdverseEventCausality '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AdverseEventCausality]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AdverseEventCausality.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AdverseEventCausality.fromJson(json);
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
  final CodeableConcept? assessmentMethod;

  /// [entityRelatedness]
  /// The result of the assessment regarding the relatedness of the suspected
  /// entity to the event.
  final CodeableConcept? entityRelatedness;

  /// [author]
  /// The author of the information on the possible cause of the event.
  final Reference? author;
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
      'assessmentMethod',
      assessmentMethod,
    );
    addField(
      'entityRelatedness',
      entityRelatedness,
    );
    addField(
      'author',
      author,
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
      'assessmentMethod',
      'entityRelatedness',
      'author',
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  AdverseEventCausality clone() => copyWith();

  /// Copy function for [AdverseEventCausality]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $AdverseEventCausalityCopyWith<AdverseEventCausality> get copyWith =>
      _$AdverseEventCausalityCopyWithImpl<AdverseEventCausality>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! AdverseEventCausality) {
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

/// [AdverseEventContributingFactor]
/// The contributing factors suspected to have increased the probability or
/// severity of the adverse event.
class AdverseEventContributingFactor extends BackboneElement {
  /// Primary constructor for
  /// [AdverseEventContributingFactor]

  const AdverseEventContributingFactor({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.itemX,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AdverseEventContributingFactor.fromJson(
    Map<String, dynamic> json,
  ) {
    return AdverseEventContributingFactor(
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
      itemX: JsonParser.parsePolymorphic<ItemXAdverseEventContributingFactor>(
        json,
        {
          'itemReference': Reference.fromJson,
          'itemCodeableConcept': CodeableConcept.fromJson,
        },
      )!,
    );
  }

  /// Deserialize [AdverseEventContributingFactor]
  /// from a [String] or [YamlMap] object
  factory AdverseEventContributingFactor.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AdverseEventContributingFactor.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AdverseEventContributingFactor.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AdverseEventContributingFactor '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AdverseEventContributingFactor]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AdverseEventContributingFactor.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AdverseEventContributingFactor.fromJson(json);
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
  final ItemXAdverseEventContributingFactor itemX;

  /// Getter for [itemReference] as a Reference
  Reference? get itemReference => itemX.isAs<Reference>();

  /// Getter for [itemCodeableConcept] as a CodeableConcept
  CodeableConcept? get itemCodeableConcept => itemX.isAs<CodeableConcept>();
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
    final itemXFhirType = itemX.fhirType;
    addField(
      'item${itemXFhirType.capitalize()}',
      itemX,
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
      'itemX',
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
      case 'item':
        fields.add(itemX);
      case 'itemX':
        fields.add(itemX);
      case 'itemReference':
        if (itemX is Reference) {
          fields.add(itemX);
        }
      case 'itemCodeableConcept':
        if (itemX is CodeableConcept) {
          fields.add(itemX);
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
  AdverseEventContributingFactor clone() => copyWith();

  /// Copy function for [AdverseEventContributingFactor]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $AdverseEventContributingFactorCopyWith<AdverseEventContributingFactor>
      get copyWith => _$AdverseEventContributingFactorCopyWithImpl<
              AdverseEventContributingFactor>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! AdverseEventContributingFactor) {
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
      itemX,
      o.itemX,
    )) {
      return false;
    }
    return true;
  }
}

/// [AdverseEventPreventiveAction]
/// Preventive actions that contributed to avoiding the adverse event.
class AdverseEventPreventiveAction extends BackboneElement {
  /// Primary constructor for
  /// [AdverseEventPreventiveAction]

  const AdverseEventPreventiveAction({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.itemX,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AdverseEventPreventiveAction.fromJson(
    Map<String, dynamic> json,
  ) {
    return AdverseEventPreventiveAction(
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
      itemX: JsonParser.parsePolymorphic<ItemXAdverseEventPreventiveAction>(
        json,
        {
          'itemReference': Reference.fromJson,
          'itemCodeableConcept': CodeableConcept.fromJson,
        },
      )!,
    );
  }

  /// Deserialize [AdverseEventPreventiveAction]
  /// from a [String] or [YamlMap] object
  factory AdverseEventPreventiveAction.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AdverseEventPreventiveAction.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AdverseEventPreventiveAction.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AdverseEventPreventiveAction '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AdverseEventPreventiveAction]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AdverseEventPreventiveAction.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AdverseEventPreventiveAction.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AdverseEventPreventiveAction';

  /// [itemX]
  /// The action that contributed to avoiding the adverse event.
  final ItemXAdverseEventPreventiveAction itemX;

  /// Getter for [itemReference] as a Reference
  Reference? get itemReference => itemX.isAs<Reference>();

  /// Getter for [itemCodeableConcept] as a CodeableConcept
  CodeableConcept? get itemCodeableConcept => itemX.isAs<CodeableConcept>();
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
    final itemXFhirType = itemX.fhirType;
    addField(
      'item${itemXFhirType.capitalize()}',
      itemX,
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
      'itemX',
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
      case 'item':
        fields.add(itemX);
      case 'itemX':
        fields.add(itemX);
      case 'itemReference':
        if (itemX is Reference) {
          fields.add(itemX);
        }
      case 'itemCodeableConcept':
        if (itemX is CodeableConcept) {
          fields.add(itemX);
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
  AdverseEventPreventiveAction clone() => copyWith();

  /// Copy function for [AdverseEventPreventiveAction]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $AdverseEventPreventiveActionCopyWith<AdverseEventPreventiveAction>
      get copyWith => _$AdverseEventPreventiveActionCopyWithImpl<
              AdverseEventPreventiveAction>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! AdverseEventPreventiveAction) {
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
      itemX,
      o.itemX,
    )) {
      return false;
    }
    return true;
  }
}

/// [AdverseEventMitigatingAction]
/// The ameliorating action taken after the adverse event occured in order
/// to reduce the extent of harm.
class AdverseEventMitigatingAction extends BackboneElement {
  /// Primary constructor for
  /// [AdverseEventMitigatingAction]

  const AdverseEventMitigatingAction({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.itemX,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AdverseEventMitigatingAction.fromJson(
    Map<String, dynamic> json,
  ) {
    return AdverseEventMitigatingAction(
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
      itemX: JsonParser.parsePolymorphic<ItemXAdverseEventMitigatingAction>(
        json,
        {
          'itemReference': Reference.fromJson,
          'itemCodeableConcept': CodeableConcept.fromJson,
        },
      )!,
    );
  }

  /// Deserialize [AdverseEventMitigatingAction]
  /// from a [String] or [YamlMap] object
  factory AdverseEventMitigatingAction.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AdverseEventMitigatingAction.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AdverseEventMitigatingAction.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AdverseEventMitigatingAction '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AdverseEventMitigatingAction]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AdverseEventMitigatingAction.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AdverseEventMitigatingAction.fromJson(json);
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
  final ItemXAdverseEventMitigatingAction itemX;

  /// Getter for [itemReference] as a Reference
  Reference? get itemReference => itemX.isAs<Reference>();

  /// Getter for [itemCodeableConcept] as a CodeableConcept
  CodeableConcept? get itemCodeableConcept => itemX.isAs<CodeableConcept>();
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
    final itemXFhirType = itemX.fhirType;
    addField(
      'item${itemXFhirType.capitalize()}',
      itemX,
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
      'itemX',
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
      case 'item':
        fields.add(itemX);
      case 'itemX':
        fields.add(itemX);
      case 'itemReference':
        if (itemX is Reference) {
          fields.add(itemX);
        }
      case 'itemCodeableConcept':
        if (itemX is CodeableConcept) {
          fields.add(itemX);
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
  AdverseEventMitigatingAction clone() => copyWith();

  /// Copy function for [AdverseEventMitigatingAction]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $AdverseEventMitigatingActionCopyWith<AdverseEventMitigatingAction>
      get copyWith => _$AdverseEventMitigatingActionCopyWithImpl<
              AdverseEventMitigatingAction>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! AdverseEventMitigatingAction) {
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
      itemX,
      o.itemX,
    )) {
      return false;
    }
    return true;
  }
}

/// [AdverseEventSupportingInfo]
/// Supporting information relevant to the event.
class AdverseEventSupportingInfo extends BackboneElement {
  /// Primary constructor for
  /// [AdverseEventSupportingInfo]

  const AdverseEventSupportingInfo({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.itemX,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AdverseEventSupportingInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    return AdverseEventSupportingInfo(
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
      itemX: JsonParser.parsePolymorphic<ItemXAdverseEventSupportingInfo>(
        json,
        {
          'itemReference': Reference.fromJson,
          'itemCodeableConcept': CodeableConcept.fromJson,
        },
      )!,
    );
  }

  /// Deserialize [AdverseEventSupportingInfo]
  /// from a [String] or [YamlMap] object
  factory AdverseEventSupportingInfo.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AdverseEventSupportingInfo.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AdverseEventSupportingInfo.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AdverseEventSupportingInfo '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AdverseEventSupportingInfo]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AdverseEventSupportingInfo.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AdverseEventSupportingInfo.fromJson(json);
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
  final ItemXAdverseEventSupportingInfo itemX;

  /// Getter for [itemReference] as a Reference
  Reference? get itemReference => itemX.isAs<Reference>();

  /// Getter for [itemCodeableConcept] as a CodeableConcept
  CodeableConcept? get itemCodeableConcept => itemX.isAs<CodeableConcept>();
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
    final itemXFhirType = itemX.fhirType;
    addField(
      'item${itemXFhirType.capitalize()}',
      itemX,
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
      'itemX',
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
      case 'item':
        fields.add(itemX);
      case 'itemX':
        fields.add(itemX);
      case 'itemReference':
        if (itemX is Reference) {
          fields.add(itemX);
        }
      case 'itemCodeableConcept':
        if (itemX is CodeableConcept) {
          fields.add(itemX);
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
  AdverseEventSupportingInfo clone() => copyWith();

  /// Copy function for [AdverseEventSupportingInfo]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $AdverseEventSupportingInfoCopyWith<AdverseEventSupportingInfo>
      get copyWith =>
          _$AdverseEventSupportingInfoCopyWithImpl<AdverseEventSupportingInfo>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! AdverseEventSupportingInfo) {
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
      itemX,
      o.itemX,
    )) {
      return false;
    }
    return true;
  }
}
