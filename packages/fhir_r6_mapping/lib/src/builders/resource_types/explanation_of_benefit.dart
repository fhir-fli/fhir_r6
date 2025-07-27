import 'dart:convert';
import 'package:fhir_r5/fhir_r5.dart'
    show
        ExplanationOfBenefit,
        ExplanationOfBenefitAccident,
        ExplanationOfBenefitAddItem,
        ExplanationOfBenefitAdjudication,
        ExplanationOfBenefitBenefitBalance,
        ExplanationOfBenefitBodySite,
        ExplanationOfBenefitBodySite1,
        ExplanationOfBenefitCareTeam,
        ExplanationOfBenefitDetail,
        ExplanationOfBenefitDetail1,
        ExplanationOfBenefitDiagnosis,
        ExplanationOfBenefitEvent,
        ExplanationOfBenefitFinancial,
        ExplanationOfBenefitInsurance,
        ExplanationOfBenefitItem,
        ExplanationOfBenefitPayee,
        ExplanationOfBenefitPayment,
        ExplanationOfBenefitProcedure,
        ExplanationOfBenefitProcessNote,
        ExplanationOfBenefitRelated,
        ExplanationOfBenefitReviewOutcome,
        ExplanationOfBenefitSubDetail,
        ExplanationOfBenefitSubDetail1,
        ExplanationOfBenefitSupportingInfo,
        ExplanationOfBenefitTotal,
        R5ResourceType,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r5_mapping/fhir_r5_mapping.dart';
import 'package:yaml/yaml.dart';

