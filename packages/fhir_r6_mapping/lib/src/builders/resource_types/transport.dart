import 'dart:convert';
import 'package:fhir_r5/fhir_r5.dart'
    show
        R5ResourceType,
        Transport,
        TransportInput,
        TransportOutput,
        TransportRestriction,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r5_mapping/fhir_r5_mapping.dart';
import 'package:yaml/yaml.dart';

/// [TransportBuilder]
/// Record of transport of item.
class TransportBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [TransportBuilder]

  TransportBuilder({
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
    this.groupIdentifier,
    this.partOf,
    this.status,
    this.statusReason,
    this.intent,
    this.priority,
    this.code,
    this.description,
    this.focus,
    this.for_,
    this.encounter,
    this.completionTime,
    this.authoredOn,
    this.lastModified,
    this.requester,
    this.performerType,
    this.owner,
    this.location,
    this.insurance,
    this.note,
    this.relevantHistory,
    this.restriction,
    this.input,
    this.output,
    this.requestedLocation,
    this.currentLocation,
    this.reason,
    this.history,
  }) : super(
          objectPath: 'Transport',
          resourceType: R5ResourceType.Transport,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory TransportBuilder.empty() => TransportBuilder(
        intent: TransportIntentBuilder.values.first,
        requestedLocation: ReferenceBuilder.empty(),
        currentLocation: ReferenceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TransportBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Transport';
    return TransportBuilder(
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
      instantiatesCanonical: JsonParser.parsePrimitive<FhirCanonicalBuilder>(
        json,
        'instantiatesCanonical',
        FhirCanonicalBuilder.fromJson,
        '$objectPath.instantiatesCanonical',
      ),
      instantiatesUri: JsonParser.parsePrimitive<FhirUriBuilder>(
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
      groupIdentifier: JsonParser.parseObject<IdentifierBuilder>(
        json,
        'groupIdentifier',
        IdentifierBuilder.fromJson,
        '$objectPath.groupIdentifier',
      ),
      partOf: (json['partOf'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.partOf',
              },
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<TransportStatusBuilder>(
        json,
        'status',
        TransportStatusBuilder.fromJson,
        '$objectPath.status',
      ),
      statusReason: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'statusReason',
        CodeableConceptBuilder.fromJson,
        '$objectPath.statusReason',
      ),
      intent: JsonParser.parsePrimitive<TransportIntentBuilder>(
        json,
        'intent',
        TransportIntentBuilder.fromJson,
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
      description: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'description',
        FhirStringBuilder.fromJson,
        '$objectPath.description',
      ),
      focus: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'focus',
        ReferenceBuilder.fromJson,
        '$objectPath.focus',
      ),
      for_: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'for',
        ReferenceBuilder.fromJson,
        '$objectPath.for',
      ),
      encounter: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'encounter',
        ReferenceBuilder.fromJson,
        '$objectPath.encounter',
      ),
      completionTime: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'completionTime',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.completionTime',
      ),
      authoredOn: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'authoredOn',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.authoredOn',
      ),
      lastModified: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'lastModified',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.lastModified',
      ),
      requester: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'requester',
        ReferenceBuilder.fromJson,
        '$objectPath.requester',
      ),
      performerType: (json['performerType'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.performerType',
              },
            ),
          )
          .toList(),
      owner: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'owner',
        ReferenceBuilder.fromJson,
        '$objectPath.owner',
      ),
      location: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'location',
        ReferenceBuilder.fromJson,
        '$objectPath.location',
      ),
      insurance: (json['insurance'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.insurance',
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
      relevantHistory: (json['relevantHistory'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.relevantHistory',
              },
            ),
          )
          .toList(),
      restriction: JsonParser.parseObject<TransportRestrictionBuilder>(
        json,
        'restriction',
        TransportRestrictionBuilder.fromJson,
        '$objectPath.restriction',
      ),
      input: (json['input'] as List<dynamic>?)
          ?.map<TransportInputBuilder>(
            (v) => TransportInputBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.input',
              },
            ),
          )
          .toList(),
      output: (json['output'] as List<dynamic>?)
          ?.map<TransportOutputBuilder>(
            (v) => TransportOutputBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.output',
              },
            ),
          )
          .toList(),
      requestedLocation: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'requestedLocation',
        ReferenceBuilder.fromJson,
        '$objectPath.requestedLocation',
      ),
      currentLocation: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'currentLocation',
        ReferenceBuilder.fromJson,
        '$objectPath.currentLocation',
      ),
      reason: JsonParser.parseObject<CodeableReferenceBuilder>(
        json,
        'reason',
        CodeableReferenceBuilder.fromJson,
        '$objectPath.reason',
      ),
      history: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'history',
        ReferenceBuilder.fromJson,
        '$objectPath.history',
      ),
    );
  }

  /// Deserialize [TransportBuilder]
  /// from a [String] or [YamlMap] object
  factory TransportBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TransportBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TransportBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TransportBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TransportBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TransportBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return TransportBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Transport';

  /// [identifier]
  /// Identifier for the transport event that is used to identify it across
  /// multiple disparate systems.
  List<IdentifierBuilder>? identifier;

  /// [instantiatesCanonical]
  /// The URL pointing to a *FHIR*-defined protocol, guideline, orderset or
  /// other definition that is adhered to in whole or in part by this
  /// Transport.
  FhirCanonicalBuilder? instantiatesCanonical;

  /// [instantiatesUri]
  /// The URL pointing to an *externally* maintained protocol, guideline,
  /// orderset or other definition that is adhered to in whole or in part by
  /// this Transport.
  FhirUriBuilder? instantiatesUri;

  /// [basedOn]
  /// BasedOn refers to a higher-level authorization that triggered the
  /// creation of the transport. It references a "request" resource such as a
  /// ServiceRequest or Transport, which is distinct from the "request"
  /// resource the Transport is seeking to fulfill. This latter resource is
  /// referenced by FocusOn. For example, based on a ServiceRequest (=
  /// BasedOn), a transport is created to fulfill a procedureRequest ( =
  /// FocusOn ) to transport a specimen to the lab.
  List<ReferenceBuilder>? basedOn;

  /// [groupIdentifier]
  /// A shared identifier common to multiple independent Request instances
  /// that were activated/authorized more or less simultaneously by a single
  /// author. The presence of the same identifier on each request ties those
  /// requests together and may have business ramifications in terms of
  /// reporting of results, billing, etc. E.g. a requisition number shared by
  /// a set of lab tests ordered together, or a prescription number shared by
  /// all meds ordered at one time.
  IdentifierBuilder? groupIdentifier;

  /// [partOf]
  /// A larger event of which this particular event is a component or step.
  List<ReferenceBuilder>? partOf;

  /// [status]
  /// A code specifying the state of the transport event.
  TransportStatusBuilder? status;

  /// [statusReason]
  /// An explanation as to why this transport is held, failed, was refused,
  /// etc.
  CodeableConceptBuilder? statusReason;

  /// [intent]
  /// Indicates the "level" of actionability associated with the Transport,
  /// i.e. i+R[9]Cs this a proposed transport, a planned transport, an
  /// actionable transport, etc.
  TransportIntentBuilder? intent;

  /// [priority]
  /// Indicates how quickly the Transport should be addressed with respect to
  /// other requests.
  RequestPriorityBuilder? priority;

  /// [code]
  /// A name or code (or both) briefly describing what the transport
  /// involves.
  CodeableConceptBuilder? code;

  /// [description]
  /// A free-text description of what is to be performed.
  FhirStringBuilder? description;

  /// [focus]
  /// The request being actioned or the resource being manipulated by this
  /// transport.
  ReferenceBuilder? focus;

  /// [for_]
  /// The entity who benefits from the performance of the service specified
  /// in the transport (e.g., the patient).
  ReferenceBuilder? for_;

  /// [encounter]
  /// The healthcare event (e.g. a patient and healthcare provider
  /// interaction) during which this transport was created.
  ReferenceBuilder? encounter;

  /// [completionTime]
  /// Identifies the completion time of the event (the occurrence).
  FhirDateTimeBuilder? completionTime;

  /// [authoredOn]
  /// The date and time this transport was created.
  FhirDateTimeBuilder? authoredOn;

  /// [lastModified]
  /// The date and time of last modification to this transport.
  FhirDateTimeBuilder? lastModified;

  /// [requester]
  /// The creator of the transport.
  ReferenceBuilder? requester;

  /// [performerType]
  /// The kind of participant that should perform the transport.
  List<CodeableConceptBuilder>? performerType;

  /// [owner]
  /// Individual organization or Device currently responsible for transport
  /// execution.
  ReferenceBuilder? owner;

  /// [location]
  /// Principal physical location where this transport is performed.
  ReferenceBuilder? location;

  /// [insurance]
  /// Insurance plans, coverage extensions, pre-authorizations and/or
  /// pre-determinations that may be relevant to the Transport.
  List<ReferenceBuilder>? insurance;

  /// [note]
  /// Free-text information captured about the transport as it progresses.
  List<AnnotationBuilder>? note;

  /// [relevantHistory]
  /// Links to Provenance records for past versions of this Transport that
  /// identify key state transitions or updates that are likely to be
  /// relevant to a user looking at the current version of the transport.
  List<ReferenceBuilder>? relevantHistory;

  /// [restriction]
  /// If the Transport.focus is a request resource and the transport is
  /// seeking fulfillment (i.e. is asking for the request to be actioned),
  /// this element identifies any limitations on what parts of the referenced
  /// request should be actioned.
  TransportRestrictionBuilder? restriction;

  /// [input]
  /// Additional information that may be needed in the execution of the
  /// transport.
  List<TransportInputBuilder>? input;

  /// [output]
  /// Outputs produced by the Transport.
  List<TransportOutputBuilder>? output;

  /// [requestedLocation]
  /// The desired or final location for the transport.
  ReferenceBuilder? requestedLocation;

  /// [currentLocation]
  /// The current location for the entity to be transported.
  ReferenceBuilder? currentLocation;

  /// [reason]
  /// A resource reference indicating why this transport needs to be
  /// performed.
  CodeableReferenceBuilder? reason;

  /// [history]
  /// The transport event prior to this one.
  ReferenceBuilder? history;

  /// Converts a [TransportBuilder]
  /// to [Transport]
  @override
  Transport build() => Transport.fromJson(toJson());

  /// Converts a [TransportBuilder]
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
    addField('groupIdentifier', groupIdentifier);
    addField('partOf', partOf);
    addField('status', status);
    addField('statusReason', statusReason);
    addField('intent', intent);
    addField('priority', priority);
    addField('code', code);
    addField('description', description);
    addField('focus', focus);
    addField('for', for_);
    addField('encounter', encounter);
    addField('completionTime', completionTime);
    addField('authoredOn', authoredOn);
    addField('lastModified', lastModified);
    addField('requester', requester);
    addField('performerType', performerType);
    addField('owner', owner);
    addField('location', location);
    addField('insurance', insurance);
    addField('note', note);
    addField('relevantHistory', relevantHistory);
    addField('restriction', restriction);
    addField('input', input);
    addField('output', output);
    addField('requestedLocation', requestedLocation);
    addField('currentLocation', currentLocation);
    addField('reason', reason);
    addField('history', history);
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
      'groupIdentifier',
      'partOf',
      'status',
      'statusReason',
      'intent',
      'priority',
      'code',
      'description',
      'focus',
      'for',
      'encounter',
      'completionTime',
      'authoredOn',
      'lastModified',
      'requester',
      'performerType',
      'owner',
      'location',
      'insurance',
      'note',
      'relevantHistory',
      'restriction',
      'input',
      'output',
      'requestedLocation',
      'currentLocation',
      'reason',
      'history',
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
          fields.add(instantiatesCanonical!);
        }
      case 'instantiatesUri':
        if (instantiatesUri != null) {
          fields.add(instantiatesUri!);
        }
      case 'basedOn':
        if (basedOn != null) {
          fields.addAll(basedOn!);
        }
      case 'groupIdentifier':
        if (groupIdentifier != null) {
          fields.add(groupIdentifier!);
        }
      case 'partOf':
        if (partOf != null) {
          fields.addAll(partOf!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'statusReason':
        if (statusReason != null) {
          fields.add(statusReason!);
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
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'focus':
        if (focus != null) {
          fields.add(focus!);
        }
      case 'for':
        if (for_ != null) {
          fields.add(for_!);
        }
      case 'encounter':
        if (encounter != null) {
          fields.add(encounter!);
        }
      case 'completionTime':
        if (completionTime != null) {
          fields.add(completionTime!);
        }
      case 'authoredOn':
        if (authoredOn != null) {
          fields.add(authoredOn!);
        }
      case 'lastModified':
        if (lastModified != null) {
          fields.add(lastModified!);
        }
      case 'requester':
        if (requester != null) {
          fields.add(requester!);
        }
      case 'performerType':
        if (performerType != null) {
          fields.addAll(performerType!);
        }
      case 'owner':
        if (owner != null) {
          fields.add(owner!);
        }
      case 'location':
        if (location != null) {
          fields.add(location!);
        }
      case 'insurance':
        if (insurance != null) {
          fields.addAll(insurance!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      case 'relevantHistory':
        if (relevantHistory != null) {
          fields.addAll(relevantHistory!);
        }
      case 'restriction':
        if (restriction != null) {
          fields.add(restriction!);
        }
      case 'input':
        if (input != null) {
          fields.addAll(input!);
        }
      case 'output':
        if (output != null) {
          fields.addAll(output!);
        }
      case 'requestedLocation':
        if (requestedLocation != null) {
          fields.add(requestedLocation!);
        }
      case 'currentLocation':
        if (currentLocation != null) {
          fields.add(currentLocation!);
        }
      case 'reason':
        if (reason != null) {
          fields.add(reason!);
        }
      case 'history':
        if (history != null) {
          fields.add(history!);
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
          if (child is FhirCanonicalBuilder) {
            instantiatesCanonical = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirCanonicalBuilder.tryParse(stringValue);
              if (converted != null) {
                instantiatesCanonical = converted;
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
          if (child is FhirUriBuilder) {
            instantiatesUri = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                instantiatesUri = converted;
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
      case 'groupIdentifier':
        {
          if (child is IdentifierBuilder) {
            groupIdentifier = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'partOf':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            partOf = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            partOf = [
              ...(partOf ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'status':
        {
          if (child is TransportStatusBuilder) {
            status = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = TransportStatusBuilder(stringValue);
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
      case 'intent':
        {
          if (child is TransportIntentBuilder) {
            intent = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = TransportIntentBuilder(stringValue);
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
      case 'focus':
        {
          if (child is ReferenceBuilder) {
            focus = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'for':
        {
          if (child is ReferenceBuilder) {
            for_ = child;
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
      case 'completionTime':
        {
          if (child is FhirDateTimeBuilder) {
            completionTime = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                completionTime = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
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
      case 'lastModified':
        {
          if (child is FhirDateTimeBuilder) {
            lastModified = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                lastModified = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'requester':
        {
          if (child is ReferenceBuilder) {
            requester = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'performerType':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            performerType = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            performerType = [
              ...(performerType ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'owner':
        {
          if (child is ReferenceBuilder) {
            owner = child;
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
      case 'insurance':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            insurance = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            insurance = [
              ...(insurance ?? []),
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
      case 'relevantHistory':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            relevantHistory = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            relevantHistory = [
              ...(relevantHistory ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'restriction':
        {
          if (child is TransportRestrictionBuilder) {
            restriction = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'input':
        {
          if (child is List<TransportInputBuilder>) {
            // Replace or create new list
            input = child;
            return;
          } else if (child is TransportInputBuilder) {
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
          if (child is List<TransportOutputBuilder>) {
            // Replace or create new list
            output = child;
            return;
          } else if (child is TransportOutputBuilder) {
            // Add single element to existing list or create new list
            output = [
              ...(output ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'requestedLocation':
        {
          if (child is ReferenceBuilder) {
            requestedLocation = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'currentLocation':
        {
          if (child is ReferenceBuilder) {
            currentLocation = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'reason':
        {
          if (child is CodeableReferenceBuilder) {
            reason = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'history':
        {
          if (child is ReferenceBuilder) {
            history = child;
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
      case 'groupIdentifier':
        return ['IdentifierBuilder'];
      case 'partOf':
        return ['ReferenceBuilder'];
      case 'status':
        return ['FhirCodeEnumBuilder'];
      case 'statusReason':
        return ['CodeableConceptBuilder'];
      case 'intent':
        return ['FhirCodeEnumBuilder'];
      case 'priority':
        return ['FhirCodeEnumBuilder'];
      case 'code':
        return ['CodeableConceptBuilder'];
      case 'description':
        return ['FhirStringBuilder'];
      case 'focus':
        return ['ReferenceBuilder'];
      case 'for':
        return ['ReferenceBuilder'];
      case 'encounter':
        return ['ReferenceBuilder'];
      case 'completionTime':
        return ['FhirDateTimeBuilder'];
      case 'authoredOn':
        return ['FhirDateTimeBuilder'];
      case 'lastModified':
        return ['FhirDateTimeBuilder'];
      case 'requester':
        return ['ReferenceBuilder'];
      case 'performerType':
        return ['CodeableConceptBuilder'];
      case 'owner':
        return ['ReferenceBuilder'];
      case 'location':
        return ['ReferenceBuilder'];
      case 'insurance':
        return ['ReferenceBuilder'];
      case 'note':
        return ['AnnotationBuilder'];
      case 'relevantHistory':
        return ['ReferenceBuilder'];
      case 'restriction':
        return ['TransportRestrictionBuilder'];
      case 'input':
        return ['TransportInputBuilder'];
      case 'output':
        return ['TransportOutputBuilder'];
      case 'requestedLocation':
        return ['ReferenceBuilder'];
      case 'currentLocation':
        return ['ReferenceBuilder'];
      case 'reason':
        return ['CodeableReferenceBuilder'];
      case 'history':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [TransportBuilder]
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
          instantiatesCanonical = FhirCanonicalBuilder.empty();
          return;
        }
      case 'instantiatesUri':
        {
          instantiatesUri = FhirUriBuilder.empty();
          return;
        }
      case 'basedOn':
        {
          basedOn = <ReferenceBuilder>[];
          return;
        }
      case 'groupIdentifier':
        {
          groupIdentifier = IdentifierBuilder.empty();
          return;
        }
      case 'partOf':
        {
          partOf = <ReferenceBuilder>[];
          return;
        }
      case 'status':
        {
          status = TransportStatusBuilder.empty();
          return;
        }
      case 'statusReason':
        {
          statusReason = CodeableConceptBuilder.empty();
          return;
        }
      case 'intent':
        {
          intent = TransportIntentBuilder.empty();
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
      case 'description':
        {
          description = FhirStringBuilder.empty();
          return;
        }
      case 'focus':
        {
          focus = ReferenceBuilder.empty();
          return;
        }
      case 'for':
        {
          for_ = ReferenceBuilder.empty();
          return;
        }
      case 'encounter':
        {
          encounter = ReferenceBuilder.empty();
          return;
        }
      case 'completionTime':
        {
          completionTime = FhirDateTimeBuilder.empty();
          return;
        }
      case 'authoredOn':
        {
          authoredOn = FhirDateTimeBuilder.empty();
          return;
        }
      case 'lastModified':
        {
          lastModified = FhirDateTimeBuilder.empty();
          return;
        }
      case 'requester':
        {
          requester = ReferenceBuilder.empty();
          return;
        }
      case 'performerType':
        {
          performerType = <CodeableConceptBuilder>[];
          return;
        }
      case 'owner':
        {
          owner = ReferenceBuilder.empty();
          return;
        }
      case 'location':
        {
          location = ReferenceBuilder.empty();
          return;
        }
      case 'insurance':
        {
          insurance = <ReferenceBuilder>[];
          return;
        }
      case 'note':
        {
          note = <AnnotationBuilder>[];
          return;
        }
      case 'relevantHistory':
        {
          relevantHistory = <ReferenceBuilder>[];
          return;
        }
      case 'restriction':
        {
          restriction = TransportRestrictionBuilder.empty();
          return;
        }
      case 'input':
        {
          input = <TransportInputBuilder>[];
          return;
        }
      case 'output':
        {
          output = <TransportOutputBuilder>[];
          return;
        }
      case 'requestedLocation':
        {
          requestedLocation = ReferenceBuilder.empty();
          return;
        }
      case 'currentLocation':
        {
          currentLocation = ReferenceBuilder.empty();
          return;
        }
      case 'reason':
        {
          reason = CodeableReferenceBuilder.empty();
          return;
        }
      case 'history':
        {
          history = ReferenceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  TransportBuilder clone() => throw UnimplementedError();
  @override
  TransportBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    AllLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    FhirCanonicalBuilder? instantiatesCanonical,
    FhirUriBuilder? instantiatesUri,
    List<ReferenceBuilder>? basedOn,
    IdentifierBuilder? groupIdentifier,
    List<ReferenceBuilder>? partOf,
    TransportStatusBuilder? status,
    CodeableConceptBuilder? statusReason,
    TransportIntentBuilder? intent,
    RequestPriorityBuilder? priority,
    CodeableConceptBuilder? code,
    FhirStringBuilder? description,
    ReferenceBuilder? focus,
    ReferenceBuilder? for_,
    ReferenceBuilder? encounter,
    FhirDateTimeBuilder? completionTime,
    FhirDateTimeBuilder? authoredOn,
    FhirDateTimeBuilder? lastModified,
    ReferenceBuilder? requester,
    List<CodeableConceptBuilder>? performerType,
    ReferenceBuilder? owner,
    ReferenceBuilder? location,
    List<ReferenceBuilder>? insurance,
    List<AnnotationBuilder>? note,
    List<ReferenceBuilder>? relevantHistory,
    TransportRestrictionBuilder? restriction,
    List<TransportInputBuilder>? input,
    List<TransportOutputBuilder>? output,
    ReferenceBuilder? requestedLocation,
    ReferenceBuilder? currentLocation,
    CodeableReferenceBuilder? reason,
    ReferenceBuilder? history,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = TransportBuilder(
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
      groupIdentifier: groupIdentifier ?? this.groupIdentifier,
      partOf: partOf ?? this.partOf,
      status: status ?? this.status,
      statusReason: statusReason ?? this.statusReason,
      intent: intent ?? this.intent,
      priority: priority ?? this.priority,
      code: code ?? this.code,
      description: description ?? this.description,
      focus: focus ?? this.focus,
      for_: for_ ?? this.for_,
      encounter: encounter ?? this.encounter,
      completionTime: completionTime ?? this.completionTime,
      authoredOn: authoredOn ?? this.authoredOn,
      lastModified: lastModified ?? this.lastModified,
      requester: requester ?? this.requester,
      performerType: performerType ?? this.performerType,
      owner: owner ?? this.owner,
      location: location ?? this.location,
      insurance: insurance ?? this.insurance,
      note: note ?? this.note,
      relevantHistory: relevantHistory ?? this.relevantHistory,
      restriction: restriction ?? this.restriction,
      input: input ?? this.input,
      output: output ?? this.output,
      requestedLocation: requestedLocation ?? this.requestedLocation,
      currentLocation: currentLocation ?? this.currentLocation,
      reason: reason ?? this.reason,
      history: history ?? this.history,
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
    if (o is! TransportBuilder) {
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
      instantiatesCanonical,
      o.instantiatesCanonical,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
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
    if (!equalsDeepWithNull(
      groupIdentifier,
      o.groupIdentifier,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      partOf,
      o.partOf,
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
      description,
      o.description,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      focus,
      o.focus,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      for_,
      o.for_,
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
      completionTime,
      o.completionTime,
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
      lastModified,
      o.lastModified,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      requester,
      o.requester,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      performerType,
      o.performerType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      owner,
      o.owner,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      location,
      o.location,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      insurance,
      o.insurance,
    )) {
      return false;
    }
    if (!listEquals<AnnotationBuilder>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      relevantHistory,
      o.relevantHistory,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      restriction,
      o.restriction,
    )) {
      return false;
    }
    if (!listEquals<TransportInputBuilder>(
      input,
      o.input,
    )) {
      return false;
    }
    if (!listEquals<TransportOutputBuilder>(
      output,
      o.output,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      requestedLocation,
      o.requestedLocation,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      currentLocation,
      o.currentLocation,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      reason,
      o.reason,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      history,
      o.history,
    )) {
      return false;
    }
    return true;
  }
}

/// [TransportRestrictionBuilder]
/// If the Transport.focus is a request resource and the transport is
/// seeking fulfillment (i.e. is asking for the request to be actioned),
/// this element identifies any limitations on what parts of the referenced
/// request should be actioned.
class TransportRestrictionBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [TransportRestrictionBuilder]

  TransportRestrictionBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.repetitions,
    this.period,
    this.recipient,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Transport.restriction',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory TransportRestrictionBuilder.empty() => TransportRestrictionBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TransportRestrictionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Transport.restriction';
    return TransportRestrictionBuilder(
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
      repetitions: JsonParser.parsePrimitive<FhirPositiveIntBuilder>(
        json,
        'repetitions',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.repetitions',
      ),
      period: JsonParser.parseObject<PeriodBuilder>(
        json,
        'period',
        PeriodBuilder.fromJson,
        '$objectPath.period',
      ),
      recipient: (json['recipient'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.recipient',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [TransportRestrictionBuilder]
  /// from a [String] or [YamlMap] object
  factory TransportRestrictionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TransportRestrictionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TransportRestrictionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TransportRestrictionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TransportRestrictionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TransportRestrictionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return TransportRestrictionBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'TransportRestriction';

  /// [repetitions]
  /// Indicates the number of times the requested action should occur.
  FhirPositiveIntBuilder? repetitions;

  /// [period]
  /// Over what time-period is fulfillment sought.
  PeriodBuilder? period;

  /// [recipient]
  /// For requests that are targeted to more than one potential
  /// recipient/target, to identify who is fulfillment is sought for.
  List<ReferenceBuilder>? recipient;

  /// Converts a [TransportRestrictionBuilder]
  /// to [TransportRestriction]
  @override
  TransportRestriction build() => TransportRestriction.fromJson(toJson());

  /// Converts a [TransportRestrictionBuilder]
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
    addField('repetitions', repetitions);
    addField('period', period);
    addField('recipient', recipient);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'repetitions',
      'period',
      'recipient',
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
      case 'repetitions':
        if (repetitions != null) {
          fields.add(repetitions!);
        }
      case 'period':
        if (period != null) {
          fields.add(period!);
        }
      case 'recipient':
        if (recipient != null) {
          fields.addAll(recipient!);
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
      case 'repetitions':
        {
          if (child is FhirPositiveIntBuilder) {
            repetitions = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirPositiveIntBuilder.tryParse(numValue);
                if (converted != null) {
                  repetitions = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
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
      case 'recipient':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            recipient = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            recipient = [
              ...(recipient ?? []),
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
      case 'repetitions':
        return ['FhirPositiveIntBuilder'];
      case 'period':
        return ['PeriodBuilder'];
      case 'recipient':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [TransportRestrictionBuilder]
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
      case 'repetitions':
        {
          repetitions = FhirPositiveIntBuilder.empty();
          return;
        }
      case 'period':
        {
          period = PeriodBuilder.empty();
          return;
        }
      case 'recipient':
        {
          recipient = <ReferenceBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  TransportRestrictionBuilder clone() => throw UnimplementedError();
  @override
  TransportRestrictionBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirPositiveIntBuilder? repetitions,
    PeriodBuilder? period,
    List<ReferenceBuilder>? recipient,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = TransportRestrictionBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      repetitions: repetitions ?? this.repetitions,
      period: period ?? this.period,
      recipient: recipient ?? this.recipient,
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
    if (o is! TransportRestrictionBuilder) {
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
      repetitions,
      o.repetitions,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      period,
      o.period,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      recipient,
      o.recipient,
    )) {
      return false;
    }
    return true;
  }
}

/// [TransportInputBuilder]
/// Additional information that may be needed in the execution of the
/// transport.
class TransportInputBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [TransportInputBuilder]

  TransportInputBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    ValueXTransportInputBuilder? valueX,
    FhirBase64BinaryBuilder? valueBase64Binary,
    FhirBooleanBuilder? valueBoolean,
    FhirCanonicalBuilder? valueCanonical,
    FhirCodeBuilder? valueCode,
    FhirDateBuilder? valueDate,
    FhirDateTimeBuilder? valueDateTime,
    FhirDecimalBuilder? valueDecimal,
    FhirIdBuilder? valueId,
    FhirInstantBuilder? valueInstant,
    FhirIntegerBuilder? valueInteger,
    FhirInteger64Builder? valueInteger64,
    FhirMarkdownBuilder? valueMarkdown,
    FhirOidBuilder? valueOid,
    FhirPositiveIntBuilder? valuePositiveInt,
    FhirStringBuilder? valueString,
    FhirTimeBuilder? valueTime,
    FhirUnsignedIntBuilder? valueUnsignedInt,
    FhirUriBuilder? valueUri,
    FhirUrlBuilder? valueUrl,
    FhirUuidBuilder? valueUuid,
    AddressBuilder? valueAddress,
    AgeBuilder? valueAge,
    AnnotationBuilder? valueAnnotation,
    AttachmentBuilder? valueAttachment,
    CodeableConceptBuilder? valueCodeableConcept,
    CodeableReferenceBuilder? valueCodeableReference,
    CodingBuilder? valueCoding,
    ContactPointBuilder? valueContactPoint,
    CountBuilder? valueCount,
    DistanceBuilder? valueDistance,
    FhirDurationBuilder? valueDuration,
    HumanNameBuilder? valueHumanName,
    IdentifierBuilder? valueIdentifier,
    MoneyBuilder? valueMoney,
    PeriodBuilder? valuePeriod,
    QuantityBuilder? valueQuantity,
    RangeBuilder? valueRange,
    RatioBuilder? valueRatio,
    RatioRangeBuilder? valueRatioRange,
    ReferenceBuilder? valueReference,
    SampledDataBuilder? valueSampledData,
    SignatureBuilder? valueSignature,
    TimingBuilder? valueTiming,
    ContactDetailBuilder? valueContactDetail,
    DataRequirementBuilder? valueDataRequirement,
    FhirExpressionBuilder? valueExpression,
    ParameterDefinitionBuilder? valueParameterDefinition,
    RelatedArtifactBuilder? valueRelatedArtifact,
    TriggerDefinitionBuilder? valueTriggerDefinition,
    UsageContextBuilder? valueUsageContext,
    AvailabilityBuilder? valueAvailability,
    ExtendedContactDetailBuilder? valueExtendedContactDetail,
    DosageBuilder? valueDosage,
    FhirMetaBuilder? valueMeta,
    super.disallowExtensions,
  })  : valueX = valueX ??
            valueBase64Binary ??
            valueBoolean ??
            valueCanonical ??
            valueCode ??
            valueDate ??
            valueDateTime ??
            valueDecimal ??
            valueId ??
            valueInstant ??
            valueInteger ??
            valueInteger64 ??
            valueMarkdown ??
            valueOid ??
            valuePositiveInt ??
            valueString ??
            valueTime ??
            valueUnsignedInt ??
            valueUri ??
            valueUrl ??
            valueUuid ??
            valueAddress ??
            valueAge ??
            valueAnnotation ??
            valueAttachment ??
            valueCodeableConcept ??
            valueCodeableReference ??
            valueCoding ??
            valueContactPoint ??
            valueCount ??
            valueDistance ??
            valueDuration ??
            valueHumanName ??
            valueIdentifier ??
            valueMoney ??
            valuePeriod ??
            valueQuantity ??
            valueRange ??
            valueRatio ??
            valueRatioRange ??
            valueReference ??
            valueSampledData ??
            valueSignature ??
            valueTiming ??
            valueContactDetail ??
            valueDataRequirement ??
            valueExpression ??
            valueParameterDefinition ??
            valueRelatedArtifact ??
            valueTriggerDefinition ??
            valueUsageContext ??
            valueAvailability ??
            valueExtendedContactDetail ??
            valueDosage ??
            valueMeta,
        super(
          objectPath: 'Transport.input',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory TransportInputBuilder.empty() => TransportInputBuilder(
        type: CodeableConceptBuilder.empty(),
        valueX: FhirBase64BinaryBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TransportInputBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Transport.input';
    return TransportInputBuilder(
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
      valueX: JsonParser.parsePolymorphic<ValueXTransportInputBuilder>(
        json,
        {
          'valueBase64Binary': FhirBase64BinaryBuilder.fromJson,
          'valueBoolean': FhirBooleanBuilder.fromJson,
          'valueCanonical': FhirCanonicalBuilder.fromJson,
          'valueCode': FhirCodeBuilder.fromJson,
          'valueDate': FhirDateBuilder.fromJson,
          'valueDateTime': FhirDateTimeBuilder.fromJson,
          'valueDecimal': FhirDecimalBuilder.fromJson,
          'valueId': FhirIdBuilder.fromJson,
          'valueInstant': FhirInstantBuilder.fromJson,
          'valueInteger': FhirIntegerBuilder.fromJson,
          'valueInteger64': FhirInteger64Builder.fromJson,
          'valueMarkdown': FhirMarkdownBuilder.fromJson,
          'valueOid': FhirOidBuilder.fromJson,
          'valuePositiveInt': FhirPositiveIntBuilder.fromJson,
          'valueString': FhirStringBuilder.fromJson,
          'valueTime': FhirTimeBuilder.fromJson,
          'valueUnsignedInt': FhirUnsignedIntBuilder.fromJson,
          'valueUri': FhirUriBuilder.fromJson,
          'valueUrl': FhirUrlBuilder.fromJson,
          'valueUuid': FhirUuidBuilder.fromJson,
          'valueAddress': AddressBuilder.fromJson,
          'valueAge': AgeBuilder.fromJson,
          'valueAnnotation': AnnotationBuilder.fromJson,
          'valueAttachment': AttachmentBuilder.fromJson,
          'valueCodeableConcept': CodeableConceptBuilder.fromJson,
          'valueCodeableReference': CodeableReferenceBuilder.fromJson,
          'valueCoding': CodingBuilder.fromJson,
          'valueContactPoint': ContactPointBuilder.fromJson,
          'valueCount': CountBuilder.fromJson,
          'valueDistance': DistanceBuilder.fromJson,
          'valueDuration': FhirDurationBuilder.fromJson,
          'valueHumanName': HumanNameBuilder.fromJson,
          'valueIdentifier': IdentifierBuilder.fromJson,
          'valueMoney': MoneyBuilder.fromJson,
          'valuePeriod': PeriodBuilder.fromJson,
          'valueQuantity': QuantityBuilder.fromJson,
          'valueRange': RangeBuilder.fromJson,
          'valueRatio': RatioBuilder.fromJson,
          'valueRatioRange': RatioRangeBuilder.fromJson,
          'valueReference': ReferenceBuilder.fromJson,
          'valueSampledData': SampledDataBuilder.fromJson,
          'valueSignature': SignatureBuilder.fromJson,
          'valueTiming': TimingBuilder.fromJson,
          'valueContactDetail': ContactDetailBuilder.fromJson,
          'valueDataRequirement': DataRequirementBuilder.fromJson,
          'valueExpression': FhirExpressionBuilder.fromJson,
          'valueParameterDefinition': ParameterDefinitionBuilder.fromJson,
          'valueRelatedArtifact': RelatedArtifactBuilder.fromJson,
          'valueTriggerDefinition': TriggerDefinitionBuilder.fromJson,
          'valueUsageContext': UsageContextBuilder.fromJson,
          'valueAvailability': AvailabilityBuilder.fromJson,
          'valueExtendedContactDetail': ExtendedContactDetailBuilder.fromJson,
          'valueDosage': DosageBuilder.fromJson,
          'valueMeta': FhirMetaBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [TransportInputBuilder]
  /// from a [String] or [YamlMap] object
  factory TransportInputBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TransportInputBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TransportInputBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TransportInputBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TransportInputBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TransportInputBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return TransportInputBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'TransportInput';

  /// [type]
  /// A code or description indicating how the input is intended to be used
  /// as part of the transport execution.
  CodeableConceptBuilder? type;

  /// [valueX]
  /// The value of the input parameter as a basic type.
  ValueXTransportInputBuilder? valueX;

  /// Getter for [valueBase64Binary] as a FhirBase64BinaryBuilder
  FhirBase64BinaryBuilder? get valueBase64Binary =>
      valueX?.isAs<FhirBase64BinaryBuilder>();

  /// Getter for [valueBoolean] as a FhirBooleanBuilder
  FhirBooleanBuilder? get valueBoolean => valueX?.isAs<FhirBooleanBuilder>();

  /// Getter for [valueCanonical] as a FhirCanonicalBuilder
  FhirCanonicalBuilder? get valueCanonical =>
      valueX?.isAs<FhirCanonicalBuilder>();

  /// Getter for [valueCode] as a FhirCodeBuilder
  FhirCodeBuilder? get valueCode => valueX?.isAs<FhirCodeBuilder>();

  /// Getter for [valueDate] as a FhirDateBuilder
  FhirDateBuilder? get valueDate => valueX?.isAs<FhirDateBuilder>();

  /// Getter for [valueDateTime] as a FhirDateTimeBuilder
  FhirDateTimeBuilder? get valueDateTime => valueX?.isAs<FhirDateTimeBuilder>();

  /// Getter for [valueDecimal] as a FhirDecimalBuilder
  FhirDecimalBuilder? get valueDecimal => valueX?.isAs<FhirDecimalBuilder>();

  /// Getter for [valueId] as a FhirIdBuilder
  FhirIdBuilder? get valueId => valueX?.isAs<FhirIdBuilder>();

  /// Getter for [valueInstant] as a FhirInstantBuilder
  FhirInstantBuilder? get valueInstant => valueX?.isAs<FhirInstantBuilder>();

  /// Getter for [valueInteger] as a FhirIntegerBuilder
  FhirIntegerBuilder? get valueInteger => valueX?.isAs<FhirIntegerBuilder>();

  /// Getter for [valueInteger64] as a FhirInteger64Builder
  FhirInteger64Builder? get valueInteger64 =>
      valueX?.isAs<FhirInteger64Builder>();

  /// Getter for [valueMarkdown] as a FhirMarkdownBuilder
  FhirMarkdownBuilder? get valueMarkdown => valueX?.isAs<FhirMarkdownBuilder>();

  /// Getter for [valueOid] as a FhirOidBuilder
  FhirOidBuilder? get valueOid => valueX?.isAs<FhirOidBuilder>();

  /// Getter for [valuePositiveInt] as a FhirPositiveIntBuilder
  FhirPositiveIntBuilder? get valuePositiveInt =>
      valueX?.isAs<FhirPositiveIntBuilder>();

  /// Getter for [valueString] as a FhirStringBuilder
  FhirStringBuilder? get valueString => valueX?.isAs<FhirStringBuilder>();

  /// Getter for [valueTime] as a FhirTimeBuilder
  FhirTimeBuilder? get valueTime => valueX?.isAs<FhirTimeBuilder>();

  /// Getter for [valueUnsignedInt] as a FhirUnsignedIntBuilder
  FhirUnsignedIntBuilder? get valueUnsignedInt =>
      valueX?.isAs<FhirUnsignedIntBuilder>();

  /// Getter for [valueUri] as a FhirUriBuilder
  FhirUriBuilder? get valueUri => valueX?.isAs<FhirUriBuilder>();

  /// Getter for [valueUrl] as a FhirUrlBuilder
  FhirUrlBuilder? get valueUrl => valueX?.isAs<FhirUrlBuilder>();

  /// Getter for [valueUuid] as a FhirUuidBuilder
  FhirUuidBuilder? get valueUuid => valueX?.isAs<FhirUuidBuilder>();

  /// Getter for [valueAddress] as a AddressBuilder
  AddressBuilder? get valueAddress => valueX?.isAs<AddressBuilder>();

  /// Getter for [valueAge] as a AgeBuilder
  AgeBuilder? get valueAge => valueX?.isAs<AgeBuilder>();

  /// Getter for [valueAnnotation] as a AnnotationBuilder
  AnnotationBuilder? get valueAnnotation => valueX?.isAs<AnnotationBuilder>();

  /// Getter for [valueAttachment] as a AttachmentBuilder
  AttachmentBuilder? get valueAttachment => valueX?.isAs<AttachmentBuilder>();

  /// Getter for [valueCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get valueCodeableConcept =>
      valueX?.isAs<CodeableConceptBuilder>();

  /// Getter for [valueCodeableReference] as a CodeableReferenceBuilder
  CodeableReferenceBuilder? get valueCodeableReference =>
      valueX?.isAs<CodeableReferenceBuilder>();

  /// Getter for [valueCoding] as a CodingBuilder
  CodingBuilder? get valueCoding => valueX?.isAs<CodingBuilder>();

  /// Getter for [valueContactPoint] as a ContactPointBuilder
  ContactPointBuilder? get valueContactPoint =>
      valueX?.isAs<ContactPointBuilder>();

  /// Getter for [valueCount] as a CountBuilder
  CountBuilder? get valueCount => valueX?.isAs<CountBuilder>();

  /// Getter for [valueDistance] as a DistanceBuilder
  DistanceBuilder? get valueDistance => valueX?.isAs<DistanceBuilder>();

  /// Getter for [valueDuration] as a FhirDurationBuilder
  FhirDurationBuilder? get valueDuration => valueX?.isAs<FhirDurationBuilder>();

  /// Getter for [valueHumanName] as a HumanNameBuilder
  HumanNameBuilder? get valueHumanName => valueX?.isAs<HumanNameBuilder>();

  /// Getter for [valueIdentifier] as a IdentifierBuilder
  IdentifierBuilder? get valueIdentifier => valueX?.isAs<IdentifierBuilder>();

  /// Getter for [valueMoney] as a MoneyBuilder
  MoneyBuilder? get valueMoney => valueX?.isAs<MoneyBuilder>();

  /// Getter for [valuePeriod] as a PeriodBuilder
  PeriodBuilder? get valuePeriod => valueX?.isAs<PeriodBuilder>();

  /// Getter for [valueQuantity] as a QuantityBuilder
  QuantityBuilder? get valueQuantity => valueX?.isAs<QuantityBuilder>();

  /// Getter for [valueRange] as a RangeBuilder
  RangeBuilder? get valueRange => valueX?.isAs<RangeBuilder>();

  /// Getter for [valueRatio] as a RatioBuilder
  RatioBuilder? get valueRatio => valueX?.isAs<RatioBuilder>();

  /// Getter for [valueRatioRange] as a RatioRangeBuilder
  RatioRangeBuilder? get valueRatioRange => valueX?.isAs<RatioRangeBuilder>();

  /// Getter for [valueReference] as a ReferenceBuilder
  ReferenceBuilder? get valueReference => valueX?.isAs<ReferenceBuilder>();

  /// Getter for [valueSampledData] as a SampledDataBuilder
  SampledDataBuilder? get valueSampledData =>
      valueX?.isAs<SampledDataBuilder>();

  /// Getter for [valueSignature] as a SignatureBuilder
  SignatureBuilder? get valueSignature => valueX?.isAs<SignatureBuilder>();

  /// Getter for [valueTiming] as a TimingBuilder
  TimingBuilder? get valueTiming => valueX?.isAs<TimingBuilder>();

  /// Getter for [valueContactDetail] as a ContactDetailBuilder
  ContactDetailBuilder? get valueContactDetail =>
      valueX?.isAs<ContactDetailBuilder>();

  /// Getter for [valueDataRequirement] as a DataRequirementBuilder
  DataRequirementBuilder? get valueDataRequirement =>
      valueX?.isAs<DataRequirementBuilder>();

  /// Getter for [valueExpression] as a FhirExpressionBuilder
  FhirExpressionBuilder? get valueExpression =>
      valueX?.isAs<FhirExpressionBuilder>();

  /// Getter for [valueParameterDefinition] as a ParameterDefinitionBuilder
  ParameterDefinitionBuilder? get valueParameterDefinition =>
      valueX?.isAs<ParameterDefinitionBuilder>();

  /// Getter for [valueRelatedArtifact] as a RelatedArtifactBuilder
  RelatedArtifactBuilder? get valueRelatedArtifact =>
      valueX?.isAs<RelatedArtifactBuilder>();

  /// Getter for [valueTriggerDefinition] as a TriggerDefinitionBuilder
  TriggerDefinitionBuilder? get valueTriggerDefinition =>
      valueX?.isAs<TriggerDefinitionBuilder>();

  /// Getter for [valueUsageContext] as a UsageContextBuilder
  UsageContextBuilder? get valueUsageContext =>
      valueX?.isAs<UsageContextBuilder>();

  /// Getter for [valueAvailability] as a AvailabilityBuilder
  AvailabilityBuilder? get valueAvailability =>
      valueX?.isAs<AvailabilityBuilder>();

  /// Getter for [valueExtendedContactDetail] as a ExtendedContactDetailBuilder
  ExtendedContactDetailBuilder? get valueExtendedContactDetail =>
      valueX?.isAs<ExtendedContactDetailBuilder>();

  /// Getter for [valueDosage] as a DosageBuilder
  DosageBuilder? get valueDosage => valueX?.isAs<DosageBuilder>();

  /// Getter for [valueMeta] as a FhirMetaBuilder
  FhirMetaBuilder? get valueMeta => valueX?.isAs<FhirMetaBuilder>();

  /// Converts a [TransportInputBuilder]
  /// to [TransportInput]
  @override
  TransportInput build() => TransportInput.fromJson(toJson());

  /// Converts a [TransportInputBuilder]
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
      case 'valueBase64Binary':
        if (valueX is FhirBase64BinaryBuilder) {
          fields.add(valueX!);
        }
      case 'valueBoolean':
        if (valueX is FhirBooleanBuilder) {
          fields.add(valueX!);
        }
      case 'valueCanonical':
        if (valueX is FhirCanonicalBuilder) {
          fields.add(valueX!);
        }
      case 'valueCode':
        if (valueX is FhirCodeBuilder) {
          fields.add(valueX!);
        }
      case 'valueDate':
        if (valueX is FhirDateBuilder) {
          fields.add(valueX!);
        }
      case 'valueDateTime':
        if (valueX is FhirDateTimeBuilder) {
          fields.add(valueX!);
        }
      case 'valueDecimal':
        if (valueX is FhirDecimalBuilder) {
          fields.add(valueX!);
        }
      case 'valueId':
        if (valueX is FhirIdBuilder) {
          fields.add(valueX!);
        }
      case 'valueInstant':
        if (valueX is FhirInstantBuilder) {
          fields.add(valueX!);
        }
      case 'valueInteger':
        if (valueX is FhirIntegerBuilder) {
          fields.add(valueX!);
        }
      case 'valueInteger64':
        if (valueX is FhirInteger64Builder) {
          fields.add(valueX!);
        }
      case 'valueMarkdown':
        if (valueX is FhirMarkdownBuilder) {
          fields.add(valueX!);
        }
      case 'valueOid':
        if (valueX is FhirOidBuilder) {
          fields.add(valueX!);
        }
      case 'valuePositiveInt':
        if (valueX is FhirPositiveIntBuilder) {
          fields.add(valueX!);
        }
      case 'valueString':
        if (valueX is FhirStringBuilder) {
          fields.add(valueX!);
        }
      case 'valueTime':
        if (valueX is FhirTimeBuilder) {
          fields.add(valueX!);
        }
      case 'valueUnsignedInt':
        if (valueX is FhirUnsignedIntBuilder) {
          fields.add(valueX!);
        }
      case 'valueUri':
        if (valueX is FhirUriBuilder) {
          fields.add(valueX!);
        }
      case 'valueUrl':
        if (valueX is FhirUrlBuilder) {
          fields.add(valueX!);
        }
      case 'valueUuid':
        if (valueX is FhirUuidBuilder) {
          fields.add(valueX!);
        }
      case 'valueAddress':
        if (valueX is AddressBuilder) {
          fields.add(valueX!);
        }
      case 'valueAge':
        if (valueX is AgeBuilder) {
          fields.add(valueX!);
        }
      case 'valueAnnotation':
        if (valueX is AnnotationBuilder) {
          fields.add(valueX!);
        }
      case 'valueAttachment':
        if (valueX is AttachmentBuilder) {
          fields.add(valueX!);
        }
      case 'valueCodeableConcept':
        if (valueX is CodeableConceptBuilder) {
          fields.add(valueX!);
        }
      case 'valueCodeableReference':
        if (valueX is CodeableReferenceBuilder) {
          fields.add(valueX!);
        }
      case 'valueCoding':
        if (valueX is CodingBuilder) {
          fields.add(valueX!);
        }
      case 'valueContactPoint':
        if (valueX is ContactPointBuilder) {
          fields.add(valueX!);
        }
      case 'valueCount':
        if (valueX is CountBuilder) {
          fields.add(valueX!);
        }
      case 'valueDistance':
        if (valueX is DistanceBuilder) {
          fields.add(valueX!);
        }
      case 'valueDuration':
        if (valueX is FhirDurationBuilder) {
          fields.add(valueX!);
        }
      case 'valueHumanName':
        if (valueX is HumanNameBuilder) {
          fields.add(valueX!);
        }
      case 'valueIdentifier':
        if (valueX is IdentifierBuilder) {
          fields.add(valueX!);
        }
      case 'valueMoney':
        if (valueX is MoneyBuilder) {
          fields.add(valueX!);
        }
      case 'valuePeriod':
        if (valueX is PeriodBuilder) {
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
      case 'valueRatio':
        if (valueX is RatioBuilder) {
          fields.add(valueX!);
        }
      case 'valueRatioRange':
        if (valueX is RatioRangeBuilder) {
          fields.add(valueX!);
        }
      case 'valueReference':
        if (valueX is ReferenceBuilder) {
          fields.add(valueX!);
        }
      case 'valueSampledData':
        if (valueX is SampledDataBuilder) {
          fields.add(valueX!);
        }
      case 'valueSignature':
        if (valueX is SignatureBuilder) {
          fields.add(valueX!);
        }
      case 'valueTiming':
        if (valueX is TimingBuilder) {
          fields.add(valueX!);
        }
      case 'valueContactDetail':
        if (valueX is ContactDetailBuilder) {
          fields.add(valueX!);
        }
      case 'valueDataRequirement':
        if (valueX is DataRequirementBuilder) {
          fields.add(valueX!);
        }
      case 'valueExpression':
        if (valueX is FhirExpressionBuilder) {
          fields.add(valueX!);
        }
      case 'valueParameterDefinition':
        if (valueX is ParameterDefinitionBuilder) {
          fields.add(valueX!);
        }
      case 'valueRelatedArtifact':
        if (valueX is RelatedArtifactBuilder) {
          fields.add(valueX!);
        }
      case 'valueTriggerDefinition':
        if (valueX is TriggerDefinitionBuilder) {
          fields.add(valueX!);
        }
      case 'valueUsageContext':
        if (valueX is UsageContextBuilder) {
          fields.add(valueX!);
        }
      case 'valueAvailability':
        if (valueX is AvailabilityBuilder) {
          fields.add(valueX!);
        }
      case 'valueExtendedContactDetail':
        if (valueX is ExtendedContactDetailBuilder) {
          fields.add(valueX!);
        }
      case 'valueDosage':
        if (valueX is DosageBuilder) {
          fields.add(valueX!);
        }
      case 'valueMeta':
        if (valueX is FhirMetaBuilder) {
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
          if (child is ValueXTransportInputBuilder) {
            valueX = child;
            return;
          } else {
            if (child is FhirBase64BinaryBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirBooleanBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirCanonicalBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirCodeBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirDateBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirDateTimeBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirDecimalBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirIdBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirInstantBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirIntegerBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirInteger64Builder) {
              valueX = child;
              return;
            }
            if (child is FhirMarkdownBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirOidBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirPositiveIntBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirStringBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirTimeBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirUnsignedIntBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirUriBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirUrlBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirUuidBuilder) {
              valueX = child;
              return;
            }
            if (child is AddressBuilder) {
              valueX = child;
              return;
            }
            if (child is AgeBuilder) {
              valueX = child;
              return;
            }
            if (child is AnnotationBuilder) {
              valueX = child;
              return;
            }
            if (child is AttachmentBuilder) {
              valueX = child;
              return;
            }
            if (child is CodeableConceptBuilder) {
              valueX = child;
              return;
            }
            if (child is CodeableReferenceBuilder) {
              valueX = child;
              return;
            }
            if (child is CodingBuilder) {
              valueX = child;
              return;
            }
            if (child is ContactPointBuilder) {
              valueX = child;
              return;
            }
            if (child is CountBuilder) {
              valueX = child;
              return;
            }
            if (child is DistanceBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirDurationBuilder) {
              valueX = child;
              return;
            }
            if (child is HumanNameBuilder) {
              valueX = child;
              return;
            }
            if (child is IdentifierBuilder) {
              valueX = child;
              return;
            }
            if (child is MoneyBuilder) {
              valueX = child;
              return;
            }
            if (child is PeriodBuilder) {
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
            if (child is RatioBuilder) {
              valueX = child;
              return;
            }
            if (child is RatioRangeBuilder) {
              valueX = child;
              return;
            }
            if (child is ReferenceBuilder) {
              valueX = child;
              return;
            }
            if (child is SampledDataBuilder) {
              valueX = child;
              return;
            }
            if (child is SignatureBuilder) {
              valueX = child;
              return;
            }
            if (child is TimingBuilder) {
              valueX = child;
              return;
            }
            if (child is ContactDetailBuilder) {
              valueX = child;
              return;
            }
            if (child is DataRequirementBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirExpressionBuilder) {
              valueX = child;
              return;
            }
            if (child is ParameterDefinitionBuilder) {
              valueX = child;
              return;
            }
            if (child is RelatedArtifactBuilder) {
              valueX = child;
              return;
            }
            if (child is TriggerDefinitionBuilder) {
              valueX = child;
              return;
            }
            if (child is UsageContextBuilder) {
              valueX = child;
              return;
            }
            if (child is AvailabilityBuilder) {
              valueX = child;
              return;
            }
            if (child is ExtendedContactDetailBuilder) {
              valueX = child;
              return;
            }
            if (child is DosageBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirMetaBuilder) {
              valueX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
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
      case 'valueBoolean':
        {
          if (child is FhirBooleanBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueCanonical':
        {
          if (child is FhirCanonicalBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueCode':
        {
          if (child is FhirCodeBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueDate':
        {
          if (child is FhirDateBuilder) {
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
      case 'valueDecimal':
        {
          if (child is FhirDecimalBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueId':
        {
          if (child is FhirIdBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueInstant':
        {
          if (child is FhirInstantBuilder) {
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
      case 'valueInteger64':
        {
          if (child is FhirInteger64Builder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueMarkdown':
        {
          if (child is FhirMarkdownBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueOid':
        {
          if (child is FhirOidBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valuePositiveInt':
        {
          if (child is FhirPositiveIntBuilder) {
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
      case 'valueTime':
        {
          if (child is FhirTimeBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueUnsignedInt':
        {
          if (child is FhirUnsignedIntBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueUri':
        {
          if (child is FhirUriBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueUrl':
        {
          if (child is FhirUrlBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueUuid':
        {
          if (child is FhirUuidBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueAddress':
        {
          if (child is AddressBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueAge':
        {
          if (child is AgeBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueAnnotation':
        {
          if (child is AnnotationBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueAttachment':
        {
          if (child is AttachmentBuilder) {
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
      case 'valueCodeableReference':
        {
          if (child is CodeableReferenceBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueCoding':
        {
          if (child is CodingBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueContactPoint':
        {
          if (child is ContactPointBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueCount':
        {
          if (child is CountBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueDistance':
        {
          if (child is DistanceBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueDuration':
        {
          if (child is FhirDurationBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueHumanName':
        {
          if (child is HumanNameBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueIdentifier':
        {
          if (child is IdentifierBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueMoney':
        {
          if (child is MoneyBuilder) {
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
      case 'valueRatio':
        {
          if (child is RatioBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueRatioRange':
        {
          if (child is RatioRangeBuilder) {
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
      case 'valueSampledData':
        {
          if (child is SampledDataBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueSignature':
        {
          if (child is SignatureBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueTiming':
        {
          if (child is TimingBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueContactDetail':
        {
          if (child is ContactDetailBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueDataRequirement':
        {
          if (child is DataRequirementBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueExpression':
        {
          if (child is FhirExpressionBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueParameterDefinition':
        {
          if (child is ParameterDefinitionBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueRelatedArtifact':
        {
          if (child is RelatedArtifactBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueTriggerDefinition':
        {
          if (child is TriggerDefinitionBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueUsageContext':
        {
          if (child is UsageContextBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueAvailability':
        {
          if (child is AvailabilityBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueExtendedContactDetail':
        {
          if (child is ExtendedContactDetailBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueDosage':
        {
          if (child is DosageBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueMeta':
        {
          if (child is FhirMetaBuilder) {
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
          'FhirBase64BinaryBuilder',
          'FhirBooleanBuilder',
          'FhirCanonicalBuilder',
          'FhirCodeBuilder',
          'FhirDateBuilder',
          'FhirDateTimeBuilder',
          'FhirDecimalBuilder',
          'FhirIdBuilder',
          'FhirInstantBuilder',
          'FhirIntegerBuilder',
          'FhirInteger64Builder',
          'FhirMarkdownBuilder',
          'FhirOidBuilder',
          'FhirPositiveIntBuilder',
          'FhirStringBuilder',
          'FhirTimeBuilder',
          'FhirUnsignedIntBuilder',
          'FhirUriBuilder',
          'FhirUrlBuilder',
          'FhirUuidBuilder',
          'AddressBuilder',
          'AgeBuilder',
          'AnnotationBuilder',
          'AttachmentBuilder',
          'CodeableConceptBuilder',
          'CodeableReferenceBuilder',
          'CodingBuilder',
          'ContactPointBuilder',
          'CountBuilder',
          'DistanceBuilder',
          'FhirDurationBuilder',
          'HumanNameBuilder',
          'IdentifierBuilder',
          'MoneyBuilder',
          'PeriodBuilder',
          'QuantityBuilder',
          'RangeBuilder',
          'RatioBuilder',
          'RatioRangeBuilder',
          'ReferenceBuilder',
          'SampledDataBuilder',
          'SignatureBuilder',
          'TimingBuilder',
          'ContactDetailBuilder',
          'DataRequirementBuilder',
          'FhirExpressionBuilder',
          'ParameterDefinitionBuilder',
          'RelatedArtifactBuilder',
          'TriggerDefinitionBuilder',
          'UsageContextBuilder',
          'AvailabilityBuilder',
          'ExtendedContactDetailBuilder',
          'DosageBuilder',
          'FhirMetaBuilder',
        ];
      case 'valueBase64Binary':
        return ['FhirBase64BinaryBuilder'];
      case 'valueBoolean':
        return ['FhirBooleanBuilder'];
      case 'valueCanonical':
        return ['FhirCanonicalBuilder'];
      case 'valueCode':
        return ['FhirCodeBuilder'];
      case 'valueDate':
        return ['FhirDateBuilder'];
      case 'valueDateTime':
        return ['FhirDateTimeBuilder'];
      case 'valueDecimal':
        return ['FhirDecimalBuilder'];
      case 'valueId':
        return ['FhirIdBuilder'];
      case 'valueInstant':
        return ['FhirInstantBuilder'];
      case 'valueInteger':
        return ['FhirIntegerBuilder'];
      case 'valueInteger64':
        return ['FhirInteger64Builder'];
      case 'valueMarkdown':
        return ['FhirMarkdownBuilder'];
      case 'valueOid':
        return ['FhirOidBuilder'];
      case 'valuePositiveInt':
        return ['FhirPositiveIntBuilder'];
      case 'valueString':
        return ['FhirStringBuilder'];
      case 'valueTime':
        return ['FhirTimeBuilder'];
      case 'valueUnsignedInt':
        return ['FhirUnsignedIntBuilder'];
      case 'valueUri':
        return ['FhirUriBuilder'];
      case 'valueUrl':
        return ['FhirUrlBuilder'];
      case 'valueUuid':
        return ['FhirUuidBuilder'];
      case 'valueAddress':
        return ['AddressBuilder'];
      case 'valueAge':
        return ['AgeBuilder'];
      case 'valueAnnotation':
        return ['AnnotationBuilder'];
      case 'valueAttachment':
        return ['AttachmentBuilder'];
      case 'valueCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'valueCodeableReference':
        return ['CodeableReferenceBuilder'];
      case 'valueCoding':
        return ['CodingBuilder'];
      case 'valueContactPoint':
        return ['ContactPointBuilder'];
      case 'valueCount':
        return ['CountBuilder'];
      case 'valueDistance':
        return ['DistanceBuilder'];
      case 'valueDuration':
        return ['FhirDurationBuilder'];
      case 'valueHumanName':
        return ['HumanNameBuilder'];
      case 'valueIdentifier':
        return ['IdentifierBuilder'];
      case 'valueMoney':
        return ['MoneyBuilder'];
      case 'valuePeriod':
        return ['PeriodBuilder'];
      case 'valueQuantity':
        return ['QuantityBuilder'];
      case 'valueRange':
        return ['RangeBuilder'];
      case 'valueRatio':
        return ['RatioBuilder'];
      case 'valueRatioRange':
        return ['RatioRangeBuilder'];
      case 'valueReference':
        return ['ReferenceBuilder'];
      case 'valueSampledData':
        return ['SampledDataBuilder'];
      case 'valueSignature':
        return ['SignatureBuilder'];
      case 'valueTiming':
        return ['TimingBuilder'];
      case 'valueContactDetail':
        return ['ContactDetailBuilder'];
      case 'valueDataRequirement':
        return ['DataRequirementBuilder'];
      case 'valueExpression':
        return ['FhirExpressionBuilder'];
      case 'valueParameterDefinition':
        return ['ParameterDefinitionBuilder'];
      case 'valueRelatedArtifact':
        return ['RelatedArtifactBuilder'];
      case 'valueTriggerDefinition':
        return ['TriggerDefinitionBuilder'];
      case 'valueUsageContext':
        return ['UsageContextBuilder'];
      case 'valueAvailability':
        return ['AvailabilityBuilder'];
      case 'valueExtendedContactDetail':
        return ['ExtendedContactDetailBuilder'];
      case 'valueDosage':
        return ['DosageBuilder'];
      case 'valueMeta':
        return ['FhirMetaBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [TransportInputBuilder]
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
      case 'valueBase64Binary':
        {
          valueX = FhirBase64BinaryBuilder.empty();
          return;
        }
      case 'valueBoolean':
        {
          valueX = FhirBooleanBuilder.empty();
          return;
        }
      case 'valueCanonical':
        {
          valueX = FhirCanonicalBuilder.empty();
          return;
        }
      case 'valueCode':
        {
          valueX = FhirCodeBuilder.empty();
          return;
        }
      case 'valueDate':
        {
          valueX = FhirDateBuilder.empty();
          return;
        }
      case 'valueDateTime':
        {
          valueX = FhirDateTimeBuilder.empty();
          return;
        }
      case 'valueDecimal':
        {
          valueX = FhirDecimalBuilder.empty();
          return;
        }
      case 'valueId':
        {
          valueX = FhirIdBuilder.empty();
          return;
        }
      case 'valueInstant':
        {
          valueX = FhirInstantBuilder.empty();
          return;
        }
      case 'valueInteger':
        {
          valueX = FhirIntegerBuilder.empty();
          return;
        }
      case 'valueInteger64':
        {
          valueX = FhirInteger64Builder.empty();
          return;
        }
      case 'valueMarkdown':
        {
          valueX = FhirMarkdownBuilder.empty();
          return;
        }
      case 'valueOid':
        {
          valueX = FhirOidBuilder.empty();
          return;
        }
      case 'valuePositiveInt':
        {
          valueX = FhirPositiveIntBuilder.empty();
          return;
        }
      case 'valueString':
        {
          valueX = FhirStringBuilder.empty();
          return;
        }
      case 'valueTime':
        {
          valueX = FhirTimeBuilder.empty();
          return;
        }
      case 'valueUnsignedInt':
        {
          valueX = FhirUnsignedIntBuilder.empty();
          return;
        }
      case 'valueUri':
        {
          valueX = FhirUriBuilder.empty();
          return;
        }
      case 'valueUrl':
        {
          valueX = FhirUrlBuilder.empty();
          return;
        }
      case 'valueUuid':
        {
          valueX = FhirUuidBuilder.empty();
          return;
        }
      case 'valueAddress':
        {
          valueX = AddressBuilder.empty();
          return;
        }
      case 'valueAge':
        {
          valueX = AgeBuilder.empty();
          return;
        }
      case 'valueAnnotation':
        {
          valueX = AnnotationBuilder.empty();
          return;
        }
      case 'valueAttachment':
        {
          valueX = AttachmentBuilder.empty();
          return;
        }
      case 'valueCodeableConcept':
        {
          valueX = CodeableConceptBuilder.empty();
          return;
        }
      case 'valueCodeableReference':
        {
          valueX = CodeableReferenceBuilder.empty();
          return;
        }
      case 'valueCoding':
        {
          valueX = CodingBuilder.empty();
          return;
        }
      case 'valueContactPoint':
        {
          valueX = ContactPointBuilder.empty();
          return;
        }
      case 'valueCount':
        {
          valueX = CountBuilder.empty();
          return;
        }
      case 'valueDistance':
        {
          valueX = DistanceBuilder.empty();
          return;
        }
      case 'valueDuration':
        {
          valueX = FhirDurationBuilder.empty();
          return;
        }
      case 'valueHumanName':
        {
          valueX = HumanNameBuilder.empty();
          return;
        }
      case 'valueIdentifier':
        {
          valueX = IdentifierBuilder.empty();
          return;
        }
      case 'valueMoney':
        {
          valueX = MoneyBuilder.empty();
          return;
        }
      case 'valuePeriod':
        {
          valueX = PeriodBuilder.empty();
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
      case 'valueRatio':
        {
          valueX = RatioBuilder.empty();
          return;
        }
      case 'valueRatioRange':
        {
          valueX = RatioRangeBuilder.empty();
          return;
        }
      case 'valueReference':
        {
          valueX = ReferenceBuilder.empty();
          return;
        }
      case 'valueSampledData':
        {
          valueX = SampledDataBuilder.empty();
          return;
        }
      case 'valueSignature':
        {
          valueX = SignatureBuilder.empty();
          return;
        }
      case 'valueTiming':
        {
          valueX = TimingBuilder.empty();
          return;
        }
      case 'valueContactDetail':
        {
          valueX = ContactDetailBuilder.empty();
          return;
        }
      case 'valueDataRequirement':
        {
          valueX = DataRequirementBuilder.empty();
          return;
        }
      case 'valueExpression':
        {
          valueX = FhirExpressionBuilder.empty();
          return;
        }
      case 'valueParameterDefinition':
        {
          valueX = ParameterDefinitionBuilder.empty();
          return;
        }
      case 'valueRelatedArtifact':
        {
          valueX = RelatedArtifactBuilder.empty();
          return;
        }
      case 'valueTriggerDefinition':
        {
          valueX = TriggerDefinitionBuilder.empty();
          return;
        }
      case 'valueUsageContext':
        {
          valueX = UsageContextBuilder.empty();
          return;
        }
      case 'valueAvailability':
        {
          valueX = AvailabilityBuilder.empty();
          return;
        }
      case 'valueExtendedContactDetail':
        {
          valueX = ExtendedContactDetailBuilder.empty();
          return;
        }
      case 'valueDosage':
        {
          valueX = DosageBuilder.empty();
          return;
        }
      case 'valueMeta':
        {
          valueX = FhirMetaBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  TransportInputBuilder clone() => throw UnimplementedError();
  @override
  TransportInputBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? type,
    ValueXTransportInputBuilder? valueX,
    FhirBase64BinaryBuilder? valueBase64Binary,
    FhirBooleanBuilder? valueBoolean,
    FhirCanonicalBuilder? valueCanonical,
    FhirCodeBuilder? valueCode,
    FhirDateBuilder? valueDate,
    FhirDateTimeBuilder? valueDateTime,
    FhirDecimalBuilder? valueDecimal,
    FhirIdBuilder? valueId,
    FhirInstantBuilder? valueInstant,
    FhirIntegerBuilder? valueInteger,
    FhirInteger64Builder? valueInteger64,
    FhirMarkdownBuilder? valueMarkdown,
    FhirOidBuilder? valueOid,
    FhirPositiveIntBuilder? valuePositiveInt,
    FhirStringBuilder? valueString,
    FhirTimeBuilder? valueTime,
    FhirUnsignedIntBuilder? valueUnsignedInt,
    FhirUriBuilder? valueUri,
    FhirUrlBuilder? valueUrl,
    FhirUuidBuilder? valueUuid,
    AddressBuilder? valueAddress,
    AgeBuilder? valueAge,
    AnnotationBuilder? valueAnnotation,
    AttachmentBuilder? valueAttachment,
    CodeableConceptBuilder? valueCodeableConcept,
    CodeableReferenceBuilder? valueCodeableReference,
    CodingBuilder? valueCoding,
    ContactPointBuilder? valueContactPoint,
    CountBuilder? valueCount,
    DistanceBuilder? valueDistance,
    FhirDurationBuilder? valueDuration,
    HumanNameBuilder? valueHumanName,
    IdentifierBuilder? valueIdentifier,
    MoneyBuilder? valueMoney,
    PeriodBuilder? valuePeriod,
    QuantityBuilder? valueQuantity,
    RangeBuilder? valueRange,
    RatioBuilder? valueRatio,
    RatioRangeBuilder? valueRatioRange,
    ReferenceBuilder? valueReference,
    SampledDataBuilder? valueSampledData,
    SignatureBuilder? valueSignature,
    TimingBuilder? valueTiming,
    ContactDetailBuilder? valueContactDetail,
    DataRequirementBuilder? valueDataRequirement,
    FhirExpressionBuilder? valueExpression,
    ParameterDefinitionBuilder? valueParameterDefinition,
    RelatedArtifactBuilder? valueRelatedArtifact,
    TriggerDefinitionBuilder? valueTriggerDefinition,
    UsageContextBuilder? valueUsageContext,
    AvailabilityBuilder? valueAvailability,
    ExtendedContactDetailBuilder? valueExtendedContactDetail,
    DosageBuilder? valueDosage,
    FhirMetaBuilder? valueMeta,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = TransportInputBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      valueX: valueX ??
          valueBase64Binary ??
          valueBoolean ??
          valueCanonical ??
          valueCode ??
          valueDate ??
          valueDateTime ??
          valueDecimal ??
          valueId ??
          valueInstant ??
          valueInteger ??
          valueInteger64 ??
          valueMarkdown ??
          valueOid ??
          valuePositiveInt ??
          valueString ??
          valueTime ??
          valueUnsignedInt ??
          valueUri ??
          valueUrl ??
          valueUuid ??
          valueAddress ??
          valueAge ??
          valueAnnotation ??
          valueAttachment ??
          valueCodeableConcept ??
          valueCodeableReference ??
          valueCoding ??
          valueContactPoint ??
          valueCount ??
          valueDistance ??
          valueDuration ??
          valueHumanName ??
          valueIdentifier ??
          valueMoney ??
          valuePeriod ??
          valueQuantity ??
          valueRange ??
          valueRatio ??
          valueRatioRange ??
          valueReference ??
          valueSampledData ??
          valueSignature ??
          valueTiming ??
          valueContactDetail ??
          valueDataRequirement ??
          valueExpression ??
          valueParameterDefinition ??
          valueRelatedArtifact ??
          valueTriggerDefinition ??
          valueUsageContext ??
          valueAvailability ??
          valueExtendedContactDetail ??
          valueDosage ??
          valueMeta ??
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
    if (o is! TransportInputBuilder) {
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

/// [TransportOutputBuilder]
/// Outputs produced by the Transport.
class TransportOutputBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [TransportOutputBuilder]

  TransportOutputBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    ValueXTransportOutputBuilder? valueX,
    FhirBase64BinaryBuilder? valueBase64Binary,
    FhirBooleanBuilder? valueBoolean,
    FhirCanonicalBuilder? valueCanonical,
    FhirCodeBuilder? valueCode,
    FhirDateBuilder? valueDate,
    FhirDateTimeBuilder? valueDateTime,
    FhirDecimalBuilder? valueDecimal,
    FhirIdBuilder? valueId,
    FhirInstantBuilder? valueInstant,
    FhirIntegerBuilder? valueInteger,
    FhirInteger64Builder? valueInteger64,
    FhirMarkdownBuilder? valueMarkdown,
    FhirOidBuilder? valueOid,
    FhirPositiveIntBuilder? valuePositiveInt,
    FhirStringBuilder? valueString,
    FhirTimeBuilder? valueTime,
    FhirUnsignedIntBuilder? valueUnsignedInt,
    FhirUriBuilder? valueUri,
    FhirUrlBuilder? valueUrl,
    FhirUuidBuilder? valueUuid,
    AddressBuilder? valueAddress,
    AgeBuilder? valueAge,
    AnnotationBuilder? valueAnnotation,
    AttachmentBuilder? valueAttachment,
    CodeableConceptBuilder? valueCodeableConcept,
    CodeableReferenceBuilder? valueCodeableReference,
    CodingBuilder? valueCoding,
    ContactPointBuilder? valueContactPoint,
    CountBuilder? valueCount,
    DistanceBuilder? valueDistance,
    FhirDurationBuilder? valueDuration,
    HumanNameBuilder? valueHumanName,
    IdentifierBuilder? valueIdentifier,
    MoneyBuilder? valueMoney,
    PeriodBuilder? valuePeriod,
    QuantityBuilder? valueQuantity,
    RangeBuilder? valueRange,
    RatioBuilder? valueRatio,
    RatioRangeBuilder? valueRatioRange,
    ReferenceBuilder? valueReference,
    SampledDataBuilder? valueSampledData,
    SignatureBuilder? valueSignature,
    TimingBuilder? valueTiming,
    ContactDetailBuilder? valueContactDetail,
    DataRequirementBuilder? valueDataRequirement,
    FhirExpressionBuilder? valueExpression,
    ParameterDefinitionBuilder? valueParameterDefinition,
    RelatedArtifactBuilder? valueRelatedArtifact,
    TriggerDefinitionBuilder? valueTriggerDefinition,
    UsageContextBuilder? valueUsageContext,
    AvailabilityBuilder? valueAvailability,
    ExtendedContactDetailBuilder? valueExtendedContactDetail,
    DosageBuilder? valueDosage,
    FhirMetaBuilder? valueMeta,
    super.disallowExtensions,
  })  : valueX = valueX ??
            valueBase64Binary ??
            valueBoolean ??
            valueCanonical ??
            valueCode ??
            valueDate ??
            valueDateTime ??
            valueDecimal ??
            valueId ??
            valueInstant ??
            valueInteger ??
            valueInteger64 ??
            valueMarkdown ??
            valueOid ??
            valuePositiveInt ??
            valueString ??
            valueTime ??
            valueUnsignedInt ??
            valueUri ??
            valueUrl ??
            valueUuid ??
            valueAddress ??
            valueAge ??
            valueAnnotation ??
            valueAttachment ??
            valueCodeableConcept ??
            valueCodeableReference ??
            valueCoding ??
            valueContactPoint ??
            valueCount ??
            valueDistance ??
            valueDuration ??
            valueHumanName ??
            valueIdentifier ??
            valueMoney ??
            valuePeriod ??
            valueQuantity ??
            valueRange ??
            valueRatio ??
            valueRatioRange ??
            valueReference ??
            valueSampledData ??
            valueSignature ??
            valueTiming ??
            valueContactDetail ??
            valueDataRequirement ??
            valueExpression ??
            valueParameterDefinition ??
            valueRelatedArtifact ??
            valueTriggerDefinition ??
            valueUsageContext ??
            valueAvailability ??
            valueExtendedContactDetail ??
            valueDosage ??
            valueMeta,
        super(
          objectPath: 'Transport.output',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory TransportOutputBuilder.empty() => TransportOutputBuilder(
        type: CodeableConceptBuilder.empty(),
        valueX: FhirBase64BinaryBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TransportOutputBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Transport.output';
    return TransportOutputBuilder(
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
      valueX: JsonParser.parsePolymorphic<ValueXTransportOutputBuilder>(
        json,
        {
          'valueBase64Binary': FhirBase64BinaryBuilder.fromJson,
          'valueBoolean': FhirBooleanBuilder.fromJson,
          'valueCanonical': FhirCanonicalBuilder.fromJson,
          'valueCode': FhirCodeBuilder.fromJson,
          'valueDate': FhirDateBuilder.fromJson,
          'valueDateTime': FhirDateTimeBuilder.fromJson,
          'valueDecimal': FhirDecimalBuilder.fromJson,
          'valueId': FhirIdBuilder.fromJson,
          'valueInstant': FhirInstantBuilder.fromJson,
          'valueInteger': FhirIntegerBuilder.fromJson,
          'valueInteger64': FhirInteger64Builder.fromJson,
          'valueMarkdown': FhirMarkdownBuilder.fromJson,
          'valueOid': FhirOidBuilder.fromJson,
          'valuePositiveInt': FhirPositiveIntBuilder.fromJson,
          'valueString': FhirStringBuilder.fromJson,
          'valueTime': FhirTimeBuilder.fromJson,
          'valueUnsignedInt': FhirUnsignedIntBuilder.fromJson,
          'valueUri': FhirUriBuilder.fromJson,
          'valueUrl': FhirUrlBuilder.fromJson,
          'valueUuid': FhirUuidBuilder.fromJson,
          'valueAddress': AddressBuilder.fromJson,
          'valueAge': AgeBuilder.fromJson,
          'valueAnnotation': AnnotationBuilder.fromJson,
          'valueAttachment': AttachmentBuilder.fromJson,
          'valueCodeableConcept': CodeableConceptBuilder.fromJson,
          'valueCodeableReference': CodeableReferenceBuilder.fromJson,
          'valueCoding': CodingBuilder.fromJson,
          'valueContactPoint': ContactPointBuilder.fromJson,
          'valueCount': CountBuilder.fromJson,
          'valueDistance': DistanceBuilder.fromJson,
          'valueDuration': FhirDurationBuilder.fromJson,
          'valueHumanName': HumanNameBuilder.fromJson,
          'valueIdentifier': IdentifierBuilder.fromJson,
          'valueMoney': MoneyBuilder.fromJson,
          'valuePeriod': PeriodBuilder.fromJson,
          'valueQuantity': QuantityBuilder.fromJson,
          'valueRange': RangeBuilder.fromJson,
          'valueRatio': RatioBuilder.fromJson,
          'valueRatioRange': RatioRangeBuilder.fromJson,
          'valueReference': ReferenceBuilder.fromJson,
          'valueSampledData': SampledDataBuilder.fromJson,
          'valueSignature': SignatureBuilder.fromJson,
          'valueTiming': TimingBuilder.fromJson,
          'valueContactDetail': ContactDetailBuilder.fromJson,
          'valueDataRequirement': DataRequirementBuilder.fromJson,
          'valueExpression': FhirExpressionBuilder.fromJson,
          'valueParameterDefinition': ParameterDefinitionBuilder.fromJson,
          'valueRelatedArtifact': RelatedArtifactBuilder.fromJson,
          'valueTriggerDefinition': TriggerDefinitionBuilder.fromJson,
          'valueUsageContext': UsageContextBuilder.fromJson,
          'valueAvailability': AvailabilityBuilder.fromJson,
          'valueExtendedContactDetail': ExtendedContactDetailBuilder.fromJson,
          'valueDosage': DosageBuilder.fromJson,
          'valueMeta': FhirMetaBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [TransportOutputBuilder]
  /// from a [String] or [YamlMap] object
  factory TransportOutputBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TransportOutputBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TransportOutputBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TransportOutputBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TransportOutputBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TransportOutputBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return TransportOutputBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'TransportOutput';

  /// [type]
  /// The name of the Output parameter.
  CodeableConceptBuilder? type;

  /// [valueX]
  /// The value of the Output parameter as a basic type.
  ValueXTransportOutputBuilder? valueX;

  /// Getter for [valueBase64Binary] as a FhirBase64BinaryBuilder
  FhirBase64BinaryBuilder? get valueBase64Binary =>
      valueX?.isAs<FhirBase64BinaryBuilder>();

  /// Getter for [valueBoolean] as a FhirBooleanBuilder
  FhirBooleanBuilder? get valueBoolean => valueX?.isAs<FhirBooleanBuilder>();

  /// Getter for [valueCanonical] as a FhirCanonicalBuilder
  FhirCanonicalBuilder? get valueCanonical =>
      valueX?.isAs<FhirCanonicalBuilder>();

  /// Getter for [valueCode] as a FhirCodeBuilder
  FhirCodeBuilder? get valueCode => valueX?.isAs<FhirCodeBuilder>();

  /// Getter for [valueDate] as a FhirDateBuilder
  FhirDateBuilder? get valueDate => valueX?.isAs<FhirDateBuilder>();

  /// Getter for [valueDateTime] as a FhirDateTimeBuilder
  FhirDateTimeBuilder? get valueDateTime => valueX?.isAs<FhirDateTimeBuilder>();

  /// Getter for [valueDecimal] as a FhirDecimalBuilder
  FhirDecimalBuilder? get valueDecimal => valueX?.isAs<FhirDecimalBuilder>();

  /// Getter for [valueId] as a FhirIdBuilder
  FhirIdBuilder? get valueId => valueX?.isAs<FhirIdBuilder>();

  /// Getter for [valueInstant] as a FhirInstantBuilder
  FhirInstantBuilder? get valueInstant => valueX?.isAs<FhirInstantBuilder>();

  /// Getter for [valueInteger] as a FhirIntegerBuilder
  FhirIntegerBuilder? get valueInteger => valueX?.isAs<FhirIntegerBuilder>();

  /// Getter for [valueInteger64] as a FhirInteger64Builder
  FhirInteger64Builder? get valueInteger64 =>
      valueX?.isAs<FhirInteger64Builder>();

  /// Getter for [valueMarkdown] as a FhirMarkdownBuilder
  FhirMarkdownBuilder? get valueMarkdown => valueX?.isAs<FhirMarkdownBuilder>();

  /// Getter for [valueOid] as a FhirOidBuilder
  FhirOidBuilder? get valueOid => valueX?.isAs<FhirOidBuilder>();

  /// Getter for [valuePositiveInt] as a FhirPositiveIntBuilder
  FhirPositiveIntBuilder? get valuePositiveInt =>
      valueX?.isAs<FhirPositiveIntBuilder>();

  /// Getter for [valueString] as a FhirStringBuilder
  FhirStringBuilder? get valueString => valueX?.isAs<FhirStringBuilder>();

  /// Getter for [valueTime] as a FhirTimeBuilder
  FhirTimeBuilder? get valueTime => valueX?.isAs<FhirTimeBuilder>();

  /// Getter for [valueUnsignedInt] as a FhirUnsignedIntBuilder
  FhirUnsignedIntBuilder? get valueUnsignedInt =>
      valueX?.isAs<FhirUnsignedIntBuilder>();

  /// Getter for [valueUri] as a FhirUriBuilder
  FhirUriBuilder? get valueUri => valueX?.isAs<FhirUriBuilder>();

  /// Getter for [valueUrl] as a FhirUrlBuilder
  FhirUrlBuilder? get valueUrl => valueX?.isAs<FhirUrlBuilder>();

  /// Getter for [valueUuid] as a FhirUuidBuilder
  FhirUuidBuilder? get valueUuid => valueX?.isAs<FhirUuidBuilder>();

  /// Getter for [valueAddress] as a AddressBuilder
  AddressBuilder? get valueAddress => valueX?.isAs<AddressBuilder>();

  /// Getter for [valueAge] as a AgeBuilder
  AgeBuilder? get valueAge => valueX?.isAs<AgeBuilder>();

  /// Getter for [valueAnnotation] as a AnnotationBuilder
  AnnotationBuilder? get valueAnnotation => valueX?.isAs<AnnotationBuilder>();

  /// Getter for [valueAttachment] as a AttachmentBuilder
  AttachmentBuilder? get valueAttachment => valueX?.isAs<AttachmentBuilder>();

  /// Getter for [valueCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get valueCodeableConcept =>
      valueX?.isAs<CodeableConceptBuilder>();

  /// Getter for [valueCodeableReference] as a CodeableReferenceBuilder
  CodeableReferenceBuilder? get valueCodeableReference =>
      valueX?.isAs<CodeableReferenceBuilder>();

  /// Getter for [valueCoding] as a CodingBuilder
  CodingBuilder? get valueCoding => valueX?.isAs<CodingBuilder>();

  /// Getter for [valueContactPoint] as a ContactPointBuilder
  ContactPointBuilder? get valueContactPoint =>
      valueX?.isAs<ContactPointBuilder>();

  /// Getter for [valueCount] as a CountBuilder
  CountBuilder? get valueCount => valueX?.isAs<CountBuilder>();

  /// Getter for [valueDistance] as a DistanceBuilder
  DistanceBuilder? get valueDistance => valueX?.isAs<DistanceBuilder>();

  /// Getter for [valueDuration] as a FhirDurationBuilder
  FhirDurationBuilder? get valueDuration => valueX?.isAs<FhirDurationBuilder>();

  /// Getter for [valueHumanName] as a HumanNameBuilder
  HumanNameBuilder? get valueHumanName => valueX?.isAs<HumanNameBuilder>();

  /// Getter for [valueIdentifier] as a IdentifierBuilder
  IdentifierBuilder? get valueIdentifier => valueX?.isAs<IdentifierBuilder>();

  /// Getter for [valueMoney] as a MoneyBuilder
  MoneyBuilder? get valueMoney => valueX?.isAs<MoneyBuilder>();

  /// Getter for [valuePeriod] as a PeriodBuilder
  PeriodBuilder? get valuePeriod => valueX?.isAs<PeriodBuilder>();

  /// Getter for [valueQuantity] as a QuantityBuilder
  QuantityBuilder? get valueQuantity => valueX?.isAs<QuantityBuilder>();

  /// Getter for [valueRange] as a RangeBuilder
  RangeBuilder? get valueRange => valueX?.isAs<RangeBuilder>();

  /// Getter for [valueRatio] as a RatioBuilder
  RatioBuilder? get valueRatio => valueX?.isAs<RatioBuilder>();

  /// Getter for [valueRatioRange] as a RatioRangeBuilder
  RatioRangeBuilder? get valueRatioRange => valueX?.isAs<RatioRangeBuilder>();

  /// Getter for [valueReference] as a ReferenceBuilder
  ReferenceBuilder? get valueReference => valueX?.isAs<ReferenceBuilder>();

  /// Getter for [valueSampledData] as a SampledDataBuilder
  SampledDataBuilder? get valueSampledData =>
      valueX?.isAs<SampledDataBuilder>();

  /// Getter for [valueSignature] as a SignatureBuilder
  SignatureBuilder? get valueSignature => valueX?.isAs<SignatureBuilder>();

  /// Getter for [valueTiming] as a TimingBuilder
  TimingBuilder? get valueTiming => valueX?.isAs<TimingBuilder>();

  /// Getter for [valueContactDetail] as a ContactDetailBuilder
  ContactDetailBuilder? get valueContactDetail =>
      valueX?.isAs<ContactDetailBuilder>();

  /// Getter for [valueDataRequirement] as a DataRequirementBuilder
  DataRequirementBuilder? get valueDataRequirement =>
      valueX?.isAs<DataRequirementBuilder>();

  /// Getter for [valueExpression] as a FhirExpressionBuilder
  FhirExpressionBuilder? get valueExpression =>
      valueX?.isAs<FhirExpressionBuilder>();

  /// Getter for [valueParameterDefinition] as a ParameterDefinitionBuilder
  ParameterDefinitionBuilder? get valueParameterDefinition =>
      valueX?.isAs<ParameterDefinitionBuilder>();

  /// Getter for [valueRelatedArtifact] as a RelatedArtifactBuilder
  RelatedArtifactBuilder? get valueRelatedArtifact =>
      valueX?.isAs<RelatedArtifactBuilder>();

  /// Getter for [valueTriggerDefinition] as a TriggerDefinitionBuilder
  TriggerDefinitionBuilder? get valueTriggerDefinition =>
      valueX?.isAs<TriggerDefinitionBuilder>();

  /// Getter for [valueUsageContext] as a UsageContextBuilder
  UsageContextBuilder? get valueUsageContext =>
      valueX?.isAs<UsageContextBuilder>();

  /// Getter for [valueAvailability] as a AvailabilityBuilder
  AvailabilityBuilder? get valueAvailability =>
      valueX?.isAs<AvailabilityBuilder>();

  /// Getter for [valueExtendedContactDetail] as a ExtendedContactDetailBuilder
  ExtendedContactDetailBuilder? get valueExtendedContactDetail =>
      valueX?.isAs<ExtendedContactDetailBuilder>();

  /// Getter for [valueDosage] as a DosageBuilder
  DosageBuilder? get valueDosage => valueX?.isAs<DosageBuilder>();

  /// Getter for [valueMeta] as a FhirMetaBuilder
  FhirMetaBuilder? get valueMeta => valueX?.isAs<FhirMetaBuilder>();

  /// Converts a [TransportOutputBuilder]
  /// to [TransportOutput]
  @override
  TransportOutput build() => TransportOutput.fromJson(toJson());

  /// Converts a [TransportOutputBuilder]
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
      case 'valueBase64Binary':
        if (valueX is FhirBase64BinaryBuilder) {
          fields.add(valueX!);
        }
      case 'valueBoolean':
        if (valueX is FhirBooleanBuilder) {
          fields.add(valueX!);
        }
      case 'valueCanonical':
        if (valueX is FhirCanonicalBuilder) {
          fields.add(valueX!);
        }
      case 'valueCode':
        if (valueX is FhirCodeBuilder) {
          fields.add(valueX!);
        }
      case 'valueDate':
        if (valueX is FhirDateBuilder) {
          fields.add(valueX!);
        }
      case 'valueDateTime':
        if (valueX is FhirDateTimeBuilder) {
          fields.add(valueX!);
        }
      case 'valueDecimal':
        if (valueX is FhirDecimalBuilder) {
          fields.add(valueX!);
        }
      case 'valueId':
        if (valueX is FhirIdBuilder) {
          fields.add(valueX!);
        }
      case 'valueInstant':
        if (valueX is FhirInstantBuilder) {
          fields.add(valueX!);
        }
      case 'valueInteger':
        if (valueX is FhirIntegerBuilder) {
          fields.add(valueX!);
        }
      case 'valueInteger64':
        if (valueX is FhirInteger64Builder) {
          fields.add(valueX!);
        }
      case 'valueMarkdown':
        if (valueX is FhirMarkdownBuilder) {
          fields.add(valueX!);
        }
      case 'valueOid':
        if (valueX is FhirOidBuilder) {
          fields.add(valueX!);
        }
      case 'valuePositiveInt':
        if (valueX is FhirPositiveIntBuilder) {
          fields.add(valueX!);
        }
      case 'valueString':
        if (valueX is FhirStringBuilder) {
          fields.add(valueX!);
        }
      case 'valueTime':
        if (valueX is FhirTimeBuilder) {
          fields.add(valueX!);
        }
      case 'valueUnsignedInt':
        if (valueX is FhirUnsignedIntBuilder) {
          fields.add(valueX!);
        }
      case 'valueUri':
        if (valueX is FhirUriBuilder) {
          fields.add(valueX!);
        }
      case 'valueUrl':
        if (valueX is FhirUrlBuilder) {
          fields.add(valueX!);
        }
      case 'valueUuid':
        if (valueX is FhirUuidBuilder) {
          fields.add(valueX!);
        }
      case 'valueAddress':
        if (valueX is AddressBuilder) {
          fields.add(valueX!);
        }
      case 'valueAge':
        if (valueX is AgeBuilder) {
          fields.add(valueX!);
        }
      case 'valueAnnotation':
        if (valueX is AnnotationBuilder) {
          fields.add(valueX!);
        }
      case 'valueAttachment':
        if (valueX is AttachmentBuilder) {
          fields.add(valueX!);
        }
      case 'valueCodeableConcept':
        if (valueX is CodeableConceptBuilder) {
          fields.add(valueX!);
        }
      case 'valueCodeableReference':
        if (valueX is CodeableReferenceBuilder) {
          fields.add(valueX!);
        }
      case 'valueCoding':
        if (valueX is CodingBuilder) {
          fields.add(valueX!);
        }
      case 'valueContactPoint':
        if (valueX is ContactPointBuilder) {
          fields.add(valueX!);
        }
      case 'valueCount':
        if (valueX is CountBuilder) {
          fields.add(valueX!);
        }
      case 'valueDistance':
        if (valueX is DistanceBuilder) {
          fields.add(valueX!);
        }
      case 'valueDuration':
        if (valueX is FhirDurationBuilder) {
          fields.add(valueX!);
        }
      case 'valueHumanName':
        if (valueX is HumanNameBuilder) {
          fields.add(valueX!);
        }
      case 'valueIdentifier':
        if (valueX is IdentifierBuilder) {
          fields.add(valueX!);
        }
      case 'valueMoney':
        if (valueX is MoneyBuilder) {
          fields.add(valueX!);
        }
      case 'valuePeriod':
        if (valueX is PeriodBuilder) {
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
      case 'valueRatio':
        if (valueX is RatioBuilder) {
          fields.add(valueX!);
        }
      case 'valueRatioRange':
        if (valueX is RatioRangeBuilder) {
          fields.add(valueX!);
        }
      case 'valueReference':
        if (valueX is ReferenceBuilder) {
          fields.add(valueX!);
        }
      case 'valueSampledData':
        if (valueX is SampledDataBuilder) {
          fields.add(valueX!);
        }
      case 'valueSignature':
        if (valueX is SignatureBuilder) {
          fields.add(valueX!);
        }
      case 'valueTiming':
        if (valueX is TimingBuilder) {
          fields.add(valueX!);
        }
      case 'valueContactDetail':
        if (valueX is ContactDetailBuilder) {
          fields.add(valueX!);
        }
      case 'valueDataRequirement':
        if (valueX is DataRequirementBuilder) {
          fields.add(valueX!);
        }
      case 'valueExpression':
        if (valueX is FhirExpressionBuilder) {
          fields.add(valueX!);
        }
      case 'valueParameterDefinition':
        if (valueX is ParameterDefinitionBuilder) {
          fields.add(valueX!);
        }
      case 'valueRelatedArtifact':
        if (valueX is RelatedArtifactBuilder) {
          fields.add(valueX!);
        }
      case 'valueTriggerDefinition':
        if (valueX is TriggerDefinitionBuilder) {
          fields.add(valueX!);
        }
      case 'valueUsageContext':
        if (valueX is UsageContextBuilder) {
          fields.add(valueX!);
        }
      case 'valueAvailability':
        if (valueX is AvailabilityBuilder) {
          fields.add(valueX!);
        }
      case 'valueExtendedContactDetail':
        if (valueX is ExtendedContactDetailBuilder) {
          fields.add(valueX!);
        }
      case 'valueDosage':
        if (valueX is DosageBuilder) {
          fields.add(valueX!);
        }
      case 'valueMeta':
        if (valueX is FhirMetaBuilder) {
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
          if (child is ValueXTransportOutputBuilder) {
            valueX = child;
            return;
          } else {
            if (child is FhirBase64BinaryBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirBooleanBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirCanonicalBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirCodeBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirDateBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirDateTimeBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirDecimalBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirIdBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirInstantBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirIntegerBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirInteger64Builder) {
              valueX = child;
              return;
            }
            if (child is FhirMarkdownBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirOidBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirPositiveIntBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirStringBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirTimeBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirUnsignedIntBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirUriBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirUrlBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirUuidBuilder) {
              valueX = child;
              return;
            }
            if (child is AddressBuilder) {
              valueX = child;
              return;
            }
            if (child is AgeBuilder) {
              valueX = child;
              return;
            }
            if (child is AnnotationBuilder) {
              valueX = child;
              return;
            }
            if (child is AttachmentBuilder) {
              valueX = child;
              return;
            }
            if (child is CodeableConceptBuilder) {
              valueX = child;
              return;
            }
            if (child is CodeableReferenceBuilder) {
              valueX = child;
              return;
            }
            if (child is CodingBuilder) {
              valueX = child;
              return;
            }
            if (child is ContactPointBuilder) {
              valueX = child;
              return;
            }
            if (child is CountBuilder) {
              valueX = child;
              return;
            }
            if (child is DistanceBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirDurationBuilder) {
              valueX = child;
              return;
            }
            if (child is HumanNameBuilder) {
              valueX = child;
              return;
            }
            if (child is IdentifierBuilder) {
              valueX = child;
              return;
            }
            if (child is MoneyBuilder) {
              valueX = child;
              return;
            }
            if (child is PeriodBuilder) {
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
            if (child is RatioBuilder) {
              valueX = child;
              return;
            }
            if (child is RatioRangeBuilder) {
              valueX = child;
              return;
            }
            if (child is ReferenceBuilder) {
              valueX = child;
              return;
            }
            if (child is SampledDataBuilder) {
              valueX = child;
              return;
            }
            if (child is SignatureBuilder) {
              valueX = child;
              return;
            }
            if (child is TimingBuilder) {
              valueX = child;
              return;
            }
            if (child is ContactDetailBuilder) {
              valueX = child;
              return;
            }
            if (child is DataRequirementBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirExpressionBuilder) {
              valueX = child;
              return;
            }
            if (child is ParameterDefinitionBuilder) {
              valueX = child;
              return;
            }
            if (child is RelatedArtifactBuilder) {
              valueX = child;
              return;
            }
            if (child is TriggerDefinitionBuilder) {
              valueX = child;
              return;
            }
            if (child is UsageContextBuilder) {
              valueX = child;
              return;
            }
            if (child is AvailabilityBuilder) {
              valueX = child;
              return;
            }
            if (child is ExtendedContactDetailBuilder) {
              valueX = child;
              return;
            }
            if (child is DosageBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirMetaBuilder) {
              valueX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
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
      case 'valueBoolean':
        {
          if (child is FhirBooleanBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueCanonical':
        {
          if (child is FhirCanonicalBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueCode':
        {
          if (child is FhirCodeBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueDate':
        {
          if (child is FhirDateBuilder) {
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
      case 'valueDecimal':
        {
          if (child is FhirDecimalBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueId':
        {
          if (child is FhirIdBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueInstant':
        {
          if (child is FhirInstantBuilder) {
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
      case 'valueInteger64':
        {
          if (child is FhirInteger64Builder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueMarkdown':
        {
          if (child is FhirMarkdownBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueOid':
        {
          if (child is FhirOidBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valuePositiveInt':
        {
          if (child is FhirPositiveIntBuilder) {
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
      case 'valueTime':
        {
          if (child is FhirTimeBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueUnsignedInt':
        {
          if (child is FhirUnsignedIntBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueUri':
        {
          if (child is FhirUriBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueUrl':
        {
          if (child is FhirUrlBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueUuid':
        {
          if (child is FhirUuidBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueAddress':
        {
          if (child is AddressBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueAge':
        {
          if (child is AgeBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueAnnotation':
        {
          if (child is AnnotationBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueAttachment':
        {
          if (child is AttachmentBuilder) {
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
      case 'valueCodeableReference':
        {
          if (child is CodeableReferenceBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueCoding':
        {
          if (child is CodingBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueContactPoint':
        {
          if (child is ContactPointBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueCount':
        {
          if (child is CountBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueDistance':
        {
          if (child is DistanceBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueDuration':
        {
          if (child is FhirDurationBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueHumanName':
        {
          if (child is HumanNameBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueIdentifier':
        {
          if (child is IdentifierBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueMoney':
        {
          if (child is MoneyBuilder) {
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
      case 'valueRatio':
        {
          if (child is RatioBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueRatioRange':
        {
          if (child is RatioRangeBuilder) {
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
      case 'valueSampledData':
        {
          if (child is SampledDataBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueSignature':
        {
          if (child is SignatureBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueTiming':
        {
          if (child is TimingBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueContactDetail':
        {
          if (child is ContactDetailBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueDataRequirement':
        {
          if (child is DataRequirementBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueExpression':
        {
          if (child is FhirExpressionBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueParameterDefinition':
        {
          if (child is ParameterDefinitionBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueRelatedArtifact':
        {
          if (child is RelatedArtifactBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueTriggerDefinition':
        {
          if (child is TriggerDefinitionBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueUsageContext':
        {
          if (child is UsageContextBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueAvailability':
        {
          if (child is AvailabilityBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueExtendedContactDetail':
        {
          if (child is ExtendedContactDetailBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueDosage':
        {
          if (child is DosageBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueMeta':
        {
          if (child is FhirMetaBuilder) {
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
          'FhirBase64BinaryBuilder',
          'FhirBooleanBuilder',
          'FhirCanonicalBuilder',
          'FhirCodeBuilder',
          'FhirDateBuilder',
          'FhirDateTimeBuilder',
          'FhirDecimalBuilder',
          'FhirIdBuilder',
          'FhirInstantBuilder',
          'FhirIntegerBuilder',
          'FhirInteger64Builder',
          'FhirMarkdownBuilder',
          'FhirOidBuilder',
          'FhirPositiveIntBuilder',
          'FhirStringBuilder',
          'FhirTimeBuilder',
          'FhirUnsignedIntBuilder',
          'FhirUriBuilder',
          'FhirUrlBuilder',
          'FhirUuidBuilder',
          'AddressBuilder',
          'AgeBuilder',
          'AnnotationBuilder',
          'AttachmentBuilder',
          'CodeableConceptBuilder',
          'CodeableReferenceBuilder',
          'CodingBuilder',
          'ContactPointBuilder',
          'CountBuilder',
          'DistanceBuilder',
          'FhirDurationBuilder',
          'HumanNameBuilder',
          'IdentifierBuilder',
          'MoneyBuilder',
          'PeriodBuilder',
          'QuantityBuilder',
          'RangeBuilder',
          'RatioBuilder',
          'RatioRangeBuilder',
          'ReferenceBuilder',
          'SampledDataBuilder',
          'SignatureBuilder',
          'TimingBuilder',
          'ContactDetailBuilder',
          'DataRequirementBuilder',
          'FhirExpressionBuilder',
          'ParameterDefinitionBuilder',
          'RelatedArtifactBuilder',
          'TriggerDefinitionBuilder',
          'UsageContextBuilder',
          'AvailabilityBuilder',
          'ExtendedContactDetailBuilder',
          'DosageBuilder',
          'FhirMetaBuilder',
        ];
      case 'valueBase64Binary':
        return ['FhirBase64BinaryBuilder'];
      case 'valueBoolean':
        return ['FhirBooleanBuilder'];
      case 'valueCanonical':
        return ['FhirCanonicalBuilder'];
      case 'valueCode':
        return ['FhirCodeBuilder'];
      case 'valueDate':
        return ['FhirDateBuilder'];
      case 'valueDateTime':
        return ['FhirDateTimeBuilder'];
      case 'valueDecimal':
        return ['FhirDecimalBuilder'];
      case 'valueId':
        return ['FhirIdBuilder'];
      case 'valueInstant':
        return ['FhirInstantBuilder'];
      case 'valueInteger':
        return ['FhirIntegerBuilder'];
      case 'valueInteger64':
        return ['FhirInteger64Builder'];
      case 'valueMarkdown':
        return ['FhirMarkdownBuilder'];
      case 'valueOid':
        return ['FhirOidBuilder'];
      case 'valuePositiveInt':
        return ['FhirPositiveIntBuilder'];
      case 'valueString':
        return ['FhirStringBuilder'];
      case 'valueTime':
        return ['FhirTimeBuilder'];
      case 'valueUnsignedInt':
        return ['FhirUnsignedIntBuilder'];
      case 'valueUri':
        return ['FhirUriBuilder'];
      case 'valueUrl':
        return ['FhirUrlBuilder'];
      case 'valueUuid':
        return ['FhirUuidBuilder'];
      case 'valueAddress':
        return ['AddressBuilder'];
      case 'valueAge':
        return ['AgeBuilder'];
      case 'valueAnnotation':
        return ['AnnotationBuilder'];
      case 'valueAttachment':
        return ['AttachmentBuilder'];
      case 'valueCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'valueCodeableReference':
        return ['CodeableReferenceBuilder'];
      case 'valueCoding':
        return ['CodingBuilder'];
      case 'valueContactPoint':
        return ['ContactPointBuilder'];
      case 'valueCount':
        return ['CountBuilder'];
      case 'valueDistance':
        return ['DistanceBuilder'];
      case 'valueDuration':
        return ['FhirDurationBuilder'];
      case 'valueHumanName':
        return ['HumanNameBuilder'];
      case 'valueIdentifier':
        return ['IdentifierBuilder'];
      case 'valueMoney':
        return ['MoneyBuilder'];
      case 'valuePeriod':
        return ['PeriodBuilder'];
      case 'valueQuantity':
        return ['QuantityBuilder'];
      case 'valueRange':
        return ['RangeBuilder'];
      case 'valueRatio':
        return ['RatioBuilder'];
      case 'valueRatioRange':
        return ['RatioRangeBuilder'];
      case 'valueReference':
        return ['ReferenceBuilder'];
      case 'valueSampledData':
        return ['SampledDataBuilder'];
      case 'valueSignature':
        return ['SignatureBuilder'];
      case 'valueTiming':
        return ['TimingBuilder'];
      case 'valueContactDetail':
        return ['ContactDetailBuilder'];
      case 'valueDataRequirement':
        return ['DataRequirementBuilder'];
      case 'valueExpression':
        return ['FhirExpressionBuilder'];
      case 'valueParameterDefinition':
        return ['ParameterDefinitionBuilder'];
      case 'valueRelatedArtifact':
        return ['RelatedArtifactBuilder'];
      case 'valueTriggerDefinition':
        return ['TriggerDefinitionBuilder'];
      case 'valueUsageContext':
        return ['UsageContextBuilder'];
      case 'valueAvailability':
        return ['AvailabilityBuilder'];
      case 'valueExtendedContactDetail':
        return ['ExtendedContactDetailBuilder'];
      case 'valueDosage':
        return ['DosageBuilder'];
      case 'valueMeta':
        return ['FhirMetaBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [TransportOutputBuilder]
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
      case 'valueBase64Binary':
        {
          valueX = FhirBase64BinaryBuilder.empty();
          return;
        }
      case 'valueBoolean':
        {
          valueX = FhirBooleanBuilder.empty();
          return;
        }
      case 'valueCanonical':
        {
          valueX = FhirCanonicalBuilder.empty();
          return;
        }
      case 'valueCode':
        {
          valueX = FhirCodeBuilder.empty();
          return;
        }
      case 'valueDate':
        {
          valueX = FhirDateBuilder.empty();
          return;
        }
      case 'valueDateTime':
        {
          valueX = FhirDateTimeBuilder.empty();
          return;
        }
      case 'valueDecimal':
        {
          valueX = FhirDecimalBuilder.empty();
          return;
        }
      case 'valueId':
        {
          valueX = FhirIdBuilder.empty();
          return;
        }
      case 'valueInstant':
        {
          valueX = FhirInstantBuilder.empty();
          return;
        }
      case 'valueInteger':
        {
          valueX = FhirIntegerBuilder.empty();
          return;
        }
      case 'valueInteger64':
        {
          valueX = FhirInteger64Builder.empty();
          return;
        }
      case 'valueMarkdown':
        {
          valueX = FhirMarkdownBuilder.empty();
          return;
        }
      case 'valueOid':
        {
          valueX = FhirOidBuilder.empty();
          return;
        }
      case 'valuePositiveInt':
        {
          valueX = FhirPositiveIntBuilder.empty();
          return;
        }
      case 'valueString':
        {
          valueX = FhirStringBuilder.empty();
          return;
        }
      case 'valueTime':
        {
          valueX = FhirTimeBuilder.empty();
          return;
        }
      case 'valueUnsignedInt':
        {
          valueX = FhirUnsignedIntBuilder.empty();
          return;
        }
      case 'valueUri':
        {
          valueX = FhirUriBuilder.empty();
          return;
        }
      case 'valueUrl':
        {
          valueX = FhirUrlBuilder.empty();
          return;
        }
      case 'valueUuid':
        {
          valueX = FhirUuidBuilder.empty();
          return;
        }
      case 'valueAddress':
        {
          valueX = AddressBuilder.empty();
          return;
        }
      case 'valueAge':
        {
          valueX = AgeBuilder.empty();
          return;
        }
      case 'valueAnnotation':
        {
          valueX = AnnotationBuilder.empty();
          return;
        }
      case 'valueAttachment':
        {
          valueX = AttachmentBuilder.empty();
          return;
        }
      case 'valueCodeableConcept':
        {
          valueX = CodeableConceptBuilder.empty();
          return;
        }
      case 'valueCodeableReference':
        {
          valueX = CodeableReferenceBuilder.empty();
          return;
        }
      case 'valueCoding':
        {
          valueX = CodingBuilder.empty();
          return;
        }
      case 'valueContactPoint':
        {
          valueX = ContactPointBuilder.empty();
          return;
        }
      case 'valueCount':
        {
          valueX = CountBuilder.empty();
          return;
        }
      case 'valueDistance':
        {
          valueX = DistanceBuilder.empty();
          return;
        }
      case 'valueDuration':
        {
          valueX = FhirDurationBuilder.empty();
          return;
        }
      case 'valueHumanName':
        {
          valueX = HumanNameBuilder.empty();
          return;
        }
      case 'valueIdentifier':
        {
          valueX = IdentifierBuilder.empty();
          return;
        }
      case 'valueMoney':
        {
          valueX = MoneyBuilder.empty();
          return;
        }
      case 'valuePeriod':
        {
          valueX = PeriodBuilder.empty();
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
      case 'valueRatio':
        {
          valueX = RatioBuilder.empty();
          return;
        }
      case 'valueRatioRange':
        {
          valueX = RatioRangeBuilder.empty();
          return;
        }
      case 'valueReference':
        {
          valueX = ReferenceBuilder.empty();
          return;
        }
      case 'valueSampledData':
        {
          valueX = SampledDataBuilder.empty();
          return;
        }
      case 'valueSignature':
        {
          valueX = SignatureBuilder.empty();
          return;
        }
      case 'valueTiming':
        {
          valueX = TimingBuilder.empty();
          return;
        }
      case 'valueContactDetail':
        {
          valueX = ContactDetailBuilder.empty();
          return;
        }
      case 'valueDataRequirement':
        {
          valueX = DataRequirementBuilder.empty();
          return;
        }
      case 'valueExpression':
        {
          valueX = FhirExpressionBuilder.empty();
          return;
        }
      case 'valueParameterDefinition':
        {
          valueX = ParameterDefinitionBuilder.empty();
          return;
        }
      case 'valueRelatedArtifact':
        {
          valueX = RelatedArtifactBuilder.empty();
          return;
        }
      case 'valueTriggerDefinition':
        {
          valueX = TriggerDefinitionBuilder.empty();
          return;
        }
      case 'valueUsageContext':
        {
          valueX = UsageContextBuilder.empty();
          return;
        }
      case 'valueAvailability':
        {
          valueX = AvailabilityBuilder.empty();
          return;
        }
      case 'valueExtendedContactDetail':
        {
          valueX = ExtendedContactDetailBuilder.empty();
          return;
        }
      case 'valueDosage':
        {
          valueX = DosageBuilder.empty();
          return;
        }
      case 'valueMeta':
        {
          valueX = FhirMetaBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  TransportOutputBuilder clone() => throw UnimplementedError();
  @override
  TransportOutputBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? type,
    ValueXTransportOutputBuilder? valueX,
    FhirBase64BinaryBuilder? valueBase64Binary,
    FhirBooleanBuilder? valueBoolean,
    FhirCanonicalBuilder? valueCanonical,
    FhirCodeBuilder? valueCode,
    FhirDateBuilder? valueDate,
    FhirDateTimeBuilder? valueDateTime,
    FhirDecimalBuilder? valueDecimal,
    FhirIdBuilder? valueId,
    FhirInstantBuilder? valueInstant,
    FhirIntegerBuilder? valueInteger,
    FhirInteger64Builder? valueInteger64,
    FhirMarkdownBuilder? valueMarkdown,
    FhirOidBuilder? valueOid,
    FhirPositiveIntBuilder? valuePositiveInt,
    FhirStringBuilder? valueString,
    FhirTimeBuilder? valueTime,
    FhirUnsignedIntBuilder? valueUnsignedInt,
    FhirUriBuilder? valueUri,
    FhirUrlBuilder? valueUrl,
    FhirUuidBuilder? valueUuid,
    AddressBuilder? valueAddress,
    AgeBuilder? valueAge,
    AnnotationBuilder? valueAnnotation,
    AttachmentBuilder? valueAttachment,
    CodeableConceptBuilder? valueCodeableConcept,
    CodeableReferenceBuilder? valueCodeableReference,
    CodingBuilder? valueCoding,
    ContactPointBuilder? valueContactPoint,
    CountBuilder? valueCount,
    DistanceBuilder? valueDistance,
    FhirDurationBuilder? valueDuration,
    HumanNameBuilder? valueHumanName,
    IdentifierBuilder? valueIdentifier,
    MoneyBuilder? valueMoney,
    PeriodBuilder? valuePeriod,
    QuantityBuilder? valueQuantity,
    RangeBuilder? valueRange,
    RatioBuilder? valueRatio,
    RatioRangeBuilder? valueRatioRange,
    ReferenceBuilder? valueReference,
    SampledDataBuilder? valueSampledData,
    SignatureBuilder? valueSignature,
    TimingBuilder? valueTiming,
    ContactDetailBuilder? valueContactDetail,
    DataRequirementBuilder? valueDataRequirement,
    FhirExpressionBuilder? valueExpression,
    ParameterDefinitionBuilder? valueParameterDefinition,
    RelatedArtifactBuilder? valueRelatedArtifact,
    TriggerDefinitionBuilder? valueTriggerDefinition,
    UsageContextBuilder? valueUsageContext,
    AvailabilityBuilder? valueAvailability,
    ExtendedContactDetailBuilder? valueExtendedContactDetail,
    DosageBuilder? valueDosage,
    FhirMetaBuilder? valueMeta,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = TransportOutputBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      valueX: valueX ??
          valueBase64Binary ??
          valueBoolean ??
          valueCanonical ??
          valueCode ??
          valueDate ??
          valueDateTime ??
          valueDecimal ??
          valueId ??
          valueInstant ??
          valueInteger ??
          valueInteger64 ??
          valueMarkdown ??
          valueOid ??
          valuePositiveInt ??
          valueString ??
          valueTime ??
          valueUnsignedInt ??
          valueUri ??
          valueUrl ??
          valueUuid ??
          valueAddress ??
          valueAge ??
          valueAnnotation ??
          valueAttachment ??
          valueCodeableConcept ??
          valueCodeableReference ??
          valueCoding ??
          valueContactPoint ??
          valueCount ??
          valueDistance ??
          valueDuration ??
          valueHumanName ??
          valueIdentifier ??
          valueMoney ??
          valuePeriod ??
          valueQuantity ??
          valueRange ??
          valueRatio ??
          valueRatioRange ??
          valueReference ??
          valueSampledData ??
          valueSignature ??
          valueTiming ??
          valueContactDetail ??
          valueDataRequirement ??
          valueExpression ??
          valueParameterDefinition ??
          valueRelatedArtifact ??
          valueTriggerDefinition ??
          valueUsageContext ??
          valueAvailability ??
          valueExtendedContactDetail ??
          valueDosage ??
          valueMeta ??
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
    if (o is! TransportOutputBuilder) {
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
