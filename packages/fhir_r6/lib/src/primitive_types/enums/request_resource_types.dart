// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for RequestResourceTypes
enum RequestResourceTypesEnum {
  /// Base
  base,

  /// Element
  element_,

  /// BackboneElement
  backboneElement,

  /// DataType
  dataType,

  /// Address
  address,

  /// Annotation
  annotation,

  /// Attachment
  attachment,

  /// Availability
  availability,

  /// BackboneType
  backboneType,

  /// Dosage
  dosage,

  /// ElementDefinition
  elementDefinition,

  /// MarketingStatus
  marketingStatus,

  /// ProductShelfLife
  productShelfLife,

  /// Timing
  timing,

  /// CodeableConcept
  codeableConcept,

  /// CodeableReference
  codeableReference,

  /// Coding
  coding,

  /// ContactDetail
  contactDetail,

  /// ContactPoint
  contactPoint,

  /// Contributor
  contributor,

  /// DataRequirement
  dataRequirement,

  /// Expression
  expression,

  /// ExtendedContactDetail
  extendedContactDetail,

  /// Extension
  extension,

  /// HumanName
  humanName,

  /// Identifier
  identifier,

  /// Meta
  meta,

  /// MonetaryComponent
  monetaryComponent,

  /// Money
  money,

  /// Narrative
  narrative,

  /// ParameterDefinition
  parameterDefinition,

  /// Period
  period,

  /// PrimitiveType
  primitiveType,

  /// base64Binary
  base64Binary,

  /// boolean
  boolean,

  /// date
  date,

  /// dateTime
  dateTime,

  /// decimal
  decimal,

  /// instant
  instant,

  /// integer
  integer,

  /// positiveInt
  positiveInt,

  /// unsignedInt
  unsignedInt,

  /// integer64
  integer64,

  /// string
  string,

  /// code
  code,

  /// id
  id_,

  /// markdown
  markdown,

  /// time
  time,

  /// uri
  uri,

  /// canonical
  canonical,

  /// oid
  oid,

  /// url
  url,

  /// uuid
  uuid,

  /// Quantity
  quantity,

  /// Age
  age,

  /// Count
  count,

  /// Distance
  distance,

  /// Duration
  duration,

  /// Range
  range,

  /// Ratio
  ratio,

  /// RatioRange
  ratioRange,

  /// Reference
  reference,

  /// RelatedArtifact
  relatedArtifact,

  /// SampledData
  sampledData,

  /// Signature
  signature,

  /// TriggerDefinition
  triggerDefinition,

  /// UsageContext
  usageContext,

  /// VirtualServiceDetail
  virtualServiceDetail,

  /// xhtml
  xhtml,

  /// Resource
  resource,

  /// Binary
  binary,

  /// Bundle
  bundle,

  /// DomainResource
  domainResource,

  /// Account
  account,

  /// ActivityDefinition
  activityDefinition,

  /// ActorDefinition
  actorDefinition,

  /// AdministrableProductDefinition
  administrableProductDefinition,

  /// AdverseEvent
  adverseEvent,

  /// AllergyIntolerance
  allergyIntolerance,

  /// Appointment
  appointment,

  /// AppointmentResponse
  appointmentResponse,

  /// ArtifactAssessment
  artifactAssessment,

  /// AuditEvent
  auditEvent,

  /// Basic
  basic,

  /// BiologicallyDerivedProduct
  biologicallyDerivedProduct,

  /// BiologicallyDerivedProductDispense
  biologicallyDerivedProductDispense,

  /// BodyStructure
  bodyStructure,

  /// CanonicalResource
  canonicalResource,

  /// CapabilityStatement
  capabilityStatement,

  /// CarePlan
  carePlan,

  /// CareTeam
  careTeam,

  /// ChargeItem
  chargeItem,

  /// ChargeItemDefinition
  chargeItemDefinition,

  /// Citation
  citation,

  /// Claim
  claim,

  /// ClaimResponse
  claimResponse,

  /// ClinicalImpression
  clinicalImpression,

  /// ClinicalUseDefinition
  clinicalUseDefinition,

  /// CodeSystem
  codeSystem,

  /// Communication
  communication,

  /// CommunicationRequest
  communicationRequest,

  /// CompartmentDefinition
  compartmentDefinition,

  /// Composition
  composition,

  /// ConceptMap
  conceptMap,

  /// Condition
  condition,

  /// ConditionDefinition
  conditionDefinition,

  /// Consent
  consent,

  /// Contract
  contract,

  /// Coverage
  coverage,

  /// CoverageEligibilityRequest
  coverageEligibilityRequest,

  /// CoverageEligibilityResponse
  coverageEligibilityResponse,

  /// DetectedIssue
  detectedIssue,

  /// Device
  device,

  /// DeviceAssociation
  deviceAssociation,

  /// DeviceDefinition
  deviceDefinition,

  /// DeviceDispense
  deviceDispense,

  /// DeviceMetric
  deviceMetric,

  /// DeviceRequest
  deviceRequest,

  /// DeviceUsage
  deviceUsage,

  /// DiagnosticReport
  diagnosticReport,

  /// DocumentReference
  documentReference,

  /// Encounter
  encounter,

  /// EncounterHistory
  encounterHistory,

  /// Endpoint
  endpoint,

  /// EnrollmentRequest
  enrollmentRequest,

  /// EnrollmentResponse
  enrollmentResponse,

  /// EpisodeOfCare
  episodeOfCare,

  /// EventDefinition
  eventDefinition,

  /// Evidence
  evidence,

  /// EvidenceReport
  evidenceReport,

  /// EvidenceVariable
  evidenceVariable,

  /// ExampleScenario
  exampleScenario,

  /// ExplanationOfBenefit
  explanationOfBenefit,

  /// FamilyMemberHistory
  familyMemberHistory,

  /// Flag
  flag,

  /// FormularyItem
  formularyItem,

  /// GenomicStudy
  genomicStudy,

  /// Goal
  goal,

  /// GraphDefinition
  graphDefinition,

  /// Group
  group,

  /// GuidanceResponse
  guidanceResponse,

  /// HealthcareService
  healthcareService,

  /// ImagingSelection
  imagingSelection,

  /// ImagingStudy
  imagingStudy,

  /// Immunization
  immunization,

  /// ImmunizationEvaluation
  immunizationEvaluation,

  /// ImmunizationRecommendation
  immunizationRecommendation,

  /// ImplementationGuide
  implementationGuide,

  /// Ingredient
  ingredient,

  /// InsurancePlan
  insurancePlan,

  /// InventoryItem
  inventoryItem,

  /// InventoryReport
  inventoryReport,

  /// Invoice
  invoice,

  /// Library
  library,

  /// Linkage
  linkage,

  /// List
  list_,

  /// Location
  location,

  /// ManufacturedItemDefinition
  manufacturedItemDefinition,

  /// Measure
  measure,

  /// MeasureReport
  measureReport,

  /// Medication
  medication,

  /// MedicationAdministration
  medicationAdministration,

  /// MedicationDispense
  medicationDispense,

  /// MedicationKnowledge
  medicationKnowledge,

  /// MedicationRequest
  medicationRequest,

  /// MedicationStatement
  medicationStatement,

  /// MedicinalProductDefinition
  medicinalProductDefinition,

  /// MessageDefinition
  messageDefinition,

  /// MessageHeader
  messageHeader,

  /// MetadataResource
  metadataResource,

  /// MolecularSequence
  molecularSequence,

  /// NamingSystem
  namingSystem,

  /// NutritionIntake
  nutritionIntake,

  /// NutritionOrder
  nutritionOrder,

  /// NutritionProduct
  nutritionProduct,

  /// Observation
  observation,

  /// ObservationDefinition
  observationDefinition,

  /// OperationDefinition
  operationDefinition,

  /// OperationOutcome
  operationOutcome,

  /// Organization
  organization,

  /// OrganizationAffiliation
  organizationAffiliation,

  /// PackagedProductDefinition
  packagedProductDefinition,

  /// Patient
  patient,

  /// PaymentNotice
  paymentNotice,

  /// PaymentReconciliation
  paymentReconciliation,

  /// Permission
  permission,

  /// Person
  person,

  /// PlanDefinition
  planDefinition,

  /// Practitioner
  practitioner,

  /// PractitionerRole
  practitionerRole,

  /// Procedure
  procedure,

  /// Provenance
  provenance,

  /// Questionnaire
  questionnaire,

  /// QuestionnaireResponse
  questionnaireResponse,

  /// RegulatedAuthorization
  regulatedAuthorization,

  /// RelatedPerson
  relatedPerson,

  /// RequestOrchestration
  requestOrchestration,

  /// Requirements
  requirements,

  /// ResearchStudy
  researchStudy,

  /// ResearchSubject
  researchSubject,

  /// RiskAssessment
  riskAssessment,

  /// Schedule
  schedule,

  /// SearchParameter
  searchParameter,

  /// ServiceRequest
  serviceRequest,

  /// Slot
  slot,

  /// Specimen
  specimen,

  /// SpecimenDefinition
  specimenDefinition,

  /// StructureDefinition
  structureDefinition,

  /// StructureMap
  structureMap,

  /// Subscription
  subscription,

  /// SubscriptionStatus
  subscriptionStatus,

  /// SubscriptionTopic
  subscriptionTopic,

  /// Substance
  substance,

  /// SubstanceDefinition
  substanceDefinition,

  /// SubstanceNucleicAcid
  substanceNucleicAcid,

  /// SubstancePolymer
  substancePolymer,

  /// SubstanceProtein
  substanceProtein,

  /// SubstanceReferenceInformation
  substanceReferenceInformation,

  /// SubstanceSourceMaterial
  substanceSourceMaterial,

  /// SupplyDelivery
  supplyDelivery,

  /// SupplyRequest
  supplyRequest,

  /// Task
  task,

  /// TerminologyCapabilities
  terminologyCapabilities,

  /// TestPlan
  testPlan,

  /// TestReport
  testReport,

  /// TestScript
  testScript,

  /// Transport
  transport,

  /// ValueSet
  valueSet,

  /// VerificationResult
  verificationResult,

  /// VisionPrescription
  visionPrescription,

