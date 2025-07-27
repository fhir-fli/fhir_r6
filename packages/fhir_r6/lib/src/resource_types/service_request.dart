import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'service_request.g.dart';

/// [ServiceRequest]
/// A record of a request for service such as diagnostic investigations,
/// treatments, or operations to be performed.
class ServiceRequest extends DomainResource {
  /// Primary constructor for
  /// [ServiceRequest]

  const ServiceRequest({
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
    required this.status,
    required this.intent,
    this.category,
    this.priority,
    this.doNotPerform,
    this.code,
    this.orderDetail,
    QuantityXServiceRequest? quantityX,
    Quantity? quantityQuantity,
    Ratio? quantityRatio,
    Range? quantityRange,
    required this.subject,
    this.focus,
    this.encounter,
    OccurrenceXServiceRequest? occurrenceX,
    FhirDateTime? occurrenceDateTime,
    Period? occurrencePeriod,
    Timing? occurrenceTiming,
    AsNeededXServiceRequest? asNeededX,
    FhirBoolean? asNeededBoolean,
    CodeableConcept? asNeededCodeableConcept,
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
          resourceType: R5ResourceType.ServiceRequest,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ServiceRequest.fromJson(
    Map<String, dynamic> json,
  ) {
    return ServiceRequest(
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
      requisition: JsonParser.parseObject<Identifier>(
        json,
        'requisition',
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
      category: (json['category'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      priority: JsonParser.parsePrimitive<RequestPriority>(
        json,
        'priority',
        RequestPriority.fromJson,
      ),
      doNotPerform: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'doNotPerform',
        FhirBoolean.fromJson,
      ),
      code: JsonParser.parseObject<CodeableReference>(
        json,
        'code',
        CodeableReference.fromJson,
      ),
      orderDetail: (json['orderDetail'] as List<dynamic>?)
          ?.map<ServiceRequestOrderDetail>(
            (v) => ServiceRequestOrderDetail.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      quantityX: JsonParser.parsePolymorphic<QuantityXServiceRequest>(
        json,
        {
          'quantityQuantity': Quantity.fromJson,
          'quantityRatio': Ratio.fromJson,
          'quantityRange': Range.fromJson,
        },
      ),
      subject: JsonParser.parseObject<Reference>(
        json,
        'subject',
        Reference.fromJson,
      )!,
      focus: (json['focus'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      encounter: JsonParser.parseObject<Reference>(
        json,
        'encounter',
        Reference.fromJson,
      ),
      occurrenceX: JsonParser.parsePolymorphic<OccurrenceXServiceRequest>(
        json,
        {
          'occurrenceDateTime': FhirDateTime.fromJson,
          'occurrencePeriod': Period.fromJson,
          'occurrenceTiming': Timing.fromJson,
        },
      ),
      asNeededX: JsonParser.parsePolymorphic<AsNeededXServiceRequest>(
        json,
        {
          'asNeededBoolean': FhirBoolean.fromJson,
          'asNeededCodeableConcept': CodeableConcept.fromJson,
        },
      ),
      authoredOn: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'authoredOn',
        FhirDateTime.fromJson,
      ),
      requester: JsonParser.parseObject<Reference>(
        json,
        'requester',
        Reference.fromJson,
      ),
      performerType: JsonParser.parseObject<CodeableConcept>(
        json,
        'performerType',
        CodeableConcept.fromJson,
      ),
      performer: (json['performer'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      location: (json['location'] as List<dynamic>?)
          ?.map<CodeableReference>(
            (v) => CodeableReference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      reason: (json['reason'] as List<dynamic>?)
          ?.map<CodeableReference>(
            (v) => CodeableReference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      insurance: (json['insurance'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      supportingInfo: (json['supportingInfo'] as List<dynamic>?)
          ?.map<CodeableReference>(
            (v) => CodeableReference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      specimen: (json['specimen'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      bodySite: (json['bodySite'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      bodyStructure: JsonParser.parseObject<Reference>(
        json,
        'bodyStructure',
        Reference.fromJson,
      ),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      patientInstruction: (json['patientInstruction'] as List<dynamic>?)
          ?.map<ServiceRequestPatientInstruction>(
            (v) => ServiceRequestPatientInstruction.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      relevantHistory: (json['relevantHistory'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ServiceRequest]
  /// from a [String] or [YamlMap] object
  factory ServiceRequest.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ServiceRequest.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ServiceRequest.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ServiceRequest '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ServiceRequest]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ServiceRequest.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ServiceRequest.fromJson(json);
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
  final List<Identifier>? identifier;

  /// [instantiatesCanonical]
  /// The URL pointing to a FHIR-defined protocol, guideline, orderset or
  /// other definition that is adhered to in whole or in part by this
  /// ServiceRequest.
  final List<FhirCanonical>? instantiatesCanonical;

  /// [instantiatesUri]
  /// The URL pointing to an externally maintained protocol, guideline,
  /// orderset or other definition that is adhered to in whole or in part by
  /// this ServiceRequest.
  final List<FhirUri>? instantiatesUri;

  /// [basedOn]
  /// Plan/proposal/order fulfilled by this request.
  final List<Reference>? basedOn;

  /// [replaces]
  /// The request takes the place of the referenced completed or terminated
  /// request(s).
  final List<Reference>? replaces;

  /// [requisition]
  /// A shared identifier common to all service requests that were authorized
  /// more or less simultaneously by a single author, representing the
  /// composite or group identifier.
  final Identifier? requisition;

  /// [status]
  /// The status of the order.
  final RequestStatus status;

  /// [intent]
  /// Whether the request is a proposal, plan, an original order or a reflex
  /// order.
  final RequestIntent intent;

  /// [category]
  /// A code that classifies the service for searching, sorting and display
  /// purposes (e.g. "Surgical Procedure").
  final List<CodeableConcept>? category;

  /// [priority]
  /// Indicates how quickly the ServiceRequest should be addressed with
  /// respect to other requests.
  final RequestPriority? priority;

  /// [doNotPerform]
  /// Set this to true if the record is saying that the service/procedure
  /// should NOT be performed.
  final FhirBoolean? doNotPerform;

  /// [code]
  /// A code or reference that identifies a particular service (i.e.,
  /// procedure, diagnostic investigation, or panel of investigations) that
  /// have been requested.
  final CodeableReference? code;

  /// [orderDetail]
  /// Additional details and instructions about the how the services are to
  /// be delivered. For example, and order for a urinary catheter may have an
  /// order detail for an external or indwelling catheter, or an order for a
  /// bandage may require additional instructions specifying how the bandage
  /// should be applied.
  final List<ServiceRequestOrderDetail>? orderDetail;

  /// [quantityX]
  /// An amount of service being requested which can be a quantity ( for
  /// example $1,500 home modification), a ratio ( for example, 20 half day
  /// visits per month), or a range (2.0 to 1.8 Gy per fraction).
  final QuantityXServiceRequest? quantityX;

  /// Getter for [quantityQuantity] as a Quantity
  Quantity? get quantityQuantity => quantityX?.isAs<Quantity>();

  /// Getter for [quantityRatio] as a Ratio
  Ratio? get quantityRatio => quantityX?.isAs<Ratio>();

  /// Getter for [quantityRange] as a Range
  Range? get quantityRange => quantityX?.isAs<Range>();

  /// [subject]
  /// On whom or what the service is to be performed. This is usually a human
  /// patient, but can also be requested on animals, groups of humans or
  /// animals, devices such as dialysis machines, or even locations
  /// (typically for environmental scans).
  final Reference subject;

  /// [focus]
  /// The actual focus of a service request when it is not the subject of
  /// record representing something or someone associated with the subject
  /// such as a spouse, parent, fetus, or donor. The focus of a service
  /// request could also be an existing condition, an intervention, the
  /// subject's diet, another service request on the subject, or a body
  /// structure such as tumor or implanted device.
  final List<Reference>? focus;

  /// [encounter]
  /// An encounter that provides additional information about the healthcare
  /// context in which this request is made.
  final Reference? encounter;

  /// [occurrenceX]
  /// The date/time at which the requested service should occur.
  final OccurrenceXServiceRequest? occurrenceX;

  /// Getter for [occurrenceDateTime] as a FhirDateTime
  FhirDateTime? get occurrenceDateTime => occurrenceX?.isAs<FhirDateTime>();

  /// Getter for [occurrencePeriod] as a Period
  Period? get occurrencePeriod => occurrenceX?.isAs<Period>();

  /// Getter for [occurrenceTiming] as a Timing
  Timing? get occurrenceTiming => occurrenceX?.isAs<Timing>();

  /// [asNeededX]
  /// If a CodeableConcept is present, it indicates the pre-condition for
  /// performing the service. For example "pain", "on flare-up", etc.
  final AsNeededXServiceRequest? asNeededX;

  /// Getter for [asNeededBoolean] as a FhirBoolean
  FhirBoolean? get asNeededBoolean => asNeededX?.isAs<FhirBoolean>();

  /// Getter for [asNeededCodeableConcept] as a CodeableConcept
  CodeableConcept? get asNeededCodeableConcept =>
      asNeededX?.isAs<CodeableConcept>();

  /// [authoredOn]
  /// When the request transitioned to being actionable.
  final FhirDateTime? authoredOn;

  /// [requester]
  /// The individual who initiated the request and has responsibility for its
  /// activation.
  final Reference? requester;

  /// [performerType]
  /// Desired type of performer for doing the requested service.
  final CodeableConcept? performerType;

  /// [performer]
  /// The desired performer for doing the requested service. For example, the
  /// surgeon, dermatopathologist, endoscopist, etc.
  final List<Reference>? performer;

  /// [location]
  /// The preferred location(s) where the procedure should actually happen in
  /// coded or free text form. E.g. at home or nursing day care center.
  final List<CodeableReference>? location;

  /// [reason]
  /// An explanation or justification for why this service is being requested
  /// in coded or textual form. This is often for billing purposes. May
  /// relate to the resources referred to in `supportingInfo`.
  final List<CodeableReference>? reason;

  /// [insurance]
  /// Insurance plans, coverage extensions, pre-authorizations and/or
  /// pre-determinations that may be needed for delivering the requested
  /// service.
  final List<Reference>? insurance;

  /// [supportingInfo]
  /// Additional clinical information about the patient or specimen that may
  /// influence the services or their interpretations. This information
  /// includes diagnosis, clinical findings and other observations. In
  /// laboratory ordering these are typically referred to as "ask at order
  /// entry questions (AOEs)". This includes observations explicitly
  /// requested by the producer (filler) to provide context or supporting
  /// information needed to complete the order. For example, reporting the
  /// amount of inspired oxygen for blood gas measurements.
  final List<CodeableReference>? supportingInfo;

  /// [specimen]
  /// One or more specimens that the laboratory procedure will use.
  final List<Reference>? specimen;

  /// [bodySite]
  /// Anatomic location where the procedure should be performed. This is the
  /// target site.
  final List<CodeableConcept>? bodySite;

  /// [bodyStructure]
  /// Anatomic location where the procedure should be performed. This is the
  /// target site.
  final Reference? bodyStructure;

  /// [note]
  /// Any other notes and comments made about the service request. For
  /// example, internal billing notes.
  final List<Annotation>? note;

  /// [patientInstruction]
  /// Instructions in terms that are understood by the patient or consumer.
  final List<ServiceRequestPatientInstruction>? patientInstruction;

  /// [relevantHistory]
  /// Key events in the history of the request.
  final List<Reference>? relevantHistory;
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
      'requisition',
      requisition,
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
      'category',
      category,
    );
    addField(
      'priority',
      priority,
    );
    addField(
      'doNotPerform',
      doNotPerform,
    );
    addField(
      'code',
      code,
    );
    addField(
      'orderDetail',
      orderDetail,
    );
    if (quantityX != null) {
      final fhirType = quantityX!.fhirType;
      addField(
        'quantity${fhirType.capitalize()}',
        quantityX,
      );
    }

    addField(
      'subject',
      subject,
    );
    addField(
      'focus',
      focus,
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

    if (asNeededX != null) {
      final fhirType = asNeededX!.fhirType;
      addField(
        'asNeeded${fhirType.capitalize()}',
        asNeededX,
      );
    }

    addField(
      'authoredOn',
      authoredOn,
    );
    addField(
      'requester',
      requester,
    );
    addField(
      'performerType',
      performerType,
    );
    addField(
      'performer',
      performer,
    );
    addField(
      'location',
      location,
    );
    addField(
      'reason',
      reason,
    );
    addField(
      'insurance',
      insurance,
    );
    addField(
      'supportingInfo',
      supportingInfo,
    );
    addField(
      'specimen',
      specimen,
    );
    addField(
      'bodySite',
      bodySite,
    );
    addField(
      'bodyStructure',
      bodyStructure,
    );
    addField(
      'note',
      note,
    );
    addField(
      'patientInstruction',
      patientInstruction,
    );
    addField(
      'relevantHistory',
      relevantHistory,
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
      case 'requisition':
        if (requisition != null) {
          fields.add(requisition!);
        }
      case 'status':
        fields.add(status);
      case 'intent':
        fields.add(intent);
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
        fields.add(quantityX!);
      case 'quantityX':
        fields.add(quantityX!);
      case 'quantityQuantity':
        if (quantityX is Quantity) {
          fields.add(quantityX!);
        }
      case 'quantityRatio':
        if (quantityX is Ratio) {
          fields.add(quantityX!);
        }
      case 'quantityRange':
        if (quantityX is Range) {
          fields.add(quantityX!);
        }
      case 'subject':
        fields.add(subject);
      case 'focus':
        if (focus != null) {
          fields.addAll(focus!);
        }
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
      case 'asNeeded':
        fields.add(asNeededX!);
      case 'asNeededX':
        fields.add(asNeededX!);
      case 'asNeededBoolean':
        if (asNeededX is FhirBoolean) {
          fields.add(asNeededX!);
        }
      case 'asNeededCodeableConcept':
        if (asNeededX is CodeableConcept) {
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  ServiceRequest clone() => copyWith();

  /// Copy function for [ServiceRequest]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ServiceRequestCopyWith<ServiceRequest> get copyWith =>
      _$ServiceRequestCopyWithImpl<ServiceRequest>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ServiceRequest) {
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
    if (!listEquals<CodeableConcept>(
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
    if (!listEquals<ServiceRequestOrderDetail>(
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
    if (!listEquals<Reference>(
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
    if (!listEquals<Reference>(
      performer,
      o.performer,
    )) {
      return false;
    }
    if (!listEquals<CodeableReference>(
      location,
      o.location,
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
      insurance,
      o.insurance,
    )) {
      return false;
    }
    if (!listEquals<CodeableReference>(
      supportingInfo,
      o.supportingInfo,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      specimen,
      o.specimen,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
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
    if (!listEquals<Annotation>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!listEquals<ServiceRequestPatientInstruction>(
      patientInstruction,
      o.patientInstruction,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      relevantHistory,
      o.relevantHistory,
    )) {
      return false;
    }
    return true;
  }
}

/// [ServiceRequestOrderDetail]
/// Additional details and instructions about the how the services are to
/// be delivered. For example, and order for a urinary catheter may have an
/// order detail for an external or indwelling catheter, or an order for a
/// bandage may require additional instructions specifying how the bandage
/// should be applied.
class ServiceRequestOrderDetail extends BackboneElement {
  /// Primary constructor for
  /// [ServiceRequestOrderDetail]

  const ServiceRequestOrderDetail({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.parameterFocus,
    required this.parameter,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ServiceRequestOrderDetail.fromJson(
    Map<String, dynamic> json,
  ) {
    return ServiceRequestOrderDetail(
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
      parameterFocus: JsonParser.parseObject<CodeableReference>(
        json,
        'parameterFocus',
        CodeableReference.fromJson,
      ),
      parameter: (json['parameter'] as List<dynamic>)
          .map<ServiceRequestParameter>(
            (v) => ServiceRequestParameter.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ServiceRequestOrderDetail]
  /// from a [String] or [YamlMap] object
  factory ServiceRequestOrderDetail.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ServiceRequestOrderDetail.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ServiceRequestOrderDetail.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ServiceRequestOrderDetail '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ServiceRequestOrderDetail]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ServiceRequestOrderDetail.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ServiceRequestOrderDetail.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ServiceRequestOrderDetail';

  /// [parameterFocus]
  /// Indicates the context of the order details by reference.
  final CodeableReference? parameterFocus;

  /// [parameter]
  /// The parameter details for the service being requested.
  final List<ServiceRequestParameter> parameter;
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
      'parameterFocus',
      parameterFocus,
    );
    addField(
      'parameter',
      parameter,
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
      'parameterFocus',
      'parameter',
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
      case 'parameterFocus':
        if (parameterFocus != null) {
          fields.add(parameterFocus!);
        }
      case 'parameter':
        fields.addAll(parameter);
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
  ServiceRequestOrderDetail clone() => copyWith();

  /// Copy function for [ServiceRequestOrderDetail]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ServiceRequestOrderDetailCopyWith<ServiceRequestOrderDetail> get copyWith =>
      _$ServiceRequestOrderDetailCopyWithImpl<ServiceRequestOrderDetail>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ServiceRequestOrderDetail) {
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
      parameterFocus,
      o.parameterFocus,
    )) {
      return false;
    }
    if (!listEquals<ServiceRequestParameter>(
      parameter,
      o.parameter,
    )) {
      return false;
    }
    return true;
  }
}

/// [ServiceRequestParameter]
/// The parameter details for the service being requested.
class ServiceRequestParameter extends BackboneElement {
  /// Primary constructor for
  /// [ServiceRequestParameter]

  const ServiceRequestParameter({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    required this.valueX,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ServiceRequestParameter.fromJson(
    Map<String, dynamic> json,
  ) {
    return ServiceRequestParameter(
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
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
      )!,
      valueX: JsonParser.parsePolymorphic<ValueXServiceRequestParameter>(
        json,
        {
          'valueQuantity': Quantity.fromJson,
          'valueRatio': Ratio.fromJson,
          'valueRange': Range.fromJson,
          'valueBoolean': FhirBoolean.fromJson,
          'valueCodeableConcept': CodeableConcept.fromJson,
          'valueString': FhirString.fromJson,
          'valuePeriod': Period.fromJson,
        },
      )!,
    );
  }

  /// Deserialize [ServiceRequestParameter]
  /// from a [String] or [YamlMap] object
  factory ServiceRequestParameter.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ServiceRequestParameter.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ServiceRequestParameter.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ServiceRequestParameter '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ServiceRequestParameter]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ServiceRequestParameter.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ServiceRequestParameter.fromJson(json);
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
  final CodeableConcept code;

  /// [valueX]
  /// Indicates a value for the order detail.
  final ValueXServiceRequestParameter valueX;

  /// Getter for [valueQuantity] as a Quantity
  Quantity? get valueQuantity => valueX.isAs<Quantity>();

  /// Getter for [valueRatio] as a Ratio
  Ratio? get valueRatio => valueX.isAs<Ratio>();

  /// Getter for [valueRange] as a Range
  Range? get valueRange => valueX.isAs<Range>();

  /// Getter for [valueBoolean] as a FhirBoolean
  FhirBoolean? get valueBoolean => valueX.isAs<FhirBoolean>();

  /// Getter for [valueCodeableConcept] as a CodeableConcept
  CodeableConcept? get valueCodeableConcept => valueX.isAs<CodeableConcept>();

  /// Getter for [valueString] as a FhirString
  FhirString? get valueString => valueX.isAs<FhirString>();

  /// Getter for [valuePeriod] as a Period
  Period? get valuePeriod => valueX.isAs<Period>();
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
      'code',
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
      case 'code':
        fields.add(code);
      case 'value':
        fields.add(valueX);
      case 'valueX':
        fields.add(valueX);
      case 'valueQuantity':
        if (valueX is Quantity) {
          fields.add(valueX);
        }
      case 'valueRatio':
        if (valueX is Ratio) {
          fields.add(valueX);
        }
      case 'valueRange':
        if (valueX is Range) {
          fields.add(valueX);
        }
      case 'valueBoolean':
        if (valueX is FhirBoolean) {
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
      case 'valuePeriod':
        if (valueX is Period) {
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
  ServiceRequestParameter clone() => copyWith();

  /// Copy function for [ServiceRequestParameter]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ServiceRequestParameterCopyWith<ServiceRequestParameter> get copyWith =>
      _$ServiceRequestParameterCopyWithImpl<ServiceRequestParameter>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ServiceRequestParameter) {
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
    if (!equalsDeepWithNull(
      valueX,
      o.valueX,
    )) {
      return false;
    }
    return true;
  }
}

/// [ServiceRequestPatientInstruction]
/// Instructions in terms that are understood by the patient or consumer.
class ServiceRequestPatientInstruction extends BackboneElement {
  /// Primary constructor for
  /// [ServiceRequestPatientInstruction]

  const ServiceRequestPatientInstruction({
    super.id,
    super.extension_,
    super.modifierExtension,
    InstructionXServiceRequestPatientInstruction? instructionX,
    FhirMarkdown? instructionMarkdown,
    Reference? instructionReference,
    super.disallowExtensions,
  })  : instructionX =
            instructionX ?? instructionMarkdown ?? instructionReference,
        super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ServiceRequestPatientInstruction.fromJson(
    Map<String, dynamic> json,
  ) {
    return ServiceRequestPatientInstruction(
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
      instructionX: JsonParser.parsePolymorphic<
          InstructionXServiceRequestPatientInstruction>(
        json,
        {
          'instructionMarkdown': FhirMarkdown.fromJson,
          'instructionReference': Reference.fromJson,
        },
      ),
    );
  }

  /// Deserialize [ServiceRequestPatientInstruction]
  /// from a [String] or [YamlMap] object
  factory ServiceRequestPatientInstruction.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ServiceRequestPatientInstruction.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ServiceRequestPatientInstruction.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ServiceRequestPatientInstruction '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ServiceRequestPatientInstruction]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ServiceRequestPatientInstruction.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ServiceRequestPatientInstruction.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ServiceRequestPatientInstruction';

  /// [instructionX]
  /// Instructions in terms that are understood by the patient or consumer.
  final InstructionXServiceRequestPatientInstruction? instructionX;

  /// Getter for [instructionMarkdown] as a FhirMarkdown
  FhirMarkdown? get instructionMarkdown => instructionX?.isAs<FhirMarkdown>();

  /// Getter for [instructionReference] as a Reference
  Reference? get instructionReference => instructionX?.isAs<Reference>();
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
    if (instructionX != null) {
      final fhirType = instructionX!.fhirType;
      addField(
        'instruction${fhirType.capitalize()}',
        instructionX,
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
      'instructionX',
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
      case 'instruction':
        fields.add(instructionX!);
      case 'instructionX':
        fields.add(instructionX!);
      case 'instructionMarkdown':
        if (instructionX is FhirMarkdown) {
          fields.add(instructionX!);
        }
      case 'instructionReference':
        if (instructionX is Reference) {
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  ServiceRequestPatientInstruction clone() => copyWith();

  /// Copy function for [ServiceRequestPatientInstruction]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ServiceRequestPatientInstructionCopyWith<ServiceRequestPatientInstruction>
      get copyWith => _$ServiceRequestPatientInstructionCopyWithImpl<
              ServiceRequestPatientInstruction>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ServiceRequestPatientInstruction) {
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
      instructionX,
      o.instructionX,
    )) {
      return false;
    }
    return true;
  }
}
