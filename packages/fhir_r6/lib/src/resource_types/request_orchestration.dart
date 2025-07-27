import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'request_orchestration.g.dart';

/// [RequestOrchestration]
/// A set of related requests that can be used to capture intended
/// activities that have inter-dependencies such as "give this medication
/// after that one".
class RequestOrchestration extends DomainResource {
  /// Primary constructor for
  /// [RequestOrchestration]

  const RequestOrchestration({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.instantiatesCanonical,
    this.instantiatesUri,
    this.basedOn,
    this.replaces,
    this.groupIdentifier,
    required this.status,
    required this.intent,
    this.priority,
    this.code,
    this.subject,
    this.encounter,
    this.authoredOn,
    this.author,
    this.reason,
    this.goal,
    this.note,
    this.action,
  }) : super(
          resourceType: R5ResourceType.RequestOrchestration,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory RequestOrchestration.fromJson(
    Map<String, dynamic> json,
  ) {
    return RequestOrchestration(
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
      instantiatesCanonical: JsonParser.parsePrimitiveList<FhirCanonical>(
        json,
        'instantiatesCanonical',
        FhirCanonical.fromJson,
      ),
      instantiatesUri: JsonParser.parsePrimitiveList<FhirUri>(
        json,
        'instantiatesUri',
        FhirUri.fromJson,
      ),
      basedOn: (json['basedOn'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      replaces: (json['replaces'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      groupIdentifier: JsonParser.parseObject<Identifier>(
        json,
        'groupIdentifier',
        Identifier.fromJson,
      ),
      status: JsonParser.parsePrimitive<RequestStatus>(
        json,
        'status',
        RequestStatus.fromJson,
      )!,
      intent: JsonParser.parsePrimitive<RequestIntent>(
        json,
        'intent',
        RequestIntent.fromJson,
      )!,
      priority: JsonParser.parsePrimitive<RequestPriority>(
        json,
        'priority',
        RequestPriority.fromJson,
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
      encounter: JsonParser.parseObject<Reference>(
        json,
        'encounter',
        Reference.fromJson,
      ),
      authoredOn: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'authoredOn',
        FhirDateTime.fromJson,
      ),
      author: JsonParser.parseObject<Reference>(
        json,
        'author',
        Reference.fromJson,
      ),
      reason: (json['reason'] as List<dynamic>?)
          ?.map<CodeableReference>(
            (v) => CodeableReference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      goal: (json['goal'] as List<dynamic>?)
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
      action: (json['action'] as List<dynamic>?)
          ?.map<RequestOrchestrationAction>(
            (v) => RequestOrchestrationAction.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [RequestOrchestration]
  /// from a [String] or [YamlMap] object
  factory RequestOrchestration.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return RequestOrchestration.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return RequestOrchestration.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'RequestOrchestration '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [RequestOrchestration]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory RequestOrchestration.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return RequestOrchestration.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'RequestOrchestration';

  /// [identifier]
  /// Allows a service to provide a unique, business identifier for the
  /// request.
  final List<Identifier>? identifier;

  /// [instantiatesCanonical]
  /// A canonical URL referencing a FHIR-defined protocol, guideline,
  /// orderset or other definition that is adhered to in whole or in part by
  /// this request.
  final List<FhirCanonical>? instantiatesCanonical;

  /// [instantiatesUri]
  /// A URL referencing an externally defined protocol, guideline, orderset
  /// or other definition that is adhered to in whole or in part by this
  /// request.
  final List<FhirUri>? instantiatesUri;

  /// [basedOn]
  /// A plan, proposal or order that is fulfilled in whole or in part by this
  /// request.
  final List<Reference>? basedOn;

  /// [replaces]
  /// Completed or terminated request(s) whose function is taken by this new
  /// request.
  final List<Reference>? replaces;

  /// [groupIdentifier]
  /// A shared identifier common to multiple independent Request instances
  /// that were activated/authorized more or less simultaneously by a single
  /// author. The presence of the same identifier on each request ties those
  /// requests together and may have business ramifications in terms of
  /// reporting of results, billing, etc. E.g. a requisition number shared by
  /// a set of lab tests ordered together, or a prescription number shared by
  /// all meds ordered at one time.
  final Identifier? groupIdentifier;

  /// [status]
  /// The current state of the request. For request orchestrations, the
  /// status reflects the status of all the requests in the orchestration.
  final RequestStatus status;

  /// [intent]
  /// Indicates the level of authority/intentionality associated with the
  /// request and where the request fits into the workflow chain.
  final RequestIntent intent;

  /// [priority]
  /// Indicates how quickly the request should be addressed with respect to
  /// other requests.
  final RequestPriority? priority;

  /// [code]
  /// A code that identifies what the overall request orchestration is.
  final CodeableConcept? code;

  /// [subject]
  /// The subject for which the request orchestration was created.
  final Reference? subject;

  /// [encounter]
  /// Describes the context of the request orchestration, if any.
  final Reference? encounter;

  /// [authoredOn]
  /// Indicates when the request orchestration was created.
  final FhirDateTime? authoredOn;

  /// [author]
  /// Provides a reference to the author of the request orchestration.
  final Reference? author;

  /// [reason]
  /// Describes the reason for the request orchestration in coded or textual
  /// form.
  final List<CodeableReference>? reason;

  /// [goal]
  /// Goals that are intended to be achieved by following the requests in
  /// this RequestOrchestration.
  final List<Reference>? goal;

  /// [note]
  /// Provides a mechanism to communicate additional information about the
  /// response.
  final List<Annotation>? note;

  /// [action]
  /// The actions, if any, produced by the evaluation of the artifact.
  final List<RequestOrchestrationAction>? action;
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
      'instantiatesCanonical',
      instantiatesCanonical,
    );
    addField(
      'instantiatesUri',
      instantiatesUri,
    );
    addField(
      'basedOn',
      basedOn,
    );
    addField(
      'replaces',
      replaces,
    );
    addField(
      'groupIdentifier',
      groupIdentifier,
    );
    addField(
      'status',
      status,
    );
    addField(
      'intent',
      intent,
    );
    addField(
      'priority',
      priority,
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
    addField(
      'authoredOn',
      authoredOn,
    );
    addField(
      'author',
      author,
    );
    addField(
      'reason',
      reason,
    );
    addField(
      'goal',
      goal,
    );
    addField(
      'note',
      note,
    );
    addField(
      'action',
      action,
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
      'instantiatesCanonical',
      'instantiatesUri',
      'basedOn',
      'replaces',
      'groupIdentifier',
      'status',
      'intent',
      'priority',
      'code',
      'subject',
      'encounter',
      'authoredOn',
      'author',
      'reason',
      'goal',
      'note',
      'action',
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
      case 'instantiatesCanonical':
        if (instantiatesCanonical != null) {
          fields.addAll(instantiatesCanonical!);
        }
      case 'instantiatesUri':
        if (instantiatesUri != null) {
          fields.addAll(instantiatesUri!);
        }
      case 'basedOn':
        if (basedOn != null) {
          fields.addAll(basedOn!);
        }
      case 'replaces':
        if (replaces != null) {
          fields.addAll(replaces!);
        }
      case 'groupIdentifier':
        if (groupIdentifier != null) {
          fields.add(groupIdentifier!);
        }
      case 'status':
        fields.add(status);
      case 'intent':
        fields.add(intent);
      case 'priority':
        if (priority != null) {
          fields.add(priority!);
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
      case 'authoredOn':
        if (authoredOn != null) {
          fields.add(authoredOn!);
        }
      case 'author':
        if (author != null) {
          fields.add(author!);
        }
      case 'reason':
        if (reason != null) {
          fields.addAll(reason!);
        }
      case 'goal':
        if (goal != null) {
          fields.addAll(goal!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      case 'action':
        if (action != null) {
          fields.addAll(action!);
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
  RequestOrchestration clone() => copyWith();

  /// Copy function for [RequestOrchestration]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $RequestOrchestrationCopyWith<RequestOrchestration> get copyWith =>
      _$RequestOrchestrationCopyWithImpl<RequestOrchestration>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! RequestOrchestration) {
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
    if (!listEquals<FhirCanonical>(
      instantiatesCanonical,
      o.instantiatesCanonical,
    )) {
      return false;
    }
    if (!listEquals<FhirUri>(
      instantiatesUri,
      o.instantiatesUri,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      basedOn,
      o.basedOn,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      replaces,
      o.replaces,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      groupIdentifier,
      o.groupIdentifier,
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
      intent,
      o.intent,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      priority,
      o.priority,
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
      authoredOn,
      o.authoredOn,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      author,
      o.author,
    )) {
      return false;
    }
    if (!listEquals<CodeableReference>(
      reason,
      o.reason,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      goal,
      o.goal,
    )) {
      return false;
    }
    if (!listEquals<Annotation>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!listEquals<RequestOrchestrationAction>(
      action,
      o.action,
    )) {
      return false;
    }
    return true;
  }
}

/// [RequestOrchestrationAction]
/// The actions, if any, produced by the evaluation of the artifact.
class RequestOrchestrationAction extends BackboneElement {
  /// Primary constructor for
  /// [RequestOrchestrationAction]

  const RequestOrchestrationAction({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.linkId,
    this.prefix,
    this.title,
    this.description,
    this.textEquivalent,
    this.priority,
    this.code,
    this.documentation,
    this.goal,
    this.condition,
    this.input,
    this.output,
    this.relatedAction,
    TimingXRequestOrchestrationAction? timingX,
    FhirDateTime? timingDateTime,
    Age? timingAge,
    Period? timingPeriod,
    FhirDuration? timingDuration,
    Range? timingRange,
    Timing? timingTiming,
    this.location,
    this.participant,
    this.type,
    this.groupingBehavior,
    this.selectionBehavior,
    this.requiredBehavior,
    this.precheckBehavior,
    this.cardinalityBehavior,
    this.resource,
    DefinitionXRequestOrchestrationAction? definitionX,
    FhirCanonical? definitionCanonical,
    FhirUri? definitionUri,
    this.transform,
    this.dynamicValue,
    this.action,
    super.disallowExtensions,
  })  : timingX = timingX ??
            timingDateTime ??
            timingAge ??
            timingPeriod ??
            timingDuration ??
            timingRange ??
            timingTiming,
        definitionX = definitionX ?? definitionCanonical ?? definitionUri,
        super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory RequestOrchestrationAction.fromJson(
    Map<String, dynamic> json,
  ) {
    return RequestOrchestrationAction(
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
      prefix: JsonParser.parsePrimitive<FhirString>(
        json,
        'prefix',
        FhirString.fromJson,
      ),
      title: JsonParser.parsePrimitive<FhirString>(
        json,
        'title',
        FhirString.fromJson,
      ),
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
      ),
      textEquivalent: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'textEquivalent',
        FhirMarkdown.fromJson,
      ),
      priority: JsonParser.parsePrimitive<RequestPriority>(
        json,
        'priority',
        RequestPriority.fromJson,
      ),
      code: (json['code'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      documentation: (json['documentation'] as List<dynamic>?)
          ?.map<RelatedArtifact>(
            (v) => RelatedArtifact.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      goal: (json['goal'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      condition: (json['condition'] as List<dynamic>?)
          ?.map<RequestOrchestrationCondition>(
            (v) => RequestOrchestrationCondition.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      input: (json['input'] as List<dynamic>?)
          ?.map<RequestOrchestrationInput>(
            (v) => RequestOrchestrationInput.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      output: (json['output'] as List<dynamic>?)
          ?.map<RequestOrchestrationOutput>(
            (v) => RequestOrchestrationOutput.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      relatedAction: (json['relatedAction'] as List<dynamic>?)
          ?.map<RequestOrchestrationRelatedAction>(
            (v) => RequestOrchestrationRelatedAction.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      timingX: JsonParser.parsePolymorphic<TimingXRequestOrchestrationAction>(
        json,
        {
          'timingDateTime': FhirDateTime.fromJson,
          'timingAge': Age.fromJson,
          'timingPeriod': Period.fromJson,
          'timingDuration': FhirDuration.fromJson,
          'timingRange': Range.fromJson,
          'timingTiming': Timing.fromJson,
        },
      ),
      location: JsonParser.parseObject<CodeableReference>(
        json,
        'location',
        CodeableReference.fromJson,
      ),
      participant: (json['participant'] as List<dynamic>?)
          ?.map<RequestOrchestrationParticipant>(
            (v) => RequestOrchestrationParticipant.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
      groupingBehavior: JsonParser.parsePrimitive<ActionGroupingBehavior>(
        json,
        'groupingBehavior',
        ActionGroupingBehavior.fromJson,
      ),
      selectionBehavior: JsonParser.parsePrimitive<ActionSelectionBehavior>(
        json,
        'selectionBehavior',
        ActionSelectionBehavior.fromJson,
      ),
      requiredBehavior: JsonParser.parsePrimitive<ActionRequiredBehavior>(
        json,
        'requiredBehavior',
        ActionRequiredBehavior.fromJson,
      ),
      precheckBehavior: JsonParser.parsePrimitive<ActionPrecheckBehavior>(
        json,
        'precheckBehavior',
        ActionPrecheckBehavior.fromJson,
      ),
      cardinalityBehavior: JsonParser.parsePrimitive<ActionCardinalityBehavior>(
        json,
        'cardinalityBehavior',
        ActionCardinalityBehavior.fromJson,
      ),
      resource: JsonParser.parseObject<Reference>(
        json,
        'resource',
        Reference.fromJson,
      ),
      definitionX:
          JsonParser.parsePolymorphic<DefinitionXRequestOrchestrationAction>(
        json,
        {
          'definitionCanonical': FhirCanonical.fromJson,
          'definitionUri': FhirUri.fromJson,
        },
      ),
      transform: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'transform',
        FhirCanonical.fromJson,
      ),
      dynamicValue: (json['dynamicValue'] as List<dynamic>?)
          ?.map<RequestOrchestrationDynamicValue>(
            (v) => RequestOrchestrationDynamicValue.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      action: (json['action'] as List<dynamic>?)
          ?.map<RequestOrchestrationAction>(
            (v) => RequestOrchestrationAction.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [RequestOrchestrationAction]
  /// from a [String] or [YamlMap] object
  factory RequestOrchestrationAction.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return RequestOrchestrationAction.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return RequestOrchestrationAction.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'RequestOrchestrationAction '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [RequestOrchestrationAction]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory RequestOrchestrationAction.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return RequestOrchestrationAction.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'RequestOrchestrationAction';

  /// [linkId]
  /// The linkId of the action from the PlanDefinition that corresponds to
  /// this action in the RequestOrchestration resource.
  final FhirString? linkId;

  /// [prefix]
  /// A user-visible prefix for the action. For example a section or item
  /// numbering such as 1. or A.
  final FhirString? prefix;

  /// [title]
  /// The title of the action displayed to a user.
  final FhirString? title;

  /// [description]
  /// A short description of the action used to provide a summary to display
  /// to the user.
  final FhirMarkdown? description;

  /// [textEquivalent]
  /// A text equivalent of the action to be performed. This provides a
  /// human-interpretable description of the action when the definition is
  /// consumed by a system that might not be capable of interpreting it
  /// dynamically.
  final FhirMarkdown? textEquivalent;

  /// [priority]
  /// Indicates how quickly the action should be addressed with respect to
  /// other actions.
  final RequestPriority? priority;

  /// [code]
  /// A code that provides meaning for the action or action group. For
  /// example, a section may have a LOINC code for a section of a
  /// documentation template.
  final List<CodeableConcept>? code;

  /// [documentation]
  /// Didactic or other informational resources associated with the action
  /// that can be provided to the CDS recipient. Information resources can
  /// include inline text commentary and links to web resources.
  final List<RelatedArtifact>? documentation;

  /// [goal]
  /// Goals that are intended to be achieved by following the requests in
  /// this action.
  final List<Reference>? goal;

  /// [condition]
  /// An expression that describes applicability criteria, or start/stop
  /// conditions for the action.
  final List<RequestOrchestrationCondition>? condition;

  /// [input]
  /// Defines input data requirements for the action.
  final List<RequestOrchestrationInput>? input;

  /// [output]
  /// Defines the outputs of the action, if any.
  final List<RequestOrchestrationOutput>? output;

  /// [relatedAction]
  /// A relationship to another action such as "before" or "30-60 minutes
  /// after start of".
  final List<RequestOrchestrationRelatedAction>? relatedAction;

  /// [timingX]
  /// An optional value describing when the action should be performed.
  final TimingXRequestOrchestrationAction? timingX;

  /// Getter for [timingDateTime] as a FhirDateTime
  FhirDateTime? get timingDateTime => timingX?.isAs<FhirDateTime>();

  /// Getter for [timingAge] as a Age
  Age? get timingAge => timingX?.isAs<Age>();

  /// Getter for [timingPeriod] as a Period
  Period? get timingPeriod => timingX?.isAs<Period>();

  /// Getter for [timingDuration] as a FhirDuration
  FhirDuration? get timingDuration => timingX?.isAs<FhirDuration>();

  /// Getter for [timingRange] as a Range
  Range? get timingRange => timingX?.isAs<Range>();

  /// Getter for [timingTiming] as a Timing
  Timing? get timingTiming => timingX?.isAs<Timing>();

  /// [location]
  /// Identifies the facility where the action will occur; e.g. home,
  /// hospital, specific clinic, etc.
  final CodeableReference? location;

  /// [participant]
  /// The participant that should perform or be responsible for this action.
  final List<RequestOrchestrationParticipant>? participant;

  /// [type]
  /// The type of action to perform (create, update, remove).
  final CodeableConcept? type;

  /// [groupingBehavior]
  /// Defines the grouping behavior for the action and its children.
  final ActionGroupingBehavior? groupingBehavior;

  /// [selectionBehavior]
  /// Defines the selection behavior for the action and its children.
  final ActionSelectionBehavior? selectionBehavior;

  /// [requiredBehavior]
  /// Defines expectations around whether an action is required.
  final ActionRequiredBehavior? requiredBehavior;

  /// [precheckBehavior]
  /// Defines whether the action should usually be preselected.
  final ActionPrecheckBehavior? precheckBehavior;

  /// [cardinalityBehavior]
  /// Defines whether the action can be selected multiple times.
  final ActionCardinalityBehavior? cardinalityBehavior;

  /// [resource]
  /// The resource that is the target of the action (e.g.
  /// CommunicationRequest).
  final Reference? resource;

  /// [definitionX]
  /// A reference to an ActivityDefinition that describes the action to be
  /// taken in detail, a PlanDefinition that describes a series of actions to
  /// be taken, a Questionnaire that should be filled out, a
  /// SpecimenDefinition describing a specimen to be collected, or an
  /// ObservationDefinition that specifies what observation should be
  /// captured.
  final DefinitionXRequestOrchestrationAction? definitionX;

  /// Getter for [definitionCanonical] as a FhirCanonical
  FhirCanonical? get definitionCanonical => definitionX?.isAs<FhirCanonical>();

  /// Getter for [definitionUri] as a FhirUri
  FhirUri? get definitionUri => definitionX?.isAs<FhirUri>();

  /// [transform]
  /// A reference to a StructureMap resource that defines a transform that
  /// can be executed to produce the intent resource using the
  /// ActivityDefinition instance as the input.
  final FhirCanonical? transform;

  /// [dynamicValue]
  /// Customizations that should be applied to the statically defined
  /// resource. For example, if the dosage of a medication must be computed
  /// based on the patient's weight, a customization would be used to specify
  /// an expression that calculated the weight, and the path on the resource
  /// that would contain the result.
  final List<RequestOrchestrationDynamicValue>? dynamicValue;

  /// [action]
  /// Sub actions.
  final List<RequestOrchestrationAction>? action;
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
      'prefix',
      prefix,
    );
    addField(
      'title',
      title,
    );
    addField(
      'description',
      description,
    );
    addField(
      'textEquivalent',
      textEquivalent,
    );
    addField(
      'priority',
      priority,
    );
    addField(
      'code',
      code,
    );
    addField(
      'documentation',
      documentation,
    );
    addField(
      'goal',
      goal,
    );
    addField(
      'condition',
      condition,
    );
    addField(
      'input',
      input,
    );
    addField(
      'output',
      output,
    );
    addField(
      'relatedAction',
      relatedAction,
    );
    if (timingX != null) {
      final fhirType = timingX!.fhirType;
      addField(
        'timing${fhirType.capitalize()}',
        timingX,
      );
    }

    addField(
      'location',
      location,
    );
    addField(
      'participant',
      participant,
    );
    addField(
      'type',
      type,
    );
    addField(
      'groupingBehavior',
      groupingBehavior,
    );
    addField(
      'selectionBehavior',
      selectionBehavior,
    );
    addField(
      'requiredBehavior',
      requiredBehavior,
    );
    addField(
      'precheckBehavior',
      precheckBehavior,
    );
    addField(
      'cardinalityBehavior',
      cardinalityBehavior,
    );
    addField(
      'resource',
      resource,
    );
    if (definitionX != null) {
      final fhirType = definitionX!.fhirType;
      addField(
        'definition${fhirType.capitalize()}',
        definitionX,
      );
    }

    addField(
      'transform',
      transform,
    );
    addField(
      'dynamicValue',
      dynamicValue,
    );
    addField(
      'action',
      action,
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
      'prefix',
      'title',
      'description',
      'textEquivalent',
      'priority',
      'code',
      'documentation',
      'goal',
      'condition',
      'input',
      'output',
      'relatedAction',
      'timingX',
      'location',
      'participant',
      'type',
      'groupingBehavior',
      'selectionBehavior',
      'requiredBehavior',
      'precheckBehavior',
      'cardinalityBehavior',
      'resource',
      'definitionX',
      'transform',
      'dynamicValue',
      'action',
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
      case 'prefix':
        if (prefix != null) {
          fields.add(prefix!);
        }
      case 'title':
        if (title != null) {
          fields.add(title!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'textEquivalent':
        if (textEquivalent != null) {
          fields.add(textEquivalent!);
        }
      case 'priority':
        if (priority != null) {
          fields.add(priority!);
        }
      case 'code':
        if (code != null) {
          fields.addAll(code!);
        }
      case 'documentation':
        if (documentation != null) {
          fields.addAll(documentation!);
        }
      case 'goal':
        if (goal != null) {
          fields.addAll(goal!);
        }
      case 'condition':
        if (condition != null) {
          fields.addAll(condition!);
        }
      case 'input':
        if (input != null) {
          fields.addAll(input!);
        }
      case 'output':
        if (output != null) {
          fields.addAll(output!);
        }
      case 'relatedAction':
        if (relatedAction != null) {
          fields.addAll(relatedAction!);
        }
      case 'timing':
        fields.add(timingX!);
      case 'timingX':
        fields.add(timingX!);
      case 'timingDateTime':
        if (timingX is FhirDateTime) {
          fields.add(timingX!);
        }
      case 'timingAge':
        if (timingX is Age) {
          fields.add(timingX!);
        }
      case 'timingPeriod':
        if (timingX is Period) {
          fields.add(timingX!);
        }
      case 'timingDuration':
        if (timingX is FhirDuration) {
          fields.add(timingX!);
        }
      case 'timingRange':
        if (timingX is Range) {
          fields.add(timingX!);
        }
      case 'timingTiming':
        if (timingX is Timing) {
          fields.add(timingX!);
        }
      case 'location':
        if (location != null) {
          fields.add(location!);
        }
      case 'participant':
        if (participant != null) {
          fields.addAll(participant!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'groupingBehavior':
        if (groupingBehavior != null) {
          fields.add(groupingBehavior!);
        }
      case 'selectionBehavior':
        if (selectionBehavior != null) {
          fields.add(selectionBehavior!);
        }
      case 'requiredBehavior':
        if (requiredBehavior != null) {
          fields.add(requiredBehavior!);
        }
      case 'precheckBehavior':
        if (precheckBehavior != null) {
          fields.add(precheckBehavior!);
        }
      case 'cardinalityBehavior':
        if (cardinalityBehavior != null) {
          fields.add(cardinalityBehavior!);
        }
      case 'resource':
        if (resource != null) {
          fields.add(resource!);
        }
      case 'definition':
        fields.add(definitionX!);
      case 'definitionX':
        fields.add(definitionX!);
      case 'definitionCanonical':
        if (definitionX is FhirCanonical) {
          fields.add(definitionX!);
        }
      case 'definitionUri':
        if (definitionX is FhirUri) {
          fields.add(definitionX!);
        }
      case 'transform':
        if (transform != null) {
          fields.add(transform!);
        }
      case 'dynamicValue':
        if (dynamicValue != null) {
          fields.addAll(dynamicValue!);
        }
      case 'action':
        if (action != null) {
          fields.addAll(action!);
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
  RequestOrchestrationAction clone() => copyWith();

  /// Copy function for [RequestOrchestrationAction]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $RequestOrchestrationActionCopyWith<RequestOrchestrationAction>
      get copyWith =>
          _$RequestOrchestrationActionCopyWithImpl<RequestOrchestrationAction>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! RequestOrchestrationAction) {
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
      prefix,
      o.prefix,
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
      description,
      o.description,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      textEquivalent,
      o.textEquivalent,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      priority,
      o.priority,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      code,
      o.code,
    )) {
      return false;
    }
    if (!listEquals<RelatedArtifact>(
      documentation,
      o.documentation,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      goal,
      o.goal,
    )) {
      return false;
    }
    if (!listEquals<RequestOrchestrationCondition>(
      condition,
      o.condition,
    )) {
      return false;
    }
    if (!listEquals<RequestOrchestrationInput>(
      input,
      o.input,
    )) {
      return false;
    }
    if (!listEquals<RequestOrchestrationOutput>(
      output,
      o.output,
    )) {
      return false;
    }
    if (!listEquals<RequestOrchestrationRelatedAction>(
      relatedAction,
      o.relatedAction,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      timingX,
      o.timingX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      location,
      o.location,
    )) {
      return false;
    }
    if (!listEquals<RequestOrchestrationParticipant>(
      participant,
      o.participant,
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
      groupingBehavior,
      o.groupingBehavior,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      selectionBehavior,
      o.selectionBehavior,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      requiredBehavior,
      o.requiredBehavior,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      precheckBehavior,
      o.precheckBehavior,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      cardinalityBehavior,
      o.cardinalityBehavior,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      resource,
      o.resource,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      definitionX,
      o.definitionX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      transform,
      o.transform,
    )) {
      return false;
    }
    if (!listEquals<RequestOrchestrationDynamicValue>(
      dynamicValue,
      o.dynamicValue,
    )) {
      return false;
    }
    if (!listEquals<RequestOrchestrationAction>(
      action,
      o.action,
    )) {
      return false;
    }
    return true;
  }
}

/// [RequestOrchestrationCondition]
/// An expression that describes applicability criteria, or start/stop
/// conditions for the action.
class RequestOrchestrationCondition extends BackboneElement {
  /// Primary constructor for
  /// [RequestOrchestrationCondition]

  const RequestOrchestrationCondition({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.kind,
    this.expression,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory RequestOrchestrationCondition.fromJson(
    Map<String, dynamic> json,
  ) {
    return RequestOrchestrationCondition(
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
      kind: JsonParser.parsePrimitive<ActionConditionKind>(
        json,
        'kind',
        ActionConditionKind.fromJson,
      )!,
      expression: JsonParser.parseObject<FhirExpression>(
        json,
        'expression',
        FhirExpression.fromJson,
      ),
    );
  }

  /// Deserialize [RequestOrchestrationCondition]
  /// from a [String] or [YamlMap] object
  factory RequestOrchestrationCondition.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return RequestOrchestrationCondition.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return RequestOrchestrationCondition.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'RequestOrchestrationCondition '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [RequestOrchestrationCondition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory RequestOrchestrationCondition.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return RequestOrchestrationCondition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'RequestOrchestrationCondition';

  /// [kind]
  /// The kind of condition.
  final ActionConditionKind kind;

  /// [expression]
  /// An expression that returns true or false, indicating whether or not the
  /// condition is satisfied.
  final FhirExpression? expression;
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
      'kind',
      kind,
    );
    addField(
      'expression',
      expression,
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
      'kind',
      'expression',
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
      case 'kind':
        fields.add(kind);
      case 'expression':
        if (expression != null) {
          fields.add(expression!);
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
  RequestOrchestrationCondition clone() => copyWith();

  /// Copy function for [RequestOrchestrationCondition]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $RequestOrchestrationConditionCopyWith<RequestOrchestrationCondition>
      get copyWith => _$RequestOrchestrationConditionCopyWithImpl<
              RequestOrchestrationCondition>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! RequestOrchestrationCondition) {
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
      kind,
      o.kind,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      expression,
      o.expression,
    )) {
      return false;
    }
    return true;
  }
}

/// [RequestOrchestrationInput]
/// Defines input data requirements for the action.
class RequestOrchestrationInput extends BackboneElement {
  /// Primary constructor for
  /// [RequestOrchestrationInput]

  const RequestOrchestrationInput({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.title,
    this.requirement,
    this.relatedData,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory RequestOrchestrationInput.fromJson(
    Map<String, dynamic> json,
  ) {
    return RequestOrchestrationInput(
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
      title: JsonParser.parsePrimitive<FhirString>(
        json,
        'title',
        FhirString.fromJson,
      ),
      requirement: JsonParser.parseObject<DataRequirement>(
        json,
        'requirement',
        DataRequirement.fromJson,
      ),
      relatedData: JsonParser.parsePrimitive<FhirId>(
        json,
        'relatedData',
        FhirId.fromJson,
      ),
    );
  }

  /// Deserialize [RequestOrchestrationInput]
  /// from a [String] or [YamlMap] object
  factory RequestOrchestrationInput.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return RequestOrchestrationInput.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return RequestOrchestrationInput.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'RequestOrchestrationInput '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [RequestOrchestrationInput]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory RequestOrchestrationInput.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return RequestOrchestrationInput.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'RequestOrchestrationInput';

  /// [title]
  /// A human-readable label for the data requirement used to label data
  /// flows in BPMN or similar diagrams. Also provides a human readable label
  /// when rendering the data requirement that conveys its purpose to human
  /// readers.
  final FhirString? title;

  /// [requirement]
  /// Defines the data that is to be provided as input to the action.
  final DataRequirement? requirement;

  /// [relatedData]
  /// Points to an existing input or output element that provides data to
  /// this input.
  final FhirId? relatedData;
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
      'title',
      title,
    );
    addField(
      'requirement',
      requirement,
    );
    addField(
      'relatedData',
      relatedData,
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
      'title',
      'requirement',
      'relatedData',
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
      case 'title':
        if (title != null) {
          fields.add(title!);
        }
      case 'requirement':
        if (requirement != null) {
          fields.add(requirement!);
        }
      case 'relatedData':
        if (relatedData != null) {
          fields.add(relatedData!);
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
  RequestOrchestrationInput clone() => copyWith();

  /// Copy function for [RequestOrchestrationInput]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $RequestOrchestrationInputCopyWith<RequestOrchestrationInput> get copyWith =>
      _$RequestOrchestrationInputCopyWithImpl<RequestOrchestrationInput>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! RequestOrchestrationInput) {
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
      title,
      o.title,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      requirement,
      o.requirement,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      relatedData,
      o.relatedData,
    )) {
      return false;
    }
    return true;
  }
}

/// [RequestOrchestrationOutput]
/// Defines the outputs of the action, if any.
class RequestOrchestrationOutput extends BackboneElement {
  /// Primary constructor for
  /// [RequestOrchestrationOutput]

  const RequestOrchestrationOutput({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.title,
    this.requirement,
    this.relatedData,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory RequestOrchestrationOutput.fromJson(
    Map<String, dynamic> json,
  ) {
    return RequestOrchestrationOutput(
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
      title: JsonParser.parsePrimitive<FhirString>(
        json,
        'title',
        FhirString.fromJson,
      ),
      requirement: JsonParser.parseObject<DataRequirement>(
        json,
        'requirement',
        DataRequirement.fromJson,
      ),
      relatedData: JsonParser.parsePrimitive<FhirString>(
        json,
        'relatedData',
        FhirString.fromJson,
      ),
    );
  }

  /// Deserialize [RequestOrchestrationOutput]
  /// from a [String] or [YamlMap] object
  factory RequestOrchestrationOutput.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return RequestOrchestrationOutput.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return RequestOrchestrationOutput.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'RequestOrchestrationOutput '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [RequestOrchestrationOutput]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory RequestOrchestrationOutput.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return RequestOrchestrationOutput.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'RequestOrchestrationOutput';

  /// [title]
  /// A human-readable label for the data requirement used to label data
  /// flows in BPMN or similar diagrams. Also provides a human readable label
  /// when rendering the data requirement that conveys its purpose to human
  /// readers.
  final FhirString? title;

  /// [requirement]
  /// Defines the data that results as output from the action.
  final DataRequirement? requirement;

  /// [relatedData]
  /// Points to an existing input or output element that is results as output
  /// from the action.
  final FhirString? relatedData;
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
      'title',
      title,
    );
    addField(
      'requirement',
      requirement,
    );
    addField(
      'relatedData',
      relatedData,
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
      'title',
      'requirement',
      'relatedData',
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
      case 'title':
        if (title != null) {
          fields.add(title!);
        }
      case 'requirement':
        if (requirement != null) {
          fields.add(requirement!);
        }
      case 'relatedData':
        if (relatedData != null) {
          fields.add(relatedData!);
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
  RequestOrchestrationOutput clone() => copyWith();

  /// Copy function for [RequestOrchestrationOutput]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $RequestOrchestrationOutputCopyWith<RequestOrchestrationOutput>
      get copyWith =>
          _$RequestOrchestrationOutputCopyWithImpl<RequestOrchestrationOutput>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! RequestOrchestrationOutput) {
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
      title,
      o.title,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      requirement,
      o.requirement,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      relatedData,
      o.relatedData,
    )) {
      return false;
    }
    return true;
  }
}

/// [RequestOrchestrationRelatedAction]
/// A relationship to another action such as "before" or "30-60 minutes
/// after start of".
class RequestOrchestrationRelatedAction extends BackboneElement {
  /// Primary constructor for
  /// [RequestOrchestrationRelatedAction]

  const RequestOrchestrationRelatedAction({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.targetId,
    required this.relationship,
    this.endRelationship,
    OffsetXRequestOrchestrationRelatedAction? offsetX,
    FhirDuration? offsetDuration,
    Range? offsetRange,
    super.disallowExtensions,
  })  : offsetX = offsetX ?? offsetDuration ?? offsetRange,
        super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory RequestOrchestrationRelatedAction.fromJson(
    Map<String, dynamic> json,
  ) {
    return RequestOrchestrationRelatedAction(
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
      targetId: JsonParser.parsePrimitive<FhirId>(
        json,
        'targetId',
        FhirId.fromJson,
      )!,
      relationship: JsonParser.parsePrimitive<ActionRelationshipType>(
        json,
        'relationship',
        ActionRelationshipType.fromJson,
      )!,
      endRelationship: JsonParser.parsePrimitive<ActionRelationshipType>(
        json,
        'endRelationship',
        ActionRelationshipType.fromJson,
      ),
      offsetX:
          JsonParser.parsePolymorphic<OffsetXRequestOrchestrationRelatedAction>(
        json,
        {
          'offsetDuration': FhirDuration.fromJson,
          'offsetRange': Range.fromJson,
        },
      ),
    );
  }

  /// Deserialize [RequestOrchestrationRelatedAction]
  /// from a [String] or [YamlMap] object
  factory RequestOrchestrationRelatedAction.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return RequestOrchestrationRelatedAction.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return RequestOrchestrationRelatedAction.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'RequestOrchestrationRelatedAction '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [RequestOrchestrationRelatedAction]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory RequestOrchestrationRelatedAction.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return RequestOrchestrationRelatedAction.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'RequestOrchestrationRelatedAction';

  /// [targetId]
  /// The element id of the target related action.
  final FhirId targetId;

  /// [relationship]
  /// The relationship of this action to the related action.
  final ActionRelationshipType relationship;

  /// [endRelationship]
  /// The relationship of the end of this action to the related action.
  final ActionRelationshipType? endRelationship;

  /// [offsetX]
  /// A duration or range of durations to apply to the relationship. For
  /// example, 30-60 minutes before.
  final OffsetXRequestOrchestrationRelatedAction? offsetX;

  /// Getter for [offsetDuration] as a FhirDuration
  FhirDuration? get offsetDuration => offsetX?.isAs<FhirDuration>();

  /// Getter for [offsetRange] as a Range
  Range? get offsetRange => offsetX?.isAs<Range>();
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
      'targetId',
      targetId,
    );
    addField(
      'relationship',
      relationship,
    );
    addField(
      'endRelationship',
      endRelationship,
    );
    if (offsetX != null) {
      final fhirType = offsetX!.fhirType;
      addField(
        'offset${fhirType.capitalize()}',
        offsetX,
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
      'targetId',
      'relationship',
      'endRelationship',
      'offsetX',
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
      case 'targetId':
        fields.add(targetId);
      case 'relationship':
        fields.add(relationship);
      case 'endRelationship':
        if (endRelationship != null) {
          fields.add(endRelationship!);
        }
      case 'offset':
        fields.add(offsetX!);
      case 'offsetX':
        fields.add(offsetX!);
      case 'offsetDuration':
        if (offsetX is FhirDuration) {
          fields.add(offsetX!);
        }
      case 'offsetRange':
        if (offsetX is Range) {
          fields.add(offsetX!);
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
  RequestOrchestrationRelatedAction clone() => copyWith();

  /// Copy function for [RequestOrchestrationRelatedAction]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $RequestOrchestrationRelatedActionCopyWith<RequestOrchestrationRelatedAction>
      get copyWith => _$RequestOrchestrationRelatedActionCopyWithImpl<
              RequestOrchestrationRelatedAction>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! RequestOrchestrationRelatedAction) {
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
      targetId,
      o.targetId,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      relationship,
      o.relationship,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      endRelationship,
      o.endRelationship,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      offsetX,
      o.offsetX,
    )) {
      return false;
    }
    return true;
  }
}

/// [RequestOrchestrationParticipant]
/// The participant that should perform or be responsible for this action.
class RequestOrchestrationParticipant extends BackboneElement {
  /// Primary constructor for
  /// [RequestOrchestrationParticipant]

  const RequestOrchestrationParticipant({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.typeCanonical,
    this.typeReference,
    this.role,
    this.function_,
    ActorXRequestOrchestrationParticipant? actorX,
    FhirCanonical? actorCanonical,
    Reference? actorReference,
    super.disallowExtensions,
  })  : actorX = actorX ?? actorCanonical ?? actorReference,
        super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory RequestOrchestrationParticipant.fromJson(
    Map<String, dynamic> json,
  ) {
    return RequestOrchestrationParticipant(
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
      type: JsonParser.parsePrimitive<ActionParticipantType>(
        json,
        'type',
        ActionParticipantType.fromJson,
      ),
      typeCanonical: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'typeCanonical',
        FhirCanonical.fromJson,
      ),
      typeReference: JsonParser.parseObject<Reference>(
        json,
        'typeReference',
        Reference.fromJson,
      ),
      role: JsonParser.parseObject<CodeableConcept>(
        json,
        'role',
        CodeableConcept.fromJson,
      ),
      function_: JsonParser.parseObject<CodeableConcept>(
        json,
        'function',
        CodeableConcept.fromJson,
      ),
      actorX:
          JsonParser.parsePolymorphic<ActorXRequestOrchestrationParticipant>(
        json,
        {
          'actorCanonical': FhirCanonical.fromJson,
          'actorReference': Reference.fromJson,
        },
      ),
    );
  }

  /// Deserialize [RequestOrchestrationParticipant]
  /// from a [String] or [YamlMap] object
  factory RequestOrchestrationParticipant.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return RequestOrchestrationParticipant.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return RequestOrchestrationParticipant.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'RequestOrchestrationParticipant '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [RequestOrchestrationParticipant]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory RequestOrchestrationParticipant.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return RequestOrchestrationParticipant.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'RequestOrchestrationParticipant';

  /// [type]
  /// The type of participant in the action.
  final ActionParticipantType? type;

  /// [typeCanonical]
  /// The type of participant in the action.
  final FhirCanonical? typeCanonical;

  /// [typeReference]
  /// The type of participant in the action.
  final Reference? typeReference;

  /// [role]
  /// The role the participant should play in performing the described
  /// action.
  final CodeableConcept? role;

  /// [function_]
  /// Indicates how the actor will be involved in the action - author,
  /// reviewer, witness, etc.
  final CodeableConcept? function_;

  /// [actorX]
  /// A reference to the actual participant.
  final ActorXRequestOrchestrationParticipant? actorX;

  /// Getter for [actorCanonical] as a FhirCanonical
  FhirCanonical? get actorCanonical => actorX?.isAs<FhirCanonical>();

  /// Getter for [actorReference] as a Reference
  Reference? get actorReference => actorX?.isAs<Reference>();
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
      'typeCanonical',
      typeCanonical,
    );
    addField(
      'typeReference',
      typeReference,
    );
    addField(
      'role',
      role,
    );
    addField(
      'function',
      function_,
    );
    if (actorX != null) {
      final fhirType = actorX!.fhirType;
      addField(
        'actor${fhirType.capitalize()}',
        actorX,
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
      'type',
      'typeCanonical',
      'typeReference',
      'role',
      'function',
      'actorX',
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
      case 'typeCanonical':
        if (typeCanonical != null) {
          fields.add(typeCanonical!);
        }
      case 'typeReference':
        if (typeReference != null) {
          fields.add(typeReference!);
        }
      case 'role':
        if (role != null) {
          fields.add(role!);
        }
      case 'function':
        if (function_ != null) {
          fields.add(function_!);
        }
      case 'actor':
        fields.add(actorX!);
      case 'actorX':
        fields.add(actorX!);
      case 'actorCanonical':
        if (actorX is FhirCanonical) {
          fields.add(actorX!);
        }
      case 'actorReference':
        if (actorX is Reference) {
          fields.add(actorX!);
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
  RequestOrchestrationParticipant clone() => copyWith();

  /// Copy function for [RequestOrchestrationParticipant]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $RequestOrchestrationParticipantCopyWith<RequestOrchestrationParticipant>
      get copyWith => _$RequestOrchestrationParticipantCopyWithImpl<
              RequestOrchestrationParticipant>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! RequestOrchestrationParticipant) {
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
      typeCanonical,
      o.typeCanonical,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      typeReference,
      o.typeReference,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      role,
      o.role,
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
      actorX,
      o.actorX,
    )) {
      return false;
    }
    return true;
  }
}

/// [RequestOrchestrationDynamicValue]
/// Customizations that should be applied to the statically defined
/// resource. For example, if the dosage of a medication must be computed
/// based on the patient's weight, a customization would be used to specify
/// an expression that calculated the weight, and the path on the resource
/// that would contain the result.
class RequestOrchestrationDynamicValue extends BackboneElement {
  /// Primary constructor for
  /// [RequestOrchestrationDynamicValue]

  const RequestOrchestrationDynamicValue({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.path,
    this.expression,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory RequestOrchestrationDynamicValue.fromJson(
    Map<String, dynamic> json,
  ) {
    return RequestOrchestrationDynamicValue(
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
      path: JsonParser.parsePrimitive<FhirString>(
        json,
        'path',
        FhirString.fromJson,
      ),
      expression: JsonParser.parseObject<FhirExpression>(
        json,
        'expression',
        FhirExpression.fromJson,
      ),
    );
  }

  /// Deserialize [RequestOrchestrationDynamicValue]
  /// from a [String] or [YamlMap] object
  factory RequestOrchestrationDynamicValue.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return RequestOrchestrationDynamicValue.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return RequestOrchestrationDynamicValue.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'RequestOrchestrationDynamicValue '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [RequestOrchestrationDynamicValue]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory RequestOrchestrationDynamicValue.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return RequestOrchestrationDynamicValue.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'RequestOrchestrationDynamicValue';

  /// [path]
  /// The path to the element to be customized. This is the path on the
  /// resource that will hold the result of the calculation defined by the
  /// expression. The specified path SHALL be a FHIRPath resolvable on the
  /// specified target type of the ActivityDefinition, and SHALL consist only
  /// of identifiers, constant indexers, and a restricted subset of
  /// functions. The path is allowed to contain qualifiers (.) to traverse
  /// sub-elements, as well as indexers ([x]) to traverse
  /// multiple-cardinality sub-elements (see the [Simple FHIRPath
  /// Profile](fhirpath.html#simple) for full details).
  final FhirString? path;

  /// [expression]
  /// An expression specifying the value of the customized element.
  final FhirExpression? expression;
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
      'path',
      path,
    );
    addField(
      'expression',
      expression,
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
      'path',
      'expression',
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
      case 'path':
        if (path != null) {
          fields.add(path!);
        }
      case 'expression':
        if (expression != null) {
          fields.add(expression!);
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
  RequestOrchestrationDynamicValue clone() => copyWith();

  /// Copy function for [RequestOrchestrationDynamicValue]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $RequestOrchestrationDynamicValueCopyWith<RequestOrchestrationDynamicValue>
      get copyWith => _$RequestOrchestrationDynamicValueCopyWithImpl<
              RequestOrchestrationDynamicValue>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! RequestOrchestrationDynamicValue) {
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
      path,
      o.path,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      expression,
      o.expression,
    )) {
      return false;
    }
    return true;
  }
}