  /// Parameters
  parameters,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case RequestResourceTypesEnum.base:
        return 'Base';
      case RequestResourceTypesEnum.element_:
        return 'Element';
      case RequestResourceTypesEnum.backboneElement:
        return 'BackboneElement';
      case RequestResourceTypesEnum.dataType:
        return 'DataType';
      case RequestResourceTypesEnum.address:
        return 'Address';
      case RequestResourceTypesEnum.annotation:
        return 'Annotation';
      case RequestResourceTypesEnum.attachment:
        return 'Attachment';
      case RequestResourceTypesEnum.availability:
        return 'Availability';
      case RequestResourceTypesEnum.backboneType:
        return 'BackboneType';
      case RequestResourceTypesEnum.dosage:
        return 'Dosage';
      case RequestResourceTypesEnum.elementDefinition:
        return 'ElementDefinition';
      case RequestResourceTypesEnum.marketingStatus:
        return 'MarketingStatus';
      case RequestResourceTypesEnum.productShelfLife:
        return 'ProductShelfLife';
      case RequestResourceTypesEnum.timing:
        return 'Timing';
      case RequestResourceTypesEnum.codeableConcept:
        return 'CodeableConcept';
      case RequestResourceTypesEnum.codeableReference:
        return 'CodeableReference';
      case RequestResourceTypesEnum.coding:
        return 'Coding';
      case RequestResourceTypesEnum.contactDetail:
        return 'ContactDetail';
      case RequestResourceTypesEnum.contactPoint:
        return 'ContactPoint';
      case RequestResourceTypesEnum.contributor:
        return 'Contributor';
      case RequestResourceTypesEnum.dataRequirement:
        return 'DataRequirement';
      case RequestResourceTypesEnum.expression:
        return 'Expression';
      case RequestResourceTypesEnum.extendedContactDetail:
        return 'ExtendedContactDetail';
      case RequestResourceTypesEnum.extension:
        return 'Extension';
      case RequestResourceTypesEnum.humanName:
        return 'HumanName';
      case RequestResourceTypesEnum.identifier:
        return 'Identifier';
      case RequestResourceTypesEnum.meta:
        return 'Meta';
      case RequestResourceTypesEnum.monetaryComponent:
        return 'MonetaryComponent';
      case RequestResourceTypesEnum.money:
        return 'Money';
      case RequestResourceTypesEnum.narrative:
        return 'Narrative';
      case RequestResourceTypesEnum.parameterDefinition:
        return 'ParameterDefinition';
      case RequestResourceTypesEnum.period:
        return 'Period';
      case RequestResourceTypesEnum.primitiveType:
        return 'PrimitiveType';
      case RequestResourceTypesEnum.base64Binary:
        return 'base64Binary';
      case RequestResourceTypesEnum.boolean:
        return 'boolean';
      case RequestResourceTypesEnum.date:
        return 'date';
      case RequestResourceTypesEnum.dateTime:
        return 'dateTime';
      case RequestResourceTypesEnum.decimal:
        return 'decimal';
      case RequestResourceTypesEnum.instant:
        return 'instant';
      case RequestResourceTypesEnum.integer:
        return 'integer';
      case RequestResourceTypesEnum.positiveInt:
        return 'positiveInt';
      case RequestResourceTypesEnum.unsignedInt:
        return 'unsignedInt';
      case RequestResourceTypesEnum.integer64:
        return 'integer64';
      case RequestResourceTypesEnum.string:
        return 'string';
      case RequestResourceTypesEnum.code:
        return 'code';
      case RequestResourceTypesEnum.id_:
        return 'id';
      case RequestResourceTypesEnum.markdown:
        return 'markdown';
      case RequestResourceTypesEnum.time:
        return 'time';
      case RequestResourceTypesEnum.uri:
        return 'uri';
      case RequestResourceTypesEnum.canonical:
        return 'canonical';
      case RequestResourceTypesEnum.oid:
        return 'oid';
      case RequestResourceTypesEnum.url:
        return 'url';
      case RequestResourceTypesEnum.uuid:
        return 'uuid';
      case RequestResourceTypesEnum.quantity:
        return 'Quantity';
      case RequestResourceTypesEnum.age:
        return 'Age';
      case RequestResourceTypesEnum.count:
        return 'Count';
      case RequestResourceTypesEnum.distance:
        return 'Distance';
      case RequestResourceTypesEnum.duration:
        return 'Duration';
      case RequestResourceTypesEnum.range:
        return 'Range';
      case RequestResourceTypesEnum.ratio:
        return 'Ratio';
      case RequestResourceTypesEnum.ratioRange:
        return 'RatioRange';
      case RequestResourceTypesEnum.reference:
        return 'Reference';
      case RequestResourceTypesEnum.relatedArtifact:
        return 'RelatedArtifact';
      case RequestResourceTypesEnum.sampledData:
        return 'SampledData';
      case RequestResourceTypesEnum.signature:
        return 'Signature';
      case RequestResourceTypesEnum.triggerDefinition:
        return 'TriggerDefinition';
      case RequestResourceTypesEnum.usageContext:
        return 'UsageContext';
      case RequestResourceTypesEnum.virtualServiceDetail:
        return 'VirtualServiceDetail';
      case RequestResourceTypesEnum.xhtml:
        return 'xhtml';
      case RequestResourceTypesEnum.resource:
        return 'Resource';
      case RequestResourceTypesEnum.binary:
        return 'Binary';
      case RequestResourceTypesEnum.bundle:
        return 'Bundle';
      case RequestResourceTypesEnum.domainResource:
        return 'DomainResource';
      case RequestResourceTypesEnum.account:
        return 'Account';
      case RequestResourceTypesEnum.activityDefinition:
        return 'ActivityDefinition';
      case RequestResourceTypesEnum.actorDefinition:
        return 'ActorDefinition';
      case RequestResourceTypesEnum.administrableProductDefinition:
        return 'AdministrableProductDefinition';
      case RequestResourceTypesEnum.adverseEvent:
        return 'AdverseEvent';
      case RequestResourceTypesEnum.allergyIntolerance:
        return 'AllergyIntolerance';
      case RequestResourceTypesEnum.appointment:
        return 'Appointment';
      case RequestResourceTypesEnum.appointmentResponse:
        return 'AppointmentResponse';
      case RequestResourceTypesEnum.artifactAssessment:
        return 'ArtifactAssessment';
      case RequestResourceTypesEnum.auditEvent:
        return 'AuditEvent';
      case RequestResourceTypesEnum.basic:
        return 'Basic';
      case RequestResourceTypesEnum.biologicallyDerivedProduct:
        return 'BiologicallyDerivedProduct';
      case RequestResourceTypesEnum.biologicallyDerivedProductDispense:
        return 'BiologicallyDerivedProductDispense';
      case RequestResourceTypesEnum.bodyStructure:
        return 'BodyStructure';
      case RequestResourceTypesEnum.canonicalResource:
        return 'CanonicalResource';
      case RequestResourceTypesEnum.capabilityStatement:
        return 'CapabilityStatement';
      case RequestResourceTypesEnum.carePlan:
        return 'CarePlan';
      case RequestResourceTypesEnum.careTeam:
        return 'CareTeam';
      case RequestResourceTypesEnum.chargeItem:
        return 'ChargeItem';
      case RequestResourceTypesEnum.chargeItemDefinition:
        return 'ChargeItemDefinition';
      case RequestResourceTypesEnum.citation:
        return 'Citation';
      case RequestResourceTypesEnum.claim:
        return 'Claim';
      case RequestResourceTypesEnum.claimResponse:
        return 'ClaimResponse';
      case RequestResourceTypesEnum.clinicalImpression:
        return 'ClinicalImpression';
      case RequestResourceTypesEnum.clinicalUseDefinition:
        return 'ClinicalUseDefinition';
      case RequestResourceTypesEnum.codeSystem:
        return 'CodeSystem';
      case RequestResourceTypesEnum.communication:
        return 'Communication';
      case RequestResourceTypesEnum.communicationRequest:
        return 'CommunicationRequest';
      case RequestResourceTypesEnum.compartmentDefinition:
        return 'CompartmentDefinition';
      case RequestResourceTypesEnum.composition:
        return 'Composition';
      case RequestResourceTypesEnum.conceptMap:
        return 'ConceptMap';
      case RequestResourceTypesEnum.condition:
        return 'Condition';
      case RequestResourceTypesEnum.conditionDefinition:
        return 'ConditionDefinition';
      case RequestResourceTypesEnum.consent:
        return 'Consent';
      case RequestResourceTypesEnum.contract:
        return 'Contract';
      case RequestResourceTypesEnum.coverage:
        return 'Coverage';
      case RequestResourceTypesEnum.coverageEligibilityRequest:
        return 'CoverageEligibilityRequest';
      case RequestResourceTypesEnum.coverageEligibilityResponse:
        return 'CoverageEligibilityResponse';
      case RequestResourceTypesEnum.detectedIssue:
        return 'DetectedIssue';
      case RequestResourceTypesEnum.device:
        return 'Device';
      case RequestResourceTypesEnum.deviceAssociation:
        return 'DeviceAssociation';
      case RequestResourceTypesEnum.deviceDefinition:
        return 'DeviceDefinition';
      case RequestResourceTypesEnum.deviceDispense:
        return 'DeviceDispense';
      case RequestResourceTypesEnum.deviceMetric:
        return 'DeviceMetric';
      case RequestResourceTypesEnum.deviceRequest:
        return 'DeviceRequest';
      case RequestResourceTypesEnum.deviceUsage:
        return 'DeviceUsage';
      case RequestResourceTypesEnum.diagnosticReport:
        return 'DiagnosticReport';
      case RequestResourceTypesEnum.documentReference:
        return 'DocumentReference';
      case RequestResourceTypesEnum.encounter:
        return 'Encounter';
      case RequestResourceTypesEnum.encounterHistory:
        return 'EncounterHistory';
      case RequestResourceTypesEnum.endpoint:
        return 'Endpoint';
      case RequestResourceTypesEnum.enrollmentRequest:
        return 'EnrollmentRequest';
      case RequestResourceTypesEnum.enrollmentResponse:
        return 'EnrollmentResponse';
      case RequestResourceTypesEnum.episodeOfCare:
        return 'EpisodeOfCare';
      case RequestResourceTypesEnum.eventDefinition:
        return 'EventDefinition';
      case RequestResourceTypesEnum.evidence:
        return 'Evidence';
      case RequestResourceTypesEnum.evidenceReport:
        return 'EvidenceReport';
      case RequestResourceTypesEnum.evidenceVariable:
        return 'EvidenceVariable';
      case RequestResourceTypesEnum.exampleScenario:
        return 'ExampleScenario';
      case RequestResourceTypesEnum.explanationOfBenefit:
        return 'ExplanationOfBenefit';
      case RequestResourceTypesEnum.familyMemberHistory:
        return 'FamilyMemberHistory';
      case RequestResourceTypesEnum.flag:
        return 'Flag';
      case RequestResourceTypesEnum.formularyItem:
        return 'FormularyItem';
      case RequestResourceTypesEnum.genomicStudy:
        return 'GenomicStudy';
      case RequestResourceTypesEnum.goal:
        return 'Goal';
      case RequestResourceTypesEnum.graphDefinition:
        return 'GraphDefinition';
      case RequestResourceTypesEnum.group:
        return 'Group';
      case RequestResourceTypesEnum.guidanceResponse:
        return 'GuidanceResponse';
      case RequestResourceTypesEnum.healthcareService:
        return 'HealthcareService';
      case RequestResourceTypesEnum.imagingSelection:
        return 'ImagingSelection';
      case RequestResourceTypesEnum.imagingStudy:
        return 'ImagingStudy';
      case RequestResourceTypesEnum.immunization:
        return 'Immunization';
      case RequestResourceTypesEnum.immunizationEvaluation:
        return 'ImmunizationEvaluation';
      case RequestResourceTypesEnum.immunizationRecommendation:
        return 'ImmunizationRecommendation';
      case RequestResourceTypesEnum.implementationGuide:
        return 'ImplementationGuide';
      case RequestResourceTypesEnum.ingredient:
        return 'Ingredient';
      case RequestResourceTypesEnum.insurancePlan:
        return 'InsurancePlan';
      case RequestResourceTypesEnum.inventoryItem:
        return 'InventoryItem';
      case RequestResourceTypesEnum.inventoryReport:
        return 'InventoryReport';
      case RequestResourceTypesEnum.invoice:
        return 'Invoice';
      case RequestResourceTypesEnum.library:
        return 'Library';
      case RequestResourceTypesEnum.linkage:
        return 'Linkage';
      case RequestResourceTypesEnum.list_:
        return 'List';
      case RequestResourceTypesEnum.location:
        return 'Location';
      case RequestResourceTypesEnum.manufacturedItemDefinition:
        return 'ManufacturedItemDefinition';
      case RequestResourceTypesEnum.measure:
        return 'Measure';
      case RequestResourceTypesEnum.measureReport:
        return 'MeasureReport';
      case RequestResourceTypesEnum.medication:
        return 'Medication';
      case RequestResourceTypesEnum.medicationAdministration:
        return 'MedicationAdministration';
      case RequestResourceTypesEnum.medicationDispense:
        return 'MedicationDispense';
      case RequestResourceTypesEnum.medicationKnowledge:
        return 'MedicationKnowledge';
      case RequestResourceTypesEnum.medicationRequest:
        return 'MedicationRequest';
      case RequestResourceTypesEnum.medicationStatement:
        return 'MedicationStatement';
      case RequestResourceTypesEnum.medicinalProductDefinition:
        return 'MedicinalProductDefinition';
      case RequestResourceTypesEnum.messageDefinition:
        return 'MessageDefinition';
      case RequestResourceTypesEnum.messageHeader:
        return 'MessageHeader';
      case RequestResourceTypesEnum.metadataResource:
        return 'MetadataResource';
      case RequestResourceTypesEnum.molecularSequence:
        return 'MolecularSequence';
      case RequestResourceTypesEnum.namingSystem:
        return 'NamingSystem';
      case RequestResourceTypesEnum.nutritionIntake:
        return 'NutritionIntake';
      case RequestResourceTypesEnum.nutritionOrder:
        return 'NutritionOrder';
      case RequestResourceTypesEnum.nutritionProduct:
        return 'NutritionProduct';
      case RequestResourceTypesEnum.observation:
        return 'Observation';
      case RequestResourceTypesEnum.observationDefinition:
        return 'ObservationDefinition';
      case RequestResourceTypesEnum.operationDefinition:
        return 'OperationDefinition';
      case RequestResourceTypesEnum.operationOutcome:
        return 'OperationOutcome';
      case RequestResourceTypesEnum.organization:
        return 'Organization';
      case RequestResourceTypesEnum.organizationAffiliation:
        return 'OrganizationAffiliation';
      case RequestResourceTypesEnum.packagedProductDefinition:
        return 'PackagedProductDefinition';
      case RequestResourceTypesEnum.patient:
        return 'Patient';
      case RequestResourceTypesEnum.paymentNotice:
        return 'PaymentNotice';
      case RequestResourceTypesEnum.paymentReconciliation:
        return 'PaymentReconciliation';
      case RequestResourceTypesEnum.permission:
        return 'Permission';
      case RequestResourceTypesEnum.person:
        return 'Person';
      case RequestResourceTypesEnum.planDefinition:
        return 'PlanDefinition';
      case RequestResourceTypesEnum.practitioner:
        return 'Practitioner';
      case RequestResourceTypesEnum.practitionerRole:
        return 'PractitionerRole';
      case RequestResourceTypesEnum.procedure:
        return 'Procedure';
      case RequestResourceTypesEnum.provenance:
        return 'Provenance';
      case RequestResourceTypesEnum.questionnaire:
        return 'Questionnaire';
      case RequestResourceTypesEnum.questionnaireResponse:
        return 'QuestionnaireResponse';
      case RequestResourceTypesEnum.regulatedAuthorization:
        return 'RegulatedAuthorization';
      case RequestResourceTypesEnum.relatedPerson:
        return 'RelatedPerson';
      case RequestResourceTypesEnum.requestOrchestration:
        return 'RequestOrchestration';
      case RequestResourceTypesEnum.requirements:
        return 'Requirements';
      case RequestResourceTypesEnum.researchStudy:
        return 'ResearchStudy';
      case RequestResourceTypesEnum.researchSubject:
        return 'ResearchSubject';
      case RequestResourceTypesEnum.riskAssessment:
        return 'RiskAssessment';
      case RequestResourceTypesEnum.schedule:
        return 'Schedule';
      case RequestResourceTypesEnum.searchParameter:
        return 'SearchParameter';
      case RequestResourceTypesEnum.serviceRequest:
        return 'ServiceRequest';
      case RequestResourceTypesEnum.slot:
        return 'Slot';
      case RequestResourceTypesEnum.specimen:
        return 'Specimen';
      case RequestResourceTypesEnum.specimenDefinition:
        return 'SpecimenDefinition';
      case RequestResourceTypesEnum.structureDefinition:
        return 'StructureDefinition';
      case RequestResourceTypesEnum.structureMap:
        return 'StructureMap';
      case RequestResourceTypesEnum.subscription:
        return 'Subscription';
      case RequestResourceTypesEnum.subscriptionStatus:
        return 'SubscriptionStatus';
      case RequestResourceTypesEnum.subscriptionTopic:
        return 'SubscriptionTopic';
      case RequestResourceTypesEnum.substance:
        return 'Substance';
      case RequestResourceTypesEnum.substanceDefinition:
        return 'SubstanceDefinition';
      case RequestResourceTypesEnum.substanceNucleicAcid:
        return 'SubstanceNucleicAcid';
      case RequestResourceTypesEnum.substancePolymer:
        return 'SubstancePolymer';
      case RequestResourceTypesEnum.substanceProtein:
        return 'SubstanceProtein';
      case RequestResourceTypesEnum.substanceReferenceInformation:
        return 'SubstanceReferenceInformation';
      case RequestResourceTypesEnum.substanceSourceMaterial:
        return 'SubstanceSourceMaterial';
      case RequestResourceTypesEnum.supplyDelivery:
        return 'SupplyDelivery';
      case RequestResourceTypesEnum.supplyRequest:
        return 'SupplyRequest';
      case RequestResourceTypesEnum.task:
        return 'Task';
      case RequestResourceTypesEnum.terminologyCapabilities:
        return 'TerminologyCapabilities';
      case RequestResourceTypesEnum.testPlan:
        return 'TestPlan';
      case RequestResourceTypesEnum.testReport:
        return 'TestReport';
      case RequestResourceTypesEnum.testScript:
        return 'TestScript';
      case RequestResourceTypesEnum.transport:
        return 'Transport';
      case RequestResourceTypesEnum.valueSet:
        return 'ValueSet';
      case RequestResourceTypesEnum.verificationResult:
        return 'VerificationResult';
      case RequestResourceTypesEnum.visionPrescription:
        return 'VisionPrescription';
      case RequestResourceTypesEnum.parameters:
        return 'Parameters';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static RequestResourceTypesEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return RequestResourceTypesEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static RequestResourceTypesEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'Base':
        return RequestResourceTypesEnum.base;
      case 'Element':
        return RequestResourceTypesEnum.element_;
      case 'BackboneElement':
        return RequestResourceTypesEnum.backboneElement;
      case 'DataType':
        return RequestResourceTypesEnum.dataType;
      case 'Address':
        return RequestResourceTypesEnum.address;
      case 'Annotation':
        return RequestResourceTypesEnum.annotation;
      case 'Attachment':
        return RequestResourceTypesEnum.attachment;
      case 'Availability':
        return RequestResourceTypesEnum.availability;
      case 'BackboneType':
        return RequestResourceTypesEnum.backboneType;
      case 'Dosage':
        return RequestResourceTypesEnum.dosage;
      case 'ElementDefinition':
        return RequestResourceTypesEnum.elementDefinition;
      case 'MarketingStatus':
        return RequestResourceTypesEnum.marketingStatus;
      case 'ProductShelfLife':
        return RequestResourceTypesEnum.productShelfLife;
      case 'Timing':
        return RequestResourceTypesEnum.timing;
      case 'CodeableConcept':
        return RequestResourceTypesEnum.codeableConcept;
      case 'CodeableReference':
        return RequestResourceTypesEnum.codeableReference;
      case 'Coding':
        return RequestResourceTypesEnum.coding;
      case 'ContactDetail':
        return RequestResourceTypesEnum.contactDetail;
      case 'ContactPoint':
        return RequestResourceTypesEnum.contactPoint;
      case 'Contributor':
        return RequestResourceTypesEnum.contributor;
      case 'DataRequirement':
        return RequestResourceTypesEnum.dataRequirement;
      case 'Expression':
        return RequestResourceTypesEnum.expression;
      case 'ExtendedContactDetail':
        return RequestResourceTypesEnum.extendedContactDetail;
      case 'Extension':
        return RequestResourceTypesEnum.extension;
      case 'HumanName':
        return RequestResourceTypesEnum.humanName;
      case 'Identifier':
        return RequestResourceTypesEnum.identifier;
      case 'Meta':
        return RequestResourceTypesEnum.meta;
      case 'MonetaryComponent':
        return RequestResourceTypesEnum.monetaryComponent;
      case 'Money':
        return RequestResourceTypesEnum.money;
      case 'Narrative':
        return RequestResourceTypesEnum.narrative;
      case 'ParameterDefinition':
        return RequestResourceTypesEnum.parameterDefinition;
      case 'Period':
        return RequestResourceTypesEnum.period;
      case 'PrimitiveType':
        return RequestResourceTypesEnum.primitiveType;
      case 'base64Binary':
        return RequestResourceTypesEnum.base64Binary;
      case 'boolean':
        return RequestResourceTypesEnum.boolean;
      case 'date':
        return RequestResourceTypesEnum.date;
      case 'dateTime':
        return RequestResourceTypesEnum.dateTime;
      case 'decimal':
        return RequestResourceTypesEnum.decimal;
      case 'instant':
        return RequestResourceTypesEnum.instant;
      case 'integer':
        return RequestResourceTypesEnum.integer;
      case 'positiveInt':
        return RequestResourceTypesEnum.positiveInt;
      case 'unsignedInt':
        return RequestResourceTypesEnum.unsignedInt;
      case 'integer64':
        return RequestResourceTypesEnum.integer64;
      case 'string':
        return RequestResourceTypesEnum.string;
      case 'code':
        return RequestResourceTypesEnum.code;
      case 'id':
        return RequestResourceTypesEnum.id_;
      case 'markdown':
        return RequestResourceTypesEnum.markdown;
      case 'time':
        return RequestResourceTypesEnum.time;
      case 'uri':
        return RequestResourceTypesEnum.uri;
      case 'canonical':
        return RequestResourceTypesEnum.canonical;
      case 'oid':
        return RequestResourceTypesEnum.oid;
      case 'url':
        return RequestResourceTypesEnum.url;
      case 'uuid':
        return RequestResourceTypesEnum.uuid;
      case 'Quantity':
        return RequestResourceTypesEnum.quantity;
      case 'Age':
        return RequestResourceTypesEnum.age;
      case 'Count':
        return RequestResourceTypesEnum.count;
      case 'Distance':
        return RequestResourceTypesEnum.distance;
      case 'Duration':
        return RequestResourceTypesEnum.duration;
      case 'Range':
        return RequestResourceTypesEnum.range;
      case 'Ratio':
        return RequestResourceTypesEnum.ratio;
      case 'RatioRange':
        return RequestResourceTypesEnum.ratioRange;
      case 'Reference':
        return RequestResourceTypesEnum.reference;
      case 'RelatedArtifact':
        return RequestResourceTypesEnum.relatedArtifact;
      case 'SampledData':
        return RequestResourceTypesEnum.sampledData;
      case 'Signature':
        return RequestResourceTypesEnum.signature;
      case 'TriggerDefinition':
        return RequestResourceTypesEnum.triggerDefinition;
      case 'UsageContext':
        return RequestResourceTypesEnum.usageContext;
      case 'VirtualServiceDetail':
        return RequestResourceTypesEnum.virtualServiceDetail;
      case 'xhtml':
        return RequestResourceTypesEnum.xhtml;
      case 'Resource':
        return RequestResourceTypesEnum.resource;
      case 'Binary':
        return RequestResourceTypesEnum.binary;
      case 'Bundle':
        return RequestResourceTypesEnum.bundle;
      case 'DomainResource':
        return RequestResourceTypesEnum.domainResource;
      case 'Account':
        return RequestResourceTypesEnum.account;
      case 'ActivityDefinition':
        return RequestResourceTypesEnum.activityDefinition;
      case 'ActorDefinition':
        return RequestResourceTypesEnum.actorDefinition;
      case 'AdministrableProductDefinition':
        return RequestResourceTypesEnum.administrableProductDefinition;
      case 'AdverseEvent':
        return RequestResourceTypesEnum.adverseEvent;
      case 'AllergyIntolerance':
        return RequestResourceTypesEnum.allergyIntolerance;
      case 'Appointment':
        return RequestResourceTypesEnum.appointment;
      case 'AppointmentResponse':
        return RequestResourceTypesEnum.appointmentResponse;
      case 'ArtifactAssessment':
        return RequestResourceTypesEnum.artifactAssessment;
      case 'AuditEvent':
        return RequestResourceTypesEnum.auditEvent;
      case 'Basic':
        return RequestResourceTypesEnum.basic;
      case 'BiologicallyDerivedProduct':
        return RequestResourceTypesEnum.biologicallyDerivedProduct;
      case 'BiologicallyDerivedProductDispense':
        return RequestResourceTypesEnum.biologicallyDerivedProductDispense;
      case 'BodyStructure':
        return RequestResourceTypesEnum.bodyStructure;
      case 'CanonicalResource':
        return RequestResourceTypesEnum.canonicalResource;
      case 'CapabilityStatement':
        return RequestResourceTypesEnum.capabilityStatement;
      case 'CarePlan':
        return RequestResourceTypesEnum.carePlan;
      case 'CareTeam':
        return RequestResourceTypesEnum.careTeam;
      case 'ChargeItem':
        return RequestResourceTypesEnum.chargeItem;
      case 'ChargeItemDefinition':
        return RequestResourceTypesEnum.chargeItemDefinition;
      case 'Citation':
        return RequestResourceTypesEnum.citation;
      case 'Claim':
        return RequestResourceTypesEnum.claim;
      case 'ClaimResponse':
        return RequestResourceTypesEnum.claimResponse;
      case 'ClinicalImpression':
        return RequestResourceTypesEnum.clinicalImpression;
      case 'ClinicalUseDefinition':
        return RequestResourceTypesEnum.clinicalUseDefinition;
      case 'CodeSystem':
        return RequestResourceTypesEnum.codeSystem;
      case 'Communication':
        return RequestResourceTypesEnum.communication;
      case 'CommunicationRequest':
        return RequestResourceTypesEnum.communicationRequest;
      case 'CompartmentDefinition':
        return RequestResourceTypesEnum.compartmentDefinition;
      case 'Composition':
        return RequestResourceTypesEnum.composition;
      case 'ConceptMap':
        return RequestResourceTypesEnum.conceptMap;
      case 'Condition':
        return RequestResourceTypesEnum.condition;
      case 'ConditionDefinition':
        return RequestResourceTypesEnum.conditionDefinition;
      case 'Consent':
        return RequestResourceTypesEnum.consent;
      case 'Contract':
        return RequestResourceTypesEnum.contract;
      case 'Coverage':
        return RequestResourceTypesEnum.coverage;
      case 'CoverageEligibilityRequest':
        return RequestResourceTypesEnum.coverageEligibilityRequest;
      case 'CoverageEligibilityResponse':
        return RequestResourceTypesEnum.coverageEligibilityResponse;
      case 'DetectedIssue':
        return RequestResourceTypesEnum.detectedIssue;
      case 'Device':
        return RequestResourceTypesEnum.device;
      case 'DeviceAssociation':
        return RequestResourceTypesEnum.deviceAssociation;
      case 'DeviceDefinition':
        return RequestResourceTypesEnum.deviceDefinition;
      case 'DeviceDispense':
        return RequestResourceTypesEnum.deviceDispense;
      case 'DeviceMetric':
        return RequestResourceTypesEnum.deviceMetric;
      case 'DeviceRequest':
        return RequestResourceTypesEnum.deviceRequest;
      case 'DeviceUsage':
        return RequestResourceTypesEnum.deviceUsage;
      case 'DiagnosticReport':
        return RequestResourceTypesEnum.diagnosticReport;
      case 'DocumentReference':
        return RequestResourceTypesEnum.documentReference;
      case 'Encounter':
        return RequestResourceTypesEnum.encounter;
      case 'EncounterHistory':
        return RequestResourceTypesEnum.encounterHistory;
      case 'Endpoint':
        return RequestResourceTypesEnum.endpoint;
      case 'EnrollmentRequest':
        return RequestResourceTypesEnum.enrollmentRequest;
      case 'EnrollmentResponse':
        return RequestResourceTypesEnum.enrollmentResponse;
      case 'EpisodeOfCare':
        return RequestResourceTypesEnum.episodeOfCare;
      case 'EventDefinition':
        return RequestResourceTypesEnum.eventDefinition;
      case 'Evidence':
        return RequestResourceTypesEnum.evidence;
      case 'EvidenceReport':
        return RequestResourceTypesEnum.evidenceReport;
      case 'EvidenceVariable':
        return RequestResourceTypesEnum.evidenceVariable;
      case 'ExampleScenario':
        return RequestResourceTypesEnum.exampleScenario;
      case 'ExplanationOfBenefit':
        return RequestResourceTypesEnum.explanationOfBenefit;
      case 'FamilyMemberHistory':
        return RequestResourceTypesEnum.familyMemberHistory;
      case 'Flag':
        return RequestResourceTypesEnum.flag;
      case 'FormularyItem':
        return RequestResourceTypesEnum.formularyItem;
      case 'GenomicStudy':
        return RequestResourceTypesEnum.genomicStudy;
      case 'Goal':
        return RequestResourceTypesEnum.goal;
      case 'GraphDefinition':
        return RequestResourceTypesEnum.graphDefinition;
      case 'Group':
        return RequestResourceTypesEnum.group;
      case 'GuidanceResponse':
        return RequestResourceTypesEnum.guidanceResponse;
      case 'HealthcareService':
        return RequestResourceTypesEnum.healthcareService;
      case 'ImagingSelection':
        return RequestResourceTypesEnum.imagingSelection;
      case 'ImagingStudy':
        return RequestResourceTypesEnum.imagingStudy;
      case 'Immunization':
        return RequestResourceTypesEnum.immunization;
      case 'ImmunizationEvaluation':
        return RequestResourceTypesEnum.immunizationEvaluation;
      case 'ImmunizationRecommendation':
        return RequestResourceTypesEnum.immunizationRecommendation;
      case 'ImplementationGuide':
        return RequestResourceTypesEnum.implementationGuide;
      case 'Ingredient':
        return RequestResourceTypesEnum.ingredient;
      case 'InsurancePlan':
        return RequestResourceTypesEnum.insurancePlan;
      case 'InventoryItem':
        return RequestResourceTypesEnum.inventoryItem;
      case 'InventoryReport':
        return RequestResourceTypesEnum.inventoryReport;
      case 'Invoice':
        return RequestResourceTypesEnum.invoice;
      case 'Library':
        return RequestResourceTypesEnum.library;
      case 'Linkage':
        return RequestResourceTypesEnum.linkage;
      case 'List':
        return RequestResourceTypesEnum.list_;
      case 'Location':
        return RequestResourceTypesEnum.location;
      case 'ManufacturedItemDefinition':
        return RequestResourceTypesEnum.manufacturedItemDefinition;
      case 'Measure':
        return RequestResourceTypesEnum.measure;
      case 'MeasureReport':
        return RequestResourceTypesEnum.measureReport;
      case 'Medication':
        return RequestResourceTypesEnum.medication;
      case 'MedicationAdministration':
        return RequestResourceTypesEnum.medicationAdministration;
      case 'MedicationDispense':
        return RequestResourceTypesEnum.medicationDispense;
      case 'MedicationKnowledge':
        return RequestResourceTypesEnum.medicationKnowledge;
      case 'MedicationRequest':
        return RequestResourceTypesEnum.medicationRequest;
      case 'MedicationStatement':
        return RequestResourceTypesEnum.medicationStatement;
      case 'MedicinalProductDefinition':
        return RequestResourceTypesEnum.medicinalProductDefinition;
      case 'MessageDefinition':
        return RequestResourceTypesEnum.messageDefinition;
      case 'MessageHeader':
        return RequestResourceTypesEnum.messageHeader;
      case 'MetadataResource':
        return RequestResourceTypesEnum.metadataResource;
      case 'MolecularSequence':
        return RequestResourceTypesEnum.molecularSequence;
      case 'NamingSystem':
        return RequestResourceTypesEnum.namingSystem;
      case 'NutritionIntake':
        return RequestResourceTypesEnum.nutritionIntake;
      case 'NutritionOrder':
        return RequestResourceTypesEnum.nutritionOrder;
      case 'NutritionProduct':
        return RequestResourceTypesEnum.nutritionProduct;
      case 'Observation':
        return RequestResourceTypesEnum.observation;
      case 'ObservationDefinition':
        return RequestResourceTypesEnum.observationDefinition;
      case 'OperationDefinition':
        return RequestResourceTypesEnum.operationDefinition;
      case 'OperationOutcome':
        return RequestResourceTypesEnum.operationOutcome;
      case 'Organization':
        return RequestResourceTypesEnum.organization;
      case 'OrganizationAffiliation':
        return RequestResourceTypesEnum.organizationAffiliation;
      case 'PackagedProductDefinition':
        return RequestResourceTypesEnum.packagedProductDefinition;
      case 'Patient':
        return RequestResourceTypesEnum.patient;
      case 'PaymentNotice':
        return RequestResourceTypesEnum.paymentNotice;
      case 'PaymentReconciliation':
        return RequestResourceTypesEnum.paymentReconciliation;
      case 'Permission':
        return RequestResourceTypesEnum.permission;
      case 'Person':
        return RequestResourceTypesEnum.person;
      case 'PlanDefinition':
        return RequestResourceTypesEnum.planDefinition;
      case 'Practitioner':
        return RequestResourceTypesEnum.practitioner;
      case 'PractitionerRole':
        return RequestResourceTypesEnum.practitionerRole;
      case 'Procedure':
        return RequestResourceTypesEnum.procedure;
      case 'Provenance':
        return RequestResourceTypesEnum.provenance;
      case 'Questionnaire':
        return RequestResourceTypesEnum.questionnaire;
      case 'QuestionnaireResponse':
        return RequestResourceTypesEnum.questionnaireResponse;
      case 'RegulatedAuthorization':
        return RequestResourceTypesEnum.regulatedAuthorization;
      case 'RelatedPerson':
        return RequestResourceTypesEnum.relatedPerson;
      case 'RequestOrchestration':
        return RequestResourceTypesEnum.requestOrchestration;
      case 'Requirements':
        return RequestResourceTypesEnum.requirements;
      case 'ResearchStudy':
        return RequestResourceTypesEnum.researchStudy;
      case 'ResearchSubject':
        return RequestResourceTypesEnum.researchSubject;
      case 'RiskAssessment':
        return RequestResourceTypesEnum.riskAssessment;
      case 'Schedule':
        return RequestResourceTypesEnum.schedule;
      case 'SearchParameter':
        return RequestResourceTypesEnum.searchParameter;
      case 'ServiceRequest':
        return RequestResourceTypesEnum.serviceRequest;
      case 'Slot':
        return RequestResourceTypesEnum.slot;
      case 'Specimen':
        return RequestResourceTypesEnum.specimen;
      case 'SpecimenDefinition':
        return RequestResourceTypesEnum.specimenDefinition;
      case 'StructureDefinition':
        return RequestResourceTypesEnum.structureDefinition;
      case 'StructureMap':
        return RequestResourceTypesEnum.structureMap;
      case 'Subscription':
        return RequestResourceTypesEnum.subscription;
      case 'SubscriptionStatus':
        return RequestResourceTypesEnum.subscriptionStatus;
      case 'SubscriptionTopic':
        return RequestResourceTypesEnum.subscriptionTopic;
      case 'Substance':
        return RequestResourceTypesEnum.substance;
      case 'SubstanceDefinition':
        return RequestResourceTypesEnum.substanceDefinition;
      case 'SubstanceNucleicAcid':
        return RequestResourceTypesEnum.substanceNucleicAcid;
      case 'SubstancePolymer':
        return RequestResourceTypesEnum.substancePolymer;
      case 'SubstanceProtein':
        return RequestResourceTypesEnum.substanceProtein;
      case 'SubstanceReferenceInformation':
        return RequestResourceTypesEnum.substanceReferenceInformation;
      case 'SubstanceSourceMaterial':
        return RequestResourceTypesEnum.substanceSourceMaterial;
      case 'SupplyDelivery':
        return RequestResourceTypesEnum.supplyDelivery;
      case 'SupplyRequest':
        return RequestResourceTypesEnum.supplyRequest;
      case 'Task':
        return RequestResourceTypesEnum.task;
      case 'TerminologyCapabilities':
        return RequestResourceTypesEnum.terminologyCapabilities;
      case 'TestPlan':
        return RequestResourceTypesEnum.testPlan;
      case 'TestReport':
        return RequestResourceTypesEnum.testReport;
      case 'TestScript':
        return RequestResourceTypesEnum.testScript;
      case 'Transport':
        return RequestResourceTypesEnum.transport;
      case 'ValueSet':
        return RequestResourceTypesEnum.valueSet;
      case 'VerificationResult':
        return RequestResourceTypesEnum.verificationResult;
      case 'VisionPrescription':
        return RequestResourceTypesEnum.visionPrescription;
      case 'Parameters':
        return RequestResourceTypesEnum.parameters;
    }
    return null;
  }
}

