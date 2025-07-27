import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'audit_event.g.dart';

/// [AuditEvent]
/// A record of an event relevant for purposes such as operations, privacy,
/// security, maintenance, and performance analysis.
class AuditEvent extends DomainResource {
  /// Primary constructor for
  /// [AuditEvent]

  const AuditEvent({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.category,
    required this.code,
    this.action,
    this.severity,
    OccurredXAuditEvent? occurredX,
    Period? occurredPeriod,
    FhirDateTime? occurredDateTime,
    required this.recorded,
    this.outcome,
    this.authorization,
    this.basedOn,
    this.patient,
    this.encounter,
    required this.agent,
    required this.source,
    this.entity,
  })  : occurredX = occurredX ?? occurredPeriod ?? occurredDateTime,
        super(
          resourceType: R6ResourceType.AuditEvent,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AuditEvent.fromJson(
    Map<String, dynamic> json,
  ) {
    return AuditEvent(
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
      )!,
      action: JsonParser.parsePrimitive<AuditEventAction>(
        json,
        'action',
        AuditEventAction.fromJson,
      ),
      severity: JsonParser.parsePrimitive<AuditEventSeverity>(
        json,
        'severity',
        AuditEventSeverity.fromJson,
      ),
      occurredX: JsonParser.parsePolymorphic<OccurredXAuditEvent>(
        json,
        {
          'occurredPeriod': Period.fromJson,
          'occurredDateTime': FhirDateTime.fromJson,
        },
      ),
      recorded: JsonParser.parsePrimitive<FhirInstant>(
        json,
        'recorded',
        FhirInstant.fromJson,
      )!,
      outcome: JsonParser.parseObject<AuditEventOutcome>(
        json,
        'outcome',
        AuditEventOutcome.fromJson,
      ),
      authorization: (json['authorization'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      basedOn: (json['basedOn'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      patient: JsonParser.parseObject<Reference>(
        json,
        'patient',
        Reference.fromJson,
      ),
      encounter: JsonParser.parseObject<Reference>(
        json,
        'encounter',
        Reference.fromJson,
      ),
      agent: (json['agent'] as List<dynamic>)
          .map<AuditEventAgent>(
            (v) => AuditEventAgent.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      source: JsonParser.parseObject<AuditEventSource>(
        json,
        'source',
        AuditEventSource.fromJson,
      )!,
      entity: (json['entity'] as List<dynamic>?)
          ?.map<AuditEventEntity>(
            (v) => AuditEventEntity.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [AuditEvent]
  /// from a [String] or [YamlMap] object
  factory AuditEvent.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AuditEvent.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AuditEvent.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AuditEvent '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AuditEvent]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AuditEvent.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AuditEvent.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AuditEvent';

  /// [category]
  /// Classification of the type of event.
  final List<CodeableConcept>? category;

  /// [code]
  /// Describes what happened. The most specific code for the event.
  final CodeableConcept code;

  /// [action]
  /// Indicator for type of action performed during the event that generated
  /// the audit.
  final AuditEventAction? action;

  /// [severity]
  /// Indicates and enables segmentation of various severity including
  /// debugging from critical.
  final AuditEventSeverity? severity;

  /// [occurredX]
  /// The time or period during which the activity occurred.
  final OccurredXAuditEvent? occurredX;

  /// Getter for [occurredPeriod] as a Period
  Period? get occurredPeriod => occurredX?.isAs<Period>();

  /// Getter for [occurredDateTime] as a FhirDateTime
  FhirDateTime? get occurredDateTime => occurredX?.isAs<FhirDateTime>();

  /// [recorded]
  /// The time when the event was recorded.
  final FhirInstant recorded;

  /// [outcome]
  /// Indicates whether the event succeeded or failed. A free text
  /// descripiton can be given in outcome.text.
  final AuditEventOutcome? outcome;

  /// [authorization]
  /// The authorization (e.g., PurposeOfUse) that was used during the event
  /// being recorded.
  final List<CodeableConcept>? authorization;

  /// [basedOn]
  /// Allows tracing of authorizatino for the events and tracking whether
  /// proposals/recommendations were acted upon.
  final List<Reference>? basedOn;

  /// [patient]
  /// The patient element is available to enable deterministic tracking of
  /// activities that involve the patient as the subject of the data used in
  /// an activity.
  final Reference? patient;

  /// [encounter]
  /// This will typically be the encounter the event occurred, but some
  /// events may be initiated prior to or after the official completion of an
  /// encounter but still be tied to the context of the encounter (e.g.
  /// pre-admission lab tests).
  final Reference? encounter;

  /// [agent]
  /// An actor taking an active role in the event or activity that is logged.
  final List<AuditEventAgent> agent;

  /// [source]
  /// The actor that is reporting the event.
  final AuditEventSource source;

  /// [entity]
  /// Specific instances of data or objects that have been accessed.
  final List<AuditEventEntity>? entity;
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
      'category',
      category,
    );
    addField(
      'code',
      code,
    );
    addField(
      'action',
      action,
    );
    addField(
      'severity',
      severity,
    );
    if (occurredX != null) {
      final fhirType = occurredX!.fhirType;
      addField(
        'occurred${fhirType.capitalize()}',
        occurredX,
      );
    }

    addField(
      'recorded',
      recorded,
    );
    addField(
      'outcome',
      outcome,
    );
    addField(
      'authorization',
      authorization,
    );
    addField(
      'basedOn',
      basedOn,
    );
    addField(
      'patient',
      patient,
    );
    addField(
      'encounter',
      encounter,
    );
    addField(
      'agent',
      agent,
    );
    addField(
      'source',
      source,
    );
    addField(
      'entity',
      entity,
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
      'category',
      'code',
      'action',
      'severity',
      'occurredX',
      'recorded',
      'outcome',
      'authorization',
      'basedOn',
      'patient',
      'encounter',
      'agent',
      'source',
      'entity',
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
      case 'category':
        if (category != null) {
          fields.addAll(category!);
        }
      case 'code':
        fields.add(code);
      case 'action':
        if (action != null) {
          fields.add(action!);
        }
      case 'severity':
        if (severity != null) {
          fields.add(severity!);
        }
      case 'occurred':
        fields.add(occurredX!);
      case 'occurredX':
        fields.add(occurredX!);
      case 'occurredPeriod':
        if (occurredX is Period) {
          fields.add(occurredX!);
        }
      case 'occurredDateTime':
        if (occurredX is FhirDateTime) {
          fields.add(occurredX!);
        }
      case 'recorded':
        fields.add(recorded);
      case 'outcome':
        if (outcome != null) {
          fields.add(outcome!);
        }
      case 'authorization':
        if (authorization != null) {
          fields.addAll(authorization!);
        }
      case 'basedOn':
        if (basedOn != null) {
          fields.addAll(basedOn!);
        }
      case 'patient':
        if (patient != null) {
          fields.add(patient!);
        }
      case 'encounter':
        if (encounter != null) {
          fields.add(encounter!);
        }
      case 'agent':
        fields.addAll(agent);
      case 'source':
        fields.add(source);
      case 'entity':
        if (entity != null) {
          fields.addAll(entity!);
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
  AuditEvent clone() => copyWith();

  /// Copy function for [AuditEvent]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $AuditEventCopyWith<AuditEvent> get copyWith =>
      _$AuditEventCopyWithImpl<AuditEvent>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! AuditEvent) {
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
      action,
      o.action,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      severity,
      o.severity,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      occurredX,
      o.occurredX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      recorded,
      o.recorded,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      outcome,
      o.outcome,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      authorization,
      o.authorization,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      basedOn,
      o.basedOn,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      patient,
      o.patient,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      encounter,
      o.encounter,
    )) {
      return false;
    }
    if (!listEquals<AuditEventAgent>(
      agent,
      o.agent,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      source,
      o.source,
    )) {
      return false;
    }
    if (!listEquals<AuditEventEntity>(
      entity,
      o.entity,
    )) {
      return false;
    }
    return true;
  }
}

/// [AuditEventOutcome]
/// Indicates whether the event succeeded or failed. A free text
/// descripiton can be given in outcome.text.
class AuditEventOutcome extends BackboneElement {
  /// Primary constructor for
  /// [AuditEventOutcome]

  const AuditEventOutcome({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.detail,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AuditEventOutcome.fromJson(
    Map<String, dynamic> json,
  ) {
    return AuditEventOutcome(
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
      code: JsonParser.parseObject<Coding>(
        json,
        'code',
        Coding.fromJson,
      )!,
      detail: (json['detail'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [AuditEventOutcome]
  /// from a [String] or [YamlMap] object
  factory AuditEventOutcome.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AuditEventOutcome.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AuditEventOutcome.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AuditEventOutcome '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AuditEventOutcome]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AuditEventOutcome.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AuditEventOutcome.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AuditEventOutcome';

  /// [code]
  /// Indicates whether the event succeeded or failed.
  final Coding code;

  /// [detail]
  /// Additional details about the error. This may be a text description of
  /// the error or a system code that identifies the error.
  final List<CodeableConcept>? detail;
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
      'detail',
      detail,
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
      'detail',
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
        fields.add(code);
      case 'detail':
        if (detail != null) {
          fields.addAll(detail!);
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
  AuditEventOutcome clone() => copyWith();

  /// Copy function for [AuditEventOutcome]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $AuditEventOutcomeCopyWith<AuditEventOutcome> get copyWith =>
      _$AuditEventOutcomeCopyWithImpl<AuditEventOutcome>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! AuditEventOutcome) {
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
    if (!listEquals<CodeableConcept>(
      detail,
      o.detail,
    )) {
      return false;
    }
    return true;
  }
}

/// [AuditEventAgent]
/// An actor taking an active role in the event or activity that is logged.
class AuditEventAgent extends BackboneElement {
  /// Primary constructor for
  /// [AuditEventAgent]

  const AuditEventAgent({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.role,
    required this.who,
    this.requestor,
    this.location,
    this.policy,
    NetworkXAuditEventAgent? networkX,
    Reference? networkReference,
    FhirUri? networkUri,
    FhirString? networkString,
    this.authorization,
    super.disallowExtensions,
  })  : networkX = networkX ?? networkReference ?? networkUri ?? networkString,
        super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AuditEventAgent.fromJson(
    Map<String, dynamic> json,
  ) {
    return AuditEventAgent(
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
      role: (json['role'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      who: JsonParser.parseObject<Reference>(
        json,
        'who',
        Reference.fromJson,
      )!,
      requestor: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'requestor',
        FhirBoolean.fromJson,
      ),
      location: JsonParser.parseObject<Reference>(
        json,
        'location',
        Reference.fromJson,
      ),
      policy: JsonParser.parsePrimitiveList<FhirUri>(
        json,
        'policy',
        FhirUri.fromJson,
      ),
      networkX: JsonParser.parsePolymorphic<NetworkXAuditEventAgent>(
        json,
        {
          'networkReference': Reference.fromJson,
          'networkUri': FhirUri.fromJson,
          'networkString': FhirString.fromJson,
        },
      ),
      authorization: (json['authorization'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [AuditEventAgent]
  /// from a [String] or [YamlMap] object
  factory AuditEventAgent.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AuditEventAgent.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AuditEventAgent.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AuditEventAgent '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AuditEventAgent]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AuditEventAgent.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AuditEventAgent.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AuditEventAgent';

  /// [type]
  /// The Functional Role of the user when performing the event.
  final CodeableConcept? type;

  /// [role]
  /// The structural roles of the agent indicating the agent's competency.
  /// The security role enabling the agent with respect to the activity.
  final List<CodeableConcept>? role;

  /// [who]
  /// Reference to who this agent is that was involved in the event.
  final Reference who;

  /// [requestor]
  /// Indicator that the user is or is not the requestor, or initiator, for
  /// the event being audited.
  final FhirBoolean? requestor;

  /// [location]
  /// Where the agent location is known, the agent location when the event
  /// occurred.
  final Reference? location;

  /// [policy]
  /// Where the policy(ies) are known that authorized the agent participation
  /// in the event. Typically, a single activity may have multiple applicable
  /// policies, such as patient consent, guarantor funding, etc. The policy
  /// would also indicate the security token used.
  final List<FhirUri>? policy;

  /// [networkX]
  /// When the event utilizes a network there should be an agent describing
  /// the local system, and an agent describing remote system, with the
  /// network interface details.
  final NetworkXAuditEventAgent? networkX;

  /// Getter for [networkReference] as a Reference
  Reference? get networkReference => networkX?.isAs<Reference>();

  /// Getter for [networkUri] as a FhirUri
  FhirUri? get networkUri => networkX?.isAs<FhirUri>();

  /// Getter for [networkString] as a FhirString
  FhirString? get networkString => networkX?.isAs<FhirString>();

  /// [authorization]
  /// The authorization (e.g., PurposeOfUse) that was used during the event
  /// being recorded.
  final List<CodeableConcept>? authorization;
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
      'role',
      role,
    );
    addField(
      'who',
      who,
    );
    addField(
      'requestor',
      requestor,
    );
    addField(
      'location',
      location,
    );
    addField(
      'policy',
      policy,
    );
    if (networkX != null) {
      final fhirType = networkX!.fhirType;
      addField(
        'network${fhirType.capitalize()}',
        networkX,
      );
    }

    addField(
      'authorization',
      authorization,
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
      'role',
      'who',
      'requestor',
      'location',
      'policy',
      'networkX',
      'authorization',
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
      case 'role':
        if (role != null) {
          fields.addAll(role!);
        }
      case 'who':
        fields.add(who);
      case 'requestor':
        if (requestor != null) {
          fields.add(requestor!);
        }
      case 'location':
        if (location != null) {
          fields.add(location!);
        }
      case 'policy':
        if (policy != null) {
          fields.addAll(policy!);
        }
      case 'network':
        fields.add(networkX!);
      case 'networkX':
        fields.add(networkX!);
      case 'networkReference':
        if (networkX is Reference) {
          fields.add(networkX!);
        }
      case 'networkUri':
        if (networkX is FhirUri) {
          fields.add(networkX!);
        }
      case 'networkString':
        if (networkX is FhirString) {
          fields.add(networkX!);
        }
      case 'authorization':
        if (authorization != null) {
          fields.addAll(authorization!);
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
  AuditEventAgent clone() => copyWith();

  /// Copy function for [AuditEventAgent]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $AuditEventAgentCopyWith<AuditEventAgent> get copyWith =>
      _$AuditEventAgentCopyWithImpl<AuditEventAgent>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! AuditEventAgent) {
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
      role,
      o.role,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      who,
      o.who,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      requestor,
      o.requestor,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      location,
      o.location,
    )) {
      return false;
    }
    if (!listEquals<FhirUri>(
      policy,
      o.policy,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      networkX,
      o.networkX,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      authorization,
      o.authorization,
    )) {
      return false;
    }
    return true;
  }
}

/// [AuditEventSource]
/// The actor that is reporting the event.
class AuditEventSource extends BackboneElement {
  /// Primary constructor for
  /// [AuditEventSource]

  const AuditEventSource({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.site,
    required this.observer,
    this.type,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AuditEventSource.fromJson(
    Map<String, dynamic> json,
  ) {
    return AuditEventSource(
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
      site: JsonParser.parseObject<Reference>(
        json,
        'site',
        Reference.fromJson,
      ),
      observer: JsonParser.parseObject<Reference>(
        json,
        'observer',
        Reference.fromJson,
      )!,
      type: (json['type'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [AuditEventSource]
  /// from a [String] or [YamlMap] object
  factory AuditEventSource.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AuditEventSource.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AuditEventSource.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AuditEventSource '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AuditEventSource]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AuditEventSource.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AuditEventSource.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AuditEventSource';

  /// [site]
  /// Logical source location within the healthcare enterprise network. For
  /// example, a hospital or other provider location within a multi-entity
  /// provider group.
  final Reference? site;

  /// [observer]
  /// Identifier of the source where the event was detected.
  final Reference observer;

  /// [type]
  /// Code specifying the type of source where event originated.
  final List<CodeableConcept>? type;
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
      'site',
      site,
    );
    addField(
      'observer',
      observer,
    );
    addField(
      'type',
      type,
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
      'site',
      'observer',
      'type',
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
      case 'site':
        if (site != null) {
          fields.add(site!);
        }
      case 'observer':
        fields.add(observer);
      case 'type':
        if (type != null) {
          fields.addAll(type!);
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
  AuditEventSource clone() => copyWith();

  /// Copy function for [AuditEventSource]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $AuditEventSourceCopyWith<AuditEventSource> get copyWith =>
      _$AuditEventSourceCopyWithImpl<AuditEventSource>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! AuditEventSource) {
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
      site,
      o.site,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      observer,
      o.observer,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      type,
      o.type,
    )) {
      return false;
    }
    return true;
  }
}

/// [AuditEventEntity]
/// Specific instances of data or objects that have been accessed.
class AuditEventEntity extends BackboneElement {
  /// Primary constructor for
  /// [AuditEventEntity]

  const AuditEventEntity({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.what,
    this.role,
    this.securityLabel,
    this.query,
    this.detail,
    this.agent,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AuditEventEntity.fromJson(
    Map<String, dynamic> json,
  ) {
    return AuditEventEntity(
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
      what: JsonParser.parseObject<Reference>(
        json,
        'what',
        Reference.fromJson,
      ),
      role: JsonParser.parseObject<CodeableConcept>(
        json,
        'role',
        CodeableConcept.fromJson,
      ),
      securityLabel: (json['securityLabel'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      query: JsonParser.parsePrimitive<FhirBase64Binary>(
        json,
        'query',
        FhirBase64Binary.fromJson,
      ),
      detail: (json['detail'] as List<dynamic>?)
          ?.map<AuditEventDetail>(
            (v) => AuditEventDetail.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      agent: (json['agent'] as List<dynamic>?)
          ?.map<AuditEventAgent>(
            (v) => AuditEventAgent.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [AuditEventEntity]
  /// from a [String] or [YamlMap] object
  factory AuditEventEntity.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AuditEventEntity.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AuditEventEntity.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AuditEventEntity '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AuditEventEntity]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AuditEventEntity.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AuditEventEntity.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AuditEventEntity';

  /// [what]
  /// Identifies a specific instance of the entity. The reference should be
  /// version specific. This is allowed to be a Parameters resource.
  final Reference? what;

  /// [role]
  /// Code representing the role the entity played in the event being
  /// audited.
  final CodeableConcept? role;

  /// [securityLabel]
  /// Security labels for the identified entity.
  final List<CodeableConcept>? securityLabel;

  /// [query]
  /// The query parameters for a query-type entities.
  final FhirBase64Binary? query;

  /// [detail]
  /// Tagged value pairs for conveying additional information about the
  /// entity.
  final List<AuditEventDetail>? detail;

  /// [agent]
  /// The entity is attributed to an agent to express the agent's
  /// responsibility for that entity in the activity. This is most used to
  /// indicate when persistence media (the entity) are used by an agent. For
  /// example when importing data from a device, the device would be
  /// described in an entity, and the user importing data from that media
  /// would be indicated as the entity.agent.
  final List<AuditEventAgent>? agent;
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
      'what',
      what,
    );
    addField(
      'role',
      role,
    );
    addField(
      'securityLabel',
      securityLabel,
    );
    addField(
      'query',
      query,
    );
    addField(
      'detail',
      detail,
    );
    addField(
      'agent',
      agent,
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
      'what',
      'role',
      'securityLabel',
      'query',
      'detail',
      'agent',
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
      case 'what':
        if (what != null) {
          fields.add(what!);
        }
      case 'role':
        if (role != null) {
          fields.add(role!);
        }
      case 'securityLabel':
        if (securityLabel != null) {
          fields.addAll(securityLabel!);
        }
      case 'query':
        if (query != null) {
          fields.add(query!);
        }
      case 'detail':
        if (detail != null) {
          fields.addAll(detail!);
        }
      case 'agent':
        if (agent != null) {
          fields.addAll(agent!);
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
  AuditEventEntity clone() => copyWith();

  /// Copy function for [AuditEventEntity]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $AuditEventEntityCopyWith<AuditEventEntity> get copyWith =>
      _$AuditEventEntityCopyWithImpl<AuditEventEntity>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! AuditEventEntity) {
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
      what,
      o.what,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      role,
      o.role,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      securityLabel,
      o.securityLabel,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      query,
      o.query,
    )) {
      return false;
    }
    if (!listEquals<AuditEventDetail>(
      detail,
      o.detail,
    )) {
      return false;
    }
    if (!listEquals<AuditEventAgent>(
      agent,
      o.agent,
    )) {
      return false;
    }
    return true;
  }
}

/// [AuditEventDetail]
/// Tagged value pairs for conveying additional information about the
/// entity.
class AuditEventDetail extends BackboneElement {
  /// Primary constructor for
  /// [AuditEventDetail]

  const AuditEventDetail({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    required this.valueX,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AuditEventDetail.fromJson(
    Map<String, dynamic> json,
  ) {
    return AuditEventDetail(
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
      valueX: JsonParser.parsePolymorphic<ValueXAuditEventDetail>(
        json,
        {
          'valueQuantity': Quantity.fromJson,
          'valueCodeableConcept': CodeableConcept.fromJson,
          'valueString': FhirString.fromJson,
          'valueBoolean': FhirBoolean.fromJson,
          'valueInteger': FhirInteger.fromJson,
          'valueRange': Range.fromJson,
          'valueRatio': Ratio.fromJson,
          'valueTime': FhirTime.fromJson,
          'valueDateTime': FhirDateTime.fromJson,
          'valuePeriod': Period.fromJson,
          'valueBase64Binary': FhirBase64Binary.fromJson,
        },
      )!,
    );
  }

  /// Deserialize [AuditEventDetail]
  /// from a [String] or [YamlMap] object
  factory AuditEventDetail.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AuditEventDetail.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AuditEventDetail.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AuditEventDetail '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AuditEventDetail]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AuditEventDetail.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AuditEventDetail.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AuditEventDetail';

  /// [type]
  /// The type of extra detail provided in the value.
  final CodeableConcept type;

  /// [valueX]
  /// The value of the extra detail.
  final ValueXAuditEventDetail valueX;

  /// Getter for [valueQuantity] as a Quantity
  Quantity? get valueQuantity => valueX.isAs<Quantity>();

  /// Getter for [valueCodeableConcept] as a CodeableConcept
  CodeableConcept? get valueCodeableConcept => valueX.isAs<CodeableConcept>();

  /// Getter for [valueString] as a FhirString
  FhirString? get valueString => valueX.isAs<FhirString>();

  /// Getter for [valueBoolean] as a FhirBoolean
  FhirBoolean? get valueBoolean => valueX.isAs<FhirBoolean>();

  /// Getter for [valueInteger] as a FhirInteger
  FhirInteger? get valueInteger => valueX.isAs<FhirInteger>();

  /// Getter for [valueRange] as a Range
  Range? get valueRange => valueX.isAs<Range>();

  /// Getter for [valueRatio] as a Ratio
  Ratio? get valueRatio => valueX.isAs<Ratio>();

  /// Getter for [valueTime] as a FhirTime
  FhirTime? get valueTime => valueX.isAs<FhirTime>();

  /// Getter for [valueDateTime] as a FhirDateTime
  FhirDateTime? get valueDateTime => valueX.isAs<FhirDateTime>();

  /// Getter for [valuePeriod] as a Period
  Period? get valuePeriod => valueX.isAs<Period>();

  /// Getter for [valueBase64Binary] as a FhirBase64Binary
  FhirBase64Binary? get valueBase64Binary => valueX.isAs<FhirBase64Binary>();
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
      'type',
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
      case 'type':
        fields.add(type);
      case 'value':
        fields.add(valueX);
      case 'valueX':
        fields.add(valueX);
      case 'valueQuantity':
        if (valueX is Quantity) {
          fields.add(valueX);
        }
      case 'valueCodeableConcept':
        if (valueX is CodeableConcept) {
          fields.add(valueX);
        }
      case 'valueString':
        if (valueX is FhirString) {
          fields.add(valueX);
        }
      case 'valueBoolean':
        if (valueX is FhirBoolean) {
          fields.add(valueX);
        }
      case 'valueInteger':
        if (valueX is FhirInteger) {
          fields.add(valueX);
        }
      case 'valueRange':
        if (valueX is Range) {
          fields.add(valueX);
        }
      case 'valueRatio':
        if (valueX is Ratio) {
          fields.add(valueX);
        }
      case 'valueTime':
        if (valueX is FhirTime) {
          fields.add(valueX);
        }
      case 'valueDateTime':
        if (valueX is FhirDateTime) {
          fields.add(valueX);
        }
      case 'valuePeriod':
        if (valueX is Period) {
          fields.add(valueX);
        }
      case 'valueBase64Binary':
        if (valueX is FhirBase64Binary) {
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
  AuditEventDetail clone() => copyWith();

  /// Copy function for [AuditEventDetail]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $AuditEventDetailCopyWith<AuditEventDetail> get copyWith =>
      _$AuditEventDetailCopyWithImpl<AuditEventDetail>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! AuditEventDetail) {
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
      valueX,
      o.valueX,
    )) {
      return false;
    }
    return true;
  }
}
