import 'dart:convert';
import 'package:fhir_r5/fhir_r5.dart'
    show
        R5ResourceType,
        RequestOrchestration,
        RequestOrchestrationAction,
        RequestOrchestrationCondition,
        RequestOrchestrationDynamicValue,
        RequestOrchestrationInput,
        RequestOrchestrationOutput,
        RequestOrchestrationParticipant,
        RequestOrchestrationRelatedAction,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r5_mapping/fhir_r5_mapping.dart';
import 'package:yaml/yaml.dart';

/// [RequestOrchestrationBuilder]
/// A set of related requests that can be used to capture intended
/// activities that have inter-dependencies such as "give this medication
/// after that one".
class RequestOrchestrationBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [RequestOrchestrationBuilder]

  RequestOrchestrationBuilder({
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
    this.status,
    this.intent,
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
          objectPath: 'RequestOrchestration',
          resourceType: R5ResourceType.RequestOrchestration,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory RequestOrchestrationBuilder.empty() => RequestOrchestrationBuilder(
        status: RequestStatusBuilder.values.first,
        intent: RequestIntentBuilder.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory RequestOrchestrationBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'RequestOrchestration';
    return RequestOrchestrationBuilder(
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
      instantiatesCanonical:
          JsonParser.parsePrimitiveList<FhirCanonicalBuilder>(
        json,
        'instantiatesCanonical',
        FhirCanonicalBuilder.fromJson,
        '$objectPath.instantiatesCanonical',
      ),
      instantiatesUri: JsonParser.parsePrimitiveList<FhirUriBuilder>(
        json,
        'instantiatesUri',
        FhirUriBuilder.fromJson,
        '$objectPath.instantiatesUri',
      ),
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
      replaces: (json['replaces'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.replaces',
              },
            ),
          )
          .toList(),
      groupIdentifier: JsonParser.parseObject<IdentifierBuilder>(
        json,
        'groupIdentifier',
        IdentifierBuilder.fromJson,
        '$objectPath.groupIdentifier',
      ),
      status: JsonParser.parsePrimitive<RequestStatusBuilder>(
        json,
        'status',
        RequestStatusBuilder.fromJson,
        '$objectPath.status',
      ),
      intent: JsonParser.parsePrimitive<RequestIntentBuilder>(
        json,
        'intent',
        RequestIntentBuilder.fromJson,
        '$objectPath.intent',
      ),
      priority: JsonParser.parsePrimitive<RequestPriorityBuilder>(
        json,
        'priority',
        RequestPriorityBuilder.fromJson,
        '$objectPath.priority',
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
      encounter: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'encounter',
        ReferenceBuilder.fromJson,
        '$objectPath.encounter',
      ),
      authoredOn: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'authoredOn',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.authoredOn',
      ),
      author: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'author',
        ReferenceBuilder.fromJson,
        '$objectPath.author',
      ),
      reason: (json['reason'] as List<dynamic>?)
          ?.map<CodeableReferenceBuilder>(
            (v) => CodeableReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.reason',
              },
            ),
          )
          .toList(),
      goal: (json['goal'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.goal',
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
      action: (json['action'] as List<dynamic>?)
          ?.map<RequestOrchestrationActionBuilder>(
            (v) => RequestOrchestrationActionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.action',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [RequestOrchestrationBuilder]
  /// from a [String] or [YamlMap] object
  factory RequestOrchestrationBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return RequestOrchestrationBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return RequestOrchestrationBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'RequestOrchestrationBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [RequestOrchestrationBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory RequestOrchestrationBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return RequestOrchestrationBuilder.fromJson(json);
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
  List<IdentifierBuilder>? identifier;

  /// [instantiatesCanonical]
  /// A canonical URL referencing a FHIR-defined protocol, guideline,
  /// orderset or other definition that is adhered to in whole or in part by
  /// this request.
  List<FhirCanonicalBuilder>? instantiatesCanonical;

  /// [instantiatesUri]
  /// A URL referencing an externally defined protocol, guideline, orderset
  /// or other definition that is adhered to in whole or in part by this
  /// request.
  List<FhirUriBuilder>? instantiatesUri;

  /// [basedOn]
  /// A plan, proposal or order that is fulfilled in whole or in part by this
  /// request.
  List<ReferenceBuilder>? basedOn;

  /// [replaces]
  /// Completed or terminated request(s) whose function is taken by this new
  /// request.
  List<ReferenceBuilder>? replaces;

  /// [groupIdentifier]
  /// A shared identifier common to multiple independent Request instances
  /// that were activated/authorized more or less simultaneously by a single
  /// author. The presence of the same identifier on each request ties those
  /// requests together and may have business ramifications in terms of
  /// reporting of results, billing, etc. E.g. a requisition number shared by
  /// a set of lab tests ordered together, or a prescription number shared by
  /// all meds ordered at one time.
  IdentifierBuilder? groupIdentifier;

  /// [status]
  /// The current state of the request. For request orchestrations, the
  /// status reflects the status of all the requests in the orchestration.
  RequestStatusBuilder? status;

  /// [intent]
  /// Indicates the level of authority/intentionality associated with the
  /// request and where the request fits into the workflow chain.
  RequestIntentBuilder? intent;

  /// [priority]
  /// Indicates how quickly the request should be addressed with respect to
  /// other requests.
  RequestPriorityBuilder? priority;

  /// [code]
  /// A code that identifies what the overall request orchestration is.
  CodeableConceptBuilder? code;

  /// [subject]
  /// The subject for which the request orchestration was created.
  ReferenceBuilder? subject;

  /// [encounter]
  /// Describes the context of the request orchestration, if any.
  ReferenceBuilder? encounter;

  /// [authoredOn]
  /// Indicates when the request orchestration was created.
  FhirDateTimeBuilder? authoredOn;

  /// [author]
  /// Provides a reference to the author of the request orchestration.
  ReferenceBuilder? author;

  /// [reason]
  /// Describes the reason for the request orchestration in coded or textual
  /// form.
  List<CodeableReferenceBuilder>? reason;

  /// [goal]
  /// Goals that are intended to be achieved by following the requests in
  /// this RequestOrchestration.
  List<ReferenceBuilder>? goal;

  /// [note]
  /// Provides a mechanism to communicate additional information about the
  /// response.
  List<AnnotationBuilder>? note;

  /// [action]
  /// The actions, if any, produced by the evaluation of the artifact.
  List<RequestOrchestrationActionBuilder>? action;

  /// Converts a [RequestOrchestrationBuilder]
  /// to [RequestOrchestration]
  @override
  RequestOrchestration build() => RequestOrchestration.fromJson(toJson());

  /// Converts a [RequestOrchestrationBuilder]
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
    addField('instantiatesCanonical', instantiatesCanonical);
    addField('instantiatesUri', instantiatesUri);
    addField('basedOn', basedOn);
    addField('replaces', replaces);
    addField('groupIdentifier', groupIdentifier);
    addField('status', status);
    addField('intent', intent);
    addField('priority', priority);
    addField('code', code);
    addField('subject', subject);
    addField('encounter', encounter);
    addField('authoredOn', authoredOn);
    addField('author', author);
    addField('reason', reason);
    addField('goal', goal);
    addField('note', note);
    addField('action', action);
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
        if (status != null) {
          fields.add(status!);
        }
      case 'intent':
        if (intent != null) {
          fields.add(intent!);
        }
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
      case 'instantiatesCanonical':
        {
          if (child is List<FhirCanonicalBuilder>) {
            // Replace or create new list
            instantiatesCanonical = child;
            return;
          } else if (child is FhirCanonicalBuilder) {
            // Add single element to existing list or create new list
            instantiatesCanonical = [
              ...(instantiatesCanonical ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirCanonicalBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                final converted = FhirCanonicalBuilder.tryParse(stringValue);
                if (converted != null) {
                  convertedList.add(converted);
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              instantiatesCanonical = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirCanonicalBuilder.tryParse(stringValue);
              if (converted != null) {
                instantiatesCanonical = [
                  ...(instantiatesCanonical ?? []),
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
      case 'instantiatesUri':
        {
          if (child is List<FhirUriBuilder>) {
            // Replace or create new list
            instantiatesUri = child;
            return;
          } else if (child is FhirUriBuilder) {
            // Add single element to existing list or create new list
            instantiatesUri = [
              ...(instantiatesUri ?? []),
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
              instantiatesUri = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                instantiatesUri = [
                  ...(instantiatesUri ?? []),
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
      case 'replaces':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            replaces = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            replaces = [
              ...(replaces ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'groupIdentifier':
        {
          if (child is IdentifierBuilder) {
            groupIdentifier = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'status':
        {
          if (child is RequestStatusBuilder) {
            status = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = RequestStatusBuilder(stringValue);
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
      case 'intent':
        {
          if (child is RequestIntentBuilder) {
            intent = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = RequestIntentBuilder(stringValue);
                intent = converted;
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
      case 'priority':
        {
          if (child is RequestPriorityBuilder) {
            priority = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = RequestPriorityBuilder(stringValue);
                priority = converted;
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
      case 'authoredOn':
        {
          if (child is FhirDateTimeBuilder) {
            authoredOn = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                authoredOn = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
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
      case 'reason':
        {
          if (child is List<CodeableReferenceBuilder>) {
            // Replace or create new list
            reason = child;
            return;
          } else if (child is CodeableReferenceBuilder) {
            // Add single element to existing list or create new list
            reason = [
              ...(reason ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'goal':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            goal = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            goal = [
              ...(goal ?? []),
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
      case 'action':
        {
          if (child is List<RequestOrchestrationActionBuilder>) {
            // Replace or create new list
            action = child;
            return;
          } else if (child is RequestOrchestrationActionBuilder) {
            // Add single element to existing list or create new list
            action = [
              ...(action ?? []),
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
      case 'instantiatesCanonical':
        return ['FhirCanonicalBuilder'];
      case 'instantiatesUri':
        return ['FhirUriBuilder'];
      case 'basedOn':
        return ['ReferenceBuilder'];
      case 'replaces':
        return ['ReferenceBuilder'];
      case 'groupIdentifier':
        return ['IdentifierBuilder'];
      case 'status':
        return ['FhirCodeEnumBuilder'];
      case 'intent':
        return ['FhirCodeEnumBuilder'];
      case 'priority':
        return ['FhirCodeEnumBuilder'];
      case 'code':
        return ['CodeableConceptBuilder'];
      case 'subject':
        return ['ReferenceBuilder'];
      case 'encounter':
        return ['ReferenceBuilder'];
      case 'authoredOn':
        return ['FhirDateTimeBuilder'];
      case 'author':
        return ['ReferenceBuilder'];
      case 'reason':
        return ['CodeableReferenceBuilder'];
      case 'goal':
        return ['ReferenceBuilder'];
      case 'note':
        return ['AnnotationBuilder'];
      case 'action':
        return ['RequestOrchestrationActionBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [RequestOrchestrationBuilder]
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
      case 'instantiatesCanonical':
        {
          instantiatesCanonical = <FhirCanonicalBuilder>[];
          return;
        }
      case 'instantiatesUri':
        {
          instantiatesUri = <FhirUriBuilder>[];
          return;
        }
      case 'basedOn':
        {
          basedOn = <ReferenceBuilder>[];
          return;
        }
      case 'replaces':
        {
          replaces = <ReferenceBuilder>[];
          return;
        }
      case 'groupIdentifier':
        {
          groupIdentifier = IdentifierBuilder.empty();
          return;
        }
      case 'status':
        {
          status = RequestStatusBuilder.empty();
          return;
        }
      case 'intent':
        {
          intent = RequestIntentBuilder.empty();
          return;
        }
      case 'priority':
        {
          priority = RequestPriorityBuilder.empty();
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
      case 'authoredOn':
        {
          authoredOn = FhirDateTimeBuilder.empty();
          return;
        }
      case 'author':
        {
          author = ReferenceBuilder.empty();
          return;
        }
      case 'reason':
        {
          reason = <CodeableReferenceBuilder>[];
          return;
        }
      case 'goal':
        {
          goal = <ReferenceBuilder>[];
          return;
        }
      case 'note':
        {
          note = <AnnotationBuilder>[];
          return;
        }
      case 'action':
        {
          action = <RequestOrchestrationActionBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  RequestOrchestrationBuilder clone() => throw UnimplementedError();
  @override
  RequestOrchestrationBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    AllLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    List<FhirCanonicalBuilder>? instantiatesCanonical,
    List<FhirUriBuilder>? instantiatesUri,
    List<ReferenceBuilder>? basedOn,
    List<ReferenceBuilder>? replaces,
    IdentifierBuilder? groupIdentifier,
    RequestStatusBuilder? status,
    RequestIntentBuilder? intent,
    RequestPriorityBuilder? priority,
    CodeableConceptBuilder? code,
    ReferenceBuilder? subject,
    ReferenceBuilder? encounter,
    FhirDateTimeBuilder? authoredOn,
    ReferenceBuilder? author,
    List<CodeableReferenceBuilder>? reason,
    List<ReferenceBuilder>? goal,
    List<AnnotationBuilder>? note,
    List<RequestOrchestrationActionBuilder>? action,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = RequestOrchestrationBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      instantiatesCanonical:
          instantiatesCanonical ?? this.instantiatesCanonical,
      instantiatesUri: instantiatesUri ?? this.instantiatesUri,
      basedOn: basedOn ?? this.basedOn,
      replaces: replaces ?? this.replaces,
      groupIdentifier: groupIdentifier ?? this.groupIdentifier,
      status: status ?? this.status,
      intent: intent ?? this.intent,
      priority: priority ?? this.priority,
      code: code ?? this.code,
      subject: subject ?? this.subject,
      encounter: encounter ?? this.encounter,
      authoredOn: authoredOn ?? this.authoredOn,
      author: author ?? this.author,
      reason: reason ?? this.reason,
      goal: goal ?? this.goal,
      note: note ?? this.note,
      action: action ?? this.action,
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
    if (o is! RequestOrchestrationBuilder) {
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
    if (!listEquals<FhirCanonicalBuilder>(
      instantiatesCanonical,
      o.instantiatesCanonical,
    )) {
      return false;
    }
    if (!listEquals<FhirUriBuilder>(
      instantiatesUri,
      o.instantiatesUri,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      basedOn,
      o.basedOn,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
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
    if (!listEquals<CodeableReferenceBuilder>(
      reason,
      o.reason,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      goal,
      o.goal,
    )) {
      return false;
    }
    if (!listEquals<AnnotationBuilder>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!listEquals<RequestOrchestrationActionBuilder>(
      action,
      o.action,
    )) {
      return false;
    }
    return true;
  }
}

/// [RequestOrchestrationActionBuilder]
/// The actions, if any, produced by the evaluation of the artifact.
class RequestOrchestrationActionBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [RequestOrchestrationActionBuilder]

  RequestOrchestrationActionBuilder({
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
    TimingXRequestOrchestrationActionBuilder? timingX,
    FhirDateTimeBuilder? timingDateTime,
    AgeBuilder? timingAge,
    PeriodBuilder? timingPeriod,
    FhirDurationBuilder? timingDuration,
    RangeBuilder? timingRange,
    TimingBuilder? timingTiming,
    this.location,
    this.participant,
    this.type,
    this.groupingBehavior,
    this.selectionBehavior,
    this.requiredBehavior,
    this.precheckBehavior,
    this.cardinalityBehavior,
    this.resource,
    DefinitionXRequestOrchestrationActionBuilder? definitionX,
    FhirCanonicalBuilder? definitionCanonical,
    FhirUriBuilder? definitionUri,
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
        super(
          objectPath: 'RequestOrchestration.action',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory RequestOrchestrationActionBuilder.empty() =>
      RequestOrchestrationActionBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory RequestOrchestrationActionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'RequestOrchestration.action';
    return RequestOrchestrationActionBuilder(
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
      prefix: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'prefix',
        FhirStringBuilder.fromJson,
        '$objectPath.prefix',
      ),
      title: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'title',
        FhirStringBuilder.fromJson,
        '$objectPath.title',
      ),
      description: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'description',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.description',
      ),
      textEquivalent: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'textEquivalent',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.textEquivalent',
      ),
      priority: JsonParser.parsePrimitive<RequestPriorityBuilder>(
        json,
        'priority',
        RequestPriorityBuilder.fromJson,
        '$objectPath.priority',
      ),
      code: (json['code'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.code',
              },
            ),
          )
          .toList(),
      documentation: (json['documentation'] as List<dynamic>?)
          ?.map<RelatedArtifactBuilder>(
            (v) => RelatedArtifactBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.documentation',
              },
            ),
          )
          .toList(),
      goal: (json['goal'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.goal',
              },
            ),
          )
          .toList(),
      condition: (json['condition'] as List<dynamic>?)
          ?.map<RequestOrchestrationConditionBuilder>(
            (v) => RequestOrchestrationConditionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.condition',
              },
            ),
          )
          .toList(),
      input: (json['input'] as List<dynamic>?)
          ?.map<RequestOrchestrationInputBuilder>(
            (v) => RequestOrchestrationInputBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.input',
              },
            ),
          )
          .toList(),
      output: (json['output'] as List<dynamic>?)
          ?.map<RequestOrchestrationOutputBuilder>(
            (v) => RequestOrchestrationOutputBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.output',
              },
            ),
          )
          .toList(),
      relatedAction: (json['relatedAction'] as List<dynamic>?)
          ?.map<RequestOrchestrationRelatedActionBuilder>(
            (v) => RequestOrchestrationRelatedActionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.relatedAction',
              },
            ),
          )
          .toList(),
      timingX:
          JsonParser.parsePolymorphic<TimingXRequestOrchestrationActionBuilder>(
        json,
        {
          'timingDateTime': FhirDateTimeBuilder.fromJson,
          'timingAge': AgeBuilder.fromJson,
          'timingPeriod': PeriodBuilder.fromJson,
          'timingDuration': FhirDurationBuilder.fromJson,
          'timingRange': RangeBuilder.fromJson,
          'timingTiming': TimingBuilder.fromJson,
        },
        objectPath,
      ),
      location: JsonParser.parseObject<CodeableReferenceBuilder>(
        json,
        'location',
        CodeableReferenceBuilder.fromJson,
        '$objectPath.location',
      ),
      participant: (json['participant'] as List<dynamic>?)
          ?.map<RequestOrchestrationParticipantBuilder>(
            (v) => RequestOrchestrationParticipantBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.participant',
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
      groupingBehavior:
          JsonParser.parsePrimitive<ActionGroupingBehaviorBuilder>(
        json,
        'groupingBehavior',
        ActionGroupingBehaviorBuilder.fromJson,
        '$objectPath.groupingBehavior',
      ),
      selectionBehavior:
          JsonParser.parsePrimitive<ActionSelectionBehaviorBuilder>(
        json,
        'selectionBehavior',
        ActionSelectionBehaviorBuilder.fromJson,
        '$objectPath.selectionBehavior',
      ),
      requiredBehavior:
          JsonParser.parsePrimitive<ActionRequiredBehaviorBuilder>(
        json,
        'requiredBehavior',
        ActionRequiredBehaviorBuilder.fromJson,
        '$objectPath.requiredBehavior',
      ),
      precheckBehavior:
          JsonParser.parsePrimitive<ActionPrecheckBehaviorBuilder>(
        json,
        'precheckBehavior',
        ActionPrecheckBehaviorBuilder.fromJson,
        '$objectPath.precheckBehavior',
      ),
      cardinalityBehavior:
          JsonParser.parsePrimitive<ActionCardinalityBehaviorBuilder>(
        json,
        'cardinalityBehavior',
        ActionCardinalityBehaviorBuilder.fromJson,
        '$objectPath.cardinalityBehavior',
      ),
      resource: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'resource',
        ReferenceBuilder.fromJson,
        '$objectPath.resource',
      ),
      definitionX: JsonParser.parsePolymorphic<
          DefinitionXRequestOrchestrationActionBuilder>(
        json,
        {
          'definitionCanonical': FhirCanonicalBuilder.fromJson,
          'definitionUri': FhirUriBuilder.fromJson,
        },
        objectPath,
      ),
      transform: JsonParser.parsePrimitive<FhirCanonicalBuilder>(
        json,
        'transform',
        FhirCanonicalBuilder.fromJson,
        '$objectPath.transform',
      ),
      dynamicValue: (json['dynamicValue'] as List<dynamic>?)
          ?.map<RequestOrchestrationDynamicValueBuilder>(
            (v) => RequestOrchestrationDynamicValueBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.dynamicValue',
              },
            ),
          )
          .toList(),
      action: (json['action'] as List<dynamic>?)
          ?.map<RequestOrchestrationActionBuilder>(
            (v) => RequestOrchestrationActionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.action',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [RequestOrchestrationActionBuilder]
  /// from a [String] or [YamlMap] object
  factory RequestOrchestrationActionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return RequestOrchestrationActionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return RequestOrchestrationActionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'RequestOrchestrationActionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [RequestOrchestrationActionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory RequestOrchestrationActionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return RequestOrchestrationActionBuilder.fromJson(json);
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
  FhirStringBuilder? linkId;

  /// [prefix]
  /// A user-visible prefix for the action. For example a section or item
  /// numbering such as 1. or A.
  FhirStringBuilder? prefix;

  /// [title]
  /// The title of the action displayed to a user.
  FhirStringBuilder? title;

  /// [description]
  /// A short description of the action used to provide a summary to display
  /// to the user.
  FhirMarkdownBuilder? description;

  /// [textEquivalent]
  /// A text equivalent of the action to be performed. This provides a
  /// human-interpretable description of the action when the definition is
  /// consumed by a system that might not be capable of interpreting it
  /// dynamically.
  FhirMarkdownBuilder? textEquivalent;

  /// [priority]
  /// Indicates how quickly the action should be addressed with respect to
  /// other actions.
  RequestPriorityBuilder? priority;

  /// [code]
  /// A code that provides meaning for the action or action group. For
  /// example, a section may have a LOINC code for a section of a
  /// documentation template.
  List<CodeableConceptBuilder>? code;

  /// [documentation]
  /// Didactic or other informational resources associated with the action
  /// that can be provided to the CDS recipient. Information resources can
  /// include inline text commentary and links to web resources.
  List<RelatedArtifactBuilder>? documentation;

  /// [goal]
  /// Goals that are intended to be achieved by following the requests in
  /// this action.
  List<ReferenceBuilder>? goal;

  /// [condition]
  /// An expression that describes applicability criteria, or start/stop
  /// conditions for the action.
  List<RequestOrchestrationConditionBuilder>? condition;

  /// [input]
  /// Defines input data requirements for the action.
  List<RequestOrchestrationInputBuilder>? input;

  /// [output]
  /// Defines the outputs of the action, if any.
  List<RequestOrchestrationOutputBuilder>? output;

  /// [relatedAction]
  /// A relationship to another action such as "before" or "30-60 minutes
  /// after start of".
  List<RequestOrchestrationRelatedActionBuilder>? relatedAction;

  /// [timingX]
  /// An optional value describing when the action should be performed.
  TimingXRequestOrchestrationActionBuilder? timingX;

  /// Getter for [timingDateTime] as a FhirDateTimeBuilder
  FhirDateTimeBuilder? get timingDateTime =>
      timingX?.isAs<FhirDateTimeBuilder>();

  /// Getter for [timingAge] as a AgeBuilder
  AgeBuilder? get timingAge => timingX?.isAs<AgeBuilder>();

  /// Getter for [timingPeriod] as a PeriodBuilder
  PeriodBuilder? get timingPeriod => timingX?.isAs<PeriodBuilder>();

  /// Getter for [timingDuration] as a FhirDurationBuilder
  FhirDurationBuilder? get timingDuration =>
      timingX?.isAs<FhirDurationBuilder>();

  /// Getter for [timingRange] as a RangeBuilder
  RangeBuilder? get timingRange => timingX?.isAs<RangeBuilder>();

  /// Getter for [timingTiming] as a TimingBuilder
  TimingBuilder? get timingTiming => timingX?.isAs<TimingBuilder>();

  /// [location]
  /// Identifies the facility where the action will occur; e.g. home,
  /// hospital, specific clinic, etc.
  CodeableReferenceBuilder? location;

  /// [participant]
  /// The participant that should perform or be responsible for this action.
  List<RequestOrchestrationParticipantBuilder>? participant;

  /// [type]
  /// The type of action to perform (create, update, remove).
  CodeableConceptBuilder? type;

  /// [groupingBehavior]
  /// Defines the grouping behavior for the action and its children.
  ActionGroupingBehaviorBuilder? groupingBehavior;

  /// [selectionBehavior]
  /// Defines the selection behavior for the action and its children.
  ActionSelectionBehaviorBuilder? selectionBehavior;

  /// [requiredBehavior]
  /// Defines expectations around whether an action is required.
  ActionRequiredBehaviorBuilder? requiredBehavior;

  /// [precheckBehavior]
  /// Defines whether the action should usually be preselected.
  ActionPrecheckBehaviorBuilder? precheckBehavior;

  /// [cardinalityBehavior]
  /// Defines whether the action can be selected multiple times.
  ActionCardinalityBehaviorBuilder? cardinalityBehavior;

  /// [resource]
  /// The resource that is the target of the action (e.g.
  /// CommunicationRequest).
  ReferenceBuilder? resource;

  /// [definitionX]
  /// A reference to an ActivityDefinition that describes the action to be
  /// taken in detail, a PlanDefinition that describes a series of actions to
  /// be taken, a Questionnaire that should be filled out, a
  /// SpecimenDefinition describing a specimen to be collected, or an
  /// ObservationDefinition that specifies what observation should be
  /// captured.
  DefinitionXRequestOrchestrationActionBuilder? definitionX;

  /// Getter for [definitionCanonical] as a FhirCanonicalBuilder
  FhirCanonicalBuilder? get definitionCanonical =>
      definitionX?.isAs<FhirCanonicalBuilder>();

  /// Getter for [definitionUri] as a FhirUriBuilder
  FhirUriBuilder? get definitionUri => definitionX?.isAs<FhirUriBuilder>();

  /// [transform]
  /// A reference to a StructureMap resource that defines a transform that
  /// can be executed to produce the intent resource using the
  /// ActivityDefinition instance as the input.
  FhirCanonicalBuilder? transform;

  /// [dynamicValue]
  /// Customizations that should be applied to the statically defined
  /// resource. For example, if the dosage of a medication must be computed
  /// based on the patient's weight, a customization would be used to specify
  /// an expression that calculated the weight, and the path on the resource
  /// that would contain the result.
  List<RequestOrchestrationDynamicValueBuilder>? dynamicValue;

  /// [action]
  /// Sub actions.
  List<RequestOrchestrationActionBuilder>? action;

  /// Converts a [RequestOrchestrationActionBuilder]
  /// to [RequestOrchestrationAction]
  @override
  RequestOrchestrationAction build() =>
      RequestOrchestrationAction.fromJson(toJson());

  /// Converts a [RequestOrchestrationActionBuilder]
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
    addField('prefix', prefix);
    addField('title', title);
    addField('description', description);
    addField('textEquivalent', textEquivalent);
    addField('priority', priority);
    addField('code', code);
    addField('documentation', documentation);
    addField('goal', goal);
    addField('condition', condition);
    addField('input', input);
    addField('output', output);
    addField('relatedAction', relatedAction);
    if (timingX != null) {
      final fhirType = timingX!.fhirType;
      addField('timing${fhirType.capitalizeFirstLetter()}', timingX);
    }

    addField('location', location);
    addField('participant', participant);
    addField('type', type);
    addField('groupingBehavior', groupingBehavior);
    addField('selectionBehavior', selectionBehavior);
    addField('requiredBehavior', requiredBehavior);
    addField('precheckBehavior', precheckBehavior);
    addField('cardinalityBehavior', cardinalityBehavior);
    addField('resource', resource);
    if (definitionX != null) {
      final fhirType = definitionX!.fhirType;
      addField('definition${fhirType.capitalizeFirstLetter()}', definitionX);
    }

    addField('transform', transform);
    addField('dynamicValue', dynamicValue);
    addField('action', action);
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
        if (timingX != null) {
          fields.add(timingX!);
        }
      case 'timingX':
        if (timingX != null) {
          fields.add(timingX!);
        }
      case 'timingDateTime':
        if (timingX is FhirDateTimeBuilder) {
          fields.add(timingX!);
        }
      case 'timingAge':
        if (timingX is AgeBuilder) {
          fields.add(timingX!);
        }
      case 'timingPeriod':
        if (timingX is PeriodBuilder) {
          fields.add(timingX!);
        }
      case 'timingDuration':
        if (timingX is FhirDurationBuilder) {
          fields.add(timingX!);
        }
      case 'timingRange':
        if (timingX is RangeBuilder) {
          fields.add(timingX!);
        }
      case 'timingTiming':
        if (timingX is TimingBuilder) {
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
        if (definitionX != null) {
          fields.add(definitionX!);
        }
      case 'definitionX':
        if (definitionX != null) {
          fields.add(definitionX!);
        }
      case 'definitionCanonical':
        if (definitionX is FhirCanonicalBuilder) {
          fields.add(definitionX!);
        }
      case 'definitionUri':
        if (definitionX is FhirUriBuilder) {
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
      case 'prefix':
        {
          if (child is FhirStringBuilder) {
            prefix = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                prefix = converted;
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
      case 'textEquivalent':
        {
          if (child is FhirMarkdownBuilder) {
            textEquivalent = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
              if (converted != null) {
                textEquivalent = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'priority':
        {
          if (child is RequestPriorityBuilder) {
            priority = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = RequestPriorityBuilder(stringValue);
                priority = converted;
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
      case 'code':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            code = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            code = [
              ...(code ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'documentation':
        {
          if (child is List<RelatedArtifactBuilder>) {
            // Replace or create new list
            documentation = child;
            return;
          } else if (child is RelatedArtifactBuilder) {
            // Add single element to existing list or create new list
            documentation = [
              ...(documentation ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'goal':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            goal = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            goal = [
              ...(goal ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'condition':
        {
          if (child is List<RequestOrchestrationConditionBuilder>) {
            // Replace or create new list
            condition = child;
            return;
          } else if (child is RequestOrchestrationConditionBuilder) {
            // Add single element to existing list or create new list
            condition = [
              ...(condition ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'input':
        {
          if (child is List<RequestOrchestrationInputBuilder>) {
            // Replace or create new list
            input = child;
            return;
          } else if (child is RequestOrchestrationInputBuilder) {
            // Add single element to existing list or create new list
            input = [
              ...(input ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'output':
        {
          if (child is List<RequestOrchestrationOutputBuilder>) {
            // Replace or create new list
            output = child;
            return;
          } else if (child is RequestOrchestrationOutputBuilder) {
            // Add single element to existing list or create new list
            output = [
              ...(output ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'relatedAction':
        {
          if (child is List<RequestOrchestrationRelatedActionBuilder>) {
            // Replace or create new list
            relatedAction = child;
            return;
          } else if (child is RequestOrchestrationRelatedActionBuilder) {
            // Add single element to existing list or create new list
            relatedAction = [
              ...(relatedAction ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'timing':
      case 'timingX':
        {
          if (child is TimingXRequestOrchestrationActionBuilder) {
            timingX = child;
            return;
          } else {
            if (child is FhirDateTimeBuilder) {
              timingX = child;
              return;
            }
            if (child is AgeBuilder) {
              timingX = child;
              return;
            }
            if (child is PeriodBuilder) {
              timingX = child;
              return;
            }
            if (child is FhirDurationBuilder) {
              timingX = child;
              return;
            }
            if (child is RangeBuilder) {
              timingX = child;
              return;
            }
            if (child is TimingBuilder) {
              timingX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'timingDateTime':
        {
          if (child is FhirDateTimeBuilder) {
            timingX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'timingAge':
        {
          if (child is AgeBuilder) {
            timingX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'timingPeriod':
        {
          if (child is PeriodBuilder) {
            timingX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'timingDuration':
        {
          if (child is FhirDurationBuilder) {
            timingX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'timingRange':
        {
          if (child is RangeBuilder) {
            timingX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'timingTiming':
        {
          if (child is TimingBuilder) {
            timingX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'location':
        {
          if (child is CodeableReferenceBuilder) {
            location = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'participant':
        {
          if (child is List<RequestOrchestrationParticipantBuilder>) {
            // Replace or create new list
            participant = child;
            return;
          } else if (child is RequestOrchestrationParticipantBuilder) {
            // Add single element to existing list or create new list
            participant = [
              ...(participant ?? []),
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
      case 'groupingBehavior':
        {
          if (child is ActionGroupingBehaviorBuilder) {
            groupingBehavior = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = ActionGroupingBehaviorBuilder(stringValue);
                groupingBehavior = converted;
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
      case 'selectionBehavior':
        {
          if (child is ActionSelectionBehaviorBuilder) {
            selectionBehavior = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = ActionSelectionBehaviorBuilder(stringValue);
                selectionBehavior = converted;
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
      case 'requiredBehavior':
        {
          if (child is ActionRequiredBehaviorBuilder) {
            requiredBehavior = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = ActionRequiredBehaviorBuilder(stringValue);
                requiredBehavior = converted;
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
      case 'precheckBehavior':
        {
          if (child is ActionPrecheckBehaviorBuilder) {
            precheckBehavior = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = ActionPrecheckBehaviorBuilder(stringValue);
                precheckBehavior = converted;
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
      case 'cardinalityBehavior':
        {
          if (child is ActionCardinalityBehaviorBuilder) {
            cardinalityBehavior = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = ActionCardinalityBehaviorBuilder(stringValue);
                cardinalityBehavior = converted;
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
      case 'resource':
        {
          if (child is ReferenceBuilder) {
            resource = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'definition':
      case 'definitionX':
        {
          if (child is DefinitionXRequestOrchestrationActionBuilder) {
            definitionX = child;
            return;
          } else {
            if (child is FhirCanonicalBuilder) {
              definitionX = child;
              return;
            }
            if (child is FhirUriBuilder) {
              definitionX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'definitionCanonical':
        {
          if (child is FhirCanonicalBuilder) {
            definitionX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'definitionUri':
        {
          if (child is FhirUriBuilder) {
            definitionX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'transform':
        {
          if (child is FhirCanonicalBuilder) {
            transform = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirCanonicalBuilder.tryParse(stringValue);
              if (converted != null) {
                transform = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'dynamicValue':
        {
          if (child is List<RequestOrchestrationDynamicValueBuilder>) {
            // Replace or create new list
            dynamicValue = child;
            return;
          } else if (child is RequestOrchestrationDynamicValueBuilder) {
            // Add single element to existing list or create new list
            dynamicValue = [
              ...(dynamicValue ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'action':
        {
          if (child is List<RequestOrchestrationActionBuilder>) {
            // Replace or create new list
            action = child;
            return;
          } else if (child is RequestOrchestrationActionBuilder) {
            // Add single element to existing list or create new list
            action = [
              ...(action ?? []),
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
      case 'prefix':
        return ['FhirStringBuilder'];
      case 'title':
        return ['FhirStringBuilder'];
      case 'description':
        return ['FhirMarkdownBuilder'];
      case 'textEquivalent':
        return ['FhirMarkdownBuilder'];
      case 'priority':
        return ['FhirCodeEnumBuilder'];
      case 'code':
        return ['CodeableConceptBuilder'];
      case 'documentation':
        return ['RelatedArtifactBuilder'];
      case 'goal':
        return ['ReferenceBuilder'];
      case 'condition':
        return ['RequestOrchestrationConditionBuilder'];
      case 'input':
        return ['RequestOrchestrationInputBuilder'];
      case 'output':
        return ['RequestOrchestrationOutputBuilder'];
      case 'relatedAction':
        return ['RequestOrchestrationRelatedActionBuilder'];
      case 'timing':
      case 'timingX':
        return [
          'FhirDateTimeBuilder',
          'AgeBuilder',
          'PeriodBuilder',
          'FhirDurationBuilder',
          'RangeBuilder',
          'TimingBuilder',
        ];
      case 'timingDateTime':
        return ['FhirDateTimeBuilder'];
      case 'timingAge':
        return ['AgeBuilder'];
      case 'timingPeriod':
        return ['PeriodBuilder'];
      case 'timingDuration':
        return ['FhirDurationBuilder'];
      case 'timingRange':
        return ['RangeBuilder'];
      case 'timingTiming':
        return ['TimingBuilder'];
      case 'location':
        return ['CodeableReferenceBuilder'];
      case 'participant':
        return ['RequestOrchestrationParticipantBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'groupingBehavior':
        return ['FhirCodeEnumBuilder'];
      case 'selectionBehavior':
        return ['FhirCodeEnumBuilder'];
      case 'requiredBehavior':
        return ['FhirCodeEnumBuilder'];
      case 'precheckBehavior':
        return ['FhirCodeEnumBuilder'];
      case 'cardinalityBehavior':
        return ['FhirCodeEnumBuilder'];
      case 'resource':
        return ['ReferenceBuilder'];
      case 'definition':
      case 'definitionX':
        return [
          'FhirCanonicalBuilder',
          'FhirUriBuilder',
        ];
      case 'definitionCanonical':
        return ['FhirCanonicalBuilder'];
      case 'definitionUri':
        return ['FhirUriBuilder'];
      case 'transform':
        return ['FhirCanonicalBuilder'];
      case 'dynamicValue':
        return ['RequestOrchestrationDynamicValueBuilder'];
      case 'action':
        return ['RequestOrchestrationActionBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [RequestOrchestrationActionBuilder]
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
      case 'prefix':
        {
          prefix = FhirStringBuilder.empty();
          return;
        }
      case 'title':
        {
          title = FhirStringBuilder.empty();
          return;
        }
      case 'description':
        {
          description = FhirMarkdownBuilder.empty();
          return;
        }
      case 'textEquivalent':
        {
          textEquivalent = FhirMarkdownBuilder.empty();
          return;
        }
      case 'priority':
        {
          priority = RequestPriorityBuilder.empty();
          return;
        }
      case 'code':
        {
          code = <CodeableConceptBuilder>[];
          return;
        }
      case 'documentation':
        {
          documentation = <RelatedArtifactBuilder>[];
          return;
        }
      case 'goal':
        {
          goal = <ReferenceBuilder>[];
          return;
        }
      case 'condition':
        {
          condition = <RequestOrchestrationConditionBuilder>[];
          return;
        }
      case 'input':
        {
          input = <RequestOrchestrationInputBuilder>[];
          return;
        }
      case 'output':
        {
          output = <RequestOrchestrationOutputBuilder>[];
          return;
        }
      case 'relatedAction':
        {
          relatedAction = <RequestOrchestrationRelatedActionBuilder>[];
          return;
        }
      case 'timing':
      case 'timingX':
      case 'timingDateTime':
        {
          timingX = FhirDateTimeBuilder.empty();
          return;
        }
      case 'timingAge':
        {
          timingX = AgeBuilder.empty();
          return;
        }
      case 'timingPeriod':
        {
          timingX = PeriodBuilder.empty();
          return;
        }
      case 'timingDuration':
        {
          timingX = FhirDurationBuilder.empty();
          return;
        }
      case 'timingRange':
        {
          timingX = RangeBuilder.empty();
          return;
        }
      case 'timingTiming':
        {
          timingX = TimingBuilder.empty();
          return;
        }
      case 'location':
        {
          location = CodeableReferenceBuilder.empty();
          return;
        }
      case 'participant':
        {
          participant = <RequestOrchestrationParticipantBuilder>[];
          return;
        }
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'groupingBehavior':
        {
          groupingBehavior = ActionGroupingBehaviorBuilder.empty();
          return;
        }
      case 'selectionBehavior':
        {
          selectionBehavior = ActionSelectionBehaviorBuilder.empty();
          return;
        }
      case 'requiredBehavior':
        {
          requiredBehavior = ActionRequiredBehaviorBuilder.empty();
          return;
        }
      case 'precheckBehavior':
        {
          precheckBehavior = ActionPrecheckBehaviorBuilder.empty();
          return;
        }
      case 'cardinalityBehavior':
        {
          cardinalityBehavior = ActionCardinalityBehaviorBuilder.empty();
          return;
        }
      case 'resource':
        {
          resource = ReferenceBuilder.empty();
          return;
        }
      case 'definition':
      case 'definitionX':
      case 'definitionCanonical':
        {
          definitionX = FhirCanonicalBuilder.empty();
          return;
        }
      case 'definitionUri':
        {
          definitionX = FhirUriBuilder.empty();
          return;
        }
      case 'transform':
        {
          transform = FhirCanonicalBuilder.empty();
          return;
        }
      case 'dynamicValue':
        {
          dynamicValue = <RequestOrchestrationDynamicValueBuilder>[];
          return;
        }
      case 'action':
        {
          action = <RequestOrchestrationActionBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  RequestOrchestrationActionBuilder clone() => throw UnimplementedError();
  @override
  RequestOrchestrationActionBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? linkId,
    FhirStringBuilder? prefix,
    FhirStringBuilder? title,
    FhirMarkdownBuilder? description,
    FhirMarkdownBuilder? textEquivalent,
    RequestPriorityBuilder? priority,
    List<CodeableConceptBuilder>? code,
    List<RelatedArtifactBuilder>? documentation,
    List<ReferenceBuilder>? goal,
    List<RequestOrchestrationConditionBuilder>? condition,
    List<RequestOrchestrationInputBuilder>? input,
    List<RequestOrchestrationOutputBuilder>? output,
    List<RequestOrchestrationRelatedActionBuilder>? relatedAction,
    TimingXRequestOrchestrationActionBuilder? timingX,
    CodeableReferenceBuilder? location,
    List<RequestOrchestrationParticipantBuilder>? participant,
    CodeableConceptBuilder? type,
    ActionGroupingBehaviorBuilder? groupingBehavior,
    ActionSelectionBehaviorBuilder? selectionBehavior,
    ActionRequiredBehaviorBuilder? requiredBehavior,
    ActionPrecheckBehaviorBuilder? precheckBehavior,
    ActionCardinalityBehaviorBuilder? cardinalityBehavior,
    ReferenceBuilder? resource,
    DefinitionXRequestOrchestrationActionBuilder? definitionX,
    FhirCanonicalBuilder? transform,
    List<RequestOrchestrationDynamicValueBuilder>? dynamicValue,
    List<RequestOrchestrationActionBuilder>? action,
    FhirDateTimeBuilder? timingDateTime,
    AgeBuilder? timingAge,
    PeriodBuilder? timingPeriod,
    FhirDurationBuilder? timingDuration,
    RangeBuilder? timingRange,
    TimingBuilder? timingTiming,
    FhirCanonicalBuilder? definitionCanonical,
    FhirUriBuilder? definitionUri,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = RequestOrchestrationActionBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      linkId: linkId ?? this.linkId,
      prefix: prefix ?? this.prefix,
      title: title ?? this.title,
      description: description ?? this.description,
      textEquivalent: textEquivalent ?? this.textEquivalent,
      priority: priority ?? this.priority,
      code: code ?? this.code,
      documentation: documentation ?? this.documentation,
      goal: goal ?? this.goal,
      condition: condition ?? this.condition,
      input: input ?? this.input,
      output: output ?? this.output,
      relatedAction: relatedAction ?? this.relatedAction,
      timingX: timingX ??
          timingDateTime ??
          timingAge ??
          timingPeriod ??
          timingDuration ??
          timingRange ??
          timingTiming ??
          this.timingX,
      location: location ?? this.location,
      participant: participant ?? this.participant,
      type: type ?? this.type,
      groupingBehavior: groupingBehavior ?? this.groupingBehavior,
      selectionBehavior: selectionBehavior ?? this.selectionBehavior,
      requiredBehavior: requiredBehavior ?? this.requiredBehavior,
      precheckBehavior: precheckBehavior ?? this.precheckBehavior,
      cardinalityBehavior: cardinalityBehavior ?? this.cardinalityBehavior,
      resource: resource ?? this.resource,
      definitionX: definitionX ??
          definitionCanonical ??
          definitionUri ??
          this.definitionX,
      transform: transform ?? this.transform,
      dynamicValue: dynamicValue ?? this.dynamicValue,
      action: action ?? this.action,
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
    if (o is! RequestOrchestrationActionBuilder) {
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
    if (!listEquals<CodeableConceptBuilder>(
      code,
      o.code,
    )) {
      return false;
    }
    if (!listEquals<RelatedArtifactBuilder>(
      documentation,
      o.documentation,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      goal,
      o.goal,
    )) {
      return false;
    }
    if (!listEquals<RequestOrchestrationConditionBuilder>(
      condition,
      o.condition,
    )) {
      return false;
    }
    if (!listEquals<RequestOrchestrationInputBuilder>(
      input,
      o.input,
    )) {
      return false;
    }
    if (!listEquals<RequestOrchestrationOutputBuilder>(
      output,
      o.output,
    )) {
      return false;
    }
    if (!listEquals<RequestOrchestrationRelatedActionBuilder>(
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
    if (!listEquals<RequestOrchestrationParticipantBuilder>(
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
    if (!listEquals<RequestOrchestrationDynamicValueBuilder>(
      dynamicValue,
      o.dynamicValue,
    )) {
      return false;
    }
    if (!listEquals<RequestOrchestrationActionBuilder>(
      action,
      o.action,
    )) {
      return false;
    }
    return true;
  }
}

/// [RequestOrchestrationConditionBuilder]
/// An expression that describes applicability criteria, or start/stop
/// conditions for the action.
class RequestOrchestrationConditionBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [RequestOrchestrationConditionBuilder]

  RequestOrchestrationConditionBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.kind,
    this.expression,
    super.disallowExtensions,
  }) : super(
          objectPath: 'RequestOrchestration.action.condition',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory RequestOrchestrationConditionBuilder.empty() =>
      RequestOrchestrationConditionBuilder(
        kind: ActionConditionKindBuilder.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory RequestOrchestrationConditionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'RequestOrchestration.action.condition';
    return RequestOrchestrationConditionBuilder(
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
      kind: JsonParser.parsePrimitive<ActionConditionKindBuilder>(
        json,
        'kind',
        ActionConditionKindBuilder.fromJson,
        '$objectPath.kind',
      ),
      expression: JsonParser.parseObject<FhirExpressionBuilder>(
        json,
        'expression',
        FhirExpressionBuilder.fromJson,
        '$objectPath.expression',
      ),
    );
  }

  /// Deserialize [RequestOrchestrationConditionBuilder]
  /// from a [String] or [YamlMap] object
  factory RequestOrchestrationConditionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return RequestOrchestrationConditionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return RequestOrchestrationConditionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'RequestOrchestrationConditionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [RequestOrchestrationConditionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory RequestOrchestrationConditionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return RequestOrchestrationConditionBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'RequestOrchestrationCondition';

  /// [kind]
  /// The kind of condition.
  ActionConditionKindBuilder? kind;

  /// [expression]
  /// An expression that returns true or false, indicating whether or not the
  /// condition is satisfied.
  FhirExpressionBuilder? expression;

  /// Converts a [RequestOrchestrationConditionBuilder]
  /// to [RequestOrchestrationCondition]
  @override
  RequestOrchestrationCondition build() =>
      RequestOrchestrationCondition.fromJson(toJson());

  /// Converts a [RequestOrchestrationConditionBuilder]
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
    addField('kind', kind);
    addField('expression', expression);
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
      case 'kind':
        if (kind != null) {
          fields.add(kind!);
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
      case 'kind':
        {
          if (child is ActionConditionKindBuilder) {
            kind = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = ActionConditionKindBuilder(stringValue);
                kind = converted;
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
      case 'expression':
        {
          if (child is FhirExpressionBuilder) {
            expression = child;
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
      case 'kind':
        return ['FhirCodeEnumBuilder'];
      case 'expression':
        return ['FhirExpressionBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [RequestOrchestrationConditionBuilder]
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
      case 'kind':
        {
          kind = ActionConditionKindBuilder.empty();
          return;
        }
      case 'expression':
        {
          expression = FhirExpressionBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  RequestOrchestrationConditionBuilder clone() => throw UnimplementedError();
  @override
  RequestOrchestrationConditionBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    ActionConditionKindBuilder? kind,
    FhirExpressionBuilder? expression,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = RequestOrchestrationConditionBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      kind: kind ?? this.kind,
      expression: expression ?? this.expression,
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
    if (o is! RequestOrchestrationConditionBuilder) {
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

/// [RequestOrchestrationInputBuilder]
/// Defines input data requirements for the action.
class RequestOrchestrationInputBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [RequestOrchestrationInputBuilder]

  RequestOrchestrationInputBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.title,
    this.requirement,
    this.relatedData,
    super.disallowExtensions,
  }) : super(
          objectPath: 'RequestOrchestration.action.input',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory RequestOrchestrationInputBuilder.empty() =>
      RequestOrchestrationInputBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory RequestOrchestrationInputBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'RequestOrchestration.action.input';
    return RequestOrchestrationInputBuilder(
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
      title: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'title',
        FhirStringBuilder.fromJson,
        '$objectPath.title',
      ),
      requirement: JsonParser.parseObject<DataRequirementBuilder>(
        json,
        'requirement',
        DataRequirementBuilder.fromJson,
        '$objectPath.requirement',
      ),
      relatedData: JsonParser.parsePrimitive<FhirIdBuilder>(
        json,
        'relatedData',
        FhirIdBuilder.fromJson,
        '$objectPath.relatedData',
      ),
    );
  }

  /// Deserialize [RequestOrchestrationInputBuilder]
  /// from a [String] or [YamlMap] object
  factory RequestOrchestrationInputBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return RequestOrchestrationInputBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return RequestOrchestrationInputBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'RequestOrchestrationInputBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [RequestOrchestrationInputBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory RequestOrchestrationInputBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return RequestOrchestrationInputBuilder.fromJson(json);
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
  FhirStringBuilder? title;

  /// [requirement]
  /// Defines the data that is to be provided as input to the action.
  DataRequirementBuilder? requirement;

  /// [relatedData]
  /// Points to an existing input or output element that provides data to
  /// this input.
  FhirIdBuilder? relatedData;

  /// Converts a [RequestOrchestrationInputBuilder]
  /// to [RequestOrchestrationInput]
  @override
  RequestOrchestrationInput build() =>
      RequestOrchestrationInput.fromJson(toJson());

  /// Converts a [RequestOrchestrationInputBuilder]
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
    addField('title', title);
    addField('requirement', requirement);
    addField('relatedData', relatedData);
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
      case 'requirement':
        {
          if (child is DataRequirementBuilder) {
            requirement = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'relatedData':
        {
          if (child is FhirIdBuilder) {
            relatedData = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirIdBuilder.tryParse(stringValue);
              if (converted != null) {
                relatedData = converted;
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
      case 'title':
        return ['FhirStringBuilder'];
      case 'requirement':
        return ['DataRequirementBuilder'];
      case 'relatedData':
        return ['FhirIdBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [RequestOrchestrationInputBuilder]
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
      case 'title':
        {
          title = FhirStringBuilder.empty();
          return;
        }
      case 'requirement':
        {
          requirement = DataRequirementBuilder.empty();
          return;
        }
      case 'relatedData':
        {
          relatedData = FhirIdBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  RequestOrchestrationInputBuilder clone() => throw UnimplementedError();
  @override
  RequestOrchestrationInputBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? title,
    DataRequirementBuilder? requirement,
    FhirIdBuilder? relatedData,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = RequestOrchestrationInputBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      title: title ?? this.title,
      requirement: requirement ?? this.requirement,
      relatedData: relatedData ?? this.relatedData,
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
    if (o is! RequestOrchestrationInputBuilder) {
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

/// [RequestOrchestrationOutputBuilder]
/// Defines the outputs of the action, if any.
class RequestOrchestrationOutputBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [RequestOrchestrationOutputBuilder]

  RequestOrchestrationOutputBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.title,
    this.requirement,
    this.relatedData,
    super.disallowExtensions,
  }) : super(
          objectPath: 'RequestOrchestration.action.output',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory RequestOrchestrationOutputBuilder.empty() =>
      RequestOrchestrationOutputBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory RequestOrchestrationOutputBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'RequestOrchestration.action.output';
    return RequestOrchestrationOutputBuilder(
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
      title: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'title',
        FhirStringBuilder.fromJson,
        '$objectPath.title',
      ),
      requirement: JsonParser.parseObject<DataRequirementBuilder>(
        json,
        'requirement',
        DataRequirementBuilder.fromJson,
        '$objectPath.requirement',
      ),
      relatedData: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'relatedData',
        FhirStringBuilder.fromJson,
        '$objectPath.relatedData',
      ),
    );
  }

  /// Deserialize [RequestOrchestrationOutputBuilder]
  /// from a [String] or [YamlMap] object
  factory RequestOrchestrationOutputBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return RequestOrchestrationOutputBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return RequestOrchestrationOutputBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'RequestOrchestrationOutputBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [RequestOrchestrationOutputBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory RequestOrchestrationOutputBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return RequestOrchestrationOutputBuilder.fromJson(json);
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
  FhirStringBuilder? title;

  /// [requirement]
  /// Defines the data that results as output from the action.
  DataRequirementBuilder? requirement;

  /// [relatedData]
  /// Points to an existing input or output element that is results as output
  /// from the action.
  FhirStringBuilder? relatedData;

  /// Converts a [RequestOrchestrationOutputBuilder]
  /// to [RequestOrchestrationOutput]
  @override
  RequestOrchestrationOutput build() =>
      RequestOrchestrationOutput.fromJson(toJson());

  /// Converts a [RequestOrchestrationOutputBuilder]
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
    addField('title', title);
    addField('requirement', requirement);
    addField('relatedData', relatedData);
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
      case 'requirement':
        {
          if (child is DataRequirementBuilder) {
            requirement = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'relatedData':
        {
          if (child is FhirStringBuilder) {
            relatedData = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                relatedData = converted;
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
      case 'title':
        return ['FhirStringBuilder'];
      case 'requirement':
        return ['DataRequirementBuilder'];
      case 'relatedData':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [RequestOrchestrationOutputBuilder]
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
      case 'title':
        {
          title = FhirStringBuilder.empty();
          return;
        }
      case 'requirement':
        {
          requirement = DataRequirementBuilder.empty();
          return;
        }
      case 'relatedData':
        {
          relatedData = FhirStringBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  RequestOrchestrationOutputBuilder clone() => throw UnimplementedError();
  @override
  RequestOrchestrationOutputBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? title,
    DataRequirementBuilder? requirement,
    FhirStringBuilder? relatedData,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = RequestOrchestrationOutputBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      title: title ?? this.title,
      requirement: requirement ?? this.requirement,
      relatedData: relatedData ?? this.relatedData,
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
    if (o is! RequestOrchestrationOutputBuilder) {
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

/// [RequestOrchestrationRelatedActionBuilder]
/// A relationship to another action such as "before" or "30-60 minutes
/// after start of".
class RequestOrchestrationRelatedActionBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [RequestOrchestrationRelatedActionBuilder]

  RequestOrchestrationRelatedActionBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.targetId,
    this.relationship,
    this.endRelationship,
    OffsetXRequestOrchestrationRelatedActionBuilder? offsetX,
    FhirDurationBuilder? offsetDuration,
    RangeBuilder? offsetRange,
    super.disallowExtensions,
  })  : offsetX = offsetX ?? offsetDuration ?? offsetRange,
        super(
          objectPath: 'RequestOrchestration.action.relatedAction',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory RequestOrchestrationRelatedActionBuilder.empty() =>
      RequestOrchestrationRelatedActionBuilder(
        targetId: FhirIdBuilder.empty(),
        relationship: ActionRelationshipTypeBuilder.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory RequestOrchestrationRelatedActionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'RequestOrchestration.action.relatedAction';
    return RequestOrchestrationRelatedActionBuilder(
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
      targetId: JsonParser.parsePrimitive<FhirIdBuilder>(
        json,
        'targetId',
        FhirIdBuilder.fromJson,
        '$objectPath.targetId',
      ),
      relationship: JsonParser.parsePrimitive<ActionRelationshipTypeBuilder>(
        json,
        'relationship',
        ActionRelationshipTypeBuilder.fromJson,
        '$objectPath.relationship',
      ),
      endRelationship: JsonParser.parsePrimitive<ActionRelationshipTypeBuilder>(
        json,
        'endRelationship',
        ActionRelationshipTypeBuilder.fromJson,
        '$objectPath.endRelationship',
      ),
      offsetX: JsonParser.parsePolymorphic<
          OffsetXRequestOrchestrationRelatedActionBuilder>(
        json,
        {
          'offsetDuration': FhirDurationBuilder.fromJson,
          'offsetRange': RangeBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [RequestOrchestrationRelatedActionBuilder]
  /// from a [String] or [YamlMap] object
  factory RequestOrchestrationRelatedActionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return RequestOrchestrationRelatedActionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return RequestOrchestrationRelatedActionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'RequestOrchestrationRelatedActionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [RequestOrchestrationRelatedActionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory RequestOrchestrationRelatedActionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return RequestOrchestrationRelatedActionBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'RequestOrchestrationRelatedAction';

  /// [targetId]
  /// The element id of the target related action.
  FhirIdBuilder? targetId;

  /// [relationship]
  /// The relationship of this action to the related action.
  ActionRelationshipTypeBuilder? relationship;

  /// [endRelationship]
  /// The relationship of the end of this action to the related action.
  ActionRelationshipTypeBuilder? endRelationship;

  /// [offsetX]
  /// A duration or range of durations to apply to the relationship. For
  /// example, 30-60 minutes before.
  OffsetXRequestOrchestrationRelatedActionBuilder? offsetX;

  /// Getter for [offsetDuration] as a FhirDurationBuilder
  FhirDurationBuilder? get offsetDuration =>
      offsetX?.isAs<FhirDurationBuilder>();

  /// Getter for [offsetRange] as a RangeBuilder
  RangeBuilder? get offsetRange => offsetX?.isAs<RangeBuilder>();

  /// Converts a [RequestOrchestrationRelatedActionBuilder]
  /// to [RequestOrchestrationRelatedAction]
  @override
  RequestOrchestrationRelatedAction build() =>
      RequestOrchestrationRelatedAction.fromJson(toJson());

  /// Converts a [RequestOrchestrationRelatedActionBuilder]
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
    addField('targetId', targetId);
    addField('relationship', relationship);
    addField('endRelationship', endRelationship);
    if (offsetX != null) {
      final fhirType = offsetX!.fhirType;
      addField('offset${fhirType.capitalizeFirstLetter()}', offsetX);
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
      case 'targetId':
        if (targetId != null) {
          fields.add(targetId!);
        }
      case 'relationship':
        if (relationship != null) {
          fields.add(relationship!);
        }
      case 'endRelationship':
        if (endRelationship != null) {
          fields.add(endRelationship!);
        }
      case 'offset':
        if (offsetX != null) {
          fields.add(offsetX!);
        }
      case 'offsetX':
        if (offsetX != null) {
          fields.add(offsetX!);
        }
      case 'offsetDuration':
        if (offsetX is FhirDurationBuilder) {
          fields.add(offsetX!);
        }
      case 'offsetRange':
        if (offsetX is RangeBuilder) {
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
      case 'targetId':
        {
          if (child is FhirIdBuilder) {
            targetId = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirIdBuilder.tryParse(stringValue);
              if (converted != null) {
                targetId = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'relationship':
        {
          if (child is ActionRelationshipTypeBuilder) {
            relationship = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = ActionRelationshipTypeBuilder(stringValue);
                relationship = converted;
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
      case 'endRelationship':
        {
          if (child is ActionRelationshipTypeBuilder) {
            endRelationship = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = ActionRelationshipTypeBuilder(stringValue);
                endRelationship = converted;
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
      case 'offset':
      case 'offsetX':
        {
          if (child is OffsetXRequestOrchestrationRelatedActionBuilder) {
            offsetX = child;
            return;
          } else {
            if (child is FhirDurationBuilder) {
              offsetX = child;
              return;
            }
            if (child is RangeBuilder) {
              offsetX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'offsetDuration':
        {
          if (child is FhirDurationBuilder) {
            offsetX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'offsetRange':
        {
          if (child is RangeBuilder) {
            offsetX = child;
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
      case 'targetId':
        return ['FhirIdBuilder'];
      case 'relationship':
        return ['FhirCodeEnumBuilder'];
      case 'endRelationship':
        return ['FhirCodeEnumBuilder'];
      case 'offset':
      case 'offsetX':
        return [
          'FhirDurationBuilder',
          'RangeBuilder',
        ];
      case 'offsetDuration':
        return ['FhirDurationBuilder'];
      case 'offsetRange':
        return ['RangeBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [RequestOrchestrationRelatedActionBuilder]
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
      case 'targetId':
        {
          targetId = FhirIdBuilder.empty();
          return;
        }
      case 'relationship':
        {
          relationship = ActionRelationshipTypeBuilder.empty();
          return;
        }
      case 'endRelationship':
        {
          endRelationship = ActionRelationshipTypeBuilder.empty();
          return;
        }
      case 'offset':
      case 'offsetX':
      case 'offsetDuration':
        {
          offsetX = FhirDurationBuilder.empty();
          return;
        }
      case 'offsetRange':
        {
          offsetX = RangeBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  RequestOrchestrationRelatedActionBuilder clone() =>
      throw UnimplementedError();
  @override
  RequestOrchestrationRelatedActionBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirIdBuilder? targetId,
    ActionRelationshipTypeBuilder? relationship,
    ActionRelationshipTypeBuilder? endRelationship,
    OffsetXRequestOrchestrationRelatedActionBuilder? offsetX,
    FhirDurationBuilder? offsetDuration,
    RangeBuilder? offsetRange,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = RequestOrchestrationRelatedActionBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      targetId: targetId ?? this.targetId,
      relationship: relationship ?? this.relationship,
      endRelationship: endRelationship ?? this.endRelationship,
      offsetX: offsetX ?? offsetDuration ?? offsetRange ?? this.offsetX,
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
    if (o is! RequestOrchestrationRelatedActionBuilder) {
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

/// [RequestOrchestrationParticipantBuilder]
/// The participant that should perform or be responsible for this action.
class RequestOrchestrationParticipantBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [RequestOrchestrationParticipantBuilder]

  RequestOrchestrationParticipantBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.typeCanonical,
    this.typeReference,
    this.role,
    this.function_,
    ActorXRequestOrchestrationParticipantBuilder? actorX,
    FhirCanonicalBuilder? actorCanonical,
    ReferenceBuilder? actorReference,
    super.disallowExtensions,
  })  : actorX = actorX ?? actorCanonical ?? actorReference,
        super(
          objectPath: 'RequestOrchestration.action.participant',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory RequestOrchestrationParticipantBuilder.empty() =>
      RequestOrchestrationParticipantBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory RequestOrchestrationParticipantBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'RequestOrchestration.action.participant';
    return RequestOrchestrationParticipantBuilder(
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
      type: JsonParser.parsePrimitive<ActionParticipantTypeBuilder>(
        json,
        'type',
        ActionParticipantTypeBuilder.fromJson,
        '$objectPath.type',
      ),
      typeCanonical: JsonParser.parsePrimitive<FhirCanonicalBuilder>(
        json,
        'typeCanonical',
        FhirCanonicalBuilder.fromJson,
        '$objectPath.typeCanonical',
      ),
      typeReference: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'typeReference',
        ReferenceBuilder.fromJson,
        '$objectPath.typeReference',
      ),
      role: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'role',
        CodeableConceptBuilder.fromJson,
        '$objectPath.role',
      ),
      function_: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'function',
        CodeableConceptBuilder.fromJson,
        '$objectPath.function',
      ),
      actorX: JsonParser.parsePolymorphic<
          ActorXRequestOrchestrationParticipantBuilder>(
        json,
        {
          'actorCanonical': FhirCanonicalBuilder.fromJson,
          'actorReference': ReferenceBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [RequestOrchestrationParticipantBuilder]
  /// from a [String] or [YamlMap] object
  factory RequestOrchestrationParticipantBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return RequestOrchestrationParticipantBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return RequestOrchestrationParticipantBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'RequestOrchestrationParticipantBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [RequestOrchestrationParticipantBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory RequestOrchestrationParticipantBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return RequestOrchestrationParticipantBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'RequestOrchestrationParticipant';

  /// [type]
  /// The type of participant in the action.
  ActionParticipantTypeBuilder? type;

  /// [typeCanonical]
  /// The type of participant in the action.
  FhirCanonicalBuilder? typeCanonical;

  /// [typeReference]
  /// The type of participant in the action.
  ReferenceBuilder? typeReference;

  /// [role]
  /// The role the participant should play in performing the described
  /// action.
  CodeableConceptBuilder? role;

  /// [function_]
  /// Indicates how the actor will be involved in the action - author,
  /// reviewer, witness, etc.
  CodeableConceptBuilder? function_;

  /// [actorX]
  /// A reference to the actual participant.
  ActorXRequestOrchestrationParticipantBuilder? actorX;

  /// Getter for [actorCanonical] as a FhirCanonicalBuilder
  FhirCanonicalBuilder? get actorCanonical =>
      actorX?.isAs<FhirCanonicalBuilder>();

  /// Getter for [actorReference] as a ReferenceBuilder
  ReferenceBuilder? get actorReference => actorX?.isAs<ReferenceBuilder>();

  /// Converts a [RequestOrchestrationParticipantBuilder]
  /// to [RequestOrchestrationParticipant]
  @override
  RequestOrchestrationParticipant build() =>
      RequestOrchestrationParticipant.fromJson(toJson());

  /// Converts a [RequestOrchestrationParticipantBuilder]
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
    addField('typeCanonical', typeCanonical);
    addField('typeReference', typeReference);
    addField('role', role);
    addField('function', function_);
    if (actorX != null) {
      final fhirType = actorX!.fhirType;
      addField('actor${fhirType.capitalizeFirstLetter()}', actorX);
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
        if (actorX != null) {
          fields.add(actorX!);
        }
      case 'actorX':
        if (actorX != null) {
          fields.add(actorX!);
        }
      case 'actorCanonical':
        if (actorX is FhirCanonicalBuilder) {
          fields.add(actorX!);
        }
      case 'actorReference':
        if (actorX is ReferenceBuilder) {
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
          if (child is ActionParticipantTypeBuilder) {
            type = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = ActionParticipantTypeBuilder(stringValue);
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
      case 'typeCanonical':
        {
          if (child is FhirCanonicalBuilder) {
            typeCanonical = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirCanonicalBuilder.tryParse(stringValue);
              if (converted != null) {
                typeCanonical = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'typeReference':
        {
          if (child is ReferenceBuilder) {
            typeReference = child;
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
      case 'function':
        {
          if (child is CodeableConceptBuilder) {
            function_ = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'actor':
      case 'actorX':
        {
          if (child is ActorXRequestOrchestrationParticipantBuilder) {
            actorX = child;
            return;
          } else {
            if (child is FhirCanonicalBuilder) {
              actorX = child;
              return;
            }
            if (child is ReferenceBuilder) {
              actorX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'actorCanonical':
        {
          if (child is FhirCanonicalBuilder) {
            actorX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'actorReference':
        {
          if (child is ReferenceBuilder) {
            actorX = child;
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
      case 'typeCanonical':
        return ['FhirCanonicalBuilder'];
      case 'typeReference':
        return ['ReferenceBuilder'];
      case 'role':
        return ['CodeableConceptBuilder'];
      case 'function':
        return ['CodeableConceptBuilder'];
      case 'actor':
      case 'actorX':
        return [
          'FhirCanonicalBuilder',
          'ReferenceBuilder',
        ];
      case 'actorCanonical':
        return ['FhirCanonicalBuilder'];
      case 'actorReference':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [RequestOrchestrationParticipantBuilder]
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
          type = ActionParticipantTypeBuilder.empty();
          return;
        }
      case 'typeCanonical':
        {
          typeCanonical = FhirCanonicalBuilder.empty();
          return;
        }
      case 'typeReference':
        {
          typeReference = ReferenceBuilder.empty();
          return;
        }
      case 'role':
        {
          role = CodeableConceptBuilder.empty();
          return;
        }
      case 'function':
        {
          function_ = CodeableConceptBuilder.empty();
          return;
        }
      case 'actor':
      case 'actorX':
      case 'actorCanonical':
        {
          actorX = FhirCanonicalBuilder.empty();
          return;
        }
      case 'actorReference':
        {
          actorX = ReferenceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  RequestOrchestrationParticipantBuilder clone() => throw UnimplementedError();
  @override
  RequestOrchestrationParticipantBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    ActionParticipantTypeBuilder? type,
    FhirCanonicalBuilder? typeCanonical,
    ReferenceBuilder? typeReference,
    CodeableConceptBuilder? role,
    CodeableConceptBuilder? function_,
    ActorXRequestOrchestrationParticipantBuilder? actorX,
    FhirCanonicalBuilder? actorCanonical,
    ReferenceBuilder? actorReference,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = RequestOrchestrationParticipantBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      typeCanonical: typeCanonical ?? this.typeCanonical,
      typeReference: typeReference ?? this.typeReference,
      role: role ?? this.role,
      function_: function_ ?? this.function_,
      actorX: actorX ?? actorCanonical ?? actorReference ?? this.actorX,
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
    if (o is! RequestOrchestrationParticipantBuilder) {
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

/// [RequestOrchestrationDynamicValueBuilder]
/// Customizations that should be applied to the statically defined
/// resource. For example, if the dosage of a medication must be computed
/// based on the patient's weight, a customization would be used to specify
/// an expression that calculated the weight, and the path on the resource
/// that would contain the result.
class RequestOrchestrationDynamicValueBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [RequestOrchestrationDynamicValueBuilder]

  RequestOrchestrationDynamicValueBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.path,
    this.expression,
    super.disallowExtensions,
  }) : super(
          objectPath: 'RequestOrchestration.action.dynamicValue',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory RequestOrchestrationDynamicValueBuilder.empty() =>
      RequestOrchestrationDynamicValueBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory RequestOrchestrationDynamicValueBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'RequestOrchestration.action.dynamicValue';
    return RequestOrchestrationDynamicValueBuilder(
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
      path: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'path',
        FhirStringBuilder.fromJson,
        '$objectPath.path',
      ),
      expression: JsonParser.parseObject<FhirExpressionBuilder>(
        json,
        'expression',
        FhirExpressionBuilder.fromJson,
        '$objectPath.expression',
      ),
    );
  }

  /// Deserialize [RequestOrchestrationDynamicValueBuilder]
  /// from a [String] or [YamlMap] object
  factory RequestOrchestrationDynamicValueBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return RequestOrchestrationDynamicValueBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return RequestOrchestrationDynamicValueBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'RequestOrchestrationDynamicValueBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [RequestOrchestrationDynamicValueBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory RequestOrchestrationDynamicValueBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return RequestOrchestrationDynamicValueBuilder.fromJson(json);
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
  FhirStringBuilder? path;

  /// [expression]
  /// An expression specifying the value of the customized element.
  FhirExpressionBuilder? expression;

  /// Converts a [RequestOrchestrationDynamicValueBuilder]
  /// to [RequestOrchestrationDynamicValue]
  @override
  RequestOrchestrationDynamicValue build() =>
      RequestOrchestrationDynamicValue.fromJson(toJson());

  /// Converts a [RequestOrchestrationDynamicValueBuilder]
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
    addField('path', path);
    addField('expression', expression);
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
      case 'path':
        {
          if (child is FhirStringBuilder) {
            path = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                path = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'expression':
        {
          if (child is FhirExpressionBuilder) {
            expression = child;
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
      case 'path':
        return ['FhirStringBuilder'];
      case 'expression':
        return ['FhirExpressionBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [RequestOrchestrationDynamicValueBuilder]
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
      case 'path':
        {
          path = FhirStringBuilder.empty();
          return;
        }
      case 'expression':
        {
          expression = FhirExpressionBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  RequestOrchestrationDynamicValueBuilder clone() => throw UnimplementedError();
  @override
  RequestOrchestrationDynamicValueBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? path,
    FhirExpressionBuilder? expression,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = RequestOrchestrationDynamicValueBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      path: path ?? this.path,
      expression: expression ?? this.expression,
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
    if (o is! RequestOrchestrationDynamicValueBuilder) {
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