/// All Resource Types that represent request resources
class RequestResourceTypes extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const RequestResourceTypes._({
    required super.valueString,
    this.valueEnum,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory RequestResourceTypes(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    final valueEnum = RequestResourceTypesEnum.fromString(valueString);
    return RequestResourceTypes._(
      valueString: valueString,
      valueEnum: valueEnum,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
    );
  }

  /// Factory constructor to create [RequestResourceTypes]
  /// from JSON.
  factory RequestResourceTypes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = RequestResourceTypesEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RequestResourceTypes._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'RequestResourceTypes cannot be constructed from JSON.',
      );
    }
    return RequestResourceTypes._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for RequestResourceTypes
  final RequestResourceTypesEnum? valueEnum;

  /// Base
  static const RequestResourceTypes base = RequestResourceTypes._(
    valueString: 'Base',
    valueEnum: RequestResourceTypesEnum.base,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Base',
    ),
  );

  /// Element_
  static const RequestResourceTypes element_ = RequestResourceTypes._(
    valueString: 'Element',
    valueEnum: RequestResourceTypesEnum.element_,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Element',
    ),
  );

  /// BackboneElement
  static const RequestResourceTypes backboneElement = RequestResourceTypes._(
    valueString: 'BackboneElement',
    valueEnum: RequestResourceTypesEnum.backboneElement,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'BackboneElement',
    ),
  );

  /// DataType
  static const RequestResourceTypes dataType = RequestResourceTypes._(
    valueString: 'DataType',
    valueEnum: RequestResourceTypesEnum.dataType,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'DataType',
    ),
  );

  /// Address
  static const RequestResourceTypes address = RequestResourceTypes._(
    valueString: 'Address',
    valueEnum: RequestResourceTypesEnum.address,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Address',
    ),
  );

  /// Annotation
  static const RequestResourceTypes annotation = RequestResourceTypes._(
    valueString: 'Annotation',
    valueEnum: RequestResourceTypesEnum.annotation,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Annotation',
    ),
  );

  /// Attachment
  static const RequestResourceTypes attachment = RequestResourceTypes._(
    valueString: 'Attachment',
    valueEnum: RequestResourceTypesEnum.attachment,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Attachment',
    ),
  );

  /// Availability
  static const RequestResourceTypes availability = RequestResourceTypes._(
    valueString: 'Availability',
    valueEnum: RequestResourceTypesEnum.availability,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Availability',
    ),
  );

  /// BackboneType
  static const RequestResourceTypes backboneType = RequestResourceTypes._(
    valueString: 'BackboneType',
    valueEnum: RequestResourceTypesEnum.backboneType,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'BackboneType',
    ),
  );

  /// Dosage
  static const RequestResourceTypes dosage = RequestResourceTypes._(
    valueString: 'Dosage',
    valueEnum: RequestResourceTypesEnum.dosage,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Dosage',
    ),
  );

  /// ElementDefinition
  static const RequestResourceTypes elementDefinition = RequestResourceTypes._(
    valueString: 'ElementDefinition',
    valueEnum: RequestResourceTypesEnum.elementDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ElementDefinition',
    ),
  );

  /// MarketingStatus
  static const RequestResourceTypes marketingStatus = RequestResourceTypes._(
    valueString: 'MarketingStatus',
    valueEnum: RequestResourceTypesEnum.marketingStatus,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'MarketingStatus',
    ),
  );

  /// ProductShelfLife
  static const RequestResourceTypes productShelfLife = RequestResourceTypes._(
    valueString: 'ProductShelfLife',
    valueEnum: RequestResourceTypesEnum.productShelfLife,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ProductShelfLife',
    ),
  );

  /// Timing
  static const RequestResourceTypes timing = RequestResourceTypes._(
    valueString: 'Timing',
    valueEnum: RequestResourceTypesEnum.timing,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Timing',
    ),
  );

  /// CodeableConcept
  static const RequestResourceTypes codeableConcept = RequestResourceTypes._(
    valueString: 'CodeableConcept',
    valueEnum: RequestResourceTypesEnum.codeableConcept,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'CodeableConcept',
    ),
  );

  /// CodeableReference
  static const RequestResourceTypes codeableReference = RequestResourceTypes._(
    valueString: 'CodeableReference',
    valueEnum: RequestResourceTypesEnum.codeableReference,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'CodeableReference',
    ),
  );

  /// Coding
  static const RequestResourceTypes coding = RequestResourceTypes._(
    valueString: 'Coding',
    valueEnum: RequestResourceTypesEnum.coding,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Coding',
    ),
  );

  /// ContactDetail
  static const RequestResourceTypes contactDetail = RequestResourceTypes._(
    valueString: 'ContactDetail',
    valueEnum: RequestResourceTypesEnum.contactDetail,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ContactDetail',
    ),
  );

  /// ContactPoint
  static const RequestResourceTypes contactPoint = RequestResourceTypes._(
    valueString: 'ContactPoint',
    valueEnum: RequestResourceTypesEnum.contactPoint,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ContactPoint',
    ),
  );

  /// Contributor
  static const RequestResourceTypes contributor = RequestResourceTypes._(
    valueString: 'Contributor',
    valueEnum: RequestResourceTypesEnum.contributor,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Contributor',
    ),
  );

  /// DataRequirement
  static const RequestResourceTypes dataRequirement = RequestResourceTypes._(
    valueString: 'DataRequirement',
    valueEnum: RequestResourceTypesEnum.dataRequirement,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'DataRequirement',
    ),
  );

  /// Expression
  static const RequestResourceTypes expression = RequestResourceTypes._(
    valueString: 'Expression',
    valueEnum: RequestResourceTypesEnum.expression,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Expression',
    ),
  );

  /// ExtendedContactDetail
  static const RequestResourceTypes extendedContactDetail =
      RequestResourceTypes._(
    valueString: 'ExtendedContactDetail',
    valueEnum: RequestResourceTypesEnum.extendedContactDetail,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ExtendedContactDetail',
    ),
  );

  /// Extension
  static const RequestResourceTypes extension = RequestResourceTypes._(
    valueString: 'Extension',
    valueEnum: RequestResourceTypesEnum.extension,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Extension',
    ),
  );

  /// HumanName
  static const RequestResourceTypes humanName = RequestResourceTypes._(
    valueString: 'HumanName',
    valueEnum: RequestResourceTypesEnum.humanName,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'HumanName',
    ),
  );

  /// Identifier
  static const RequestResourceTypes identifier = RequestResourceTypes._(
    valueString: 'Identifier',
    valueEnum: RequestResourceTypesEnum.identifier,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Identifier',
    ),
  );

  /// Meta
  static const RequestResourceTypes meta = RequestResourceTypes._(
    valueString: 'Meta',
    valueEnum: RequestResourceTypesEnum.meta,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Meta',
    ),
  );

  /// MonetaryComponent
  static const RequestResourceTypes monetaryComponent = RequestResourceTypes._(
    valueString: 'MonetaryComponent',
    valueEnum: RequestResourceTypesEnum.monetaryComponent,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'MonetaryComponent',
    ),
  );

  /// Money
  static const RequestResourceTypes money = RequestResourceTypes._(
    valueString: 'Money',
    valueEnum: RequestResourceTypesEnum.money,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Money',
    ),
  );

  /// Narrative
  static const RequestResourceTypes narrative = RequestResourceTypes._(
    valueString: 'Narrative',
    valueEnum: RequestResourceTypesEnum.narrative,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Narrative',
    ),
  );

  /// ParameterDefinition
  static const RequestResourceTypes parameterDefinition =
      RequestResourceTypes._(
    valueString: 'ParameterDefinition',
    valueEnum: RequestResourceTypesEnum.parameterDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ParameterDefinition',
    ),
  );

  /// Period
  static const RequestResourceTypes period = RequestResourceTypes._(
    valueString: 'Period',
    valueEnum: RequestResourceTypesEnum.period,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Period',
    ),
  );

  /// PrimitiveType
  static const RequestResourceTypes primitiveType = RequestResourceTypes._(
    valueString: 'PrimitiveType',
    valueEnum: RequestResourceTypesEnum.primitiveType,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'PrimitiveType',
    ),
  );

  /// base64Binary
  static const RequestResourceTypes base64Binary = RequestResourceTypes._(
    valueString: 'base64Binary',
    valueEnum: RequestResourceTypesEnum.base64Binary,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'base64Binary',
    ),
  );

  /// boolean
  static const RequestResourceTypes boolean = RequestResourceTypes._(
    valueString: 'boolean',
    valueEnum: RequestResourceTypesEnum.boolean,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'boolean',
    ),
  );

  /// date
  static const RequestResourceTypes date = RequestResourceTypes._(
    valueString: 'date',
    valueEnum: RequestResourceTypesEnum.date,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'date',
    ),
  );

  /// dateTime
  static const RequestResourceTypes dateTime = RequestResourceTypes._(
    valueString: 'dateTime',
    valueEnum: RequestResourceTypesEnum.dateTime,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'dateTime',
    ),
  );

  /// decimal
  static const RequestResourceTypes decimal = RequestResourceTypes._(
    valueString: 'decimal',
    valueEnum: RequestResourceTypesEnum.decimal,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'decimal',
    ),
  );

  /// instant
  static const RequestResourceTypes instant = RequestResourceTypes._(
    valueString: 'instant',
    valueEnum: RequestResourceTypesEnum.instant,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'instant',
    ),
  );

  /// integer
  static const RequestResourceTypes integer = RequestResourceTypes._(
    valueString: 'integer',
    valueEnum: RequestResourceTypesEnum.integer,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'integer',
    ),
  );

  /// positiveInt
  static const RequestResourceTypes positiveInt = RequestResourceTypes._(
    valueString: 'positiveInt',
    valueEnum: RequestResourceTypesEnum.positiveInt,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'positiveInt',
    ),
  );

  /// unsignedInt
  static const RequestResourceTypes unsignedInt = RequestResourceTypes._(
    valueString: 'unsignedInt',
    valueEnum: RequestResourceTypesEnum.unsignedInt,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'unsignedInt',
    ),
  );

  /// integer64
  static const RequestResourceTypes integer64 = RequestResourceTypes._(
    valueString: 'integer64',
    valueEnum: RequestResourceTypesEnum.integer64,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'integer64',
    ),
  );

  /// string
  static const RequestResourceTypes string = RequestResourceTypes._(
    valueString: 'string',
    valueEnum: RequestResourceTypesEnum.string,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'string',
    ),
  );

  /// code
  static const RequestResourceTypes code = RequestResourceTypes._(
    valueString: 'code',
    valueEnum: RequestResourceTypesEnum.code,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'code',
    ),
  );

  /// id
  static const RequestResourceTypes id_ = RequestResourceTypes._(
    valueString: 'id',
    valueEnum: RequestResourceTypesEnum.id_,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'id',
    ),
  );

  /// markdown
  static const RequestResourceTypes markdown = RequestResourceTypes._(
    valueString: 'markdown',
    valueEnum: RequestResourceTypesEnum.markdown,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'markdown',
    ),
  );

  /// time
  static const RequestResourceTypes time = RequestResourceTypes._(
    valueString: 'time',
    valueEnum: RequestResourceTypesEnum.time,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'time',
    ),
  );

  /// uri
  static const RequestResourceTypes uri = RequestResourceTypes._(
    valueString: 'uri',
    valueEnum: RequestResourceTypesEnum.uri,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'uri',
    ),
  );

  /// canonical
  static const RequestResourceTypes canonical = RequestResourceTypes._(
    valueString: 'canonical',
    valueEnum: RequestResourceTypesEnum.canonical,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'canonical',
    ),
  );

  /// oid
  static const RequestResourceTypes oid = RequestResourceTypes._(
    valueString: 'oid',
    valueEnum: RequestResourceTypesEnum.oid,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'oid',
    ),
  );

  /// url
  static const RequestResourceTypes url = RequestResourceTypes._(
    valueString: 'url',
    valueEnum: RequestResourceTypesEnum.url,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'url',
    ),
  );

  /// uuid
  static const RequestResourceTypes uuid = RequestResourceTypes._(
    valueString: 'uuid',
    valueEnum: RequestResourceTypesEnum.uuid,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'uuid',
    ),
  );

  /// Quantity
  static const RequestResourceTypes quantity = RequestResourceTypes._(
    valueString: 'Quantity',
    valueEnum: RequestResourceTypesEnum.quantity,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Quantity',
    ),
  );

  /// Age
  static const RequestResourceTypes age = RequestResourceTypes._(
    valueString: 'Age',
    valueEnum: RequestResourceTypesEnum.age,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Age',
    ),
  );

  /// Count
  static const RequestResourceTypes count = RequestResourceTypes._(
    valueString: 'Count',
    valueEnum: RequestResourceTypesEnum.count,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Count',
    ),
  );

  /// Distance
  static const RequestResourceTypes distance = RequestResourceTypes._(
    valueString: 'Distance',
    valueEnum: RequestResourceTypesEnum.distance,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Distance',
    ),
  );

  /// Duration
  static const RequestResourceTypes duration = RequestResourceTypes._(
    valueString: 'Duration',
    valueEnum: RequestResourceTypesEnum.duration,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Duration',
    ),
  );

  /// Range
  static const RequestResourceTypes range = RequestResourceTypes._(
    valueString: 'Range',
    valueEnum: RequestResourceTypesEnum.range,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Range',
    ),
  );

  /// Ratio
  static const RequestResourceTypes ratio = RequestResourceTypes._(
    valueString: 'Ratio',
    valueEnum: RequestResourceTypesEnum.ratio,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Ratio',
    ),
  );

  /// RatioRange
  static const RequestResourceTypes ratioRange = RequestResourceTypes._(
    valueString: 'RatioRange',
    valueEnum: RequestResourceTypesEnum.ratioRange,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'RatioRange',
    ),
  );

  /// Reference
  static const RequestResourceTypes reference = RequestResourceTypes._(
    valueString: 'Reference',
    valueEnum: RequestResourceTypesEnum.reference,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Reference',
    ),
  );

  /// RelatedArtifact
  static const RequestResourceTypes relatedArtifact = RequestResourceTypes._(
    valueString: 'RelatedArtifact',
    valueEnum: RequestResourceTypesEnum.relatedArtifact,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'RelatedArtifact',
    ),
  );

  /// SampledData
  static const RequestResourceTypes sampledData = RequestResourceTypes._(
    valueString: 'SampledData',
    valueEnum: RequestResourceTypesEnum.sampledData,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'SampledData',
    ),
  );

  /// Signature
  static const RequestResourceTypes signature = RequestResourceTypes._(
    valueString: 'Signature',
    valueEnum: RequestResourceTypesEnum.signature,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Signature',
    ),
  );

  /// TriggerDefinition
  static const RequestResourceTypes triggerDefinition = RequestResourceTypes._(
    valueString: 'TriggerDefinition',
    valueEnum: RequestResourceTypesEnum.triggerDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'TriggerDefinition',
    ),
  );

  /// UsageContext
  static const RequestResourceTypes usageContext = RequestResourceTypes._(
    valueString: 'UsageContext',
    valueEnum: RequestResourceTypesEnum.usageContext,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'UsageContext',
    ),
  );

  /// VirtualServiceDetail
  static const RequestResourceTypes virtualServiceDetail =
      RequestResourceTypes._(
    valueString: 'VirtualServiceDetail',
    valueEnum: RequestResourceTypesEnum.virtualServiceDetail,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'VirtualServiceDetail',
    ),
  );

  /// xhtml
  static const RequestResourceTypes xhtml = RequestResourceTypes._(
    valueString: 'xhtml',
    valueEnum: RequestResourceTypesEnum.xhtml,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'xhtml',
    ),
  );

  /// Resource
  static const RequestResourceTypes resource = RequestResourceTypes._(
    valueString: 'Resource',
    valueEnum: RequestResourceTypesEnum.resource,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Resource',
    ),
  );

  /// Binary
  static const RequestResourceTypes binary = RequestResourceTypes._(
    valueString: 'Binary',
    valueEnum: RequestResourceTypesEnum.binary,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Binary',
    ),
  );

  /// Bundle
  static const RequestResourceTypes bundle = RequestResourceTypes._(
    valueString: 'Bundle',
    valueEnum: RequestResourceTypesEnum.bundle,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Bundle',
    ),
  );

  /// DomainResource
  static const RequestResourceTypes domainResource = RequestResourceTypes._(
    valueString: 'DomainResource',
    valueEnum: RequestResourceTypesEnum.domainResource,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'DomainResource',
    ),
  );

  /// Account
  static const RequestResourceTypes account = RequestResourceTypes._(
    valueString: 'Account',
    valueEnum: RequestResourceTypesEnum.account,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Account',
    ),
  );

  /// ActivityDefinition
  static const RequestResourceTypes activityDefinition = RequestResourceTypes._(
    valueString: 'ActivityDefinition',
    valueEnum: RequestResourceTypesEnum.activityDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ActivityDefinition',
    ),
  );

  /// ActorDefinition
  static const RequestResourceTypes actorDefinition = RequestResourceTypes._(
    valueString: 'ActorDefinition',
    valueEnum: RequestResourceTypesEnum.actorDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ActorDefinition',
    ),
  );

  /// AdministrableProductDefinition
  static const RequestResourceTypes administrableProductDefinition =
      RequestResourceTypes._(
    valueString: 'AdministrableProductDefinition',
    valueEnum: RequestResourceTypesEnum.administrableProductDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'AdministrableProductDefinition',
    ),
  );

  /// AdverseEvent
  static const RequestResourceTypes adverseEvent = RequestResourceTypes._(
    valueString: 'AdverseEvent',
    valueEnum: RequestResourceTypesEnum.adverseEvent,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'AdverseEvent',
    ),
  );

  /// AllergyIntolerance
  static const RequestResourceTypes allergyIntolerance = RequestResourceTypes._(
    valueString: 'AllergyIntolerance',
    valueEnum: RequestResourceTypesEnum.allergyIntolerance,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'AllergyIntolerance',
    ),
  );

  /// Appointment
  static const RequestResourceTypes appointment = RequestResourceTypes._(
    valueString: 'Appointment',
    valueEnum: RequestResourceTypesEnum.appointment,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Appointment',
    ),
  );

  /// AppointmentResponse
  static const RequestResourceTypes appointmentResponse =
      RequestResourceTypes._(
    valueString: 'AppointmentResponse',
    valueEnum: RequestResourceTypesEnum.appointmentResponse,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'AppointmentResponse',
    ),
  );

  /// ArtifactAssessment
  static const RequestResourceTypes artifactAssessment = RequestResourceTypes._(
    valueString: 'ArtifactAssessment',
    valueEnum: RequestResourceTypesEnum.artifactAssessment,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ArtifactAssessment',
    ),
  );

  /// AuditEvent
  static const RequestResourceTypes auditEvent = RequestResourceTypes._(
    valueString: 'AuditEvent',
    valueEnum: RequestResourceTypesEnum.auditEvent,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'AuditEvent',
    ),
  );

  /// Basic
  static const RequestResourceTypes basic = RequestResourceTypes._(
    valueString: 'Basic',
    valueEnum: RequestResourceTypesEnum.basic,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Basic',
    ),
  );

  /// BiologicallyDerivedProduct
  static const RequestResourceTypes biologicallyDerivedProduct =
      RequestResourceTypes._(
    valueString: 'BiologicallyDerivedProduct',
    valueEnum: RequestResourceTypesEnum.biologicallyDerivedProduct,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'BiologicallyDerivedProduct',
    ),
  );

  /// BiologicallyDerivedProductDispense
  static const RequestResourceTypes biologicallyDerivedProductDispense =
      RequestResourceTypes._(
    valueString: 'BiologicallyDerivedProductDispense',
    valueEnum: RequestResourceTypesEnum.biologicallyDerivedProductDispense,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'BiologicallyDerivedProductDispense',
    ),
  );

  /// BodyStructure
  static const RequestResourceTypes bodyStructure = RequestResourceTypes._(
    valueString: 'BodyStructure',
    valueEnum: RequestResourceTypesEnum.bodyStructure,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'BodyStructure',
    ),
  );

  /// CanonicalResource
  static const RequestResourceTypes canonicalResource = RequestResourceTypes._(
    valueString: 'CanonicalResource',
    valueEnum: RequestResourceTypesEnum.canonicalResource,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'CanonicalResource',
    ),
  );

  /// CapabilityStatement
  static const RequestResourceTypes capabilityStatement =
      RequestResourceTypes._(
    valueString: 'CapabilityStatement',
    valueEnum: RequestResourceTypesEnum.capabilityStatement,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'CapabilityStatement',
    ),
  );

  /// CarePlan
  static const RequestResourceTypes carePlan = RequestResourceTypes._(
    valueString: 'CarePlan',
    valueEnum: RequestResourceTypesEnum.carePlan,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'CarePlan',
    ),
  );

  /// CareTeam
  static const RequestResourceTypes careTeam = RequestResourceTypes._(
    valueString: 'CareTeam',
    valueEnum: RequestResourceTypesEnum.careTeam,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'CareTeam',
    ),
  );

  /// ChargeItem
  static const RequestResourceTypes chargeItem = RequestResourceTypes._(
    valueString: 'ChargeItem',
    valueEnum: RequestResourceTypesEnum.chargeItem,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ChargeItem',
    ),
  );

  /// ChargeItemDefinition
  static const RequestResourceTypes chargeItemDefinition =
      RequestResourceTypes._(
    valueString: 'ChargeItemDefinition',
    valueEnum: RequestResourceTypesEnum.chargeItemDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ChargeItemDefinition',
    ),
  );

  /// Citation
  static const RequestResourceTypes citation = RequestResourceTypes._(
    valueString: 'Citation',
    valueEnum: RequestResourceTypesEnum.citation,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Citation',
    ),
  );

  /// Claim
  static const RequestResourceTypes claim = RequestResourceTypes._(
    valueString: 'Claim',
    valueEnum: RequestResourceTypesEnum.claim,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Claim',
    ),
  );

  /// ClaimResponse
  static const RequestResourceTypes claimResponse = RequestResourceTypes._(
    valueString: 'ClaimResponse',
    valueEnum: RequestResourceTypesEnum.claimResponse,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ClaimResponse',
    ),
  );

  /// ClinicalImpression
  static const RequestResourceTypes clinicalImpression = RequestResourceTypes._(
    valueString: 'ClinicalImpression',
    valueEnum: RequestResourceTypesEnum.clinicalImpression,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ClinicalImpression',
    ),
  );

  /// ClinicalUseDefinition
  static const RequestResourceTypes clinicalUseDefinition =
      RequestResourceTypes._(
    valueString: 'ClinicalUseDefinition',
    valueEnum: RequestResourceTypesEnum.clinicalUseDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ClinicalUseDefinition',
    ),
  );

  /// CodeSystem
  static const RequestResourceTypes codeSystem = RequestResourceTypes._(
    valueString: 'CodeSystem',
    valueEnum: RequestResourceTypesEnum.codeSystem,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'CodeSystem',
    ),
  );

  /// Communication
  static const RequestResourceTypes communication = RequestResourceTypes._(
    valueString: 'Communication',
    valueEnum: RequestResourceTypesEnum.communication,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Communication',
    ),
  );

  /// CommunicationRequest
  static const RequestResourceTypes communicationRequest =
      RequestResourceTypes._(
    valueString: 'CommunicationRequest',
    valueEnum: RequestResourceTypesEnum.communicationRequest,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'CommunicationRequest',
    ),
  );

  /// CompartmentDefinition
  static const RequestResourceTypes compartmentDefinition =
      RequestResourceTypes._(
    valueString: 'CompartmentDefinition',
    valueEnum: RequestResourceTypesEnum.compartmentDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'CompartmentDefinition',
    ),
  );

  /// Composition
  static const RequestResourceTypes composition = RequestResourceTypes._(
    valueString: 'Composition',
    valueEnum: RequestResourceTypesEnum.composition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Composition',
    ),
  );

  /// ConceptMap
  static const RequestResourceTypes conceptMap = RequestResourceTypes._(
    valueString: 'ConceptMap',
    valueEnum: RequestResourceTypesEnum.conceptMap,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ConceptMap',
    ),
  );

  /// Condition
  static const RequestResourceTypes condition = RequestResourceTypes._(
    valueString: 'Condition',
    valueEnum: RequestResourceTypesEnum.condition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Condition',
    ),
  );

  /// ConditionDefinition
  static const RequestResourceTypes conditionDefinition =
      RequestResourceTypes._(
    valueString: 'ConditionDefinition',
    valueEnum: RequestResourceTypesEnum.conditionDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ConditionDefinition',
    ),
  );

  /// Consent
  static const RequestResourceTypes consent = RequestResourceTypes._(
    valueString: 'Consent',
    valueEnum: RequestResourceTypesEnum.consent,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Consent',
    ),
  );

  /// Contract
  static const RequestResourceTypes contract = RequestResourceTypes._(
    valueString: 'Contract',
    valueEnum: RequestResourceTypesEnum.contract,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Contract',
    ),
  );

  /// Coverage
  static const RequestResourceTypes coverage = RequestResourceTypes._(
    valueString: 'Coverage',
    valueEnum: RequestResourceTypesEnum.coverage,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Coverage',
    ),
  );

  /// CoverageEligibilityRequest
  static const RequestResourceTypes coverageEligibilityRequest =
      RequestResourceTypes._(
    valueString: 'CoverageEligibilityRequest',
    valueEnum: RequestResourceTypesEnum.coverageEligibilityRequest,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'CoverageEligibilityRequest',
    ),
  );

  /// CoverageEligibilityResponse
  static const RequestResourceTypes coverageEligibilityResponse =
      RequestResourceTypes._(
    valueString: 'CoverageEligibilityResponse',
    valueEnum: RequestResourceTypesEnum.coverageEligibilityResponse,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'CoverageEligibilityResponse',
    ),
  );

  /// DetectedIssue
  static const RequestResourceTypes detectedIssue = RequestResourceTypes._(
    valueString: 'DetectedIssue',
    valueEnum: RequestResourceTypesEnum.detectedIssue,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'DetectedIssue',
    ),
  );

  /// Device
  static const RequestResourceTypes device = RequestResourceTypes._(
    valueString: 'Device',
    valueEnum: RequestResourceTypesEnum.device,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Device',
    ),
  );

  /// DeviceAssociation
  static const RequestResourceTypes deviceAssociation = RequestResourceTypes._(
    valueString: 'DeviceAssociation',
    valueEnum: RequestResourceTypesEnum.deviceAssociation,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'DeviceAssociation',
    ),
  );

  /// DeviceDefinition
  static const RequestResourceTypes deviceDefinition = RequestResourceTypes._(
    valueString: 'DeviceDefinition',
    valueEnum: RequestResourceTypesEnum.deviceDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'DeviceDefinition',
    ),
  );

  /// DeviceDispense
  static const RequestResourceTypes deviceDispense = RequestResourceTypes._(
    valueString: 'DeviceDispense',
    valueEnum: RequestResourceTypesEnum.deviceDispense,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'DeviceDispense',
    ),
  );

  /// DeviceMetric
  static const RequestResourceTypes deviceMetric = RequestResourceTypes._(
    valueString: 'DeviceMetric',
    valueEnum: RequestResourceTypesEnum.deviceMetric,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'DeviceMetric',
    ),
  );

  /// DeviceRequest
  static const RequestResourceTypes deviceRequest = RequestResourceTypes._(
    valueString: 'DeviceRequest',
    valueEnum: RequestResourceTypesEnum.deviceRequest,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'DeviceRequest',
    ),
  );

  /// DeviceUsage
  static const RequestResourceTypes deviceUsage = RequestResourceTypes._(
    valueString: 'DeviceUsage',
    valueEnum: RequestResourceTypesEnum.deviceUsage,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'DeviceUsage',
    ),
  );

  /// DiagnosticReport
  static const RequestResourceTypes diagnosticReport = RequestResourceTypes._(
    valueString: 'DiagnosticReport',
    valueEnum: RequestResourceTypesEnum.diagnosticReport,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'DiagnosticReport',
    ),
  );

  /// DocumentReference
  static const RequestResourceTypes documentReference = RequestResourceTypes._(
    valueString: 'DocumentReference',
    valueEnum: RequestResourceTypesEnum.documentReference,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'DocumentReference',
    ),
  );

  /// Encounter
  static const RequestResourceTypes encounter = RequestResourceTypes._(
    valueString: 'Encounter',
    valueEnum: RequestResourceTypesEnum.encounter,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Encounter',
    ),
  );

  /// EncounterHistory
  static const RequestResourceTypes encounterHistory = RequestResourceTypes._(
    valueString: 'EncounterHistory',
    valueEnum: RequestResourceTypesEnum.encounterHistory,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'EncounterHistory',
    ),
  );

  /// Endpoint
  static const RequestResourceTypes endpoint = RequestResourceTypes._(
    valueString: 'Endpoint',
    valueEnum: RequestResourceTypesEnum.endpoint,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Endpoint',
    ),
  );

  /// EnrollmentRequest
  static const RequestResourceTypes enrollmentRequest = RequestResourceTypes._(
    valueString: 'EnrollmentRequest',
    valueEnum: RequestResourceTypesEnum.enrollmentRequest,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'EnrollmentRequest',
    ),
  );

  /// EnrollmentResponse
  static const RequestResourceTypes enrollmentResponse = RequestResourceTypes._(
    valueString: 'EnrollmentResponse',
    valueEnum: RequestResourceTypesEnum.enrollmentResponse,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'EnrollmentResponse',
    ),
  );

  /// EpisodeOfCare
  static const RequestResourceTypes episodeOfCare = RequestResourceTypes._(
    valueString: 'EpisodeOfCare',
    valueEnum: RequestResourceTypesEnum.episodeOfCare,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'EpisodeOfCare',
    ),
  );

  /// EventDefinition
  static const RequestResourceTypes eventDefinition = RequestResourceTypes._(
    valueString: 'EventDefinition',
    valueEnum: RequestResourceTypesEnum.eventDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'EventDefinition',
    ),
  );

  /// Evidence
  static const RequestResourceTypes evidence = RequestResourceTypes._(
    valueString: 'Evidence',
    valueEnum: RequestResourceTypesEnum.evidence,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Evidence',
    ),
  );

  /// EvidenceReport
  static const RequestResourceTypes evidenceReport = RequestResourceTypes._(
    valueString: 'EvidenceReport',
    valueEnum: RequestResourceTypesEnum.evidenceReport,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'EvidenceReport',
    ),
  );

  /// EvidenceVariable
  static const RequestResourceTypes evidenceVariable = RequestResourceTypes._(
    valueString: 'EvidenceVariable',
    valueEnum: RequestResourceTypesEnum.evidenceVariable,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'EvidenceVariable',
    ),
  );

  /// ExampleScenario
  static const RequestResourceTypes exampleScenario = RequestResourceTypes._(
    valueString: 'ExampleScenario',
    valueEnum: RequestResourceTypesEnum.exampleScenario,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ExampleScenario',
    ),
  );

  /// ExplanationOfBenefit
  static const RequestResourceTypes explanationOfBenefit =
      RequestResourceTypes._(
    valueString: 'ExplanationOfBenefit',
    valueEnum: RequestResourceTypesEnum.explanationOfBenefit,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ExplanationOfBenefit',
    ),
  );

  /// FamilyMemberHistory
  static const RequestResourceTypes familyMemberHistory =
      RequestResourceTypes._(
    valueString: 'FamilyMemberHistory',
    valueEnum: RequestResourceTypesEnum.familyMemberHistory,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'FamilyMemberHistory',
    ),
  );

  /// Flag
  static const RequestResourceTypes flag = RequestResourceTypes._(
    valueString: 'Flag',
    valueEnum: RequestResourceTypesEnum.flag,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Flag',
    ),
  );

  /// FormularyItem
  static const RequestResourceTypes formularyItem = RequestResourceTypes._(
    valueString: 'FormularyItem',
    valueEnum: RequestResourceTypesEnum.formularyItem,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'FormularyItem',
    ),
  );

  /// GenomicStudy
  static const RequestResourceTypes genomicStudy = RequestResourceTypes._(
    valueString: 'GenomicStudy',
    valueEnum: RequestResourceTypesEnum.genomicStudy,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'GenomicStudy',
    ),
  );

  /// Goal
  static const RequestResourceTypes goal = RequestResourceTypes._(
    valueString: 'Goal',
    valueEnum: RequestResourceTypesEnum.goal,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Goal',
    ),
  );

  /// GraphDefinition
  static const RequestResourceTypes graphDefinition = RequestResourceTypes._(
    valueString: 'GraphDefinition',
    valueEnum: RequestResourceTypesEnum.graphDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'GraphDefinition',
    ),
  );

  /// Group
  static const RequestResourceTypes group = RequestResourceTypes._(
    valueString: 'Group',
    valueEnum: RequestResourceTypesEnum.group,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Group',
    ),
  );

  /// GuidanceResponse
  static const RequestResourceTypes guidanceResponse = RequestResourceTypes._(
    valueString: 'GuidanceResponse',
    valueEnum: RequestResourceTypesEnum.guidanceResponse,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'GuidanceResponse',
    ),
  );

  /// HealthcareService
  static const RequestResourceTypes healthcareService = RequestResourceTypes._(
    valueString: 'HealthcareService',
    valueEnum: RequestResourceTypesEnum.healthcareService,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'HealthcareService',
    ),
  );

  /// ImagingSelection
  static const RequestResourceTypes imagingSelection = RequestResourceTypes._(
    valueString: 'ImagingSelection',
    valueEnum: RequestResourceTypesEnum.imagingSelection,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ImagingSelection',
    ),
  );

  /// ImagingStudy
  static const RequestResourceTypes imagingStudy = RequestResourceTypes._(
    valueString: 'ImagingStudy',
    valueEnum: RequestResourceTypesEnum.imagingStudy,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ImagingStudy',
    ),
  );

  /// Immunization
  static const RequestResourceTypes immunization = RequestResourceTypes._(
    valueString: 'Immunization',
    valueEnum: RequestResourceTypesEnum.immunization,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Immunization',
    ),
  );

  /// ImmunizationEvaluation
  static const RequestResourceTypes immunizationEvaluation =
      RequestResourceTypes._(
    valueString: 'ImmunizationEvaluation',
    valueEnum: RequestResourceTypesEnum.immunizationEvaluation,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ImmunizationEvaluation',
    ),
  );

  /// ImmunizationRecommendation
  static const RequestResourceTypes immunizationRecommendation =
      RequestResourceTypes._(
    valueString: 'ImmunizationRecommendation',
    valueEnum: RequestResourceTypesEnum.immunizationRecommendation,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ImmunizationRecommendation',
    ),
  );

  /// ImplementationGuide
  static const RequestResourceTypes implementationGuide =
      RequestResourceTypes._(
    valueString: 'ImplementationGuide',
    valueEnum: RequestResourceTypesEnum.implementationGuide,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ImplementationGuide',
    ),
  );

  /// Ingredient
  static const RequestResourceTypes ingredient = RequestResourceTypes._(
    valueString: 'Ingredient',
    valueEnum: RequestResourceTypesEnum.ingredient,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Ingredient',
    ),
  );

  /// InsurancePlan
  static const RequestResourceTypes insurancePlan = RequestResourceTypes._(
    valueString: 'InsurancePlan',
    valueEnum: RequestResourceTypesEnum.insurancePlan,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'InsurancePlan',
    ),
  );

  /// InventoryItem
  static const RequestResourceTypes inventoryItem = RequestResourceTypes._(
    valueString: 'InventoryItem',
    valueEnum: RequestResourceTypesEnum.inventoryItem,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'InventoryItem',
    ),
  );

  /// InventoryReport
  static const RequestResourceTypes inventoryReport = RequestResourceTypes._(
    valueString: 'InventoryReport',
    valueEnum: RequestResourceTypesEnum.inventoryReport,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'InventoryReport',
    ),
  );

  /// Invoice
  static const RequestResourceTypes invoice = RequestResourceTypes._(
    valueString: 'Invoice',
    valueEnum: RequestResourceTypesEnum.invoice,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Invoice',
    ),
  );

  /// Library
  static const RequestResourceTypes library = RequestResourceTypes._(
    valueString: 'Library',
    valueEnum: RequestResourceTypesEnum.library,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Library',
    ),
  );

  /// Linkage
  static const RequestResourceTypes linkage = RequestResourceTypes._(
    valueString: 'Linkage',
    valueEnum: RequestResourceTypesEnum.linkage,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Linkage',
    ),
  );

  /// List_
  static const RequestResourceTypes list_ = RequestResourceTypes._(
    valueString: 'List',
    valueEnum: RequestResourceTypesEnum.list_,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'List',
    ),
  );

  /// Location
  static const RequestResourceTypes location = RequestResourceTypes._(
    valueString: 'Location',
    valueEnum: RequestResourceTypesEnum.location,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Location',
    ),
  );

  /// ManufacturedItemDefinition
  static const RequestResourceTypes manufacturedItemDefinition =
      RequestResourceTypes._(
    valueString: 'ManufacturedItemDefinition',
    valueEnum: RequestResourceTypesEnum.manufacturedItemDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ManufacturedItemDefinition',
    ),
  );

  /// Measure
  static const RequestResourceTypes measure = RequestResourceTypes._(
    valueString: 'Measure',
    valueEnum: RequestResourceTypesEnum.measure,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Measure',
    ),
  );

  /// MeasureReport
  static const RequestResourceTypes measureReport = RequestResourceTypes._(
    valueString: 'MeasureReport',
    valueEnum: RequestResourceTypesEnum.measureReport,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'MeasureReport',
    ),
  );

  /// Medication
  static const RequestResourceTypes medication = RequestResourceTypes._(
    valueString: 'Medication',
    valueEnum: RequestResourceTypesEnum.medication,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Medication',
    ),
  );

  /// MedicationAdministration
  static const RequestResourceTypes medicationAdministration =
      RequestResourceTypes._(
    valueString: 'MedicationAdministration',
    valueEnum: RequestResourceTypesEnum.medicationAdministration,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'MedicationAdministration',
    ),
  );

  /// MedicationDispense
  static const RequestResourceTypes medicationDispense = RequestResourceTypes._(
    valueString: 'MedicationDispense',
    valueEnum: RequestResourceTypesEnum.medicationDispense,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'MedicationDispense',
    ),
  );

  /// MedicationKnowledge
  static const RequestResourceTypes medicationKnowledge =
      RequestResourceTypes._(
    valueString: 'MedicationKnowledge',
    valueEnum: RequestResourceTypesEnum.medicationKnowledge,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'MedicationKnowledge',
    ),
  );

  /// MedicationRequest
  static const RequestResourceTypes medicationRequest = RequestResourceTypes._(
    valueString: 'MedicationRequest',
    valueEnum: RequestResourceTypesEnum.medicationRequest,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'MedicationRequest',
    ),
  );

  /// MedicationStatement
  static const RequestResourceTypes medicationStatement =
      RequestResourceTypes._(
    valueString: 'MedicationStatement',
    valueEnum: RequestResourceTypesEnum.medicationStatement,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'MedicationStatement',
    ),
  );

  /// MedicinalProductDefinition
  static const RequestResourceTypes medicinalProductDefinition =
      RequestResourceTypes._(
    valueString: 'MedicinalProductDefinition',
    valueEnum: RequestResourceTypesEnum.medicinalProductDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'MedicinalProductDefinition',
    ),
  );

  /// MessageDefinition
  static const RequestResourceTypes messageDefinition = RequestResourceTypes._(
    valueString: 'MessageDefinition',
    valueEnum: RequestResourceTypesEnum.messageDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'MessageDefinition',
    ),
  );

  /// MessageHeader
  static const RequestResourceTypes messageHeader = RequestResourceTypes._(
    valueString: 'MessageHeader',
    valueEnum: RequestResourceTypesEnum.messageHeader,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'MessageHeader',
    ),
  );

  /// MetadataResource
  static const RequestResourceTypes metadataResource = RequestResourceTypes._(
    valueString: 'MetadataResource',
    valueEnum: RequestResourceTypesEnum.metadataResource,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'MetadataResource',
    ),
  );

  /// MolecularSequence
  static const RequestResourceTypes molecularSequence = RequestResourceTypes._(
    valueString: 'MolecularSequence',
    valueEnum: RequestResourceTypesEnum.molecularSequence,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'MolecularSequence',
    ),
  );

  /// NamingSystem
  static const RequestResourceTypes namingSystem = RequestResourceTypes._(
    valueString: 'NamingSystem',
    valueEnum: RequestResourceTypesEnum.namingSystem,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'NamingSystem',
    ),
  );

  /// NutritionIntake
  static const RequestResourceTypes nutritionIntake = RequestResourceTypes._(
    valueString: 'NutritionIntake',
    valueEnum: RequestResourceTypesEnum.nutritionIntake,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'NutritionIntake',
    ),
  );

  /// NutritionOrder
  static const RequestResourceTypes nutritionOrder = RequestResourceTypes._(
    valueString: 'NutritionOrder',
    valueEnum: RequestResourceTypesEnum.nutritionOrder,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'NutritionOrder',
    ),
  );

  /// NutritionProduct
  static const RequestResourceTypes nutritionProduct = RequestResourceTypes._(
    valueString: 'NutritionProduct',
    valueEnum: RequestResourceTypesEnum.nutritionProduct,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'NutritionProduct',
    ),
  );

  /// Observation
  static const RequestResourceTypes observation = RequestResourceTypes._(
    valueString: 'Observation',
    valueEnum: RequestResourceTypesEnum.observation,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Observation',
    ),
  );

  /// ObservationDefinition
  static const RequestResourceTypes observationDefinition =
      RequestResourceTypes._(
    valueString: 'ObservationDefinition',
    valueEnum: RequestResourceTypesEnum.observationDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ObservationDefinition',
    ),
  );

  /// OperationDefinition
  static const RequestResourceTypes operationDefinition =
      RequestResourceTypes._(
    valueString: 'OperationDefinition',
    valueEnum: RequestResourceTypesEnum.operationDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'OperationDefinition',
    ),
  );

  /// OperationOutcome
  static const RequestResourceTypes operationOutcome = RequestResourceTypes._(
    valueString: 'OperationOutcome',
    valueEnum: RequestResourceTypesEnum.operationOutcome,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'OperationOutcome',
    ),
  );

  /// Organization
  static const RequestResourceTypes organization = RequestResourceTypes._(
    valueString: 'Organization',
    valueEnum: RequestResourceTypesEnum.organization,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Organization',
    ),
  );

  /// OrganizationAffiliation
  static const RequestResourceTypes organizationAffiliation =
      RequestResourceTypes._(
    valueString: 'OrganizationAffiliation',
    valueEnum: RequestResourceTypesEnum.organizationAffiliation,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'OrganizationAffiliation',
    ),
  );

  /// PackagedProductDefinition
  static const RequestResourceTypes packagedProductDefinition =
      RequestResourceTypes._(
    valueString: 'PackagedProductDefinition',
    valueEnum: RequestResourceTypesEnum.packagedProductDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'PackagedProductDefinition',
    ),
  );

  /// Patient
  static const RequestResourceTypes patient = RequestResourceTypes._(
    valueString: 'Patient',
    valueEnum: RequestResourceTypesEnum.patient,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Patient',
    ),
  );

  /// PaymentNotice
  static const RequestResourceTypes paymentNotice = RequestResourceTypes._(
    valueString: 'PaymentNotice',
    valueEnum: RequestResourceTypesEnum.paymentNotice,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'PaymentNotice',
    ),
  );

  /// PaymentReconciliation
  static const RequestResourceTypes paymentReconciliation =
      RequestResourceTypes._(
    valueString: 'PaymentReconciliation',
    valueEnum: RequestResourceTypesEnum.paymentReconciliation,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'PaymentReconciliation',
    ),
  );

  /// Permission
  static const RequestResourceTypes permission = RequestResourceTypes._(
    valueString: 'Permission',
    valueEnum: RequestResourceTypesEnum.permission,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Permission',
    ),
  );

  /// Person
  static const RequestResourceTypes person = RequestResourceTypes._(
    valueString: 'Person',
    valueEnum: RequestResourceTypesEnum.person,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Person',
    ),
  );

  /// PlanDefinition
  static const RequestResourceTypes planDefinition = RequestResourceTypes._(
    valueString: 'PlanDefinition',
    valueEnum: RequestResourceTypesEnum.planDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'PlanDefinition',
    ),
  );

  /// Practitioner
  static const RequestResourceTypes practitioner = RequestResourceTypes._(
    valueString: 'Practitioner',
    valueEnum: RequestResourceTypesEnum.practitioner,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Practitioner',
    ),
  );

  /// PractitionerRole
  static const RequestResourceTypes practitionerRole = RequestResourceTypes._(
    valueString: 'PractitionerRole',
    valueEnum: RequestResourceTypesEnum.practitionerRole,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'PractitionerRole',
    ),
  );

  /// Procedure
  static const RequestResourceTypes procedure = RequestResourceTypes._(
    valueString: 'Procedure',
    valueEnum: RequestResourceTypesEnum.procedure,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Procedure',
    ),
  );

  /// Provenance
  static const RequestResourceTypes provenance = RequestResourceTypes._(
    valueString: 'Provenance',
    valueEnum: RequestResourceTypesEnum.provenance,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Provenance',
    ),
  );

  /// Questionnaire
  static const RequestResourceTypes questionnaire = RequestResourceTypes._(
    valueString: 'Questionnaire',
    valueEnum: RequestResourceTypesEnum.questionnaire,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Questionnaire',
    ),
  );

  /// QuestionnaireResponse
  static const RequestResourceTypes questionnaireResponse =
      RequestResourceTypes._(
    valueString: 'QuestionnaireResponse',
    valueEnum: RequestResourceTypesEnum.questionnaireResponse,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'QuestionnaireResponse',
    ),
  );

  /// RegulatedAuthorization
  static const RequestResourceTypes regulatedAuthorization =
      RequestResourceTypes._(
    valueString: 'RegulatedAuthorization',
    valueEnum: RequestResourceTypesEnum.regulatedAuthorization,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'RegulatedAuthorization',
    ),
  );

  /// RelatedPerson
  static const RequestResourceTypes relatedPerson = RequestResourceTypes._(
    valueString: 'RelatedPerson',
    valueEnum: RequestResourceTypesEnum.relatedPerson,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'RelatedPerson',
    ),
  );

  /// RequestOrchestration
  static const RequestResourceTypes requestOrchestration =
      RequestResourceTypes._(
    valueString: 'RequestOrchestration',
    valueEnum: RequestResourceTypesEnum.requestOrchestration,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'RequestOrchestration',
    ),
  );

  /// Requirements
  static const RequestResourceTypes requirements = RequestResourceTypes._(
    valueString: 'Requirements',
    valueEnum: RequestResourceTypesEnum.requirements,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Requirements',
    ),
  );

  /// ResearchStudy
  static const RequestResourceTypes researchStudy = RequestResourceTypes._(
    valueString: 'ResearchStudy',
    valueEnum: RequestResourceTypesEnum.researchStudy,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ResearchStudy',
    ),
  );

  /// ResearchSubject
  static const RequestResourceTypes researchSubject = RequestResourceTypes._(
    valueString: 'ResearchSubject',
    valueEnum: RequestResourceTypesEnum.researchSubject,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ResearchSubject',
    ),
  );

  /// RiskAssessment
  static const RequestResourceTypes riskAssessment = RequestResourceTypes._(
    valueString: 'RiskAssessment',
    valueEnum: RequestResourceTypesEnum.riskAssessment,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'RiskAssessment',
    ),
  );

  /// Schedule
  static const RequestResourceTypes schedule = RequestResourceTypes._(
    valueString: 'Schedule',
    valueEnum: RequestResourceTypesEnum.schedule,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Schedule',
    ),
  );

  /// SearchParameter
  static const RequestResourceTypes searchParameter = RequestResourceTypes._(
    valueString: 'SearchParameter',
    valueEnum: RequestResourceTypesEnum.searchParameter,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'SearchParameter',
    ),
  );

  /// ServiceRequest
  static const RequestResourceTypes serviceRequest = RequestResourceTypes._(
    valueString: 'ServiceRequest',
    valueEnum: RequestResourceTypesEnum.serviceRequest,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ServiceRequest',
    ),
  );

  /// Slot
  static const RequestResourceTypes slot = RequestResourceTypes._(
    valueString: 'Slot',
    valueEnum: RequestResourceTypesEnum.slot,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Slot',
    ),
  );

  /// Specimen
  static const RequestResourceTypes specimen = RequestResourceTypes._(
    valueString: 'Specimen',
    valueEnum: RequestResourceTypesEnum.specimen,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Specimen',
    ),
  );

  /// SpecimenDefinition
  static const RequestResourceTypes specimenDefinition = RequestResourceTypes._(
    valueString: 'SpecimenDefinition',
    valueEnum: RequestResourceTypesEnum.specimenDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'SpecimenDefinition',
    ),
  );

  /// StructureDefinition
  static const RequestResourceTypes structureDefinition =
      RequestResourceTypes._(
    valueString: 'StructureDefinition',
    valueEnum: RequestResourceTypesEnum.structureDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'StructureDefinition',
    ),
  );

  /// StructureMap
  static const RequestResourceTypes structureMap = RequestResourceTypes._(
    valueString: 'StructureMap',
    valueEnum: RequestResourceTypesEnum.structureMap,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'StructureMap',
    ),
  );

  /// Subscription
  static const RequestResourceTypes subscription = RequestResourceTypes._(
    valueString: 'Subscription',
    valueEnum: RequestResourceTypesEnum.subscription,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Subscription',
    ),
  );

  /// SubscriptionStatus
  static const RequestResourceTypes subscriptionStatus = RequestResourceTypes._(
    valueString: 'SubscriptionStatus',
    valueEnum: RequestResourceTypesEnum.subscriptionStatus,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'SubscriptionStatus',
    ),
  );

  /// SubscriptionTopic
  static const RequestResourceTypes subscriptionTopic = RequestResourceTypes._(
    valueString: 'SubscriptionTopic',
    valueEnum: RequestResourceTypesEnum.subscriptionTopic,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'SubscriptionTopic',
    ),
  );

  /// Substance
  static const RequestResourceTypes substance = RequestResourceTypes._(
    valueString: 'Substance',
    valueEnum: RequestResourceTypesEnum.substance,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Substance',
    ),
  );

  /// SubstanceDefinition
  static const RequestResourceTypes substanceDefinition =
      RequestResourceTypes._(
    valueString: 'SubstanceDefinition',
    valueEnum: RequestResourceTypesEnum.substanceDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'SubstanceDefinition',
    ),
  );

  /// SubstanceNucleicAcid
  static const RequestResourceTypes substanceNucleicAcid =
      RequestResourceTypes._(
    valueString: 'SubstanceNucleicAcid',
    valueEnum: RequestResourceTypesEnum.substanceNucleicAcid,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'SubstanceNucleicAcid',
    ),
  );

  /// SubstancePolymer
  static const RequestResourceTypes substancePolymer = RequestResourceTypes._(
    valueString: 'SubstancePolymer',
    valueEnum: RequestResourceTypesEnum.substancePolymer,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'SubstancePolymer',
    ),
  );

  /// SubstanceProtein
  static const RequestResourceTypes substanceProtein = RequestResourceTypes._(
    valueString: 'SubstanceProtein',
    valueEnum: RequestResourceTypesEnum.substanceProtein,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'SubstanceProtein',
    ),
  );

  /// SubstanceReferenceInformation
  static const RequestResourceTypes substanceReferenceInformation =
      RequestResourceTypes._(
    valueString: 'SubstanceReferenceInformation',
    valueEnum: RequestResourceTypesEnum.substanceReferenceInformation,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'SubstanceReferenceInformation',
    ),
  );

  /// SubstanceSourceMaterial
  static const RequestResourceTypes substanceSourceMaterial =
      RequestResourceTypes._(
    valueString: 'SubstanceSourceMaterial',
    valueEnum: RequestResourceTypesEnum.substanceSourceMaterial,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'SubstanceSourceMaterial',
    ),
  );

  /// SupplyDelivery
  static const RequestResourceTypes supplyDelivery = RequestResourceTypes._(
    valueString: 'SupplyDelivery',
    valueEnum: RequestResourceTypesEnum.supplyDelivery,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'SupplyDelivery',
    ),
  );

  /// SupplyRequest
  static const RequestResourceTypes supplyRequest = RequestResourceTypes._(
    valueString: 'SupplyRequest',
    valueEnum: RequestResourceTypesEnum.supplyRequest,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'SupplyRequest',
    ),
  );

  /// Task
  static const RequestResourceTypes task = RequestResourceTypes._(
    valueString: 'Task',
    valueEnum: RequestResourceTypesEnum.task,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Task',
    ),
  );

  /// TerminologyCapabilities
  static const RequestResourceTypes terminologyCapabilities =
      RequestResourceTypes._(
    valueString: 'TerminologyCapabilities',
    valueEnum: RequestResourceTypesEnum.terminologyCapabilities,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'TerminologyCapabilities',
    ),
  );

  /// TestPlan
  static const RequestResourceTypes testPlan = RequestResourceTypes._(
    valueString: 'TestPlan',
    valueEnum: RequestResourceTypesEnum.testPlan,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'TestPlan',
    ),
  );

  /// TestReport
  static const RequestResourceTypes testReport = RequestResourceTypes._(
    valueString: 'TestReport',
    valueEnum: RequestResourceTypesEnum.testReport,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'TestReport',
    ),
  );

  /// TestScript
  static const RequestResourceTypes testScript = RequestResourceTypes._(
    valueString: 'TestScript',
    valueEnum: RequestResourceTypesEnum.testScript,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'TestScript',
    ),
  );

  /// Transport
  static const RequestResourceTypes transport = RequestResourceTypes._(
    valueString: 'Transport',
    valueEnum: RequestResourceTypesEnum.transport,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Transport',
    ),
  );

  /// ValueSet
  static const RequestResourceTypes valueSet = RequestResourceTypes._(
    valueString: 'ValueSet',
    valueEnum: RequestResourceTypesEnum.valueSet,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ValueSet',
    ),
  );

  /// VerificationResult
  static const RequestResourceTypes verificationResult = RequestResourceTypes._(
    valueString: 'VerificationResult',
    valueEnum: RequestResourceTypesEnum.verificationResult,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'VerificationResult',
    ),
  );

  /// VisionPrescription
  static const RequestResourceTypes visionPrescription = RequestResourceTypes._(
    valueString: 'VisionPrescription',
    valueEnum: RequestResourceTypesEnum.visionPrescription,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'VisionPrescription',
    ),
  );

  /// Parameters
  static const RequestResourceTypes parameters = RequestResourceTypes._(
    valueString: 'Parameters',
    valueEnum: RequestResourceTypesEnum.parameters,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Parameters',
    ),
  );

  /// List of all enum-like values
  static final List<RequestResourceTypes> values = [
    base,
    element_,
    backboneElement,
    dataType,
    address,
    annotation,
    attachment,
    availability,
    backboneType,
    dosage,
    elementDefinition,
    marketingStatus,
    productShelfLife,
    timing,
    codeableConcept,
    codeableReference,
    coding,
    contactDetail,
    contactPoint,
    contributor,
    dataRequirement,
    expression,
    extendedContactDetail,
    extension,
    humanName,
    identifier,
    meta,
    monetaryComponent,
    money,
    narrative,
    parameterDefinition,
    period,
    primitiveType,
    base64Binary,
    boolean,
    date,
    dateTime,
    decimal,
    instant,
    integer,
    positiveInt,
    unsignedInt,
    integer64,
    string,
    code,
    id_,
    markdown,
    time,
    uri,
    canonical,
    oid,
    url,
    uuid,
    quantity,
    age,
    count,
    distance,
    duration,
    range,
    ratio,
    ratioRange,
    reference,
    relatedArtifact,
    sampledData,
    signature,
    triggerDefinition,
    usageContext,
    virtualServiceDetail,
    xhtml,
    resource,
    binary,
    bundle,
    domainResource,
    account,
    activityDefinition,
    actorDefinition,
    administrableProductDefinition,
    adverseEvent,
    allergyIntolerance,
    appointment,
    appointmentResponse,
    artifactAssessment,
    auditEvent,
    basic,
    biologicallyDerivedProduct,
    biologicallyDerivedProductDispense,
    bodyStructure,
    canonicalResource,
    capabilityStatement,
    carePlan,
    careTeam,
    chargeItem,
    chargeItemDefinition,
    citation,
    claim,
    claimResponse,
    clinicalImpression,
    clinicalUseDefinition,
    codeSystem,
    communication,
    communicationRequest,
    compartmentDefinition,
    composition,
    conceptMap,
    condition,
    conditionDefinition,
    consent,
    contract,
    coverage,
    coverageEligibilityRequest,
    coverageEligibilityResponse,
    detectedIssue,
    device,
    deviceAssociation,
    deviceDefinition,
    deviceDispense,
    deviceMetric,
    deviceRequest,
    deviceUsage,
    diagnosticReport,
    documentReference,
    encounter,
    encounterHistory,
    endpoint,
    enrollmentRequest,
    enrollmentResponse,
    episodeOfCare,
    eventDefinition,
    evidence,
    evidenceReport,
    evidenceVariable,
    exampleScenario,
    explanationOfBenefit,
    familyMemberHistory,
    flag,
    formularyItem,
    genomicStudy,
    goal,
    graphDefinition,
    group,
    guidanceResponse,
    healthcareService,
    imagingSelection,
    imagingStudy,
    immunization,
    immunizationEvaluation,
    immunizationRecommendation,
    implementationGuide,
    ingredient,
    insurancePlan,
    inventoryItem,
    inventoryReport,
    invoice,
    library,
    linkage,
    list_,
    location,
    manufacturedItemDefinition,
    measure,
    measureReport,
    medication,
    medicationAdministration,
    medicationDispense,
    medicationKnowledge,
    medicationRequest,
    medicationStatement,
    medicinalProductDefinition,
    messageDefinition,
    messageHeader,
    metadataResource,
    molecularSequence,
    namingSystem,
    nutritionIntake,
    nutritionOrder,
    nutritionProduct,
    observation,
    observationDefinition,
    operationDefinition,
    operationOutcome,
    organization,
    organizationAffiliation,
    packagedProductDefinition,
    patient,
    paymentNotice,
    paymentReconciliation,
    permission,
    person,
    planDefinition,
    practitioner,
    practitionerRole,
    procedure,
    provenance,
    questionnaire,
    questionnaireResponse,
    regulatedAuthorization,
    relatedPerson,
    requestOrchestration,
    requirements,
    researchStudy,
    researchSubject,
    riskAssessment,
    schedule,
    searchParameter,
    serviceRequest,
    slot,
    specimen,
    specimenDefinition,
    structureDefinition,
    structureMap,
    subscription,
    subscriptionStatus,
    subscriptionTopic,
    substance,
    substanceDefinition,
    substanceNucleicAcid,
    substancePolymer,
    substanceProtein,
    substanceReferenceInformation,
    substanceSourceMaterial,
    supplyDelivery,
    supplyRequest,
    task,
    terminologyCapabilities,
    testPlan,
    testReport,
    testScript,
    transport,
    valueSet,
    verificationResult,
    visionPrescription,
    parameters,
  ];

  /// Returns the enum value with an element attached
  RequestResourceTypes withElement(Element? newElement) {
    return RequestResourceTypes._(
      valueString: valueString,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (valueString?.isEmpty ?? false) ? null : valueString,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => valueString ?? '';

  @override
  RequestResourceTypes clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  RequestResourceTypesCopyWithImpl<RequestResourceTypes> get copyWith =>
      RequestResourceTypesCopyWithImpl<RequestResourceTypes>(
        this,
        (v) => v as RequestResourceTypes,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class RequestResourceTypesCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  RequestResourceTypesCopyWithImpl(super._value, super._then);

  @override
  T call({
    Object? newValue = fhirSentinel,
    Object? element = fhirSentinel,
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    if (!identical(newValue, fhirSentinel) && newValue is! String?) {
      throw ArgumentError(
        'newValue must be a String or null, but found ${newValue.runtimeType}',
        'newValue',
      );
    }
    return _then(
      RequestResourceTypes(
        identical(newValue, fhirSentinel)
            ? _value.valueString
            : newValue as String?,
        element: identical(element, fhirSentinel)
            ? _value.element
            : element as Element?,
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}
