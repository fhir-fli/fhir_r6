import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart'
    show
        ClaimResponse,
        ClaimResponseAddItem,
        ClaimResponseAdjudication,
        ClaimResponseBodySite,
        ClaimResponseDetail,
        ClaimResponseDetail1,
        ClaimResponseError,
        ClaimResponseEvent,
        ClaimResponseInsurance,
        ClaimResponseItem,
        ClaimResponsePayment,
        ClaimResponseProcessNote,
        ClaimResponseReviewOutcome,
        ClaimResponseSubDetail,
        ClaimResponseSubDetail1,
        ClaimResponseTotal,
        R6ResourceType,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r6_mapping/fhir_r6_mapping.dart';
import 'package:yaml/yaml.dart';

/// [ClaimResponseBuilder]
/// This resource provides the adjudication details from the processing of
/// a Claim resource.
class ClaimResponseBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [ClaimResponseBuilder]

  ClaimResponseBuilder({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.traceNumber,
    this.status,
    this.type,
    this.subType,
    this.use,
    this.patient,
    this.created,
    this.insurer,
    this.requestor,
    this.request,
    this.outcome,
    this.decision,
    this.disposition,
    this.preAuthRef,
    this.preAuthPeriod,
    this.event,
    this.payeeType,
    this.encounter,
    this.diagnosisRelatedGroup,
    this.item,
    this.addItem,
    this.adjudication,
    this.total,
    this.payment,
    this.fundsReserve,
    this.formCode,
    this.form,
    this.processNote,
    this.communicationRequest,
    this.insurance,
    this.error,
  }) : super(
          objectPath: 'ClaimResponse',
          resourceType: R6ResourceType.ClaimResponse,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ClaimResponseBuilder.empty() => ClaimResponseBuilder(
        status: FinancialResourceStatusCodesBuilder.values.first,
        type: CodeableConceptBuilder.empty(),
        use: UseBuilder.values.first,
        patient: ReferenceBuilder.empty(),
        created: FhirDateTimeBuilder.empty(),
        outcome: ClaimProcessingCodesBuilder.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimResponseBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ClaimResponse';
    return ClaimResponseBuilder(
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
      traceNumber: (json['traceNumber'] as List<dynamic>?)
          ?.map<IdentifierBuilder>(
            (v) => IdentifierBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.traceNumber',
              },
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<FinancialResourceStatusCodesBuilder>(
        json,
        'status',
        FinancialResourceStatusCodesBuilder.fromJson,
        '$objectPath.status',
      ),
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      subType: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'subType',
        CodeableConceptBuilder.fromJson,
        '$objectPath.subType',
      ),
      use: JsonParser.parsePrimitive<UseBuilder>(
        json,
        'use',
        UseBuilder.fromJson,
        '$objectPath.use',
      ),
      patient: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'patient',
        ReferenceBuilder.fromJson,
        '$objectPath.patient',
      ),
      created: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'created',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.created',
      ),
      insurer: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'insurer',
        ReferenceBuilder.fromJson,
        '$objectPath.insurer',
      ),
      requestor: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'requestor',
        ReferenceBuilder.fromJson,
        '$objectPath.requestor',
      ),
      request: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'request',
        ReferenceBuilder.fromJson,
        '$objectPath.request',
      ),
      outcome: JsonParser.parsePrimitive<ClaimProcessingCodesBuilder>(
        json,
        'outcome',
        ClaimProcessingCodesBuilder.fromJson,
        '$objectPath.outcome',
      ),
      decision: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'decision',
        CodeableConceptBuilder.fromJson,
        '$objectPath.decision',
      ),
      disposition: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'disposition',
        FhirStringBuilder.fromJson,
        '$objectPath.disposition',
      ),
      preAuthRef: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'preAuthRef',
        FhirStringBuilder.fromJson,
        '$objectPath.preAuthRef',
      ),
      preAuthPeriod: JsonParser.parseObject<PeriodBuilder>(
        json,
        'preAuthPeriod',
        PeriodBuilder.fromJson,
        '$objectPath.preAuthPeriod',
      ),
      event: (json['event'] as List<dynamic>?)
          ?.map<ClaimResponseEventBuilder>(
            (v) => ClaimResponseEventBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.event',
              },
            ),
          )
          .toList(),
      payeeType: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'payeeType',
        CodeableConceptBuilder.fromJson,
        '$objectPath.payeeType',
      ),
      encounter: (json['encounter'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.encounter',
              },
            ),
          )
          .toList(),
      diagnosisRelatedGroup: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'diagnosisRelatedGroup',
        CodeableConceptBuilder.fromJson,
        '$objectPath.diagnosisRelatedGroup',
      ),
      item: (json['item'] as List<dynamic>?)
          ?.map<ClaimResponseItemBuilder>(
            (v) => ClaimResponseItemBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.item',
              },
            ),
          )
          .toList(),
      addItem: (json['addItem'] as List<dynamic>?)
          ?.map<ClaimResponseAddItemBuilder>(
            (v) => ClaimResponseAddItemBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.addItem',
              },
            ),
          )
          .toList(),
      adjudication: (json['adjudication'] as List<dynamic>?)
          ?.map<ClaimResponseAdjudicationBuilder>(
            (v) => ClaimResponseAdjudicationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.adjudication',
              },
            ),
          )
          .toList(),
      total: (json['total'] as List<dynamic>?)
          ?.map<ClaimResponseTotalBuilder>(
            (v) => ClaimResponseTotalBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.total',
              },
            ),
          )
          .toList(),
      payment: JsonParser.parseObject<ClaimResponsePaymentBuilder>(
        json,
        'payment',
        ClaimResponsePaymentBuilder.fromJson,
        '$objectPath.payment',
      ),
      fundsReserve: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'fundsReserve',
        CodeableConceptBuilder.fromJson,
        '$objectPath.fundsReserve',
      ),
      formCode: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'formCode',
        CodeableConceptBuilder.fromJson,
        '$objectPath.formCode',
      ),
      form: JsonParser.parseObject<AttachmentBuilder>(
        json,
        'form',
        AttachmentBuilder.fromJson,
        '$objectPath.form',
      ),
      processNote: (json['processNote'] as List<dynamic>?)
          ?.map<ClaimResponseProcessNoteBuilder>(
            (v) => ClaimResponseProcessNoteBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.processNote',
              },
            ),
          )
          .toList(),
      communicationRequest: (json['communicationRequest'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.communicationRequest',
              },
            ),
          )
          .toList(),
      insurance: (json['insurance'] as List<dynamic>?)
          ?.map<ClaimResponseInsuranceBuilder>(
            (v) => ClaimResponseInsuranceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.insurance',
              },
            ),
          )
          .toList(),
      error: (json['error'] as List<dynamic>?)
          ?.map<ClaimResponseErrorBuilder>(
            (v) => ClaimResponseErrorBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.error',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ClaimResponseBuilder]
  /// from a [String] or [YamlMap] object
  factory ClaimResponseBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClaimResponseBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClaimResponseBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClaimResponseBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClaimResponseBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimResponseBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ClaimResponseBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ClaimResponse';

  /// [identifier]
  /// A unique identifier assigned to this claim response.
  List<IdentifierBuilder>? identifier;

  /// [traceNumber]
  /// Trace number for tracking purposes. May be defined at the jurisdiction
  /// level or between trading partners.
  List<IdentifierBuilder>? traceNumber;

  /// [status]
  /// The status of the resource instance.
  FinancialResourceStatusCodesBuilder? status;

  /// [type]
  /// A finer grained suite of claim type codes which may convey additional
  /// information such as Inpatient vs Outpatient and/or a specialty service.
  CodeableConceptBuilder? type;

  /// [subType]
  /// A finer grained suite of claim type codes which may convey additional
  /// information such as Inpatient vs Outpatient and/or a specialty service.
  CodeableConceptBuilder? subType;

  /// [use]
  /// A code to indicate whether the nature of the request is: Claim - A
  /// request to an Insurer to adjudicate the supplied charges for health
  /// care goods and services under the identified policy and to pay the
  /// determined Benefit amount, if any; Preauthorization - A request to an
  /// Insurer to adjudicate the supplied proposed future charges for health
  /// care goods and services under the identified policy and to approve the
  /// services and provide the expected benefit amounts and potentially to
  /// reserve funds to pay the benefits when Claims for the indicated
  /// services are later submitted; or, Pre-determination - A request to an
  /// Insurer to adjudicate the supplied 'what if' charges for health care
  /// goods and services under the identified policy and report back what the
  /// Benefit payable would be had the services actually been provided.
  UseBuilder? use;

  /// [patient]
  /// The party to whom the professional services and/or products have been
  /// supplied or are being considered and for whom actual for facast
  /// reimbursement is sought.
  ReferenceBuilder? patient;

  /// [created]
  /// The date this resource was created.
  FhirDateTimeBuilder? created;

  /// [insurer]
  /// The party responsible for authorization, adjudication and
  /// reimbursement.
  ReferenceBuilder? insurer;

  /// [requestor]
  /// The provider which is responsible for the claim, predetermination or
  /// preauthorization.
  ReferenceBuilder? requestor;

  /// [request]
  /// Original request resource reference.
  ReferenceBuilder? request;

  /// [outcome]
  /// The outcome of the claim, predetermination, or preauthorization
  /// processing.
  ClaimProcessingCodesBuilder? outcome;

  /// [decision]
  /// The result of the claim, predetermination, or preauthorization
  /// adjudication.
  CodeableConceptBuilder? decision;

  /// [disposition]
  /// A human readable description of the status of the adjudication.
  FhirStringBuilder? disposition;

  /// [preAuthRef]
  /// Reference from the Insurer which is used in later communications which
  /// refers to this adjudication.
  FhirStringBuilder? preAuthRef;

  /// [preAuthPeriod]
  /// The time frame during which this authorization is effective.
  PeriodBuilder? preAuthPeriod;

  /// [event]
  /// Information code for an event with a corresponding date or period.
  List<ClaimResponseEventBuilder>? event;

  /// [payeeType]
  /// Type of Party to be reimbursed: subscriber, provider, other.
  CodeableConceptBuilder? payeeType;

  /// [encounter]
  /// Healthcare encounters related to this claim.
  List<ReferenceBuilder>? encounter;

  /// [diagnosisRelatedGroup]
  /// A package billing code or bundle code used to group products and
  /// services to a particular health condition (such as heart attack) which
  /// is based on a predetermined grouping code system.
  CodeableConceptBuilder? diagnosisRelatedGroup;

  /// [item]
  /// A claim line. Either a simple (a product or service) or a 'group' of
  /// details which can also be a simple items or groups of sub-details.
  List<ClaimResponseItemBuilder>? item;

  /// [addItem]
  /// The first-tier service adjudications for payor added product or service
  /// lines.
  List<ClaimResponseAddItemBuilder>? addItem;

  /// [adjudication]
  /// The adjudication results which are presented at the header level rather
  /// than at the line-item or add-item levels.
  List<ClaimResponseAdjudicationBuilder>? adjudication;

  /// [total]
  /// Categorized monetary totals for the adjudication.
  List<ClaimResponseTotalBuilder>? total;

  /// [payment]
  /// Payment details for the adjudication of the claim.
  ClaimResponsePaymentBuilder? payment;

  /// [fundsReserve]
  /// A code, used only on a response to a preauthorization, to indicate
  /// whether the benefits payable have been reserved and for whom.
  CodeableConceptBuilder? fundsReserve;

  /// [formCode]
  /// A code for the form to be used for printing the content.
  CodeableConceptBuilder? formCode;

  /// [form]
  /// The actual form, by reference or inclusion, for printing the content or
  /// an EOB.
  AttachmentBuilder? form;

  /// [processNote]
  /// A note that describes or explains adjudication results in a human
  /// readable form.
  List<ClaimResponseProcessNoteBuilder>? processNote;

  /// [communicationRequest]
  /// Request for additional supporting or authorizing information.
  List<ReferenceBuilder>? communicationRequest;

  /// [insurance]
  /// Financial instruments for reimbursement for the health care products
  /// and services specified on the claim.
  List<ClaimResponseInsuranceBuilder>? insurance;

  /// [error]
  /// Errors encountered during the processing of the adjudication.
  List<ClaimResponseErrorBuilder>? error;

  /// Converts a [ClaimResponseBuilder]
  /// to [ClaimResponse]
  @override
  ClaimResponse build() => ClaimResponse.fromJson(toJson());

  /// Converts a [ClaimResponseBuilder]
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
    addField('traceNumber', traceNumber);
    addField('status', status);
    addField('type', type);
    addField('subType', subType);
    addField('use', use);
    addField('patient', patient);
    addField('created', created);
    addField('insurer', insurer);
    addField('requestor', requestor);
    addField('request', request);
    addField('outcome', outcome);
    addField('decision', decision);
    addField('disposition', disposition);
    addField('preAuthRef', preAuthRef);
    addField('preAuthPeriod', preAuthPeriod);
    addField('event', event);
    addField('payeeType', payeeType);
    addField('encounter', encounter);
    addField('diagnosisRelatedGroup', diagnosisRelatedGroup);
    addField('item', item);
    addField('addItem', addItem);
    addField('adjudication', adjudication);
    addField('total', total);
    addField('payment', payment);
    addField('fundsReserve', fundsReserve);
    addField('formCode', formCode);
    addField('form', form);
    addField('processNote', processNote);
    addField('communicationRequest', communicationRequest);
    addField('insurance', insurance);
    addField('error', error);
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
      'traceNumber',
      'status',
      'type',
      'subType',
      'use',
      'patient',
      'created',
      'insurer',
      'requestor',
      'request',
      'outcome',
      'decision',
      'disposition',
      'preAuthRef',
      'preAuthPeriod',
      'event',
      'payeeType',
      'encounter',
      'diagnosisRelatedGroup',
      'item',
      'addItem',
      'adjudication',
      'total',
      'payment',
      'fundsReserve',
      'formCode',
      'form',
      'processNote',
      'communicationRequest',
      'insurance',
      'error',
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
      case 'traceNumber':
        if (traceNumber != null) {
          fields.addAll(traceNumber!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'subType':
        if (subType != null) {
          fields.add(subType!);
        }
      case 'use':
        if (use != null) {
          fields.add(use!);
        }
      case 'patient':
        if (patient != null) {
          fields.add(patient!);
        }
      case 'created':
        if (created != null) {
          fields.add(created!);
        }
      case 'insurer':
        if (insurer != null) {
          fields.add(insurer!);
        }
      case 'requestor':
        if (requestor != null) {
          fields.add(requestor!);
        }
      case 'request':
        if (request != null) {
          fields.add(request!);
        }
      case 'outcome':
        if (outcome != null) {
          fields.add(outcome!);
        }
      case 'decision':
        if (decision != null) {
          fields.add(decision!);
        }
      case 'disposition':
        if (disposition != null) {
          fields.add(disposition!);
        }
      case 'preAuthRef':
        if (preAuthRef != null) {
          fields.add(preAuthRef!);
        }
      case 'preAuthPeriod':
        if (preAuthPeriod != null) {
          fields.add(preAuthPeriod!);
        }
      case 'event':
        if (event != null) {
          fields.addAll(event!);
        }
      case 'payeeType':
        if (payeeType != null) {
          fields.add(payeeType!);
        }
      case 'encounter':
        if (encounter != null) {
          fields.addAll(encounter!);
        }
      case 'diagnosisRelatedGroup':
        if (diagnosisRelatedGroup != null) {
          fields.add(diagnosisRelatedGroup!);
        }
      case 'item':
        if (item != null) {
          fields.addAll(item!);
        }
      case 'addItem':
        if (addItem != null) {
          fields.addAll(addItem!);
        }
      case 'adjudication':
        if (adjudication != null) {
          fields.addAll(adjudication!);
        }
      case 'total':
        if (total != null) {
          fields.addAll(total!);
        }
      case 'payment':
        if (payment != null) {
          fields.add(payment!);
        }
      case 'fundsReserve':
        if (fundsReserve != null) {
          fields.add(fundsReserve!);
        }
      case 'formCode':
        if (formCode != null) {
          fields.add(formCode!);
        }
      case 'form':
        if (form != null) {
          fields.add(form!);
        }
      case 'processNote':
        if (processNote != null) {
          fields.addAll(processNote!);
        }
      case 'communicationRequest':
        if (communicationRequest != null) {
          fields.addAll(communicationRequest!);
        }
      case 'insurance':
        if (insurance != null) {
          fields.addAll(insurance!);
        }
      case 'error':
        if (error != null) {
          fields.addAll(error!);
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
      case 'traceNumber':
        {
          if (child is List<IdentifierBuilder>) {
            // Replace or create new list
            traceNumber = child;
            return;
          } else if (child is IdentifierBuilder) {
            // Add single element to existing list or create new list
            traceNumber = [
              ...(traceNumber ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'status':
        {
          if (child is FinancialResourceStatusCodesBuilder) {
            status = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted =
                    FinancialResourceStatusCodesBuilder(stringValue);
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
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'subType':
        {
          if (child is CodeableConceptBuilder) {
            subType = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'use':
        {
          if (child is UseBuilder) {
            use = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = UseBuilder(stringValue);
                use = converted;
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
      case 'patient':
        {
          if (child is ReferenceBuilder) {
            patient = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'created':
        {
          if (child is FhirDateTimeBuilder) {
            created = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                created = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'insurer':
        {
          if (child is ReferenceBuilder) {
            insurer = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'requestor':
        {
          if (child is ReferenceBuilder) {
            requestor = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'request':
        {
          if (child is ReferenceBuilder) {
            request = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'outcome':
        {
          if (child is ClaimProcessingCodesBuilder) {
            outcome = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = ClaimProcessingCodesBuilder(stringValue);
                outcome = converted;
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
      case 'decision':
        {
          if (child is CodeableConceptBuilder) {
            decision = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'disposition':
        {
          if (child is FhirStringBuilder) {
            disposition = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                disposition = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'preAuthRef':
        {
          if (child is FhirStringBuilder) {
            preAuthRef = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                preAuthRef = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'preAuthPeriod':
        {
          if (child is PeriodBuilder) {
            preAuthPeriod = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'event':
        {
          if (child is List<ClaimResponseEventBuilder>) {
            // Replace or create new list
            event = child;
            return;
          } else if (child is ClaimResponseEventBuilder) {
            // Add single element to existing list or create new list
            event = [
              ...(event ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'payeeType':
        {
          if (child is CodeableConceptBuilder) {
            payeeType = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'encounter':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            encounter = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            encounter = [
              ...(encounter ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'diagnosisRelatedGroup':
        {
          if (child is CodeableConceptBuilder) {
            diagnosisRelatedGroup = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'item':
        {
          if (child is List<ClaimResponseItemBuilder>) {
            // Replace or create new list
            item = child;
            return;
          } else if (child is ClaimResponseItemBuilder) {
            // Add single element to existing list or create new list
            item = [
              ...(item ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'addItem':
        {
          if (child is List<ClaimResponseAddItemBuilder>) {
            // Replace or create new list
            addItem = child;
            return;
          } else if (child is ClaimResponseAddItemBuilder) {
            // Add single element to existing list or create new list
            addItem = [
              ...(addItem ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'adjudication':
        {
          if (child is List<ClaimResponseAdjudicationBuilder>) {
            // Replace or create new list
            adjudication = child;
            return;
          } else if (child is ClaimResponseAdjudicationBuilder) {
            // Add single element to existing list or create new list
            adjudication = [
              ...(adjudication ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'total':
        {
          if (child is List<ClaimResponseTotalBuilder>) {
            // Replace or create new list
            total = child;
            return;
          } else if (child is ClaimResponseTotalBuilder) {
            // Add single element to existing list or create new list
            total = [
              ...(total ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'payment':
        {
          if (child is ClaimResponsePaymentBuilder) {
            payment = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'fundsReserve':
        {
          if (child is CodeableConceptBuilder) {
            fundsReserve = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'formCode':
        {
          if (child is CodeableConceptBuilder) {
            formCode = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'form':
        {
          if (child is AttachmentBuilder) {
            form = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'processNote':
        {
          if (child is List<ClaimResponseProcessNoteBuilder>) {
            // Replace or create new list
            processNote = child;
            return;
          } else if (child is ClaimResponseProcessNoteBuilder) {
            // Add single element to existing list or create new list
            processNote = [
              ...(processNote ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'communicationRequest':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            communicationRequest = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            communicationRequest = [
              ...(communicationRequest ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'insurance':
        {
          if (child is List<ClaimResponseInsuranceBuilder>) {
            // Replace or create new list
            insurance = child;
            return;
          } else if (child is ClaimResponseInsuranceBuilder) {
            // Add single element to existing list or create new list
            insurance = [
              ...(insurance ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'error':
        {
          if (child is List<ClaimResponseErrorBuilder>) {
            // Replace or create new list
            error = child;
            return;
          } else if (child is ClaimResponseErrorBuilder) {
            // Add single element to existing list or create new list
            error = [
              ...(error ?? []),
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
      case 'traceNumber':
        return ['IdentifierBuilder'];
      case 'status':
        return ['FhirCodeEnumBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'subType':
        return ['CodeableConceptBuilder'];
      case 'use':
        return ['FhirCodeEnumBuilder'];
      case 'patient':
        return ['ReferenceBuilder'];
      case 'created':
        return ['FhirDateTimeBuilder'];
      case 'insurer':
        return ['ReferenceBuilder'];
      case 'requestor':
        return ['ReferenceBuilder'];
      case 'request':
        return ['ReferenceBuilder'];
      case 'outcome':
        return ['FhirCodeEnumBuilder'];
      case 'decision':
        return ['CodeableConceptBuilder'];
      case 'disposition':
        return ['FhirStringBuilder'];
      case 'preAuthRef':
        return ['FhirStringBuilder'];
      case 'preAuthPeriod':
        return ['PeriodBuilder'];
      case 'event':
        return ['ClaimResponseEventBuilder'];
      case 'payeeType':
        return ['CodeableConceptBuilder'];
      case 'encounter':
        return ['ReferenceBuilder'];
      case 'diagnosisRelatedGroup':
        return ['CodeableConceptBuilder'];
      case 'item':
        return ['ClaimResponseItemBuilder'];
      case 'addItem':
        return ['ClaimResponseAddItemBuilder'];
      case 'adjudication':
        return ['ClaimResponseAdjudicationBuilder'];
      case 'total':
        return ['ClaimResponseTotalBuilder'];
      case 'payment':
        return ['ClaimResponsePaymentBuilder'];
      case 'fundsReserve':
        return ['CodeableConceptBuilder'];
      case 'formCode':
        return ['CodeableConceptBuilder'];
      case 'form':
        return ['AttachmentBuilder'];
      case 'processNote':
        return ['ClaimResponseProcessNoteBuilder'];
      case 'communicationRequest':
        return ['ReferenceBuilder'];
      case 'insurance':
        return ['ClaimResponseInsuranceBuilder'];
      case 'error':
        return ['ClaimResponseErrorBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ClaimResponseBuilder]
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
      case 'traceNumber':
        {
          traceNumber = <IdentifierBuilder>[];
          return;
        }
      case 'status':
        {
          status = FinancialResourceStatusCodesBuilder.empty();
          return;
        }
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'subType':
        {
          subType = CodeableConceptBuilder.empty();
          return;
        }
      case 'use':
        {
          use = UseBuilder.empty();
          return;
        }
      case 'patient':
        {
          patient = ReferenceBuilder.empty();
          return;
        }
      case 'created':
        {
          created = FhirDateTimeBuilder.empty();
          return;
        }
      case 'insurer':
        {
          insurer = ReferenceBuilder.empty();
          return;
        }
      case 'requestor':
        {
          requestor = ReferenceBuilder.empty();
          return;
        }
      case 'request':
        {
          request = ReferenceBuilder.empty();
          return;
        }
      case 'outcome':
        {
          outcome = ClaimProcessingCodesBuilder.empty();
          return;
        }
      case 'decision':
        {
          decision = CodeableConceptBuilder.empty();
          return;
        }
      case 'disposition':
        {
          disposition = FhirStringBuilder.empty();
          return;
        }
      case 'preAuthRef':
        {
          preAuthRef = FhirStringBuilder.empty();
          return;
        }
      case 'preAuthPeriod':
        {
          preAuthPeriod = PeriodBuilder.empty();
          return;
        }
      case 'event':
        {
          event = <ClaimResponseEventBuilder>[];
          return;
        }
      case 'payeeType':
        {
          payeeType = CodeableConceptBuilder.empty();
          return;
        }
      case 'encounter':
        {
          encounter = <ReferenceBuilder>[];
          return;
        }
      case 'diagnosisRelatedGroup':
        {
          diagnosisRelatedGroup = CodeableConceptBuilder.empty();
          return;
        }
      case 'item':
        {
          item = <ClaimResponseItemBuilder>[];
          return;
        }
      case 'addItem':
        {
          addItem = <ClaimResponseAddItemBuilder>[];
          return;
        }
      case 'adjudication':
        {
          adjudication = <ClaimResponseAdjudicationBuilder>[];
          return;
        }
      case 'total':
        {
          total = <ClaimResponseTotalBuilder>[];
          return;
        }
      case 'payment':
        {
          payment = ClaimResponsePaymentBuilder.empty();
          return;
        }
      case 'fundsReserve':
        {
          fundsReserve = CodeableConceptBuilder.empty();
          return;
        }
      case 'formCode':
        {
          formCode = CodeableConceptBuilder.empty();
          return;
        }
      case 'form':
        {
          form = AttachmentBuilder.empty();
          return;
        }
      case 'processNote':
        {
          processNote = <ClaimResponseProcessNoteBuilder>[];
          return;
        }
      case 'communicationRequest':
        {
          communicationRequest = <ReferenceBuilder>[];
          return;
        }
      case 'insurance':
        {
          insurance = <ClaimResponseInsuranceBuilder>[];
          return;
        }
      case 'error':
        {
          error = <ClaimResponseErrorBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ClaimResponseBuilder clone() => throw UnimplementedError();
  @override
  ClaimResponseBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    AllLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    List<IdentifierBuilder>? traceNumber,
    FinancialResourceStatusCodesBuilder? status,
    CodeableConceptBuilder? type,
    CodeableConceptBuilder? subType,
    UseBuilder? use,
    ReferenceBuilder? patient,
    FhirDateTimeBuilder? created,
    ReferenceBuilder? insurer,
    ReferenceBuilder? requestor,
    ReferenceBuilder? request,
    ClaimProcessingCodesBuilder? outcome,
    CodeableConceptBuilder? decision,
    FhirStringBuilder? disposition,
    FhirStringBuilder? preAuthRef,
    PeriodBuilder? preAuthPeriod,
    List<ClaimResponseEventBuilder>? event,
    CodeableConceptBuilder? payeeType,
    List<ReferenceBuilder>? encounter,
    CodeableConceptBuilder? diagnosisRelatedGroup,
    List<ClaimResponseItemBuilder>? item,
    List<ClaimResponseAddItemBuilder>? addItem,
    List<ClaimResponseAdjudicationBuilder>? adjudication,
    List<ClaimResponseTotalBuilder>? total,
    ClaimResponsePaymentBuilder? payment,
    CodeableConceptBuilder? fundsReserve,
    CodeableConceptBuilder? formCode,
    AttachmentBuilder? form,
    List<ClaimResponseProcessNoteBuilder>? processNote,
    List<ReferenceBuilder>? communicationRequest,
    List<ClaimResponseInsuranceBuilder>? insurance,
    List<ClaimResponseErrorBuilder>? error,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = ClaimResponseBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      traceNumber: traceNumber ?? this.traceNumber,
      status: status ?? this.status,
      type: type ?? this.type,
      subType: subType ?? this.subType,
      use: use ?? this.use,
      patient: patient ?? this.patient,
      created: created ?? this.created,
      insurer: insurer ?? this.insurer,
      requestor: requestor ?? this.requestor,
      request: request ?? this.request,
      outcome: outcome ?? this.outcome,
      decision: decision ?? this.decision,
      disposition: disposition ?? this.disposition,
      preAuthRef: preAuthRef ?? this.preAuthRef,
      preAuthPeriod: preAuthPeriod ?? this.preAuthPeriod,
      event: event ?? this.event,
      payeeType: payeeType ?? this.payeeType,
      encounter: encounter ?? this.encounter,
      diagnosisRelatedGroup:
          diagnosisRelatedGroup ?? this.diagnosisRelatedGroup,
      item: item ?? this.item,
      addItem: addItem ?? this.addItem,
      adjudication: adjudication ?? this.adjudication,
      total: total ?? this.total,
      payment: payment ?? this.payment,
      fundsReserve: fundsReserve ?? this.fundsReserve,
      formCode: formCode ?? this.formCode,
      form: form ?? this.form,
      processNote: processNote ?? this.processNote,
      communicationRequest: communicationRequest ?? this.communicationRequest,
      insurance: insurance ?? this.insurance,
      error: error ?? this.error,
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
    if (o is! ClaimResponseBuilder) {
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
    if (!listEquals<IdentifierBuilder>(
      traceNumber,
      o.traceNumber,
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
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      subType,
      o.subType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      use,
      o.use,
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
      created,
      o.created,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      insurer,
      o.insurer,
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
      request,
      o.request,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      outcome,
      o.outcome,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      decision,
      o.decision,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      disposition,
      o.disposition,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      preAuthRef,
      o.preAuthRef,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      preAuthPeriod,
      o.preAuthPeriod,
    )) {
      return false;
    }
    if (!listEquals<ClaimResponseEventBuilder>(
      event,
      o.event,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      payeeType,
      o.payeeType,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      encounter,
      o.encounter,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      diagnosisRelatedGroup,
      o.diagnosisRelatedGroup,
    )) {
      return false;
    }
    if (!listEquals<ClaimResponseItemBuilder>(
      item,
      o.item,
    )) {
      return false;
    }
    if (!listEquals<ClaimResponseAddItemBuilder>(
      addItem,
      o.addItem,
    )) {
      return false;
    }
    if (!listEquals<ClaimResponseAdjudicationBuilder>(
      adjudication,
      o.adjudication,
    )) {
      return false;
    }
    if (!listEquals<ClaimResponseTotalBuilder>(
      total,
      o.total,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      payment,
      o.payment,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      fundsReserve,
      o.fundsReserve,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      formCode,
      o.formCode,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      form,
      o.form,
    )) {
      return false;
    }
    if (!listEquals<ClaimResponseProcessNoteBuilder>(
      processNote,
      o.processNote,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      communicationRequest,
      o.communicationRequest,
    )) {
      return false;
    }
    if (!listEquals<ClaimResponseInsuranceBuilder>(
      insurance,
      o.insurance,
    )) {
      return false;
    }
    if (!listEquals<ClaimResponseErrorBuilder>(
      error,
      o.error,
    )) {
      return false;
    }
    return true;
  }
}

/// [ClaimResponseEventBuilder]
/// Information code for an event with a corresponding date or period.
class ClaimResponseEventBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ClaimResponseEventBuilder]

  ClaimResponseEventBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    WhenXClaimResponseEventBuilder? whenX,
    FhirDateTimeBuilder? whenDateTime,
    PeriodBuilder? whenPeriod,
    super.disallowExtensions,
  })  : whenX = whenX ?? whenDateTime ?? whenPeriod,
        super(
          objectPath: 'ClaimResponse.event',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ClaimResponseEventBuilder.empty() => ClaimResponseEventBuilder(
        type: CodeableConceptBuilder.empty(),
        whenX: FhirDateTimeBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimResponseEventBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ClaimResponse.event';
    return ClaimResponseEventBuilder(
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
      whenX: JsonParser.parsePolymorphic<WhenXClaimResponseEventBuilder>(
        json,
        {
          'whenDateTime': FhirDateTimeBuilder.fromJson,
          'whenPeriod': PeriodBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [ClaimResponseEventBuilder]
  /// from a [String] or [YamlMap] object
  factory ClaimResponseEventBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClaimResponseEventBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClaimResponseEventBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClaimResponseEventBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClaimResponseEventBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimResponseEventBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ClaimResponseEventBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ClaimResponseEvent';

  /// [type]
  /// A coded event such as when a service is expected or a card printed.
  CodeableConceptBuilder? type;

  /// [whenX]
  /// A date or period in the past or future indicating when the event
  /// occurred or is expectd to occur.
  WhenXClaimResponseEventBuilder? whenX;

  /// Getter for [whenDateTime] as a FhirDateTimeBuilder
  FhirDateTimeBuilder? get whenDateTime => whenX?.isAs<FhirDateTimeBuilder>();

  /// Getter for [whenPeriod] as a PeriodBuilder
  PeriodBuilder? get whenPeriod => whenX?.isAs<PeriodBuilder>();

  /// Converts a [ClaimResponseEventBuilder]
  /// to [ClaimResponseEvent]
  @override
  ClaimResponseEvent build() => ClaimResponseEvent.fromJson(toJson());

  /// Converts a [ClaimResponseEventBuilder]
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
    if (whenX != null) {
      final fhirType = whenX!.fhirType;
      addField('when${fhirType.capitalizeFirstLetter()}', whenX);
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
      'whenX',
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
      case 'when':
        if (whenX != null) {
          fields.add(whenX!);
        }
      case 'whenX':
        if (whenX != null) {
          fields.add(whenX!);
        }
      case 'whenDateTime':
        if (whenX is FhirDateTimeBuilder) {
          fields.add(whenX!);
        }
      case 'whenPeriod':
        if (whenX is PeriodBuilder) {
          fields.add(whenX!);
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
      case 'when':
      case 'whenX':
        {
          if (child is WhenXClaimResponseEventBuilder) {
            whenX = child;
            return;
          } else {
            if (child is FhirDateTimeBuilder) {
              whenX = child;
              return;
            }
            if (child is PeriodBuilder) {
              whenX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'whenDateTime':
        {
          if (child is FhirDateTimeBuilder) {
            whenX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'whenPeriod':
        {
          if (child is PeriodBuilder) {
            whenX = child;
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
      case 'when':
      case 'whenX':
        return [
          'FhirDateTimeBuilder',
          'PeriodBuilder',
        ];
      case 'whenDateTime':
        return ['FhirDateTimeBuilder'];
      case 'whenPeriod':
        return ['PeriodBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ClaimResponseEventBuilder]
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
      case 'when':
      case 'whenX':
      case 'whenDateTime':
        {
          whenX = FhirDateTimeBuilder.empty();
          return;
        }
      case 'whenPeriod':
        {
          whenX = PeriodBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ClaimResponseEventBuilder clone() => throw UnimplementedError();
  @override
  ClaimResponseEventBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? type,
    WhenXClaimResponseEventBuilder? whenX,
    FhirDateTimeBuilder? whenDateTime,
    PeriodBuilder? whenPeriod,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ClaimResponseEventBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      whenX: whenX ?? whenDateTime ?? whenPeriod ?? this.whenX,
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
    if (o is! ClaimResponseEventBuilder) {
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
      whenX,
      o.whenX,
    )) {
      return false;
    }
    return true;
  }
}

/// [ClaimResponseItemBuilder]
/// A claim line. Either a simple (a product or service) or a 'group' of
/// details which can also be a simple items or groups of sub-details.
class ClaimResponseItemBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ClaimResponseItemBuilder]

  ClaimResponseItemBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.itemSequence,
    this.traceNumber,
    this.noteNumber,
    this.reviewOutcome,
    this.adjudication,
    this.detail,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ClaimResponse.item',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ClaimResponseItemBuilder.empty() => ClaimResponseItemBuilder(
        itemSequence: FhirPositiveIntBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimResponseItemBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ClaimResponse.item';
    return ClaimResponseItemBuilder(
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
      itemSequence: JsonParser.parsePrimitive<FhirPositiveIntBuilder>(
        json,
        'itemSequence',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.itemSequence',
      ),
      traceNumber: (json['traceNumber'] as List<dynamic>?)
          ?.map<IdentifierBuilder>(
            (v) => IdentifierBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.traceNumber',
              },
            ),
          )
          .toList(),
      noteNumber: JsonParser.parsePrimitiveList<FhirPositiveIntBuilder>(
        json,
        'noteNumber',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.noteNumber',
      ),
      reviewOutcome: JsonParser.parseObject<ClaimResponseReviewOutcomeBuilder>(
        json,
        'reviewOutcome',
        ClaimResponseReviewOutcomeBuilder.fromJson,
        '$objectPath.reviewOutcome',
      ),
      adjudication: (json['adjudication'] as List<dynamic>?)
          ?.map<ClaimResponseAdjudicationBuilder>(
            (v) => ClaimResponseAdjudicationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.adjudication',
              },
            ),
          )
          .toList(),
      detail: (json['detail'] as List<dynamic>?)
          ?.map<ClaimResponseDetailBuilder>(
            (v) => ClaimResponseDetailBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.detail',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ClaimResponseItemBuilder]
  /// from a [String] or [YamlMap] object
  factory ClaimResponseItemBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClaimResponseItemBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClaimResponseItemBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClaimResponseItemBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClaimResponseItemBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimResponseItemBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ClaimResponseItemBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ClaimResponseItem';

  /// [itemSequence]
  /// A number to uniquely reference the claim item entries.
  FhirPositiveIntBuilder? itemSequence;

  /// [traceNumber]
  /// Trace number for tracking purposes. May be defined at the jurisdiction
  /// level or between trading partners.
  List<IdentifierBuilder>? traceNumber;

  /// [noteNumber]
  /// The numbers associated with notes below which apply to the adjudication
  /// of this item.
  List<FhirPositiveIntBuilder>? noteNumber;

  /// [reviewOutcome]
  /// The high-level results of the adjudication if adjudication has been
  /// performed.
  ClaimResponseReviewOutcomeBuilder? reviewOutcome;

  /// [adjudication]
  /// If this item is a group then the values here are a summary of the
  /// adjudication of the detail items. If this item is a simple product or
  /// service then this is the result of the adjudication of this item.
  List<ClaimResponseAdjudicationBuilder>? adjudication;

  /// [detail]
  /// A claim detail. Either a simple (a product or service) or a 'group' of
  /// sub-details which are simple items.
  List<ClaimResponseDetailBuilder>? detail;

  /// Converts a [ClaimResponseItemBuilder]
  /// to [ClaimResponseItem]
  @override
  ClaimResponseItem build() => ClaimResponseItem.fromJson(toJson());

  /// Converts a [ClaimResponseItemBuilder]
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
    addField('itemSequence', itemSequence);
    addField('traceNumber', traceNumber);
    addField('noteNumber', noteNumber);
    addField('reviewOutcome', reviewOutcome);
    addField('adjudication', adjudication);
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
      'itemSequence',
      'traceNumber',
      'noteNumber',
      'reviewOutcome',
      'adjudication',
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
      case 'itemSequence':
        if (itemSequence != null) {
          fields.add(itemSequence!);
        }
      case 'traceNumber':
        if (traceNumber != null) {
          fields.addAll(traceNumber!);
        }
      case 'noteNumber':
        if (noteNumber != null) {
          fields.addAll(noteNumber!);
        }
      case 'reviewOutcome':
        if (reviewOutcome != null) {
          fields.add(reviewOutcome!);
        }
      case 'adjudication':
        if (adjudication != null) {
          fields.addAll(adjudication!);
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
      case 'itemSequence':
        {
          if (child is FhirPositiveIntBuilder) {
            itemSequence = child;
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
                  itemSequence = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'traceNumber':
        {
          if (child is List<IdentifierBuilder>) {
            // Replace or create new list
            traceNumber = child;
            return;
          } else if (child is IdentifierBuilder) {
            // Add single element to existing list or create new list
            traceNumber = [
              ...(traceNumber ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'noteNumber':
        {
          if (child is List<FhirPositiveIntBuilder>) {
            // Replace or create new list
            noteNumber = child;
            return;
          } else if (child is FhirPositiveIntBuilder) {
            // Add single element to existing list or create new list
            noteNumber = [
              ...(noteNumber ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirPositiveIntBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                // For number types,
                // first parse to num then pass the number directly
                final numValue = num.tryParse(stringValue);
                if (numValue != null) {
                  final converted = FhirPositiveIntBuilder.tryParse(numValue);
                  if (converted != null) {
                    convertedList.add(converted);
                  }
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              noteNumber = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirPositiveIntBuilder.tryParse(numValue);
                if (converted != null) {
                  noteNumber = [
                    ...(noteNumber ?? []),
                    converted,
                  ];
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'reviewOutcome':
        {
          if (child is ClaimResponseReviewOutcomeBuilder) {
            reviewOutcome = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'adjudication':
        {
          if (child is List<ClaimResponseAdjudicationBuilder>) {
            // Replace or create new list
            adjudication = child;
            return;
          } else if (child is ClaimResponseAdjudicationBuilder) {
            // Add single element to existing list or create new list
            adjudication = [
              ...(adjudication ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'detail':
        {
          if (child is List<ClaimResponseDetailBuilder>) {
            // Replace or create new list
            detail = child;
            return;
          } else if (child is ClaimResponseDetailBuilder) {
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
      case 'itemSequence':
        return ['FhirPositiveIntBuilder'];
      case 'traceNumber':
        return ['IdentifierBuilder'];
      case 'noteNumber':
        return ['FhirPositiveIntBuilder'];
      case 'reviewOutcome':
        return ['ClaimResponseReviewOutcomeBuilder'];
      case 'adjudication':
        return ['ClaimResponseAdjudicationBuilder'];
      case 'detail':
        return ['ClaimResponseDetailBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ClaimResponseItemBuilder]
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
      case 'itemSequence':
        {
          itemSequence = FhirPositiveIntBuilder.empty();
          return;
        }
      case 'traceNumber':
        {
          traceNumber = <IdentifierBuilder>[];
          return;
        }
      case 'noteNumber':
        {
          noteNumber = <FhirPositiveIntBuilder>[];
          return;
        }
      case 'reviewOutcome':
        {
          reviewOutcome = ClaimResponseReviewOutcomeBuilder.empty();
          return;
        }
      case 'adjudication':
        {
          adjudication = <ClaimResponseAdjudicationBuilder>[];
          return;
        }
      case 'detail':
        {
          detail = <ClaimResponseDetailBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ClaimResponseItemBuilder clone() => throw UnimplementedError();
  @override
  ClaimResponseItemBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirPositiveIntBuilder? itemSequence,
    List<IdentifierBuilder>? traceNumber,
    List<FhirPositiveIntBuilder>? noteNumber,
    ClaimResponseReviewOutcomeBuilder? reviewOutcome,
    List<ClaimResponseAdjudicationBuilder>? adjudication,
    List<ClaimResponseDetailBuilder>? detail,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ClaimResponseItemBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      itemSequence: itemSequence ?? this.itemSequence,
      traceNumber: traceNumber ?? this.traceNumber,
      noteNumber: noteNumber ?? this.noteNumber,
      reviewOutcome: reviewOutcome ?? this.reviewOutcome,
      adjudication: adjudication ?? this.adjudication,
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
    if (o is! ClaimResponseItemBuilder) {
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
      itemSequence,
      o.itemSequence,
    )) {
      return false;
    }
    if (!listEquals<IdentifierBuilder>(
      traceNumber,
      o.traceNumber,
    )) {
      return false;
    }
    if (!listEquals<FhirPositiveIntBuilder>(
      noteNumber,
      o.noteNumber,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      reviewOutcome,
      o.reviewOutcome,
    )) {
      return false;
    }
    if (!listEquals<ClaimResponseAdjudicationBuilder>(
      adjudication,
      o.adjudication,
    )) {
      return false;
    }
    if (!listEquals<ClaimResponseDetailBuilder>(
      detail,
      o.detail,
    )) {
      return false;
    }
    return true;
  }
}

/// [ClaimResponseReviewOutcomeBuilder]
/// The high-level results of the adjudication if adjudication has been
/// performed.
class ClaimResponseReviewOutcomeBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ClaimResponseReviewOutcomeBuilder]

  ClaimResponseReviewOutcomeBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.decision,
    this.reason,
    this.preAuthRef,
    this.preAuthPeriod,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ClaimResponse.item.reviewOutcome',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ClaimResponseReviewOutcomeBuilder.empty() =>
      ClaimResponseReviewOutcomeBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimResponseReviewOutcomeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ClaimResponse.item.reviewOutcome';
    return ClaimResponseReviewOutcomeBuilder(
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
      decision: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'decision',
        CodeableConceptBuilder.fromJson,
        '$objectPath.decision',
      ),
      reason: (json['reason'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.reason',
              },
            ),
          )
          .toList(),
      preAuthRef: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'preAuthRef',
        FhirStringBuilder.fromJson,
        '$objectPath.preAuthRef',
      ),
      preAuthPeriod: JsonParser.parseObject<PeriodBuilder>(
        json,
        'preAuthPeriod',
        PeriodBuilder.fromJson,
        '$objectPath.preAuthPeriod',
      ),
    );
  }

  /// Deserialize [ClaimResponseReviewOutcomeBuilder]
  /// from a [String] or [YamlMap] object
  factory ClaimResponseReviewOutcomeBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClaimResponseReviewOutcomeBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClaimResponseReviewOutcomeBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClaimResponseReviewOutcomeBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClaimResponseReviewOutcomeBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimResponseReviewOutcomeBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ClaimResponseReviewOutcomeBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ClaimResponseReviewOutcome';

  /// [decision]
  /// The result of the claim, predetermination, or preauthorization
  /// adjudication.
  CodeableConceptBuilder? decision;

  /// [reason]
  /// The reasons for the result of the claim, predetermination, or
  /// preauthorization adjudication.
  List<CodeableConceptBuilder>? reason;

  /// [preAuthRef]
  /// Reference from the Insurer which is used in later communications which
  /// refers to this adjudication.
  FhirStringBuilder? preAuthRef;

  /// [preAuthPeriod]
  /// The time frame during which this authorization is effective.
  PeriodBuilder? preAuthPeriod;

  /// Converts a [ClaimResponseReviewOutcomeBuilder]
  /// to [ClaimResponseReviewOutcome]
  @override
  ClaimResponseReviewOutcome build() =>
      ClaimResponseReviewOutcome.fromJson(toJson());

  /// Converts a [ClaimResponseReviewOutcomeBuilder]
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
    addField('decision', decision);
    addField('reason', reason);
    addField('preAuthRef', preAuthRef);
    addField('preAuthPeriod', preAuthPeriod);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'decision',
      'reason',
      'preAuthRef',
      'preAuthPeriod',
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
      case 'decision':
        if (decision != null) {
          fields.add(decision!);
        }
      case 'reason':
        if (reason != null) {
          fields.addAll(reason!);
        }
      case 'preAuthRef':
        if (preAuthRef != null) {
          fields.add(preAuthRef!);
        }
      case 'preAuthPeriod':
        if (preAuthPeriod != null) {
          fields.add(preAuthPeriod!);
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
      case 'decision':
        {
          if (child is CodeableConceptBuilder) {
            decision = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'reason':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            reason = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            reason = [
              ...(reason ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'preAuthRef':
        {
          if (child is FhirStringBuilder) {
            preAuthRef = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                preAuthRef = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'preAuthPeriod':
        {
          if (child is PeriodBuilder) {
            preAuthPeriod = child;
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
      case 'decision':
        return ['CodeableConceptBuilder'];
      case 'reason':
        return ['CodeableConceptBuilder'];
      case 'preAuthRef':
        return ['FhirStringBuilder'];
      case 'preAuthPeriod':
        return ['PeriodBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ClaimResponseReviewOutcomeBuilder]
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
      case 'decision':
        {
          decision = CodeableConceptBuilder.empty();
          return;
        }
      case 'reason':
        {
          reason = <CodeableConceptBuilder>[];
          return;
        }
      case 'preAuthRef':
        {
          preAuthRef = FhirStringBuilder.empty();
          return;
        }
      case 'preAuthPeriod':
        {
          preAuthPeriod = PeriodBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ClaimResponseReviewOutcomeBuilder clone() => throw UnimplementedError();
  @override
  ClaimResponseReviewOutcomeBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? decision,
    List<CodeableConceptBuilder>? reason,
    FhirStringBuilder? preAuthRef,
    PeriodBuilder? preAuthPeriod,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ClaimResponseReviewOutcomeBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      decision: decision ?? this.decision,
      reason: reason ?? this.reason,
      preAuthRef: preAuthRef ?? this.preAuthRef,
      preAuthPeriod: preAuthPeriod ?? this.preAuthPeriod,
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
    if (o is! ClaimResponseReviewOutcomeBuilder) {
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
      decision,
      o.decision,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      reason,
      o.reason,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      preAuthRef,
      o.preAuthRef,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      preAuthPeriod,
      o.preAuthPeriod,
    )) {
      return false;
    }
    return true;
  }
}

/// [ClaimResponseAdjudicationBuilder]
/// If this item is a group then the values here are a summary of the
/// adjudication of the detail items. If this item is a simple product or
/// service then this is the result of the adjudication of this item.
class ClaimResponseAdjudicationBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ClaimResponseAdjudicationBuilder]

  ClaimResponseAdjudicationBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.category,
    this.reason,
    this.amount,
    this.quantity,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ClaimResponse.item.adjudication',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ClaimResponseAdjudicationBuilder.empty() =>
      ClaimResponseAdjudicationBuilder(
        category: CodeableConceptBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimResponseAdjudicationBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ClaimResponse.item.adjudication';
    return ClaimResponseAdjudicationBuilder(
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
      category: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'category',
        CodeableConceptBuilder.fromJson,
        '$objectPath.category',
      ),
      reason: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'reason',
        CodeableConceptBuilder.fromJson,
        '$objectPath.reason',
      ),
      amount: JsonParser.parseObject<MoneyBuilder>(
        json,
        'amount',
        MoneyBuilder.fromJson,
        '$objectPath.amount',
      ),
      quantity: JsonParser.parseObject<QuantityBuilder>(
        json,
        'quantity',
        QuantityBuilder.fromJson,
        '$objectPath.quantity',
      ),
    );
  }

  /// Deserialize [ClaimResponseAdjudicationBuilder]
  /// from a [String] or [YamlMap] object
  factory ClaimResponseAdjudicationBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClaimResponseAdjudicationBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClaimResponseAdjudicationBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClaimResponseAdjudicationBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClaimResponseAdjudicationBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimResponseAdjudicationBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ClaimResponseAdjudicationBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ClaimResponseAdjudication';

  /// [category]
  /// A code to indicate the information type of this adjudication record.
  /// Information types may include the value submitted, maximum values or
  /// percentages allowed or payable under the plan, amounts that: the
  /// patient is responsible for in aggregate or pertaining to this item;
  /// amounts paid by other coverages; and, the benefit payable for this
  /// item.
  CodeableConceptBuilder? category;

  /// [reason]
  /// A code supporting the understanding of the adjudication result and
  /// explaining variance from expected amount.
  CodeableConceptBuilder? reason;

  /// [amount]
  /// Monetary amount associated with the category.
  MoneyBuilder? amount;

  /// [quantity]
  /// A non-monetary value associated with the category. Mutually exclusive
  /// to the amount element above.
  QuantityBuilder? quantity;

  /// Converts a [ClaimResponseAdjudicationBuilder]
  /// to [ClaimResponseAdjudication]
  @override
  ClaimResponseAdjudication build() =>
      ClaimResponseAdjudication.fromJson(toJson());

  /// Converts a [ClaimResponseAdjudicationBuilder]
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
    addField('category', category);
    addField('reason', reason);
    addField('amount', amount);
    addField('quantity', quantity);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'category',
      'reason',
      'amount',
      'quantity',
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
      case 'category':
        if (category != null) {
          fields.add(category!);
        }
      case 'reason':
        if (reason != null) {
          fields.add(reason!);
        }
      case 'amount':
        if (amount != null) {
          fields.add(amount!);
        }
      case 'quantity':
        if (quantity != null) {
          fields.add(quantity!);
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
      case 'category':
        {
          if (child is CodeableConceptBuilder) {
            category = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'reason':
        {
          if (child is CodeableConceptBuilder) {
            reason = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'amount':
        {
          if (child is MoneyBuilder) {
            amount = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'quantity':
        {
          if (child is QuantityBuilder) {
            quantity = child;
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
      case 'category':
        return ['CodeableConceptBuilder'];
      case 'reason':
        return ['CodeableConceptBuilder'];
      case 'amount':
        return ['MoneyBuilder'];
      case 'quantity':
        return ['QuantityBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ClaimResponseAdjudicationBuilder]
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
      case 'category':
        {
          category = CodeableConceptBuilder.empty();
          return;
        }
      case 'reason':
        {
          reason = CodeableConceptBuilder.empty();
          return;
        }
      case 'amount':
        {
          amount = MoneyBuilder.empty();
          return;
        }
      case 'quantity':
        {
          quantity = QuantityBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ClaimResponseAdjudicationBuilder clone() => throw UnimplementedError();
  @override
  ClaimResponseAdjudicationBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? category,
    CodeableConceptBuilder? reason,
    MoneyBuilder? amount,
    QuantityBuilder? quantity,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ClaimResponseAdjudicationBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      category: category ?? this.category,
      reason: reason ?? this.reason,
      amount: amount ?? this.amount,
      quantity: quantity ?? this.quantity,
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
    if (o is! ClaimResponseAdjudicationBuilder) {
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
      category,
      o.category,
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
      amount,
      o.amount,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      quantity,
      o.quantity,
    )) {
      return false;
    }
    return true;
  }
}

/// [ClaimResponseDetailBuilder]
/// A claim detail. Either a simple (a product or service) or a 'group' of
/// sub-details which are simple items.
class ClaimResponseDetailBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ClaimResponseDetailBuilder]

  ClaimResponseDetailBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.detailSequence,
    this.traceNumber,
    this.noteNumber,
    this.reviewOutcome,
    this.adjudication,
    this.subDetail,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ClaimResponse.item.detail',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ClaimResponseDetailBuilder.empty() => ClaimResponseDetailBuilder(
        detailSequence: FhirPositiveIntBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimResponseDetailBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ClaimResponse.item.detail';
    return ClaimResponseDetailBuilder(
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
      detailSequence: JsonParser.parsePrimitive<FhirPositiveIntBuilder>(
        json,
        'detailSequence',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.detailSequence',
      ),
      traceNumber: (json['traceNumber'] as List<dynamic>?)
          ?.map<IdentifierBuilder>(
            (v) => IdentifierBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.traceNumber',
              },
            ),
          )
          .toList(),
      noteNumber: JsonParser.parsePrimitiveList<FhirPositiveIntBuilder>(
        json,
        'noteNumber',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.noteNumber',
      ),
      reviewOutcome: JsonParser.parseObject<ClaimResponseReviewOutcomeBuilder>(
        json,
        'reviewOutcome',
        ClaimResponseReviewOutcomeBuilder.fromJson,
        '$objectPath.reviewOutcome',
      ),
      adjudication: (json['adjudication'] as List<dynamic>?)
          ?.map<ClaimResponseAdjudicationBuilder>(
            (v) => ClaimResponseAdjudicationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.adjudication',
              },
            ),
          )
          .toList(),
      subDetail: (json['subDetail'] as List<dynamic>?)
          ?.map<ClaimResponseSubDetailBuilder>(
            (v) => ClaimResponseSubDetailBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.subDetail',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ClaimResponseDetailBuilder]
  /// from a [String] or [YamlMap] object
  factory ClaimResponseDetailBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClaimResponseDetailBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClaimResponseDetailBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClaimResponseDetailBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClaimResponseDetailBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimResponseDetailBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ClaimResponseDetailBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ClaimResponseDetail';

  /// [detailSequence]
  /// A number to uniquely reference the claim detail entry.
  FhirPositiveIntBuilder? detailSequence;

  /// [traceNumber]
  /// Trace number for tracking purposes. May be defined at the jurisdiction
  /// level or between trading partners.
  List<IdentifierBuilder>? traceNumber;

  /// [noteNumber]
  /// The numbers associated with notes below which apply to the adjudication
  /// of this item.
  List<FhirPositiveIntBuilder>? noteNumber;

  /// [reviewOutcome]
  /// The high-level results of the adjudication if adjudication has been
  /// performed.
  ClaimResponseReviewOutcomeBuilder? reviewOutcome;

  /// [adjudication]
  /// The adjudication results.
  List<ClaimResponseAdjudicationBuilder>? adjudication;

  /// [subDetail]
  /// A sub-detail adjudication of a simple product or service.
  List<ClaimResponseSubDetailBuilder>? subDetail;

  /// Converts a [ClaimResponseDetailBuilder]
  /// to [ClaimResponseDetail]
  @override
  ClaimResponseDetail build() => ClaimResponseDetail.fromJson(toJson());

  /// Converts a [ClaimResponseDetailBuilder]
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
    addField('detailSequence', detailSequence);
    addField('traceNumber', traceNumber);
    addField('noteNumber', noteNumber);
    addField('reviewOutcome', reviewOutcome);
    addField('adjudication', adjudication);
    addField('subDetail', subDetail);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'detailSequence',
      'traceNumber',
      'noteNumber',
      'reviewOutcome',
      'adjudication',
      'subDetail',
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
      case 'detailSequence':
        if (detailSequence != null) {
          fields.add(detailSequence!);
        }
      case 'traceNumber':
        if (traceNumber != null) {
          fields.addAll(traceNumber!);
        }
      case 'noteNumber':
        if (noteNumber != null) {
          fields.addAll(noteNumber!);
        }
      case 'reviewOutcome':
        if (reviewOutcome != null) {
          fields.add(reviewOutcome!);
        }
      case 'adjudication':
        if (adjudication != null) {
          fields.addAll(adjudication!);
        }
      case 'subDetail':
        if (subDetail != null) {
          fields.addAll(subDetail!);
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
      case 'detailSequence':
        {
          if (child is FhirPositiveIntBuilder) {
            detailSequence = child;
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
                  detailSequence = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'traceNumber':
        {
          if (child is List<IdentifierBuilder>) {
            // Replace or create new list
            traceNumber = child;
            return;
          } else if (child is IdentifierBuilder) {
            // Add single element to existing list or create new list
            traceNumber = [
              ...(traceNumber ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'noteNumber':
        {
          if (child is List<FhirPositiveIntBuilder>) {
            // Replace or create new list
            noteNumber = child;
            return;
          } else if (child is FhirPositiveIntBuilder) {
            // Add single element to existing list or create new list
            noteNumber = [
              ...(noteNumber ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirPositiveIntBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                // For number types,
                // first parse to num then pass the number directly
                final numValue = num.tryParse(stringValue);
                if (numValue != null) {
                  final converted = FhirPositiveIntBuilder.tryParse(numValue);
                  if (converted != null) {
                    convertedList.add(converted);
                  }
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              noteNumber = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirPositiveIntBuilder.tryParse(numValue);
                if (converted != null) {
                  noteNumber = [
                    ...(noteNumber ?? []),
                    converted,
                  ];
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'reviewOutcome':
        {
          if (child is ClaimResponseReviewOutcomeBuilder) {
            reviewOutcome = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'adjudication':
        {
          if (child is List<ClaimResponseAdjudicationBuilder>) {
            // Replace or create new list
            adjudication = child;
            return;
          } else if (child is ClaimResponseAdjudicationBuilder) {
            // Add single element to existing list or create new list
            adjudication = [
              ...(adjudication ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'subDetail':
        {
          if (child is List<ClaimResponseSubDetailBuilder>) {
            // Replace or create new list
            subDetail = child;
            return;
          } else if (child is ClaimResponseSubDetailBuilder) {
            // Add single element to existing list or create new list
            subDetail = [
              ...(subDetail ?? []),
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
      case 'detailSequence':
        return ['FhirPositiveIntBuilder'];
      case 'traceNumber':
        return ['IdentifierBuilder'];
      case 'noteNumber':
        return ['FhirPositiveIntBuilder'];
      case 'reviewOutcome':
        return ['ClaimResponseReviewOutcomeBuilder'];
      case 'adjudication':
        return ['ClaimResponseAdjudicationBuilder'];
      case 'subDetail':
        return ['ClaimResponseSubDetailBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ClaimResponseDetailBuilder]
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
      case 'detailSequence':
        {
          detailSequence = FhirPositiveIntBuilder.empty();
          return;
        }
      case 'traceNumber':
        {
          traceNumber = <IdentifierBuilder>[];
          return;
        }
      case 'noteNumber':
        {
          noteNumber = <FhirPositiveIntBuilder>[];
          return;
        }
      case 'reviewOutcome':
        {
          reviewOutcome = ClaimResponseReviewOutcomeBuilder.empty();
          return;
        }
      case 'adjudication':
        {
          adjudication = <ClaimResponseAdjudicationBuilder>[];
          return;
        }
      case 'subDetail':
        {
          subDetail = <ClaimResponseSubDetailBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ClaimResponseDetailBuilder clone() => throw UnimplementedError();
  @override
  ClaimResponseDetailBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirPositiveIntBuilder? detailSequence,
    List<IdentifierBuilder>? traceNumber,
    List<FhirPositiveIntBuilder>? noteNumber,
    ClaimResponseReviewOutcomeBuilder? reviewOutcome,
    List<ClaimResponseAdjudicationBuilder>? adjudication,
    List<ClaimResponseSubDetailBuilder>? subDetail,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ClaimResponseDetailBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      detailSequence: detailSequence ?? this.detailSequence,
      traceNumber: traceNumber ?? this.traceNumber,
      noteNumber: noteNumber ?? this.noteNumber,
      reviewOutcome: reviewOutcome ?? this.reviewOutcome,
      adjudication: adjudication ?? this.adjudication,
      subDetail: subDetail ?? this.subDetail,
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
    if (o is! ClaimResponseDetailBuilder) {
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
      detailSequence,
      o.detailSequence,
    )) {
      return false;
    }
    if (!listEquals<IdentifierBuilder>(
      traceNumber,
      o.traceNumber,
    )) {
      return false;
    }
    if (!listEquals<FhirPositiveIntBuilder>(
      noteNumber,
      o.noteNumber,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      reviewOutcome,
      o.reviewOutcome,
    )) {
      return false;
    }
    if (!listEquals<ClaimResponseAdjudicationBuilder>(
      adjudication,
      o.adjudication,
    )) {
      return false;
    }
    if (!listEquals<ClaimResponseSubDetailBuilder>(
      subDetail,
      o.subDetail,
    )) {
      return false;
    }
    return true;
  }
}

/// [ClaimResponseSubDetailBuilder]
/// A sub-detail adjudication of a simple product or service.
class ClaimResponseSubDetailBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ClaimResponseSubDetailBuilder]

  ClaimResponseSubDetailBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.subDetailSequence,
    this.traceNumber,
    this.noteNumber,
    this.reviewOutcome,
    this.adjudication,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ClaimResponse.item.detail.subDetail',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ClaimResponseSubDetailBuilder.empty() =>
      ClaimResponseSubDetailBuilder(
        subDetailSequence: FhirPositiveIntBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimResponseSubDetailBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ClaimResponse.item.detail.subDetail';
    return ClaimResponseSubDetailBuilder(
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
      subDetailSequence: JsonParser.parsePrimitive<FhirPositiveIntBuilder>(
        json,
        'subDetailSequence',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.subDetailSequence',
      ),
      traceNumber: (json['traceNumber'] as List<dynamic>?)
          ?.map<IdentifierBuilder>(
            (v) => IdentifierBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.traceNumber',
              },
            ),
          )
          .toList(),
      noteNumber: JsonParser.parsePrimitiveList<FhirPositiveIntBuilder>(
        json,
        'noteNumber',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.noteNumber',
      ),
      reviewOutcome: JsonParser.parseObject<ClaimResponseReviewOutcomeBuilder>(
        json,
        'reviewOutcome',
        ClaimResponseReviewOutcomeBuilder.fromJson,
        '$objectPath.reviewOutcome',
      ),
      adjudication: (json['adjudication'] as List<dynamic>?)
          ?.map<ClaimResponseAdjudicationBuilder>(
            (v) => ClaimResponseAdjudicationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.adjudication',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ClaimResponseSubDetailBuilder]
  /// from a [String] or [YamlMap] object
  factory ClaimResponseSubDetailBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClaimResponseSubDetailBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClaimResponseSubDetailBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClaimResponseSubDetailBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClaimResponseSubDetailBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimResponseSubDetailBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ClaimResponseSubDetailBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ClaimResponseSubDetail';

  /// [subDetailSequence]
  /// A number to uniquely reference the claim sub-detail entry.
  FhirPositiveIntBuilder? subDetailSequence;

  /// [traceNumber]
  /// Trace number for tracking purposes. May be defined at the jurisdiction
  /// level or between trading partners.
  List<IdentifierBuilder>? traceNumber;

  /// [noteNumber]
  /// The numbers associated with notes below which apply to the adjudication
  /// of this item.
  List<FhirPositiveIntBuilder>? noteNumber;

  /// [reviewOutcome]
  /// The high-level results of the adjudication if adjudication has been
  /// performed.
  ClaimResponseReviewOutcomeBuilder? reviewOutcome;

  /// [adjudication]
  /// The adjudication results.
  List<ClaimResponseAdjudicationBuilder>? adjudication;

  /// Converts a [ClaimResponseSubDetailBuilder]
  /// to [ClaimResponseSubDetail]
  @override
  ClaimResponseSubDetail build() => ClaimResponseSubDetail.fromJson(toJson());

  /// Converts a [ClaimResponseSubDetailBuilder]
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
    addField('subDetailSequence', subDetailSequence);
    addField('traceNumber', traceNumber);
    addField('noteNumber', noteNumber);
    addField('reviewOutcome', reviewOutcome);
    addField('adjudication', adjudication);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'subDetailSequence',
      'traceNumber',
      'noteNumber',
      'reviewOutcome',
      'adjudication',
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
      case 'subDetailSequence':
        if (subDetailSequence != null) {
          fields.add(subDetailSequence!);
        }
      case 'traceNumber':
        if (traceNumber != null) {
          fields.addAll(traceNumber!);
        }
      case 'noteNumber':
        if (noteNumber != null) {
          fields.addAll(noteNumber!);
        }
      case 'reviewOutcome':
        if (reviewOutcome != null) {
          fields.add(reviewOutcome!);
        }
      case 'adjudication':
        if (adjudication != null) {
          fields.addAll(adjudication!);
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
      case 'subDetailSequence':
        {
          if (child is FhirPositiveIntBuilder) {
            subDetailSequence = child;
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
                  subDetailSequence = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'traceNumber':
        {
          if (child is List<IdentifierBuilder>) {
            // Replace or create new list
            traceNumber = child;
            return;
          } else if (child is IdentifierBuilder) {
            // Add single element to existing list or create new list
            traceNumber = [
              ...(traceNumber ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'noteNumber':
        {
          if (child is List<FhirPositiveIntBuilder>) {
            // Replace or create new list
            noteNumber = child;
            return;
          } else if (child is FhirPositiveIntBuilder) {
            // Add single element to existing list or create new list
            noteNumber = [
              ...(noteNumber ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirPositiveIntBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                // For number types,
                // first parse to num then pass the number directly
                final numValue = num.tryParse(stringValue);
                if (numValue != null) {
                  final converted = FhirPositiveIntBuilder.tryParse(numValue);
                  if (converted != null) {
                    convertedList.add(converted);
                  }
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              noteNumber = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirPositiveIntBuilder.tryParse(numValue);
                if (converted != null) {
                  noteNumber = [
                    ...(noteNumber ?? []),
                    converted,
                  ];
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'reviewOutcome':
        {
          if (child is ClaimResponseReviewOutcomeBuilder) {
            reviewOutcome = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'adjudication':
        {
          if (child is List<ClaimResponseAdjudicationBuilder>) {
            // Replace or create new list
            adjudication = child;
            return;
          } else if (child is ClaimResponseAdjudicationBuilder) {
            // Add single element to existing list or create new list
            adjudication = [
              ...(adjudication ?? []),
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
      case 'subDetailSequence':
        return ['FhirPositiveIntBuilder'];
      case 'traceNumber':
        return ['IdentifierBuilder'];
      case 'noteNumber':
        return ['FhirPositiveIntBuilder'];
      case 'reviewOutcome':
        return ['ClaimResponseReviewOutcomeBuilder'];
      case 'adjudication':
        return ['ClaimResponseAdjudicationBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ClaimResponseSubDetailBuilder]
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
      case 'subDetailSequence':
        {
          subDetailSequence = FhirPositiveIntBuilder.empty();
          return;
        }
      case 'traceNumber':
        {
          traceNumber = <IdentifierBuilder>[];
          return;
        }
      case 'noteNumber':
        {
          noteNumber = <FhirPositiveIntBuilder>[];
          return;
        }
      case 'reviewOutcome':
        {
          reviewOutcome = ClaimResponseReviewOutcomeBuilder.empty();
          return;
        }
      case 'adjudication':
        {
          adjudication = <ClaimResponseAdjudicationBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ClaimResponseSubDetailBuilder clone() => throw UnimplementedError();
  @override
  ClaimResponseSubDetailBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirPositiveIntBuilder? subDetailSequence,
    List<IdentifierBuilder>? traceNumber,
    List<FhirPositiveIntBuilder>? noteNumber,
    ClaimResponseReviewOutcomeBuilder? reviewOutcome,
    List<ClaimResponseAdjudicationBuilder>? adjudication,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ClaimResponseSubDetailBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      subDetailSequence: subDetailSequence ?? this.subDetailSequence,
      traceNumber: traceNumber ?? this.traceNumber,
      noteNumber: noteNumber ?? this.noteNumber,
      reviewOutcome: reviewOutcome ?? this.reviewOutcome,
      adjudication: adjudication ?? this.adjudication,
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
    if (o is! ClaimResponseSubDetailBuilder) {
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
      subDetailSequence,
      o.subDetailSequence,
    )) {
      return false;
    }
    if (!listEquals<IdentifierBuilder>(
      traceNumber,
      o.traceNumber,
    )) {
      return false;
    }
    if (!listEquals<FhirPositiveIntBuilder>(
      noteNumber,
      o.noteNumber,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      reviewOutcome,
      o.reviewOutcome,
    )) {
      return false;
    }
    if (!listEquals<ClaimResponseAdjudicationBuilder>(
      adjudication,
      o.adjudication,
    )) {
      return false;
    }
    return true;
  }
}

/// [ClaimResponseAddItemBuilder]
/// The first-tier service adjudications for payor added product or service
/// lines.
class ClaimResponseAddItemBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ClaimResponseAddItemBuilder]

  ClaimResponseAddItemBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.itemSequence,
    this.detailSequence,
    this.subdetailSequence,
    this.traceNumber,
    this.provider,
    this.revenue,
    this.productOrService,
    this.productOrServiceEnd,
    this.request,
    this.modifier,
    this.programCode,
    ServicedXClaimResponseAddItemBuilder? servicedX,
    FhirDateBuilder? servicedDate,
    PeriodBuilder? servicedPeriod,
    LocationXClaimResponseAddItemBuilder? locationX,
    CodeableConceptBuilder? locationCodeableConcept,
    AddressBuilder? locationAddress,
    ReferenceBuilder? locationReference,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.tax,
    this.net,
    this.bodySite,
    this.noteNumber,
    this.reviewOutcome,
    this.adjudication,
    this.detail,
    super.disallowExtensions,
  })  : servicedX = servicedX ?? servicedDate ?? servicedPeriod,
        locationX = locationX ??
            locationCodeableConcept ??
            locationAddress ??
            locationReference,
        super(
          objectPath: 'ClaimResponse.addItem',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ClaimResponseAddItemBuilder.empty() => ClaimResponseAddItemBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimResponseAddItemBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ClaimResponse.addItem';
    return ClaimResponseAddItemBuilder(
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
      itemSequence: JsonParser.parsePrimitiveList<FhirPositiveIntBuilder>(
        json,
        'itemSequence',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.itemSequence',
      ),
      detailSequence: JsonParser.parsePrimitiveList<FhirPositiveIntBuilder>(
        json,
        'detailSequence',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.detailSequence',
      ),
      subdetailSequence: JsonParser.parsePrimitiveList<FhirPositiveIntBuilder>(
        json,
        'subdetailSequence',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.subdetailSequence',
      ),
      traceNumber: (json['traceNumber'] as List<dynamic>?)
          ?.map<IdentifierBuilder>(
            (v) => IdentifierBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.traceNumber',
              },
            ),
          )
          .toList(),
      provider: (json['provider'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.provider',
              },
            ),
          )
          .toList(),
      revenue: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'revenue',
        CodeableConceptBuilder.fromJson,
        '$objectPath.revenue',
      ),
      productOrService: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'productOrService',
        CodeableConceptBuilder.fromJson,
        '$objectPath.productOrService',
      ),
      productOrServiceEnd: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'productOrServiceEnd',
        CodeableConceptBuilder.fromJson,
        '$objectPath.productOrServiceEnd',
      ),
      request: (json['request'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.request',
              },
            ),
          )
          .toList(),
      modifier: (json['modifier'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifier',
              },
            ),
          )
          .toList(),
      programCode: (json['programCode'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.programCode',
              },
            ),
          )
          .toList(),
      servicedX:
          JsonParser.parsePolymorphic<ServicedXClaimResponseAddItemBuilder>(
        json,
        {
          'servicedDate': FhirDateBuilder.fromJson,
          'servicedPeriod': PeriodBuilder.fromJson,
        },
        objectPath,
      ),
      locationX:
          JsonParser.parsePolymorphic<LocationXClaimResponseAddItemBuilder>(
        json,
        {
          'locationCodeableConcept': CodeableConceptBuilder.fromJson,
          'locationAddress': AddressBuilder.fromJson,
          'locationReference': ReferenceBuilder.fromJson,
        },
        objectPath,
      ),
      quantity: JsonParser.parseObject<QuantityBuilder>(
        json,
        'quantity',
        QuantityBuilder.fromJson,
        '$objectPath.quantity',
      ),
      unitPrice: JsonParser.parseObject<MoneyBuilder>(
        json,
        'unitPrice',
        MoneyBuilder.fromJson,
        '$objectPath.unitPrice',
      ),
      factor: JsonParser.parsePrimitive<FhirDecimalBuilder>(
        json,
        'factor',
        FhirDecimalBuilder.fromJson,
        '$objectPath.factor',
      ),
      tax: JsonParser.parseObject<MoneyBuilder>(
        json,
        'tax',
        MoneyBuilder.fromJson,
        '$objectPath.tax',
      ),
      net: JsonParser.parseObject<MoneyBuilder>(
        json,
        'net',
        MoneyBuilder.fromJson,
        '$objectPath.net',
      ),
      bodySite: (json['bodySite'] as List<dynamic>?)
          ?.map<ClaimResponseBodySiteBuilder>(
            (v) => ClaimResponseBodySiteBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.bodySite',
              },
            ),
          )
          .toList(),
      noteNumber: JsonParser.parsePrimitiveList<FhirPositiveIntBuilder>(
        json,
        'noteNumber',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.noteNumber',
      ),
      reviewOutcome: JsonParser.parseObject<ClaimResponseReviewOutcomeBuilder>(
        json,
        'reviewOutcome',
        ClaimResponseReviewOutcomeBuilder.fromJson,
        '$objectPath.reviewOutcome',
      ),
      adjudication: (json['adjudication'] as List<dynamic>?)
          ?.map<ClaimResponseAdjudicationBuilder>(
            (v) => ClaimResponseAdjudicationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.adjudication',
              },
            ),
          )
          .toList(),
      detail: (json['detail'] as List<dynamic>?)
          ?.map<ClaimResponseDetailBuilder>(
            (v) => ClaimResponseDetailBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.detail',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ClaimResponseAddItemBuilder]
  /// from a [String] or [YamlMap] object
  factory ClaimResponseAddItemBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClaimResponseAddItemBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClaimResponseAddItemBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClaimResponseAddItemBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClaimResponseAddItemBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimResponseAddItemBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ClaimResponseAddItemBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ClaimResponseAddItem';

  /// [itemSequence]
  /// Claim items which this service line is intended to replace.
  List<FhirPositiveIntBuilder>? itemSequence;

  /// [detailSequence]
  /// The sequence number of the details within the claim item which this
  /// line is intended to replace.
  List<FhirPositiveIntBuilder>? detailSequence;

  /// [subdetailSequence]
  /// The sequence number of the sub-details within the details within the
  /// claim item which this line is intended to replace.
  List<FhirPositiveIntBuilder>? subdetailSequence;

  /// [traceNumber]
  /// Trace number for tracking purposes. May be defined at the jurisdiction
  /// level or between trading partners.
  List<IdentifierBuilder>? traceNumber;

  /// [provider]
  /// The providers who are authorized for the services rendered to the
  /// patient.
  List<ReferenceBuilder>? provider;

  /// [revenue]
  /// The type of revenue or cost center providing the product and/or
  /// service.
  CodeableConceptBuilder? revenue;

  /// [productOrService]
  /// When the value is a group code then this item collects a set of related
  /// item details, otherwise this contains the product, service, drug or
  /// other billing code for the item. This element may be the start of a
  /// range of .productOrService codes used in conjunction with
  /// .productOrServiceEnd or it may be a solo element where
  /// .productOrServiceEnd is not used.
  CodeableConceptBuilder? productOrService;

  /// [productOrServiceEnd]
  /// This contains the end of a range of product, service, drug or other
  /// billing codes for the item. This element is not used when the
  /// .productOrService is a group code. This value may only be present when
  /// a .productOfService code has been provided to convey the start of the
  /// range. Typically this value may be used only with preauthorizations and
  /// not with claims.
  CodeableConceptBuilder? productOrServiceEnd;

  /// [request]
  /// Request or Referral for Goods or Service to be rendered.
  List<ReferenceBuilder>? request;

  /// [modifier]
  /// Item typification or modifiers codes to convey additional context for
  /// the product or service.
  List<CodeableConceptBuilder>? modifier;

  /// [programCode]
  /// Identifies the program under which this may be recovered.
  List<CodeableConceptBuilder>? programCode;

  /// [servicedX]
  /// The date or dates when the service or product was supplied, performed
  /// or completed.
  ServicedXClaimResponseAddItemBuilder? servicedX;

  /// Getter for [servicedDate] as a FhirDateBuilder
  FhirDateBuilder? get servicedDate => servicedX?.isAs<FhirDateBuilder>();

  /// Getter for [servicedPeriod] as a PeriodBuilder
  PeriodBuilder? get servicedPeriod => servicedX?.isAs<PeriodBuilder>();

  /// [locationX]
  /// Where the product or service was provided.
  LocationXClaimResponseAddItemBuilder? locationX;

  /// Getter for [locationCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get locationCodeableConcept =>
      locationX?.isAs<CodeableConceptBuilder>();

  /// Getter for [locationAddress] as a AddressBuilder
  AddressBuilder? get locationAddress => locationX?.isAs<AddressBuilder>();

  /// Getter for [locationReference] as a ReferenceBuilder
  ReferenceBuilder? get locationReference =>
      locationX?.isAs<ReferenceBuilder>();

  /// [quantity]
  /// The number of repetitions of a service or product.
  QuantityBuilder? quantity;

  /// [unitPrice]
  /// If the item is not a group then this is the fee for the product or
  /// service, otherwise this is the total of the fees for the details of the
  /// group.
  MoneyBuilder? unitPrice;

  /// [factor]
  /// A real number that represents a multiplier used in determining the
  /// overall value of services delivered and/or goods received. The concept
  /// of a Factor allows for a discount or surcharge multiplier to be applied
  /// to a monetary amount.
  FhirDecimalBuilder? factor;

  /// [tax]
  /// The total of taxes applicable for this product or service.
  MoneyBuilder? tax;

  /// [net]
  /// The total amount claimed for the group (if a grouper) or the addItem.
  /// Net = unit price * quantity * factor.
  MoneyBuilder? net;

  /// [bodySite]
  /// Physical location where the service is performed or applies.
  List<ClaimResponseBodySiteBuilder>? bodySite;

  /// [noteNumber]
  /// The numbers associated with notes below which apply to the adjudication
  /// of this item.
  List<FhirPositiveIntBuilder>? noteNumber;

  /// [reviewOutcome]
  /// The high-level results of the adjudication if adjudication has been
  /// performed.
  ClaimResponseReviewOutcomeBuilder? reviewOutcome;

  /// [adjudication]
  /// The adjudication results.
  List<ClaimResponseAdjudicationBuilder>? adjudication;

  /// [detail]
  /// The second-tier service adjudications for payor added services.
  List<ClaimResponseDetailBuilder>? detail;

  /// Converts a [ClaimResponseAddItemBuilder]
  /// to [ClaimResponseAddItem]
  @override
  ClaimResponseAddItem build() => ClaimResponseAddItem.fromJson(toJson());

  /// Converts a [ClaimResponseAddItemBuilder]
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
    addField('itemSequence', itemSequence);
    addField('detailSequence', detailSequence);
    addField('subdetailSequence', subdetailSequence);
    addField('traceNumber', traceNumber);
    addField('provider', provider);
    addField('revenue', revenue);
    addField('productOrService', productOrService);
    addField('productOrServiceEnd', productOrServiceEnd);
    addField('request', request);
    addField('modifier', modifier);
    addField('programCode', programCode);
    if (servicedX != null) {
      final fhirType = servicedX!.fhirType;
      addField('serviced${fhirType.capitalizeFirstLetter()}', servicedX);
    }

    if (locationX != null) {
      final fhirType = locationX!.fhirType;
      addField('location${fhirType.capitalizeFirstLetter()}', locationX);
    }

    addField('quantity', quantity);
    addField('unitPrice', unitPrice);
    addField('factor', factor);
    addField('tax', tax);
    addField('net', net);
    addField('bodySite', bodySite);
    addField('noteNumber', noteNumber);
    addField('reviewOutcome', reviewOutcome);
    addField('adjudication', adjudication);
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
      'itemSequence',
      'detailSequence',
      'subdetailSequence',
      'traceNumber',
      'provider',
      'revenue',
      'productOrService',
      'productOrServiceEnd',
      'request',
      'modifier',
      'programCode',
      'servicedX',
      'locationX',
      'quantity',
      'unitPrice',
      'factor',
      'tax',
      'net',
      'bodySite',
      'noteNumber',
      'reviewOutcome',
      'adjudication',
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
      case 'itemSequence':
        if (itemSequence != null) {
          fields.addAll(itemSequence!);
        }
      case 'detailSequence':
        if (detailSequence != null) {
          fields.addAll(detailSequence!);
        }
      case 'subdetailSequence':
        if (subdetailSequence != null) {
          fields.addAll(subdetailSequence!);
        }
      case 'traceNumber':
        if (traceNumber != null) {
          fields.addAll(traceNumber!);
        }
      case 'provider':
        if (provider != null) {
          fields.addAll(provider!);
        }
      case 'revenue':
        if (revenue != null) {
          fields.add(revenue!);
        }
      case 'productOrService':
        if (productOrService != null) {
          fields.add(productOrService!);
        }
      case 'productOrServiceEnd':
        if (productOrServiceEnd != null) {
          fields.add(productOrServiceEnd!);
        }
      case 'request':
        if (request != null) {
          fields.addAll(request!);
        }
      case 'modifier':
        if (modifier != null) {
          fields.addAll(modifier!);
        }
      case 'programCode':
        if (programCode != null) {
          fields.addAll(programCode!);
        }
      case 'serviced':
        if (servicedX != null) {
          fields.add(servicedX!);
        }
      case 'servicedX':
        if (servicedX != null) {
          fields.add(servicedX!);
        }
      case 'servicedDate':
        if (servicedX is FhirDateBuilder) {
          fields.add(servicedX!);
        }
      case 'servicedPeriod':
        if (servicedX is PeriodBuilder) {
          fields.add(servicedX!);
        }
      case 'location':
        if (locationX != null) {
          fields.add(locationX!);
        }
      case 'locationX':
        if (locationX != null) {
          fields.add(locationX!);
        }
      case 'locationCodeableConcept':
        if (locationX is CodeableConceptBuilder) {
          fields.add(locationX!);
        }
      case 'locationAddress':
        if (locationX is AddressBuilder) {
          fields.add(locationX!);
        }
      case 'locationReference':
        if (locationX is ReferenceBuilder) {
          fields.add(locationX!);
        }
      case 'quantity':
        if (quantity != null) {
          fields.add(quantity!);
        }
      case 'unitPrice':
        if (unitPrice != null) {
          fields.add(unitPrice!);
        }
      case 'factor':
        if (factor != null) {
          fields.add(factor!);
        }
      case 'tax':
        if (tax != null) {
          fields.add(tax!);
        }
      case 'net':
        if (net != null) {
          fields.add(net!);
        }
      case 'bodySite':
        if (bodySite != null) {
          fields.addAll(bodySite!);
        }
      case 'noteNumber':
        if (noteNumber != null) {
          fields.addAll(noteNumber!);
        }
      case 'reviewOutcome':
        if (reviewOutcome != null) {
          fields.add(reviewOutcome!);
        }
      case 'adjudication':
        if (adjudication != null) {
          fields.addAll(adjudication!);
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
      case 'itemSequence':
        {
          if (child is List<FhirPositiveIntBuilder>) {
            // Replace or create new list
            itemSequence = child;
            return;
          } else if (child is FhirPositiveIntBuilder) {
            // Add single element to existing list or create new list
            itemSequence = [
              ...(itemSequence ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirPositiveIntBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                // For number types,
                // first parse to num then pass the number directly
                final numValue = num.tryParse(stringValue);
                if (numValue != null) {
                  final converted = FhirPositiveIntBuilder.tryParse(numValue);
                  if (converted != null) {
                    convertedList.add(converted);
                  }
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              itemSequence = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirPositiveIntBuilder.tryParse(numValue);
                if (converted != null) {
                  itemSequence = [
                    ...(itemSequence ?? []),
                    converted,
                  ];
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'detailSequence':
        {
          if (child is List<FhirPositiveIntBuilder>) {
            // Replace or create new list
            detailSequence = child;
            return;
          } else if (child is FhirPositiveIntBuilder) {
            // Add single element to existing list or create new list
            detailSequence = [
              ...(detailSequence ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirPositiveIntBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                // For number types,
                // first parse to num then pass the number directly
                final numValue = num.tryParse(stringValue);
                if (numValue != null) {
                  final converted = FhirPositiveIntBuilder.tryParse(numValue);
                  if (converted != null) {
                    convertedList.add(converted);
                  }
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              detailSequence = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirPositiveIntBuilder.tryParse(numValue);
                if (converted != null) {
                  detailSequence = [
                    ...(detailSequence ?? []),
                    converted,
                  ];
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'subdetailSequence':
        {
          if (child is List<FhirPositiveIntBuilder>) {
            // Replace or create new list
            subdetailSequence = child;
            return;
          } else if (child is FhirPositiveIntBuilder) {
            // Add single element to existing list or create new list
            subdetailSequence = [
              ...(subdetailSequence ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirPositiveIntBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                // For number types,
                // first parse to num then pass the number directly
                final numValue = num.tryParse(stringValue);
                if (numValue != null) {
                  final converted = FhirPositiveIntBuilder.tryParse(numValue);
                  if (converted != null) {
                    convertedList.add(converted);
                  }
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              subdetailSequence = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirPositiveIntBuilder.tryParse(numValue);
                if (converted != null) {
                  subdetailSequence = [
                    ...(subdetailSequence ?? []),
                    converted,
                  ];
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'traceNumber':
        {
          if (child is List<IdentifierBuilder>) {
            // Replace or create new list
            traceNumber = child;
            return;
          } else if (child is IdentifierBuilder) {
            // Add single element to existing list or create new list
            traceNumber = [
              ...(traceNumber ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'provider':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            provider = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            provider = [
              ...(provider ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'revenue':
        {
          if (child is CodeableConceptBuilder) {
            revenue = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'productOrService':
        {
          if (child is CodeableConceptBuilder) {
            productOrService = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'productOrServiceEnd':
        {
          if (child is CodeableConceptBuilder) {
            productOrServiceEnd = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'request':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            request = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            request = [
              ...(request ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifier':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            modifier = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            modifier = [
              ...(modifier ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'programCode':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            programCode = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            programCode = [
              ...(programCode ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'serviced':
      case 'servicedX':
        {
          if (child is ServicedXClaimResponseAddItemBuilder) {
            servicedX = child;
            return;
          } else {
            if (child is FhirDateBuilder) {
              servicedX = child;
              return;
            }
            if (child is PeriodBuilder) {
              servicedX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'servicedDate':
        {
          if (child is FhirDateBuilder) {
            servicedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'servicedPeriod':
        {
          if (child is PeriodBuilder) {
            servicedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'location':
      case 'locationX':
        {
          if (child is LocationXClaimResponseAddItemBuilder) {
            locationX = child;
            return;
          } else {
            if (child is CodeableConceptBuilder) {
              locationX = child;
              return;
            }
            if (child is AddressBuilder) {
              locationX = child;
              return;
            }
            if (child is ReferenceBuilder) {
              locationX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'locationCodeableConcept':
        {
          if (child is CodeableConceptBuilder) {
            locationX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'locationAddress':
        {
          if (child is AddressBuilder) {
            locationX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'locationReference':
        {
          if (child is ReferenceBuilder) {
            locationX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'quantity':
        {
          if (child is QuantityBuilder) {
            quantity = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'unitPrice':
        {
          if (child is MoneyBuilder) {
            unitPrice = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'factor':
        {
          if (child is FhirDecimalBuilder) {
            factor = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirDecimalBuilder.tryParse(numValue);
                if (converted != null) {
                  factor = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'tax':
        {
          if (child is MoneyBuilder) {
            tax = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'net':
        {
          if (child is MoneyBuilder) {
            net = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'bodySite':
        {
          if (child is List<ClaimResponseBodySiteBuilder>) {
            // Replace or create new list
            bodySite = child;
            return;
          } else if (child is ClaimResponseBodySiteBuilder) {
            // Add single element to existing list or create new list
            bodySite = [
              ...(bodySite ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'noteNumber':
        {
          if (child is List<FhirPositiveIntBuilder>) {
            // Replace or create new list
            noteNumber = child;
            return;
          } else if (child is FhirPositiveIntBuilder) {
            // Add single element to existing list or create new list
            noteNumber = [
              ...(noteNumber ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirPositiveIntBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                // For number types,
                // first parse to num then pass the number directly
                final numValue = num.tryParse(stringValue);
                if (numValue != null) {
                  final converted = FhirPositiveIntBuilder.tryParse(numValue);
                  if (converted != null) {
                    convertedList.add(converted);
                  }
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              noteNumber = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirPositiveIntBuilder.tryParse(numValue);
                if (converted != null) {
                  noteNumber = [
                    ...(noteNumber ?? []),
                    converted,
                  ];
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'reviewOutcome':
        {
          if (child is ClaimResponseReviewOutcomeBuilder) {
            reviewOutcome = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'adjudication':
        {
          if (child is List<ClaimResponseAdjudicationBuilder>) {
            // Replace or create new list
            adjudication = child;
            return;
          } else if (child is ClaimResponseAdjudicationBuilder) {
            // Add single element to existing list or create new list
            adjudication = [
              ...(adjudication ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'detail':
        {
          if (child is List<ClaimResponseDetailBuilder>) {
            // Replace or create new list
            detail = child;
            return;
          } else if (child is ClaimResponseDetailBuilder) {
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
      case 'itemSequence':
        return ['FhirPositiveIntBuilder'];
      case 'detailSequence':
        return ['FhirPositiveIntBuilder'];
      case 'subdetailSequence':
        return ['FhirPositiveIntBuilder'];
      case 'traceNumber':
        return ['IdentifierBuilder'];
      case 'provider':
        return ['ReferenceBuilder'];
      case 'revenue':
        return ['CodeableConceptBuilder'];
      case 'productOrService':
        return ['CodeableConceptBuilder'];
      case 'productOrServiceEnd':
        return ['CodeableConceptBuilder'];
      case 'request':
        return ['ReferenceBuilder'];
      case 'modifier':
        return ['CodeableConceptBuilder'];
      case 'programCode':
        return ['CodeableConceptBuilder'];
      case 'serviced':
      case 'servicedX':
        return [
          'FhirDateBuilder',
          'PeriodBuilder',
        ];
      case 'servicedDate':
        return ['FhirDateBuilder'];
      case 'servicedPeriod':
        return ['PeriodBuilder'];
      case 'location':
      case 'locationX':
        return [
          'CodeableConceptBuilder',
          'AddressBuilder',
          'ReferenceBuilder',
        ];
      case 'locationCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'locationAddress':
        return ['AddressBuilder'];
      case 'locationReference':
        return ['ReferenceBuilder'];
      case 'quantity':
        return ['QuantityBuilder'];
      case 'unitPrice':
        return ['MoneyBuilder'];
      case 'factor':
        return ['FhirDecimalBuilder'];
      case 'tax':
        return ['MoneyBuilder'];
      case 'net':
        return ['MoneyBuilder'];
      case 'bodySite':
        return ['ClaimResponseBodySiteBuilder'];
      case 'noteNumber':
        return ['FhirPositiveIntBuilder'];
      case 'reviewOutcome':
        return ['ClaimResponseReviewOutcomeBuilder'];
      case 'adjudication':
        return ['ClaimResponseAdjudicationBuilder'];
      case 'detail':
        return ['ClaimResponseDetailBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ClaimResponseAddItemBuilder]
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
      case 'itemSequence':
        {
          itemSequence = <FhirPositiveIntBuilder>[];
          return;
        }
      case 'detailSequence':
        {
          detailSequence = <FhirPositiveIntBuilder>[];
          return;
        }
      case 'subdetailSequence':
        {
          subdetailSequence = <FhirPositiveIntBuilder>[];
          return;
        }
      case 'traceNumber':
        {
          traceNumber = <IdentifierBuilder>[];
          return;
        }
      case 'provider':
        {
          provider = <ReferenceBuilder>[];
          return;
        }
      case 'revenue':
        {
          revenue = CodeableConceptBuilder.empty();
          return;
        }
      case 'productOrService':
        {
          productOrService = CodeableConceptBuilder.empty();
          return;
        }
      case 'productOrServiceEnd':
        {
          productOrServiceEnd = CodeableConceptBuilder.empty();
          return;
        }
      case 'request':
        {
          request = <ReferenceBuilder>[];
          return;
        }
      case 'modifier':
        {
          modifier = <CodeableConceptBuilder>[];
          return;
        }
      case 'programCode':
        {
          programCode = <CodeableConceptBuilder>[];
          return;
        }
      case 'serviced':
      case 'servicedX':
      case 'servicedDate':
        {
          servicedX = FhirDateBuilder.empty();
          return;
        }
      case 'servicedPeriod':
        {
          servicedX = PeriodBuilder.empty();
          return;
        }
      case 'location':
      case 'locationX':
      case 'locationCodeableConcept':
        {
          locationX = CodeableConceptBuilder.empty();
          return;
        }
      case 'locationAddress':
        {
          locationX = AddressBuilder.empty();
          return;
        }
      case 'locationReference':
        {
          locationX = ReferenceBuilder.empty();
          return;
        }
      case 'quantity':
        {
          quantity = QuantityBuilder.empty();
          return;
        }
      case 'unitPrice':
        {
          unitPrice = MoneyBuilder.empty();
          return;
        }
      case 'factor':
        {
          factor = FhirDecimalBuilder.empty();
          return;
        }
      case 'tax':
        {
          tax = MoneyBuilder.empty();
          return;
        }
      case 'net':
        {
          net = MoneyBuilder.empty();
          return;
        }
      case 'bodySite':
        {
          bodySite = <ClaimResponseBodySiteBuilder>[];
          return;
        }
      case 'noteNumber':
        {
          noteNumber = <FhirPositiveIntBuilder>[];
          return;
        }
      case 'reviewOutcome':
        {
          reviewOutcome = ClaimResponseReviewOutcomeBuilder.empty();
          return;
        }
      case 'adjudication':
        {
          adjudication = <ClaimResponseAdjudicationBuilder>[];
          return;
        }
      case 'detail':
        {
          detail = <ClaimResponseDetailBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ClaimResponseAddItemBuilder clone() => throw UnimplementedError();
  @override
  ClaimResponseAddItemBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<FhirPositiveIntBuilder>? itemSequence,
    List<FhirPositiveIntBuilder>? detailSequence,
    List<FhirPositiveIntBuilder>? subdetailSequence,
    List<IdentifierBuilder>? traceNumber,
    List<ReferenceBuilder>? provider,
    CodeableConceptBuilder? revenue,
    CodeableConceptBuilder? productOrService,
    CodeableConceptBuilder? productOrServiceEnd,
    List<ReferenceBuilder>? request,
    List<CodeableConceptBuilder>? modifier,
    List<CodeableConceptBuilder>? programCode,
    ServicedXClaimResponseAddItemBuilder? servicedX,
    LocationXClaimResponseAddItemBuilder? locationX,
    QuantityBuilder? quantity,
    MoneyBuilder? unitPrice,
    FhirDecimalBuilder? factor,
    MoneyBuilder? tax,
    MoneyBuilder? net,
    List<ClaimResponseBodySiteBuilder>? bodySite,
    List<FhirPositiveIntBuilder>? noteNumber,
    ClaimResponseReviewOutcomeBuilder? reviewOutcome,
    List<ClaimResponseAdjudicationBuilder>? adjudication,
    List<ClaimResponseDetailBuilder>? detail,
    FhirDateBuilder? servicedDate,
    PeriodBuilder? servicedPeriod,
    CodeableConceptBuilder? locationCodeableConcept,
    AddressBuilder? locationAddress,
    ReferenceBuilder? locationReference,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ClaimResponseAddItemBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      itemSequence: itemSequence ?? this.itemSequence,
      detailSequence: detailSequence ?? this.detailSequence,
      subdetailSequence: subdetailSequence ?? this.subdetailSequence,
      traceNumber: traceNumber ?? this.traceNumber,
      provider: provider ?? this.provider,
      revenue: revenue ?? this.revenue,
      productOrService: productOrService ?? this.productOrService,
      productOrServiceEnd: productOrServiceEnd ?? this.productOrServiceEnd,
      request: request ?? this.request,
      modifier: modifier ?? this.modifier,
      programCode: programCode ?? this.programCode,
      servicedX: servicedX ?? servicedDate ?? servicedPeriod ?? this.servicedX,
      locationX: locationX ??
          locationCodeableConcept ??
          locationAddress ??
          locationReference ??
          this.locationX,
      quantity: quantity ?? this.quantity,
      unitPrice: unitPrice ?? this.unitPrice,
      factor: factor ?? this.factor,
      tax: tax ?? this.tax,
      net: net ?? this.net,
      bodySite: bodySite ?? this.bodySite,
      noteNumber: noteNumber ?? this.noteNumber,
      reviewOutcome: reviewOutcome ?? this.reviewOutcome,
      adjudication: adjudication ?? this.adjudication,
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
    if (o is! ClaimResponseAddItemBuilder) {
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
    if (!listEquals<FhirPositiveIntBuilder>(
      itemSequence,
      o.itemSequence,
    )) {
      return false;
    }
    if (!listEquals<FhirPositiveIntBuilder>(
      detailSequence,
      o.detailSequence,
    )) {
      return false;
    }
    if (!listEquals<FhirPositiveIntBuilder>(
      subdetailSequence,
      o.subdetailSequence,
    )) {
      return false;
    }
    if (!listEquals<IdentifierBuilder>(
      traceNumber,
      o.traceNumber,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      provider,
      o.provider,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      revenue,
      o.revenue,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      productOrService,
      o.productOrService,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      productOrServiceEnd,
      o.productOrServiceEnd,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      request,
      o.request,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      modifier,
      o.modifier,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      programCode,
      o.programCode,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      servicedX,
      o.servicedX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      locationX,
      o.locationX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      quantity,
      o.quantity,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      unitPrice,
      o.unitPrice,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      factor,
      o.factor,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      tax,
      o.tax,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      net,
      o.net,
    )) {
      return false;
    }
    if (!listEquals<ClaimResponseBodySiteBuilder>(
      bodySite,
      o.bodySite,
    )) {
      return false;
    }
    if (!listEquals<FhirPositiveIntBuilder>(
      noteNumber,
      o.noteNumber,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      reviewOutcome,
      o.reviewOutcome,
    )) {
      return false;
    }
    if (!listEquals<ClaimResponseAdjudicationBuilder>(
      adjudication,
      o.adjudication,
    )) {
      return false;
    }
    if (!listEquals<ClaimResponseDetailBuilder>(
      detail,
      o.detail,
    )) {
      return false;
    }
    return true;
  }
}

/// [ClaimResponseBodySiteBuilder]
/// Physical location where the service is performed or applies.
class ClaimResponseBodySiteBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ClaimResponseBodySiteBuilder]

  ClaimResponseBodySiteBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.site,
    this.subSite,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ClaimResponse.addItem.bodySite',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ClaimResponseBodySiteBuilder.empty() => ClaimResponseBodySiteBuilder(
        site: <CodeableReferenceBuilder>[],
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimResponseBodySiteBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ClaimResponse.addItem.bodySite';
    return ClaimResponseBodySiteBuilder(
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
      site: (json['site'] as List<dynamic>?)
          ?.map<CodeableReferenceBuilder>(
            (v) => CodeableReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.site',
              },
            ),
          )
          .toList(),
      subSite: (json['subSite'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.subSite',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ClaimResponseBodySiteBuilder]
  /// from a [String] or [YamlMap] object
  factory ClaimResponseBodySiteBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClaimResponseBodySiteBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClaimResponseBodySiteBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClaimResponseBodySiteBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClaimResponseBodySiteBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimResponseBodySiteBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ClaimResponseBodySiteBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ClaimResponseBodySite';

  /// [site]
  /// Physical service site on the patient (limb, tooth, etc.).
  List<CodeableReferenceBuilder>? site;

  /// [subSite]
  /// A region or surface of the bodySite, e.g. limb region or tooth
  /// surface(s).
  List<CodeableConceptBuilder>? subSite;

  /// Converts a [ClaimResponseBodySiteBuilder]
  /// to [ClaimResponseBodySite]
  @override
  ClaimResponseBodySite build() => ClaimResponseBodySite.fromJson(toJson());

  /// Converts a [ClaimResponseBodySiteBuilder]
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
    addField('subSite', subSite);
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
      'subSite',
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
          fields.addAll(site!);
        }
      case 'subSite':
        if (subSite != null) {
          fields.addAll(subSite!);
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
          if (child is List<CodeableReferenceBuilder>) {
            // Replace or create new list
            site = child;
            return;
          } else if (child is CodeableReferenceBuilder) {
            // Add single element to existing list or create new list
            site = [
              ...(site ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'subSite':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            subSite = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            subSite = [
              ...(subSite ?? []),
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
        return ['CodeableReferenceBuilder'];
      case 'subSite':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ClaimResponseBodySiteBuilder]
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
          site = <CodeableReferenceBuilder>[];
          return;
        }
      case 'subSite':
        {
          subSite = <CodeableConceptBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ClaimResponseBodySiteBuilder clone() => throw UnimplementedError();
  @override
  ClaimResponseBodySiteBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<CodeableReferenceBuilder>? site,
    List<CodeableConceptBuilder>? subSite,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ClaimResponseBodySiteBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      site: site ?? this.site,
      subSite: subSite ?? this.subSite,
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
    if (o is! ClaimResponseBodySiteBuilder) {
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
    if (!listEquals<CodeableReferenceBuilder>(
      site,
      o.site,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      subSite,
      o.subSite,
    )) {
      return false;
    }
    return true;
  }
}

/// [ClaimResponseDetail1Builder]
/// The second-tier service adjudications for payor added services.
class ClaimResponseDetail1Builder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ClaimResponseDetail1Builder]

  ClaimResponseDetail1Builder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.traceNumber,
    this.revenue,
    this.productOrService,
    this.productOrServiceEnd,
    this.modifier,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.tax,
    this.net,
    this.noteNumber,
    this.reviewOutcome,
    this.adjudication,
    this.subDetail,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ClaimResponse.addItem.detail',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ClaimResponseDetail1Builder.empty() => ClaimResponseDetail1Builder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimResponseDetail1Builder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ClaimResponse.addItem.detail';
    return ClaimResponseDetail1Builder(
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
      traceNumber: (json['traceNumber'] as List<dynamic>?)
          ?.map<IdentifierBuilder>(
            (v) => IdentifierBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.traceNumber',
              },
            ),
          )
          .toList(),
      revenue: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'revenue',
        CodeableConceptBuilder.fromJson,
        '$objectPath.revenue',
      ),
      productOrService: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'productOrService',
        CodeableConceptBuilder.fromJson,
        '$objectPath.productOrService',
      ),
      productOrServiceEnd: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'productOrServiceEnd',
        CodeableConceptBuilder.fromJson,
        '$objectPath.productOrServiceEnd',
      ),
      modifier: (json['modifier'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifier',
              },
            ),
          )
          .toList(),
      quantity: JsonParser.parseObject<QuantityBuilder>(
        json,
        'quantity',
        QuantityBuilder.fromJson,
        '$objectPath.quantity',
      ),
      unitPrice: JsonParser.parseObject<MoneyBuilder>(
        json,
        'unitPrice',
        MoneyBuilder.fromJson,
        '$objectPath.unitPrice',
      ),
      factor: JsonParser.parsePrimitive<FhirDecimalBuilder>(
        json,
        'factor',
        FhirDecimalBuilder.fromJson,
        '$objectPath.factor',
      ),
      tax: JsonParser.parseObject<MoneyBuilder>(
        json,
        'tax',
        MoneyBuilder.fromJson,
        '$objectPath.tax',
      ),
      net: JsonParser.parseObject<MoneyBuilder>(
        json,
        'net',
        MoneyBuilder.fromJson,
        '$objectPath.net',
      ),
      noteNumber: JsonParser.parsePrimitiveList<FhirPositiveIntBuilder>(
        json,
        'noteNumber',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.noteNumber',
      ),
      reviewOutcome: JsonParser.parseObject<ClaimResponseReviewOutcomeBuilder>(
        json,
        'reviewOutcome',
        ClaimResponseReviewOutcomeBuilder.fromJson,
        '$objectPath.reviewOutcome',
      ),
      adjudication: (json['adjudication'] as List<dynamic>?)
          ?.map<ClaimResponseAdjudicationBuilder>(
            (v) => ClaimResponseAdjudicationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.adjudication',
              },
            ),
          )
          .toList(),
      subDetail: (json['subDetail'] as List<dynamic>?)
          ?.map<ClaimResponseSubDetailBuilder>(
            (v) => ClaimResponseSubDetailBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.subDetail',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ClaimResponseDetail1Builder]
  /// from a [String] or [YamlMap] object
  factory ClaimResponseDetail1Builder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClaimResponseDetail1Builder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClaimResponseDetail1Builder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClaimResponseDetail1Builder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClaimResponseDetail1Builder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimResponseDetail1Builder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ClaimResponseDetail1Builder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ClaimResponseDetail1';

  /// [traceNumber]
  /// Trace number for tracking purposes. May be defined at the jurisdiction
  /// level or between trading partners.
  List<IdentifierBuilder>? traceNumber;

  /// [revenue]
  /// The type of revenue or cost center providing the product and/or
  /// service.
  CodeableConceptBuilder? revenue;

  /// [productOrService]
  /// When the value is a group code then this item collects a set of related
  /// item details, otherwise this contains the product, service, drug or
  /// other billing code for the item. This element may be the start of a
  /// range of .productOrService codes used in conjunction with
  /// .productOrServiceEnd or it may be a solo element where
  /// .productOrServiceEnd is not used.
  CodeableConceptBuilder? productOrService;

  /// [productOrServiceEnd]
  /// This contains the end of a range of product, service, drug or other
  /// billing codes for the item. This element is not used when the
  /// .productOrService is a group code. This value may only be present when
  /// a .productOfService code has been provided to convey the start of the
  /// range. Typically this value may be used only with preauthorizations and
  /// not with claims.
  CodeableConceptBuilder? productOrServiceEnd;

  /// [modifier]
  /// Item typification or modifiers codes to convey additional context for
  /// the product or service.
  List<CodeableConceptBuilder>? modifier;

  /// [quantity]
  /// The number of repetitions of a service or product.
  QuantityBuilder? quantity;

  /// [unitPrice]
  /// If the item is not a group then this is the fee for the product or
  /// service, otherwise this is the total of the fees for the details of the
  /// group.
  MoneyBuilder? unitPrice;

  /// [factor]
  /// A real number that represents a multiplier used in determining the
  /// overall value of services delivered and/or goods received. The concept
  /// of a Factor allows for a discount or surcharge multiplier to be applied
  /// to a monetary amount.
  FhirDecimalBuilder? factor;

  /// [tax]
  /// The total of taxes applicable for this product or service.
  MoneyBuilder? tax;

  /// [net]
  /// The total amount claimed for the group (if a grouper) or the
  /// addItem.detail. Net = unit price * quantity * factor.
  MoneyBuilder? net;

  /// [noteNumber]
  /// The numbers associated with notes below which apply to the adjudication
  /// of this item.
  List<FhirPositiveIntBuilder>? noteNumber;

  /// [reviewOutcome]
  /// The high-level results of the adjudication if adjudication has been
  /// performed.
  ClaimResponseReviewOutcomeBuilder? reviewOutcome;

  /// [adjudication]
  /// The adjudication results.
  List<ClaimResponseAdjudicationBuilder>? adjudication;

  /// [subDetail]
  /// The third-tier service adjudications for payor added services.
  List<ClaimResponseSubDetailBuilder>? subDetail;

  /// Converts a [ClaimResponseDetail1Builder]
  /// to [ClaimResponseDetail1]
  @override
  ClaimResponseDetail1 build() => ClaimResponseDetail1.fromJson(toJson());

  /// Converts a [ClaimResponseDetail1Builder]
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
    addField('traceNumber', traceNumber);
    addField('revenue', revenue);
    addField('productOrService', productOrService);
    addField('productOrServiceEnd', productOrServiceEnd);
    addField('modifier', modifier);
    addField('quantity', quantity);
    addField('unitPrice', unitPrice);
    addField('factor', factor);
    addField('tax', tax);
    addField('net', net);
    addField('noteNumber', noteNumber);
    addField('reviewOutcome', reviewOutcome);
    addField('adjudication', adjudication);
    addField('subDetail', subDetail);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'traceNumber',
      'revenue',
      'productOrService',
      'productOrServiceEnd',
      'modifier',
      'quantity',
      'unitPrice',
      'factor',
      'tax',
      'net',
      'noteNumber',
      'reviewOutcome',
      'adjudication',
      'subDetail',
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
      case 'traceNumber':
        if (traceNumber != null) {
          fields.addAll(traceNumber!);
        }
      case 'revenue':
        if (revenue != null) {
          fields.add(revenue!);
        }
      case 'productOrService':
        if (productOrService != null) {
          fields.add(productOrService!);
        }
      case 'productOrServiceEnd':
        if (productOrServiceEnd != null) {
          fields.add(productOrServiceEnd!);
        }
      case 'modifier':
        if (modifier != null) {
          fields.addAll(modifier!);
        }
      case 'quantity':
        if (quantity != null) {
          fields.add(quantity!);
        }
      case 'unitPrice':
        if (unitPrice != null) {
          fields.add(unitPrice!);
        }
      case 'factor':
        if (factor != null) {
          fields.add(factor!);
        }
      case 'tax':
        if (tax != null) {
          fields.add(tax!);
        }
      case 'net':
        if (net != null) {
          fields.add(net!);
        }
      case 'noteNumber':
        if (noteNumber != null) {
          fields.addAll(noteNumber!);
        }
      case 'reviewOutcome':
        if (reviewOutcome != null) {
          fields.add(reviewOutcome!);
        }
      case 'adjudication':
        if (adjudication != null) {
          fields.addAll(adjudication!);
        }
      case 'subDetail':
        if (subDetail != null) {
          fields.addAll(subDetail!);
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
      case 'traceNumber':
        {
          if (child is List<IdentifierBuilder>) {
            // Replace or create new list
            traceNumber = child;
            return;
          } else if (child is IdentifierBuilder) {
            // Add single element to existing list or create new list
            traceNumber = [
              ...(traceNumber ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'revenue':
        {
          if (child is CodeableConceptBuilder) {
            revenue = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'productOrService':
        {
          if (child is CodeableConceptBuilder) {
            productOrService = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'productOrServiceEnd':
        {
          if (child is CodeableConceptBuilder) {
            productOrServiceEnd = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifier':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            modifier = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            modifier = [
              ...(modifier ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'quantity':
        {
          if (child is QuantityBuilder) {
            quantity = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'unitPrice':
        {
          if (child is MoneyBuilder) {
            unitPrice = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'factor':
        {
          if (child is FhirDecimalBuilder) {
            factor = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirDecimalBuilder.tryParse(numValue);
                if (converted != null) {
                  factor = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'tax':
        {
          if (child is MoneyBuilder) {
            tax = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'net':
        {
          if (child is MoneyBuilder) {
            net = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'noteNumber':
        {
          if (child is List<FhirPositiveIntBuilder>) {
            // Replace or create new list
            noteNumber = child;
            return;
          } else if (child is FhirPositiveIntBuilder) {
            // Add single element to existing list or create new list
            noteNumber = [
              ...(noteNumber ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirPositiveIntBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                // For number types,
                // first parse to num then pass the number directly
                final numValue = num.tryParse(stringValue);
                if (numValue != null) {
                  final converted = FhirPositiveIntBuilder.tryParse(numValue);
                  if (converted != null) {
                    convertedList.add(converted);
                  }
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              noteNumber = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirPositiveIntBuilder.tryParse(numValue);
                if (converted != null) {
                  noteNumber = [
                    ...(noteNumber ?? []),
                    converted,
                  ];
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'reviewOutcome':
        {
          if (child is ClaimResponseReviewOutcomeBuilder) {
            reviewOutcome = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'adjudication':
        {
          if (child is List<ClaimResponseAdjudicationBuilder>) {
            // Replace or create new list
            adjudication = child;
            return;
          } else if (child is ClaimResponseAdjudicationBuilder) {
            // Add single element to existing list or create new list
            adjudication = [
              ...(adjudication ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'subDetail':
        {
          if (child is List<ClaimResponseSubDetailBuilder>) {
            // Replace or create new list
            subDetail = child;
            return;
          } else if (child is ClaimResponseSubDetailBuilder) {
            // Add single element to existing list or create new list
            subDetail = [
              ...(subDetail ?? []),
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
      case 'traceNumber':
        return ['IdentifierBuilder'];
      case 'revenue':
        return ['CodeableConceptBuilder'];
      case 'productOrService':
        return ['CodeableConceptBuilder'];
      case 'productOrServiceEnd':
        return ['CodeableConceptBuilder'];
      case 'modifier':
        return ['CodeableConceptBuilder'];
      case 'quantity':
        return ['QuantityBuilder'];
      case 'unitPrice':
        return ['MoneyBuilder'];
      case 'factor':
        return ['FhirDecimalBuilder'];
      case 'tax':
        return ['MoneyBuilder'];
      case 'net':
        return ['MoneyBuilder'];
      case 'noteNumber':
        return ['FhirPositiveIntBuilder'];
      case 'reviewOutcome':
        return ['ClaimResponseReviewOutcomeBuilder'];
      case 'adjudication':
        return ['ClaimResponseAdjudicationBuilder'];
      case 'subDetail':
        return ['ClaimResponseSubDetailBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ClaimResponseDetail1Builder]
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
      case 'traceNumber':
        {
          traceNumber = <IdentifierBuilder>[];
          return;
        }
      case 'revenue':
        {
          revenue = CodeableConceptBuilder.empty();
          return;
        }
      case 'productOrService':
        {
          productOrService = CodeableConceptBuilder.empty();
          return;
        }
      case 'productOrServiceEnd':
        {
          productOrServiceEnd = CodeableConceptBuilder.empty();
          return;
        }
      case 'modifier':
        {
          modifier = <CodeableConceptBuilder>[];
          return;
        }
      case 'quantity':
        {
          quantity = QuantityBuilder.empty();
          return;
        }
      case 'unitPrice':
        {
          unitPrice = MoneyBuilder.empty();
          return;
        }
      case 'factor':
        {
          factor = FhirDecimalBuilder.empty();
          return;
        }
      case 'tax':
        {
          tax = MoneyBuilder.empty();
          return;
        }
      case 'net':
        {
          net = MoneyBuilder.empty();
          return;
        }
      case 'noteNumber':
        {
          noteNumber = <FhirPositiveIntBuilder>[];
          return;
        }
      case 'reviewOutcome':
        {
          reviewOutcome = ClaimResponseReviewOutcomeBuilder.empty();
          return;
        }
      case 'adjudication':
        {
          adjudication = <ClaimResponseAdjudicationBuilder>[];
          return;
        }
      case 'subDetail':
        {
          subDetail = <ClaimResponseSubDetailBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ClaimResponseDetail1Builder clone() => throw UnimplementedError();
  @override
  ClaimResponseDetail1Builder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? traceNumber,
    CodeableConceptBuilder? revenue,
    CodeableConceptBuilder? productOrService,
    CodeableConceptBuilder? productOrServiceEnd,
    List<CodeableConceptBuilder>? modifier,
    QuantityBuilder? quantity,
    MoneyBuilder? unitPrice,
    FhirDecimalBuilder? factor,
    MoneyBuilder? tax,
    MoneyBuilder? net,
    List<FhirPositiveIntBuilder>? noteNumber,
    ClaimResponseReviewOutcomeBuilder? reviewOutcome,
    List<ClaimResponseAdjudicationBuilder>? adjudication,
    List<ClaimResponseSubDetailBuilder>? subDetail,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ClaimResponseDetail1Builder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      traceNumber: traceNumber ?? this.traceNumber,
      revenue: revenue ?? this.revenue,
      productOrService: productOrService ?? this.productOrService,
      productOrServiceEnd: productOrServiceEnd ?? this.productOrServiceEnd,
      modifier: modifier ?? this.modifier,
      quantity: quantity ?? this.quantity,
      unitPrice: unitPrice ?? this.unitPrice,
      factor: factor ?? this.factor,
      tax: tax ?? this.tax,
      net: net ?? this.net,
      noteNumber: noteNumber ?? this.noteNumber,
      reviewOutcome: reviewOutcome ?? this.reviewOutcome,
      adjudication: adjudication ?? this.adjudication,
      subDetail: subDetail ?? this.subDetail,
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
    if (o is! ClaimResponseDetail1Builder) {
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
    if (!listEquals<IdentifierBuilder>(
      traceNumber,
      o.traceNumber,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      revenue,
      o.revenue,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      productOrService,
      o.productOrService,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      productOrServiceEnd,
      o.productOrServiceEnd,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      modifier,
      o.modifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      quantity,
      o.quantity,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      unitPrice,
      o.unitPrice,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      factor,
      o.factor,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      tax,
      o.tax,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      net,
      o.net,
    )) {
      return false;
    }
    if (!listEquals<FhirPositiveIntBuilder>(
      noteNumber,
      o.noteNumber,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      reviewOutcome,
      o.reviewOutcome,
    )) {
      return false;
    }
    if (!listEquals<ClaimResponseAdjudicationBuilder>(
      adjudication,
      o.adjudication,
    )) {
      return false;
    }
    if (!listEquals<ClaimResponseSubDetailBuilder>(
      subDetail,
      o.subDetail,
    )) {
      return false;
    }
    return true;
  }
}

/// [ClaimResponseSubDetail1Builder]
/// The third-tier service adjudications for payor added services.
class ClaimResponseSubDetail1Builder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ClaimResponseSubDetail1Builder]

  ClaimResponseSubDetail1Builder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.traceNumber,
    this.revenue,
    this.productOrService,
    this.productOrServiceEnd,
    this.modifier,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.tax,
    this.net,
    this.noteNumber,
    this.reviewOutcome,
    this.adjudication,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ClaimResponse.addItem.detail.subDetail',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ClaimResponseSubDetail1Builder.empty() =>
      ClaimResponseSubDetail1Builder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimResponseSubDetail1Builder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ClaimResponse.addItem.detail.subDetail';
    return ClaimResponseSubDetail1Builder(
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
      traceNumber: (json['traceNumber'] as List<dynamic>?)
          ?.map<IdentifierBuilder>(
            (v) => IdentifierBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.traceNumber',
              },
            ),
          )
          .toList(),
      revenue: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'revenue',
        CodeableConceptBuilder.fromJson,
        '$objectPath.revenue',
      ),
      productOrService: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'productOrService',
        CodeableConceptBuilder.fromJson,
        '$objectPath.productOrService',
      ),
      productOrServiceEnd: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'productOrServiceEnd',
        CodeableConceptBuilder.fromJson,
        '$objectPath.productOrServiceEnd',
      ),
      modifier: (json['modifier'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifier',
              },
            ),
          )
          .toList(),
      quantity: JsonParser.parseObject<QuantityBuilder>(
        json,
        'quantity',
        QuantityBuilder.fromJson,
        '$objectPath.quantity',
      ),
      unitPrice: JsonParser.parseObject<MoneyBuilder>(
        json,
        'unitPrice',
        MoneyBuilder.fromJson,
        '$objectPath.unitPrice',
      ),
      factor: JsonParser.parsePrimitive<FhirDecimalBuilder>(
        json,
        'factor',
        FhirDecimalBuilder.fromJson,
        '$objectPath.factor',
      ),
      tax: JsonParser.parseObject<MoneyBuilder>(
        json,
        'tax',
        MoneyBuilder.fromJson,
        '$objectPath.tax',
      ),
      net: JsonParser.parseObject<MoneyBuilder>(
        json,
        'net',
        MoneyBuilder.fromJson,
        '$objectPath.net',
      ),
      noteNumber: JsonParser.parsePrimitiveList<FhirPositiveIntBuilder>(
        json,
        'noteNumber',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.noteNumber',
      ),
      reviewOutcome: JsonParser.parseObject<ClaimResponseReviewOutcomeBuilder>(
        json,
        'reviewOutcome',
        ClaimResponseReviewOutcomeBuilder.fromJson,
        '$objectPath.reviewOutcome',
      ),
      adjudication: (json['adjudication'] as List<dynamic>?)
          ?.map<ClaimResponseAdjudicationBuilder>(
            (v) => ClaimResponseAdjudicationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.adjudication',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ClaimResponseSubDetail1Builder]
  /// from a [String] or [YamlMap] object
  factory ClaimResponseSubDetail1Builder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClaimResponseSubDetail1Builder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClaimResponseSubDetail1Builder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClaimResponseSubDetail1Builder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClaimResponseSubDetail1Builder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimResponseSubDetail1Builder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ClaimResponseSubDetail1Builder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ClaimResponseSubDetail1';

  /// [traceNumber]
  /// Trace number for tracking purposes. May be defined at the jurisdiction
  /// level or between trading partners.
  List<IdentifierBuilder>? traceNumber;

  /// [revenue]
  /// The type of revenue or cost center providing the product and/or
  /// service.
  CodeableConceptBuilder? revenue;

  /// [productOrService]
  /// When the value is a group code then this item collects a set of related
  /// item details, otherwise this contains the product, service, drug or
  /// other billing code for the item. This element may be the start of a
  /// range of .productOrService codes used in conjunction with
  /// .productOrServiceEnd or it may be a solo element where
  /// .productOrServiceEnd is not used.
  CodeableConceptBuilder? productOrService;

  /// [productOrServiceEnd]
  /// This contains the end of a range of product, service, drug or other
  /// billing codes for the item. This element is not used when the
  /// .productOrService is a group code. This value may only be present when
  /// a .productOfService code has been provided to convey the start of the
  /// range. Typically this value may be used only with preauthorizations and
  /// not with claims.
  CodeableConceptBuilder? productOrServiceEnd;

  /// [modifier]
  /// Item typification or modifiers codes to convey additional context for
  /// the product or service.
  List<CodeableConceptBuilder>? modifier;

  /// [quantity]
  /// The number of repetitions of a service or product.
  QuantityBuilder? quantity;

  /// [unitPrice]
  /// If the item is not a group then this is the fee for the product or
  /// service, otherwise this is the total of the fees for the details of the
  /// group.
  MoneyBuilder? unitPrice;

  /// [factor]
  /// A real number that represents a multiplier used in determining the
  /// overall value of services delivered and/or goods received. The concept
  /// of a Factor allows for a discount or surcharge multiplier to be applied
  /// to a monetary amount.
  FhirDecimalBuilder? factor;

  /// [tax]
  /// The total of taxes applicable for this product or service.
  MoneyBuilder? tax;

  /// [net]
  /// The total amount claimed for the addItem.detail.subDetail. Net = unit
  /// price * quantity * factor.
  MoneyBuilder? net;

  /// [noteNumber]
  /// The numbers associated with notes below which apply to the adjudication
  /// of this item.
  List<FhirPositiveIntBuilder>? noteNumber;

  /// [reviewOutcome]
  /// The high-level results of the adjudication if adjudication has been
  /// performed.
  ClaimResponseReviewOutcomeBuilder? reviewOutcome;

  /// [adjudication]
  /// The adjudication results.
  List<ClaimResponseAdjudicationBuilder>? adjudication;

  /// Converts a [ClaimResponseSubDetail1Builder]
  /// to [ClaimResponseSubDetail1]
  @override
  ClaimResponseSubDetail1 build() => ClaimResponseSubDetail1.fromJson(toJson());

  /// Converts a [ClaimResponseSubDetail1Builder]
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
    addField('traceNumber', traceNumber);
    addField('revenue', revenue);
    addField('productOrService', productOrService);
    addField('productOrServiceEnd', productOrServiceEnd);
    addField('modifier', modifier);
    addField('quantity', quantity);
    addField('unitPrice', unitPrice);
    addField('factor', factor);
    addField('tax', tax);
    addField('net', net);
    addField('noteNumber', noteNumber);
    addField('reviewOutcome', reviewOutcome);
    addField('adjudication', adjudication);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'traceNumber',
      'revenue',
      'productOrService',
      'productOrServiceEnd',
      'modifier',
      'quantity',
      'unitPrice',
      'factor',
      'tax',
      'net',
      'noteNumber',
      'reviewOutcome',
      'adjudication',
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
      case 'traceNumber':
        if (traceNumber != null) {
          fields.addAll(traceNumber!);
        }
      case 'revenue':
        if (revenue != null) {
          fields.add(revenue!);
        }
      case 'productOrService':
        if (productOrService != null) {
          fields.add(productOrService!);
        }
      case 'productOrServiceEnd':
        if (productOrServiceEnd != null) {
          fields.add(productOrServiceEnd!);
        }
      case 'modifier':
        if (modifier != null) {
          fields.addAll(modifier!);
        }
      case 'quantity':
        if (quantity != null) {
          fields.add(quantity!);
        }
      case 'unitPrice':
        if (unitPrice != null) {
          fields.add(unitPrice!);
        }
      case 'factor':
        if (factor != null) {
          fields.add(factor!);
        }
      case 'tax':
        if (tax != null) {
          fields.add(tax!);
        }
      case 'net':
        if (net != null) {
          fields.add(net!);
        }
      case 'noteNumber':
        if (noteNumber != null) {
          fields.addAll(noteNumber!);
        }
      case 'reviewOutcome':
        if (reviewOutcome != null) {
          fields.add(reviewOutcome!);
        }
      case 'adjudication':
        if (adjudication != null) {
          fields.addAll(adjudication!);
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
      case 'traceNumber':
        {
          if (child is List<IdentifierBuilder>) {
            // Replace or create new list
            traceNumber = child;
            return;
          } else if (child is IdentifierBuilder) {
            // Add single element to existing list or create new list
            traceNumber = [
              ...(traceNumber ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'revenue':
        {
          if (child is CodeableConceptBuilder) {
            revenue = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'productOrService':
        {
          if (child is CodeableConceptBuilder) {
            productOrService = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'productOrServiceEnd':
        {
          if (child is CodeableConceptBuilder) {
            productOrServiceEnd = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifier':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            modifier = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            modifier = [
              ...(modifier ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'quantity':
        {
          if (child is QuantityBuilder) {
            quantity = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'unitPrice':
        {
          if (child is MoneyBuilder) {
            unitPrice = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'factor':
        {
          if (child is FhirDecimalBuilder) {
            factor = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirDecimalBuilder.tryParse(numValue);
                if (converted != null) {
                  factor = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'tax':
        {
          if (child is MoneyBuilder) {
            tax = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'net':
        {
          if (child is MoneyBuilder) {
            net = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'noteNumber':
        {
          if (child is List<FhirPositiveIntBuilder>) {
            // Replace or create new list
            noteNumber = child;
            return;
          } else if (child is FhirPositiveIntBuilder) {
            // Add single element to existing list or create new list
            noteNumber = [
              ...(noteNumber ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirPositiveIntBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                // For number types,
                // first parse to num then pass the number directly
                final numValue = num.tryParse(stringValue);
                if (numValue != null) {
                  final converted = FhirPositiveIntBuilder.tryParse(numValue);
                  if (converted != null) {
                    convertedList.add(converted);
                  }
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              noteNumber = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirPositiveIntBuilder.tryParse(numValue);
                if (converted != null) {
                  noteNumber = [
                    ...(noteNumber ?? []),
                    converted,
                  ];
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'reviewOutcome':
        {
          if (child is ClaimResponseReviewOutcomeBuilder) {
            reviewOutcome = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'adjudication':
        {
          if (child is List<ClaimResponseAdjudicationBuilder>) {
            // Replace or create new list
            adjudication = child;
            return;
          } else if (child is ClaimResponseAdjudicationBuilder) {
            // Add single element to existing list or create new list
            adjudication = [
              ...(adjudication ?? []),
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
      case 'traceNumber':
        return ['IdentifierBuilder'];
      case 'revenue':
        return ['CodeableConceptBuilder'];
      case 'productOrService':
        return ['CodeableConceptBuilder'];
      case 'productOrServiceEnd':
        return ['CodeableConceptBuilder'];
      case 'modifier':
        return ['CodeableConceptBuilder'];
      case 'quantity':
        return ['QuantityBuilder'];
      case 'unitPrice':
        return ['MoneyBuilder'];
      case 'factor':
        return ['FhirDecimalBuilder'];
      case 'tax':
        return ['MoneyBuilder'];
      case 'net':
        return ['MoneyBuilder'];
      case 'noteNumber':
        return ['FhirPositiveIntBuilder'];
      case 'reviewOutcome':
        return ['ClaimResponseReviewOutcomeBuilder'];
      case 'adjudication':
        return ['ClaimResponseAdjudicationBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ClaimResponseSubDetail1Builder]
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
      case 'traceNumber':
        {
          traceNumber = <IdentifierBuilder>[];
          return;
        }
      case 'revenue':
        {
          revenue = CodeableConceptBuilder.empty();
          return;
        }
      case 'productOrService':
        {
          productOrService = CodeableConceptBuilder.empty();
          return;
        }
      case 'productOrServiceEnd':
        {
          productOrServiceEnd = CodeableConceptBuilder.empty();
          return;
        }
      case 'modifier':
        {
          modifier = <CodeableConceptBuilder>[];
          return;
        }
      case 'quantity':
        {
          quantity = QuantityBuilder.empty();
          return;
        }
      case 'unitPrice':
        {
          unitPrice = MoneyBuilder.empty();
          return;
        }
      case 'factor':
        {
          factor = FhirDecimalBuilder.empty();
          return;
        }
      case 'tax':
        {
          tax = MoneyBuilder.empty();
          return;
        }
      case 'net':
        {
          net = MoneyBuilder.empty();
          return;
        }
      case 'noteNumber':
        {
          noteNumber = <FhirPositiveIntBuilder>[];
          return;
        }
      case 'reviewOutcome':
        {
          reviewOutcome = ClaimResponseReviewOutcomeBuilder.empty();
          return;
        }
      case 'adjudication':
        {
          adjudication = <ClaimResponseAdjudicationBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ClaimResponseSubDetail1Builder clone() => throw UnimplementedError();
  @override
  ClaimResponseSubDetail1Builder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? traceNumber,
    CodeableConceptBuilder? revenue,
    CodeableConceptBuilder? productOrService,
    CodeableConceptBuilder? productOrServiceEnd,
    List<CodeableConceptBuilder>? modifier,
    QuantityBuilder? quantity,
    MoneyBuilder? unitPrice,
    FhirDecimalBuilder? factor,
    MoneyBuilder? tax,
    MoneyBuilder? net,
    List<FhirPositiveIntBuilder>? noteNumber,
    ClaimResponseReviewOutcomeBuilder? reviewOutcome,
    List<ClaimResponseAdjudicationBuilder>? adjudication,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ClaimResponseSubDetail1Builder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      traceNumber: traceNumber ?? this.traceNumber,
      revenue: revenue ?? this.revenue,
      productOrService: productOrService ?? this.productOrService,
      productOrServiceEnd: productOrServiceEnd ?? this.productOrServiceEnd,
      modifier: modifier ?? this.modifier,
      quantity: quantity ?? this.quantity,
      unitPrice: unitPrice ?? this.unitPrice,
      factor: factor ?? this.factor,
      tax: tax ?? this.tax,
      net: net ?? this.net,
      noteNumber: noteNumber ?? this.noteNumber,
      reviewOutcome: reviewOutcome ?? this.reviewOutcome,
      adjudication: adjudication ?? this.adjudication,
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
    if (o is! ClaimResponseSubDetail1Builder) {
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
    if (!listEquals<IdentifierBuilder>(
      traceNumber,
      o.traceNumber,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      revenue,
      o.revenue,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      productOrService,
      o.productOrService,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      productOrServiceEnd,
      o.productOrServiceEnd,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      modifier,
      o.modifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      quantity,
      o.quantity,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      unitPrice,
      o.unitPrice,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      factor,
      o.factor,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      tax,
      o.tax,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      net,
      o.net,
    )) {
      return false;
    }
    if (!listEquals<FhirPositiveIntBuilder>(
      noteNumber,
      o.noteNumber,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      reviewOutcome,
      o.reviewOutcome,
    )) {
      return false;
    }
    if (!listEquals<ClaimResponseAdjudicationBuilder>(
      adjudication,
      o.adjudication,
    )) {
      return false;
    }
    return true;
  }
}

/// [ClaimResponseTotalBuilder]
/// Categorized monetary totals for the adjudication.
class ClaimResponseTotalBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ClaimResponseTotalBuilder]

  ClaimResponseTotalBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.category,
    this.amount,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ClaimResponse.total',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ClaimResponseTotalBuilder.empty() => ClaimResponseTotalBuilder(
        category: CodeableConceptBuilder.empty(),
        amount: MoneyBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimResponseTotalBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ClaimResponse.total';
    return ClaimResponseTotalBuilder(
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
      category: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'category',
        CodeableConceptBuilder.fromJson,
        '$objectPath.category',
      ),
      amount: JsonParser.parseObject<MoneyBuilder>(
        json,
        'amount',
        MoneyBuilder.fromJson,
        '$objectPath.amount',
      ),
    );
  }

  /// Deserialize [ClaimResponseTotalBuilder]
  /// from a [String] or [YamlMap] object
  factory ClaimResponseTotalBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClaimResponseTotalBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClaimResponseTotalBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClaimResponseTotalBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClaimResponseTotalBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimResponseTotalBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ClaimResponseTotalBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ClaimResponseTotal';

  /// [category]
  /// A code to indicate the information type of this adjudication record.
  /// Information types may include: the value submitted, maximum values or
  /// percentages allowed or payable under the plan, amounts that the patient
  /// is responsible for in aggregate or pertaining to this item, amounts
  /// paid by other coverages, and the benefit payable for this item.
  CodeableConceptBuilder? category;

  /// [amount]
  /// Monetary total amount associated with the category.
  MoneyBuilder? amount;

  /// Converts a [ClaimResponseTotalBuilder]
  /// to [ClaimResponseTotal]
  @override
  ClaimResponseTotal build() => ClaimResponseTotal.fromJson(toJson());

  /// Converts a [ClaimResponseTotalBuilder]
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
    addField('category', category);
    addField('amount', amount);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'category',
      'amount',
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
      case 'category':
        if (category != null) {
          fields.add(category!);
        }
      case 'amount':
        if (amount != null) {
          fields.add(amount!);
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
      case 'category':
        {
          if (child is CodeableConceptBuilder) {
            category = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'amount':
        {
          if (child is MoneyBuilder) {
            amount = child;
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
      case 'category':
        return ['CodeableConceptBuilder'];
      case 'amount':
        return ['MoneyBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ClaimResponseTotalBuilder]
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
      case 'category':
        {
          category = CodeableConceptBuilder.empty();
          return;
        }
      case 'amount':
        {
          amount = MoneyBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ClaimResponseTotalBuilder clone() => throw UnimplementedError();
  @override
  ClaimResponseTotalBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? category,
    MoneyBuilder? amount,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ClaimResponseTotalBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      category: category ?? this.category,
      amount: amount ?? this.amount,
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
    if (o is! ClaimResponseTotalBuilder) {
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
      category,
      o.category,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      amount,
      o.amount,
    )) {
      return false;
    }
    return true;
  }
}

/// [ClaimResponsePaymentBuilder]
/// Payment details for the adjudication of the claim.
class ClaimResponsePaymentBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ClaimResponsePaymentBuilder]

  ClaimResponsePaymentBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.adjustment,
    this.adjustmentReason,
    this.date,
    this.amount,
    this.identifier,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ClaimResponse.payment',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ClaimResponsePaymentBuilder.empty() => ClaimResponsePaymentBuilder(
        type: CodeableConceptBuilder.empty(),
        amount: MoneyBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimResponsePaymentBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ClaimResponse.payment';
    return ClaimResponsePaymentBuilder(
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
      adjustment: JsonParser.parseObject<MoneyBuilder>(
        json,
        'adjustment',
        MoneyBuilder.fromJson,
        '$objectPath.adjustment',
      ),
      adjustmentReason: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'adjustmentReason',
        CodeableConceptBuilder.fromJson,
        '$objectPath.adjustmentReason',
      ),
      date: JsonParser.parsePrimitive<FhirDateBuilder>(
        json,
        'date',
        FhirDateBuilder.fromJson,
        '$objectPath.date',
      ),
      amount: JsonParser.parseObject<MoneyBuilder>(
        json,
        'amount',
        MoneyBuilder.fromJson,
        '$objectPath.amount',
      ),
      identifier: JsonParser.parseObject<IdentifierBuilder>(
        json,
        'identifier',
        IdentifierBuilder.fromJson,
        '$objectPath.identifier',
      ),
    );
  }

  /// Deserialize [ClaimResponsePaymentBuilder]
  /// from a [String] or [YamlMap] object
  factory ClaimResponsePaymentBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClaimResponsePaymentBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClaimResponsePaymentBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClaimResponsePaymentBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClaimResponsePaymentBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimResponsePaymentBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ClaimResponsePaymentBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ClaimResponsePayment';

  /// [type]
  /// Whether this represents partial or complete payment of the benefits
  /// payable.
  CodeableConceptBuilder? type;

  /// [adjustment]
  /// Total amount of all adjustments to this payment included in this
  /// transaction which are not related to this claim's adjudication.
  MoneyBuilder? adjustment;

  /// [adjustmentReason]
  /// Reason for the payment adjustment.
  CodeableConceptBuilder? adjustmentReason;

  /// [date]
  /// Estimated date the payment will be issued or the actual issue date of
  /// payment.
  FhirDateBuilder? date;

  /// [amount]
  /// Benefits payable less any payment adjustment.
  MoneyBuilder? amount;

  /// [identifier]
  /// Issuer's unique identifier for the payment instrument.
  IdentifierBuilder? identifier;

  /// Converts a [ClaimResponsePaymentBuilder]
  /// to [ClaimResponsePayment]
  @override
  ClaimResponsePayment build() => ClaimResponsePayment.fromJson(toJson());

  /// Converts a [ClaimResponsePaymentBuilder]
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
    addField('adjustment', adjustment);
    addField('adjustmentReason', adjustmentReason);
    addField('date', date);
    addField('amount', amount);
    addField('identifier', identifier);
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
      'adjustment',
      'adjustmentReason',
      'date',
      'amount',
      'identifier',
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
      case 'adjustment':
        if (adjustment != null) {
          fields.add(adjustment!);
        }
      case 'adjustmentReason':
        if (adjustmentReason != null) {
          fields.add(adjustmentReason!);
        }
      case 'date':
        if (date != null) {
          fields.add(date!);
        }
      case 'amount':
        if (amount != null) {
          fields.add(amount!);
        }
      case 'identifier':
        if (identifier != null) {
          fields.add(identifier!);
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
      case 'adjustment':
        {
          if (child is MoneyBuilder) {
            adjustment = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'adjustmentReason':
        {
          if (child is CodeableConceptBuilder) {
            adjustmentReason = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'date':
        {
          if (child is FhirDateBuilder) {
            date = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateBuilder.tryParse(stringValue);
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
      case 'amount':
        {
          if (child is MoneyBuilder) {
            amount = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'identifier':
        {
          if (child is IdentifierBuilder) {
            identifier = child;
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
      case 'adjustment':
        return ['MoneyBuilder'];
      case 'adjustmentReason':
        return ['CodeableConceptBuilder'];
      case 'date':
        return ['FhirDateBuilder'];
      case 'amount':
        return ['MoneyBuilder'];
      case 'identifier':
        return ['IdentifierBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ClaimResponsePaymentBuilder]
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
      case 'adjustment':
        {
          adjustment = MoneyBuilder.empty();
          return;
        }
      case 'adjustmentReason':
        {
          adjustmentReason = CodeableConceptBuilder.empty();
          return;
        }
      case 'date':
        {
          date = FhirDateBuilder.empty();
          return;
        }
      case 'amount':
        {
          amount = MoneyBuilder.empty();
          return;
        }
      case 'identifier':
        {
          identifier = IdentifierBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ClaimResponsePaymentBuilder clone() => throw UnimplementedError();
  @override
  ClaimResponsePaymentBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? type,
    MoneyBuilder? adjustment,
    CodeableConceptBuilder? adjustmentReason,
    FhirDateBuilder? date,
    MoneyBuilder? amount,
    IdentifierBuilder? identifier,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ClaimResponsePaymentBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      adjustment: adjustment ?? this.adjustment,
      adjustmentReason: adjustmentReason ?? this.adjustmentReason,
      date: date ?? this.date,
      amount: amount ?? this.amount,
      identifier: identifier ?? this.identifier,
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
    if (o is! ClaimResponsePaymentBuilder) {
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
      adjustment,
      o.adjustment,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      adjustmentReason,
      o.adjustmentReason,
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
      amount,
      o.amount,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    return true;
  }
}

/// [ClaimResponseProcessNoteBuilder]
/// A note that describes or explains adjudication results in a human
/// readable form.
class ClaimResponseProcessNoteBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ClaimResponseProcessNoteBuilder]

  ClaimResponseProcessNoteBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.number,
    this.type,
    this.text,
    this.language,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ClaimResponse.processNote',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ClaimResponseProcessNoteBuilder.empty() =>
      ClaimResponseProcessNoteBuilder(
        text: FhirStringBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimResponseProcessNoteBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ClaimResponse.processNote';
    return ClaimResponseProcessNoteBuilder(
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
      number: JsonParser.parsePrimitive<FhirPositiveIntBuilder>(
        json,
        'number',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.number',
      ),
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      text: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'text',
        FhirStringBuilder.fromJson,
        '$objectPath.text',
      ),
      language: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'language',
        CodeableConceptBuilder.fromJson,
        '$objectPath.language',
      ),
    );
  }

  /// Deserialize [ClaimResponseProcessNoteBuilder]
  /// from a [String] or [YamlMap] object
  factory ClaimResponseProcessNoteBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClaimResponseProcessNoteBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClaimResponseProcessNoteBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClaimResponseProcessNoteBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClaimResponseProcessNoteBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimResponseProcessNoteBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ClaimResponseProcessNoteBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ClaimResponseProcessNote';

  /// [number]
  /// A number to uniquely identify a note entry.
  FhirPositiveIntBuilder? number;

  /// [type]
  /// The business purpose of the note text.
  CodeableConceptBuilder? type;

  /// [text]
  /// The explanation or description associated with the processing.
  FhirStringBuilder? text;

  /// [language]
  /// A code to define the language used in the text of the note.
  CodeableConceptBuilder? language;

  /// Converts a [ClaimResponseProcessNoteBuilder]
  /// to [ClaimResponseProcessNote]
  @override
  ClaimResponseProcessNote build() =>
      ClaimResponseProcessNote.fromJson(toJson());

  /// Converts a [ClaimResponseProcessNoteBuilder]
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
    addField('number', number);
    addField('type', type);
    addField('text', text);
    addField('language', language);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'number',
      'type',
      'text',
      'language',
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
      case 'number':
        if (number != null) {
          fields.add(number!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'text':
        if (text != null) {
          fields.add(text!);
        }
      case 'language':
        if (language != null) {
          fields.add(language!);
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
      case 'number':
        {
          if (child is FhirPositiveIntBuilder) {
            number = child;
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
                  number = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
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
      case 'text':
        {
          if (child is FhirStringBuilder) {
            text = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                text = converted;
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
          if (child is CodeableConceptBuilder) {
            language = child;
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
      case 'number':
        return ['FhirPositiveIntBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'text':
        return ['FhirStringBuilder'];
      case 'language':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ClaimResponseProcessNoteBuilder]
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
      case 'number':
        {
          number = FhirPositiveIntBuilder.empty();
          return;
        }
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'text':
        {
          text = FhirStringBuilder.empty();
          return;
        }
      case 'language':
        {
          language = CodeableConceptBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ClaimResponseProcessNoteBuilder clone() => throw UnimplementedError();
  @override
  ClaimResponseProcessNoteBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirPositiveIntBuilder? number,
    CodeableConceptBuilder? type,
    FhirStringBuilder? text,
    CodeableConceptBuilder? language,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ClaimResponseProcessNoteBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      number: number ?? this.number,
      type: type ?? this.type,
      text: text ?? this.text,
      language: language ?? this.language,
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
    if (o is! ClaimResponseProcessNoteBuilder) {
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
      number,
      o.number,
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
      text,
      o.text,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      language,
      o.language,
    )) {
      return false;
    }
    return true;
  }
}

/// [ClaimResponseInsuranceBuilder]
/// Financial instruments for reimbursement for the health care products
/// and services specified on the claim.
class ClaimResponseInsuranceBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ClaimResponseInsuranceBuilder]

  ClaimResponseInsuranceBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.sequence,
    this.focal,
    this.coverage,
    this.businessArrangement,
    this.claimResponse,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ClaimResponse.insurance',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ClaimResponseInsuranceBuilder.empty() =>
      ClaimResponseInsuranceBuilder(
        sequence: FhirPositiveIntBuilder.empty(),
        focal: FhirBooleanBuilder.empty(),
        coverage: ReferenceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimResponseInsuranceBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ClaimResponse.insurance';
    return ClaimResponseInsuranceBuilder(
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
      sequence: JsonParser.parsePrimitive<FhirPositiveIntBuilder>(
        json,
        'sequence',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.sequence',
      ),
      focal: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'focal',
        FhirBooleanBuilder.fromJson,
        '$objectPath.focal',
      ),
      coverage: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'coverage',
        ReferenceBuilder.fromJson,
        '$objectPath.coverage',
      ),
      businessArrangement: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'businessArrangement',
        FhirStringBuilder.fromJson,
        '$objectPath.businessArrangement',
      ),
      claimResponse: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'claimResponse',
        ReferenceBuilder.fromJson,
        '$objectPath.claimResponse',
      ),
    );
  }

  /// Deserialize [ClaimResponseInsuranceBuilder]
  /// from a [String] or [YamlMap] object
  factory ClaimResponseInsuranceBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClaimResponseInsuranceBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClaimResponseInsuranceBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClaimResponseInsuranceBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClaimResponseInsuranceBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimResponseInsuranceBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ClaimResponseInsuranceBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ClaimResponseInsurance';

  /// [sequence]
  /// A number to uniquely identify insurance entries and provide a sequence
  /// of coverages to convey coordination of benefit order.
  FhirPositiveIntBuilder? sequence;

  /// [focal]
  /// A flag to indicate that this Coverage is to be used for adjudication of
  /// this claim when set to true.
  FhirBooleanBuilder? focal;

  /// [coverage]
  /// Reference to the insurance card level information contained in the
  /// Coverage resource. The coverage issuing insurer will use these details
  /// to locate the patient's actual coverage within the insurer's
  /// information system.
  ReferenceBuilder? coverage;

  /// [businessArrangement]
  /// A business agreement number established between the provider and the
  /// insurer for special business processing purposes.
  FhirStringBuilder? businessArrangement;

  /// [claimResponse]
  /// The result of the adjudication of the line items for the Coverage
  /// specified in this insurance.
  ReferenceBuilder? claimResponse;

  /// Converts a [ClaimResponseInsuranceBuilder]
  /// to [ClaimResponseInsurance]
  @override
  ClaimResponseInsurance build() => ClaimResponseInsurance.fromJson(toJson());

  /// Converts a [ClaimResponseInsuranceBuilder]
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
    addField('sequence', sequence);
    addField('focal', focal);
    addField('coverage', coverage);
    addField('businessArrangement', businessArrangement);
    addField('claimResponse', claimResponse);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'sequence',
      'focal',
      'coverage',
      'businessArrangement',
      'claimResponse',
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
      case 'sequence':
        if (sequence != null) {
          fields.add(sequence!);
        }
      case 'focal':
        if (focal != null) {
          fields.add(focal!);
        }
      case 'coverage':
        if (coverage != null) {
          fields.add(coverage!);
        }
      case 'businessArrangement':
        if (businessArrangement != null) {
          fields.add(businessArrangement!);
        }
      case 'claimResponse':
        if (claimResponse != null) {
          fields.add(claimResponse!);
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
      case 'sequence':
        {
          if (child is FhirPositiveIntBuilder) {
            sequence = child;
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
                  sequence = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'focal':
        {
          if (child is FhirBooleanBuilder) {
            focal = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                focal = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'coverage':
        {
          if (child is ReferenceBuilder) {
            coverage = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'businessArrangement':
        {
          if (child is FhirStringBuilder) {
            businessArrangement = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                businessArrangement = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'claimResponse':
        {
          if (child is ReferenceBuilder) {
            claimResponse = child;
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
      case 'sequence':
        return ['FhirPositiveIntBuilder'];
      case 'focal':
        return ['FhirBooleanBuilder'];
      case 'coverage':
        return ['ReferenceBuilder'];
      case 'businessArrangement':
        return ['FhirStringBuilder'];
      case 'claimResponse':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ClaimResponseInsuranceBuilder]
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
      case 'sequence':
        {
          sequence = FhirPositiveIntBuilder.empty();
          return;
        }
      case 'focal':
        {
          focal = FhirBooleanBuilder.empty();
          return;
        }
      case 'coverage':
        {
          coverage = ReferenceBuilder.empty();
          return;
        }
      case 'businessArrangement':
        {
          businessArrangement = FhirStringBuilder.empty();
          return;
        }
      case 'claimResponse':
        {
          claimResponse = ReferenceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ClaimResponseInsuranceBuilder clone() => throw UnimplementedError();
  @override
  ClaimResponseInsuranceBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirPositiveIntBuilder? sequence,
    FhirBooleanBuilder? focal,
    ReferenceBuilder? coverage,
    FhirStringBuilder? businessArrangement,
    ReferenceBuilder? claimResponse,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ClaimResponseInsuranceBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      sequence: sequence ?? this.sequence,
      focal: focal ?? this.focal,
      coverage: coverage ?? this.coverage,
      businessArrangement: businessArrangement ?? this.businessArrangement,
      claimResponse: claimResponse ?? this.claimResponse,
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
    if (o is! ClaimResponseInsuranceBuilder) {
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
      sequence,
      o.sequence,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      focal,
      o.focal,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      coverage,
      o.coverage,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      businessArrangement,
      o.businessArrangement,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      claimResponse,
      o.claimResponse,
    )) {
      return false;
    }
    return true;
  }
}

/// [ClaimResponseErrorBuilder]
/// Errors encountered during the processing of the adjudication.
class ClaimResponseErrorBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ClaimResponseErrorBuilder]

  ClaimResponseErrorBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.itemSequence,
    this.detailSequence,
    this.subDetailSequence,
    this.code,
    this.expression,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ClaimResponse.error',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ClaimResponseErrorBuilder.empty() => ClaimResponseErrorBuilder(
        code: CodeableConceptBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimResponseErrorBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ClaimResponse.error';
    return ClaimResponseErrorBuilder(
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
      itemSequence: JsonParser.parsePrimitive<FhirPositiveIntBuilder>(
        json,
        'itemSequence',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.itemSequence',
      ),
      detailSequence: JsonParser.parsePrimitive<FhirPositiveIntBuilder>(
        json,
        'detailSequence',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.detailSequence',
      ),
      subDetailSequence: JsonParser.parsePrimitive<FhirPositiveIntBuilder>(
        json,
        'subDetailSequence',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.subDetailSequence',
      ),
      code: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'code',
        CodeableConceptBuilder.fromJson,
        '$objectPath.code',
      ),
      expression: JsonParser.parsePrimitiveList<FhirStringBuilder>(
        json,
        'expression',
        FhirStringBuilder.fromJson,
        '$objectPath.expression',
      ),
    );
  }

  /// Deserialize [ClaimResponseErrorBuilder]
  /// from a [String] or [YamlMap] object
  factory ClaimResponseErrorBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClaimResponseErrorBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClaimResponseErrorBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClaimResponseErrorBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClaimResponseErrorBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimResponseErrorBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ClaimResponseErrorBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ClaimResponseError';

  /// [itemSequence]
  /// The sequence number of the line item submitted which contains the
  /// error. This value is omitted when the error occurs outside of the item
  /// structure.
  FhirPositiveIntBuilder? itemSequence;

  /// [detailSequence]
  /// The sequence number of the detail within the line item submitted which
  /// contains the error. This value is omitted when the error occurs outside
  /// of the item structure.
  FhirPositiveIntBuilder? detailSequence;

  /// [subDetailSequence]
  /// The sequence number of the sub-detail within the detail within the line
  /// item submitted which contains the error. This value is omitted when the
  /// error occurs outside of the item structure.
  FhirPositiveIntBuilder? subDetailSequence;

  /// [code]
  /// An error code, from a specified code system, which details why the
  /// claim could not be adjudicated.
  CodeableConceptBuilder? code;

  /// [expression]
  /// A [simple subset of FHIRPath](fhirpath.html#simple) limited to element
  /// names, repetition indicators and the default child accessor that
  /// identifies one of the elements in the resource that caused this issue
  /// to be raised.
  List<FhirStringBuilder>? expression;

  /// Converts a [ClaimResponseErrorBuilder]
  /// to [ClaimResponseError]
  @override
  ClaimResponseError build() => ClaimResponseError.fromJson(toJson());

  /// Converts a [ClaimResponseErrorBuilder]
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
    addField('itemSequence', itemSequence);
    addField('detailSequence', detailSequence);
    addField('subDetailSequence', subDetailSequence);
    addField('code', code);
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
      'itemSequence',
      'detailSequence',
      'subDetailSequence',
      'code',
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
      case 'itemSequence':
        if (itemSequence != null) {
          fields.add(itemSequence!);
        }
      case 'detailSequence':
        if (detailSequence != null) {
          fields.add(detailSequence!);
        }
      case 'subDetailSequence':
        if (subDetailSequence != null) {
          fields.add(subDetailSequence!);
        }
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'expression':
        if (expression != null) {
          fields.addAll(expression!);
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
      case 'itemSequence':
        {
          if (child is FhirPositiveIntBuilder) {
            itemSequence = child;
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
                  itemSequence = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'detailSequence':
        {
          if (child is FhirPositiveIntBuilder) {
            detailSequence = child;
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
                  detailSequence = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'subDetailSequence':
        {
          if (child is FhirPositiveIntBuilder) {
            subDetailSequence = child;
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
                  subDetailSequence = converted;
                  return;
                }
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
      case 'expression':
        {
          if (child is List<FhirStringBuilder>) {
            // Replace or create new list
            expression = child;
            return;
          } else if (child is FhirStringBuilder) {
            // Add single element to existing list or create new list
            expression = [
              ...(expression ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirStringBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                final converted = FhirStringBuilder.tryParse(stringValue);
                if (converted != null) {
                  convertedList.add(converted);
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              expression = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                expression = [
                  ...(expression ?? []),
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
      case 'itemSequence':
        return ['FhirPositiveIntBuilder'];
      case 'detailSequence':
        return ['FhirPositiveIntBuilder'];
      case 'subDetailSequence':
        return ['FhirPositiveIntBuilder'];
      case 'code':
        return ['CodeableConceptBuilder'];
      case 'expression':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ClaimResponseErrorBuilder]
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
      case 'itemSequence':
        {
          itemSequence = FhirPositiveIntBuilder.empty();
          return;
        }
      case 'detailSequence':
        {
          detailSequence = FhirPositiveIntBuilder.empty();
          return;
        }
      case 'subDetailSequence':
        {
          subDetailSequence = FhirPositiveIntBuilder.empty();
          return;
        }
      case 'code':
        {
          code = CodeableConceptBuilder.empty();
          return;
        }
      case 'expression':
        {
          expression = <FhirStringBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ClaimResponseErrorBuilder clone() => throw UnimplementedError();
  @override
  ClaimResponseErrorBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirPositiveIntBuilder? itemSequence,
    FhirPositiveIntBuilder? detailSequence,
    FhirPositiveIntBuilder? subDetailSequence,
    CodeableConceptBuilder? code,
    List<FhirStringBuilder>? expression,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ClaimResponseErrorBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      itemSequence: itemSequence ?? this.itemSequence,
      detailSequence: detailSequence ?? this.detailSequence,
      subDetailSequence: subDetailSequence ?? this.subDetailSequence,
      code: code ?? this.code,
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
    if (o is! ClaimResponseErrorBuilder) {
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
      itemSequence,
      o.itemSequence,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      detailSequence,
      o.detailSequence,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      subDetailSequence,
      o.subDetailSequence,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      code,
      o.code,
    )) {
      return false;
    }
    if (!listEquals<FhirStringBuilder>(
      expression,
      o.expression,
    )) {
      return false;
    }
    return true;
  }
}
