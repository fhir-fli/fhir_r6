import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart'
    show
        AuditEvent,
        AuditEventAgent,
        AuditEventDetail,
        AuditEventEntity,
        AuditEventOutcome,
        AuditEventSource,
        R6ResourceType,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r6_mapping/fhir_r6_mapping.dart';
import 'package:yaml/yaml.dart';

/// [AuditEventBuilder]
/// A record of an event relevant for purposes such as operations, privacy,
/// security, maintenance, and performance analysis.
class AuditEventBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [AuditEventBuilder]

  AuditEventBuilder({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.category,
    this.code,
    this.action,
    this.severity,
    OccurredXAuditEventBuilder? occurredX,
    PeriodBuilder? occurredPeriod,
    FhirDateTimeBuilder? occurredDateTime,
    this.recorded,
    this.outcome,
    this.authorization,
    this.basedOn,
    this.patient,
    this.encounter,
    this.agent,
    this.source,
    this.entity,
  })  : occurredX = occurredX ?? occurredPeriod ?? occurredDateTime,
        super(
          objectPath: 'AuditEvent',
          resourceType: R6ResourceType.AuditEvent,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory AuditEventBuilder.empty() => AuditEventBuilder(
        code: CodeableConceptBuilder.empty(),
        recorded: FhirInstantBuilder.empty(),
        agent: <AuditEventAgentBuilder>[],
        source: AuditEventSourceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AuditEventBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'AuditEvent';
    return AuditEventBuilder(
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
      action: JsonParser.parsePrimitive<AuditEventActionBuilder>(
        json,
        'action',
        AuditEventActionBuilder.fromJson,
        '$objectPath.action',
      ),
      severity: JsonParser.parsePrimitive<AuditEventSeverityBuilder>(
        json,
        'severity',
        AuditEventSeverityBuilder.fromJson,
        '$objectPath.severity',
      ),
      occurredX: JsonParser.parsePolymorphic<OccurredXAuditEventBuilder>(
        json,
        {
          'occurredPeriod': PeriodBuilder.fromJson,
          'occurredDateTime': FhirDateTimeBuilder.fromJson,
        },
        objectPath,
      ),
      recorded: JsonParser.parsePrimitive<FhirInstantBuilder>(
        json,
        'recorded',
        FhirInstantBuilder.fromJson,
        '$objectPath.recorded',
      ),
      outcome: JsonParser.parseObject<AuditEventOutcomeBuilder>(
        json,
        'outcome',
        AuditEventOutcomeBuilder.fromJson,
        '$objectPath.outcome',
      ),
      authorization: (json['authorization'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.authorization',
              },
            ),
          )
          .toList(),
      basedOn: (json['basedOn'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.basedOn',
              },
            ),
          )
          .toList(),
      patient: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'patient',
        ReferenceBuilder.fromJson,
        '$objectPath.patient',
      ),
      encounter: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'encounter',
        ReferenceBuilder.fromJson,
        '$objectPath.encounter',
      ),
      agent: (json['agent'] as List<dynamic>?)
          ?.map<AuditEventAgentBuilder>(
            (v) => AuditEventAgentBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.agent',
              },
            ),
          )
          .toList(),
      source: JsonParser.parseObject<AuditEventSourceBuilder>(
        json,
        'source',
        AuditEventSourceBuilder.fromJson,
        '$objectPath.source',
      ),
      entity: (json['entity'] as List<dynamic>?)
          ?.map<AuditEventEntityBuilder>(
            (v) => AuditEventEntityBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.entity',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [AuditEventBuilder]
  /// from a [String] or [YamlMap] object
  factory AuditEventBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AuditEventBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AuditEventBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AuditEventBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AuditEventBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AuditEventBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AuditEventBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AuditEvent';

  /// [category]
  /// Classification of the type of event.
  List<CodeableConceptBuilder>? category;

  /// [code]
  /// Describes what happened. The most specific code for the event.
  CodeableConceptBuilder? code;

  /// [action]
  /// Indicator for type of action performed during the event that generated
  /// the audit.
  AuditEventActionBuilder? action;

  /// [severity]
  /// Indicates and enables segmentation of various severity including
  /// debugging from critical.
  AuditEventSeverityBuilder? severity;

  /// [occurredX]
  /// The time or period during which the activity occurred.
  OccurredXAuditEventBuilder? occurredX;

  /// Getter for [occurredPeriod] as a PeriodBuilder
  PeriodBuilder? get occurredPeriod => occurredX?.isAs<PeriodBuilder>();

  /// Getter for [occurredDateTime] as a FhirDateTimeBuilder
  FhirDateTimeBuilder? get occurredDateTime =>
      occurredX?.isAs<FhirDateTimeBuilder>();

  /// [recorded]
  /// The time when the event was recorded.
  FhirInstantBuilder? recorded;

  /// [outcome]
  /// Indicates whether the event succeeded or failed. A free text
  /// descripiton can be given in outcome.text.
  AuditEventOutcomeBuilder? outcome;

  /// [authorization]
  /// The authorization (e.g., PurposeOfUse) that was used during the event
  /// being recorded.
  List<CodeableConceptBuilder>? authorization;

  /// [basedOn]
  /// Allows tracing of authorizatino for the events and tracking whether
  /// proposals/recommendations were acted upon.
  List<ReferenceBuilder>? basedOn;

  /// [patient]
  /// The patient element is available to enable deterministic tracking of
  /// activities that involve the patient as the subject of the data used in
  /// an activity.
  ReferenceBuilder? patient;

  /// [encounter]
  /// This will typically be the encounter the event occurred, but some
  /// events may be initiated prior to or after the official completion of an
  /// encounter but still be tied to the context of the encounter (e.g.
  /// pre-admission lab tests).
  ReferenceBuilder? encounter;

  /// [agent]
  /// An actor taking an active role in the event or activity that is logged.
  List<AuditEventAgentBuilder>? agent;

  /// [source]
  /// The actor that is reporting the event.
  AuditEventSourceBuilder? source;

  /// [entity]
  /// Specific instances of data or objects that have been accessed.
  List<AuditEventEntityBuilder>? entity;

  /// Converts a [AuditEventBuilder]
  /// to [AuditEvent]
  @override
  AuditEvent build() => AuditEvent.fromJson(toJson());

  /// Converts a [AuditEventBuilder]
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
    addField('category', category);
    addField('code', code);
    addField('action', action);
    addField('severity', severity);
    if (occurredX != null) {
      final fhirType = occurredX!.fhirType;
      addField('occurred${fhirType.capitalizeFirstLetter()}', occurredX);
    }

    addField('recorded', recorded);
    addField('outcome', outcome);
    addField('authorization', authorization);
    addField('basedOn', basedOn);
    addField('patient', patient);
    addField('encounter', encounter);
    addField('agent', agent);
    addField('source', source);
    addField('entity', entity);
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
      case 'category':
        if (category != null) {
          fields.addAll(category!);
        }
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'action':
        if (action != null) {
          fields.add(action!);
        }
      case 'severity':
        if (severity != null) {
          fields.add(severity!);
        }
      case 'occurred':
        if (occurredX != null) {
          fields.add(occurredX!);
        }
      case 'occurredX':
        if (occurredX != null) {
          fields.add(occurredX!);
        }
      case 'occurredPeriod':
        if (occurredX is PeriodBuilder) {
          fields.add(occurredX!);
        }
      case 'occurredDateTime':
        if (occurredX is FhirDateTimeBuilder) {
          fields.add(occurredX!);
        }
      case 'recorded':
        if (recorded != null) {
          fields.add(recorded!);
        }
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
        if (agent != null) {
          fields.addAll(agent!);
        }
      case 'source':
        if (source != null) {
          fields.add(source!);
        }
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
      case 'action':
        {
          if (child is AuditEventActionBuilder) {
            action = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = AuditEventActionBuilder(stringValue);
                action = converted;
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
      case 'severity':
        {
          if (child is AuditEventSeverityBuilder) {
            severity = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = AuditEventSeverityBuilder(stringValue);
                severity = converted;
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
      case 'occurred':
      case 'occurredX':
        {
          if (child is OccurredXAuditEventBuilder) {
            occurredX = child;
            return;
          } else {
            if (child is PeriodBuilder) {
              occurredX = child;
              return;
            }
            if (child is FhirDateTimeBuilder) {
              occurredX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'occurredPeriod':
        {
          if (child is PeriodBuilder) {
            occurredX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'occurredDateTime':
        {
          if (child is FhirDateTimeBuilder) {
            occurredX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'recorded':
        {
          if (child is FhirInstantBuilder) {
            recorded = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirInstantBuilder.tryParse(stringValue);
              if (converted != null) {
                recorded = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'outcome':
        {
          if (child is AuditEventOutcomeBuilder) {
            outcome = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'authorization':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            authorization = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            authorization = [
              ...(authorization ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'basedOn':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            basedOn = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            basedOn = [
              ...(basedOn ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'patient':
        {
          if (child is ReferenceBuilder) {
            patient = child;
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
      case 'agent':
        {
          if (child is List<AuditEventAgentBuilder>) {
            // Replace or create new list
            agent = child;
            return;
          } else if (child is AuditEventAgentBuilder) {
            // Add single element to existing list or create new list
            agent = [
              ...(agent ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'source':
        {
          if (child is AuditEventSourceBuilder) {
            source = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'entity':
        {
          if (child is List<AuditEventEntityBuilder>) {
            // Replace or create new list
            entity = child;
            return;
          } else if (child is AuditEventEntityBuilder) {
            // Add single element to existing list or create new list
            entity = [
              ...(entity ?? []),
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
      case 'category':
        return ['CodeableConceptBuilder'];
      case 'code':
        return ['CodeableConceptBuilder'];
      case 'action':
        return ['FhirCodeEnumBuilder'];
      case 'severity':
        return ['FhirCodeEnumBuilder'];
      case 'occurred':
      case 'occurredX':
        return [
          'PeriodBuilder',
          'FhirDateTimeBuilder',
        ];
      case 'occurredPeriod':
        return ['PeriodBuilder'];
      case 'occurredDateTime':
        return ['FhirDateTimeBuilder'];
      case 'recorded':
        return ['FhirInstantBuilder'];
      case 'outcome':
        return ['AuditEventOutcomeBuilder'];
      case 'authorization':
        return ['CodeableConceptBuilder'];
      case 'basedOn':
        return ['ReferenceBuilder'];
      case 'patient':
        return ['ReferenceBuilder'];
      case 'encounter':
        return ['ReferenceBuilder'];
      case 'agent':
        return ['AuditEventAgentBuilder'];
      case 'source':
        return ['AuditEventSourceBuilder'];
      case 'entity':
        return ['AuditEventEntityBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [AuditEventBuilder]
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
      case 'action':
        {
          action = AuditEventActionBuilder.empty();
          return;
        }
      case 'severity':
        {
          severity = AuditEventSeverityBuilder.empty();
          return;
        }
      case 'occurred':
      case 'occurredX':
      case 'occurredPeriod':
        {
          occurredX = PeriodBuilder.empty();
          return;
        }
      case 'occurredDateTime':
        {
          occurredX = FhirDateTimeBuilder.empty();
          return;
        }
      case 'recorded':
        {
          recorded = FhirInstantBuilder.empty();
          return;
        }
      case 'outcome':
        {
          outcome = AuditEventOutcomeBuilder.empty();
          return;
        }
      case 'authorization':
        {
          authorization = <CodeableConceptBuilder>[];
          return;
        }
      case 'basedOn':
        {
          basedOn = <ReferenceBuilder>[];
          return;
        }
      case 'patient':
        {
          patient = ReferenceBuilder.empty();
          return;
        }
      case 'encounter':
        {
          encounter = ReferenceBuilder.empty();
          return;
        }
      case 'agent':
        {
          agent = <AuditEventAgentBuilder>[];
          return;
        }
      case 'source':
        {
          source = AuditEventSourceBuilder.empty();
          return;
        }
      case 'entity':
        {
          entity = <AuditEventEntityBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  AuditEventBuilder clone() => throw UnimplementedError();
  @override
  AuditEventBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    AllLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<CodeableConceptBuilder>? category,
    CodeableConceptBuilder? code,
    AuditEventActionBuilder? action,
    AuditEventSeverityBuilder? severity,
    OccurredXAuditEventBuilder? occurredX,
    FhirInstantBuilder? recorded,
    AuditEventOutcomeBuilder? outcome,
    List<CodeableConceptBuilder>? authorization,
    List<ReferenceBuilder>? basedOn,
    ReferenceBuilder? patient,
    ReferenceBuilder? encounter,
    List<AuditEventAgentBuilder>? agent,
    AuditEventSourceBuilder? source,
    List<AuditEventEntityBuilder>? entity,
    PeriodBuilder? occurredPeriod,
    FhirDateTimeBuilder? occurredDateTime,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = AuditEventBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      category: category ?? this.category,
      code: code ?? this.code,
      action: action ?? this.action,
      severity: severity ?? this.severity,
      occurredX:
          occurredX ?? occurredPeriod ?? occurredDateTime ?? this.occurredX,
      recorded: recorded ?? this.recorded,
      outcome: outcome ?? this.outcome,
      authorization: authorization ?? this.authorization,
      basedOn: basedOn ?? this.basedOn,
      patient: patient ?? this.patient,
      encounter: encounter ?? this.encounter,
      agent: agent ?? this.agent,
      source: source ?? this.source,
      entity: entity ?? this.entity,
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
    if (o is! AuditEventBuilder) {
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
    if (!listEquals<CodeableConceptBuilder>(
      authorization,
      o.authorization,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
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
    if (!listEquals<AuditEventAgentBuilder>(
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
    if (!listEquals<AuditEventEntityBuilder>(
      entity,
      o.entity,
    )) {
      return false;
    }
    return true;
  }
}

/// [AuditEventOutcomeBuilder]
/// Indicates whether the event succeeded or failed. A free text
/// descripiton can be given in outcome.text.
class AuditEventOutcomeBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [AuditEventOutcomeBuilder]

  AuditEventOutcomeBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.detail,
    super.disallowExtensions,
  }) : super(
          objectPath: 'AuditEvent.outcome',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory AuditEventOutcomeBuilder.empty() => AuditEventOutcomeBuilder(
        code: CodingBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AuditEventOutcomeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'AuditEvent.outcome';
    return AuditEventOutcomeBuilder(
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
      code: JsonParser.parseObject<CodingBuilder>(
        json,
        'code',
        CodingBuilder.fromJson,
        '$objectPath.code',
      ),
      detail: (json['detail'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.detail',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [AuditEventOutcomeBuilder]
  /// from a [String] or [YamlMap] object
  factory AuditEventOutcomeBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AuditEventOutcomeBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AuditEventOutcomeBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AuditEventOutcomeBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AuditEventOutcomeBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AuditEventOutcomeBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AuditEventOutcomeBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AuditEventOutcome';

  /// [code]
  /// Indicates whether the event succeeded or failed.
  CodingBuilder? code;

  /// [detail]
  /// Additional details about the error. This may be a text description of
  /// the error or a system code that identifies the error.
  List<CodeableConceptBuilder>? detail;

  /// Converts a [AuditEventOutcomeBuilder]
  /// to [AuditEventOutcome]
  @override
  AuditEventOutcome build() => AuditEventOutcome.fromJson(toJson());

  /// Converts a [AuditEventOutcomeBuilder]
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
    addField('code', code);
    addField('detail', detail);
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
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
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
      case 'code':
        {
          if (child is CodingBuilder) {
            code = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'detail':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            detail = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            detail = [
              ...(detail ?? []),
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
      case 'code':
        return ['CodingBuilder'];
      case 'detail':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [AuditEventOutcomeBuilder]
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
      case 'code':
        {
          code = CodingBuilder.empty();
          return;
        }
      case 'detail':
        {
          detail = <CodeableConceptBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  AuditEventOutcomeBuilder clone() => throw UnimplementedError();
  @override
  AuditEventOutcomeBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodingBuilder? code,
    List<CodeableConceptBuilder>? detail,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = AuditEventOutcomeBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      detail: detail ?? this.detail,
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
    if (o is! AuditEventOutcomeBuilder) {
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
      code,
      o.code,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      detail,
      o.detail,
    )) {
      return false;
    }
    return true;
  }
}

/// [AuditEventAgentBuilder]
/// An actor taking an active role in the event or activity that is logged.
class AuditEventAgentBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [AuditEventAgentBuilder]

  AuditEventAgentBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.role,
    this.who,
    this.requestor,
    this.location,
    this.policy,
    NetworkXAuditEventAgentBuilder? networkX,
    ReferenceBuilder? networkReference,
    FhirUriBuilder? networkUri,
    FhirStringBuilder? networkString,
    this.authorization,
    super.disallowExtensions,
  })  : networkX = networkX ?? networkReference ?? networkUri ?? networkString,
        super(
          objectPath: 'AuditEvent.agent',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory AuditEventAgentBuilder.empty() => AuditEventAgentBuilder(
        who: ReferenceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AuditEventAgentBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'AuditEvent.agent';
    return AuditEventAgentBuilder(
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
      role: (json['role'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.role',
              },
            ),
          )
          .toList(),
      who: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'who',
        ReferenceBuilder.fromJson,
        '$objectPath.who',
      ),
      requestor: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'requestor',
        FhirBooleanBuilder.fromJson,
        '$objectPath.requestor',
      ),
      location: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'location',
        ReferenceBuilder.fromJson,
        '$objectPath.location',
      ),
      policy: JsonParser.parsePrimitiveList<FhirUriBuilder>(
        json,
        'policy',
        FhirUriBuilder.fromJson,
        '$objectPath.policy',
      ),
      networkX: JsonParser.parsePolymorphic<NetworkXAuditEventAgentBuilder>(
        json,
        {
          'networkReference': ReferenceBuilder.fromJson,
          'networkUri': FhirUriBuilder.fromJson,
          'networkString': FhirStringBuilder.fromJson,
        },
        objectPath,
      ),
      authorization: (json['authorization'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.authorization',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [AuditEventAgentBuilder]
  /// from a [String] or [YamlMap] object
  factory AuditEventAgentBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AuditEventAgentBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AuditEventAgentBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AuditEventAgentBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AuditEventAgentBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AuditEventAgentBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AuditEventAgentBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AuditEventAgent';

  /// [type]
  /// The Functional Role of the user when performing the event.
  CodeableConceptBuilder? type;

  /// [role]
  /// The structural roles of the agent indicating the agent's competency.
  /// The security role enabling the agent with respect to the activity.
  List<CodeableConceptBuilder>? role;

  /// [who]
  /// Reference to who this agent is that was involved in the event.
  ReferenceBuilder? who;

  /// [requestor]
  /// Indicator that the user is or is not the requestor, or initiator, for
  /// the event being audited.
  FhirBooleanBuilder? requestor;

  /// [location]
  /// Where the agent location is known, the agent location when the event
  /// occurred.
  ReferenceBuilder? location;

  /// [policy]
  /// Where the policy(ies) are known that authorized the agent participation
  /// in the event. Typically, a single activity may have multiple applicable
  /// policies, such as patient consent, guarantor funding, etc. The policy
  /// would also indicate the security token used.
  List<FhirUriBuilder>? policy;

  /// [networkX]
  /// When the event utilizes a network there should be an agent describing
  /// the local system, and an agent describing remote system, with the
  /// network interface details.
  NetworkXAuditEventAgentBuilder? networkX;

  /// Getter for [networkReference] as a ReferenceBuilder
  ReferenceBuilder? get networkReference => networkX?.isAs<ReferenceBuilder>();

  /// Getter for [networkUri] as a FhirUriBuilder
  FhirUriBuilder? get networkUri => networkX?.isAs<FhirUriBuilder>();

  /// Getter for [networkString] as a FhirStringBuilder
  FhirStringBuilder? get networkString => networkX?.isAs<FhirStringBuilder>();

  /// [authorization]
  /// The authorization (e.g., PurposeOfUse) that was used during the event
  /// being recorded.
  List<CodeableConceptBuilder>? authorization;

  /// Converts a [AuditEventAgentBuilder]
  /// to [AuditEventAgent]
  @override
  AuditEventAgent build() => AuditEventAgent.fromJson(toJson());

  /// Converts a [AuditEventAgentBuilder]
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
    addField('role', role);
    addField('who', who);
    addField('requestor', requestor);
    addField('location', location);
    addField('policy', policy);
    if (networkX != null) {
      final fhirType = networkX!.fhirType;
      addField('network${fhirType.capitalizeFirstLetter()}', networkX);
    }

    addField('authorization', authorization);
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
      case 'role':
        if (role != null) {
          fields.addAll(role!);
        }
      case 'who':
        if (who != null) {
          fields.add(who!);
        }
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
        if (networkX != null) {
          fields.add(networkX!);
        }
      case 'networkX':
        if (networkX != null) {
          fields.add(networkX!);
        }
      case 'networkReference':
        if (networkX is ReferenceBuilder) {
          fields.add(networkX!);
        }
      case 'networkUri':
        if (networkX is FhirUriBuilder) {
          fields.add(networkX!);
        }
      case 'networkString':
        if (networkX is FhirStringBuilder) {
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
      case 'role':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            role = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            role = [
              ...(role ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'who':
        {
          if (child is ReferenceBuilder) {
            who = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'requestor':
        {
          if (child is FhirBooleanBuilder) {
            requestor = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                requestor = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
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
      case 'policy':
        {
          if (child is List<FhirUriBuilder>) {
            // Replace or create new list
            policy = child;
            return;
          } else if (child is FhirUriBuilder) {
            // Add single element to existing list or create new list
            policy = [
              ...(policy ?? []),
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
              policy = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                policy = [
                  ...(policy ?? []),
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
      case 'network':
      case 'networkX':
        {
          if (child is NetworkXAuditEventAgentBuilder) {
            networkX = child;
            return;
          } else {
            if (child is ReferenceBuilder) {
              networkX = child;
              return;
            }
            if (child is FhirUriBuilder) {
              networkX = child;
              return;
            }
            if (child is FhirStringBuilder) {
              networkX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'networkReference':
        {
          if (child is ReferenceBuilder) {
            networkX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'networkUri':
        {
          if (child is FhirUriBuilder) {
            networkX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'networkString':
        {
          if (child is FhirStringBuilder) {
            networkX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'authorization':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            authorization = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            authorization = [
              ...(authorization ?? []),
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
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'role':
        return ['CodeableConceptBuilder'];
      case 'who':
        return ['ReferenceBuilder'];
      case 'requestor':
        return ['FhirBooleanBuilder'];
      case 'location':
        return ['ReferenceBuilder'];
      case 'policy':
        return ['FhirUriBuilder'];
      case 'network':
      case 'networkX':
        return [
          'ReferenceBuilder',
          'FhirUriBuilder',
          'FhirStringBuilder',
        ];
      case 'networkReference':
        return ['ReferenceBuilder'];
      case 'networkUri':
        return ['FhirUriBuilder'];
      case 'networkString':
        return ['FhirStringBuilder'];
      case 'authorization':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [AuditEventAgentBuilder]
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
      case 'role':
        {
          role = <CodeableConceptBuilder>[];
          return;
        }
      case 'who':
        {
          who = ReferenceBuilder.empty();
          return;
        }
      case 'requestor':
        {
          requestor = FhirBooleanBuilder.empty();
          return;
        }
      case 'location':
        {
          location = ReferenceBuilder.empty();
          return;
        }
      case 'policy':
        {
          policy = <FhirUriBuilder>[];
          return;
        }
      case 'network':
      case 'networkX':
      case 'networkReference':
        {
          networkX = ReferenceBuilder.empty();
          return;
        }
      case 'networkUri':
        {
          networkX = FhirUriBuilder.empty();
          return;
        }
      case 'networkString':
        {
          networkX = FhirStringBuilder.empty();
          return;
        }
      case 'authorization':
        {
          authorization = <CodeableConceptBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  AuditEventAgentBuilder clone() => throw UnimplementedError();
  @override
  AuditEventAgentBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? type,
    List<CodeableConceptBuilder>? role,
    ReferenceBuilder? who,
    FhirBooleanBuilder? requestor,
    ReferenceBuilder? location,
    List<FhirUriBuilder>? policy,
    NetworkXAuditEventAgentBuilder? networkX,
    List<CodeableConceptBuilder>? authorization,
    ReferenceBuilder? networkReference,
    FhirUriBuilder? networkUri,
    FhirStringBuilder? networkString,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = AuditEventAgentBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      role: role ?? this.role,
      who: who ?? this.who,
      requestor: requestor ?? this.requestor,
      location: location ?? this.location,
      policy: policy ?? this.policy,
      networkX: networkX ??
          networkReference ??
          networkUri ??
          networkString ??
          this.networkX,
      authorization: authorization ?? this.authorization,
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
    if (o is! AuditEventAgentBuilder) {
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
    if (!listEquals<CodeableConceptBuilder>(
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
    if (!listEquals<FhirUriBuilder>(
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
    if (!listEquals<CodeableConceptBuilder>(
      authorization,
      o.authorization,
    )) {
      return false;
    }
    return true;
  }
}

/// [AuditEventSourceBuilder]
/// The actor that is reporting the event.
class AuditEventSourceBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [AuditEventSourceBuilder]

  AuditEventSourceBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.site,
    this.observer,
    this.type,
    super.disallowExtensions,
  }) : super(
          objectPath: 'AuditEvent.source',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory AuditEventSourceBuilder.empty() => AuditEventSourceBuilder(
        observer: ReferenceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AuditEventSourceBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'AuditEvent.source';
    return AuditEventSourceBuilder(
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
      site: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'site',
        ReferenceBuilder.fromJson,
        '$objectPath.site',
      ),
      observer: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'observer',
        ReferenceBuilder.fromJson,
        '$objectPath.observer',
      ),
      type: (json['type'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.type',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [AuditEventSourceBuilder]
  /// from a [String] or [YamlMap] object
  factory AuditEventSourceBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AuditEventSourceBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AuditEventSourceBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AuditEventSourceBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AuditEventSourceBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AuditEventSourceBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AuditEventSourceBuilder.fromJson(json);
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
  ReferenceBuilder? site;

  /// [observer]
  /// Identifier of the source where the event was detected.
  ReferenceBuilder? observer;

  /// [type]
  /// Code specifying the type of source where event originated.
  List<CodeableConceptBuilder>? type;

  /// Converts a [AuditEventSourceBuilder]
  /// to [AuditEventSource]
  @override
  AuditEventSource build() => AuditEventSource.fromJson(toJson());

  /// Converts a [AuditEventSourceBuilder]
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
    addField('site', site);
    addField('observer', observer);
    addField('type', type);
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
      case 'site':
        if (site != null) {
          fields.add(site!);
        }
      case 'observer':
        if (observer != null) {
          fields.add(observer!);
        }
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
      case 'site':
        {
          if (child is ReferenceBuilder) {
            site = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'observer':
        {
          if (child is ReferenceBuilder) {
            observer = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            type = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            type = [
              ...(type ?? []),
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
      case 'site':
        return ['ReferenceBuilder'];
      case 'observer':
        return ['ReferenceBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [AuditEventSourceBuilder]
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
      case 'site':
        {
          site = ReferenceBuilder.empty();
          return;
        }
      case 'observer':
        {
          observer = ReferenceBuilder.empty();
          return;
        }
      case 'type':
        {
          type = <CodeableConceptBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  AuditEventSourceBuilder clone() => throw UnimplementedError();
  @override
  AuditEventSourceBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    ReferenceBuilder? site,
    ReferenceBuilder? observer,
    List<CodeableConceptBuilder>? type,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = AuditEventSourceBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      site: site ?? this.site,
      observer: observer ?? this.observer,
      type: type ?? this.type,
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
    if (o is! AuditEventSourceBuilder) {
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
    if (!listEquals<CodeableConceptBuilder>(
      type,
      o.type,
    )) {
      return false;
    }
    return true;
  }
}

/// [AuditEventEntityBuilder]
/// Specific instances of data or objects that have been accessed.
class AuditEventEntityBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [AuditEventEntityBuilder]

  AuditEventEntityBuilder({
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
  }) : super(
          objectPath: 'AuditEvent.entity',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory AuditEventEntityBuilder.empty() => AuditEventEntityBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AuditEventEntityBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'AuditEvent.entity';
    return AuditEventEntityBuilder(
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
      what: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'what',
        ReferenceBuilder.fromJson,
        '$objectPath.what',
      ),
      role: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'role',
        CodeableConceptBuilder.fromJson,
        '$objectPath.role',
      ),
      securityLabel: (json['securityLabel'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.securityLabel',
              },
            ),
          )
          .toList(),
      query: JsonParser.parsePrimitive<FhirBase64BinaryBuilder>(
        json,
        'query',
        FhirBase64BinaryBuilder.fromJson,
        '$objectPath.query',
      ),
      detail: (json['detail'] as List<dynamic>?)
          ?.map<AuditEventDetailBuilder>(
            (v) => AuditEventDetailBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.detail',
              },
            ),
          )
          .toList(),
      agent: (json['agent'] as List<dynamic>?)
          ?.map<AuditEventAgentBuilder>(
            (v) => AuditEventAgentBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.agent',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [AuditEventEntityBuilder]
  /// from a [String] or [YamlMap] object
  factory AuditEventEntityBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AuditEventEntityBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AuditEventEntityBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AuditEventEntityBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AuditEventEntityBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AuditEventEntityBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AuditEventEntityBuilder.fromJson(json);
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
  ReferenceBuilder? what;

  /// [role]
  /// Code representing the role the entity played in the event being
  /// audited.
  CodeableConceptBuilder? role;

  /// [securityLabel]
  /// Security labels for the identified entity.
  List<CodeableConceptBuilder>? securityLabel;

  /// [query]
  /// The query parameters for a query-type entities.
  FhirBase64BinaryBuilder? query;

  /// [detail]
  /// Tagged value pairs for conveying additional information about the
  /// entity.
  List<AuditEventDetailBuilder>? detail;

  /// [agent]
  /// The entity is attributed to an agent to express the agent's
  /// responsibility for that entity in the activity. This is most used to
  /// indicate when persistence media (the entity) are used by an agent. For
  /// example when importing data from a device, the device would be
  /// described in an entity, and the user importing data from that media
  /// would be indicated as the entity.agent.
  List<AuditEventAgentBuilder>? agent;

  /// Converts a [AuditEventEntityBuilder]
  /// to [AuditEventEntity]
  @override
  AuditEventEntity build() => AuditEventEntity.fromJson(toJson());

  /// Converts a [AuditEventEntityBuilder]
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
    addField('what', what);
    addField('role', role);
    addField('securityLabel', securityLabel);
    addField('query', query);
    addField('detail', detail);
    addField('agent', agent);
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
      case 'what':
        {
          if (child is ReferenceBuilder) {
            what = child;
            return;
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
      case 'securityLabel':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            securityLabel = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            securityLabel = [
              ...(securityLabel ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'query':
        {
          if (child is FhirBase64BinaryBuilder) {
            query = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBase64BinaryBuilder.tryParse(stringValue);
              if (converted != null) {
                query = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'detail':
        {
          if (child is List<AuditEventDetailBuilder>) {
            // Replace or create new list
            detail = child;
            return;
          } else if (child is AuditEventDetailBuilder) {
            // Add single element to existing list or create new list
            detail = [
              ...(detail ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'agent':
        {
          if (child is List<AuditEventAgentBuilder>) {
            // Replace or create new list
            agent = child;
            return;
          } else if (child is AuditEventAgentBuilder) {
            // Add single element to existing list or create new list
            agent = [
              ...(agent ?? []),
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
      case 'what':
        return ['ReferenceBuilder'];
      case 'role':
        return ['CodeableConceptBuilder'];
      case 'securityLabel':
        return ['CodeableConceptBuilder'];
      case 'query':
        return ['FhirBase64BinaryBuilder'];
      case 'detail':
        return ['AuditEventDetailBuilder'];
      case 'agent':
        return ['AuditEventAgentBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [AuditEventEntityBuilder]
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
      case 'what':
        {
          what = ReferenceBuilder.empty();
          return;
        }
      case 'role':
        {
          role = CodeableConceptBuilder.empty();
          return;
        }
      case 'securityLabel':
        {
          securityLabel = <CodeableConceptBuilder>[];
          return;
        }
      case 'query':
        {
          query = FhirBase64BinaryBuilder.empty();
          return;
        }
      case 'detail':
        {
          detail = <AuditEventDetailBuilder>[];
          return;
        }
      case 'agent':
        {
          agent = <AuditEventAgentBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  AuditEventEntityBuilder clone() => throw UnimplementedError();
  @override
  AuditEventEntityBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    ReferenceBuilder? what,
    CodeableConceptBuilder? role,
    List<CodeableConceptBuilder>? securityLabel,
    FhirBase64BinaryBuilder? query,
    List<AuditEventDetailBuilder>? detail,
    List<AuditEventAgentBuilder>? agent,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = AuditEventEntityBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      what: what ?? this.what,
      role: role ?? this.role,
      securityLabel: securityLabel ?? this.securityLabel,
      query: query ?? this.query,
      detail: detail ?? this.detail,
      agent: agent ?? this.agent,
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
    if (o is! AuditEventEntityBuilder) {
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
    if (!listEquals<CodeableConceptBuilder>(
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
    if (!listEquals<AuditEventDetailBuilder>(
      detail,
      o.detail,
    )) {
      return false;
    }
    if (!listEquals<AuditEventAgentBuilder>(
      agent,
      o.agent,
    )) {
      return false;
    }
    return true;
  }
}

/// [AuditEventDetailBuilder]
/// Tagged value pairs for conveying additional information about the
/// entity.
class AuditEventDetailBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [AuditEventDetailBuilder]

  AuditEventDetailBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    ValueXAuditEventDetailBuilder? valueX,
    QuantityBuilder? valueQuantity,
    CodeableConceptBuilder? valueCodeableConcept,
    FhirStringBuilder? valueString,
    FhirBooleanBuilder? valueBoolean,
    FhirIntegerBuilder? valueInteger,
    RangeBuilder? valueRange,
    RatioBuilder? valueRatio,
    FhirTimeBuilder? valueTime,
    FhirDateTimeBuilder? valueDateTime,
    PeriodBuilder? valuePeriod,
    FhirBase64BinaryBuilder? valueBase64Binary,
    super.disallowExtensions,
  })  : valueX = valueX ??
            valueQuantity ??
            valueCodeableConcept ??
            valueString ??
            valueBoolean ??
            valueInteger ??
            valueRange ??
            valueRatio ??
            valueTime ??
            valueDateTime ??
            valuePeriod ??
            valueBase64Binary,
        super(
          objectPath: 'AuditEvent.entity.detail',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory AuditEventDetailBuilder.empty() => AuditEventDetailBuilder(
        type: CodeableConceptBuilder.empty(),
        valueX: QuantityBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AuditEventDetailBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'AuditEvent.entity.detail';
    return AuditEventDetailBuilder(
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
      valueX: JsonParser.parsePolymorphic<ValueXAuditEventDetailBuilder>(
        json,
        {
          'valueQuantity': QuantityBuilder.fromJson,
          'valueCodeableConcept': CodeableConceptBuilder.fromJson,
          'valueString': FhirStringBuilder.fromJson,
          'valueBoolean': FhirBooleanBuilder.fromJson,
          'valueInteger': FhirIntegerBuilder.fromJson,
          'valueRange': RangeBuilder.fromJson,
          'valueRatio': RatioBuilder.fromJson,
          'valueTime': FhirTimeBuilder.fromJson,
          'valueDateTime': FhirDateTimeBuilder.fromJson,
          'valuePeriod': PeriodBuilder.fromJson,
          'valueBase64Binary': FhirBase64BinaryBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [AuditEventDetailBuilder]
  /// from a [String] or [YamlMap] object
  factory AuditEventDetailBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AuditEventDetailBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AuditEventDetailBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AuditEventDetailBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AuditEventDetailBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AuditEventDetailBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AuditEventDetailBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AuditEventDetail';

  /// [type]
  /// The type of extra detail provided in the value.
  CodeableConceptBuilder? type;

  /// [valueX]
  /// The value of the extra detail.
  ValueXAuditEventDetailBuilder? valueX;

  /// Getter for [valueQuantity] as a QuantityBuilder
  QuantityBuilder? get valueQuantity => valueX?.isAs<QuantityBuilder>();

  /// Getter for [valueCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get valueCodeableConcept =>
      valueX?.isAs<CodeableConceptBuilder>();

  /// Getter for [valueString] as a FhirStringBuilder
  FhirStringBuilder? get valueString => valueX?.isAs<FhirStringBuilder>();

  /// Getter for [valueBoolean] as a FhirBooleanBuilder
  FhirBooleanBuilder? get valueBoolean => valueX?.isAs<FhirBooleanBuilder>();

  /// Getter for [valueInteger] as a FhirIntegerBuilder
  FhirIntegerBuilder? get valueInteger => valueX?.isAs<FhirIntegerBuilder>();

  /// Getter for [valueRange] as a RangeBuilder
  RangeBuilder? get valueRange => valueX?.isAs<RangeBuilder>();

  /// Getter for [valueRatio] as a RatioBuilder
  RatioBuilder? get valueRatio => valueX?.isAs<RatioBuilder>();

  /// Getter for [valueTime] as a FhirTimeBuilder
  FhirTimeBuilder? get valueTime => valueX?.isAs<FhirTimeBuilder>();

  /// Getter for [valueDateTime] as a FhirDateTimeBuilder
  FhirDateTimeBuilder? get valueDateTime => valueX?.isAs<FhirDateTimeBuilder>();

  /// Getter for [valuePeriod] as a PeriodBuilder
  PeriodBuilder? get valuePeriod => valueX?.isAs<PeriodBuilder>();

  /// Getter for [valueBase64Binary] as a FhirBase64BinaryBuilder
  FhirBase64BinaryBuilder? get valueBase64Binary =>
      valueX?.isAs<FhirBase64BinaryBuilder>();

  /// Converts a [AuditEventDetailBuilder]
  /// to [AuditEventDetail]
  @override
  AuditEventDetail build() => AuditEventDetail.fromJson(toJson());

  /// Converts a [AuditEventDetailBuilder]
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
      'type',
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
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'value':
        if (valueX != null) {
          fields.add(valueX!);
        }
      case 'valueX':
        if (valueX != null) {
          fields.add(valueX!);
        }
      case 'valueQuantity':
        if (valueX is QuantityBuilder) {
          fields.add(valueX!);
        }
      case 'valueCodeableConcept':
        if (valueX is CodeableConceptBuilder) {
          fields.add(valueX!);
        }
      case 'valueString':
        if (valueX is FhirStringBuilder) {
          fields.add(valueX!);
        }
      case 'valueBoolean':
        if (valueX is FhirBooleanBuilder) {
          fields.add(valueX!);
        }
      case 'valueInteger':
        if (valueX is FhirIntegerBuilder) {
          fields.add(valueX!);
        }
      case 'valueRange':
        if (valueX is RangeBuilder) {
          fields.add(valueX!);
        }
      case 'valueRatio':
        if (valueX is RatioBuilder) {
          fields.add(valueX!);
        }
      case 'valueTime':
        if (valueX is FhirTimeBuilder) {
          fields.add(valueX!);
        }
      case 'valueDateTime':
        if (valueX is FhirDateTimeBuilder) {
          fields.add(valueX!);
        }
      case 'valuePeriod':
        if (valueX is PeriodBuilder) {
          fields.add(valueX!);
        }
      case 'valueBase64Binary':
        if (valueX is FhirBase64BinaryBuilder) {
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
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'value':
      case 'valueX':
        {
          if (child is ValueXAuditEventDetailBuilder) {
            valueX = child;
            return;
          } else {
            if (child is QuantityBuilder) {
              valueX = child;
              return;
            }
            if (child is CodeableConceptBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirStringBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirBooleanBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirIntegerBuilder) {
              valueX = child;
              return;
            }
            if (child is RangeBuilder) {
              valueX = child;
              return;
            }
            if (child is RatioBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirTimeBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirDateTimeBuilder) {
              valueX = child;
              return;
            }
            if (child is PeriodBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirBase64BinaryBuilder) {
              valueX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
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
      case 'valueCodeableConcept':
        {
          if (child is CodeableConceptBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueString':
        {
          if (child is FhirStringBuilder) {
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
      case 'valueInteger':
        {
          if (child is FhirIntegerBuilder) {
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
      case 'valueRatio':
        {
          if (child is RatioBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueTime':
        {
          if (child is FhirTimeBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueDateTime':
        {
          if (child is FhirDateTimeBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valuePeriod':
        {
          if (child is PeriodBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueBase64Binary':
        {
          if (child is FhirBase64BinaryBuilder) {
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
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'value':
      case 'valueX':
        return [
          'QuantityBuilder',
          'CodeableConceptBuilder',
          'FhirStringBuilder',
          'FhirBooleanBuilder',
          'FhirIntegerBuilder',
          'RangeBuilder',
          'RatioBuilder',
          'FhirTimeBuilder',
          'FhirDateTimeBuilder',
          'PeriodBuilder',
          'FhirBase64BinaryBuilder',
        ];
      case 'valueQuantity':
        return ['QuantityBuilder'];
      case 'valueCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'valueString':
        return ['FhirStringBuilder'];
      case 'valueBoolean':
        return ['FhirBooleanBuilder'];
      case 'valueInteger':
        return ['FhirIntegerBuilder'];
      case 'valueRange':
        return ['RangeBuilder'];
      case 'valueRatio':
        return ['RatioBuilder'];
      case 'valueTime':
        return ['FhirTimeBuilder'];
      case 'valueDateTime':
        return ['FhirDateTimeBuilder'];
      case 'valuePeriod':
        return ['PeriodBuilder'];
      case 'valueBase64Binary':
        return ['FhirBase64BinaryBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [AuditEventDetailBuilder]
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
      case 'valueX':
      case 'valueQuantity':
        {
          valueX = QuantityBuilder.empty();
          return;
        }
      case 'valueCodeableConcept':
        {
          valueX = CodeableConceptBuilder.empty();
          return;
        }
      case 'valueString':
        {
          valueX = FhirStringBuilder.empty();
          return;
        }
      case 'valueBoolean':
        {
          valueX = FhirBooleanBuilder.empty();
          return;
        }
      case 'valueInteger':
        {
          valueX = FhirIntegerBuilder.empty();
          return;
        }
      case 'valueRange':
        {
          valueX = RangeBuilder.empty();
          return;
        }
      case 'valueRatio':
        {
          valueX = RatioBuilder.empty();
          return;
        }
      case 'valueTime':
        {
          valueX = FhirTimeBuilder.empty();
          return;
        }
      case 'valueDateTime':
        {
          valueX = FhirDateTimeBuilder.empty();
          return;
        }
      case 'valuePeriod':
        {
          valueX = PeriodBuilder.empty();
          return;
        }
      case 'valueBase64Binary':
        {
          valueX = FhirBase64BinaryBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  AuditEventDetailBuilder clone() => throw UnimplementedError();
  @override
  AuditEventDetailBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? type,
    ValueXAuditEventDetailBuilder? valueX,
    QuantityBuilder? valueQuantity,
    CodeableConceptBuilder? valueCodeableConcept,
    FhirStringBuilder? valueString,
    FhirBooleanBuilder? valueBoolean,
    FhirIntegerBuilder? valueInteger,
    RangeBuilder? valueRange,
    RatioBuilder? valueRatio,
    FhirTimeBuilder? valueTime,
    FhirDateTimeBuilder? valueDateTime,
    PeriodBuilder? valuePeriod,
    FhirBase64BinaryBuilder? valueBase64Binary,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = AuditEventDetailBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      valueX: valueX ??
          valueQuantity ??
          valueCodeableConcept ??
          valueString ??
          valueBoolean ??
          valueInteger ??
          valueRange ??
          valueRatio ??
          valueTime ??
          valueDateTime ??
          valuePeriod ??
          valueBase64Binary ??
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
    if (o is! AuditEventDetailBuilder) {
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
      valueX,
      o.valueX,
    )) {
      return false;
    }
    return true;
  }
}