/// [ExplanationOfBenefitBuilder]
/// This resource provides: the claim details; adjudication details from
/// the processing of a Claim; and optionally account balance information,
/// for informing the subscriber of the benefits provided.
class ExplanationOfBenefitBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [ExplanationOfBenefitBuilder]

  ExplanationOfBenefitBuilder({
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
    this.billablePeriod,
    this.created,
    this.enterer,
    this.insurer,
    this.provider,
    this.priority,
    this.fundsReserveRequested,
    this.fundsReserve,
    this.related,
    this.prescription,
    this.originalPrescription,
    this.event,
    this.payee,
    this.referral,
    this.encounter,
    this.facility,
    this.claim,
    this.claimResponse,
    this.outcome,
    this.decision,
    this.disposition,
    this.preAuthRef,
    this.preAuthRefPeriod,
    this.diagnosisRelatedGroup,
    this.careTeam,
    this.supportingInfo,
    this.diagnosis,
    this.procedure,
    this.precedence,
    this.insurance,
    this.accident,
    this.patientPaid,
    this.item,
    this.addItem,
    this.adjudication,
    this.total,
    this.payment,
    this.formCode,
    this.form,
    this.processNote,
    this.benefitPeriod,
    this.benefitBalance,
  }) : super(
          objectPath: 'ExplanationOfBenefit',
          resourceType: R5ResourceType.ExplanationOfBenefit,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ExplanationOfBenefitBuilder.empty() => ExplanationOfBenefitBuilder(
        status: ExplanationOfBenefitStatusBuilder.values.first,
        type: CodeableConceptBuilder.empty(),
        use: UseBuilder.values.first,
        patient: ReferenceBuilder.empty(),
        created: FhirDateTimeBuilder.empty(),
        outcome: ClaimProcessingCodesBuilder.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit';
    return ExplanationOfBenefitBuilder(
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
      status: JsonParser.parsePrimitive<ExplanationOfBenefitStatusBuilder>(
        json,
        'status',
        ExplanationOfBenefitStatusBuilder.fromJson,
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
      billablePeriod: JsonParser.parseObject<PeriodBuilder>(
        json,
        'billablePeriod',
        PeriodBuilder.fromJson,
        '$objectPath.billablePeriod',
      ),
      created: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'created',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.created',
      ),
      enterer: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'enterer',
        ReferenceBuilder.fromJson,
        '$objectPath.enterer',
      ),
      insurer: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'insurer',
        ReferenceBuilder.fromJson,
        '$objectPath.insurer',
      ),
      provider: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'provider',
        ReferenceBuilder.fromJson,
        '$objectPath.provider',
      ),
      priority: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'priority',
        CodeableConceptBuilder.fromJson,
        '$objectPath.priority',
      ),
      fundsReserveRequested: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'fundsReserveRequested',
        CodeableConceptBuilder.fromJson,
        '$objectPath.fundsReserveRequested',
      ),
      fundsReserve: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'fundsReserve',
        CodeableConceptBuilder.fromJson,
        '$objectPath.fundsReserve',
      ),
      related: (json['related'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitRelatedBuilder>(
            (v) => ExplanationOfBenefitRelatedBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.related',
              },
            ),
          )
          .toList(),
      prescription: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'prescription',
        ReferenceBuilder.fromJson,
        '$objectPath.prescription',
      ),
      originalPrescription: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'originalPrescription',
        ReferenceBuilder.fromJson,
        '$objectPath.originalPrescription',
      ),
      event: (json['event'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitEventBuilder>(
            (v) => ExplanationOfBenefitEventBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.event',
              },
            ),
          )
          .toList(),
      payee: JsonParser.parseObject<ExplanationOfBenefitPayeeBuilder>(
        json,
        'payee',
        ExplanationOfBenefitPayeeBuilder.fromJson,
        '$objectPath.payee',
      ),
      referral: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'referral',
        ReferenceBuilder.fromJson,
        '$objectPath.referral',
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
      facility: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'facility',
        ReferenceBuilder.fromJson,
        '$objectPath.facility',
      ),
      claim: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'claim',
        ReferenceBuilder.fromJson,
        '$objectPath.claim',
      ),
      claimResponse: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'claimResponse',
        ReferenceBuilder.fromJson,
        '$objectPath.claimResponse',
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
      preAuthRef: JsonParser.parsePrimitiveList<FhirStringBuilder>(
        json,
        'preAuthRef',
        FhirStringBuilder.fromJson,
        '$objectPath.preAuthRef',
      ),
      preAuthRefPeriod: (json['preAuthRefPeriod'] as List<dynamic>?)
          ?.map<PeriodBuilder>(
            (v) => PeriodBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.preAuthRefPeriod',
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
      careTeam: (json['careTeam'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitCareTeamBuilder>(
            (v) => ExplanationOfBenefitCareTeamBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.careTeam',
              },
            ),
          )
          .toList(),
      supportingInfo: (json['supportingInfo'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitSupportingInfoBuilder>(
            (v) => ExplanationOfBenefitSupportingInfoBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.supportingInfo',
              },
            ),
          )
          .toList(),
      diagnosis: (json['diagnosis'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitDiagnosisBuilder>(
            (v) => ExplanationOfBenefitDiagnosisBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.diagnosis',
              },
            ),
          )
          .toList(),
      procedure: (json['procedure'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitProcedureBuilder>(
            (v) => ExplanationOfBenefitProcedureBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.procedure',
              },
            ),
          )
          .toList(),
      precedence: JsonParser.parsePrimitive<FhirPositiveIntBuilder>(
        json,
        'precedence',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.precedence',
      ),
      insurance: (json['insurance'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitInsuranceBuilder>(
            (v) => ExplanationOfBenefitInsuranceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.insurance',
              },
            ),
          )
          .toList(),
      accident: JsonParser.parseObject<ExplanationOfBenefitAccidentBuilder>(
        json,
        'accident',
        ExplanationOfBenefitAccidentBuilder.fromJson,
        '$objectPath.accident',
      ),
      patientPaid: JsonParser.parseObject<MoneyBuilder>(
        json,
        'patientPaid',
        MoneyBuilder.fromJson,
        '$objectPath.patientPaid',
      ),
      item: (json['item'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitItemBuilder>(
            (v) => ExplanationOfBenefitItemBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.item',
              },
            ),
          )
          .toList(),
      addItem: (json['addItem'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitAddItemBuilder>(
            (v) => ExplanationOfBenefitAddItemBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.addItem',
              },
            ),
          )
          .toList(),
      adjudication: (json['adjudication'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitAdjudicationBuilder>(
            (v) => ExplanationOfBenefitAdjudicationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.adjudication',
              },
            ),
          )
          .toList(),
      total: (json['total'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitTotalBuilder>(
            (v) => ExplanationOfBenefitTotalBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.total',
              },
            ),
          )
          .toList(),
      payment: JsonParser.parseObject<ExplanationOfBenefitPaymentBuilder>(
        json,
        'payment',
        ExplanationOfBenefitPaymentBuilder.fromJson,
        '$objectPath.payment',
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
          ?.map<ExplanationOfBenefitProcessNoteBuilder>(
            (v) => ExplanationOfBenefitProcessNoteBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.processNote',
              },
            ),
          )
          .toList(),
      benefitPeriod: JsonParser.parseObject<PeriodBuilder>(
        json,
        'benefitPeriod',
        PeriodBuilder.fromJson,
        '$objectPath.benefitPeriod',
      ),
      benefitBalance: (json['benefitBalance'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitBenefitBalanceBuilder>(
            (v) => ExplanationOfBenefitBenefitBalanceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.benefitBalance',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ExplanationOfBenefitBuilder]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefitBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefitBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefitBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefitBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefitBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefitBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ExplanationOfBenefit';

  /// [identifier]
  /// A unique identifier assigned to this explanation of benefit.
  List<IdentifierBuilder>? identifier;

  /// [traceNumber]
  /// Trace number for tracking purposes. May be defined at the jurisdiction
  /// level or between trading partners.
  List<IdentifierBuilder>? traceNumber;

  /// [status]
  /// The status of the resource instance.
  ExplanationOfBenefitStatusBuilder? status;

  /// [type]
  /// The category of claim, e.g. oral, pharmacy, vision, institutional,
  /// professional.
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
  /// supplied or are being considered and for whom actual for forecast
  /// reimbursement is sought.
  ReferenceBuilder? patient;

  /// [billablePeriod]
  /// The period for which charges are being submitted.
  PeriodBuilder? billablePeriod;

  /// [created]
  /// The date this resource was created.
  FhirDateTimeBuilder? created;

  /// [enterer]
  /// Individual who created the claim, predetermination or preauthorization.
  ReferenceBuilder? enterer;

  /// [insurer]
  /// The party responsible for authorization, adjudication and
  /// reimbursement.
  ReferenceBuilder? insurer;

  /// [provider]
  /// The provider which is responsible for the claim, predetermination or
  /// preauthorization.
  ReferenceBuilder? provider;

  /// [priority]
  /// The provider-required urgency of processing the request. Typical values
  /// include: stat, normal deferred.
  CodeableConceptBuilder? priority;

  /// [fundsReserveRequested]
  /// A code to indicate whether and for whom funds are to be reserved for
  /// future claims.
  CodeableConceptBuilder? fundsReserveRequested;

  /// [fundsReserve]
  /// A code, used only on a response to a preauthorization, to indicate
  /// whether the benefits payable have been reserved and for whom.
  CodeableConceptBuilder? fundsReserve;

  /// [related]
  /// Other claims which are related to this claim such as prior submissions
  /// or claims for related services or for the same event.
  List<ExplanationOfBenefitRelatedBuilder>? related;

  /// [prescription]
  /// Prescription is the document/authorization given to the claim author
  /// for them to provide products and services for which consideration
  /// (reimbursement) is sought. Could be a RX for medications, an 'order'
  /// for oxygen or wheelchair or physiotherapy treatments.
  ReferenceBuilder? prescription;

  /// [originalPrescription]
  /// Original prescription which has been superseded by this prescription to
  /// support the dispensing of pharmacy services, medications or products.
  ReferenceBuilder? originalPrescription;

  /// [event]
  /// Information code for an event with a corresponding date or period.
  List<ExplanationOfBenefitEventBuilder>? event;

  /// [payee]
  /// The party to be reimbursed for cost of the products and services
  /// according to the terms of the policy.
  ExplanationOfBenefitPayeeBuilder? payee;

  /// [referral]
  /// The referral information received by the claim author, it is not to be
  /// used when the author generates a referral for a patient. A copy of that
  /// referral may be provided as supporting information. Some insurers
  /// require proof of referral to pay for services or to pay specialist
  /// rates for services.
  ReferenceBuilder? referral;

  /// [encounter]
  /// Healthcare encounters related to this claim.
  List<ReferenceBuilder>? encounter;

  /// [facility]
  /// Facility where the services were provided.
  ReferenceBuilder? facility;

  /// [claim]
  /// The business identifier for the instance of the adjudication request:
  /// claim predetermination or preauthorization.
  ReferenceBuilder? claim;

  /// [claimResponse]
  /// The business identifier for the instance of the adjudication response:
  /// claim, predetermination or preauthorization response.
  ReferenceBuilder? claimResponse;

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
  List<FhirStringBuilder>? preAuthRef;

  /// [preAuthRefPeriod]
  /// The timeframe during which the supplied preauthorization reference may
  /// be quoted on claims to obtain the adjudication as provided.
  List<PeriodBuilder>? preAuthRefPeriod;

  /// [diagnosisRelatedGroup]
  /// A package billing code or bundle code used to group products and
  /// services to a particular health condition (such as heart attack) which
  /// is based on a predetermined grouping code system.
  CodeableConceptBuilder? diagnosisRelatedGroup;

  /// [careTeam]
  /// The members of the team who provided the products and services.
  List<ExplanationOfBenefitCareTeamBuilder>? careTeam;

  /// [supportingInfo]
  /// Additional information codes regarding exceptions, special
  /// considerations, the condition, situation, prior or concurrent issues.
  List<ExplanationOfBenefitSupportingInfoBuilder>? supportingInfo;

  /// [diagnosis]
  /// Information about diagnoses relevant to the claim items.
  List<ExplanationOfBenefitDiagnosisBuilder>? diagnosis;

  /// [procedure]
  /// Procedures performed on the patient relevant to the billing items with
  /// the claim.
  List<ExplanationOfBenefitProcedureBuilder>? procedure;

  /// [precedence]
  /// This indicates the relative order of a series of EOBs related to
  /// different coverages for the same suite of services.
  FhirPositiveIntBuilder? precedence;

  /// [insurance]
  /// Financial instruments for reimbursement for the health care products
  /// and services specified on the claim.
  List<ExplanationOfBenefitInsuranceBuilder>? insurance;

  /// [accident]
  /// Details of a accident which resulted in injuries which required the
  /// products and services listed in the claim.
  ExplanationOfBenefitAccidentBuilder? accident;

  /// [patientPaid]
  /// The amount paid by the patient, in total at the claim claim level or
  /// specifically for the item and detail level, to the provider for goods
  /// and services.
  MoneyBuilder? patientPaid;

  /// [item]
  /// A claim line. Either a simple (a product or service) or a 'group' of
  /// details which can also be a simple items or groups of sub-details.
  List<ExplanationOfBenefitItemBuilder>? item;

  /// [addItem]
  /// The first-tier service adjudications for payor added product or service
  /// lines.
  List<ExplanationOfBenefitAddItemBuilder>? addItem;

  /// [adjudication]
  /// The adjudication results which are presented at the header level rather
  /// than at the line-item or add-item levels.
  List<ExplanationOfBenefitAdjudicationBuilder>? adjudication;

  /// [total]
  /// Categorized monetary totals for the adjudication.
  List<ExplanationOfBenefitTotalBuilder>? total;

  /// [payment]
  /// Payment details for the adjudication of the claim.
  ExplanationOfBenefitPaymentBuilder? payment;

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
  List<ExplanationOfBenefitProcessNoteBuilder>? processNote;

  /// [benefitPeriod]
  /// The term of the benefits documented in this response.
  PeriodBuilder? benefitPeriod;

  /// [benefitBalance]
  /// Balance by Benefit Category.
  List<ExplanationOfBenefitBenefitBalanceBuilder>? benefitBalance;

  /// Converts a [ExplanationOfBenefitBuilder]
  /// to [ExplanationOfBenefit]
  @override
  ExplanationOfBenefit build() => ExplanationOfBenefit.fromJson(toJson());

  /// Converts a [ExplanationOfBenefitBuilder]
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
    addField('billablePeriod', billablePeriod);
    addField('created', created);
    addField('enterer', enterer);
    addField('insurer', insurer);
    addField('provider', provider);
    addField('priority', priority);
    addField('fundsReserveRequested', fundsReserveRequested);
    addField('fundsReserve', fundsReserve);
    addField('related', related);
    addField('prescription', prescription);
    addField('originalPrescription', originalPrescription);
    addField('event', event);
    addField('payee', payee);
    addField('referral', referral);
    addField('encounter', encounter);
    addField('facility', facility);
    addField('claim', claim);
    addField('claimResponse', claimResponse);
    addField('outcome', outcome);
    addField('decision', decision);
    addField('disposition', disposition);
    addField('preAuthRef', preAuthRef);
    addField('preAuthRefPeriod', preAuthRefPeriod);
    addField('diagnosisRelatedGroup', diagnosisRelatedGroup);
    addField('careTeam', careTeam);
    addField('supportingInfo', supportingInfo);
    addField('diagnosis', diagnosis);
    addField('procedure', procedure);
    addField('precedence', precedence);
    addField('insurance', insurance);
    addField('accident', accident);
    addField('patientPaid', patientPaid);
    addField('item', item);
    addField('addItem', addItem);
    addField('adjudication', adjudication);
    addField('total', total);
    addField('payment', payment);
    addField('formCode', formCode);
    addField('form', form);
    addField('processNote', processNote);
    addField('benefitPeriod', benefitPeriod);
    addField('benefitBalance', benefitBalance);
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
      'billablePeriod',
      'created',
      'enterer',
      'insurer',
      'provider',
      'priority',
      'fundsReserveRequested',
      'fundsReserve',
      'related',
      'prescription',
      'originalPrescription',
      'event',
      'payee',
      'referral',
      'encounter',
      'facility',
      'claim',
      'claimResponse',
      'outcome',
      'decision',
      'disposition',
      'preAuthRef',
      'preAuthRefPeriod',
      'diagnosisRelatedGroup',
      'careTeam',
      'supportingInfo',
      'diagnosis',
      'procedure',
      'precedence',
      'insurance',
      'accident',
      'patientPaid',
      'item',
      'addItem',
      'adjudication',
      'total',
      'payment',
      'formCode',
      'form',
      'processNote',
      'benefitPeriod',
      'benefitBalance',
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
      case 'billablePeriod':
        if (billablePeriod != null) {
          fields.add(billablePeriod!);
        }
      case 'created':
        if (created != null) {
          fields.add(created!);
        }
      case 'enterer':
        if (enterer != null) {
          fields.add(enterer!);
        }
      case 'insurer':
        if (insurer != null) {
          fields.add(insurer!);
        }
      case 'provider':
        if (provider != null) {
          fields.add(provider!);
        }
      case 'priority':
        if (priority != null) {
          fields.add(priority!);
        }
      case 'fundsReserveRequested':
        if (fundsReserveRequested != null) {
          fields.add(fundsReserveRequested!);
        }
      case 'fundsReserve':
        if (fundsReserve != null) {
          fields.add(fundsReserve!);
        }
      case 'related':
        if (related != null) {
          fields.addAll(related!);
        }
      case 'prescription':
        if (prescription != null) {
          fields.add(prescription!);
        }
      case 'originalPrescription':
        if (originalPrescription != null) {
          fields.add(originalPrescription!);
        }
      case 'event':
        if (event != null) {
          fields.addAll(event!);
        }
      case 'payee':
        if (payee != null) {
          fields.add(payee!);
        }
      case 'referral':
        if (referral != null) {
          fields.add(referral!);
        }
      case 'encounter':
        if (encounter != null) {
          fields.addAll(encounter!);
        }
      case 'facility':
        if (facility != null) {
          fields.add(facility!);
        }
      case 'claim':
        if (claim != null) {
          fields.add(claim!);
        }
      case 'claimResponse':
        if (claimResponse != null) {
          fields.add(claimResponse!);
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
          fields.addAll(preAuthRef!);
        }
      case 'preAuthRefPeriod':
        if (preAuthRefPeriod != null) {
          fields.addAll(preAuthRefPeriod!);
        }
      case 'diagnosisRelatedGroup':
        if (diagnosisRelatedGroup != null) {
          fields.add(diagnosisRelatedGroup!);
        }
      case 'careTeam':
        if (careTeam != null) {
          fields.addAll(careTeam!);
        }
      case 'supportingInfo':
        if (supportingInfo != null) {
          fields.addAll(supportingInfo!);
        }
      case 'diagnosis':
        if (diagnosis != null) {
          fields.addAll(diagnosis!);
        }
      case 'procedure':
        if (procedure != null) {
          fields.addAll(procedure!);
        }
      case 'precedence':
        if (precedence != null) {
          fields.add(precedence!);
        }
      case 'insurance':
        if (insurance != null) {
          fields.addAll(insurance!);
        }
      case 'accident':
        if (accident != null) {
          fields.add(accident!);
        }
      case 'patientPaid':
        if (patientPaid != null) {
          fields.add(patientPaid!);
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
      case 'benefitPeriod':
        if (benefitPeriod != null) {
          fields.add(benefitPeriod!);
        }
      case 'benefitBalance':
        if (benefitBalance != null) {
          fields.addAll(benefitBalance!);
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
          if (child is ExplanationOfBenefitStatusBuilder) {
            status = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted =
                    ExplanationOfBenefitStatusBuilder(stringValue);
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
      case 'billablePeriod':
        {
          if (child is PeriodBuilder) {
            billablePeriod = child;
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
      case 'enterer':
        {
          if (child is ReferenceBuilder) {
            enterer = child;
            return;
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
      case 'provider':
        {
          if (child is ReferenceBuilder) {
            provider = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'priority':
        {
          if (child is CodeableConceptBuilder) {
            priority = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'fundsReserveRequested':
        {
          if (child is CodeableConceptBuilder) {
            fundsReserveRequested = child;
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
      case 'related':
        {
          if (child is List<ExplanationOfBenefitRelatedBuilder>) {
            // Replace or create new list
            related = child;
            return;
          } else if (child is ExplanationOfBenefitRelatedBuilder) {
            // Add single element to existing list or create new list
            related = [
              ...(related ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'prescription':
        {
          if (child is ReferenceBuilder) {
            prescription = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'originalPrescription':
        {
          if (child is ReferenceBuilder) {
            originalPrescription = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'event':
        {
          if (child is List<ExplanationOfBenefitEventBuilder>) {
            // Replace or create new list
            event = child;
            return;
          } else if (child is ExplanationOfBenefitEventBuilder) {
            // Add single element to existing list or create new list
            event = [
              ...(event ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'payee':
        {
          if (child is ExplanationOfBenefitPayeeBuilder) {
            payee = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'referral':
        {
          if (child is ReferenceBuilder) {
            referral = child;
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
      case 'facility':
        {
          if (child is ReferenceBuilder) {
            facility = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'claim':
        {
          if (child is ReferenceBuilder) {
            claim = child;
            return;
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
          if (child is List<FhirStringBuilder>) {
            // Replace or create new list
            preAuthRef = child;
            return;
          } else if (child is FhirStringBuilder) {
            // Add single element to existing list or create new list
            preAuthRef = [
              ...(preAuthRef ?? []),
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
              preAuthRef = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                preAuthRef = [
                  ...(preAuthRef ?? []),
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
      case 'preAuthRefPeriod':
        {
          if (child is List<PeriodBuilder>) {
            // Replace or create new list
            preAuthRefPeriod = child;
            return;
          } else if (child is PeriodBuilder) {
            // Add single element to existing list or create new list
            preAuthRefPeriod = [
              ...(preAuthRefPeriod ?? []),
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
      case 'careTeam':
        {
          if (child is List<ExplanationOfBenefitCareTeamBuilder>) {
            // Replace or create new list
            careTeam = child;
            return;
          } else if (child is ExplanationOfBenefitCareTeamBuilder) {
            // Add single element to existing list or create new list
            careTeam = [
              ...(careTeam ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'supportingInfo':
        {
          if (child is List<ExplanationOfBenefitSupportingInfoBuilder>) {
            // Replace or create new list
            supportingInfo = child;
            return;
          } else if (child is ExplanationOfBenefitSupportingInfoBuilder) {
            // Add single element to existing list or create new list
            supportingInfo = [
              ...(supportingInfo ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'diagnosis':
        {
          if (child is List<ExplanationOfBenefitDiagnosisBuilder>) {
            // Replace or create new list
            diagnosis = child;
            return;
          } else if (child is ExplanationOfBenefitDiagnosisBuilder) {
            // Add single element to existing list or create new list
            diagnosis = [
              ...(diagnosis ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'procedure':
        {
          if (child is List<ExplanationOfBenefitProcedureBuilder>) {
            // Replace or create new list
            procedure = child;
            return;
          } else if (child is ExplanationOfBenefitProcedureBuilder) {
            // Add single element to existing list or create new list
            procedure = [
              ...(procedure ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'precedence':
        {
          if (child is FhirPositiveIntBuilder) {
            precedence = child;
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
                  precedence = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'insurance':
        {
          if (child is List<ExplanationOfBenefitInsuranceBuilder>) {
            // Replace or create new list
            insurance = child;
            return;
          } else if (child is ExplanationOfBenefitInsuranceBuilder) {
            // Add single element to existing list or create new list
            insurance = [
              ...(insurance ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'accident':
        {
          if (child is ExplanationOfBenefitAccidentBuilder) {
            accident = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'patientPaid':
        {
          if (child is MoneyBuilder) {
            patientPaid = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'item':
        {
          if (child is List<ExplanationOfBenefitItemBuilder>) {
            // Replace or create new list
            item = child;
            return;
          } else if (child is ExplanationOfBenefitItemBuilder) {
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
          if (child is List<ExplanationOfBenefitAddItemBuilder>) {
            // Replace or create new list
            addItem = child;
            return;
          } else if (child is ExplanationOfBenefitAddItemBuilder) {
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
          if (child is List<ExplanationOfBenefitAdjudicationBuilder>) {
            // Replace or create new list
            adjudication = child;
            return;
          } else if (child is ExplanationOfBenefitAdjudicationBuilder) {
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
          if (child is List<ExplanationOfBenefitTotalBuilder>) {
            // Replace or create new list
            total = child;
            return;
          } else if (child is ExplanationOfBenefitTotalBuilder) {
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
          if (child is ExplanationOfBenefitPaymentBuilder) {
            payment = child;
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
          if (child is List<ExplanationOfBenefitProcessNoteBuilder>) {
            // Replace or create new list
            processNote = child;
            return;
          } else if (child is ExplanationOfBenefitProcessNoteBuilder) {
            // Add single element to existing list or create new list
            processNote = [
              ...(processNote ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'benefitPeriod':
        {
          if (child is PeriodBuilder) {
            benefitPeriod = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'benefitBalance':
        {
          if (child is List<ExplanationOfBenefitBenefitBalanceBuilder>) {
            // Replace or create new list
            benefitBalance = child;
            return;
          } else if (child is ExplanationOfBenefitBenefitBalanceBuilder) {
            // Add single element to existing list or create new list
            benefitBalance = [
              ...(benefitBalance ?? []),
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
      case 'billablePeriod':
        return ['PeriodBuilder'];
      case 'created':
        return ['FhirDateTimeBuilder'];
      case 'enterer':
        return ['ReferenceBuilder'];
      case 'insurer':
        return ['ReferenceBuilder'];
      case 'provider':
        return ['ReferenceBuilder'];
      case 'priority':
        return ['CodeableConceptBuilder'];
      case 'fundsReserveRequested':
        return ['CodeableConceptBuilder'];
      case 'fundsReserve':
        return ['CodeableConceptBuilder'];
      case 'related':
        return ['ExplanationOfBenefitRelatedBuilder'];
      case 'prescription':
        return ['ReferenceBuilder'];
      case 'originalPrescription':
        return ['ReferenceBuilder'];
      case 'event':
        return ['ExplanationOfBenefitEventBuilder'];
      case 'payee':
        return ['ExplanationOfBenefitPayeeBuilder'];
      case 'referral':
        return ['ReferenceBuilder'];
      case 'encounter':
        return ['ReferenceBuilder'];
      case 'facility':
        return ['ReferenceBuilder'];
      case 'claim':
        return ['ReferenceBuilder'];
      case 'claimResponse':
        return ['ReferenceBuilder'];
      case 'outcome':
        return ['FhirCodeEnumBuilder'];
      case 'decision':
        return ['CodeableConceptBuilder'];
      case 'disposition':
        return ['FhirStringBuilder'];
      case 'preAuthRef':
        return ['FhirStringBuilder'];
      case 'preAuthRefPeriod':
        return ['PeriodBuilder'];
      case 'diagnosisRelatedGroup':
        return ['CodeableConceptBuilder'];
      case 'careTeam':
        return ['ExplanationOfBenefitCareTeamBuilder'];
      case 'supportingInfo':
        return ['ExplanationOfBenefitSupportingInfoBuilder'];
      case 'diagnosis':
        return ['ExplanationOfBenefitDiagnosisBuilder'];
      case 'procedure':
        return ['ExplanationOfBenefitProcedureBuilder'];
      case 'precedence':
        return ['FhirPositiveIntBuilder'];
      case 'insurance':
        return ['ExplanationOfBenefitInsuranceBuilder'];
      case 'accident':
        return ['ExplanationOfBenefitAccidentBuilder'];
      case 'patientPaid':
        return ['MoneyBuilder'];
      case 'item':
        return ['ExplanationOfBenefitItemBuilder'];
      case 'addItem':
        return ['ExplanationOfBenefitAddItemBuilder'];
      case 'adjudication':
        return ['ExplanationOfBenefitAdjudicationBuilder'];
      case 'total':
        return ['ExplanationOfBenefitTotalBuilder'];
      case 'payment':
        return ['ExplanationOfBenefitPaymentBuilder'];
      case 'formCode':
        return ['CodeableConceptBuilder'];
      case 'form':
        return ['AttachmentBuilder'];
      case 'processNote':
        return ['ExplanationOfBenefitProcessNoteBuilder'];
      case 'benefitPeriod':
        return ['PeriodBuilder'];
      case 'benefitBalance':
        return ['ExplanationOfBenefitBenefitBalanceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExplanationOfBenefitBuilder]
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
          status = ExplanationOfBenefitStatusBuilder.empty();
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
      case 'billablePeriod':
        {
          billablePeriod = PeriodBuilder.empty();
          return;
        }
      case 'created':
        {
          created = FhirDateTimeBuilder.empty();
          return;
        }
      case 'enterer':
        {
          enterer = ReferenceBuilder.empty();
          return;
        }
      case 'insurer':
        {
          insurer = ReferenceBuilder.empty();
          return;
        }
      case 'provider':
        {
          provider = ReferenceBuilder.empty();
          return;
        }
      case 'priority':
        {
          priority = CodeableConceptBuilder.empty();
          return;
        }
      case 'fundsReserveRequested':
        {
          fundsReserveRequested = CodeableConceptBuilder.empty();
          return;
        }
      case 'fundsReserve':
        {
          fundsReserve = CodeableConceptBuilder.empty();
          return;
        }
      case 'related':
        {
          related = <ExplanationOfBenefitRelatedBuilder>[];
          return;
        }
      case 'prescription':
        {
          prescription = ReferenceBuilder.empty();
          return;
        }
      case 'originalPrescription':
        {
          originalPrescription = ReferenceBuilder.empty();
          return;
        }
      case 'event':
        {
          event = <ExplanationOfBenefitEventBuilder>[];
          return;
        }
      case 'payee':
        {
          payee = ExplanationOfBenefitPayeeBuilder.empty();
          return;
        }
      case 'referral':
        {
          referral = ReferenceBuilder.empty();
          return;
        }
      case 'encounter':
        {
          encounter = <ReferenceBuilder>[];
          return;
        }
      case 'facility':
        {
          facility = ReferenceBuilder.empty();
          return;
        }
      case 'claim':
        {
          claim = ReferenceBuilder.empty();
          return;
        }
      case 'claimResponse':
        {
          claimResponse = ReferenceBuilder.empty();
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
          preAuthRef = <FhirStringBuilder>[];
          return;
        }
      case 'preAuthRefPeriod':
        {
          preAuthRefPeriod = <PeriodBuilder>[];
          return;
        }
      case 'diagnosisRelatedGroup':
        {
          diagnosisRelatedGroup = CodeableConceptBuilder.empty();
          return;
        }
      case 'careTeam':
        {
          careTeam = <ExplanationOfBenefitCareTeamBuilder>[];
          return;
        }
      case 'supportingInfo':
        {
          supportingInfo = <ExplanationOfBenefitSupportingInfoBuilder>[];
          return;
        }
      case 'diagnosis':
        {
          diagnosis = <ExplanationOfBenefitDiagnosisBuilder>[];
          return;
        }
      case 'procedure':
        {
          procedure = <ExplanationOfBenefitProcedureBuilder>[];
          return;
        }
      case 'precedence':
        {
          precedence = FhirPositiveIntBuilder.empty();
          return;
        }
      case 'insurance':
        {
          insurance = <ExplanationOfBenefitInsuranceBuilder>[];
          return;
        }
      case 'accident':
        {
          accident = ExplanationOfBenefitAccidentBuilder.empty();
          return;
        }
      case 'patientPaid':
        {
          patientPaid = MoneyBuilder.empty();
          return;
        }
      case 'item':
        {
          item = <ExplanationOfBenefitItemBuilder>[];
          return;
        }
      case 'addItem':
        {
          addItem = <ExplanationOfBenefitAddItemBuilder>[];
          return;
        }
      case 'adjudication':
        {
          adjudication = <ExplanationOfBenefitAdjudicationBuilder>[];
          return;
        }
      case 'total':
        {
          total = <ExplanationOfBenefitTotalBuilder>[];
          return;
        }
      case 'payment':
        {
          payment = ExplanationOfBenefitPaymentBuilder.empty();
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
          processNote = <ExplanationOfBenefitProcessNoteBuilder>[];
          return;
        }
      case 'benefitPeriod':
        {
          benefitPeriod = PeriodBuilder.empty();
          return;
        }
      case 'benefitBalance':
        {
          benefitBalance = <ExplanationOfBenefitBenefitBalanceBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ExplanationOfBenefitBuilder clone() => throw UnimplementedError();
  @override
  ExplanationOfBenefitBuilder copyWith({
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
    ExplanationOfBenefitStatusBuilder? status,
    CodeableConceptBuilder? type,
    CodeableConceptBuilder? subType,
    UseBuilder? use,
    ReferenceBuilder? patient,
    PeriodBuilder? billablePeriod,
    FhirDateTimeBuilder? created,
    ReferenceBuilder? enterer,
    ReferenceBuilder? insurer,
    ReferenceBuilder? provider,
    CodeableConceptBuilder? priority,
    CodeableConceptBuilder? fundsReserveRequested,
    CodeableConceptBuilder? fundsReserve,
    List<ExplanationOfBenefitRelatedBuilder>? related,
    ReferenceBuilder? prescription,
    ReferenceBuilder? originalPrescription,
    List<ExplanationOfBenefitEventBuilder>? event,
    ExplanationOfBenefitPayeeBuilder? payee,
    ReferenceBuilder? referral,
    List<ReferenceBuilder>? encounter,
    ReferenceBuilder? facility,
    ReferenceBuilder? claim,
    ReferenceBuilder? claimResponse,
    ClaimProcessingCodesBuilder? outcome,
    CodeableConceptBuilder? decision,
    FhirStringBuilder? disposition,
    List<FhirStringBuilder>? preAuthRef,
    List<PeriodBuilder>? preAuthRefPeriod,
    CodeableConceptBuilder? diagnosisRelatedGroup,
    List<ExplanationOfBenefitCareTeamBuilder>? careTeam,
    List<ExplanationOfBenefitSupportingInfoBuilder>? supportingInfo,
    List<ExplanationOfBenefitDiagnosisBuilder>? diagnosis,
    List<ExplanationOfBenefitProcedureBuilder>? procedure,
    FhirPositiveIntBuilder? precedence,
    List<ExplanationOfBenefitInsuranceBuilder>? insurance,
    ExplanationOfBenefitAccidentBuilder? accident,
    MoneyBuilder? patientPaid,
    List<ExplanationOfBenefitItemBuilder>? item,
    List<ExplanationOfBenefitAddItemBuilder>? addItem,
    List<ExplanationOfBenefitAdjudicationBuilder>? adjudication,
    List<ExplanationOfBenefitTotalBuilder>? total,
    ExplanationOfBenefitPaymentBuilder? payment,
    CodeableConceptBuilder? formCode,
    AttachmentBuilder? form,
    List<ExplanationOfBenefitProcessNoteBuilder>? processNote,
    PeriodBuilder? benefitPeriod,
    List<ExplanationOfBenefitBenefitBalanceBuilder>? benefitBalance,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = ExplanationOfBenefitBuilder(
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
      billablePeriod: billablePeriod ?? this.billablePeriod,
      created: created ?? this.created,
      enterer: enterer ?? this.enterer,
      insurer: insurer ?? this.insurer,
      provider: provider ?? this.provider,
      priority: priority ?? this.priority,
      fundsReserveRequested:
          fundsReserveRequested ?? this.fundsReserveRequested,
      fundsReserve: fundsReserve ?? this.fundsReserve,
      related: related ?? this.related,
      prescription: prescription ?? this.prescription,
      originalPrescription: originalPrescription ?? this.originalPrescription,
      event: event ?? this.event,
      payee: payee ?? this.payee,
      referral: referral ?? this.referral,
      encounter: encounter ?? this.encounter,
      facility: facility ?? this.facility,
      claim: claim ?? this.claim,
      claimResponse: claimResponse ?? this.claimResponse,
      outcome: outcome ?? this.outcome,
      decision: decision ?? this.decision,
      disposition: disposition ?? this.disposition,
      preAuthRef: preAuthRef ?? this.preAuthRef,
      preAuthRefPeriod: preAuthRefPeriod ?? this.preAuthRefPeriod,
      diagnosisRelatedGroup:
          diagnosisRelatedGroup ?? this.diagnosisRelatedGroup,
      careTeam: careTeam ?? this.careTeam,
      supportingInfo: supportingInfo ?? this.supportingInfo,
      diagnosis: diagnosis ?? this.diagnosis,
      procedure: procedure ?? this.procedure,
      precedence: precedence ?? this.precedence,
      insurance: insurance ?? this.insurance,
      accident: accident ?? this.accident,
      patientPaid: patientPaid ?? this.patientPaid,
      item: item ?? this.item,
      addItem: addItem ?? this.addItem,
      adjudication: adjudication ?? this.adjudication,
      total: total ?? this.total,
      payment: payment ?? this.payment,
      formCode: formCode ?? this.formCode,
      form: form ?? this.form,
      processNote: processNote ?? this.processNote,
      benefitPeriod: benefitPeriod ?? this.benefitPeriod,
      benefitBalance: benefitBalance ?? this.benefitBalance,
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
    if (o is! ExplanationOfBenefitBuilder) {
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
      billablePeriod,
      o.billablePeriod,
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
      enterer,
      o.enterer,
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
      provider,
      o.provider,
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
      fundsReserveRequested,
      o.fundsReserveRequested,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      fundsReserve,
      o.fundsReserve,
    )) {
      return false;
    }
    if (!listEquals<ExplanationOfBenefitRelatedBuilder>(
      related,
      o.related,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      prescription,
      o.prescription,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      originalPrescription,
      o.originalPrescription,
    )) {
      return false;
    }
    if (!listEquals<ExplanationOfBenefitEventBuilder>(
      event,
      o.event,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      payee,
      o.payee,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      referral,
      o.referral,
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
      facility,
      o.facility,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      claim,
      o.claim,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      claimResponse,
      o.claimResponse,
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
    if (!listEquals<FhirStringBuilder>(
      preAuthRef,
      o.preAuthRef,
    )) {
      return false;
    }
    if (!listEquals<PeriodBuilder>(
      preAuthRefPeriod,
      o.preAuthRefPeriod,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      diagnosisRelatedGroup,
      o.diagnosisRelatedGroup,
    )) {
      return false;
    }
    if (!listEquals<ExplanationOfBenefitCareTeamBuilder>(
      careTeam,
      o.careTeam,
    )) {
      return false;
    }
    if (!listEquals<ExplanationOfBenefitSupportingInfoBuilder>(
      supportingInfo,
      o.supportingInfo,
    )) {
      return false;
    }
    if (!listEquals<ExplanationOfBenefitDiagnosisBuilder>(
      diagnosis,
      o.diagnosis,
    )) {
      return false;
    }
    if (!listEquals<ExplanationOfBenefitProcedureBuilder>(
      procedure,
      o.procedure,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      precedence,
      o.precedence,
    )) {
      return false;
    }
    if (!listEquals<ExplanationOfBenefitInsuranceBuilder>(
      insurance,
      o.insurance,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      accident,
      o.accident,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      patientPaid,
      o.patientPaid,
    )) {
      return false;
    }
    if (!listEquals<ExplanationOfBenefitItemBuilder>(
      item,
      o.item,
    )) {
      return false;
    }
    if (!listEquals<ExplanationOfBenefitAddItemBuilder>(
      addItem,
      o.addItem,
    )) {
      return false;
    }
    if (!listEquals<ExplanationOfBenefitAdjudicationBuilder>(
      adjudication,
      o.adjudication,
    )) {
      return false;
    }
    if (!listEquals<ExplanationOfBenefitTotalBuilder>(
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
    if (!listEquals<ExplanationOfBenefitProcessNoteBuilder>(
      processNote,
      o.processNote,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      benefitPeriod,
      o.benefitPeriod,
    )) {
      return false;
    }
    if (!listEquals<ExplanationOfBenefitBenefitBalanceBuilder>(
      benefitBalance,
      o.benefitBalance,
    )) {
      return false;
    }
    return true;
  }
}

/// [ExplanationOfBenefitRelatedBuilder]
/// Other claims which are related to this claim such as prior submissions
/// or claims for related services or for the same event.
class ExplanationOfBenefitRelatedBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ExplanationOfBenefitRelatedBuilder]

  ExplanationOfBenefitRelatedBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.claim,
    this.relationship,
    this.reference,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ExplanationOfBenefit.related',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ExplanationOfBenefitRelatedBuilder.empty() =>
      ExplanationOfBenefitRelatedBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitRelatedBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit.related';
    return ExplanationOfBenefitRelatedBuilder(
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
      claim: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'claim',
        ReferenceBuilder.fromJson,
        '$objectPath.claim',
      ),
      relationship: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'relationship',
        CodeableConceptBuilder.fromJson,
        '$objectPath.relationship',
      ),
      reference: JsonParser.parseObject<IdentifierBuilder>(
        json,
        'reference',
        IdentifierBuilder.fromJson,
        '$objectPath.reference',
      ),
    );
  }

  /// Deserialize [ExplanationOfBenefitRelatedBuilder]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefitRelatedBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefitRelatedBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefitRelatedBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefitRelatedBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefitRelatedBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitRelatedBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefitRelatedBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ExplanationOfBenefitRelated';

  /// [claim]
  /// Reference to a related claim.
  ReferenceBuilder? claim;

  /// [relationship]
  /// A code to convey how the claims are related.
  CodeableConceptBuilder? relationship;

  /// [reference]
  /// An alternate organizational reference to the case or file to which this
  /// particular claim pertains.
  IdentifierBuilder? reference;

  /// Converts a [ExplanationOfBenefitRelatedBuilder]
  /// to [ExplanationOfBenefitRelated]
  @override
  ExplanationOfBenefitRelated build() =>
      ExplanationOfBenefitRelated.fromJson(toJson());

  /// Converts a [ExplanationOfBenefitRelatedBuilder]
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
    addField('claim', claim);
    addField('relationship', relationship);
    addField('reference', reference);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'claim',
      'relationship',
      'reference',
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
      case 'claim':
        if (claim != null) {
          fields.add(claim!);
        }
      case 'relationship':
        if (relationship != null) {
          fields.add(relationship!);
        }
      case 'reference':
        if (reference != null) {
          fields.add(reference!);
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
      case 'claim':
        {
          if (child is ReferenceBuilder) {
            claim = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'relationship':
        {
          if (child is CodeableConceptBuilder) {
            relationship = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'reference':
        {
          if (child is IdentifierBuilder) {
            reference = child;
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
      case 'claim':
        return ['ReferenceBuilder'];
      case 'relationship':
        return ['CodeableConceptBuilder'];
      case 'reference':
        return ['IdentifierBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExplanationOfBenefitRelatedBuilder]
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
      case 'claim':
        {
          claim = ReferenceBuilder.empty();
          return;
        }
      case 'relationship':
        {
          relationship = CodeableConceptBuilder.empty();
          return;
        }
      case 'reference':
        {
          reference = IdentifierBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ExplanationOfBenefitRelatedBuilder clone() => throw UnimplementedError();
  @override
  ExplanationOfBenefitRelatedBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    ReferenceBuilder? claim,
    CodeableConceptBuilder? relationship,
    IdentifierBuilder? reference,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ExplanationOfBenefitRelatedBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      claim: claim ?? this.claim,
      relationship: relationship ?? this.relationship,
      reference: reference ?? this.reference,
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
    if (o is! ExplanationOfBenefitRelatedBuilder) {
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
      claim,
      o.claim,
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
      reference,
      o.reference,
    )) {
      return false;
    }
    return true;
  }
}

/// [ExplanationOfBenefitEventBuilder]
/// Information code for an event with a corresponding date or period.
class ExplanationOfBenefitEventBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ExplanationOfBenefitEventBuilder]

  ExplanationOfBenefitEventBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    WhenXExplanationOfBenefitEventBuilder? whenX,
    FhirDateTimeBuilder? whenDateTime,
    PeriodBuilder? whenPeriod,
    super.disallowExtensions,
  })  : whenX = whenX ?? whenDateTime ?? whenPeriod,
        super(
          objectPath: 'ExplanationOfBenefit.event',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ExplanationOfBenefitEventBuilder.empty() =>
      ExplanationOfBenefitEventBuilder(
        type: CodeableConceptBuilder.empty(),
        whenX: FhirDateTimeBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitEventBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit.event';
    return ExplanationOfBenefitEventBuilder(
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
      whenX: JsonParser.parsePolymorphic<WhenXExplanationOfBenefitEventBuilder>(
        json,
        {
          'whenDateTime': FhirDateTimeBuilder.fromJson,
          'whenPeriod': PeriodBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [ExplanationOfBenefitEventBuilder]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefitEventBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefitEventBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefitEventBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefitEventBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefitEventBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitEventBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefitEventBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ExplanationOfBenefitEvent';

  /// [type]
  /// A coded event such as when a service is expected or a card printed.
  CodeableConceptBuilder? type;

  /// [whenX]
  /// A date or period in the past or future indicating when the event
  /// occurred or is expectd to occur.
  WhenXExplanationOfBenefitEventBuilder? whenX;

  /// Getter for [whenDateTime] as a FhirDateTimeBuilder
  FhirDateTimeBuilder? get whenDateTime => whenX?.isAs<FhirDateTimeBuilder>();

  /// Getter for [whenPeriod] as a PeriodBuilder
  PeriodBuilder? get whenPeriod => whenX?.isAs<PeriodBuilder>();

  /// Converts a [ExplanationOfBenefitEventBuilder]
  /// to [ExplanationOfBenefitEvent]
  @override
  ExplanationOfBenefitEvent build() =>
      ExplanationOfBenefitEvent.fromJson(toJson());

  /// Converts a [ExplanationOfBenefitEventBuilder]
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
          if (child is WhenXExplanationOfBenefitEventBuilder) {
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

  /// Creates a new [ExplanationOfBenefitEventBuilder]
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
  ExplanationOfBenefitEventBuilder clone() => throw UnimplementedError();
  @override
  ExplanationOfBenefitEventBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? type,
    WhenXExplanationOfBenefitEventBuilder? whenX,
    FhirDateTimeBuilder? whenDateTime,
    PeriodBuilder? whenPeriod,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ExplanationOfBenefitEventBuilder(
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
    if (o is! ExplanationOfBenefitEventBuilder) {
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

/// [ExplanationOfBenefitPayeeBuilder]
/// The party to be reimbursed for cost of the products and services
/// according to the terms of the policy.
class ExplanationOfBenefitPayeeBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ExplanationOfBenefitPayeeBuilder]

  ExplanationOfBenefitPayeeBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.party,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ExplanationOfBenefit.payee',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ExplanationOfBenefitPayeeBuilder.empty() =>
      ExplanationOfBenefitPayeeBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitPayeeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit.payee';
    return ExplanationOfBenefitPayeeBuilder(
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
      party: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'party',
        ReferenceBuilder.fromJson,
        '$objectPath.party',
      ),
    );
  }

  /// Deserialize [ExplanationOfBenefitPayeeBuilder]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefitPayeeBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefitPayeeBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefitPayeeBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefitPayeeBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefitPayeeBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitPayeeBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefitPayeeBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ExplanationOfBenefitPayee';

  /// [type]
  /// Type of Party to be reimbursed: Subscriber, provider, other.
  CodeableConceptBuilder? type;

  /// [party]
  /// Reference to the individual or organization to whom any payment will be
  /// made.
  ReferenceBuilder? party;

  /// Converts a [ExplanationOfBenefitPayeeBuilder]
  /// to [ExplanationOfBenefitPayee]
  @override
  ExplanationOfBenefitPayee build() =>
      ExplanationOfBenefitPayee.fromJson(toJson());

  /// Converts a [ExplanationOfBenefitPayeeBuilder]
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
    addField('party', party);
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
      'party',
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
      case 'party':
        if (party != null) {
          fields.add(party!);
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
      case 'party':
        {
          if (child is ReferenceBuilder) {
            party = child;
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
      case 'party':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExplanationOfBenefitPayeeBuilder]
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
      case 'party':
        {
          party = ReferenceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ExplanationOfBenefitPayeeBuilder clone() => throw UnimplementedError();
  @override
  ExplanationOfBenefitPayeeBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? type,
    ReferenceBuilder? party,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ExplanationOfBenefitPayeeBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      party: party ?? this.party,
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
    if (o is! ExplanationOfBenefitPayeeBuilder) {
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
      party,
      o.party,
    )) {
      return false;
    }
    return true;
  }
}

/// [ExplanationOfBenefitCareTeamBuilder]
/// The members of the team who provided the products and services.
class ExplanationOfBenefitCareTeamBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ExplanationOfBenefitCareTeamBuilder]

  ExplanationOfBenefitCareTeamBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.sequence,
    this.provider,
    this.responsible,
    this.role,
    this.specialty,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ExplanationOfBenefit.careTeam',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ExplanationOfBenefitCareTeamBuilder.empty() =>
      ExplanationOfBenefitCareTeamBuilder(
        sequence: FhirPositiveIntBuilder.empty(),
        provider: ReferenceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitCareTeamBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit.careTeam';
    return ExplanationOfBenefitCareTeamBuilder(
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
      provider: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'provider',
        ReferenceBuilder.fromJson,
        '$objectPath.provider',
      ),
      responsible: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'responsible',
        FhirBooleanBuilder.fromJson,
        '$objectPath.responsible',
      ),
      role: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'role',
        CodeableConceptBuilder.fromJson,
        '$objectPath.role',
      ),
      specialty: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'specialty',
        CodeableConceptBuilder.fromJson,
        '$objectPath.specialty',
      ),
    );
  }

  /// Deserialize [ExplanationOfBenefitCareTeamBuilder]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefitCareTeamBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefitCareTeamBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefitCareTeamBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefitCareTeamBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefitCareTeamBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitCareTeamBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefitCareTeamBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ExplanationOfBenefitCareTeam';

  /// [sequence]
  /// A number to uniquely identify care team entries.
  FhirPositiveIntBuilder? sequence;

  /// [provider]
  /// Member of the team who provided the product or service.
  ReferenceBuilder? provider;

  /// [responsible]
  /// The party who is billing and/or responsible for the claimed products or
  /// services.
  FhirBooleanBuilder? responsible;

  /// [role]
  /// The lead, assisting or supervising practitioner and their discipline if
  /// a multidisciplinary team.
  CodeableConceptBuilder? role;

  /// [specialty]
  /// The specialization of the practitioner or provider which is applicable
  /// for this service.
  CodeableConceptBuilder? specialty;

  /// Converts a [ExplanationOfBenefitCareTeamBuilder]
  /// to [ExplanationOfBenefitCareTeam]
  @override
  ExplanationOfBenefitCareTeam build() =>
      ExplanationOfBenefitCareTeam.fromJson(toJson());

  /// Converts a [ExplanationOfBenefitCareTeamBuilder]
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
    addField('provider', provider);
    addField('responsible', responsible);
    addField('role', role);
    addField('specialty', specialty);
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
      'provider',
      'responsible',
      'role',
      'specialty',
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
      case 'provider':
        if (provider != null) {
          fields.add(provider!);
        }
      case 'responsible':
        if (responsible != null) {
          fields.add(responsible!);
        }
      case 'role':
        if (role != null) {
          fields.add(role!);
        }
      case 'specialty':
        if (specialty != null) {
          fields.add(specialty!);
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
      case 'provider':
        {
          if (child is ReferenceBuilder) {
            provider = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'responsible':
        {
          if (child is FhirBooleanBuilder) {
            responsible = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                responsible = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
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
      case 'specialty':
        {
          if (child is CodeableConceptBuilder) {
            specialty = child;
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
      case 'provider':
        return ['ReferenceBuilder'];
      case 'responsible':
        return ['FhirBooleanBuilder'];
      case 'role':
        return ['CodeableConceptBuilder'];
      case 'specialty':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExplanationOfBenefitCareTeamBuilder]
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
      case 'provider':
        {
          provider = ReferenceBuilder.empty();
          return;
        }
      case 'responsible':
        {
          responsible = FhirBooleanBuilder.empty();
          return;
        }
      case 'role':
        {
          role = CodeableConceptBuilder.empty();
          return;
        }
      case 'specialty':
        {
          specialty = CodeableConceptBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ExplanationOfBenefitCareTeamBuilder clone() => throw UnimplementedError();
  @override
  ExplanationOfBenefitCareTeamBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirPositiveIntBuilder? sequence,
    ReferenceBuilder? provider,
    FhirBooleanBuilder? responsible,
    CodeableConceptBuilder? role,
    CodeableConceptBuilder? specialty,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ExplanationOfBenefitCareTeamBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      sequence: sequence ?? this.sequence,
      provider: provider ?? this.provider,
      responsible: responsible ?? this.responsible,
      role: role ?? this.role,
      specialty: specialty ?? this.specialty,
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
    if (o is! ExplanationOfBenefitCareTeamBuilder) {
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
      provider,
      o.provider,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      responsible,
      o.responsible,
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
      specialty,
      o.specialty,
    )) {
      return false;
    }
    return true;
  }
}

/// [ExplanationOfBenefitSupportingInfoBuilder]
/// Additional information codes regarding exceptions, special
/// considerations, the condition, situation, prior or concurrent issues.
class ExplanationOfBenefitSupportingInfoBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ExplanationOfBenefitSupportingInfoBuilder]

  ExplanationOfBenefitSupportingInfoBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.sequence,
    this.category,
    this.code,
    TimingXExplanationOfBenefitSupportingInfoBuilder? timingX,
    FhirDateBuilder? timingDate,
    PeriodBuilder? timingPeriod,
    ValueXExplanationOfBenefitSupportingInfoBuilder? valueX,
    FhirBooleanBuilder? valueBoolean,
    FhirStringBuilder? valueString,
    QuantityBuilder? valueQuantity,
    AttachmentBuilder? valueAttachment,
    ReferenceBuilder? valueReference,
    IdentifierBuilder? valueIdentifier,
    this.reason,
    super.disallowExtensions,
  })  : timingX = timingX ?? timingDate ?? timingPeriod,
        valueX = valueX ??
            valueBoolean ??
            valueString ??
            valueQuantity ??
            valueAttachment ??
            valueReference ??
            valueIdentifier,
        super(
          objectPath: 'ExplanationOfBenefit.supportingInfo',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ExplanationOfBenefitSupportingInfoBuilder.empty() =>
      ExplanationOfBenefitSupportingInfoBuilder(
        sequence: FhirPositiveIntBuilder.empty(),
        category: CodeableConceptBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitSupportingInfoBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit.supportingInfo';
    return ExplanationOfBenefitSupportingInfoBuilder(
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
      category: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'category',
        CodeableConceptBuilder.fromJson,
        '$objectPath.category',
      ),
      code: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'code',
        CodeableConceptBuilder.fromJson,
        '$objectPath.code',
      ),
      timingX: JsonParser.parsePolymorphic<
          TimingXExplanationOfBenefitSupportingInfoBuilder>(
        json,
        {
          'timingDate': FhirDateBuilder.fromJson,
          'timingPeriod': PeriodBuilder.fromJson,
        },
        objectPath,
      ),
      valueX: JsonParser.parsePolymorphic<
          ValueXExplanationOfBenefitSupportingInfoBuilder>(
        json,
        {
          'valueBoolean': FhirBooleanBuilder.fromJson,
          'valueString': FhirStringBuilder.fromJson,
          'valueQuantity': QuantityBuilder.fromJson,
          'valueAttachment': AttachmentBuilder.fromJson,
          'valueReference': ReferenceBuilder.fromJson,
          'valueIdentifier': IdentifierBuilder.fromJson,
        },
        objectPath,
      ),
      reason: JsonParser.parseObject<CodingBuilder>(
        json,
        'reason',
        CodingBuilder.fromJson,
        '$objectPath.reason',
      ),
    );
  }

  /// Deserialize [ExplanationOfBenefitSupportingInfoBuilder]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefitSupportingInfoBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefitSupportingInfoBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefitSupportingInfoBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefitSupportingInfoBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefitSupportingInfoBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitSupportingInfoBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefitSupportingInfoBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ExplanationOfBenefitSupportingInfo';

  /// [sequence]
  /// A number to uniquely identify supporting information entries.
  FhirPositiveIntBuilder? sequence;

  /// [category]
  /// The general class of the information supplied: information; exception;
  /// accident, employment; onset, etc.
  CodeableConceptBuilder? category;

  /// [code]
  /// System and code pertaining to the specific information regarding
  /// special conditions relating to the setting, treatment or patient for
  /// which care is sought.
  CodeableConceptBuilder? code;

  /// [timingX]
  /// The date when or period to which this information refers.
  TimingXExplanationOfBenefitSupportingInfoBuilder? timingX;

  /// Getter for [timingDate] as a FhirDateBuilder
  FhirDateBuilder? get timingDate => timingX?.isAs<FhirDateBuilder>();

  /// Getter for [timingPeriod] as a PeriodBuilder
  PeriodBuilder? get timingPeriod => timingX?.isAs<PeriodBuilder>();

  /// [valueX]
  /// Additional data or information such as resources, documents, images
  /// etc. including references to the data or the actual inclusion of the
  /// data.
  ValueXExplanationOfBenefitSupportingInfoBuilder? valueX;

  /// Getter for [valueBoolean] as a FhirBooleanBuilder
  FhirBooleanBuilder? get valueBoolean => valueX?.isAs<FhirBooleanBuilder>();

  /// Getter for [valueString] as a FhirStringBuilder
  FhirStringBuilder? get valueString => valueX?.isAs<FhirStringBuilder>();

  /// Getter for [valueQuantity] as a QuantityBuilder
  QuantityBuilder? get valueQuantity => valueX?.isAs<QuantityBuilder>();

  /// Getter for [valueAttachment] as a AttachmentBuilder
  AttachmentBuilder? get valueAttachment => valueX?.isAs<AttachmentBuilder>();

  /// Getter for [valueReference] as a ReferenceBuilder
  ReferenceBuilder? get valueReference => valueX?.isAs<ReferenceBuilder>();

  /// Getter for [valueIdentifier] as a IdentifierBuilder
  IdentifierBuilder? get valueIdentifier => valueX?.isAs<IdentifierBuilder>();

  /// [reason]
  /// Provides the reason in the situation where a reason code is required in
  /// addition to the content.
  CodingBuilder? reason;

  /// Converts a [ExplanationOfBenefitSupportingInfoBuilder]
  /// to [ExplanationOfBenefitSupportingInfo]
  @override
  ExplanationOfBenefitSupportingInfo build() =>
      ExplanationOfBenefitSupportingInfo.fromJson(toJson());

  /// Converts a [ExplanationOfBenefitSupportingInfoBuilder]
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
    addField('category', category);
    addField('code', code);
    if (timingX != null) {
      final fhirType = timingX!.fhirType;
      addField('timing${fhirType.capitalizeFirstLetter()}', timingX);
    }

    if (valueX != null) {
      final fhirType = valueX!.fhirType;
      addField('value${fhirType.capitalizeFirstLetter()}', valueX);
    }

    addField('reason', reason);
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
      'category',
      'code',
      'timingX',
      'valueX',
      'reason',
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
      case 'category':
        if (category != null) {
          fields.add(category!);
        }
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'timing':
        if (timingX != null) {
          fields.add(timingX!);
        }
      case 'timingX':
        if (timingX != null) {
          fields.add(timingX!);
        }
      case 'timingDate':
        if (timingX is FhirDateBuilder) {
          fields.add(timingX!);
        }
      case 'timingPeriod':
        if (timingX is PeriodBuilder) {
          fields.add(timingX!);
        }
      case 'value':
        if (valueX != null) {
          fields.add(valueX!);
        }
      case 'valueX':
        if (valueX != null) {
          fields.add(valueX!);
        }
      case 'valueBoolean':
        if (valueX is FhirBooleanBuilder) {
          fields.add(valueX!);
        }
      case 'valueString':
        if (valueX is FhirStringBuilder) {
          fields.add(valueX!);
        }
      case 'valueQuantity':
        if (valueX is QuantityBuilder) {
          fields.add(valueX!);
        }
      case 'valueAttachment':
        if (valueX is AttachmentBuilder) {
          fields.add(valueX!);
        }
      case 'valueReference':
        if (valueX is ReferenceBuilder) {
          fields.add(valueX!);
        }
      case 'valueIdentifier':
        if (valueX is IdentifierBuilder) {
          fields.add(valueX!);
        }
      case 'reason':
        if (reason != null) {
          fields.add(reason!);
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
      case 'category':
        {
          if (child is CodeableConceptBuilder) {
            category = child;
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
      case 'timing':
      case 'timingX':
        {
          if (child is TimingXExplanationOfBenefitSupportingInfoBuilder) {
            timingX = child;
            return;
          } else {
            if (child is FhirDateBuilder) {
              timingX = child;
              return;
            }
            if (child is PeriodBuilder) {
              timingX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'timingDate':
        {
          if (child is FhirDateBuilder) {
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
      case 'value':
      case 'valueX':
        {
          if (child is ValueXExplanationOfBenefitSupportingInfoBuilder) {
            valueX = child;
            return;
          } else {
            if (child is FhirBooleanBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirStringBuilder) {
              valueX = child;
              return;
            }
            if (child is QuantityBuilder) {
              valueX = child;
              return;
            }
            if (child is AttachmentBuilder) {
              valueX = child;
              return;
            }
            if (child is ReferenceBuilder) {
              valueX = child;
              return;
            }
            if (child is IdentifierBuilder) {
              valueX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
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
      case 'valueString':
        {
          if (child is FhirStringBuilder) {
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
      case 'valueAttachment':
        {
          if (child is AttachmentBuilder) {
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
      case 'valueIdentifier':
        {
          if (child is IdentifierBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'reason':
        {
          if (child is CodingBuilder) {
            reason = child;
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
      case 'category':
        return ['CodeableConceptBuilder'];
      case 'code':
        return ['CodeableConceptBuilder'];
      case 'timing':
      case 'timingX':
        return [
          'FhirDateBuilder',
          'PeriodBuilder',
        ];
      case 'timingDate':
        return ['FhirDateBuilder'];
      case 'timingPeriod':
        return ['PeriodBuilder'];
      case 'value':
      case 'valueX':
        return [
          'FhirBooleanBuilder',
          'FhirStringBuilder',
          'QuantityBuilder',
          'AttachmentBuilder',
          'ReferenceBuilder',
          'IdentifierBuilder',
        ];
      case 'valueBoolean':
        return ['FhirBooleanBuilder'];
      case 'valueString':
        return ['FhirStringBuilder'];
      case 'valueQuantity':
        return ['QuantityBuilder'];
      case 'valueAttachment':
        return ['AttachmentBuilder'];
      case 'valueReference':
        return ['ReferenceBuilder'];
      case 'valueIdentifier':
        return ['IdentifierBuilder'];
      case 'reason':
        return ['CodingBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExplanationOfBenefitSupportingInfoBuilder]
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
      case 'category':
        {
          category = CodeableConceptBuilder.empty();
          return;
        }
      case 'code':
        {
          code = CodeableConceptBuilder.empty();
          return;
        }
      case 'timing':
      case 'timingX':
      case 'timingDate':
        {
          timingX = FhirDateBuilder.empty();
          return;
        }
      case 'timingPeriod':
        {
          timingX = PeriodBuilder.empty();
          return;
        }
      case 'value':
      case 'valueX':
      case 'valueBoolean':
        {
          valueX = FhirBooleanBuilder.empty();
          return;
        }
      case 'valueString':
        {
          valueX = FhirStringBuilder.empty();
          return;
        }
      case 'valueQuantity':
        {
          valueX = QuantityBuilder.empty();
          return;
        }
      case 'valueAttachment':
        {
          valueX = AttachmentBuilder.empty();
          return;
        }
      case 'valueReference':
        {
          valueX = ReferenceBuilder.empty();
          return;
        }
      case 'valueIdentifier':
        {
          valueX = IdentifierBuilder.empty();
          return;
        }
      case 'reason':
        {
          reason = CodingBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ExplanationOfBenefitSupportingInfoBuilder clone() =>
      throw UnimplementedError();
  @override
  ExplanationOfBenefitSupportingInfoBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirPositiveIntBuilder? sequence,
    CodeableConceptBuilder? category,
    CodeableConceptBuilder? code,
    TimingXExplanationOfBenefitSupportingInfoBuilder? timingX,
    ValueXExplanationOfBenefitSupportingInfoBuilder? valueX,
    CodingBuilder? reason,
    FhirDateBuilder? timingDate,
    PeriodBuilder? timingPeriod,
    FhirBooleanBuilder? valueBoolean,
    FhirStringBuilder? valueString,
    QuantityBuilder? valueQuantity,
    AttachmentBuilder? valueAttachment,
    ReferenceBuilder? valueReference,
    IdentifierBuilder? valueIdentifier,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ExplanationOfBenefitSupportingInfoBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      sequence: sequence ?? this.sequence,
      category: category ?? this.category,
      code: code ?? this.code,
      timingX: timingX ?? timingDate ?? timingPeriod ?? this.timingX,
      valueX: valueX ??
          valueBoolean ??
          valueString ??
          valueQuantity ??
          valueAttachment ??
          valueReference ??
          valueIdentifier ??
          this.valueX,
      reason: reason ?? this.reason,
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
    if (o is! ExplanationOfBenefitSupportingInfoBuilder) {
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
      timingX,
      o.timingX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      valueX,
      o.valueX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      reason,
      o.reason,
    )) {
      return false;
    }
    return true;
  }
}

/// [ExplanationOfBenefitDiagnosisBuilder]
/// Information about diagnoses relevant to the claim items.
class ExplanationOfBenefitDiagnosisBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ExplanationOfBenefitDiagnosisBuilder]

  ExplanationOfBenefitDiagnosisBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.sequence,
    DiagnosisXExplanationOfBenefitDiagnosisBuilder? diagnosisX,
    CodeableConceptBuilder? diagnosisCodeableConcept,
    ReferenceBuilder? diagnosisReference,
    this.type,
    this.onAdmission,
    super.disallowExtensions,
  })  : diagnosisX =
            diagnosisX ?? diagnosisCodeableConcept ?? diagnosisReference,
        super(
          objectPath: 'ExplanationOfBenefit.diagnosis',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ExplanationOfBenefitDiagnosisBuilder.empty() =>
      ExplanationOfBenefitDiagnosisBuilder(
        sequence: FhirPositiveIntBuilder.empty(),
        diagnosisX: CodeableConceptBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitDiagnosisBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit.diagnosis';
    return ExplanationOfBenefitDiagnosisBuilder(
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
      diagnosisX: JsonParser.parsePolymorphic<
          DiagnosisXExplanationOfBenefitDiagnosisBuilder>(
        json,
        {
          'diagnosisCodeableConcept': CodeableConceptBuilder.fromJson,
          'diagnosisReference': ReferenceBuilder.fromJson,
        },
        objectPath,
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
      onAdmission: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'onAdmission',
        CodeableConceptBuilder.fromJson,
        '$objectPath.onAdmission',
      ),
    );
  }

  /// Deserialize [ExplanationOfBenefitDiagnosisBuilder]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefitDiagnosisBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefitDiagnosisBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefitDiagnosisBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefitDiagnosisBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefitDiagnosisBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitDiagnosisBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefitDiagnosisBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ExplanationOfBenefitDiagnosis';

  /// [sequence]
  /// A number to uniquely identify diagnosis entries.
  FhirPositiveIntBuilder? sequence;

  /// [diagnosisX]
  /// The nature of illness or problem in a coded form or as a reference to
  /// an external defined Condition.
  DiagnosisXExplanationOfBenefitDiagnosisBuilder? diagnosisX;

  /// Getter for [diagnosisCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get diagnosisCodeableConcept =>
      diagnosisX?.isAs<CodeableConceptBuilder>();

  /// Getter for [diagnosisReference] as a ReferenceBuilder
  ReferenceBuilder? get diagnosisReference =>
      diagnosisX?.isAs<ReferenceBuilder>();

  /// [type]
  /// When the condition was observed or the relative ranking.
  List<CodeableConceptBuilder>? type;

  /// [onAdmission]
  /// Indication of whether the diagnosis was present on admission to a
  /// facility.
  CodeableConceptBuilder? onAdmission;

  /// Converts a [ExplanationOfBenefitDiagnosisBuilder]
  /// to [ExplanationOfBenefitDiagnosis]
  @override
  ExplanationOfBenefitDiagnosis build() =>
      ExplanationOfBenefitDiagnosis.fromJson(toJson());

  /// Converts a [ExplanationOfBenefitDiagnosisBuilder]
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
    if (diagnosisX != null) {
      final fhirType = diagnosisX!.fhirType;
      addField('diagnosis${fhirType.capitalizeFirstLetter()}', diagnosisX);
    }

    addField('type', type);
    addField('onAdmission', onAdmission);
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
      'diagnosisX',
      'type',
      'onAdmission',
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
      case 'diagnosis':
        if (diagnosisX != null) {
          fields.add(diagnosisX!);
        }
      case 'diagnosisX':
        if (diagnosisX != null) {
          fields.add(diagnosisX!);
        }
      case 'diagnosisCodeableConcept':
        if (diagnosisX is CodeableConceptBuilder) {
          fields.add(diagnosisX!);
        }
      case 'diagnosisReference':
        if (diagnosisX is ReferenceBuilder) {
          fields.add(diagnosisX!);
        }
      case 'type':
        if (type != null) {
          fields.addAll(type!);
        }
      case 'onAdmission':
        if (onAdmission != null) {
          fields.add(onAdmission!);
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
      case 'diagnosis':
      case 'diagnosisX':
        {
          if (child is DiagnosisXExplanationOfBenefitDiagnosisBuilder) {
            diagnosisX = child;
            return;
          } else {
            if (child is CodeableConceptBuilder) {
              diagnosisX = child;
              return;
            }
            if (child is ReferenceBuilder) {
              diagnosisX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'diagnosisCodeableConcept':
        {
          if (child is CodeableConceptBuilder) {
            diagnosisX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'diagnosisReference':
        {
          if (child is ReferenceBuilder) {
            diagnosisX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
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
      case 'onAdmission':
        {
          if (child is CodeableConceptBuilder) {
            onAdmission = child;
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
      case 'diagnosis':
      case 'diagnosisX':
        return [
          'CodeableConceptBuilder',
          'ReferenceBuilder',
        ];
      case 'diagnosisCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'diagnosisReference':
        return ['ReferenceBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'onAdmission':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExplanationOfBenefitDiagnosisBuilder]
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
      case 'diagnosis':
      case 'diagnosisX':
      case 'diagnosisCodeableConcept':
        {
          diagnosisX = CodeableConceptBuilder.empty();
          return;
        }
      case 'diagnosisReference':
        {
          diagnosisX = ReferenceBuilder.empty();
          return;
        }
      case 'type':
        {
          type = <CodeableConceptBuilder>[];
          return;
        }
      case 'onAdmission':
        {
          onAdmission = CodeableConceptBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ExplanationOfBenefitDiagnosisBuilder clone() => throw UnimplementedError();
  @override
  ExplanationOfBenefitDiagnosisBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirPositiveIntBuilder? sequence,
    DiagnosisXExplanationOfBenefitDiagnosisBuilder? diagnosisX,
    List<CodeableConceptBuilder>? type,
    CodeableConceptBuilder? onAdmission,
    CodeableConceptBuilder? diagnosisCodeableConcept,
    ReferenceBuilder? diagnosisReference,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ExplanationOfBenefitDiagnosisBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      sequence: sequence ?? this.sequence,
      diagnosisX: diagnosisX ??
          diagnosisCodeableConcept ??
          diagnosisReference ??
          this.diagnosisX,
      type: type ?? this.type,
      onAdmission: onAdmission ?? this.onAdmission,
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
    if (o is! ExplanationOfBenefitDiagnosisBuilder) {
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
      diagnosisX,
      o.diagnosisX,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      onAdmission,
      o.onAdmission,
    )) {
      return false;
    }
    return true;
  }
}

/// [ExplanationOfBenefitProcedureBuilder]
/// Procedures performed on the patient relevant to the billing items with
/// the claim.
class ExplanationOfBenefitProcedureBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ExplanationOfBenefitProcedureBuilder]

  ExplanationOfBenefitProcedureBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.sequence,
    this.type,
    this.date,
    ProcedureXExplanationOfBenefitProcedureBuilder? procedureX,
    CodeableConceptBuilder? procedureCodeableConcept,
    ReferenceBuilder? procedureReference,
    this.udi,
    super.disallowExtensions,
  })  : procedureX =
            procedureX ?? procedureCodeableConcept ?? procedureReference,
        super(
          objectPath: 'ExplanationOfBenefit.procedure',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ExplanationOfBenefitProcedureBuilder.empty() =>
      ExplanationOfBenefitProcedureBuilder(
        sequence: FhirPositiveIntBuilder.empty(),
        procedureX: CodeableConceptBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitProcedureBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit.procedure';
    return ExplanationOfBenefitProcedureBuilder(
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
      date: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'date',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.date',
      ),
      procedureX: JsonParser.parsePolymorphic<
          ProcedureXExplanationOfBenefitProcedureBuilder>(
        json,
        {
          'procedureCodeableConcept': CodeableConceptBuilder.fromJson,
          'procedureReference': ReferenceBuilder.fromJson,
        },
        objectPath,
      ),
      udi: (json['udi'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.udi',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ExplanationOfBenefitProcedureBuilder]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefitProcedureBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefitProcedureBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefitProcedureBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefitProcedureBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefitProcedureBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitProcedureBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefitProcedureBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ExplanationOfBenefitProcedure';

  /// [sequence]
  /// A number to uniquely identify procedure entries.
  FhirPositiveIntBuilder? sequence;

  /// [type]
  /// When the condition was observed or the relative ranking.
  List<CodeableConceptBuilder>? type;

  /// [date]
  /// Date and optionally time the procedure was performed.
  FhirDateTimeBuilder? date;

  /// [procedureX]
  /// The code or reference to a Procedure resource which identifies the
  /// clinical intervention performed.
  ProcedureXExplanationOfBenefitProcedureBuilder? procedureX;

  /// Getter for [procedureCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get procedureCodeableConcept =>
      procedureX?.isAs<CodeableConceptBuilder>();

  /// Getter for [procedureReference] as a ReferenceBuilder
  ReferenceBuilder? get procedureReference =>
      procedureX?.isAs<ReferenceBuilder>();

  /// [udi]
  /// Unique Device Identifiers associated with this line item.
  List<ReferenceBuilder>? udi;

  /// Converts a [ExplanationOfBenefitProcedureBuilder]
  /// to [ExplanationOfBenefitProcedure]
  @override
  ExplanationOfBenefitProcedure build() =>
      ExplanationOfBenefitProcedure.fromJson(toJson());

  /// Converts a [ExplanationOfBenefitProcedureBuilder]
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
    addField('type', type);
    addField('date', date);
    if (procedureX != null) {
      final fhirType = procedureX!.fhirType;
      addField('procedure${fhirType.capitalizeFirstLetter()}', procedureX);
    }

    addField('udi', udi);
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
      'type',
      'date',
      'procedureX',
      'udi',
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
      case 'type':
        if (type != null) {
          fields.addAll(type!);
        }
      case 'date':
        if (date != null) {
          fields.add(date!);
        }
      case 'procedure':
        if (procedureX != null) {
          fields.add(procedureX!);
        }
      case 'procedureX':
        if (procedureX != null) {
          fields.add(procedureX!);
        }
      case 'procedureCodeableConcept':
        if (procedureX is CodeableConceptBuilder) {
          fields.add(procedureX!);
        }
      case 'procedureReference':
        if (procedureX is ReferenceBuilder) {
          fields.add(procedureX!);
        }
      case 'udi':
        if (udi != null) {
          fields.addAll(udi!);
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
      case 'date':
        {
          if (child is FhirDateTimeBuilder) {
            date = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
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
      case 'procedure':
      case 'procedureX':
        {
          if (child is ProcedureXExplanationOfBenefitProcedureBuilder) {
            procedureX = child;
            return;
          } else {
            if (child is CodeableConceptBuilder) {
              procedureX = child;
              return;
            }
            if (child is ReferenceBuilder) {
              procedureX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'procedureCodeableConcept':
        {
          if (child is CodeableConceptBuilder) {
            procedureX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'procedureReference':
        {
          if (child is ReferenceBuilder) {
            procedureX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'udi':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            udi = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            udi = [
              ...(udi ?? []),
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
      case 'sequence':
        return ['FhirPositiveIntBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'date':
        return ['FhirDateTimeBuilder'];
      case 'procedure':
      case 'procedureX':
        return [
          'CodeableConceptBuilder',
          'ReferenceBuilder',
        ];
      case 'procedureCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'procedureReference':
        return ['ReferenceBuilder'];
      case 'udi':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExplanationOfBenefitProcedureBuilder]
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
      case 'type':
        {
          type = <CodeableConceptBuilder>[];
          return;
        }
      case 'date':
        {
          date = FhirDateTimeBuilder.empty();
          return;
        }
      case 'procedure':
      case 'procedureX':
      case 'procedureCodeableConcept':
        {
          procedureX = CodeableConceptBuilder.empty();
          return;
        }
      case 'procedureReference':
        {
          procedureX = ReferenceBuilder.empty();
          return;
        }
      case 'udi':
        {
          udi = <ReferenceBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ExplanationOfBenefitProcedureBuilder clone() => throw UnimplementedError();
  @override
  ExplanationOfBenefitProcedureBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirPositiveIntBuilder? sequence,
    List<CodeableConceptBuilder>? type,
    FhirDateTimeBuilder? date,
    ProcedureXExplanationOfBenefitProcedureBuilder? procedureX,
    List<ReferenceBuilder>? udi,
    CodeableConceptBuilder? procedureCodeableConcept,
    ReferenceBuilder? procedureReference,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ExplanationOfBenefitProcedureBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      sequence: sequence ?? this.sequence,
      type: type ?? this.type,
      date: date ?? this.date,
      procedureX: procedureX ??
          procedureCodeableConcept ??
          procedureReference ??
          this.procedureX,
      udi: udi ?? this.udi,
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
    if (o is! ExplanationOfBenefitProcedureBuilder) {
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
    if (!listEquals<CodeableConceptBuilder>(
      type,
      o.type,
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
      procedureX,
      o.procedureX,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      udi,
      o.udi,
    )) {
      return false;
    }
    return true;
  }
}

/// [ExplanationOfBenefitInsuranceBuilder]
/// Financial instruments for reimbursement for the health care products
/// and services specified on the claim.
class ExplanationOfBenefitInsuranceBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ExplanationOfBenefitInsuranceBuilder]

  ExplanationOfBenefitInsuranceBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.focal,
    this.coverage,
    this.preAuthRef,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ExplanationOfBenefit.insurance',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ExplanationOfBenefitInsuranceBuilder.empty() =>
      ExplanationOfBenefitInsuranceBuilder(
        focal: FhirBooleanBuilder.empty(),
        coverage: ReferenceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitInsuranceBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit.insurance';
    return ExplanationOfBenefitInsuranceBuilder(
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
      preAuthRef: JsonParser.parsePrimitiveList<FhirStringBuilder>(
        json,
        'preAuthRef',
        FhirStringBuilder.fromJson,
        '$objectPath.preAuthRef',
      ),
    );
  }

  /// Deserialize [ExplanationOfBenefitInsuranceBuilder]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefitInsuranceBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefitInsuranceBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefitInsuranceBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefitInsuranceBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefitInsuranceBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitInsuranceBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefitInsuranceBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ExplanationOfBenefitInsurance';

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

  /// [preAuthRef]
  /// Reference numbers previously provided by the insurer to the provider to
  /// be quoted on subsequent claims containing services or products related
  /// to the prior authorization.
  List<FhirStringBuilder>? preAuthRef;

  /// Converts a [ExplanationOfBenefitInsuranceBuilder]
  /// to [ExplanationOfBenefitInsurance]
  @override
  ExplanationOfBenefitInsurance build() =>
      ExplanationOfBenefitInsurance.fromJson(toJson());

  /// Converts a [ExplanationOfBenefitInsuranceBuilder]
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
    addField('focal', focal);
    addField('coverage', coverage);
    addField('preAuthRef', preAuthRef);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'focal',
      'coverage',
      'preAuthRef',
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
      case 'focal':
        if (focal != null) {
          fields.add(focal!);
        }
      case 'coverage':
        if (coverage != null) {
          fields.add(coverage!);
        }
      case 'preAuthRef':
        if (preAuthRef != null) {
          fields.addAll(preAuthRef!);
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
      case 'preAuthRef':
        {
          if (child is List<FhirStringBuilder>) {
            // Replace or create new list
            preAuthRef = child;
            return;
          } else if (child is FhirStringBuilder) {
            // Add single element to existing list or create new list
            preAuthRef = [
              ...(preAuthRef ?? []),
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
              preAuthRef = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                preAuthRef = [
                  ...(preAuthRef ?? []),
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
      case 'focal':
        return ['FhirBooleanBuilder'];
      case 'coverage':
        return ['ReferenceBuilder'];
      case 'preAuthRef':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExplanationOfBenefitInsuranceBuilder]
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
      case 'preAuthRef':
        {
          preAuthRef = <FhirStringBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ExplanationOfBenefitInsuranceBuilder clone() => throw UnimplementedError();
  @override
  ExplanationOfBenefitInsuranceBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirBooleanBuilder? focal,
    ReferenceBuilder? coverage,
    List<FhirStringBuilder>? preAuthRef,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ExplanationOfBenefitInsuranceBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      focal: focal ?? this.focal,
      coverage: coverage ?? this.coverage,
      preAuthRef: preAuthRef ?? this.preAuthRef,
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
    if (o is! ExplanationOfBenefitInsuranceBuilder) {
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
    if (!listEquals<FhirStringBuilder>(
      preAuthRef,
      o.preAuthRef,
    )) {
      return false;
    }
    return true;
  }
}

/// [ExplanationOfBenefitAccidentBuilder]
/// Details of a accident which resulted in injuries which required the
/// products and services listed in the claim.
class ExplanationOfBenefitAccidentBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ExplanationOfBenefitAccidentBuilder]

  ExplanationOfBenefitAccidentBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.date,
    this.type,
    LocationXExplanationOfBenefitAccidentBuilder? locationX,
    AddressBuilder? locationAddress,
    ReferenceBuilder? locationReference,
    super.disallowExtensions,
  })  : locationX = locationX ?? locationAddress ?? locationReference,
        super(
          objectPath: 'ExplanationOfBenefit.accident',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ExplanationOfBenefitAccidentBuilder.empty() =>
      ExplanationOfBenefitAccidentBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitAccidentBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit.accident';
    return ExplanationOfBenefitAccidentBuilder(
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
      date: JsonParser.parsePrimitive<FhirDateBuilder>(
        json,
        'date',
        FhirDateBuilder.fromJson,
        '$objectPath.date',
      ),
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      locationX: JsonParser.parsePolymorphic<
          LocationXExplanationOfBenefitAccidentBuilder>(
        json,
        {
          'locationAddress': AddressBuilder.fromJson,
          'locationReference': ReferenceBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [ExplanationOfBenefitAccidentBuilder]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefitAccidentBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefitAccidentBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefitAccidentBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefitAccidentBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefitAccidentBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitAccidentBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefitAccidentBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ExplanationOfBenefitAccident';

  /// [date]
  /// Date of an accident event related to the products and services
  /// contained in the claim.
  FhirDateBuilder? date;

  /// [type]
  /// The type or context of the accident event for the purposes of selection
  /// of potential insurance coverages and determination of coordination
  /// between insurers.
  CodeableConceptBuilder? type;

  /// [locationX]
  /// The physical location of the accident event.
  LocationXExplanationOfBenefitAccidentBuilder? locationX;

  /// Getter for [locationAddress] as a AddressBuilder
  AddressBuilder? get locationAddress => locationX?.isAs<AddressBuilder>();

  /// Getter for [locationReference] as a ReferenceBuilder
  ReferenceBuilder? get locationReference =>
      locationX?.isAs<ReferenceBuilder>();

  /// Converts a [ExplanationOfBenefitAccidentBuilder]
  /// to [ExplanationOfBenefitAccident]
  @override
  ExplanationOfBenefitAccident build() =>
      ExplanationOfBenefitAccident.fromJson(toJson());

  /// Converts a [ExplanationOfBenefitAccidentBuilder]
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
    addField('date', date);
    addField('type', type);
    if (locationX != null) {
      final fhirType = locationX!.fhirType;
      addField('location${fhirType.capitalizeFirstLetter()}', locationX);
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
      'date',
      'type',
      'locationX',
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
      case 'date':
        if (date != null) {
          fields.add(date!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'location':
        if (locationX != null) {
          fields.add(locationX!);
        }
      case 'locationX':
        if (locationX != null) {
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
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'location':
      case 'locationX':
        {
          if (child is LocationXExplanationOfBenefitAccidentBuilder) {
            locationX = child;
            return;
          } else {
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
      case 'date':
        return ['FhirDateBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'location':
      case 'locationX':
        return [
          'AddressBuilder',
          'ReferenceBuilder',
        ];
      case 'locationAddress':
        return ['AddressBuilder'];
      case 'locationReference':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExplanationOfBenefitAccidentBuilder]
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
      case 'date':
        {
          date = FhirDateBuilder.empty();
          return;
        }
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'location':
      case 'locationX':
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
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ExplanationOfBenefitAccidentBuilder clone() => throw UnimplementedError();
  @override
  ExplanationOfBenefitAccidentBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirDateBuilder? date,
    CodeableConceptBuilder? type,
    LocationXExplanationOfBenefitAccidentBuilder? locationX,
    AddressBuilder? locationAddress,
    ReferenceBuilder? locationReference,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ExplanationOfBenefitAccidentBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      date: date ?? this.date,
      type: type ?? this.type,
      locationX:
          locationX ?? locationAddress ?? locationReference ?? this.locationX,
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
    if (o is! ExplanationOfBenefitAccidentBuilder) {
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
      date,
      o.date,
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
      locationX,
      o.locationX,
    )) {
      return false;
    }
    return true;
  }
}

/// [ExplanationOfBenefitItemBuilder]
/// A claim line. Either a simple (a product or service) or a 'group' of
/// details which can also be a simple items or groups of sub-details.
class ExplanationOfBenefitItemBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ExplanationOfBenefitItemBuilder]

  ExplanationOfBenefitItemBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.sequence,
    this.careTeamSequence,
    this.diagnosisSequence,
    this.procedureSequence,
    this.informationSequence,
    this.traceNumber,
    this.revenue,
    this.category,
    this.productOrService,
    this.productOrServiceEnd,
    this.request,
    this.modifier,
    this.programCode,
    ServicedXExplanationOfBenefitItemBuilder? servicedX,
    FhirDateBuilder? servicedDate,
    PeriodBuilder? servicedPeriod,
    LocationXExplanationOfBenefitItemBuilder? locationX,
    CodeableConceptBuilder? locationCodeableConcept,
    AddressBuilder? locationAddress,
    ReferenceBuilder? locationReference,
    this.patientPaid,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.tax,
    this.net,
    this.udi,
    this.bodySite,
    this.encounter,
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
          objectPath: 'ExplanationOfBenefit.item',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ExplanationOfBenefitItemBuilder.empty() =>
      ExplanationOfBenefitItemBuilder(
        sequence: FhirPositiveIntBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitItemBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit.item';
    return ExplanationOfBenefitItemBuilder(
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
      careTeamSequence: JsonParser.parsePrimitiveList<FhirPositiveIntBuilder>(
        json,
        'careTeamSequence',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.careTeamSequence',
      ),
      diagnosisSequence: JsonParser.parsePrimitiveList<FhirPositiveIntBuilder>(
        json,
        'diagnosisSequence',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.diagnosisSequence',
      ),
      procedureSequence: JsonParser.parsePrimitiveList<FhirPositiveIntBuilder>(
        json,
        'procedureSequence',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.procedureSequence',
      ),
      informationSequence:
          JsonParser.parsePrimitiveList<FhirPositiveIntBuilder>(
        json,
        'informationSequence',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.informationSequence',
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
      revenue: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'revenue',
        CodeableConceptBuilder.fromJson,
        '$objectPath.revenue',
      ),
      category: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'category',
        CodeableConceptBuilder.fromJson,
        '$objectPath.category',
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
          JsonParser.parsePolymorphic<ServicedXExplanationOfBenefitItemBuilder>(
        json,
        {
          'servicedDate': FhirDateBuilder.fromJson,
          'servicedPeriod': PeriodBuilder.fromJson,
        },
        objectPath,
      ),
      locationX:
          JsonParser.parsePolymorphic<LocationXExplanationOfBenefitItemBuilder>(
        json,
        {
          'locationCodeableConcept': CodeableConceptBuilder.fromJson,
          'locationAddress': AddressBuilder.fromJson,
          'locationReference': ReferenceBuilder.fromJson,
        },
        objectPath,
      ),
      patientPaid: JsonParser.parseObject<MoneyBuilder>(
        json,
        'patientPaid',
        MoneyBuilder.fromJson,
        '$objectPath.patientPaid',
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
      udi: (json['udi'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.udi',
              },
            ),
          )
          .toList(),
      bodySite: (json['bodySite'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitBodySiteBuilder>(
            (v) => ExplanationOfBenefitBodySiteBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.bodySite',
              },
            ),
          )
          .toList(),
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
      noteNumber: JsonParser.parsePrimitiveList<FhirPositiveIntBuilder>(
        json,
        'noteNumber',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.noteNumber',
      ),
      reviewOutcome:
          JsonParser.parseObject<ExplanationOfBenefitReviewOutcomeBuilder>(
        json,
        'reviewOutcome',
        ExplanationOfBenefitReviewOutcomeBuilder.fromJson,
        '$objectPath.reviewOutcome',
      ),
      adjudication: (json['adjudication'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitAdjudicationBuilder>(
            (v) => ExplanationOfBenefitAdjudicationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.adjudication',
              },
            ),
          )
          .toList(),
      detail: (json['detail'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitDetailBuilder>(
            (v) => ExplanationOfBenefitDetailBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.detail',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ExplanationOfBenefitItemBuilder]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefitItemBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefitItemBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefitItemBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefitItemBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefitItemBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitItemBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefitItemBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ExplanationOfBenefitItem';

  /// [sequence]
  /// A number to uniquely identify item entries.
  FhirPositiveIntBuilder? sequence;

  /// [careTeamSequence]
  /// Care team members related to this service or product.
  List<FhirPositiveIntBuilder>? careTeamSequence;

  /// [diagnosisSequence]
  /// Diagnoses applicable for this service or product.
  List<FhirPositiveIntBuilder>? diagnosisSequence;

  /// [procedureSequence]
  /// Procedures applicable for this service or product.
  List<FhirPositiveIntBuilder>? procedureSequence;

  /// [informationSequence]
  /// Exceptions, special conditions and supporting information applicable
  /// for this service or product.
  List<FhirPositiveIntBuilder>? informationSequence;

  /// [traceNumber]
  /// Trace number for tracking purposes. May be defined at the jurisdiction
  /// level or between trading partners.
  List<IdentifierBuilder>? traceNumber;

  /// [revenue]
  /// The type of revenue or cost center providing the product and/or
  /// service.
  CodeableConceptBuilder? revenue;

  /// [category]
  /// Code to identify the general type of benefits under which products and
  /// services are provided.
  CodeableConceptBuilder? category;

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
  ServicedXExplanationOfBenefitItemBuilder? servicedX;

  /// Getter for [servicedDate] as a FhirDateBuilder
  FhirDateBuilder? get servicedDate => servicedX?.isAs<FhirDateBuilder>();

  /// Getter for [servicedPeriod] as a PeriodBuilder
  PeriodBuilder? get servicedPeriod => servicedX?.isAs<PeriodBuilder>();

  /// [locationX]
  /// Where the product or service was provided.
  LocationXExplanationOfBenefitItemBuilder? locationX;

  /// Getter for [locationCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get locationCodeableConcept =>
      locationX?.isAs<CodeableConceptBuilder>();

  /// Getter for [locationAddress] as a AddressBuilder
  AddressBuilder? get locationAddress => locationX?.isAs<AddressBuilder>();

  /// Getter for [locationReference] as a ReferenceBuilder
  ReferenceBuilder? get locationReference =>
      locationX?.isAs<ReferenceBuilder>();

  /// [patientPaid]
  /// The amount paid by the patient, in total at the claim claim level or
  /// specifically for the item and detail level, to the provider for goods
  /// and services.
  MoneyBuilder? patientPaid;

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
  /// The total amount claimed for the group (if a grouper) or the line item.
  /// Net = unit price * quantity * factor.
  MoneyBuilder? net;

  /// [udi]
  /// Unique Device Identifiers associated with this line item.
  List<ReferenceBuilder>? udi;

  /// [bodySite]
  /// Physical location where the service is performed or applies.
  List<ExplanationOfBenefitBodySiteBuilder>? bodySite;

  /// [encounter]
  /// Healthcare encounters related to this claim.
  List<ReferenceBuilder>? encounter;

  /// [noteNumber]
  /// The numbers associated with notes below which apply to the adjudication
  /// of this item.
  List<FhirPositiveIntBuilder>? noteNumber;

  /// [reviewOutcome]
  /// The high-level results of the adjudication if adjudication has been
  /// performed.
  ExplanationOfBenefitReviewOutcomeBuilder? reviewOutcome;

  /// [adjudication]
  /// If this item is a group then the values here are a summary of the
  /// adjudication of the detail items. If this item is a simple product or
  /// service then this is the result of the adjudication of this item.
  List<ExplanationOfBenefitAdjudicationBuilder>? adjudication;

  /// [detail]
  /// Second-tier of goods and services.
  List<ExplanationOfBenefitDetailBuilder>? detail;

  /// Converts a [ExplanationOfBenefitItemBuilder]
  /// to [ExplanationOfBenefitItem]
  @override
  ExplanationOfBenefitItem build() =>
      ExplanationOfBenefitItem.fromJson(toJson());

  /// Converts a [ExplanationOfBenefitItemBuilder]
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
    addField('careTeamSequence', careTeamSequence);
    addField('diagnosisSequence', diagnosisSequence);
    addField('procedureSequence', procedureSequence);
    addField('informationSequence', informationSequence);
    addField('traceNumber', traceNumber);
    addField('revenue', revenue);
    addField('category', category);
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

    addField('patientPaid', patientPaid);
    addField('quantity', quantity);
    addField('unitPrice', unitPrice);
    addField('factor', factor);
    addField('tax', tax);
    addField('net', net);
    addField('udi', udi);
    addField('bodySite', bodySite);
    addField('encounter', encounter);
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
      'sequence',
      'careTeamSequence',
      'diagnosisSequence',
      'procedureSequence',
      'informationSequence',
      'traceNumber',
      'revenue',
      'category',
      'productOrService',
      'productOrServiceEnd',
      'request',
      'modifier',
      'programCode',
      'servicedX',
      'locationX',
      'patientPaid',
      'quantity',
      'unitPrice',
      'factor',
      'tax',
      'net',
      'udi',
      'bodySite',
      'encounter',
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
      case 'sequence':
        if (sequence != null) {
          fields.add(sequence!);
        }
      case 'careTeamSequence':
        if (careTeamSequence != null) {
          fields.addAll(careTeamSequence!);
        }
      case 'diagnosisSequence':
        if (diagnosisSequence != null) {
          fields.addAll(diagnosisSequence!);
        }
      case 'procedureSequence':
        if (procedureSequence != null) {
          fields.addAll(procedureSequence!);
        }
      case 'informationSequence':
        if (informationSequence != null) {
          fields.addAll(informationSequence!);
        }
      case 'traceNumber':
        if (traceNumber != null) {
          fields.addAll(traceNumber!);
        }
      case 'revenue':
        if (revenue != null) {
          fields.add(revenue!);
        }
      case 'category':
        if (category != null) {
          fields.add(category!);
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
      case 'patientPaid':
        if (patientPaid != null) {
          fields.add(patientPaid!);
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
      case 'udi':
        if (udi != null) {
          fields.addAll(udi!);
        }
      case 'bodySite':
        if (bodySite != null) {
          fields.addAll(bodySite!);
        }
      case 'encounter':
        if (encounter != null) {
          fields.addAll(encounter!);
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
      case 'careTeamSequence':
        {
          if (child is List<FhirPositiveIntBuilder>) {
            // Replace or create new list
            careTeamSequence = child;
            return;
          } else if (child is FhirPositiveIntBuilder) {
            // Add single element to existing list or create new list
            careTeamSequence = [
              ...(careTeamSequence ?? []),
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
              careTeamSequence = convertedList;
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
                  careTeamSequence = [
                    ...(careTeamSequence ?? []),
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
      case 'diagnosisSequence':
        {
          if (child is List<FhirPositiveIntBuilder>) {
            // Replace or create new list
            diagnosisSequence = child;
            return;
          } else if (child is FhirPositiveIntBuilder) {
            // Add single element to existing list or create new list
            diagnosisSequence = [
              ...(diagnosisSequence ?? []),
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
              diagnosisSequence = convertedList;
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
                  diagnosisSequence = [
                    ...(diagnosisSequence ?? []),
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
      case 'procedureSequence':
        {
          if (child is List<FhirPositiveIntBuilder>) {
            // Replace or create new list
            procedureSequence = child;
            return;
          } else if (child is FhirPositiveIntBuilder) {
            // Add single element to existing list or create new list
            procedureSequence = [
              ...(procedureSequence ?? []),
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
              procedureSequence = convertedList;
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
                  procedureSequence = [
                    ...(procedureSequence ?? []),
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
      case 'informationSequence':
        {
          if (child is List<FhirPositiveIntBuilder>) {
            // Replace or create new list
            informationSequence = child;
            return;
          } else if (child is FhirPositiveIntBuilder) {
            // Add single element to existing list or create new list
            informationSequence = [
              ...(informationSequence ?? []),
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
              informationSequence = convertedList;
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
                  informationSequence = [
                    ...(informationSequence ?? []),
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
      case 'revenue':
        {
          if (child is CodeableConceptBuilder) {
            revenue = child;
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
          if (child is ServicedXExplanationOfBenefitItemBuilder) {
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
          if (child is LocationXExplanationOfBenefitItemBuilder) {
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
      case 'patientPaid':
        {
          if (child is MoneyBuilder) {
            patientPaid = child;
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
      case 'udi':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            udi = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            udi = [
              ...(udi ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'bodySite':
        {
          if (child is List<ExplanationOfBenefitBodySiteBuilder>) {
            // Replace or create new list
            bodySite = child;
            return;
          } else if (child is ExplanationOfBenefitBodySiteBuilder) {
            // Add single element to existing list or create new list
            bodySite = [
              ...(bodySite ?? []),
              child,
            ];
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
          if (child is ExplanationOfBenefitReviewOutcomeBuilder) {
            reviewOutcome = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'adjudication':
        {
          if (child is List<ExplanationOfBenefitAdjudicationBuilder>) {
            // Replace or create new list
            adjudication = child;
            return;
          } else if (child is ExplanationOfBenefitAdjudicationBuilder) {
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
          if (child is List<ExplanationOfBenefitDetailBuilder>) {
            // Replace or create new list
            detail = child;
            return;
          } else if (child is ExplanationOfBenefitDetailBuilder) {
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
      case 'sequence':
        return ['FhirPositiveIntBuilder'];
      case 'careTeamSequence':
        return ['FhirPositiveIntBuilder'];
      case 'diagnosisSequence':
        return ['FhirPositiveIntBuilder'];
      case 'procedureSequence':
        return ['FhirPositiveIntBuilder'];
      case 'informationSequence':
        return ['FhirPositiveIntBuilder'];
      case 'traceNumber':
        return ['IdentifierBuilder'];
      case 'revenue':
        return ['CodeableConceptBuilder'];
      case 'category':
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
      case 'patientPaid':
        return ['MoneyBuilder'];
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
      case 'udi':
        return ['ReferenceBuilder'];
      case 'bodySite':
        return ['ExplanationOfBenefitBodySiteBuilder'];
      case 'encounter':
        return ['ReferenceBuilder'];
      case 'noteNumber':
        return ['FhirPositiveIntBuilder'];
      case 'reviewOutcome':
        return ['ExplanationOfBenefitReviewOutcomeBuilder'];
      case 'adjudication':
        return ['ExplanationOfBenefitAdjudicationBuilder'];
      case 'detail':
        return ['ExplanationOfBenefitDetailBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExplanationOfBenefitItemBuilder]
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
      case 'careTeamSequence':
        {
          careTeamSequence = <FhirPositiveIntBuilder>[];
          return;
        }
      case 'diagnosisSequence':
        {
          diagnosisSequence = <FhirPositiveIntBuilder>[];
          return;
        }
      case 'procedureSequence':
        {
          procedureSequence = <FhirPositiveIntBuilder>[];
          return;
        }
      case 'informationSequence':
        {
          informationSequence = <FhirPositiveIntBuilder>[];
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
      case 'category':
        {
          category = CodeableConceptBuilder.empty();
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
      case 'patientPaid':
        {
          patientPaid = MoneyBuilder.empty();
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
      case 'udi':
        {
          udi = <ReferenceBuilder>[];
          return;
        }
      case 'bodySite':
        {
          bodySite = <ExplanationOfBenefitBodySiteBuilder>[];
          return;
        }
      case 'encounter':
        {
          encounter = <ReferenceBuilder>[];
          return;
        }
      case 'noteNumber':
        {
          noteNumber = <FhirPositiveIntBuilder>[];
          return;
        }
      case 'reviewOutcome':
        {
          reviewOutcome = ExplanationOfBenefitReviewOutcomeBuilder.empty();
          return;
        }
      case 'adjudication':
        {
          adjudication = <ExplanationOfBenefitAdjudicationBuilder>[];
          return;
        }
      case 'detail':
        {
          detail = <ExplanationOfBenefitDetailBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ExplanationOfBenefitItemBuilder clone() => throw UnimplementedError();
  @override
  ExplanationOfBenefitItemBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirPositiveIntBuilder? sequence,
    List<FhirPositiveIntBuilder>? careTeamSequence,
    List<FhirPositiveIntBuilder>? diagnosisSequence,
    List<FhirPositiveIntBuilder>? procedureSequence,
    List<FhirPositiveIntBuilder>? informationSequence,
    List<IdentifierBuilder>? traceNumber,
    CodeableConceptBuilder? revenue,
    CodeableConceptBuilder? category,
    CodeableConceptBuilder? productOrService,
    CodeableConceptBuilder? productOrServiceEnd,
    List<ReferenceBuilder>? request,
    List<CodeableConceptBuilder>? modifier,
    List<CodeableConceptBuilder>? programCode,
    ServicedXExplanationOfBenefitItemBuilder? servicedX,
    LocationXExplanationOfBenefitItemBuilder? locationX,
    MoneyBuilder? patientPaid,
    QuantityBuilder? quantity,
    MoneyBuilder? unitPrice,
    FhirDecimalBuilder? factor,
    MoneyBuilder? tax,
    MoneyBuilder? net,
    List<ReferenceBuilder>? udi,
    List<ExplanationOfBenefitBodySiteBuilder>? bodySite,
    List<ReferenceBuilder>? encounter,
    List<FhirPositiveIntBuilder>? noteNumber,
    ExplanationOfBenefitReviewOutcomeBuilder? reviewOutcome,
    List<ExplanationOfBenefitAdjudicationBuilder>? adjudication,
    List<ExplanationOfBenefitDetailBuilder>? detail,
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
    final newResult = ExplanationOfBenefitItemBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      sequence: sequence ?? this.sequence,
      careTeamSequence: careTeamSequence ?? this.careTeamSequence,
      diagnosisSequence: diagnosisSequence ?? this.diagnosisSequence,
      procedureSequence: procedureSequence ?? this.procedureSequence,
      informationSequence: informationSequence ?? this.informationSequence,
      traceNumber: traceNumber ?? this.traceNumber,
      revenue: revenue ?? this.revenue,
      category: category ?? this.category,
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
      patientPaid: patientPaid ?? this.patientPaid,
      quantity: quantity ?? this.quantity,
      unitPrice: unitPrice ?? this.unitPrice,
      factor: factor ?? this.factor,
      tax: tax ?? this.tax,
      net: net ?? this.net,
      udi: udi ?? this.udi,
      bodySite: bodySite ?? this.bodySite,
      encounter: encounter ?? this.encounter,
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
    if (o is! ExplanationOfBenefitItemBuilder) {
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
    if (!listEquals<FhirPositiveIntBuilder>(
      careTeamSequence,
      o.careTeamSequence,
    )) {
      return false;
    }
    if (!listEquals<FhirPositiveIntBuilder>(
      diagnosisSequence,
      o.diagnosisSequence,
    )) {
      return false;
    }
    if (!listEquals<FhirPositiveIntBuilder>(
      procedureSequence,
      o.procedureSequence,
    )) {
      return false;
    }
    if (!listEquals<FhirPositiveIntBuilder>(
      informationSequence,
      o.informationSequence,
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
      category,
      o.category,
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
      patientPaid,
      o.patientPaid,
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
    if (!listEquals<ReferenceBuilder>(
      udi,
      o.udi,
    )) {
      return false;
    }
    if (!listEquals<ExplanationOfBenefitBodySiteBuilder>(
      bodySite,
      o.bodySite,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      encounter,
      o.encounter,
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
    if (!listEquals<ExplanationOfBenefitAdjudicationBuilder>(
      adjudication,
      o.adjudication,
    )) {
      return false;
    }
    if (!listEquals<ExplanationOfBenefitDetailBuilder>(
      detail,
      o.detail,
    )) {
      return false;
    }
    return true;
  }
}

/// [ExplanationOfBenefitBodySiteBuilder]
/// Physical location where the service is performed or applies.
class ExplanationOfBenefitBodySiteBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ExplanationOfBenefitBodySiteBuilder]

  ExplanationOfBenefitBodySiteBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.site,
    this.subSite,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ExplanationOfBenefit.item.bodySite',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ExplanationOfBenefitBodySiteBuilder.empty() =>
      ExplanationOfBenefitBodySiteBuilder(
        site: <CodeableReferenceBuilder>[],
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitBodySiteBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit.item.bodySite';
    return ExplanationOfBenefitBodySiteBuilder(
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

  /// Deserialize [ExplanationOfBenefitBodySiteBuilder]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefitBodySiteBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefitBodySiteBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefitBodySiteBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefitBodySiteBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefitBodySiteBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitBodySiteBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefitBodySiteBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ExplanationOfBenefitBodySite';

  /// [site]
  /// Physical service site on the patient (limb, tooth, etc.).
  List<CodeableReferenceBuilder>? site;

  /// [subSite]
  /// A region or surface of the bodySite, e.g. limb region or tooth
  /// surface(s).
  List<CodeableConceptBuilder>? subSite;

  /// Converts a [ExplanationOfBenefitBodySiteBuilder]
  /// to [ExplanationOfBenefitBodySite]
  @override
  ExplanationOfBenefitBodySite build() =>
      ExplanationOfBenefitBodySite.fromJson(toJson());

  /// Converts a [ExplanationOfBenefitBodySiteBuilder]
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

  /// Creates a new [ExplanationOfBenefitBodySiteBuilder]
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
  ExplanationOfBenefitBodySiteBuilder clone() => throw UnimplementedError();
  @override
  ExplanationOfBenefitBodySiteBuilder copyWith({
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
    final newResult = ExplanationOfBenefitBodySiteBuilder(
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
    if (o is! ExplanationOfBenefitBodySiteBuilder) {
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

/// [ExplanationOfBenefitReviewOutcomeBuilder]
/// The high-level results of the adjudication if adjudication has been
/// performed.
class ExplanationOfBenefitReviewOutcomeBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ExplanationOfBenefitReviewOutcomeBuilder]

  ExplanationOfBenefitReviewOutcomeBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.decision,
    this.reason,
    this.preAuthRef,
    this.preAuthPeriod,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ExplanationOfBenefit.item.reviewOutcome',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ExplanationOfBenefitReviewOutcomeBuilder.empty() =>
      ExplanationOfBenefitReviewOutcomeBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitReviewOutcomeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit.item.reviewOutcome';
    return ExplanationOfBenefitReviewOutcomeBuilder(
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

  /// Deserialize [ExplanationOfBenefitReviewOutcomeBuilder]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefitReviewOutcomeBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefitReviewOutcomeBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefitReviewOutcomeBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefitReviewOutcomeBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefitReviewOutcomeBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitReviewOutcomeBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefitReviewOutcomeBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ExplanationOfBenefitReviewOutcome';

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

  /// Converts a [ExplanationOfBenefitReviewOutcomeBuilder]
  /// to [ExplanationOfBenefitReviewOutcome]
  @override
  ExplanationOfBenefitReviewOutcome build() =>
      ExplanationOfBenefitReviewOutcome.fromJson(toJson());

  /// Converts a [ExplanationOfBenefitReviewOutcomeBuilder]
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

  /// Creates a new [ExplanationOfBenefitReviewOutcomeBuilder]
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
  ExplanationOfBenefitReviewOutcomeBuilder clone() =>
      throw UnimplementedError();
  @override
  ExplanationOfBenefitReviewOutcomeBuilder copyWith({
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
    final newResult = ExplanationOfBenefitReviewOutcomeBuilder(
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
    if (o is! ExplanationOfBenefitReviewOutcomeBuilder) {
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

/// [ExplanationOfBenefitAdjudicationBuilder]
/// If this item is a group then the values here are a summary of the
/// adjudication of the detail items. If this item is a simple product or
/// service then this is the result of the adjudication of this item.
class ExplanationOfBenefitAdjudicationBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ExplanationOfBenefitAdjudicationBuilder]

  ExplanationOfBenefitAdjudicationBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.category,
    this.reason,
    this.amount,
    this.quantity,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ExplanationOfBenefit.item.adjudication',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ExplanationOfBenefitAdjudicationBuilder.empty() =>
      ExplanationOfBenefitAdjudicationBuilder(
        category: CodeableConceptBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitAdjudicationBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit.item.adjudication';
    return ExplanationOfBenefitAdjudicationBuilder(
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

  /// Deserialize [ExplanationOfBenefitAdjudicationBuilder]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefitAdjudicationBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefitAdjudicationBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefitAdjudicationBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefitAdjudicationBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefitAdjudicationBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitAdjudicationBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefitAdjudicationBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ExplanationOfBenefitAdjudication';

  /// [category]
  /// A code to indicate the information type of this adjudication record.
  /// Information types may include: the value submitted, maximum values or
  /// percentages allowed or payable under the plan, amounts that the patient
  /// is responsible for in-aggregate or pertaining to this item, amounts
  /// paid by other coverages, and the benefit payable for this item.
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

  /// Converts a [ExplanationOfBenefitAdjudicationBuilder]
  /// to [ExplanationOfBenefitAdjudication]
  @override
  ExplanationOfBenefitAdjudication build() =>
      ExplanationOfBenefitAdjudication.fromJson(toJson());

  /// Converts a [ExplanationOfBenefitAdjudicationBuilder]
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

  /// Creates a new [ExplanationOfBenefitAdjudicationBuilder]
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
  ExplanationOfBenefitAdjudicationBuilder clone() => throw UnimplementedError();
  @override
  ExplanationOfBenefitAdjudicationBuilder copyWith({
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
    final newResult = ExplanationOfBenefitAdjudicationBuilder(
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
    if (o is! ExplanationOfBenefitAdjudicationBuilder) {
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

/// [ExplanationOfBenefitDetailBuilder]
/// Second-tier of goods and services.
class ExplanationOfBenefitDetailBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ExplanationOfBenefitDetailBuilder]

  ExplanationOfBenefitDetailBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.sequence,
    this.traceNumber,
    this.revenue,
    this.category,
    this.productOrService,
    this.productOrServiceEnd,
    this.modifier,
    this.programCode,
    this.patientPaid,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.tax,
    this.net,
    this.udi,
    this.noteNumber,
    this.reviewOutcome,
    this.adjudication,
    this.subDetail,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ExplanationOfBenefit.item.detail',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ExplanationOfBenefitDetailBuilder.empty() =>
      ExplanationOfBenefitDetailBuilder(
        sequence: FhirPositiveIntBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitDetailBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit.item.detail';
    return ExplanationOfBenefitDetailBuilder(
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
      category: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'category',
        CodeableConceptBuilder.fromJson,
        '$objectPath.category',
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
      patientPaid: JsonParser.parseObject<MoneyBuilder>(
        json,
        'patientPaid',
        MoneyBuilder.fromJson,
        '$objectPath.patientPaid',
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
      udi: (json['udi'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.udi',
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
      reviewOutcome:
          JsonParser.parseObject<ExplanationOfBenefitReviewOutcomeBuilder>(
        json,
        'reviewOutcome',
        ExplanationOfBenefitReviewOutcomeBuilder.fromJson,
        '$objectPath.reviewOutcome',
      ),
      adjudication: (json['adjudication'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitAdjudicationBuilder>(
            (v) => ExplanationOfBenefitAdjudicationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.adjudication',
              },
            ),
          )
          .toList(),
      subDetail: (json['subDetail'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitSubDetailBuilder>(
            (v) => ExplanationOfBenefitSubDetailBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.subDetail',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ExplanationOfBenefitDetailBuilder]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefitDetailBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefitDetailBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefitDetailBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefitDetailBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefitDetailBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitDetailBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefitDetailBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ExplanationOfBenefitDetail';

  /// [sequence]
  /// A claim detail line. Either a simple (a product or service) or a
  /// 'group' of sub-details which are simple items.
  FhirPositiveIntBuilder? sequence;

  /// [traceNumber]
  /// Trace number for tracking purposes. May be defined at the jurisdiction
  /// level or between trading partners.
  List<IdentifierBuilder>? traceNumber;

  /// [revenue]
  /// The type of revenue or cost center providing the product and/or
  /// service.
  CodeableConceptBuilder? revenue;

  /// [category]
  /// Code to identify the general type of benefits under which products and
  /// services are provided.
  CodeableConceptBuilder? category;

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

  /// [programCode]
  /// Identifies the program under which this may be recovered.
  List<CodeableConceptBuilder>? programCode;

  /// [patientPaid]
  /// The amount paid by the patient, in total at the claim claim level or
  /// specifically for the item and detail level, to the provider for goods
  /// and services.
  MoneyBuilder? patientPaid;

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
  /// The total amount claimed for the group (if a grouper) or the line
  /// item.detail. Net = unit price * quantity * factor.
  MoneyBuilder? net;

  /// [udi]
  /// Unique Device Identifiers associated with this line item.
  List<ReferenceBuilder>? udi;

  /// [noteNumber]
  /// The numbers associated with notes below which apply to the adjudication
  /// of this item.
  List<FhirPositiveIntBuilder>? noteNumber;

  /// [reviewOutcome]
  /// The high-level results of the adjudication if adjudication has been
  /// performed.
  ExplanationOfBenefitReviewOutcomeBuilder? reviewOutcome;

  /// [adjudication]
  /// The adjudication results.
  List<ExplanationOfBenefitAdjudicationBuilder>? adjudication;

  /// [subDetail]
  /// Third-tier of goods and services.
  List<ExplanationOfBenefitSubDetailBuilder>? subDetail;

  /// Converts a [ExplanationOfBenefitDetailBuilder]
  /// to [ExplanationOfBenefitDetail]
  @override
  ExplanationOfBenefitDetail build() =>
      ExplanationOfBenefitDetail.fromJson(toJson());

  /// Converts a [ExplanationOfBenefitDetailBuilder]
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
    addField('traceNumber', traceNumber);
    addField('revenue', revenue);
    addField('category', category);
    addField('productOrService', productOrService);
    addField('productOrServiceEnd', productOrServiceEnd);
    addField('modifier', modifier);
    addField('programCode', programCode);
    addField('patientPaid', patientPaid);
    addField('quantity', quantity);
    addField('unitPrice', unitPrice);
    addField('factor', factor);
    addField('tax', tax);
    addField('net', net);
    addField('udi', udi);
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
      'sequence',
      'traceNumber',
      'revenue',
      'category',
      'productOrService',
      'productOrServiceEnd',
      'modifier',
      'programCode',
      'patientPaid',
      'quantity',
      'unitPrice',
      'factor',
      'tax',
      'net',
      'udi',
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
      case 'sequence':
        if (sequence != null) {
          fields.add(sequence!);
        }
      case 'traceNumber':
        if (traceNumber != null) {
          fields.addAll(traceNumber!);
        }
      case 'revenue':
        if (revenue != null) {
          fields.add(revenue!);
        }
      case 'category':
        if (category != null) {
          fields.add(category!);
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
      case 'programCode':
        if (programCode != null) {
          fields.addAll(programCode!);
        }
      case 'patientPaid':
        if (patientPaid != null) {
          fields.add(patientPaid!);
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
      case 'udi':
        if (udi != null) {
          fields.addAll(udi!);
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
      case 'category':
        {
          if (child is CodeableConceptBuilder) {
            category = child;
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
      case 'patientPaid':
        {
          if (child is MoneyBuilder) {
            patientPaid = child;
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
      case 'udi':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            udi = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            udi = [
              ...(udi ?? []),
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
          if (child is ExplanationOfBenefitReviewOutcomeBuilder) {
            reviewOutcome = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'adjudication':
        {
          if (child is List<ExplanationOfBenefitAdjudicationBuilder>) {
            // Replace or create new list
            adjudication = child;
            return;
          } else if (child is ExplanationOfBenefitAdjudicationBuilder) {
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
          if (child is List<ExplanationOfBenefitSubDetailBuilder>) {
            // Replace or create new list
            subDetail = child;
            return;
          } else if (child is ExplanationOfBenefitSubDetailBuilder) {
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
      case 'sequence':
        return ['FhirPositiveIntBuilder'];
      case 'traceNumber':
        return ['IdentifierBuilder'];
      case 'revenue':
        return ['CodeableConceptBuilder'];
      case 'category':
        return ['CodeableConceptBuilder'];
      case 'productOrService':
        return ['CodeableConceptBuilder'];
      case 'productOrServiceEnd':
        return ['CodeableConceptBuilder'];
      case 'modifier':
        return ['CodeableConceptBuilder'];
      case 'programCode':
        return ['CodeableConceptBuilder'];
      case 'patientPaid':
        return ['MoneyBuilder'];
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
      case 'udi':
        return ['ReferenceBuilder'];
      case 'noteNumber':
        return ['FhirPositiveIntBuilder'];
      case 'reviewOutcome':
        return ['ExplanationOfBenefitReviewOutcomeBuilder'];
      case 'adjudication':
        return ['ExplanationOfBenefitAdjudicationBuilder'];
      case 'subDetail':
        return ['ExplanationOfBenefitSubDetailBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExplanationOfBenefitDetailBuilder]
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
      case 'category':
        {
          category = CodeableConceptBuilder.empty();
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
      case 'programCode':
        {
          programCode = <CodeableConceptBuilder>[];
          return;
        }
      case 'patientPaid':
        {
          patientPaid = MoneyBuilder.empty();
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
      case 'udi':
        {
          udi = <ReferenceBuilder>[];
          return;
        }
      case 'noteNumber':
        {
          noteNumber = <FhirPositiveIntBuilder>[];
          return;
        }
      case 'reviewOutcome':
        {
          reviewOutcome = ExplanationOfBenefitReviewOutcomeBuilder.empty();
          return;
        }
      case 'adjudication':
        {
          adjudication = <ExplanationOfBenefitAdjudicationBuilder>[];
          return;
        }
      case 'subDetail':
        {
          subDetail = <ExplanationOfBenefitSubDetailBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ExplanationOfBenefitDetailBuilder clone() => throw UnimplementedError();
  @override
  ExplanationOfBenefitDetailBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirPositiveIntBuilder? sequence,
    List<IdentifierBuilder>? traceNumber,
    CodeableConceptBuilder? revenue,
    CodeableConceptBuilder? category,
    CodeableConceptBuilder? productOrService,
    CodeableConceptBuilder? productOrServiceEnd,
    List<CodeableConceptBuilder>? modifier,
    List<CodeableConceptBuilder>? programCode,
    MoneyBuilder? patientPaid,
    QuantityBuilder? quantity,
    MoneyBuilder? unitPrice,
    FhirDecimalBuilder? factor,
    MoneyBuilder? tax,
    MoneyBuilder? net,
    List<ReferenceBuilder>? udi,
    List<FhirPositiveIntBuilder>? noteNumber,
    ExplanationOfBenefitReviewOutcomeBuilder? reviewOutcome,
    List<ExplanationOfBenefitAdjudicationBuilder>? adjudication,
    List<ExplanationOfBenefitSubDetailBuilder>? subDetail,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ExplanationOfBenefitDetailBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      sequence: sequence ?? this.sequence,
      traceNumber: traceNumber ?? this.traceNumber,
      revenue: revenue ?? this.revenue,
      category: category ?? this.category,
      productOrService: productOrService ?? this.productOrService,
      productOrServiceEnd: productOrServiceEnd ?? this.productOrServiceEnd,
      modifier: modifier ?? this.modifier,
      programCode: programCode ?? this.programCode,
      patientPaid: patientPaid ?? this.patientPaid,
      quantity: quantity ?? this.quantity,
      unitPrice: unitPrice ?? this.unitPrice,
      factor: factor ?? this.factor,
      tax: tax ?? this.tax,
      net: net ?? this.net,
      udi: udi ?? this.udi,
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
    if (o is! ExplanationOfBenefitDetailBuilder) {
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
      category,
      o.category,
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
    if (!listEquals<CodeableConceptBuilder>(
      programCode,
      o.programCode,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      patientPaid,
      o.patientPaid,
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
    if (!listEquals<ReferenceBuilder>(
      udi,
      o.udi,
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
    if (!listEquals<ExplanationOfBenefitAdjudicationBuilder>(
      adjudication,
      o.adjudication,
    )) {
      return false;
    }
    if (!listEquals<ExplanationOfBenefitSubDetailBuilder>(
      subDetail,
      o.subDetail,
    )) {
      return false;
    }
    return true;
  }
}

/// [ExplanationOfBenefitSubDetailBuilder]
/// Third-tier of goods and services.
class ExplanationOfBenefitSubDetailBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ExplanationOfBenefitSubDetailBuilder]

  ExplanationOfBenefitSubDetailBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.sequence,
    this.traceNumber,
    this.revenue,
    this.category,
    this.productOrService,
    this.productOrServiceEnd,
    this.modifier,
    this.programCode,
    this.patientPaid,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.tax,
    this.net,
    this.udi,
    this.noteNumber,
    this.reviewOutcome,
    this.adjudication,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ExplanationOfBenefit.item.detail.subDetail',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ExplanationOfBenefitSubDetailBuilder.empty() =>
      ExplanationOfBenefitSubDetailBuilder(
        sequence: FhirPositiveIntBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitSubDetailBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit.item.detail.subDetail';
    return ExplanationOfBenefitSubDetailBuilder(
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
      category: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'category',
        CodeableConceptBuilder.fromJson,
        '$objectPath.category',
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
      patientPaid: JsonParser.parseObject<MoneyBuilder>(
        json,
        'patientPaid',
        MoneyBuilder.fromJson,
        '$objectPath.patientPaid',
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
      udi: (json['udi'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.udi',
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
      reviewOutcome:
          JsonParser.parseObject<ExplanationOfBenefitReviewOutcomeBuilder>(
        json,
        'reviewOutcome',
        ExplanationOfBenefitReviewOutcomeBuilder.fromJson,
        '$objectPath.reviewOutcome',
      ),
      adjudication: (json['adjudication'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitAdjudicationBuilder>(
            (v) => ExplanationOfBenefitAdjudicationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.adjudication',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ExplanationOfBenefitSubDetailBuilder]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefitSubDetailBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefitSubDetailBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefitSubDetailBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefitSubDetailBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefitSubDetailBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitSubDetailBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefitSubDetailBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ExplanationOfBenefitSubDetail';

  /// [sequence]
  /// A claim detail line. Either a simple (a product or service) or a
  /// 'group' of sub-details which are simple items.
  FhirPositiveIntBuilder? sequence;

  /// [traceNumber]
  /// Trace number for tracking purposes. May be defined at the jurisdiction
  /// level or between trading partners.
  List<IdentifierBuilder>? traceNumber;

  /// [revenue]
  /// The type of revenue or cost center providing the product and/or
  /// service.
  CodeableConceptBuilder? revenue;

  /// [category]
  /// Code to identify the general type of benefits under which products and
  /// services are provided.
  CodeableConceptBuilder? category;

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

  /// [programCode]
  /// Identifies the program under which this may be recovered.
  List<CodeableConceptBuilder>? programCode;

  /// [patientPaid]
  /// The amount paid by the patient, in total at the claim claim level or
  /// specifically for the item and detail level, to the provider for goods
  /// and services.
  MoneyBuilder? patientPaid;

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
  /// The total amount claimed for the line item.detail.subDetail. Net = unit
  /// price * quantity * factor.
  MoneyBuilder? net;

  /// [udi]
  /// Unique Device Identifiers associated with this line item.
  List<ReferenceBuilder>? udi;

  /// [noteNumber]
  /// The numbers associated with notes below which apply to the adjudication
  /// of this item.
  List<FhirPositiveIntBuilder>? noteNumber;

  /// [reviewOutcome]
  /// The high-level results of the adjudication if adjudication has been
  /// performed.
  ExplanationOfBenefitReviewOutcomeBuilder? reviewOutcome;

  /// [adjudication]
  /// The adjudication results.
  List<ExplanationOfBenefitAdjudicationBuilder>? adjudication;

  /// Converts a [ExplanationOfBenefitSubDetailBuilder]
  /// to [ExplanationOfBenefitSubDetail]
  @override
  ExplanationOfBenefitSubDetail build() =>
      ExplanationOfBenefitSubDetail.fromJson(toJson());

  /// Converts a [ExplanationOfBenefitSubDetailBuilder]
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
    addField('traceNumber', traceNumber);
    addField('revenue', revenue);
    addField('category', category);
    addField('productOrService', productOrService);
    addField('productOrServiceEnd', productOrServiceEnd);
    addField('modifier', modifier);
    addField('programCode', programCode);
    addField('patientPaid', patientPaid);
    addField('quantity', quantity);
    addField('unitPrice', unitPrice);
    addField('factor', factor);
    addField('tax', tax);
    addField('net', net);
    addField('udi', udi);
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
      'sequence',
      'traceNumber',
      'revenue',
      'category',
      'productOrService',
      'productOrServiceEnd',
      'modifier',
      'programCode',
      'patientPaid',
      'quantity',
      'unitPrice',
      'factor',
      'tax',
      'net',
      'udi',
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
      case 'sequence':
        if (sequence != null) {
          fields.add(sequence!);
        }
      case 'traceNumber':
        if (traceNumber != null) {
          fields.addAll(traceNumber!);
        }
      case 'revenue':
        if (revenue != null) {
          fields.add(revenue!);
        }
      case 'category':
        if (category != null) {
          fields.add(category!);
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
      case 'programCode':
        if (programCode != null) {
          fields.addAll(programCode!);
        }
      case 'patientPaid':
        if (patientPaid != null) {
          fields.add(patientPaid!);
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
      case 'udi':
        if (udi != null) {
          fields.addAll(udi!);
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
      case 'category':
        {
          if (child is CodeableConceptBuilder) {
            category = child;
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
      case 'patientPaid':
        {
          if (child is MoneyBuilder) {
            patientPaid = child;
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
      case 'udi':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            udi = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            udi = [
              ...(udi ?? []),
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
          if (child is ExplanationOfBenefitReviewOutcomeBuilder) {
            reviewOutcome = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'adjudication':
        {
          if (child is List<ExplanationOfBenefitAdjudicationBuilder>) {
            // Replace or create new list
            adjudication = child;
            return;
          } else if (child is ExplanationOfBenefitAdjudicationBuilder) {
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
      case 'sequence':
        return ['FhirPositiveIntBuilder'];
      case 'traceNumber':
        return ['IdentifierBuilder'];
      case 'revenue':
        return ['CodeableConceptBuilder'];
      case 'category':
        return ['CodeableConceptBuilder'];
      case 'productOrService':
        return ['CodeableConceptBuilder'];
      case 'productOrServiceEnd':
        return ['CodeableConceptBuilder'];
      case 'modifier':
        return ['CodeableConceptBuilder'];
      case 'programCode':
        return ['CodeableConceptBuilder'];
      case 'patientPaid':
        return ['MoneyBuilder'];
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
      case 'udi':
        return ['ReferenceBuilder'];
      case 'noteNumber':
        return ['FhirPositiveIntBuilder'];
      case 'reviewOutcome':
        return ['ExplanationOfBenefitReviewOutcomeBuilder'];
      case 'adjudication':
        return ['ExplanationOfBenefitAdjudicationBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExplanationOfBenefitSubDetailBuilder]
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
      case 'category':
        {
          category = CodeableConceptBuilder.empty();
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
      case 'programCode':
        {
          programCode = <CodeableConceptBuilder>[];
          return;
        }
      case 'patientPaid':
        {
          patientPaid = MoneyBuilder.empty();
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
      case 'udi':
        {
          udi = <ReferenceBuilder>[];
          return;
        }
      case 'noteNumber':
        {
          noteNumber = <FhirPositiveIntBuilder>[];
          return;
        }
      case 'reviewOutcome':
        {
          reviewOutcome = ExplanationOfBenefitReviewOutcomeBuilder.empty();
          return;
        }
      case 'adjudication':
        {
          adjudication = <ExplanationOfBenefitAdjudicationBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ExplanationOfBenefitSubDetailBuilder clone() => throw UnimplementedError();
  @override
  ExplanationOfBenefitSubDetailBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirPositiveIntBuilder? sequence,
    List<IdentifierBuilder>? traceNumber,
    CodeableConceptBuilder? revenue,
    CodeableConceptBuilder? category,
    CodeableConceptBuilder? productOrService,
    CodeableConceptBuilder? productOrServiceEnd,
    List<CodeableConceptBuilder>? modifier,
    List<CodeableConceptBuilder>? programCode,
    MoneyBuilder? patientPaid,
    QuantityBuilder? quantity,
    MoneyBuilder? unitPrice,
    FhirDecimalBuilder? factor,
    MoneyBuilder? tax,
    MoneyBuilder? net,
    List<ReferenceBuilder>? udi,
    List<FhirPositiveIntBuilder>? noteNumber,
    ExplanationOfBenefitReviewOutcomeBuilder? reviewOutcome,
    List<ExplanationOfBenefitAdjudicationBuilder>? adjudication,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ExplanationOfBenefitSubDetailBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      sequence: sequence ?? this.sequence,
      traceNumber: traceNumber ?? this.traceNumber,
      revenue: revenue ?? this.revenue,
      category: category ?? this.category,
      productOrService: productOrService ?? this.productOrService,
      productOrServiceEnd: productOrServiceEnd ?? this.productOrServiceEnd,
      modifier: modifier ?? this.modifier,
      programCode: programCode ?? this.programCode,
      patientPaid: patientPaid ?? this.patientPaid,
      quantity: quantity ?? this.quantity,
      unitPrice: unitPrice ?? this.unitPrice,
      factor: factor ?? this.factor,
      tax: tax ?? this.tax,
      net: net ?? this.net,
      udi: udi ?? this.udi,
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
    if (o is! ExplanationOfBenefitSubDetailBuilder) {
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
      category,
      o.category,
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
    if (!listEquals<CodeableConceptBuilder>(
      programCode,
      o.programCode,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      patientPaid,
      o.patientPaid,
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
    if (!listEquals<ReferenceBuilder>(
      udi,
      o.udi,
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
    if (!listEquals<ExplanationOfBenefitAdjudicationBuilder>(
      adjudication,
      o.adjudication,
    )) {
      return false;
    }
    return true;
  }
}

/// [ExplanationOfBenefitAddItemBuilder]
/// The first-tier service adjudications for payor added product or service
/// lines.
class ExplanationOfBenefitAddItemBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ExplanationOfBenefitAddItemBuilder]

  ExplanationOfBenefitAddItemBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.itemSequence,
    this.detailSequence,
    this.subDetailSequence,
    this.traceNumber,
    this.provider,
    this.revenue,
    this.productOrService,
    this.productOrServiceEnd,
    this.request,
    this.modifier,
    this.programCode,
    ServicedXExplanationOfBenefitAddItemBuilder? servicedX,
    FhirDateBuilder? servicedDate,
    PeriodBuilder? servicedPeriod,
    LocationXExplanationOfBenefitAddItemBuilder? locationX,
    CodeableConceptBuilder? locationCodeableConcept,
    AddressBuilder? locationAddress,
    ReferenceBuilder? locationReference,
    this.patientPaid,
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
          objectPath: 'ExplanationOfBenefit.addItem',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ExplanationOfBenefitAddItemBuilder.empty() =>
      ExplanationOfBenefitAddItemBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitAddItemBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit.addItem';
    return ExplanationOfBenefitAddItemBuilder(
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
      subDetailSequence: JsonParser.parsePrimitiveList<FhirPositiveIntBuilder>(
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
      servicedX: JsonParser.parsePolymorphic<
          ServicedXExplanationOfBenefitAddItemBuilder>(
        json,
        {
          'servicedDate': FhirDateBuilder.fromJson,
          'servicedPeriod': PeriodBuilder.fromJson,
        },
        objectPath,
      ),
      locationX: JsonParser.parsePolymorphic<
          LocationXExplanationOfBenefitAddItemBuilder>(
        json,
        {
          'locationCodeableConcept': CodeableConceptBuilder.fromJson,
          'locationAddress': AddressBuilder.fromJson,
          'locationReference': ReferenceBuilder.fromJson,
        },
        objectPath,
      ),
      patientPaid: JsonParser.parseObject<MoneyBuilder>(
        json,
        'patientPaid',
        MoneyBuilder.fromJson,
        '$objectPath.patientPaid',
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
          ?.map<ExplanationOfBenefitBodySiteBuilder>(
            (v) => ExplanationOfBenefitBodySiteBuilder.fromJson(
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
      reviewOutcome:
          JsonParser.parseObject<ExplanationOfBenefitReviewOutcomeBuilder>(
        json,
        'reviewOutcome',
        ExplanationOfBenefitReviewOutcomeBuilder.fromJson,
        '$objectPath.reviewOutcome',
      ),
      adjudication: (json['adjudication'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitAdjudicationBuilder>(
            (v) => ExplanationOfBenefitAdjudicationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.adjudication',
              },
            ),
          )
          .toList(),
      detail: (json['detail'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitDetailBuilder>(
            (v) => ExplanationOfBenefitDetailBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.detail',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ExplanationOfBenefitAddItemBuilder]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefitAddItemBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefitAddItemBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefitAddItemBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefitAddItemBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefitAddItemBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitAddItemBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefitAddItemBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ExplanationOfBenefitAddItem';

  /// [itemSequence]
  /// Claim items which this service line is intended to replace.
  List<FhirPositiveIntBuilder>? itemSequence;

  /// [detailSequence]
  /// The sequence number of the details within the claim item which this
  /// line is intended to replace.
  List<FhirPositiveIntBuilder>? detailSequence;

  /// [subDetailSequence]
  /// The sequence number of the sub-details woithin the details within the
  /// claim item which this line is intended to replace.
  List<FhirPositiveIntBuilder>? subDetailSequence;

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
  ServicedXExplanationOfBenefitAddItemBuilder? servicedX;

  /// Getter for [servicedDate] as a FhirDateBuilder
  FhirDateBuilder? get servicedDate => servicedX?.isAs<FhirDateBuilder>();

  /// Getter for [servicedPeriod] as a PeriodBuilder
  PeriodBuilder? get servicedPeriod => servicedX?.isAs<PeriodBuilder>();

  /// [locationX]
  /// Where the product or service was provided.
  LocationXExplanationOfBenefitAddItemBuilder? locationX;

  /// Getter for [locationCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get locationCodeableConcept =>
      locationX?.isAs<CodeableConceptBuilder>();

  /// Getter for [locationAddress] as a AddressBuilder
  AddressBuilder? get locationAddress => locationX?.isAs<AddressBuilder>();

  /// Getter for [locationReference] as a ReferenceBuilder
  ReferenceBuilder? get locationReference =>
      locationX?.isAs<ReferenceBuilder>();

  /// [patientPaid]
  /// The amount paid by the patient, in total at the claim claim level or
  /// specifically for the item and detail level, to the provider for goods
  /// and services.
  MoneyBuilder? patientPaid;

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
  List<ExplanationOfBenefitBodySiteBuilder>? bodySite;

  /// [noteNumber]
  /// The numbers associated with notes below which apply to the adjudication
  /// of this item.
  List<FhirPositiveIntBuilder>? noteNumber;

  /// [reviewOutcome]
  /// The high-level results of the adjudication if adjudication has been
  /// performed.
  ExplanationOfBenefitReviewOutcomeBuilder? reviewOutcome;

  /// [adjudication]
  /// The adjudication results.
  List<ExplanationOfBenefitAdjudicationBuilder>? adjudication;

  /// [detail]
  /// The second-tier service adjudications for payor added services.
  List<ExplanationOfBenefitDetailBuilder>? detail;

  /// Converts a [ExplanationOfBenefitAddItemBuilder]
  /// to [ExplanationOfBenefitAddItem]
  @override
  ExplanationOfBenefitAddItem build() =>
      ExplanationOfBenefitAddItem.fromJson(toJson());

  /// Converts a [ExplanationOfBenefitAddItemBuilder]
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

    addField('patientPaid', patientPaid);
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
      'subDetailSequence',
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
      'patientPaid',
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
      case 'subDetailSequence':
        if (subDetailSequence != null) {
          fields.addAll(subDetailSequence!);
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
      case 'patientPaid':
        if (patientPaid != null) {
          fields.add(patientPaid!);
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
      case 'subDetailSequence':
        {
          if (child is List<FhirPositiveIntBuilder>) {
            // Replace or create new list
            subDetailSequence = child;
            return;
          } else if (child is FhirPositiveIntBuilder) {
            // Add single element to existing list or create new list
            subDetailSequence = [
              ...(subDetailSequence ?? []),
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
              subDetailSequence = convertedList;
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
                  subDetailSequence = [
                    ...(subDetailSequence ?? []),
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
          if (child is ServicedXExplanationOfBenefitAddItemBuilder) {
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
          if (child is LocationXExplanationOfBenefitAddItemBuilder) {
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
      case 'patientPaid':
        {
          if (child is MoneyBuilder) {
            patientPaid = child;
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
      case 'bodySite':
        {
          if (child is List<ExplanationOfBenefitBodySiteBuilder>) {
            // Replace or create new list
            bodySite = child;
            return;
          } else if (child is ExplanationOfBenefitBodySiteBuilder) {
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
          if (child is ExplanationOfBenefitReviewOutcomeBuilder) {
            reviewOutcome = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'adjudication':
        {
          if (child is List<ExplanationOfBenefitAdjudicationBuilder>) {
            // Replace or create new list
            adjudication = child;
            return;
          } else if (child is ExplanationOfBenefitAdjudicationBuilder) {
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
          if (child is List<ExplanationOfBenefitDetailBuilder>) {
            // Replace or create new list
            detail = child;
            return;
          } else if (child is ExplanationOfBenefitDetailBuilder) {
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
      case 'subDetailSequence':
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
      case 'patientPaid':
        return ['MoneyBuilder'];
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
        return ['ExplanationOfBenefitBodySiteBuilder'];
      case 'noteNumber':
        return ['FhirPositiveIntBuilder'];
      case 'reviewOutcome':
        return ['ExplanationOfBenefitReviewOutcomeBuilder'];
      case 'adjudication':
        return ['ExplanationOfBenefitAdjudicationBuilder'];
      case 'detail':
        return ['ExplanationOfBenefitDetailBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExplanationOfBenefitAddItemBuilder]
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
      case 'subDetailSequence':
        {
          subDetailSequence = <FhirPositiveIntBuilder>[];
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
      case 'patientPaid':
        {
          patientPaid = MoneyBuilder.empty();
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
          bodySite = <ExplanationOfBenefitBodySiteBuilder>[];
          return;
        }
      case 'noteNumber':
        {
          noteNumber = <FhirPositiveIntBuilder>[];
          return;
        }
      case 'reviewOutcome':
        {
          reviewOutcome = ExplanationOfBenefitReviewOutcomeBuilder.empty();
          return;
        }
      case 'adjudication':
        {
          adjudication = <ExplanationOfBenefitAdjudicationBuilder>[];
          return;
        }
      case 'detail':
        {
          detail = <ExplanationOfBenefitDetailBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ExplanationOfBenefitAddItemBuilder clone() => throw UnimplementedError();
  @override
  ExplanationOfBenefitAddItemBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<FhirPositiveIntBuilder>? itemSequence,
    List<FhirPositiveIntBuilder>? detailSequence,
    List<FhirPositiveIntBuilder>? subDetailSequence,
    List<IdentifierBuilder>? traceNumber,
    List<ReferenceBuilder>? provider,
    CodeableConceptBuilder? revenue,
    CodeableConceptBuilder? productOrService,
    CodeableConceptBuilder? productOrServiceEnd,
    List<ReferenceBuilder>? request,
    List<CodeableConceptBuilder>? modifier,
    List<CodeableConceptBuilder>? programCode,
    ServicedXExplanationOfBenefitAddItemBuilder? servicedX,
    LocationXExplanationOfBenefitAddItemBuilder? locationX,
    MoneyBuilder? patientPaid,
    QuantityBuilder? quantity,
    MoneyBuilder? unitPrice,
    FhirDecimalBuilder? factor,
    MoneyBuilder? tax,
    MoneyBuilder? net,
    List<ExplanationOfBenefitBodySiteBuilder>? bodySite,
    List<FhirPositiveIntBuilder>? noteNumber,
    ExplanationOfBenefitReviewOutcomeBuilder? reviewOutcome,
    List<ExplanationOfBenefitAdjudicationBuilder>? adjudication,
    List<ExplanationOfBenefitDetailBuilder>? detail,
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
    final newResult = ExplanationOfBenefitAddItemBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      itemSequence: itemSequence ?? this.itemSequence,
      detailSequence: detailSequence ?? this.detailSequence,
      subDetailSequence: subDetailSequence ?? this.subDetailSequence,
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
      patientPaid: patientPaid ?? this.patientPaid,
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
    if (o is! ExplanationOfBenefitAddItemBuilder) {
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
      patientPaid,
      o.patientPaid,
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
    if (!listEquals<ExplanationOfBenefitBodySiteBuilder>(
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
    if (!listEquals<ExplanationOfBenefitAdjudicationBuilder>(
      adjudication,
      o.adjudication,
    )) {
      return false;
    }
    if (!listEquals<ExplanationOfBenefitDetailBuilder>(
      detail,
      o.detail,
    )) {
      return false;
    }
    return true;
  }
}

/// [ExplanationOfBenefitBodySite1Builder]
/// Physical location where the service is performed or applies.
class ExplanationOfBenefitBodySite1Builder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ExplanationOfBenefitBodySite1Builder]

  ExplanationOfBenefitBodySite1Builder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.site,
    this.subSite,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ExplanationOfBenefit.addItem.bodySite',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ExplanationOfBenefitBodySite1Builder.empty() =>
      ExplanationOfBenefitBodySite1Builder(
        site: <CodeableReferenceBuilder>[],
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitBodySite1Builder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit.addItem.bodySite';
    return ExplanationOfBenefitBodySite1Builder(
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

  /// Deserialize [ExplanationOfBenefitBodySite1Builder]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefitBodySite1Builder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefitBodySite1Builder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefitBodySite1Builder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefitBodySite1Builder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefitBodySite1Builder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitBodySite1Builder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefitBodySite1Builder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ExplanationOfBenefitBodySite1';

  /// [site]
  /// Physical service site on the patient (limb, tooth, etc.).
  List<CodeableReferenceBuilder>? site;

  /// [subSite]
  /// A region or surface of the bodySite, e.g. limb region or tooth
  /// surface(s).
  List<CodeableConceptBuilder>? subSite;

  /// Converts a [ExplanationOfBenefitBodySite1Builder]
  /// to [ExplanationOfBenefitBodySite1]
  @override
  ExplanationOfBenefitBodySite1 build() =>
      ExplanationOfBenefitBodySite1.fromJson(toJson());

  /// Converts a [ExplanationOfBenefitBodySite1Builder]
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

  /// Creates a new [ExplanationOfBenefitBodySite1Builder]
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
  ExplanationOfBenefitBodySite1Builder clone() => throw UnimplementedError();
  @override
  ExplanationOfBenefitBodySite1Builder copyWith({
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
    final newResult = ExplanationOfBenefitBodySite1Builder(
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
    if (o is! ExplanationOfBenefitBodySite1Builder) {
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

/// [ExplanationOfBenefitDetail1Builder]
/// The second-tier service adjudications for payor added services.
class ExplanationOfBenefitDetail1Builder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ExplanationOfBenefitDetail1Builder]

  ExplanationOfBenefitDetail1Builder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.traceNumber,
    this.revenue,
    this.productOrService,
    this.productOrServiceEnd,
    this.modifier,
    this.patientPaid,
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
          objectPath: 'ExplanationOfBenefit.addItem.detail',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ExplanationOfBenefitDetail1Builder.empty() =>
      ExplanationOfBenefitDetail1Builder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitDetail1Builder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit.addItem.detail';
    return ExplanationOfBenefitDetail1Builder(
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
      patientPaid: JsonParser.parseObject<MoneyBuilder>(
        json,
        'patientPaid',
        MoneyBuilder.fromJson,
        '$objectPath.patientPaid',
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
      noteNumber: JsonParser.parsePrimitiveList<FhirPositiveIntBuilder>(
        json,
        'noteNumber',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.noteNumber',
      ),
      reviewOutcome:
          JsonParser.parseObject<ExplanationOfBenefitReviewOutcomeBuilder>(
        json,
        'reviewOutcome',
        ExplanationOfBenefitReviewOutcomeBuilder.fromJson,
        '$objectPath.reviewOutcome',
      ),
      adjudication: (json['adjudication'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitAdjudicationBuilder>(
            (v) => ExplanationOfBenefitAdjudicationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.adjudication',
              },
            ),
          )
          .toList(),
      subDetail: (json['subDetail'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitSubDetailBuilder>(
            (v) => ExplanationOfBenefitSubDetailBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.subDetail',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ExplanationOfBenefitDetail1Builder]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefitDetail1Builder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefitDetail1Builder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefitDetail1Builder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefitDetail1Builder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefitDetail1Builder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitDetail1Builder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefitDetail1Builder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ExplanationOfBenefitDetail1';

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

  /// [patientPaid]
  /// The amount paid by the patient, in total at the claim claim level or
  /// specifically for the item and detail level, to the provider for goods
  /// and services.
  MoneyBuilder? patientPaid;

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
  ExplanationOfBenefitReviewOutcomeBuilder? reviewOutcome;

  /// [adjudication]
  /// The adjudication results.
  List<ExplanationOfBenefitAdjudicationBuilder>? adjudication;

  /// [subDetail]
  /// The third-tier service adjudications for payor added services.
  List<ExplanationOfBenefitSubDetailBuilder>? subDetail;

  /// Converts a [ExplanationOfBenefitDetail1Builder]
  /// to [ExplanationOfBenefitDetail1]
  @override
  ExplanationOfBenefitDetail1 build() =>
      ExplanationOfBenefitDetail1.fromJson(toJson());

  /// Converts a [ExplanationOfBenefitDetail1Builder]
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
    addField('patientPaid', patientPaid);
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
      'patientPaid',
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
      case 'patientPaid':
        if (patientPaid != null) {
          fields.add(patientPaid!);
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
      case 'patientPaid':
        {
          if (child is MoneyBuilder) {
            patientPaid = child;
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
          if (child is ExplanationOfBenefitReviewOutcomeBuilder) {
            reviewOutcome = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'adjudication':
        {
          if (child is List<ExplanationOfBenefitAdjudicationBuilder>) {
            // Replace or create new list
            adjudication = child;
            return;
          } else if (child is ExplanationOfBenefitAdjudicationBuilder) {
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
          if (child is List<ExplanationOfBenefitSubDetailBuilder>) {
            // Replace or create new list
            subDetail = child;
            return;
          } else if (child is ExplanationOfBenefitSubDetailBuilder) {
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
      case 'patientPaid':
        return ['MoneyBuilder'];
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
        return ['ExplanationOfBenefitReviewOutcomeBuilder'];
      case 'adjudication':
        return ['ExplanationOfBenefitAdjudicationBuilder'];
      case 'subDetail':
        return ['ExplanationOfBenefitSubDetailBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExplanationOfBenefitDetail1Builder]
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
      case 'patientPaid':
        {
          patientPaid = MoneyBuilder.empty();
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
          reviewOutcome = ExplanationOfBenefitReviewOutcomeBuilder.empty();
          return;
        }
      case 'adjudication':
        {
          adjudication = <ExplanationOfBenefitAdjudicationBuilder>[];
          return;
        }
      case 'subDetail':
        {
          subDetail = <ExplanationOfBenefitSubDetailBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ExplanationOfBenefitDetail1Builder clone() => throw UnimplementedError();
  @override
  ExplanationOfBenefitDetail1Builder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? traceNumber,
    CodeableConceptBuilder? revenue,
    CodeableConceptBuilder? productOrService,
    CodeableConceptBuilder? productOrServiceEnd,
    List<CodeableConceptBuilder>? modifier,
    MoneyBuilder? patientPaid,
    QuantityBuilder? quantity,
    MoneyBuilder? unitPrice,
    FhirDecimalBuilder? factor,
    MoneyBuilder? tax,
    MoneyBuilder? net,
    List<FhirPositiveIntBuilder>? noteNumber,
    ExplanationOfBenefitReviewOutcomeBuilder? reviewOutcome,
    List<ExplanationOfBenefitAdjudicationBuilder>? adjudication,
    List<ExplanationOfBenefitSubDetailBuilder>? subDetail,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ExplanationOfBenefitDetail1Builder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      traceNumber: traceNumber ?? this.traceNumber,
      revenue: revenue ?? this.revenue,
      productOrService: productOrService ?? this.productOrService,
      productOrServiceEnd: productOrServiceEnd ?? this.productOrServiceEnd,
      modifier: modifier ?? this.modifier,
      patientPaid: patientPaid ?? this.patientPaid,
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
    if (o is! ExplanationOfBenefitDetail1Builder) {
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
      patientPaid,
      o.patientPaid,
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
    if (!listEquals<ExplanationOfBenefitAdjudicationBuilder>(
      adjudication,
      o.adjudication,
    )) {
      return false;
    }
    if (!listEquals<ExplanationOfBenefitSubDetailBuilder>(
      subDetail,
      o.subDetail,
    )) {
      return false;
    }
    return true;
  }
}

/// [ExplanationOfBenefitSubDetail1Builder]
/// The third-tier service adjudications for payor added services.
class ExplanationOfBenefitSubDetail1Builder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ExplanationOfBenefitSubDetail1Builder]

  ExplanationOfBenefitSubDetail1Builder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.traceNumber,
    this.revenue,
    this.productOrService,
    this.productOrServiceEnd,
    this.modifier,
    this.patientPaid,
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
          objectPath: 'ExplanationOfBenefit.addItem.detail.subDetail',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ExplanationOfBenefitSubDetail1Builder.empty() =>
      ExplanationOfBenefitSubDetail1Builder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitSubDetail1Builder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit.addItem.detail.subDetail';
    return ExplanationOfBenefitSubDetail1Builder(
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
      patientPaid: JsonParser.parseObject<MoneyBuilder>(
        json,
        'patientPaid',
        MoneyBuilder.fromJson,
        '$objectPath.patientPaid',
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
      noteNumber: JsonParser.parsePrimitiveList<FhirPositiveIntBuilder>(
        json,
        'noteNumber',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.noteNumber',
      ),
      reviewOutcome:
          JsonParser.parseObject<ExplanationOfBenefitReviewOutcomeBuilder>(
        json,
        'reviewOutcome',
        ExplanationOfBenefitReviewOutcomeBuilder.fromJson,
        '$objectPath.reviewOutcome',
      ),
      adjudication: (json['adjudication'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitAdjudicationBuilder>(
            (v) => ExplanationOfBenefitAdjudicationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.adjudication',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ExplanationOfBenefitSubDetail1Builder]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefitSubDetail1Builder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefitSubDetail1Builder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefitSubDetail1Builder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefitSubDetail1Builder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefitSubDetail1Builder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitSubDetail1Builder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefitSubDetail1Builder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ExplanationOfBenefitSubDetail1';

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

  /// [patientPaid]
  /// The amount paid by the patient, in total at the claim claim level or
  /// specifically for the item and detail level, to the provider for goods
  /// and services.
  MoneyBuilder? patientPaid;

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
  ExplanationOfBenefitReviewOutcomeBuilder? reviewOutcome;

  /// [adjudication]
  /// The adjudication results.
  List<ExplanationOfBenefitAdjudicationBuilder>? adjudication;

  /// Converts a [ExplanationOfBenefitSubDetail1Builder]
  /// to [ExplanationOfBenefitSubDetail1]
  @override
  ExplanationOfBenefitSubDetail1 build() =>
      ExplanationOfBenefitSubDetail1.fromJson(toJson());

  /// Converts a [ExplanationOfBenefitSubDetail1Builder]
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
    addField('patientPaid', patientPaid);
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
      'patientPaid',
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
      case 'patientPaid':
        if (patientPaid != null) {
          fields.add(patientPaid!);
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
      case 'patientPaid':
        {
          if (child is MoneyBuilder) {
            patientPaid = child;
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
          if (child is ExplanationOfBenefitReviewOutcomeBuilder) {
            reviewOutcome = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'adjudication':
        {
          if (child is List<ExplanationOfBenefitAdjudicationBuilder>) {
            // Replace or create new list
            adjudication = child;
            return;
          } else if (child is ExplanationOfBenefitAdjudicationBuilder) {
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
      case 'patientPaid':
        return ['MoneyBuilder'];
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
        return ['ExplanationOfBenefitReviewOutcomeBuilder'];
      case 'adjudication':
        return ['ExplanationOfBenefitAdjudicationBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExplanationOfBenefitSubDetail1Builder]
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
      case 'patientPaid':
        {
          patientPaid = MoneyBuilder.empty();
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
          reviewOutcome = ExplanationOfBenefitReviewOutcomeBuilder.empty();
          return;
        }
      case 'adjudication':
        {
          adjudication = <ExplanationOfBenefitAdjudicationBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ExplanationOfBenefitSubDetail1Builder clone() => throw UnimplementedError();
  @override
  ExplanationOfBenefitSubDetail1Builder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? traceNumber,
    CodeableConceptBuilder? revenue,
    CodeableConceptBuilder? productOrService,
    CodeableConceptBuilder? productOrServiceEnd,
    List<CodeableConceptBuilder>? modifier,
    MoneyBuilder? patientPaid,
    QuantityBuilder? quantity,
    MoneyBuilder? unitPrice,
    FhirDecimalBuilder? factor,
    MoneyBuilder? tax,
    MoneyBuilder? net,
    List<FhirPositiveIntBuilder>? noteNumber,
    ExplanationOfBenefitReviewOutcomeBuilder? reviewOutcome,
    List<ExplanationOfBenefitAdjudicationBuilder>? adjudication,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ExplanationOfBenefitSubDetail1Builder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      traceNumber: traceNumber ?? this.traceNumber,
      revenue: revenue ?? this.revenue,
      productOrService: productOrService ?? this.productOrService,
      productOrServiceEnd: productOrServiceEnd ?? this.productOrServiceEnd,
      modifier: modifier ?? this.modifier,
      patientPaid: patientPaid ?? this.patientPaid,
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
    if (o is! ExplanationOfBenefitSubDetail1Builder) {
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
      patientPaid,
      o.patientPaid,
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
    if (!listEquals<ExplanationOfBenefitAdjudicationBuilder>(
      adjudication,
      o.adjudication,
    )) {
      return false;
    }
    return true;
  }
}

/// [ExplanationOfBenefitTotalBuilder]
/// Categorized monetary totals for the adjudication.
class ExplanationOfBenefitTotalBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ExplanationOfBenefitTotalBuilder]

  ExplanationOfBenefitTotalBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.category,
    this.amount,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ExplanationOfBenefit.total',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ExplanationOfBenefitTotalBuilder.empty() =>
      ExplanationOfBenefitTotalBuilder(
        category: CodeableConceptBuilder.empty(),
        amount: MoneyBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitTotalBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit.total';
    return ExplanationOfBenefitTotalBuilder(
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

  /// Deserialize [ExplanationOfBenefitTotalBuilder]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefitTotalBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefitTotalBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefitTotalBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefitTotalBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefitTotalBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitTotalBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefitTotalBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ExplanationOfBenefitTotal';

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

  /// Converts a [ExplanationOfBenefitTotalBuilder]
  /// to [ExplanationOfBenefitTotal]
  @override
  ExplanationOfBenefitTotal build() =>
      ExplanationOfBenefitTotal.fromJson(toJson());

  /// Converts a [ExplanationOfBenefitTotalBuilder]
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

  /// Creates a new [ExplanationOfBenefitTotalBuilder]
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
  ExplanationOfBenefitTotalBuilder clone() => throw UnimplementedError();
  @override
  ExplanationOfBenefitTotalBuilder copyWith({
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
    final newResult = ExplanationOfBenefitTotalBuilder(
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
    if (o is! ExplanationOfBenefitTotalBuilder) {
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

/// [ExplanationOfBenefitPaymentBuilder]
/// Payment details for the adjudication of the claim.
class ExplanationOfBenefitPaymentBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ExplanationOfBenefitPaymentBuilder]

  ExplanationOfBenefitPaymentBuilder({
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
          objectPath: 'ExplanationOfBenefit.payment',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ExplanationOfBenefitPaymentBuilder.empty() =>
      ExplanationOfBenefitPaymentBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitPaymentBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit.payment';
    return ExplanationOfBenefitPaymentBuilder(
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

  /// Deserialize [ExplanationOfBenefitPaymentBuilder]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefitPaymentBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefitPaymentBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefitPaymentBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefitPaymentBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefitPaymentBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitPaymentBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefitPaymentBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ExplanationOfBenefitPayment';

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

  /// Converts a [ExplanationOfBenefitPaymentBuilder]
  /// to [ExplanationOfBenefitPayment]
  @override
  ExplanationOfBenefitPayment build() =>
      ExplanationOfBenefitPayment.fromJson(toJson());

  /// Converts a [ExplanationOfBenefitPaymentBuilder]
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

  /// Creates a new [ExplanationOfBenefitPaymentBuilder]
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
  ExplanationOfBenefitPaymentBuilder clone() => throw UnimplementedError();
  @override
  ExplanationOfBenefitPaymentBuilder copyWith({
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
    final newResult = ExplanationOfBenefitPaymentBuilder(
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
    if (o is! ExplanationOfBenefitPaymentBuilder) {
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

/// [ExplanationOfBenefitProcessNoteBuilder]
/// A note that describes or explains adjudication results in a human
/// readable form.
class ExplanationOfBenefitProcessNoteBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ExplanationOfBenefitProcessNoteBuilder]

  ExplanationOfBenefitProcessNoteBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.number,
    this.type,
    this.text,
    this.language,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ExplanationOfBenefit.processNote',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ExplanationOfBenefitProcessNoteBuilder.empty() =>
      ExplanationOfBenefitProcessNoteBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitProcessNoteBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit.processNote';
    return ExplanationOfBenefitProcessNoteBuilder(
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

  /// Deserialize [ExplanationOfBenefitProcessNoteBuilder]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefitProcessNoteBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefitProcessNoteBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefitProcessNoteBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefitProcessNoteBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefitProcessNoteBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitProcessNoteBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefitProcessNoteBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ExplanationOfBenefitProcessNote';

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

  /// Converts a [ExplanationOfBenefitProcessNoteBuilder]
  /// to [ExplanationOfBenefitProcessNote]
  @override
  ExplanationOfBenefitProcessNote build() =>
      ExplanationOfBenefitProcessNote.fromJson(toJson());

  /// Converts a [ExplanationOfBenefitProcessNoteBuilder]
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

  /// Creates a new [ExplanationOfBenefitProcessNoteBuilder]
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
  ExplanationOfBenefitProcessNoteBuilder clone() => throw UnimplementedError();
  @override
  ExplanationOfBenefitProcessNoteBuilder copyWith({
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
    final newResult = ExplanationOfBenefitProcessNoteBuilder(
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
    if (o is! ExplanationOfBenefitProcessNoteBuilder) {
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

/// [ExplanationOfBenefitBenefitBalanceBuilder]
/// Balance by Benefit Category.
class ExplanationOfBenefitBenefitBalanceBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ExplanationOfBenefitBenefitBalanceBuilder]

  ExplanationOfBenefitBenefitBalanceBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.category,
    this.excluded,
    this.name,
    this.description,
    this.network,
    this.unit,
    this.term,
    this.financial,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ExplanationOfBenefit.benefitBalance',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ExplanationOfBenefitBenefitBalanceBuilder.empty() =>
      ExplanationOfBenefitBenefitBalanceBuilder(
        category: CodeableConceptBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitBenefitBalanceBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit.benefitBalance';
    return ExplanationOfBenefitBenefitBalanceBuilder(
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
      excluded: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'excluded',
        FhirBooleanBuilder.fromJson,
        '$objectPath.excluded',
      ),
      name: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'name',
        FhirStringBuilder.fromJson,
        '$objectPath.name',
      ),
      description: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'description',
        FhirStringBuilder.fromJson,
        '$objectPath.description',
      ),
      network: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'network',
        CodeableConceptBuilder.fromJson,
        '$objectPath.network',
      ),
      unit: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'unit',
        CodeableConceptBuilder.fromJson,
        '$objectPath.unit',
      ),
      term: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'term',
        CodeableConceptBuilder.fromJson,
        '$objectPath.term',
      ),
      financial: (json['financial'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitFinancialBuilder>(
            (v) => ExplanationOfBenefitFinancialBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.financial',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ExplanationOfBenefitBenefitBalanceBuilder]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefitBenefitBalanceBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefitBenefitBalanceBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefitBenefitBalanceBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefitBenefitBalanceBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefitBenefitBalanceBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitBenefitBalanceBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefitBenefitBalanceBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ExplanationOfBenefitBenefitBalance';

  /// [category]
  /// Code to identify the general type of benefits under which products and
  /// services are provided.
  CodeableConceptBuilder? category;

  /// [excluded]
  /// True if the indicated class of service is excluded from the plan,
  /// missing or False indicates the product or service is included in the
  /// coverage.
  FhirBooleanBuilder? excluded;

  /// [name]
  /// A short name or tag for the benefit.
  FhirStringBuilder? name;

  /// [description]
  /// A richer description of the benefit or services covered.
  FhirStringBuilder? description;

  /// [network]
  /// Is a flag to indicate whether the benefits refer to in-network
  /// providers or out-of-network providers.
  CodeableConceptBuilder? network;

  /// [unit]
  /// Indicates if the benefits apply to an individual or to the family.
  CodeableConceptBuilder? unit;

  /// [term]
  /// The term or period of the values such as 'maximum lifetime benefit' or
  /// 'maximum annual visits'.
  CodeableConceptBuilder? term;

  /// [financial]
  /// Benefits Used to date.
  List<ExplanationOfBenefitFinancialBuilder>? financial;

  /// Converts a [ExplanationOfBenefitBenefitBalanceBuilder]
  /// to [ExplanationOfBenefitBenefitBalance]
  @override
  ExplanationOfBenefitBenefitBalance build() =>
      ExplanationOfBenefitBenefitBalance.fromJson(toJson());

  /// Converts a [ExplanationOfBenefitBenefitBalanceBuilder]
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
    addField('excluded', excluded);
    addField('name', name);
    addField('description', description);
    addField('network', network);
    addField('unit', unit);
    addField('term', term);
    addField('financial', financial);
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
      'excluded',
      'name',
      'description',
      'network',
      'unit',
      'term',
      'financial',
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
      case 'excluded':
        if (excluded != null) {
          fields.add(excluded!);
        }
      case 'name':
        if (name != null) {
          fields.add(name!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'network':
        if (network != null) {
          fields.add(network!);
        }
      case 'unit':
        if (unit != null) {
          fields.add(unit!);
        }
      case 'term':
        if (term != null) {
          fields.add(term!);
        }
      case 'financial':
        if (financial != null) {
          fields.addAll(financial!);
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
      case 'excluded':
        {
          if (child is FhirBooleanBuilder) {
            excluded = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                excluded = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'name':
        {
          if (child is FhirStringBuilder) {
            name = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                name = converted;
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
      case 'network':
        {
          if (child is CodeableConceptBuilder) {
            network = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'unit':
        {
          if (child is CodeableConceptBuilder) {
            unit = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'term':
        {
          if (child is CodeableConceptBuilder) {
            term = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'financial':
        {
          if (child is List<ExplanationOfBenefitFinancialBuilder>) {
            // Replace or create new list
            financial = child;
            return;
          } else if (child is ExplanationOfBenefitFinancialBuilder) {
            // Add single element to existing list or create new list
            financial = [
              ...(financial ?? []),
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
      case 'category':
        return ['CodeableConceptBuilder'];
      case 'excluded':
        return ['FhirBooleanBuilder'];
      case 'name':
        return ['FhirStringBuilder'];
      case 'description':
        return ['FhirStringBuilder'];
      case 'network':
        return ['CodeableConceptBuilder'];
      case 'unit':
        return ['CodeableConceptBuilder'];
      case 'term':
        return ['CodeableConceptBuilder'];
      case 'financial':
        return ['ExplanationOfBenefitFinancialBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExplanationOfBenefitBenefitBalanceBuilder]
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
      case 'excluded':
        {
          excluded = FhirBooleanBuilder.empty();
          return;
        }
      case 'name':
        {
          name = FhirStringBuilder.empty();
          return;
        }
      case 'description':
        {
          description = FhirStringBuilder.empty();
          return;
        }
      case 'network':
        {
          network = CodeableConceptBuilder.empty();
          return;
        }
      case 'unit':
        {
          unit = CodeableConceptBuilder.empty();
          return;
        }
      case 'term':
        {
          term = CodeableConceptBuilder.empty();
          return;
        }
      case 'financial':
        {
          financial = <ExplanationOfBenefitFinancialBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ExplanationOfBenefitBenefitBalanceBuilder clone() =>
      throw UnimplementedError();
  @override
  ExplanationOfBenefitBenefitBalanceBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? category,
    FhirBooleanBuilder? excluded,
    FhirStringBuilder? name,
    FhirStringBuilder? description,
    CodeableConceptBuilder? network,
    CodeableConceptBuilder? unit,
    CodeableConceptBuilder? term,
    List<ExplanationOfBenefitFinancialBuilder>? financial,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ExplanationOfBenefitBenefitBalanceBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      category: category ?? this.category,
      excluded: excluded ?? this.excluded,
      name: name ?? this.name,
      description: description ?? this.description,
      network: network ?? this.network,
      unit: unit ?? this.unit,
      term: term ?? this.term,
      financial: financial ?? this.financial,
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
    if (o is! ExplanationOfBenefitBenefitBalanceBuilder) {
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
      excluded,
      o.excluded,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      name,
      o.name,
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
      network,
      o.network,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      unit,
      o.unit,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      term,
      o.term,
    )) {
      return false;
    }
    if (!listEquals<ExplanationOfBenefitFinancialBuilder>(
      financial,
      o.financial,
    )) {
      return false;
    }
    return true;
  }
}

/// [ExplanationOfBenefitFinancialBuilder]
/// Benefits Used to date.
class ExplanationOfBenefitFinancialBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ExplanationOfBenefitFinancialBuilder]

  ExplanationOfBenefitFinancialBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    AllowedXExplanationOfBenefitFinancialBuilder? allowedX,
    FhirUnsignedIntBuilder? allowedUnsignedInt,
    FhirStringBuilder? allowedString,
    MoneyBuilder? allowedMoney,
    UsedXExplanationOfBenefitFinancialBuilder? usedX,
    FhirUnsignedIntBuilder? usedUnsignedInt,
    MoneyBuilder? usedMoney,
    super.disallowExtensions,
  })  : allowedX =
            allowedX ?? allowedUnsignedInt ?? allowedString ?? allowedMoney,
        usedX = usedX ?? usedUnsignedInt ?? usedMoney,
        super(
          objectPath: 'ExplanationOfBenefit.benefitBalance.financial',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ExplanationOfBenefitFinancialBuilder.empty() =>
      ExplanationOfBenefitFinancialBuilder(
        type: CodeableConceptBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitFinancialBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit.benefitBalance.financial';
    return ExplanationOfBenefitFinancialBuilder(
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
      allowedX: JsonParser.parsePolymorphic<
          AllowedXExplanationOfBenefitFinancialBuilder>(
        json,
        {
          'allowedUnsignedInt': FhirUnsignedIntBuilder.fromJson,
          'allowedString': FhirStringBuilder.fromJson,
          'allowedMoney': MoneyBuilder.fromJson,
        },
        objectPath,
      ),
      usedX: JsonParser.parsePolymorphic<
          UsedXExplanationOfBenefitFinancialBuilder>(
        json,
        {
          'usedUnsignedInt': FhirUnsignedIntBuilder.fromJson,
          'usedMoney': MoneyBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [ExplanationOfBenefitFinancialBuilder]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefitFinancialBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefitFinancialBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefitFinancialBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefitFinancialBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefitFinancialBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitFinancialBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefitFinancialBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ExplanationOfBenefitFinancial';

  /// [type]
  /// Classification of benefit being provided.
  CodeableConceptBuilder? type;

  /// [allowedX]
  /// The quantity of the benefit which is permitted under the coverage.
  AllowedXExplanationOfBenefitFinancialBuilder? allowedX;

  /// Getter for [allowedUnsignedInt] as a FhirUnsignedIntBuilder
  FhirUnsignedIntBuilder? get allowedUnsignedInt =>
      allowedX?.isAs<FhirUnsignedIntBuilder>();

  /// Getter for [allowedString] as a FhirStringBuilder
  FhirStringBuilder? get allowedString => allowedX?.isAs<FhirStringBuilder>();

  /// Getter for [allowedMoney] as a MoneyBuilder
  MoneyBuilder? get allowedMoney => allowedX?.isAs<MoneyBuilder>();

  /// [usedX]
  /// The quantity of the benefit which have been consumed to date.
  UsedXExplanationOfBenefitFinancialBuilder? usedX;

  /// Getter for [usedUnsignedInt] as a FhirUnsignedIntBuilder
  FhirUnsignedIntBuilder? get usedUnsignedInt =>
      usedX?.isAs<FhirUnsignedIntBuilder>();

  /// Getter for [usedMoney] as a MoneyBuilder
  MoneyBuilder? get usedMoney => usedX?.isAs<MoneyBuilder>();

  /// Converts a [ExplanationOfBenefitFinancialBuilder]
  /// to [ExplanationOfBenefitFinancial]
  @override
  ExplanationOfBenefitFinancial build() =>
      ExplanationOfBenefitFinancial.fromJson(toJson());

  /// Converts a [ExplanationOfBenefitFinancialBuilder]
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
    if (allowedX != null) {
      final fhirType = allowedX!.fhirType;
      addField('allowed${fhirType.capitalizeFirstLetter()}', allowedX);
    }

    if (usedX != null) {
      final fhirType = usedX!.fhirType;
      addField('used${fhirType.capitalizeFirstLetter()}', usedX);
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
      'allowedX',
      'usedX',
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
      case 'allowed':
        if (allowedX != null) {
          fields.add(allowedX!);
        }
      case 'allowedX':
        if (allowedX != null) {
          fields.add(allowedX!);
        }
      case 'allowedUnsignedInt':
        if (allowedX is FhirUnsignedIntBuilder) {
          fields.add(allowedX!);
        }
      case 'allowedString':
        if (allowedX is FhirStringBuilder) {
          fields.add(allowedX!);
        }
      case 'allowedMoney':
        if (allowedX is MoneyBuilder) {
          fields.add(allowedX!);
        }
      case 'used':
        if (usedX != null) {
          fields.add(usedX!);
        }
      case 'usedX':
        if (usedX != null) {
          fields.add(usedX!);
        }
      case 'usedUnsignedInt':
        if (usedX is FhirUnsignedIntBuilder) {
          fields.add(usedX!);
        }
      case 'usedMoney':
        if (usedX is MoneyBuilder) {
          fields.add(usedX!);
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
      case 'allowed':
      case 'allowedX':
        {
          if (child is AllowedXExplanationOfBenefitFinancialBuilder) {
            allowedX = child;
            return;
          } else {
            if (child is FhirUnsignedIntBuilder) {
              allowedX = child;
              return;
            }
            if (child is FhirStringBuilder) {
              allowedX = child;
              return;
            }
            if (child is MoneyBuilder) {
              allowedX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'allowedUnsignedInt':
        {
          if (child is FhirUnsignedIntBuilder) {
            allowedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'allowedString':
        {
          if (child is FhirStringBuilder) {
            allowedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'allowedMoney':
        {
          if (child is MoneyBuilder) {
            allowedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'used':
      case 'usedX':
        {
          if (child is UsedXExplanationOfBenefitFinancialBuilder) {
            usedX = child;
            return;
          } else {
            if (child is FhirUnsignedIntBuilder) {
              usedX = child;
              return;
            }
            if (child is MoneyBuilder) {
              usedX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'usedUnsignedInt':
        {
          if (child is FhirUnsignedIntBuilder) {
            usedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'usedMoney':
        {
          if (child is MoneyBuilder) {
            usedX = child;
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
      case 'allowed':
      case 'allowedX':
        return [
          'FhirUnsignedIntBuilder',
          'FhirStringBuilder',
          'MoneyBuilder',
        ];
      case 'allowedUnsignedInt':
        return ['FhirUnsignedIntBuilder'];
      case 'allowedString':
        return ['FhirStringBuilder'];
      case 'allowedMoney':
        return ['MoneyBuilder'];
      case 'used':
      case 'usedX':
        return [
          'FhirUnsignedIntBuilder',
          'MoneyBuilder',
        ];
      case 'usedUnsignedInt':
        return ['FhirUnsignedIntBuilder'];
      case 'usedMoney':
        return ['MoneyBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExplanationOfBenefitFinancialBuilder]
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
      case 'allowed':
      case 'allowedX':
      case 'allowedUnsignedInt':
        {
          allowedX = FhirUnsignedIntBuilder.empty();
          return;
        }
      case 'allowedString':
        {
          allowedX = FhirStringBuilder.empty();
          return;
        }
      case 'allowedMoney':
        {
          allowedX = MoneyBuilder.empty();
          return;
        }
      case 'used':
      case 'usedX':
      case 'usedUnsignedInt':
        {
          usedX = FhirUnsignedIntBuilder.empty();
          return;
        }
      case 'usedMoney':
        {
          usedX = MoneyBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ExplanationOfBenefitFinancialBuilder clone() => throw UnimplementedError();
  @override
  ExplanationOfBenefitFinancialBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? type,
    AllowedXExplanationOfBenefitFinancialBuilder? allowedX,
    UsedXExplanationOfBenefitFinancialBuilder? usedX,
    FhirUnsignedIntBuilder? allowedUnsignedInt,
    FhirStringBuilder? allowedString,
    MoneyBuilder? allowedMoney,
    FhirUnsignedIntBuilder? usedUnsignedInt,
    MoneyBuilder? usedMoney,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ExplanationOfBenefitFinancialBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      allowedX: allowedX ??
          allowedUnsignedInt ??
          allowedString ??
          allowedMoney ??
          this.allowedX,
      usedX: usedX ?? usedUnsignedInt ?? usedMoney ?? this.usedX,
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
    if (o is! ExplanationOfBenefitFinancialBuilder) {
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
      allowedX,
      o.allowedX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      usedX,
      o.usedX,
    )) {
      return false;
    }
    return true;
  }
}
