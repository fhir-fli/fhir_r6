import 'dart:convert';
import 'package:fhir_r5/fhir_r5.dart'
    show
        R5ResourceType,
        ServiceRequest,
        ServiceRequestOrderDetail,
        ServiceRequestParameter,
        ServiceRequestPatientInstruction,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r5_mapping/fhir_r5_mapping.dart';
import 'package:yaml/yaml.dart';

/// [ServiceRequestBuilder]
/// A record of a request for service such as diagnostic investigations,
/// treatments, or operations to be performed.
class ServiceRequestBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [ServiceRequestBuilder]

  ServiceRequestBuilder({
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
    this.requisition,
    this.status,
    this.intent,
    this.category,
    this.priority,
    this.doNotPerform,
    this.code,
    this.orderDetail,
    QuantityXServiceRequestBuilder? quantityX,
    QuantityBuilder? quantityQuantity,
    RatioBuilder? quantityRatio,
    RangeBuilder? quantityRange,
    this.subject,
    this.focus,
    this.encounter,
    OccurrenceXServiceRequestBuilder? occurrenceX,
    FhirDateTimeBuilder? occurrenceDateTime,
    PeriodBuilder? occurrencePeriod,
    TimingBuilder? occurrenceTiming,
    AsNeededXServiceRequestBuilder? asNeededX,
    FhirBooleanBuilder? asNeededBoolean,
    CodeableConceptBuilder? asNeededCodeableConcept,
    this.authoredOn,
    this.requester,
    this.performerType,
    this.performer,
    this.location,
    this.reason,
    this.insurance,
    this.supportingInfo,
    this.specimen,
    this.bodySite,
    this.bodyStructure,
    this.note,
    this.patientInstruction,
    this.relevantHistory,
  })  : quantityX =
            quantityX ?? quantityQuantity ?? quantityRatio ?? quantityRange,
        occurrenceX = occurrenceX ??
            occurrenceDateTime ??
            occurrencePeriod ??
            occurrenceTiming,
        asNeededX = asNeededX ?? asNeededBoolean ?? asNeededCodeableConcept,
        super(
          objectPath: 'ServiceRequest',
          resourceType: R5ResourceType.ServiceRequest,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ServiceRequestBuilder.empty() => ServiceRequestBuilder(
        status: RequestStatusBuilder.values.first,
        intent: RequestIntentBuilder.values.first,
        subject: ReferenceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ServiceRequestBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ServiceRequest';
    return ServiceRequestBuilder(
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
      requisition: JsonParser.parseObject<IdentifierBuilder>(
        json,
        'requisition',
        IdentifierBuilder.fromJson,
        '$objectPath.requisition',
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
      priority: JsonParser.parsePrimitive<RequestPriorityBuilder>(
        json,
        'priority',
        RequestPriorityBuilder.fromJson,
        '$objectPath.priority',
      ),
      doNotPerform: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'doNotPerform',
        FhirBooleanBuilder.fromJson,
        '$objectPath.doNotPerform',
      ),
      code: JsonParser.parseObject<CodeableReferenceBuilder>(
        json,
        'code',
        CodeableReferenceBuilder.fromJson,
        '$objectPath.code',
      ),
      orderDetail: (json['orderDetail'] as List<dynamic>?)
          ?.map<ServiceRequestOrderDetailBuilder>(
            (v) => ServiceRequestOrderDetailBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.orderDetail',
              },
            ),
          )
          .toList(),
      quantityX: JsonParser.parsePolymorphic<QuantityXServiceRequestBuilder>(
        json,
        {
          'quantityQuantity': QuantityBuilder.fromJson,
          'quantityRatio': RatioBuilder.fromJson,
          'quantityRange': RangeBuilder.fromJson,
        },
        objectPath,
      ),
      subject: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'subject',
        ReferenceBuilder.fromJson,
        '$objectPath.subject',
      ),
      focus: (json['focus'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.focus',
              },
            ),
          )
          .toList(),
      encounter: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'encounter',
        ReferenceBuilder.fromJson,
        '$objectPath.encounter',
      ),
      occurrenceX:
          JsonParser.parsePolymorphic<OccurrenceXServiceRequestBuilder>(
        json,
        {
          'occurrenceDateTime': FhirDateTimeBuilder.fromJson,
          'occurrencePeriod': PeriodBuilder.fromJson,
          'occurrenceTiming': TimingBuilder.fromJson,
        },
        objectPath,
      ),
      asNeededX: JsonParser.parsePolymorphic<AsNeededXServiceRequestBuilder>(
        json,
        {
          'asNeededBoolean': FhirBooleanBuilder.fromJson,
          'asNeededCodeableConcept': CodeableConceptBuilder.fromJson,
        },
        objectPath,
      ),
      authoredOn: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'authoredOn',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.authoredOn',
      ),
      requester: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'requester',
        ReferenceBuilder.fromJson,
        '$objectPath.requester',
      ),
      performerType: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'performerType',
        CodeableConceptBuilder.fromJson,
        '$objectPath.performerType',
      ),
      performer: (json['performer'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.performer',
              },
            ),
          )
          .toList(),
      location: (json['location'] as List<dynamic>?)
          ?.map<CodeableReferenceBuilder>(
            (v) => CodeableReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.location',
              },
            ),
          )
          .toList(),
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
      supportingInfo: (json['supportingInfo'] as List<dynamic>?)
          ?.map<CodeableReferenceBuilder>(
            (v) => CodeableReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.supportingInfo',
              },
            ),
          )
          .toList(),
      specimen: (json['specimen'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.specimen',
              },
            ),
          )
          .toList(),
      bodySite: (json['bodySite'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.bodySite',
              },
            ),
          )
          .toList(),
      bodyStructure: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'bodyStructure',
        ReferenceBuilder.fromJson,
        '$objectPath.bodyStructure',
      ),
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
      patientInstruction: (json['patientInstruction'] as List<dynamic>?)
          ?.map<ServiceRequestPatientInstructionBuilder>(
            (v) => ServiceRequestPatientInstructionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.patientInstruction',
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
    );
  }

  /// Deserialize [ServiceRequestBuilder]
  /// from a [String] or [YamlMap] object
  factory ServiceRequestBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ServiceRequestBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ServiceRequestBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ServiceRequestBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ServiceRequestBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ServiceRequestBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ServiceRequestBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ServiceRequest';

  /// [identifier]
  /// Identifiers assigned to this order instance by the orderer and/or the
  /// receiver and/or order fulfiller.
  List<IdentifierBuilder>? identifier;

  /// [instantiatesCanonical]
  /// The URL pointing to a FHIR-defined protocol, guideline, orderset or
  /// other definition that is adhered to in whole or in part by this
  /// ServiceRequest.
  List<FhirCanonicalBuilder>? instantiatesCanonical;

  /// [instantiatesUri]
  /// The URL pointing to an externally maintained protocol, guideline,
  /// orderset or other definition that is adhered to in whole or in part by
  /// this ServiceRequest.
  List<FhirUriBuilder>? instantiatesUri;

  /// [basedOn]
  /// Plan/proposal/order fulfilled by this request.
  List<ReferenceBuilder>? basedOn;

  /// [replaces]
  /// The request takes the place of the referenced completed or terminated
  /// request(s).
  List<ReferenceBuilder>? replaces;

  /// [requisition]
  /// A shared identifier common to all service requests that were authorized
  /// more or less simultaneously by a single author, representing the
  /// composite or group identifier.
  IdentifierBuilder? requisition;

  /// [status]
  /// The status of the order.
  RequestStatusBuilder? status;

  /// [intent]
  /// Whether the request is a proposal, plan, an original order or a reflex
  /// order.
  RequestIntentBuilder? intent;

  /// [category]
  /// A code that classifies the service for searching, sorting and display
  /// purposes (e.g. "Surgical Procedure").
  List<CodeableConceptBuilder>? category;

  /// [priority]
  /// Indicates how quickly the ServiceRequest should be addressed with
  /// respect to other requests.
  RequestPriorityBuilder? priority;

  /// [doNotPerform]
  /// Set this to true if the record is saying that the service/procedure
  /// should NOT be performed.
  FhirBooleanBuilder? doNotPerform;

  /// [code]
  /// A code or reference that identifies a particular service (i.e.,
  /// procedure, diagnostic investigation, or panel of investigations) that
  /// have been requested.
  CodeableReferenceBuilder? code;

  /// [orderDetail]
  /// Additional details and instructions about the how the services are to
  /// be delivered. For example, and order for a urinary catheter may have an
  /// order detail for an external or indwelling catheter, or an order for a
  /// bandage may require additional instructions specifying how the bandage
  /// should be applied.
  List<ServiceRequestOrderDetailBuilder>? orderDetail;

  /// [quantityX]
  /// An amount of service being requested which can be a quantity ( for
  /// example $1,500 home modification), a ratio ( for example, 20 half day
  /// visits per month), or a range (2.0 to 1.8 Gy per fraction).
  QuantityXServiceRequestBuilder? quantityX;

  /// Getter for [quantityQuantity] as a QuantityBuilder
  QuantityBuilder? get quantityQuantity => quantityX?.isAs<QuantityBuilder>();

  /// Getter for [quantityRatio] as a RatioBuilder
  RatioBuilder? get quantityRatio => quantityX?.isAs<RatioBuilder>();

  /// Getter for [quantityRange] as a RangeBuilder
  RangeBuilder? get quantityRange => quantityX?.isAs<RangeBuilder>();

  /// [subject]
  /// On whom or what the service is to be performed. This is usually a human
  /// patient, but can also be requested on animals, groups of humans or
  /// animals, devices such as dialysis machines, or even locations
  /// (typically for environmental scans).
  ReferenceBuilder? subject;

  /// [focus]
  /// The actual focus of a service request when it is not the subject of
  /// record representing something or someone associated with the subject
  /// such as a spouse, parent, fetus, or donor. The focus of a service
  /// request could also be an existing condition, an intervention, the
  /// subject's diet, another service request on the subject, or a body
  /// structure such as tumor or implanted device.
  List<ReferenceBuilder>? focus;

  /// [encounter]
  /// An encounter that provides additional information about the healthcare
  /// context in which this request is made.
  ReferenceBuilder? encounter;

  /// [occurrenceX]
  /// The date/time at which the requested service should occur.
  OccurrenceXServiceRequestBuilder? occurrenceX;

  /// Getter for [occurrenceDateTime] as a FhirDateTimeBuilder
  FhirDateTimeBuilder? get occurrenceDateTime =>
      occurrenceX?.isAs<FhirDateTimeBuilder>();

  /// Getter for [occurrencePeriod] as a PeriodBuilder
  PeriodBuilder? get occurrencePeriod => occurrenceX?.isAs<PeriodBuilder>();

  /// Getter for [occurrenceTiming] as a TimingBuilder
  TimingBuilder? get occurrenceTiming => occurrenceX?.isAs<TimingBuilder>();

  /// [asNeededX]
  /// If a CodeableConcept is present, it indicates the pre-condition for
  /// performing the service. For example "pain", "on flare-up", etc.
  AsNeededXServiceRequestBuilder? asNeededX;

  /// Getter for [asNeededBoolean] as a FhirBooleanBuilder
  FhirBooleanBuilder? get asNeededBoolean =>
      asNeededX?.isAs<FhirBooleanBuilder>();

  /// Getter for [asNeededCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get asNeededCodeableConcept =>
      asNeededX?.isAs<CodeableConceptBuilder>();

  /// [authoredOn]
  /// When the request transitioned to being actionable.
  FhirDateTimeBuilder? authoredOn;

  /// [requester]
  /// The individual who initiated the request and has responsibility for its
  /// activation.
  ReferenceBuilder? requester;

  /// [performerType]
  /// Desired type of performer for doing the requested service.
  CodeableConceptBuilder? performerType;

  /// [performer]
  /// The desired performer for doing the requested service. For example, the
  /// surgeon, dermatopathologist, endoscopist, etc.
  List<ReferenceBuilder>? performer;

  /// [location]
  /// The preferred location(s) where the procedure should actually happen in
  /// coded or free text form. E.g. at home or nursing day care center.
  List<CodeableReferenceBuilder>? location;

  /// [reason]
  /// An explanation or justification for why this service is being requested
  /// in coded or textual form. This is often for billing purposes. May
  /// relate to the resources referred to in `supportingInfo`.
  List<CodeableReferenceBuilder>? reason;

  /// [insurance]
  /// Insurance plans, coverage extensions, pre-authorizations and/or
  /// pre-determinations that may be needed for delivering the requested
  /// service.
  List<ReferenceBuilder>? insurance;

  /// [supportingInfo]
  /// Additional clinical information about the patient or specimen that may
  /// influence the services or their interpretations. This information
  /// includes diagnosis, clinical findings and other observations. In
  /// laboratory ordering these are typically referred to as "ask at order
  /// entry questions (AOEs)". This includes observations explicitly
  /// requested by the producer (filler) to provide context or supporting
  /// information needed to complete the order. For example, reporting the
  /// amount of inspired oxygen for blood gas measurements.
  List<CodeableReferenceBuilder>? supportingInfo;

  /// [specimen]
  /// One or more specimens that the laboratory procedure will use.
  List<ReferenceBuilder>? specimen;

  /// [bodySite]
  /// Anatomic location where the procedure should be performed. This is the
  /// target site.
  List<CodeableConceptBuilder>? bodySite;

  /// [bodyStructure]
  /// Anatomic location where the procedure should be performed. This is the
  /// target site.
  ReferenceBuilder? bodyStructure;

  /// [note]
  /// Any other notes and comments made about the service request. For
  /// example, internal billing notes.
  List<AnnotationBuilder>? note;

  /// [patientInstruction]
  /// Instructions in terms that are understood by the patient or consumer.
  List<ServiceRequestPatientInstructionBuilder>? patientInstruction;

  /// [relevantHistory]
  /// Key events in the history of the request.
  List<ReferenceBuilder>? relevantHistory;

  /// Converts a [ServiceRequestBuilder]
  /// to [ServiceRequest]
  @override
  ServiceRequest build() => ServiceRequest.fromJson(toJson());

  /// Converts a [ServiceRequestBuilder]
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
    addField('requisition', requisition);
    addField('status', status);
    addField('intent', intent);
    addField('category', category);
    addField('priority', priority);
    addField('doNotPerform', doNotPerform);
    addField('code', code);
    addField('orderDetail', orderDetail);
    if (quantityX != null) {
      final fhirType = quantityX!.fhirType;
      addField('quantity${fhirType.capitalizeFirstLetter()}', quantityX);
    }

    addField('subject', subject);
    addField('focus', focus);
    addField('encounter', encounter);
    if (occurrenceX != null) {
      final fhirType = occurrenceX!.fhirType;
      addField('occurrence${fhirType.capitalizeFirstLetter()}', occurrenceX);
    }

    if (asNeededX != null) {
      final fhirType = asNeededX!.fhirType;
      addField('asNeeded${fhirType.capitalizeFirstLetter()}', asNeededX);
    }

    addField('authoredOn', authoredOn);
    addField('requester', requester);
    addField('performerType', performerType);
    addField('performer', performer);
    addField('location', location);
    addField('reason', reason);
    addField('insurance', insurance);
    addField('supportingInfo', supportingInfo);
    addField('specimen', specimen);
    addField('bodySite', bodySite);
    addField('bodyStructure', bodyStructure);
    addField('note', note);
    addField('patientInstruction', patientInstruction);
    addField('relevantHistory', relevantHistory);
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
      'requisition',
      'status',
      'intent',
      'category',
      'priority',
      'doNotPerform',
      'code',
      'orderDetail',
      'quantityX',
      'subject',
      'focus',
      'encounter',
      'occurrenceX',
      'asNeededX',
      'authoredOn',
      'requester',
      'performerType',
      'performer',
      'location',
      'reason',
      'insurance',
      'supportingInfo',
      'specimen',
      'bodySite',
      'bodyStructure',
      'note',
      'patientInstruction',
      'relevantHistory',
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
      case 'requisition':
        if (requisition != null) {
          fields.add(requisition!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'intent':
        if (intent != null) {
          fields.add(intent!);
        }
      case 'category':
        if (category != null) {
          fields.addAll(category!);
        }
      case 'priority':
        if (priority != null) {
          fields.add(priority!);
        }
      case 'doNotPerform':
        if (doNotPerform != null) {
          fields.add(doNotPerform!);
        }
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'orderDetail':
        if (orderDetail != null) {
          fields.addAll(orderDetail!);
        }
      case 'quantity':
        if (quantityX != null) {
          fields.add(quantityX!);
        }
      case 'quantityX':
        if (quantityX != null) {
          fields.add(quantityX!);
        }
      case 'quantityQuantity':
        if (quantityX is QuantityBuilder) {
          fields.add(quantityX!);
        }
      case 'quantityRatio':
        if (quantityX is RatioBuilder) {
          fields.add(quantityX!);
        }
      case 'quantityRange':
        if (quantityX is RangeBuilder) {
          fields.add(quantityX!);
        }
      case 'subject':
        if (subject != null) {
          fields.add(subject!);
        }
      case 'focus':
        if (focus != null) {
          fields.addAll(focus!);
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
      case 'asNeeded':
        if (asNeededX != null) {
          fields.add(asNeededX!);
        }
      case 'asNeededX':
        if (asNeededX != null) {
          fields.add(asNeededX!);
        }
      case 'asNeededBoolean':
        if (asNeededX is FhirBooleanBuilder) {
          fields.add(asNeededX!);
        }
      case 'asNeededCodeableConcept':
        if (asNeededX is CodeableConceptBuilder) {
          fields.add(asNeededX!);
        }
      case 'authoredOn':
        if (authoredOn != null) {
          fields.add(authoredOn!);
        }
      case 'requester':
        if (requester != null) {
          fields.add(requester!);
        }
      case 'performerType':
        if (performerType != null) {
          fields.add(performerType!);
        }
      case 'performer':
        if (performer != null) {
          fields.addAll(performer!);
        }
      case 'location':
        if (location != null) {
          fields.addAll(location!);
        }
      case 'reason':
        if (reason != null) {
          fields.addAll(reason!);
        }
      case 'insurance':
        if (insurance != null) {
          fields.addAll(insurance!);
        }
      case 'supportingInfo':
        if (supportingInfo != null) {
          fields.addAll(supportingInfo!);
        }
      case 'specimen':
        if (specimen != null) {
          fields.addAll(specimen!);
        }
      case 'bodySite':
        if (bodySite != null) {
          fields.addAll(bodySite!);
        }
      case 'bodyStructure':
        if (bodyStructure != null) {
          fields.add(bodyStructure!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      case 'patientInstruction':
        if (patientInstruction != null) {
          fields.addAll(patientInstruction!);
        }
      case 'relevantHistory':
        if (relevantHistory != null) {
          fields.addAll(relevantHistory!);
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
      case 'requisition':
        {
          if (child is IdentifierBuilder) {
            requisition = child;
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
      case 'doNotPerform':
        {
          if (child is FhirBooleanBuilder) {
            doNotPerform = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                doNotPerform = converted;
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
          if (child is CodeableReferenceBuilder) {
            code = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'orderDetail':
        {
          if (child is List<ServiceRequestOrderDetailBuilder>) {
            // Replace or create new list
            orderDetail = child;
            return;
          } else if (child is ServiceRequestOrderDetailBuilder) {
            // Add single element to existing list or create new list
            orderDetail = [
              ...(orderDetail ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'quantity':
      case 'quantityX':
        {
          if (child is QuantityXServiceRequestBuilder) {
            quantityX = child;
            return;
          } else {
            if (child is QuantityBuilder) {
              quantityX = child;
              return;
            }
            if (child is RatioBuilder) {
              quantityX = child;
              return;
            }
            if (child is RangeBuilder) {
              quantityX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'quantityQuantity':
        {
          if (child is QuantityBuilder) {
            quantityX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'quantityRatio':
        {
          if (child is RatioBuilder) {
            quantityX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'quantityRange':
        {
          if (child is RangeBuilder) {
            quantityX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'subject':
        {
          if (child is ReferenceBuilder) {
            subject = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'focus':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            focus = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            focus = [
              ...(focus ?? []),
              child,
            ];
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
          if (child is OccurrenceXServiceRequestBuilder) {
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
      case 'asNeeded':
      case 'asNeededX':
        {
          if (child is AsNeededXServiceRequestBuilder) {
            asNeededX = child;
            return;
          } else {
            if (child is FhirBooleanBuilder) {
              asNeededX = child;
              return;
            }
            if (child is CodeableConceptBuilder) {
              asNeededX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'asNeededBoolean':
        {
          if (child is FhirBooleanBuilder) {
            asNeededX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'asNeededCodeableConcept':
        {
          if (child is CodeableConceptBuilder) {
            asNeededX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
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
          if (child is CodeableConceptBuilder) {
            performerType = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'performer':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            performer = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            performer = [
              ...(performer ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'location':
        {
          if (child is List<CodeableReferenceBuilder>) {
            // Replace or create new list
            location = child;
            return;
          } else if (child is CodeableReferenceBuilder) {
            // Add single element to existing list or create new list
            location = [
              ...(location ?? []),
              child,
            ];
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
      case 'supportingInfo':
        {
          if (child is List<CodeableReferenceBuilder>) {
            // Replace or create new list
            supportingInfo = child;
            return;
          } else if (child is CodeableReferenceBuilder) {
            // Add single element to existing list or create new list
            supportingInfo = [
              ...(supportingInfo ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'specimen':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            specimen = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            specimen = [
              ...(specimen ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'bodySite':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            bodySite = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            bodySite = [
              ...(bodySite ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'bodyStructure':
        {
          if (child is ReferenceBuilder) {
            bodyStructure = child;
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
      case 'patientInstruction':
        {
          if (child is List<ServiceRequestPatientInstructionBuilder>) {
            // Replace or create new list
            patientInstruction = child;
            return;
          } else if (child is ServiceRequestPatientInstructionBuilder) {
            // Add single element to existing list or create new list
            patientInstruction = [
              ...(patientInstruction ?? []),
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
      case 'requisition':
        return ['IdentifierBuilder'];
      case 'status':
        return ['FhirCodeEnumBuilder'];
      case 'intent':
        return ['FhirCodeEnumBuilder'];
      case 'category':
        return ['CodeableConceptBuilder'];
      case 'priority':
        return ['FhirCodeEnumBuilder'];
      case 'doNotPerform':
        return ['FhirBooleanBuilder'];
      case 'code':
        return ['CodeableReferenceBuilder'];
      case 'orderDetail':
        return ['ServiceRequestOrderDetailBuilder'];
      case 'quantity':
      case 'quantityX':
        return [
          'QuantityBuilder',
          'RatioBuilder',
          'RangeBuilder',
        ];
      case 'quantityQuantity':
        return ['QuantityBuilder'];
      case 'quantityRatio':
        return ['RatioBuilder'];
      case 'quantityRange':
        return ['RangeBuilder'];
      case 'subject':
        return ['ReferenceBuilder'];
      case 'focus':
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
      case 'asNeeded':
      case 'asNeededX':
        return [
          'FhirBooleanBuilder',
          'CodeableConceptBuilder',
        ];
      case 'asNeededBoolean':
        return ['FhirBooleanBuilder'];
      case 'asNeededCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'authoredOn':
        return ['FhirDateTimeBuilder'];
      case 'requester':
        return ['ReferenceBuilder'];
      case 'performerType':
        return ['CodeableConceptBuilder'];
      case 'performer':
        return ['ReferenceBuilder'];
      case 'location':
        return ['CodeableReferenceBuilder'];
      case 'reason':
        return ['CodeableReferenceBuilder'];
      case 'insurance':
        return ['ReferenceBuilder'];
      case 'supportingInfo':
        return ['CodeableReferenceBuilder'];
      case 'specimen':
        return ['ReferenceBuilder'];
      case 'bodySite':
        return ['CodeableConceptBuilder'];
      case 'bodyStructure':
        return ['ReferenceBuilder'];
      case 'note':
        return ['AnnotationBuilder'];
      case 'patientInstruction':
        return ['ServiceRequestPatientInstructionBuilder'];
      case 'relevantHistory':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ServiceRequestBuilder]
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
      case 'requisition':
        {
          requisition = IdentifierBuilder.empty();
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
      case 'category':
        {
          category = <CodeableConceptBuilder>[];
          return;
        }
      case 'priority':
        {
          priority = RequestPriorityBuilder.empty();
          return;
        }
      case 'doNotPerform':
        {
          doNotPerform = FhirBooleanBuilder.empty();
          return;
        }
      case 'code':
        {
          code = CodeableReferenceBuilder.empty();
          return;
        }
      case 'orderDetail':
        {
          orderDetail = <ServiceRequestOrderDetailBuilder>[];
          return;
        }
      case 'quantity':
      case 'quantityX':
      case 'quantityQuantity':
        {
          quantityX = QuantityBuilder.empty();
          return;
        }
      case 'quantityRatio':
        {
          quantityX = RatioBuilder.empty();
          return;
        }
      case 'quantityRange':
        {
          quantityX = RangeBuilder.empty();
          return;
        }
      case 'subject':
        {
          subject = ReferenceBuilder.empty();
          return;
        }
      case 'focus':
        {
          focus = <ReferenceBuilder>[];
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
      case 'asNeeded':
      case 'asNeededX':
      case 'asNeededBoolean':
        {
          asNeededX = FhirBooleanBuilder.empty();
          return;
        }
      case 'asNeededCodeableConcept':
        {
          asNeededX = CodeableConceptBuilder.empty();
          return;
        }
      case 'authoredOn':
        {
          authoredOn = FhirDateTimeBuilder.empty();
          return;
        }
      case 'requester':
        {
          requester = ReferenceBuilder.empty();
          return;
        }
      case 'performerType':
        {
          performerType = CodeableConceptBuilder.empty();
          return;
        }
      case 'performer':
        {
          performer = <ReferenceBuilder>[];
          return;
        }
      case 'location':
        {
          location = <CodeableReferenceBuilder>[];
          return;
        }
      case 'reason':
        {
          reason = <CodeableReferenceBuilder>[];
          return;
        }
      case 'insurance':
        {
          insurance = <ReferenceBuilder>[];
          return;
        }
      case 'supportingInfo':
        {
          supportingInfo = <CodeableReferenceBuilder>[];
          return;
        }
      case 'specimen':
        {
          specimen = <ReferenceBuilder>[];
          return;
        }
      case 'bodySite':
        {
          bodySite = <CodeableConceptBuilder>[];
          return;
        }
      case 'bodyStructure':
        {
          bodyStructure = ReferenceBuilder.empty();
          return;
        }
      case 'note':
        {
          note = <AnnotationBuilder>[];
          return;
        }
      case 'patientInstruction':
        {
          patientInstruction = <ServiceRequestPatientInstructionBuilder>[];
          return;
        }
      case 'relevantHistory':
        {
          relevantHistory = <ReferenceBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ServiceRequestBuilder clone() => throw UnimplementedError();
  @override
  ServiceRequestBuilder copyWith({
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
    IdentifierBuilder? requisition,
    RequestStatusBuilder? status,
    RequestIntentBuilder? intent,
    List<CodeableConceptBuilder>? category,
    RequestPriorityBuilder? priority,
    FhirBooleanBuilder? doNotPerform,
    CodeableReferenceBuilder? code,
    List<ServiceRequestOrderDetailBuilder>? orderDetail,
    QuantityXServiceRequestBuilder? quantityX,
    ReferenceBuilder? subject,
    List<ReferenceBuilder>? focus,
    ReferenceBuilder? encounter,
    OccurrenceXServiceRequestBuilder? occurrenceX,
    AsNeededXServiceRequestBuilder? asNeededX,
    FhirDateTimeBuilder? authoredOn,
    ReferenceBuilder? requester,
    CodeableConceptBuilder? performerType,
    List<ReferenceBuilder>? performer,
    List<CodeableReferenceBuilder>? location,
    List<CodeableReferenceBuilder>? reason,
    List<ReferenceBuilder>? insurance,
    List<CodeableReferenceBuilder>? supportingInfo,
    List<ReferenceBuilder>? specimen,
    List<CodeableConceptBuilder>? bodySite,
    ReferenceBuilder? bodyStructure,
    List<AnnotationBuilder>? note,
    List<ServiceRequestPatientInstructionBuilder>? patientInstruction,
    List<ReferenceBuilder>? relevantHistory,
    QuantityBuilder? quantityQuantity,
    RatioBuilder? quantityRatio,
    RangeBuilder? quantityRange,
    FhirDateTimeBuilder? occurrenceDateTime,
    PeriodBuilder? occurrencePeriod,
    TimingBuilder? occurrenceTiming,
    FhirBooleanBuilder? asNeededBoolean,
    CodeableConceptBuilder? asNeededCodeableConcept,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = ServiceRequestBuilder(
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
      requisition: requisition ?? this.requisition,
      status: status ?? this.status,
      intent: intent ?? this.intent,
      category: category ?? this.category,
      priority: priority ?? this.priority,
      doNotPerform: doNotPerform ?? this.doNotPerform,
      code: code ?? this.code,
      orderDetail: orderDetail ?? this.orderDetail,
      quantityX: quantityX ??
          quantityQuantity ??
          quantityRatio ??
          quantityRange ??
          this.quantityX,
      subject: subject ?? this.subject,
      focus: focus ?? this.focus,
      encounter: encounter ?? this.encounter,
      occurrenceX: occurrenceX ??
          occurrenceDateTime ??
          occurrencePeriod ??
          occurrenceTiming ??
          this.occurrenceX,
      asNeededX: asNeededX ??
          asNeededBoolean ??
          asNeededCodeableConcept ??
          this.asNeededX,
      authoredOn: authoredOn ?? this.authoredOn,
      requester: requester ?? this.requester,
      performerType: performerType ?? this.performerType,
      performer: performer ?? this.performer,
      location: location ?? this.location,
      reason: reason ?? this.reason,
      insurance: insurance ?? this.insurance,
      supportingInfo: supportingInfo ?? this.supportingInfo,
      specimen: specimen ?? this.specimen,
      bodySite: bodySite ?? this.bodySite,
      bodyStructure: bodyStructure ?? this.bodyStructure,
      note: note ?? this.note,
      patientInstruction: patientInstruction ?? this.patientInstruction,
      relevantHistory: relevantHistory ?? this.relevantHistory,
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
    if (o is! ServiceRequestBuilder) {
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
      requisition,
      o.requisition,
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
    if (!listEquals<CodeableConceptBuilder>(
      category,
      o.category,
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
      doNotPerform,
      o.doNotPerform,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      code,
      o.code,
    )) {
      return false;
    }
    if (!listEquals<ServiceRequestOrderDetailBuilder>(
      orderDetail,
      o.orderDetail,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      quantityX,
      o.quantityX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      subject,
      o.subject,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      focus,
      o.focus,
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
      asNeededX,
      o.asNeededX,
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
      requester,
      o.requester,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      performerType,
      o.performerType,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      performer,
      o.performer,
    )) {
      return false;
    }
    if (!listEquals<CodeableReferenceBuilder>(
      location,
      o.location,
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
      insurance,
      o.insurance,
    )) {
      return false;
    }
    if (!listEquals<CodeableReferenceBuilder>(
      supportingInfo,
      o.supportingInfo,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      specimen,
      o.specimen,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      bodySite,
      o.bodySite,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      bodyStructure,
      o.bodyStructure,
    )) {
      return false;
    }
    if (!listEquals<AnnotationBuilder>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!listEquals<ServiceRequestPatientInstructionBuilder>(
      patientInstruction,
      o.patientInstruction,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      relevantHistory,
      o.relevantHistory,
    )) {
      return false;
    }
    return true;
  }
}

/// [ServiceRequestOrderDetailBuilder]
/// Additional details and instructions about the how the services are to
/// be delivered. For example, and order for a urinary catheter may have an
/// order detail for an external or indwelling catheter, or an order for a
/// bandage may require additional instructions specifying how the bandage
/// should be applied.
class ServiceRequestOrderDetailBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ServiceRequestOrderDetailBuilder]

  ServiceRequestOrderDetailBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.parameterFocus,
    this.parameter,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ServiceRequest.orderDetail',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ServiceRequestOrderDetailBuilder.empty() =>
      ServiceRequestOrderDetailBuilder(
        parameter: <ServiceRequestParameterBuilder>[],
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ServiceRequestOrderDetailBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ServiceRequest.orderDetail';
    return ServiceRequestOrderDetailBuilder(
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
      parameterFocus: JsonParser.parseObject<CodeableReferenceBuilder>(
        json,
        'parameterFocus',
        CodeableReferenceBuilder.fromJson,
        '$objectPath.parameterFocus',
      ),
      parameter: (json['parameter'] as List<dynamic>?)
          ?.map<ServiceRequestParameterBuilder>(
            (v) => ServiceRequestParameterBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.parameter',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ServiceRequestOrderDetailBuilder]
  /// from a [String] or [YamlMap] object
  factory ServiceRequestOrderDetailBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ServiceRequestOrderDetailBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ServiceRequestOrderDetailBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ServiceRequestOrderDetailBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ServiceRequestOrderDetailBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ServiceRequestOrderDetailBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ServiceRequestOrderDetailBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ServiceRequestOrderDetail';

  /// [parameterFocus]
  /// Indicates the context of the order details by reference.
  CodeableReferenceBuilder? parameterFocus;

  /// [parameter]
  /// The parameter details for the service being requested.
  List<ServiceRequestParameterBuilder>? parameter;

  /// Converts a [ServiceRequestOrderDetailBuilder]
  /// to [ServiceRequestOrderDetail]
  @override
  ServiceRequestOrderDetail build() =>
      ServiceRequestOrderDetail.fromJson(toJson());

  /// Converts a [ServiceRequestOrderDetailBuilder]
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
    addField('parameterFocus', parameterFocus);
    addField('parameter', parameter);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'parameterFocus',
      'parameter',
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
      case 'parameterFocus':
        if (parameterFocus != null) {
          fields.add(parameterFocus!);
        }
      case 'parameter':
        if (parameter != null) {
          fields.addAll(parameter!);
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
      case 'parameterFocus':
        {
          if (child is CodeableReferenceBuilder) {
            parameterFocus = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'parameter':
        {
          if (child is List<ServiceRequestParameterBuilder>) {
            // Replace or create new list
            parameter = child;
            return;
          } else if (child is ServiceRequestParameterBuilder) {
            // Add single element to existing list or create new list
            parameter = [
              ...(parameter ?? []),
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
      case 'parameterFocus':
        return ['CodeableReferenceBuilder'];
      case 'parameter':
        return ['ServiceRequestParameterBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ServiceRequestOrderDetailBuilder]
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
      case 'parameterFocus':
        {
          parameterFocus = CodeableReferenceBuilder.empty();
          return;
        }
      case 'parameter':
        {
          parameter = <ServiceRequestParameterBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ServiceRequestOrderDetailBuilder clone() => throw UnimplementedError();
  @override
  ServiceRequestOrderDetailBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableReferenceBuilder? parameterFocus,
    List<ServiceRequestParameterBuilder>? parameter,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ServiceRequestOrderDetailBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      parameterFocus: parameterFocus ?? this.parameterFocus,
      parameter: parameter ?? this.parameter,
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
    if (o is! ServiceRequestOrderDetailBuilder) {
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
      parameterFocus,
      o.parameterFocus,
    )) {
      return false;
    }
    if (!listEquals<ServiceRequestParameterBuilder>(
      parameter,
      o.parameter,
    )) {
      return false;
    }
    return true;
  }
}

/// [ServiceRequestParameterBuilder]
/// The parameter details for the service being requested.
class ServiceRequestParameterBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ServiceRequestParameterBuilder]

  ServiceRequestParameterBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    ValueXServiceRequestParameterBuilder? valueX,
    QuantityBuilder? valueQuantity,
    RatioBuilder? valueRatio,
    RangeBuilder? valueRange,
    FhirBooleanBuilder? valueBoolean,
    CodeableConceptBuilder? valueCodeableConcept,
    FhirStringBuilder? valueString,
    PeriodBuilder? valuePeriod,
    super.disallowExtensions,
  })  : valueX = valueX ??
            valueQuantity ??
            valueRatio ??
            valueRange ??
            valueBoolean ??
            valueCodeableConcept ??
            valueString ??
            valuePeriod,
        super(
          objectPath: 'ServiceRequest.orderDetail.parameter',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ServiceRequestParameterBuilder.empty() =>
      ServiceRequestParameterBuilder(
        code: CodeableConceptBuilder.empty(),
        valueX: QuantityBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ServiceRequestParameterBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ServiceRequest.orderDetail.parameter';
    return ServiceRequestParameterBuilder(
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
      code: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'code',
        CodeableConceptBuilder.fromJson,
        '$objectPath.code',
      ),
      valueX: JsonParser.parsePolymorphic<ValueXServiceRequestParameterBuilder>(
        json,
        {
          'valueQuantity': QuantityBuilder.fromJson,
          'valueRatio': RatioBuilder.fromJson,
          'valueRange': RangeBuilder.fromJson,
          'valueBoolean': FhirBooleanBuilder.fromJson,
          'valueCodeableConcept': CodeableConceptBuilder.fromJson,
          'valueString': FhirStringBuilder.fromJson,
          'valuePeriod': PeriodBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [ServiceRequestParameterBuilder]
  /// from a [String] or [YamlMap] object
  factory ServiceRequestParameterBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ServiceRequestParameterBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ServiceRequestParameterBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ServiceRequestParameterBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ServiceRequestParameterBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ServiceRequestParameterBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ServiceRequestParameterBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ServiceRequestParameter';

  /// [code]
  /// A value representing the additional detail or instructions for the
  /// order (e.g., catheter insertion, body elevation, descriptive device
  /// configuration and/or setting instructions).
  CodeableConceptBuilder? code;

  /// [valueX]
  /// Indicates a value for the order detail.
  ValueXServiceRequestParameterBuilder? valueX;

  /// Getter for [valueQuantity] as a QuantityBuilder
  QuantityBuilder? get valueQuantity => valueX?.isAs<QuantityBuilder>();

  /// Getter for [valueRatio] as a RatioBuilder
  RatioBuilder? get valueRatio => valueX?.isAs<RatioBuilder>();

  /// Getter for [valueRange] as a RangeBuilder
  RangeBuilder? get valueRange => valueX?.isAs<RangeBuilder>();

  /// Getter for [valueBoolean] as a FhirBooleanBuilder
  FhirBooleanBuilder? get valueBoolean => valueX?.isAs<FhirBooleanBuilder>();

  /// Getter for [valueCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get valueCodeableConcept =>
      valueX?.isAs<CodeableConceptBuilder>();

  /// Getter for [valueString] as a FhirStringBuilder
  FhirStringBuilder? get valueString => valueX?.isAs<FhirStringBuilder>();

  /// Getter for [valuePeriod] as a PeriodBuilder
  PeriodBuilder? get valuePeriod => valueX?.isAs<PeriodBuilder>();

  /// Converts a [ServiceRequestParameterBuilder]
  /// to [ServiceRequestParameter]
  @override
  ServiceRequestParameter build() => ServiceRequestParameter.fromJson(toJson());

  /// Converts a [ServiceRequestParameterBuilder]
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
      case 'valueQuantity':
        if (valueX is QuantityBuilder) {
          fields.add(valueX!);
        }
      case 'valueRatio':
        if (valueX is RatioBuilder) {
          fields.add(valueX!);
        }
      case 'valueRange':
        if (valueX is RangeBuilder) {
          fields.add(valueX!);
        }
      case 'valueBoolean':
        if (valueX is FhirBooleanBuilder) {
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
      case 'valuePeriod':
        if (valueX is PeriodBuilder) {
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
          if (child is ValueXServiceRequestParameterBuilder) {
            valueX = child;
            return;
          } else {
            if (child is QuantityBuilder) {
              valueX = child;
              return;
            }
            if (child is RatioBuilder) {
              valueX = child;
              return;
            }
            if (child is RangeBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirBooleanBuilder) {
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
            if (child is PeriodBuilder) {
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
      case 'valueRatio':
        {
          if (child is RatioBuilder) {
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
      case 'valueBoolean':
        {
          if (child is FhirBooleanBuilder) {
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
      case 'valuePeriod':
        {
          if (child is PeriodBuilder) {
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
      case 'code':
        return ['CodeableConceptBuilder'];
      case 'value':
      case 'valueX':
        return [
          'QuantityBuilder',
          'RatioBuilder',
          'RangeBuilder',
          'FhirBooleanBuilder',
          'CodeableConceptBuilder',
          'FhirStringBuilder',
          'PeriodBuilder',
        ];
      case 'valueQuantity':
        return ['QuantityBuilder'];
      case 'valueRatio':
        return ['RatioBuilder'];
      case 'valueRange':
        return ['RangeBuilder'];
      case 'valueBoolean':
        return ['FhirBooleanBuilder'];
      case 'valueCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'valueString':
        return ['FhirStringBuilder'];
      case 'valuePeriod':
        return ['PeriodBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ServiceRequestParameterBuilder]
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
          code = CodeableConceptBuilder.empty();
          return;
        }
      case 'value':
      case 'valueX':
      case 'valueQuantity':
        {
          valueX = QuantityBuilder.empty();
          return;
        }
      case 'valueRatio':
        {
          valueX = RatioBuilder.empty();
          return;
        }
      case 'valueRange':
        {
          valueX = RangeBuilder.empty();
          return;
        }
      case 'valueBoolean':
        {
          valueX = FhirBooleanBuilder.empty();
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
      case 'valuePeriod':
        {
          valueX = PeriodBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ServiceRequestParameterBuilder clone() => throw UnimplementedError();
  @override
  ServiceRequestParameterBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? code,
    ValueXServiceRequestParameterBuilder? valueX,
    QuantityBuilder? valueQuantity,
    RatioBuilder? valueRatio,
    RangeBuilder? valueRange,
    FhirBooleanBuilder? valueBoolean,
    CodeableConceptBuilder? valueCodeableConcept,
    FhirStringBuilder? valueString,
    PeriodBuilder? valuePeriod,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ServiceRequestParameterBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      valueX: valueX ??
          valueQuantity ??
          valueRatio ??
          valueRange ??
          valueBoolean ??
          valueCodeableConcept ??
          valueString ??
          valuePeriod ??
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
    if (o is! ServiceRequestParameterBuilder) {
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
    if (!equalsDeepWithNull(
      valueX,
      o.valueX,
    )) {
      return false;
    }
    return true;
  }
}

/// [ServiceRequestPatientInstructionBuilder]
/// Instructions in terms that are understood by the patient or consumer.
class ServiceRequestPatientInstructionBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ServiceRequestPatientInstructionBuilder]

  ServiceRequestPatientInstructionBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    InstructionXServiceRequestPatientInstructionBuilder? instructionX,
    FhirMarkdownBuilder? instructionMarkdown,
    ReferenceBuilder? instructionReference,
    super.disallowExtensions,
  })  : instructionX =
            instructionX ?? instructionMarkdown ?? instructionReference,
        super(
          objectPath: 'ServiceRequest.patientInstruction',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ServiceRequestPatientInstructionBuilder.empty() =>
      ServiceRequestPatientInstructionBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ServiceRequestPatientInstructionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ServiceRequest.patientInstruction';
    return ServiceRequestPatientInstructionBuilder(
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
      instructionX: JsonParser.parsePolymorphic<
          InstructionXServiceRequestPatientInstructionBuilder>(
        json,
        {
          'instructionMarkdown': FhirMarkdownBuilder.fromJson,
          'instructionReference': ReferenceBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [ServiceRequestPatientInstructionBuilder]
  /// from a [String] or [YamlMap] object
  factory ServiceRequestPatientInstructionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ServiceRequestPatientInstructionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ServiceRequestPatientInstructionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ServiceRequestPatientInstructionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ServiceRequestPatientInstructionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ServiceRequestPatientInstructionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ServiceRequestPatientInstructionBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ServiceRequestPatientInstruction';

  /// [instructionX]
  /// Instructions in terms that are understood by the patient or consumer.
  InstructionXServiceRequestPatientInstructionBuilder? instructionX;

  /// Getter for [instructionMarkdown] as a FhirMarkdownBuilder
  FhirMarkdownBuilder? get instructionMarkdown =>
      instructionX?.isAs<FhirMarkdownBuilder>();

  /// Getter for [instructionReference] as a ReferenceBuilder
  ReferenceBuilder? get instructionReference =>
      instructionX?.isAs<ReferenceBuilder>();

  /// Converts a [ServiceRequestPatientInstructionBuilder]
  /// to [ServiceRequestPatientInstruction]
  @override
  ServiceRequestPatientInstruction build() =>
      ServiceRequestPatientInstruction.fromJson(toJson());

  /// Converts a [ServiceRequestPatientInstructionBuilder]
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
    if (instructionX != null) {
      final fhirType = instructionX!.fhirType;
      addField('instruction${fhirType.capitalizeFirstLetter()}', instructionX);
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
      'instructionX',
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
      case 'instruction':
        if (instructionX != null) {
          fields.add(instructionX!);
        }
      case 'instructionX':
        if (instructionX != null) {
          fields.add(instructionX!);
        }
      case 'instructionMarkdown':
        if (instructionX is FhirMarkdownBuilder) {
          fields.add(instructionX!);
        }
      case 'instructionReference':
        if (instructionX is ReferenceBuilder) {
          fields.add(instructionX!);
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
      case 'instruction':
      case 'instructionX':
        {
          if (child is InstructionXServiceRequestPatientInstructionBuilder) {
            instructionX = child;
            return;
          } else {
            if (child is FhirMarkdownBuilder) {
              instructionX = child;
              return;
            }
            if (child is ReferenceBuilder) {
              instructionX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'instructionMarkdown':
        {
          if (child is FhirMarkdownBuilder) {
            instructionX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'instructionReference':
        {
          if (child is ReferenceBuilder) {
            instructionX = child;
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
      case 'instruction':
      case 'instructionX':
        return [
          'FhirMarkdownBuilder',
          'ReferenceBuilder',
        ];
      case 'instructionMarkdown':
        return ['FhirMarkdownBuilder'];
      case 'instructionReference':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ServiceRequestPatientInstructionBuilder]
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
      case 'instruction':
      case 'instructionX':
      case 'instructionMarkdown':
        {
          instructionX = FhirMarkdownBuilder.empty();
          return;
        }
      case 'instructionReference':
        {
          instructionX = ReferenceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ServiceRequestPatientInstructionBuilder clone() => throw UnimplementedError();
  @override
  ServiceRequestPatientInstructionBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    InstructionXServiceRequestPatientInstructionBuilder? instructionX,
    FhirMarkdownBuilder? instructionMarkdown,
    ReferenceBuilder? instructionReference,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ServiceRequestPatientInstructionBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      instructionX: instructionX ??
          instructionMarkdown ??
          instructionReference ??
          this.instructionX,
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
    if (o is! ServiceRequestPatientInstructionBuilder) {
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
      instructionX,
      o.instructionX,
    )) {
      return false;
    }
    return true;
  }
}
