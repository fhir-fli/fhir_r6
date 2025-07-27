// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for FHIRTypes
enum FHIRTypesBuilderEnum {
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
      case FHIRTypesBuilderEnum.base:
        return 'Base';
      case FHIRTypesBuilderEnum.element_:
        return 'Element';
      case FHIRTypesBuilderEnum.backboneElement:
        return 'BackboneElement';
      case FHIRTypesBuilderEnum.dataType:
        return 'DataType';
      case FHIRTypesBuilderEnum.address:
        return 'Address';
      case FHIRTypesBuilderEnum.annotation:
        return 'Annotation';
      case FHIRTypesBuilderEnum.attachment:
        return 'Attachment';
      case FHIRTypesBuilderEnum.availability:
        return 'Availability';
      case FHIRTypesBuilderEnum.backboneType:
        return 'BackboneType';
      case FHIRTypesBuilderEnum.dosage:
        return 'Dosage';
      case FHIRTypesBuilderEnum.elementDefinition:
        return 'ElementDefinition';
      case FHIRTypesBuilderEnum.marketingStatus:
        return 'MarketingStatus';
      case FHIRTypesBuilderEnum.productShelfLife:
        return 'ProductShelfLife';
      case FHIRTypesBuilderEnum.timing:
        return 'Timing';
      case FHIRTypesBuilderEnum.codeableConcept:
        return 'CodeableConcept';
      case FHIRTypesBuilderEnum.codeableReference:
        return 'CodeableReference';
      case FHIRTypesBuilderEnum.coding:
        return 'Coding';
      case FHIRTypesBuilderEnum.contactDetail:
        return 'ContactDetail';
      case FHIRTypesBuilderEnum.contactPoint:
        return 'ContactPoint';
      case FHIRTypesBuilderEnum.contributor:
        return 'Contributor';
      case FHIRTypesBuilderEnum.dataRequirement:
        return 'DataRequirement';
      case FHIRTypesBuilderEnum.expression:
        return 'Expression';
      case FHIRTypesBuilderEnum.extendedContactDetail:
        return 'ExtendedContactDetail';
      case FHIRTypesBuilderEnum.extension:
        return 'Extension';
      case FHIRTypesBuilderEnum.humanName:
        return 'HumanName';
      case FHIRTypesBuilderEnum.identifier:
        return 'Identifier';
      case FHIRTypesBuilderEnum.meta:
        return 'Meta';
      case FHIRTypesBuilderEnum.monetaryComponent:
        return 'MonetaryComponent';
      case FHIRTypesBuilderEnum.money:
        return 'Money';
      case FHIRTypesBuilderEnum.narrative:
        return 'Narrative';
      case FHIRTypesBuilderEnum.parameterDefinition:
        return 'ParameterDefinition';
      case FHIRTypesBuilderEnum.period:
        return 'Period';
      case FHIRTypesBuilderEnum.primitiveType:
        return 'PrimitiveType';
      case FHIRTypesBuilderEnum.base64Binary:
        return 'base64Binary';
      case FHIRTypesBuilderEnum.boolean:
        return 'boolean';
      case FHIRTypesBuilderEnum.date:
        return 'date';
      case FHIRTypesBuilderEnum.dateTime:
        return 'dateTime';
      case FHIRTypesBuilderEnum.decimal:
        return 'decimal';
      case FHIRTypesBuilderEnum.instant:
        return 'instant';
      case FHIRTypesBuilderEnum.integer:
        return 'integer';
      case FHIRTypesBuilderEnum.positiveInt:
        return 'positiveInt';
      case FHIRTypesBuilderEnum.unsignedInt:
        return 'unsignedInt';
      case FHIRTypesBuilderEnum.integer64:
        return 'integer64';
      case FHIRTypesBuilderEnum.string:
        return 'string';
      case FHIRTypesBuilderEnum.code:
        return 'code';
      case FHIRTypesBuilderEnum.id_:
        return 'id';
      case FHIRTypesBuilderEnum.markdown:
        return 'markdown';
      case FHIRTypesBuilderEnum.time:
        return 'time';
      case FHIRTypesBuilderEnum.uri:
        return 'uri';
      case FHIRTypesBuilderEnum.canonical:
        return 'canonical';
      case FHIRTypesBuilderEnum.oid:
        return 'oid';
      case FHIRTypesBuilderEnum.url:
        return 'url';
      case FHIRTypesBuilderEnum.uuid:
        return 'uuid';
      case FHIRTypesBuilderEnum.quantity:
        return 'Quantity';
      case FHIRTypesBuilderEnum.age:
        return 'Age';
      case FHIRTypesBuilderEnum.count:
        return 'Count';
      case FHIRTypesBuilderEnum.distance:
        return 'Distance';
      case FHIRTypesBuilderEnum.duration:
        return 'Duration';
      case FHIRTypesBuilderEnum.range:
        return 'Range';
      case FHIRTypesBuilderEnum.ratio:
        return 'Ratio';
      case FHIRTypesBuilderEnum.ratioRange:
        return 'RatioRange';
      case FHIRTypesBuilderEnum.reference:
        return 'Reference';
      case FHIRTypesBuilderEnum.relatedArtifact:
        return 'RelatedArtifact';
      case FHIRTypesBuilderEnum.sampledData:
        return 'SampledData';
      case FHIRTypesBuilderEnum.signature:
        return 'Signature';
      case FHIRTypesBuilderEnum.triggerDefinition:
        return 'TriggerDefinition';
      case FHIRTypesBuilderEnum.usageContext:
        return 'UsageContext';
      case FHIRTypesBuilderEnum.virtualServiceDetail:
        return 'VirtualServiceDetail';
      case FHIRTypesBuilderEnum.xhtml:
        return 'xhtml';
      case FHIRTypesBuilderEnum.resource:
        return 'Resource';
      case FHIRTypesBuilderEnum.binary:
        return 'Binary';
      case FHIRTypesBuilderEnum.bundle:
        return 'Bundle';
      case FHIRTypesBuilderEnum.domainResource:
        return 'DomainResource';
      case FHIRTypesBuilderEnum.account:
        return 'Account';
      case FHIRTypesBuilderEnum.activityDefinition:
        return 'ActivityDefinition';
      case FHIRTypesBuilderEnum.actorDefinition:
        return 'ActorDefinition';
      case FHIRTypesBuilderEnum.administrableProductDefinition:
        return 'AdministrableProductDefinition';
      case FHIRTypesBuilderEnum.adverseEvent:
        return 'AdverseEvent';
      case FHIRTypesBuilderEnum.allergyIntolerance:
        return 'AllergyIntolerance';
      case FHIRTypesBuilderEnum.appointment:
        return 'Appointment';
      case FHIRTypesBuilderEnum.appointmentResponse:
        return 'AppointmentResponse';
      case FHIRTypesBuilderEnum.artifactAssessment:
        return 'ArtifactAssessment';
      case FHIRTypesBuilderEnum.auditEvent:
        return 'AuditEvent';
      case FHIRTypesBuilderEnum.basic:
        return 'Basic';
      case FHIRTypesBuilderEnum.biologicallyDerivedProduct:
        return 'BiologicallyDerivedProduct';
      case FHIRTypesBuilderEnum.biologicallyDerivedProductDispense:
        return 'BiologicallyDerivedProductDispense';
      case FHIRTypesBuilderEnum.bodyStructure:
        return 'BodyStructure';
      case FHIRTypesBuilderEnum.canonicalResource:
        return 'CanonicalResource';
      case FHIRTypesBuilderEnum.capabilityStatement:
        return 'CapabilityStatement';
      case FHIRTypesBuilderEnum.carePlan:
        return 'CarePlan';
      case FHIRTypesBuilderEnum.careTeam:
        return 'CareTeam';
      case FHIRTypesBuilderEnum.chargeItem:
        return 'ChargeItem';
      case FHIRTypesBuilderEnum.chargeItemDefinition:
        return 'ChargeItemDefinition';
      case FHIRTypesBuilderEnum.citation:
        return 'Citation';
      case FHIRTypesBuilderEnum.claim:
        return 'Claim';
      case FHIRTypesBuilderEnum.claimResponse:
        return 'ClaimResponse';
      case FHIRTypesBuilderEnum.clinicalImpression:
        return 'ClinicalImpression';
      case FHIRTypesBuilderEnum.clinicalUseDefinition:
        return 'ClinicalUseDefinition';
      case FHIRTypesBuilderEnum.codeSystem:
        return 'CodeSystem';
      case FHIRTypesBuilderEnum.communication:
        return 'Communication';
      case FHIRTypesBuilderEnum.communicationRequest:
        return 'CommunicationRequest';
      case FHIRTypesBuilderEnum.compartmentDefinition:
        return 'CompartmentDefinition';
      case FHIRTypesBuilderEnum.composition:
        return 'Composition';
      case FHIRTypesBuilderEnum.conceptMap:
        return 'ConceptMap';
      case FHIRTypesBuilderEnum.condition:
        return 'Condition';
      case FHIRTypesBuilderEnum.conditionDefinition:
        return 'ConditionDefinition';
      case FHIRTypesBuilderEnum.consent:
        return 'Consent';
      case FHIRTypesBuilderEnum.contract:
        return 'Contract';
      case FHIRTypesBuilderEnum.coverage:
        return 'Coverage';
      case FHIRTypesBuilderEnum.coverageEligibilityRequest:
        return 'CoverageEligibilityRequest';
      case FHIRTypesBuilderEnum.coverageEligibilityResponse:
        return 'CoverageEligibilityResponse';
      case FHIRTypesBuilderEnum.detectedIssue:
        return 'DetectedIssue';
      case FHIRTypesBuilderEnum.device:
        return 'Device';
      case FHIRTypesBuilderEnum.deviceAssociation:
        return 'DeviceAssociation';
      case FHIRTypesBuilderEnum.deviceDefinition:
        return 'DeviceDefinition';
      case FHIRTypesBuilderEnum.deviceDispense:
        return 'DeviceDispense';
      case FHIRTypesBuilderEnum.deviceMetric:
        return 'DeviceMetric';
      case FHIRTypesBuilderEnum.deviceRequest:
        return 'DeviceRequest';
      case FHIRTypesBuilderEnum.deviceUsage:
        return 'DeviceUsage';
      case FHIRTypesBuilderEnum.diagnosticReport:
        return 'DiagnosticReport';
      case FHIRTypesBuilderEnum.documentReference:
        return 'DocumentReference';
      case FHIRTypesBuilderEnum.encounter:
        return 'Encounter';
      case FHIRTypesBuilderEnum.encounterHistory:
        return 'EncounterHistory';
      case FHIRTypesBuilderEnum.endpoint:
        return 'Endpoint';
      case FHIRTypesBuilderEnum.enrollmentRequest:
        return 'EnrollmentRequest';
      case FHIRTypesBuilderEnum.enrollmentResponse:
        return 'EnrollmentResponse';
      case FHIRTypesBuilderEnum.episodeOfCare:
        return 'EpisodeOfCare';
      case FHIRTypesBuilderEnum.eventDefinition:
        return 'EventDefinition';
      case FHIRTypesBuilderEnum.evidence:
        return 'Evidence';
      case FHIRTypesBuilderEnum.evidenceReport:
        return 'EvidenceReport';
      case FHIRTypesBuilderEnum.evidenceVariable:
        return 'EvidenceVariable';
      case FHIRTypesBuilderEnum.exampleScenario:
        return 'ExampleScenario';
      case FHIRTypesBuilderEnum.explanationOfBenefit:
        return 'ExplanationOfBenefit';
      case FHIRTypesBuilderEnum.familyMemberHistory:
        return 'FamilyMemberHistory';
      case FHIRTypesBuilderEnum.flag:
        return 'Flag';
      case FHIRTypesBuilderEnum.formularyItem:
        return 'FormularyItem';
      case FHIRTypesBuilderEnum.genomicStudy:
        return 'GenomicStudy';
      case FHIRTypesBuilderEnum.goal:
        return 'Goal';
      case FHIRTypesBuilderEnum.graphDefinition:
        return 'GraphDefinition';
      case FHIRTypesBuilderEnum.group:
        return 'Group';
      case FHIRTypesBuilderEnum.guidanceResponse:
        return 'GuidanceResponse';
      case FHIRTypesBuilderEnum.healthcareService:
        return 'HealthcareService';
      case FHIRTypesBuilderEnum.imagingSelection:
        return 'ImagingSelection';
      case FHIRTypesBuilderEnum.imagingStudy:
        return 'ImagingStudy';
      case FHIRTypesBuilderEnum.immunization:
        return 'Immunization';
      case FHIRTypesBuilderEnum.immunizationEvaluation:
        return 'ImmunizationEvaluation';
      case FHIRTypesBuilderEnum.immunizationRecommendation:
        return 'ImmunizationRecommendation';
      case FHIRTypesBuilderEnum.implementationGuide:
        return 'ImplementationGuide';
      case FHIRTypesBuilderEnum.ingredient:
        return 'Ingredient';
      case FHIRTypesBuilderEnum.insurancePlan:
        return 'InsurancePlan';
      case FHIRTypesBuilderEnum.inventoryItem:
        return 'InventoryItem';
      case FHIRTypesBuilderEnum.inventoryReport:
        return 'InventoryReport';
      case FHIRTypesBuilderEnum.invoice:
        return 'Invoice';
      case FHIRTypesBuilderEnum.library:
        return 'Library';
      case FHIRTypesBuilderEnum.linkage:
        return 'Linkage';
      case FHIRTypesBuilderEnum.list_:
        return 'List';
      case FHIRTypesBuilderEnum.location:
        return 'Location';
      case FHIRTypesBuilderEnum.manufacturedItemDefinition:
        return 'ManufacturedItemDefinition';
      case FHIRTypesBuilderEnum.measure:
        return 'Measure';
      case FHIRTypesBuilderEnum.measureReport:
        return 'MeasureReport';
      case FHIRTypesBuilderEnum.medication:
        return 'Medication';
      case FHIRTypesBuilderEnum.medicationAdministration:
        return 'MedicationAdministration';
      case FHIRTypesBuilderEnum.medicationDispense:
        return 'MedicationDispense';
      case FHIRTypesBuilderEnum.medicationKnowledge:
        return 'MedicationKnowledge';
      case FHIRTypesBuilderEnum.medicationRequest:
        return 'MedicationRequest';
      case FHIRTypesBuilderEnum.medicationStatement:
        return 'MedicationStatement';
      case FHIRTypesBuilderEnum.medicinalProductDefinition:
        return 'MedicinalProductDefinition';
      case FHIRTypesBuilderEnum.messageDefinition:
        return 'MessageDefinition';
      case FHIRTypesBuilderEnum.messageHeader:
        return 'MessageHeader';
      case FHIRTypesBuilderEnum.metadataResource:
        return 'MetadataResource';
      case FHIRTypesBuilderEnum.molecularSequence:
        return 'MolecularSequence';
      case FHIRTypesBuilderEnum.namingSystem:
        return 'NamingSystem';
      case FHIRTypesBuilderEnum.nutritionIntake:
        return 'NutritionIntake';
      case FHIRTypesBuilderEnum.nutritionOrder:
        return 'NutritionOrder';
      case FHIRTypesBuilderEnum.nutritionProduct:
        return 'NutritionProduct';
      case FHIRTypesBuilderEnum.observation:
        return 'Observation';
      case FHIRTypesBuilderEnum.observationDefinition:
        return 'ObservationDefinition';
      case FHIRTypesBuilderEnum.operationDefinition:
        return 'OperationDefinition';
      case FHIRTypesBuilderEnum.operationOutcome:
        return 'OperationOutcome';
      case FHIRTypesBuilderEnum.organization:
        return 'Organization';
      case FHIRTypesBuilderEnum.organizationAffiliation:
        return 'OrganizationAffiliation';
      case FHIRTypesBuilderEnum.packagedProductDefinition:
        return 'PackagedProductDefinition';
      case FHIRTypesBuilderEnum.patient:
        return 'Patient';
      case FHIRTypesBuilderEnum.paymentNotice:
        return 'PaymentNotice';
      case FHIRTypesBuilderEnum.paymentReconciliation:
        return 'PaymentReconciliation';
      case FHIRTypesBuilderEnum.permission:
        return 'Permission';
      case FHIRTypesBuilderEnum.person:
        return 'Person';
      case FHIRTypesBuilderEnum.planDefinition:
        return 'PlanDefinition';
      case FHIRTypesBuilderEnum.practitioner:
        return 'Practitioner';
      case FHIRTypesBuilderEnum.practitionerRole:
        return 'PractitionerRole';
      case FHIRTypesBuilderEnum.procedure:
        return 'Procedure';
      case FHIRTypesBuilderEnum.provenance:
        return 'Provenance';
      case FHIRTypesBuilderEnum.questionnaire:
        return 'Questionnaire';
      case FHIRTypesBuilderEnum.questionnaireResponse:
        return 'QuestionnaireResponse';
      case FHIRTypesBuilderEnum.regulatedAuthorization:
        return 'RegulatedAuthorization';
      case FHIRTypesBuilderEnum.relatedPerson:
        return 'RelatedPerson';
      case FHIRTypesBuilderEnum.requestOrchestration:
        return 'RequestOrchestration';
      case FHIRTypesBuilderEnum.requirements:
        return 'Requirements';
      case FHIRTypesBuilderEnum.researchStudy:
        return 'ResearchStudy';
      case FHIRTypesBuilderEnum.researchSubject:
        return 'ResearchSubject';
      case FHIRTypesBuilderEnum.riskAssessment:
        return 'RiskAssessment';
      case FHIRTypesBuilderEnum.schedule:
        return 'Schedule';
      case FHIRTypesBuilderEnum.searchParameter:
        return 'SearchParameter';
      case FHIRTypesBuilderEnum.serviceRequest:
        return 'ServiceRequest';
      case FHIRTypesBuilderEnum.slot:
        return 'Slot';
      case FHIRTypesBuilderEnum.specimen:
        return 'Specimen';
      case FHIRTypesBuilderEnum.specimenDefinition:
        return 'SpecimenDefinition';
      case FHIRTypesBuilderEnum.structureDefinition:
        return 'StructureDefinition';
      case FHIRTypesBuilderEnum.structureMap:
        return 'StructureMap';
      case FHIRTypesBuilderEnum.subscription:
        return 'Subscription';
      case FHIRTypesBuilderEnum.subscriptionStatus:
        return 'SubscriptionStatus';
      case FHIRTypesBuilderEnum.subscriptionTopic:
        return 'SubscriptionTopic';
      case FHIRTypesBuilderEnum.substance:
        return 'Substance';
      case FHIRTypesBuilderEnum.substanceDefinition:
        return 'SubstanceDefinition';
      case FHIRTypesBuilderEnum.substanceNucleicAcid:
        return 'SubstanceNucleicAcid';
      case FHIRTypesBuilderEnum.substancePolymer:
        return 'SubstancePolymer';
      case FHIRTypesBuilderEnum.substanceProtein:
        return 'SubstanceProtein';
      case FHIRTypesBuilderEnum.substanceReferenceInformation:
        return 'SubstanceReferenceInformation';
      case FHIRTypesBuilderEnum.substanceSourceMaterial:
        return 'SubstanceSourceMaterial';
      case FHIRTypesBuilderEnum.supplyDelivery:
        return 'SupplyDelivery';
      case FHIRTypesBuilderEnum.supplyRequest:
        return 'SupplyRequest';
      case FHIRTypesBuilderEnum.task:
        return 'Task';
      case FHIRTypesBuilderEnum.terminologyCapabilities:
        return 'TerminologyCapabilities';
      case FHIRTypesBuilderEnum.testPlan:
        return 'TestPlan';
      case FHIRTypesBuilderEnum.testReport:
        return 'TestReport';
      case FHIRTypesBuilderEnum.testScript:
        return 'TestScript';
      case FHIRTypesBuilderEnum.transport:
        return 'Transport';
      case FHIRTypesBuilderEnum.valueSet:
        return 'ValueSet';
      case FHIRTypesBuilderEnum.verificationResult:
        return 'VerificationResult';
      case FHIRTypesBuilderEnum.visionPrescription:
        return 'VisionPrescription';
      case FHIRTypesBuilderEnum.parameters:
        return 'Parameters';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static FHIRTypesBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return FHIRTypesBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static FHIRTypesBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'Base':
        return FHIRTypesBuilderEnum.base;
      case 'Element':
        return FHIRTypesBuilderEnum.element_;
      case 'BackboneElement':
        return FHIRTypesBuilderEnum.backboneElement;
      case 'DataType':
        return FHIRTypesBuilderEnum.dataType;
      case 'Address':
        return FHIRTypesBuilderEnum.address;
      case 'Annotation':
        return FHIRTypesBuilderEnum.annotation;
      case 'Attachment':
        return FHIRTypesBuilderEnum.attachment;
      case 'Availability':
        return FHIRTypesBuilderEnum.availability;
      case 'BackboneType':
        return FHIRTypesBuilderEnum.backboneType;
      case 'Dosage':
        return FHIRTypesBuilderEnum.dosage;
      case 'ElementDefinition':
        return FHIRTypesBuilderEnum.elementDefinition;
      case 'MarketingStatus':
        return FHIRTypesBuilderEnum.marketingStatus;
      case 'ProductShelfLife':
        return FHIRTypesBuilderEnum.productShelfLife;
      case 'Timing':
        return FHIRTypesBuilderEnum.timing;
      case 'CodeableConcept':
        return FHIRTypesBuilderEnum.codeableConcept;
      case 'CodeableReference':
        return FHIRTypesBuilderEnum.codeableReference;
      case 'Coding':
        return FHIRTypesBuilderEnum.coding;
      case 'ContactDetail':
        return FHIRTypesBuilderEnum.contactDetail;
      case 'ContactPoint':
        return FHIRTypesBuilderEnum.contactPoint;
      case 'Contributor':
        return FHIRTypesBuilderEnum.contributor;
      case 'DataRequirement':
        return FHIRTypesBuilderEnum.dataRequirement;
      case 'Expression':
        return FHIRTypesBuilderEnum.expression;
      case 'ExtendedContactDetail':
        return FHIRTypesBuilderEnum.extendedContactDetail;
      case 'Extension':
        return FHIRTypesBuilderEnum.extension;
      case 'HumanName':
        return FHIRTypesBuilderEnum.humanName;
      case 'Identifier':
        return FHIRTypesBuilderEnum.identifier;
      case 'Meta':
        return FHIRTypesBuilderEnum.meta;
      case 'MonetaryComponent':
        return FHIRTypesBuilderEnum.monetaryComponent;
      case 'Money':
        return FHIRTypesBuilderEnum.money;
      case 'Narrative':
        return FHIRTypesBuilderEnum.narrative;
      case 'ParameterDefinition':
        return FHIRTypesBuilderEnum.parameterDefinition;
      case 'Period':
        return FHIRTypesBuilderEnum.period;
      case 'PrimitiveType':
        return FHIRTypesBuilderEnum.primitiveType;
      case 'base64Binary':
        return FHIRTypesBuilderEnum.base64Binary;
      case 'boolean':
        return FHIRTypesBuilderEnum.boolean;
      case 'date':
        return FHIRTypesBuilderEnum.date;
      case 'dateTime':
        return FHIRTypesBuilderEnum.dateTime;
      case 'decimal':
        return FHIRTypesBuilderEnum.decimal;
      case 'instant':
        return FHIRTypesBuilderEnum.instant;
      case 'integer':
        return FHIRTypesBuilderEnum.integer;
      case 'positiveInt':
        return FHIRTypesBuilderEnum.positiveInt;
      case 'unsignedInt':
        return FHIRTypesBuilderEnum.unsignedInt;
      case 'integer64':
        return FHIRTypesBuilderEnum.integer64;
      case 'string':
        return FHIRTypesBuilderEnum.string;
      case 'code':
        return FHIRTypesBuilderEnum.code;
      case 'id':
        return FHIRTypesBuilderEnum.id_;
      case 'markdown':
        return FHIRTypesBuilderEnum.markdown;
      case 'time':
        return FHIRTypesBuilderEnum.time;
      case 'uri':
        return FHIRTypesBuilderEnum.uri;
      case 'canonical':
        return FHIRTypesBuilderEnum.canonical;
      case 'oid':
        return FHIRTypesBuilderEnum.oid;
      case 'url':
        return FHIRTypesBuilderEnum.url;
      case 'uuid':
        return FHIRTypesBuilderEnum.uuid;
      case 'Quantity':
        return FHIRTypesBuilderEnum.quantity;
      case 'Age':
        return FHIRTypesBuilderEnum.age;
      case 'Count':
        return FHIRTypesBuilderEnum.count;
      case 'Distance':
        return FHIRTypesBuilderEnum.distance;
      case 'Duration':
        return FHIRTypesBuilderEnum.duration;
      case 'Range':
        return FHIRTypesBuilderEnum.range;
      case 'Ratio':
        return FHIRTypesBuilderEnum.ratio;
      case 'RatioRange':
        return FHIRTypesBuilderEnum.ratioRange;
      case 'Reference':
        return FHIRTypesBuilderEnum.reference;
      case 'RelatedArtifact':
        return FHIRTypesBuilderEnum.relatedArtifact;
      case 'SampledData':
        return FHIRTypesBuilderEnum.sampledData;
      case 'Signature':
        return FHIRTypesBuilderEnum.signature;
      case 'TriggerDefinition':
        return FHIRTypesBuilderEnum.triggerDefinition;
      case 'UsageContext':
        return FHIRTypesBuilderEnum.usageContext;
      case 'VirtualServiceDetail':
        return FHIRTypesBuilderEnum.virtualServiceDetail;
      case 'xhtml':
        return FHIRTypesBuilderEnum.xhtml;
      case 'Resource':
        return FHIRTypesBuilderEnum.resource;
      case 'Binary':
        return FHIRTypesBuilderEnum.binary;
      case 'Bundle':
        return FHIRTypesBuilderEnum.bundle;
      case 'DomainResource':
        return FHIRTypesBuilderEnum.domainResource;
      case 'Account':
        return FHIRTypesBuilderEnum.account;
      case 'ActivityDefinition':
        return FHIRTypesBuilderEnum.activityDefinition;
      case 'ActorDefinition':
        return FHIRTypesBuilderEnum.actorDefinition;
      case 'AdministrableProductDefinition':
        return FHIRTypesBuilderEnum.administrableProductDefinition;
      case 'AdverseEvent':
        return FHIRTypesBuilderEnum.adverseEvent;
      case 'AllergyIntolerance':
        return FHIRTypesBuilderEnum.allergyIntolerance;
      case 'Appointment':
        return FHIRTypesBuilderEnum.appointment;
      case 'AppointmentResponse':
        return FHIRTypesBuilderEnum.appointmentResponse;
      case 'ArtifactAssessment':
        return FHIRTypesBuilderEnum.artifactAssessment;
      case 'AuditEvent':
        return FHIRTypesBuilderEnum.auditEvent;
      case 'Basic':
        return FHIRTypesBuilderEnum.basic;
      case 'BiologicallyDerivedProduct':
        return FHIRTypesBuilderEnum.biologicallyDerivedProduct;
      case 'BiologicallyDerivedProductDispense':
        return FHIRTypesBuilderEnum.biologicallyDerivedProductDispense;
      case 'BodyStructure':
        return FHIRTypesBuilderEnum.bodyStructure;
      case 'CanonicalResource':
        return FHIRTypesBuilderEnum.canonicalResource;
      case 'CapabilityStatement':
        return FHIRTypesBuilderEnum.capabilityStatement;
      case 'CarePlan':
        return FHIRTypesBuilderEnum.carePlan;
      case 'CareTeam':
        return FHIRTypesBuilderEnum.careTeam;
      case 'ChargeItem':
        return FHIRTypesBuilderEnum.chargeItem;
      case 'ChargeItemDefinition':
        return FHIRTypesBuilderEnum.chargeItemDefinition;
      case 'Citation':
        return FHIRTypesBuilderEnum.citation;
      case 'Claim':
        return FHIRTypesBuilderEnum.claim;
      case 'ClaimResponse':
        return FHIRTypesBuilderEnum.claimResponse;
      case 'ClinicalImpression':
        return FHIRTypesBuilderEnum.clinicalImpression;
      case 'ClinicalUseDefinition':
        return FHIRTypesBuilderEnum.clinicalUseDefinition;
      case 'CodeSystem':
        return FHIRTypesBuilderEnum.codeSystem;
      case 'Communication':
        return FHIRTypesBuilderEnum.communication;
      case 'CommunicationRequest':
        return FHIRTypesBuilderEnum.communicationRequest;
      case 'CompartmentDefinition':
        return FHIRTypesBuilderEnum.compartmentDefinition;
      case 'Composition':
        return FHIRTypesBuilderEnum.composition;
      case 'ConceptMap':
        return FHIRTypesBuilderEnum.conceptMap;
      case 'Condition':
        return FHIRTypesBuilderEnum.condition;
      case 'ConditionDefinition':
        return FHIRTypesBuilderEnum.conditionDefinition;
      case 'Consent':
        return FHIRTypesBuilderEnum.consent;
      case 'Contract':
        return FHIRTypesBuilderEnum.contract;
      case 'Coverage':
        return FHIRTypesBuilderEnum.coverage;
      case 'CoverageEligibilityRequest':
        return FHIRTypesBuilderEnum.coverageEligibilityRequest;
      case 'CoverageEligibilityResponse':
        return FHIRTypesBuilderEnum.coverageEligibilityResponse;
      case 'DetectedIssue':
        return FHIRTypesBuilderEnum.detectedIssue;
      case 'Device':
        return FHIRTypesBuilderEnum.device;
      case 'DeviceAssociation':
        return FHIRTypesBuilderEnum.deviceAssociation;
      case 'DeviceDefinition':
        return FHIRTypesBuilderEnum.deviceDefinition;
      case 'DeviceDispense':
        return FHIRTypesBuilderEnum.deviceDispense;
      case 'DeviceMetric':
        return FHIRTypesBuilderEnum.deviceMetric;
      case 'DeviceRequest':
        return FHIRTypesBuilderEnum.deviceRequest;
      case 'DeviceUsage':
        return FHIRTypesBuilderEnum.deviceUsage;
      case 'DiagnosticReport':
        return FHIRTypesBuilderEnum.diagnosticReport;
      case 'DocumentReference':
        return FHIRTypesBuilderEnum.documentReference;
      case 'Encounter':
        return FHIRTypesBuilderEnum.encounter;
      case 'EncounterHistory':
        return FHIRTypesBuilderEnum.encounterHistory;
      case 'Endpoint':
        return FHIRTypesBuilderEnum.endpoint;
      case 'EnrollmentRequest':
        return FHIRTypesBuilderEnum.enrollmentRequest;
      case 'EnrollmentResponse':
        return FHIRTypesBuilderEnum.enrollmentResponse;
      case 'EpisodeOfCare':
        return FHIRTypesBuilderEnum.episodeOfCare;
      case 'EventDefinition':
        return FHIRTypesBuilderEnum.eventDefinition;
      case 'Evidence':
        return FHIRTypesBuilderEnum.evidence;
      case 'EvidenceReport':
        return FHIRTypesBuilderEnum.evidenceReport;
      case 'EvidenceVariable':
        return FHIRTypesBuilderEnum.evidenceVariable;
      case 'ExampleScenario':
        return FHIRTypesBuilderEnum.exampleScenario;
      case 'ExplanationOfBenefit':
        return FHIRTypesBuilderEnum.explanationOfBenefit;
      case 'FamilyMemberHistory':
        return FHIRTypesBuilderEnum.familyMemberHistory;
      case 'Flag':
        return FHIRTypesBuilderEnum.flag;
      case 'FormularyItem':
        return FHIRTypesBuilderEnum.formularyItem;
      case 'GenomicStudy':
        return FHIRTypesBuilderEnum.genomicStudy;
      case 'Goal':
        return FHIRTypesBuilderEnum.goal;
      case 'GraphDefinition':
        return FHIRTypesBuilderEnum.graphDefinition;
      case 'Group':
        return FHIRTypesBuilderEnum.group;
      case 'GuidanceResponse':
        return FHIRTypesBuilderEnum.guidanceResponse;
      case 'HealthcareService':
        return FHIRTypesBuilderEnum.healthcareService;
      case 'ImagingSelection':
        return FHIRTypesBuilderEnum.imagingSelection;
      case 'ImagingStudy':
        return FHIRTypesBuilderEnum.imagingStudy;
      case 'Immunization':
        return FHIRTypesBuilderEnum.immunization;
      case 'ImmunizationEvaluation':
        return FHIRTypesBuilderEnum.immunizationEvaluation;
      case 'ImmunizationRecommendation':
        return FHIRTypesBuilderEnum.immunizationRecommendation;
      case 'ImplementationGuide':
        return FHIRTypesBuilderEnum.implementationGuide;
      case 'Ingredient':
        return FHIRTypesBuilderEnum.ingredient;
      case 'InsurancePlan':
        return FHIRTypesBuilderEnum.insurancePlan;
      case 'InventoryItem':
        return FHIRTypesBuilderEnum.inventoryItem;
      case 'InventoryReport':
        return FHIRTypesBuilderEnum.inventoryReport;
      case 'Invoice':
        return FHIRTypesBuilderEnum.invoice;
      case 'Library':
        return FHIRTypesBuilderEnum.library;
      case 'Linkage':
        return FHIRTypesBuilderEnum.linkage;
      case 'List':
        return FHIRTypesBuilderEnum.list_;
      case 'Location':
        return FHIRTypesBuilderEnum.location;
      case 'ManufacturedItemDefinition':
        return FHIRTypesBuilderEnum.manufacturedItemDefinition;
      case 'Measure':
        return FHIRTypesBuilderEnum.measure;
      case 'MeasureReport':
        return FHIRTypesBuilderEnum.measureReport;
      case 'Medication':
        return FHIRTypesBuilderEnum.medication;
      case 'MedicationAdministration':
        return FHIRTypesBuilderEnum.medicationAdministration;
      case 'MedicationDispense':
        return FHIRTypesBuilderEnum.medicationDispense;
      case 'MedicationKnowledge':
        return FHIRTypesBuilderEnum.medicationKnowledge;
      case 'MedicationRequest':
        return FHIRTypesBuilderEnum.medicationRequest;
      case 'MedicationStatement':
        return FHIRTypesBuilderEnum.medicationStatement;
      case 'MedicinalProductDefinition':
        return FHIRTypesBuilderEnum.medicinalProductDefinition;
      case 'MessageDefinition':
        return FHIRTypesBuilderEnum.messageDefinition;
      case 'MessageHeader':
        return FHIRTypesBuilderEnum.messageHeader;
      case 'MetadataResource':
        return FHIRTypesBuilderEnum.metadataResource;
      case 'MolecularSequence':
        return FHIRTypesBuilderEnum.molecularSequence;
      case 'NamingSystem':
        return FHIRTypesBuilderEnum.namingSystem;
      case 'NutritionIntake':
        return FHIRTypesBuilderEnum.nutritionIntake;
      case 'NutritionOrder':
        return FHIRTypesBuilderEnum.nutritionOrder;
      case 'NutritionProduct':
        return FHIRTypesBuilderEnum.nutritionProduct;
      case 'Observation':
        return FHIRTypesBuilderEnum.observation;
      case 'ObservationDefinition':
        return FHIRTypesBuilderEnum.observationDefinition;
      case 'OperationDefinition':
        return FHIRTypesBuilderEnum.operationDefinition;
      case 'OperationOutcome':
        return FHIRTypesBuilderEnum.operationOutcome;
      case 'Organization':
        return FHIRTypesBuilderEnum.organization;
      case 'OrganizationAffiliation':
        return FHIRTypesBuilderEnum.organizationAffiliation;
      case 'PackagedProductDefinition':
        return FHIRTypesBuilderEnum.packagedProductDefinition;
      case 'Patient':
        return FHIRTypesBuilderEnum.patient;
      case 'PaymentNotice':
        return FHIRTypesBuilderEnum.paymentNotice;
      case 'PaymentReconciliation':
        return FHIRTypesBuilderEnum.paymentReconciliation;
      case 'Permission':
        return FHIRTypesBuilderEnum.permission;
      case 'Person':
        return FHIRTypesBuilderEnum.person;
      case 'PlanDefinition':
        return FHIRTypesBuilderEnum.planDefinition;
      case 'Practitioner':
        return FHIRTypesBuilderEnum.practitioner;
      case 'PractitionerRole':
        return FHIRTypesBuilderEnum.practitionerRole;
      case 'Procedure':
        return FHIRTypesBuilderEnum.procedure;
      case 'Provenance':
        return FHIRTypesBuilderEnum.provenance;
      case 'Questionnaire':
        return FHIRTypesBuilderEnum.questionnaire;
      case 'QuestionnaireResponse':
        return FHIRTypesBuilderEnum.questionnaireResponse;
      case 'RegulatedAuthorization':
        return FHIRTypesBuilderEnum.regulatedAuthorization;
      case 'RelatedPerson':
        return FHIRTypesBuilderEnum.relatedPerson;
      case 'RequestOrchestration':
        return FHIRTypesBuilderEnum.requestOrchestration;
      case 'Requirements':
        return FHIRTypesBuilderEnum.requirements;
      case 'ResearchStudy':
        return FHIRTypesBuilderEnum.researchStudy;
      case 'ResearchSubject':
        return FHIRTypesBuilderEnum.researchSubject;
      case 'RiskAssessment':
        return FHIRTypesBuilderEnum.riskAssessment;
      case 'Schedule':
        return FHIRTypesBuilderEnum.schedule;
      case 'SearchParameter':
        return FHIRTypesBuilderEnum.searchParameter;
      case 'ServiceRequest':
        return FHIRTypesBuilderEnum.serviceRequest;
      case 'Slot':
        return FHIRTypesBuilderEnum.slot;
      case 'Specimen':
        return FHIRTypesBuilderEnum.specimen;
      case 'SpecimenDefinition':
        return FHIRTypesBuilderEnum.specimenDefinition;
      case 'StructureDefinition':
        return FHIRTypesBuilderEnum.structureDefinition;
      case 'StructureMap':
        return FHIRTypesBuilderEnum.structureMap;
      case 'Subscription':
        return FHIRTypesBuilderEnum.subscription;
      case 'SubscriptionStatus':
        return FHIRTypesBuilderEnum.subscriptionStatus;
      case 'SubscriptionTopic':
        return FHIRTypesBuilderEnum.subscriptionTopic;
      case 'Substance':
        return FHIRTypesBuilderEnum.substance;
      case 'SubstanceDefinition':
        return FHIRTypesBuilderEnum.substanceDefinition;
      case 'SubstanceNucleicAcid':
        return FHIRTypesBuilderEnum.substanceNucleicAcid;
      case 'SubstancePolymer':
        return FHIRTypesBuilderEnum.substancePolymer;
      case 'SubstanceProtein':
        return FHIRTypesBuilderEnum.substanceProtein;
      case 'SubstanceReferenceInformation':
        return FHIRTypesBuilderEnum.substanceReferenceInformation;
      case 'SubstanceSourceMaterial':
        return FHIRTypesBuilderEnum.substanceSourceMaterial;
      case 'SupplyDelivery':
        return FHIRTypesBuilderEnum.supplyDelivery;
      case 'SupplyRequest':
        return FHIRTypesBuilderEnum.supplyRequest;
      case 'Task':
        return FHIRTypesBuilderEnum.task;
      case 'TerminologyCapabilities':
        return FHIRTypesBuilderEnum.terminologyCapabilities;
      case 'TestPlan':
        return FHIRTypesBuilderEnum.testPlan;
      case 'TestReport':
        return FHIRTypesBuilderEnum.testReport;
      case 'TestScript':
        return FHIRTypesBuilderEnum.testScript;
      case 'Transport':
        return FHIRTypesBuilderEnum.transport;
      case 'ValueSet':
        return FHIRTypesBuilderEnum.valueSet;
      case 'VerificationResult':
        return FHIRTypesBuilderEnum.verificationResult;
      case 'VisionPrescription':
        return FHIRTypesBuilderEnum.visionPrescription;
      case 'Parameters':
        return FHIRTypesBuilderEnum.parameters;
    }
    return null;
  }
}

/// All FHIR types
class FHIRTypesBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  FHIRTypesBuilder._({
    required super.valueString,
    this.valueEnum,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory FHIRTypesBuilder(
    String? rawValue, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCodeBuilder._validateCode(rawValue) : null;
    final valueEnum = FHIRTypesBuilderEnum.fromString(
      valueString,
    );
    return FHIRTypesBuilder._(
      valueString: valueString,
      valueEnum: valueEnum,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Create empty [FHIRTypesBuilder]
  /// with element only
  factory FHIRTypesBuilder.empty() => FHIRTypesBuilder._(valueString: null);

  /// Factory constructor to create
  /// [FHIRTypesBuilder] from JSON.
  factory FHIRTypesBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FHIRTypesBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'FHIRTypesBuilder cannot be constructed from JSON.',
      );
    }
    return FHIRTypesBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for FHIRTypesBuilder
  final FHIRTypesBuilderEnum? valueEnum;

  /// Base
  static FHIRTypesBuilder base = FHIRTypesBuilder._(
    valueString: 'Base',
    valueEnum: FHIRTypesBuilderEnum.base,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Base',
    ),
  );

  /// Element_
  static FHIRTypesBuilder element_ = FHIRTypesBuilder._(
    valueString: 'Element',
    valueEnum: FHIRTypesBuilderEnum.element_,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Element',
    ),
  );

  /// BackboneElement
  static FHIRTypesBuilder backboneElement = FHIRTypesBuilder._(
    valueString: 'BackboneElement',
    valueEnum: FHIRTypesBuilderEnum.backboneElement,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'BackboneElement',
    ),
  );

  /// DataType
  static FHIRTypesBuilder dataType = FHIRTypesBuilder._(
    valueString: 'DataType',
    valueEnum: FHIRTypesBuilderEnum.dataType,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'DataType',
    ),
  );

  /// Address
  static FHIRTypesBuilder address = FHIRTypesBuilder._(
    valueString: 'Address',
    valueEnum: FHIRTypesBuilderEnum.address,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Address',
    ),
  );

  /// Annotation
  static FHIRTypesBuilder annotation = FHIRTypesBuilder._(
    valueString: 'Annotation',
    valueEnum: FHIRTypesBuilderEnum.annotation,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Annotation',
    ),
  );

  /// Attachment
  static FHIRTypesBuilder attachment = FHIRTypesBuilder._(
    valueString: 'Attachment',
    valueEnum: FHIRTypesBuilderEnum.attachment,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Attachment',
    ),
  );

  /// Availability
  static FHIRTypesBuilder availability = FHIRTypesBuilder._(
    valueString: 'Availability',
    valueEnum: FHIRTypesBuilderEnum.availability,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Availability',
    ),
  );

  /// BackboneType
  static FHIRTypesBuilder backboneType = FHIRTypesBuilder._(
    valueString: 'BackboneType',
    valueEnum: FHIRTypesBuilderEnum.backboneType,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'BackboneType',
    ),
  );

  /// Dosage
  static FHIRTypesBuilder dosage = FHIRTypesBuilder._(
    valueString: 'Dosage',
    valueEnum: FHIRTypesBuilderEnum.dosage,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Dosage',
    ),
  );

  /// ElementDefinition
  static FHIRTypesBuilder elementDefinition = FHIRTypesBuilder._(
    valueString: 'ElementDefinition',
    valueEnum: FHIRTypesBuilderEnum.elementDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'ElementDefinition',
    ),
  );

  /// MarketingStatus
  static FHIRTypesBuilder marketingStatus = FHIRTypesBuilder._(
    valueString: 'MarketingStatus',
    valueEnum: FHIRTypesBuilderEnum.marketingStatus,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'MarketingStatus',
    ),
  );

  /// ProductShelfLife
  static FHIRTypesBuilder productShelfLife = FHIRTypesBuilder._(
    valueString: 'ProductShelfLife',
    valueEnum: FHIRTypesBuilderEnum.productShelfLife,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'ProductShelfLife',
    ),
  );

  /// Timing
  static FHIRTypesBuilder timing = FHIRTypesBuilder._(
    valueString: 'Timing',
    valueEnum: FHIRTypesBuilderEnum.timing,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Timing',
    ),
  );

  /// CodeableConcept
  static FHIRTypesBuilder codeableConcept = FHIRTypesBuilder._(
    valueString: 'CodeableConcept',
    valueEnum: FHIRTypesBuilderEnum.codeableConcept,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'CodeableConcept',
    ),
  );

  /// CodeableReference
  static FHIRTypesBuilder codeableReference = FHIRTypesBuilder._(
    valueString: 'CodeableReference',
    valueEnum: FHIRTypesBuilderEnum.codeableReference,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'CodeableReference',
    ),
  );

  /// Coding
  static FHIRTypesBuilder coding = FHIRTypesBuilder._(
    valueString: 'Coding',
    valueEnum: FHIRTypesBuilderEnum.coding,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Coding',
    ),
  );

  /// ContactDetail
  static FHIRTypesBuilder contactDetail = FHIRTypesBuilder._(
    valueString: 'ContactDetail',
    valueEnum: FHIRTypesBuilderEnum.contactDetail,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'ContactDetail',
    ),
  );

  /// ContactPoint
  static FHIRTypesBuilder contactPoint = FHIRTypesBuilder._(
    valueString: 'ContactPoint',
    valueEnum: FHIRTypesBuilderEnum.contactPoint,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'ContactPoint',
    ),
  );

  /// Contributor
  static FHIRTypesBuilder contributor = FHIRTypesBuilder._(
    valueString: 'Contributor',
    valueEnum: FHIRTypesBuilderEnum.contributor,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Contributor',
    ),
  );

  /// DataRequirement
  static FHIRTypesBuilder dataRequirement = FHIRTypesBuilder._(
    valueString: 'DataRequirement',
    valueEnum: FHIRTypesBuilderEnum.dataRequirement,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'DataRequirement',
    ),
  );

  /// Expression
  static FHIRTypesBuilder expression = FHIRTypesBuilder._(
    valueString: 'Expression',
    valueEnum: FHIRTypesBuilderEnum.expression,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Expression',
    ),
  );

  /// ExtendedContactDetail
  static FHIRTypesBuilder extendedContactDetail = FHIRTypesBuilder._(
    valueString: 'ExtendedContactDetail',
    valueEnum: FHIRTypesBuilderEnum.extendedContactDetail,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'ExtendedContactDetail',
    ),
  );

  /// Extension
  static FHIRTypesBuilder extension = FHIRTypesBuilder._(
    valueString: 'Extension',
    valueEnum: FHIRTypesBuilderEnum.extension,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Extension',
    ),
  );

  /// HumanName
  static FHIRTypesBuilder humanName = FHIRTypesBuilder._(
    valueString: 'HumanName',
    valueEnum: FHIRTypesBuilderEnum.humanName,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'HumanName',
    ),
  );

  /// Identifier
  static FHIRTypesBuilder identifier = FHIRTypesBuilder._(
    valueString: 'Identifier',
    valueEnum: FHIRTypesBuilderEnum.identifier,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Identifier',
    ),
  );

  /// Meta
  static FHIRTypesBuilder meta = FHIRTypesBuilder._(
    valueString: 'Meta',
    valueEnum: FHIRTypesBuilderEnum.meta,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Meta',
    ),
  );

  /// MonetaryComponent
  static FHIRTypesBuilder monetaryComponent = FHIRTypesBuilder._(
    valueString: 'MonetaryComponent',
    valueEnum: FHIRTypesBuilderEnum.monetaryComponent,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'MonetaryComponent',
    ),
  );

  /// Money
  static FHIRTypesBuilder money = FHIRTypesBuilder._(
    valueString: 'Money',
    valueEnum: FHIRTypesBuilderEnum.money,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Money',
    ),
  );

  /// Narrative
  static FHIRTypesBuilder narrative = FHIRTypesBuilder._(
    valueString: 'Narrative',
    valueEnum: FHIRTypesBuilderEnum.narrative,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Narrative',
    ),
  );

  /// ParameterDefinition
  static FHIRTypesBuilder parameterDefinition = FHIRTypesBuilder._(
    valueString: 'ParameterDefinition',
    valueEnum: FHIRTypesBuilderEnum.parameterDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'ParameterDefinition',
    ),
  );

  /// Period
  static FHIRTypesBuilder period = FHIRTypesBuilder._(
    valueString: 'Period',
    valueEnum: FHIRTypesBuilderEnum.period,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Period',
    ),
  );

  /// PrimitiveType
  static FHIRTypesBuilder primitiveType = FHIRTypesBuilder._(
    valueString: 'PrimitiveType',
    valueEnum: FHIRTypesBuilderEnum.primitiveType,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'PrimitiveType',
    ),
  );

  /// base64Binary
  static FHIRTypesBuilder base64Binary = FHIRTypesBuilder._(
    valueString: 'base64Binary',
    valueEnum: FHIRTypesBuilderEnum.base64Binary,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'base64Binary',
    ),
  );

  /// boolean
  static FHIRTypesBuilder boolean = FHIRTypesBuilder._(
    valueString: 'boolean',
    valueEnum: FHIRTypesBuilderEnum.boolean,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'boolean',
    ),
  );

  /// date
  static FHIRTypesBuilder date = FHIRTypesBuilder._(
    valueString: 'date',
    valueEnum: FHIRTypesBuilderEnum.date,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'date',
    ),
  );

  /// dateTime
  static FHIRTypesBuilder dateTime = FHIRTypesBuilder._(
    valueString: 'dateTime',
    valueEnum: FHIRTypesBuilderEnum.dateTime,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'dateTime',
    ),
  );

  /// decimal
  static FHIRTypesBuilder decimal = FHIRTypesBuilder._(
    valueString: 'decimal',
    valueEnum: FHIRTypesBuilderEnum.decimal,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'decimal',
    ),
  );

  /// instant
  static FHIRTypesBuilder instant = FHIRTypesBuilder._(
    valueString: 'instant',
    valueEnum: FHIRTypesBuilderEnum.instant,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'instant',
    ),
  );

  /// integer
  static FHIRTypesBuilder integer = FHIRTypesBuilder._(
    valueString: 'integer',
    valueEnum: FHIRTypesBuilderEnum.integer,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'integer',
    ),
  );

  /// positiveInt
  static FHIRTypesBuilder positiveInt = FHIRTypesBuilder._(
    valueString: 'positiveInt',
    valueEnum: FHIRTypesBuilderEnum.positiveInt,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'positiveInt',
    ),
  );

  /// unsignedInt
  static FHIRTypesBuilder unsignedInt = FHIRTypesBuilder._(
    valueString: 'unsignedInt',
    valueEnum: FHIRTypesBuilderEnum.unsignedInt,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'unsignedInt',
    ),
  );

  /// integer64
  static FHIRTypesBuilder integer64 = FHIRTypesBuilder._(
    valueString: 'integer64',
    valueEnum: FHIRTypesBuilderEnum.integer64,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'integer64',
    ),
  );

  /// string
  static FHIRTypesBuilder string = FHIRTypesBuilder._(
    valueString: 'string',
    valueEnum: FHIRTypesBuilderEnum.string,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'string',
    ),
  );

  /// code
  static FHIRTypesBuilder code = FHIRTypesBuilder._(
    valueString: 'code',
    valueEnum: FHIRTypesBuilderEnum.code,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'code',
    ),
  );

  /// id
  static FHIRTypesBuilder id_ = FHIRTypesBuilder._(
    valueString: 'id',
    valueEnum: FHIRTypesBuilderEnum.id_,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'id',
    ),
  );

  /// markdown
  static FHIRTypesBuilder markdown = FHIRTypesBuilder._(
    valueString: 'markdown',
    valueEnum: FHIRTypesBuilderEnum.markdown,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'markdown',
    ),
  );

  /// time
  static FHIRTypesBuilder time = FHIRTypesBuilder._(
    valueString: 'time',
    valueEnum: FHIRTypesBuilderEnum.time,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'time',
    ),
  );

  /// uri
  static FHIRTypesBuilder uri = FHIRTypesBuilder._(
    valueString: 'uri',
    valueEnum: FHIRTypesBuilderEnum.uri,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'uri',
    ),
  );

  /// canonical
  static FHIRTypesBuilder canonical = FHIRTypesBuilder._(
    valueString: 'canonical',
    valueEnum: FHIRTypesBuilderEnum.canonical,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'canonical',
    ),
  );

  /// oid
  static FHIRTypesBuilder oid = FHIRTypesBuilder._(
    valueString: 'oid',
    valueEnum: FHIRTypesBuilderEnum.oid,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'oid',
    ),
  );

  /// url
  static FHIRTypesBuilder url = FHIRTypesBuilder._(
    valueString: 'url',
    valueEnum: FHIRTypesBuilderEnum.url,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'url',
    ),
  );

  /// uuid
  static FHIRTypesBuilder uuid = FHIRTypesBuilder._(
    valueString: 'uuid',
    valueEnum: FHIRTypesBuilderEnum.uuid,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'uuid',
    ),
  );

  /// Quantity
  static FHIRTypesBuilder quantity = FHIRTypesBuilder._(
    valueString: 'Quantity',
    valueEnum: FHIRTypesBuilderEnum.quantity,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Quantity',
    ),
  );

  /// Age
  static FHIRTypesBuilder age = FHIRTypesBuilder._(
    valueString: 'Age',
    valueEnum: FHIRTypesBuilderEnum.age,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Age',
    ),
  );

  /// Count
  static FHIRTypesBuilder count = FHIRTypesBuilder._(
    valueString: 'Count',
    valueEnum: FHIRTypesBuilderEnum.count,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Count',
    ),
  );

  /// Distance
  static FHIRTypesBuilder distance = FHIRTypesBuilder._(
    valueString: 'Distance',
    valueEnum: FHIRTypesBuilderEnum.distance,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Distance',
    ),
  );

  /// Duration
  static FHIRTypesBuilder duration = FHIRTypesBuilder._(
    valueString: 'Duration',
    valueEnum: FHIRTypesBuilderEnum.duration,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Duration',
    ),
  );

  /// Range
  static FHIRTypesBuilder range = FHIRTypesBuilder._(
    valueString: 'Range',
    valueEnum: FHIRTypesBuilderEnum.range,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Range',
    ),
  );

  /// Ratio
  static FHIRTypesBuilder ratio = FHIRTypesBuilder._(
    valueString: 'Ratio',
    valueEnum: FHIRTypesBuilderEnum.ratio,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Ratio',
    ),
  );

  /// RatioRange
  static FHIRTypesBuilder ratioRange = FHIRTypesBuilder._(
    valueString: 'RatioRange',
    valueEnum: FHIRTypesBuilderEnum.ratioRange,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'RatioRange',
    ),
  );

  /// Reference
  static FHIRTypesBuilder reference = FHIRTypesBuilder._(
    valueString: 'Reference',
    valueEnum: FHIRTypesBuilderEnum.reference,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Reference',
    ),
  );

  /// RelatedArtifact
  static FHIRTypesBuilder relatedArtifact = FHIRTypesBuilder._(
    valueString: 'RelatedArtifact',
    valueEnum: FHIRTypesBuilderEnum.relatedArtifact,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'RelatedArtifact',
    ),
  );

  /// SampledData
  static FHIRTypesBuilder sampledData = FHIRTypesBuilder._(
    valueString: 'SampledData',
    valueEnum: FHIRTypesBuilderEnum.sampledData,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'SampledData',
    ),
  );

  /// Signature
  static FHIRTypesBuilder signature = FHIRTypesBuilder._(
    valueString: 'Signature',
    valueEnum: FHIRTypesBuilderEnum.signature,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Signature',
    ),
  );

  /// TriggerDefinition
  static FHIRTypesBuilder triggerDefinition = FHIRTypesBuilder._(
    valueString: 'TriggerDefinition',
    valueEnum: FHIRTypesBuilderEnum.triggerDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'TriggerDefinition',
    ),
  );

  /// UsageContext
  static FHIRTypesBuilder usageContext = FHIRTypesBuilder._(
    valueString: 'UsageContext',
    valueEnum: FHIRTypesBuilderEnum.usageContext,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'UsageContext',
    ),
  );

  /// VirtualServiceDetail
  static FHIRTypesBuilder virtualServiceDetail = FHIRTypesBuilder._(
    valueString: 'VirtualServiceDetail',
    valueEnum: FHIRTypesBuilderEnum.virtualServiceDetail,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'VirtualServiceDetail',
    ),
  );

  /// xhtml
  static FHIRTypesBuilder xhtml = FHIRTypesBuilder._(
    valueString: 'xhtml',
    valueEnum: FHIRTypesBuilderEnum.xhtml,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'xhtml',
    ),
  );

  /// Resource
  static FHIRTypesBuilder resource = FHIRTypesBuilder._(
    valueString: 'Resource',
    valueEnum: FHIRTypesBuilderEnum.resource,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Resource',
    ),
  );

  /// Binary
  static FHIRTypesBuilder binary = FHIRTypesBuilder._(
    valueString: 'Binary',
    valueEnum: FHIRTypesBuilderEnum.binary,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Binary',
    ),
  );

  /// Bundle
  static FHIRTypesBuilder bundle = FHIRTypesBuilder._(
    valueString: 'Bundle',
    valueEnum: FHIRTypesBuilderEnum.bundle,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Bundle',
    ),
  );

  /// DomainResource
  static FHIRTypesBuilder domainResource = FHIRTypesBuilder._(
    valueString: 'DomainResource',
    valueEnum: FHIRTypesBuilderEnum.domainResource,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'DomainResource',
    ),
  );

  /// Account
  static FHIRTypesBuilder account = FHIRTypesBuilder._(
    valueString: 'Account',
    valueEnum: FHIRTypesBuilderEnum.account,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Account',
    ),
  );

  /// ActivityDefinition
  static FHIRTypesBuilder activityDefinition = FHIRTypesBuilder._(
    valueString: 'ActivityDefinition',
    valueEnum: FHIRTypesBuilderEnum.activityDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'ActivityDefinition',
    ),
  );

  /// ActorDefinition
  static FHIRTypesBuilder actorDefinition = FHIRTypesBuilder._(
    valueString: 'ActorDefinition',
    valueEnum: FHIRTypesBuilderEnum.actorDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'ActorDefinition',
    ),
  );

  /// AdministrableProductDefinition
  static FHIRTypesBuilder administrableProductDefinition = FHIRTypesBuilder._(
    valueString: 'AdministrableProductDefinition',
    valueEnum: FHIRTypesBuilderEnum.administrableProductDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'AdministrableProductDefinition',
    ),
  );

  /// AdverseEvent
  static FHIRTypesBuilder adverseEvent = FHIRTypesBuilder._(
    valueString: 'AdverseEvent',
    valueEnum: FHIRTypesBuilderEnum.adverseEvent,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'AdverseEvent',
    ),
  );

  /// AllergyIntolerance
  static FHIRTypesBuilder allergyIntolerance = FHIRTypesBuilder._(
    valueString: 'AllergyIntolerance',
    valueEnum: FHIRTypesBuilderEnum.allergyIntolerance,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'AllergyIntolerance',
    ),
  );

  /// Appointment
  static FHIRTypesBuilder appointment = FHIRTypesBuilder._(
    valueString: 'Appointment',
    valueEnum: FHIRTypesBuilderEnum.appointment,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Appointment',
    ),
  );

  /// AppointmentResponse
  static FHIRTypesBuilder appointmentResponse = FHIRTypesBuilder._(
    valueString: 'AppointmentResponse',
    valueEnum: FHIRTypesBuilderEnum.appointmentResponse,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'AppointmentResponse',
    ),
  );

  /// ArtifactAssessment
  static FHIRTypesBuilder artifactAssessment = FHIRTypesBuilder._(
    valueString: 'ArtifactAssessment',
    valueEnum: FHIRTypesBuilderEnum.artifactAssessment,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'ArtifactAssessment',
    ),
  );

  /// AuditEvent
  static FHIRTypesBuilder auditEvent = FHIRTypesBuilder._(
    valueString: 'AuditEvent',
    valueEnum: FHIRTypesBuilderEnum.auditEvent,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'AuditEvent',
    ),
  );

  /// Basic
  static FHIRTypesBuilder basic = FHIRTypesBuilder._(
    valueString: 'Basic',
    valueEnum: FHIRTypesBuilderEnum.basic,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Basic',
    ),
  );

  /// BiologicallyDerivedProduct
  static FHIRTypesBuilder biologicallyDerivedProduct = FHIRTypesBuilder._(
    valueString: 'BiologicallyDerivedProduct',
    valueEnum: FHIRTypesBuilderEnum.biologicallyDerivedProduct,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'BiologicallyDerivedProduct',
    ),
  );

  /// BiologicallyDerivedProductDispense
  static FHIRTypesBuilder biologicallyDerivedProductDispense =
      FHIRTypesBuilder._(
    valueString: 'BiologicallyDerivedProductDispense',
    valueEnum: FHIRTypesBuilderEnum.biologicallyDerivedProductDispense,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'BiologicallyDerivedProductDispense',
    ),
  );

  /// BodyStructure
  static FHIRTypesBuilder bodyStructure = FHIRTypesBuilder._(
    valueString: 'BodyStructure',
    valueEnum: FHIRTypesBuilderEnum.bodyStructure,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'BodyStructure',
    ),
  );

  /// CanonicalResource
  static FHIRTypesBuilder canonicalResource = FHIRTypesBuilder._(
    valueString: 'CanonicalResource',
    valueEnum: FHIRTypesBuilderEnum.canonicalResource,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'CanonicalResource',
    ),
  );

  /// CapabilityStatement
  static FHIRTypesBuilder capabilityStatement = FHIRTypesBuilder._(
    valueString: 'CapabilityStatement',
    valueEnum: FHIRTypesBuilderEnum.capabilityStatement,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'CapabilityStatement',
    ),
  );

  /// CarePlan
  static FHIRTypesBuilder carePlan = FHIRTypesBuilder._(
    valueString: 'CarePlan',
    valueEnum: FHIRTypesBuilderEnum.carePlan,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'CarePlan',
    ),
  );

  /// CareTeam
  static FHIRTypesBuilder careTeam = FHIRTypesBuilder._(
    valueString: 'CareTeam',
    valueEnum: FHIRTypesBuilderEnum.careTeam,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'CareTeam',
    ),
  );

  /// ChargeItem
  static FHIRTypesBuilder chargeItem = FHIRTypesBuilder._(
    valueString: 'ChargeItem',
    valueEnum: FHIRTypesBuilderEnum.chargeItem,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'ChargeItem',
    ),
  );

  /// ChargeItemDefinition
  static FHIRTypesBuilder chargeItemDefinition = FHIRTypesBuilder._(
    valueString: 'ChargeItemDefinition',
    valueEnum: FHIRTypesBuilderEnum.chargeItemDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'ChargeItemDefinition',
    ),
  );

  /// Citation
  static FHIRTypesBuilder citation = FHIRTypesBuilder._(
    valueString: 'Citation',
    valueEnum: FHIRTypesBuilderEnum.citation,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Citation',
    ),
  );

  /// Claim
  static FHIRTypesBuilder claim = FHIRTypesBuilder._(
    valueString: 'Claim',
    valueEnum: FHIRTypesBuilderEnum.claim,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Claim',
    ),
  );

  /// ClaimResponse
  static FHIRTypesBuilder claimResponse = FHIRTypesBuilder._(
    valueString: 'ClaimResponse',
    valueEnum: FHIRTypesBuilderEnum.claimResponse,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'ClaimResponse',
    ),
  );

  /// ClinicalImpression
  static FHIRTypesBuilder clinicalImpression = FHIRTypesBuilder._(
    valueString: 'ClinicalImpression',
    valueEnum: FHIRTypesBuilderEnum.clinicalImpression,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'ClinicalImpression',
    ),
  );

  /// ClinicalUseDefinition
  static FHIRTypesBuilder clinicalUseDefinition = FHIRTypesBuilder._(
    valueString: 'ClinicalUseDefinition',
    valueEnum: FHIRTypesBuilderEnum.clinicalUseDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'ClinicalUseDefinition',
    ),
  );

  /// CodeSystem
  static FHIRTypesBuilder codeSystem = FHIRTypesBuilder._(
    valueString: 'CodeSystem',
    valueEnum: FHIRTypesBuilderEnum.codeSystem,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'CodeSystem',
    ),
  );

  /// Communication
  static FHIRTypesBuilder communication = FHIRTypesBuilder._(
    valueString: 'Communication',
    valueEnum: FHIRTypesBuilderEnum.communication,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Communication',
    ),
  );

  /// CommunicationRequest
  static FHIRTypesBuilder communicationRequest = FHIRTypesBuilder._(
    valueString: 'CommunicationRequest',
    valueEnum: FHIRTypesBuilderEnum.communicationRequest,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'CommunicationRequest',
    ),
  );

  /// CompartmentDefinition
  static FHIRTypesBuilder compartmentDefinition = FHIRTypesBuilder._(
    valueString: 'CompartmentDefinition',
    valueEnum: FHIRTypesBuilderEnum.compartmentDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'CompartmentDefinition',
    ),
  );

  /// Composition
  static FHIRTypesBuilder composition = FHIRTypesBuilder._(
    valueString: 'Composition',
    valueEnum: FHIRTypesBuilderEnum.composition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Composition',
    ),
  );

  /// ConceptMap
  static FHIRTypesBuilder conceptMap = FHIRTypesBuilder._(
    valueString: 'ConceptMap',
    valueEnum: FHIRTypesBuilderEnum.conceptMap,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'ConceptMap',
    ),
  );

  /// Condition
  static FHIRTypesBuilder condition = FHIRTypesBuilder._(
    valueString: 'Condition',
    valueEnum: FHIRTypesBuilderEnum.condition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Condition',
    ),
  );

  /// ConditionDefinition
  static FHIRTypesBuilder conditionDefinition = FHIRTypesBuilder._(
    valueString: 'ConditionDefinition',
    valueEnum: FHIRTypesBuilderEnum.conditionDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'ConditionDefinition',
    ),
  );

  /// Consent
  static FHIRTypesBuilder consent = FHIRTypesBuilder._(
    valueString: 'Consent',
    valueEnum: FHIRTypesBuilderEnum.consent,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Consent',
    ),
  );

  /// Contract
  static FHIRTypesBuilder contract = FHIRTypesBuilder._(
    valueString: 'Contract',
    valueEnum: FHIRTypesBuilderEnum.contract,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Contract',
    ),
  );

  /// Coverage
  static FHIRTypesBuilder coverage = FHIRTypesBuilder._(
    valueString: 'Coverage',
    valueEnum: FHIRTypesBuilderEnum.coverage,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Coverage',
    ),
  );

  /// CoverageEligibilityRequest
  static FHIRTypesBuilder coverageEligibilityRequest = FHIRTypesBuilder._(
    valueString: 'CoverageEligibilityRequest',
    valueEnum: FHIRTypesBuilderEnum.coverageEligibilityRequest,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'CoverageEligibilityRequest',
    ),
  );

  /// CoverageEligibilityResponse
  static FHIRTypesBuilder coverageEligibilityResponse = FHIRTypesBuilder._(
    valueString: 'CoverageEligibilityResponse',
    valueEnum: FHIRTypesBuilderEnum.coverageEligibilityResponse,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'CoverageEligibilityResponse',
    ),
  );

  /// DetectedIssue
  static FHIRTypesBuilder detectedIssue = FHIRTypesBuilder._(
    valueString: 'DetectedIssue',
    valueEnum: FHIRTypesBuilderEnum.detectedIssue,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'DetectedIssue',
    ),
  );

  /// Device
  static FHIRTypesBuilder device = FHIRTypesBuilder._(
    valueString: 'Device',
    valueEnum: FHIRTypesBuilderEnum.device,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Device',
    ),
  );

  /// DeviceAssociation
  static FHIRTypesBuilder deviceAssociation = FHIRTypesBuilder._(
    valueString: 'DeviceAssociation',
    valueEnum: FHIRTypesBuilderEnum.deviceAssociation,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'DeviceAssociation',
    ),
  );

  /// DeviceDefinition
  static FHIRTypesBuilder deviceDefinition = FHIRTypesBuilder._(
    valueString: 'DeviceDefinition',
    valueEnum: FHIRTypesBuilderEnum.deviceDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'DeviceDefinition',
    ),
  );

  /// DeviceDispense
  static FHIRTypesBuilder deviceDispense = FHIRTypesBuilder._(
    valueString: 'DeviceDispense',
    valueEnum: FHIRTypesBuilderEnum.deviceDispense,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'DeviceDispense',
    ),
  );

  /// DeviceMetric
  static FHIRTypesBuilder deviceMetric = FHIRTypesBuilder._(
    valueString: 'DeviceMetric',
    valueEnum: FHIRTypesBuilderEnum.deviceMetric,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'DeviceMetric',
    ),
  );

  /// DeviceRequest
  static FHIRTypesBuilder deviceRequest = FHIRTypesBuilder._(
    valueString: 'DeviceRequest',
    valueEnum: FHIRTypesBuilderEnum.deviceRequest,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'DeviceRequest',
    ),
  );

  /// DeviceUsage
  static FHIRTypesBuilder deviceUsage = FHIRTypesBuilder._(
    valueString: 'DeviceUsage',
    valueEnum: FHIRTypesBuilderEnum.deviceUsage,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'DeviceUsage',
    ),
  );

  /// DiagnosticReport
  static FHIRTypesBuilder diagnosticReport = FHIRTypesBuilder._(
    valueString: 'DiagnosticReport',
    valueEnum: FHIRTypesBuilderEnum.diagnosticReport,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'DiagnosticReport',
    ),
  );

  /// DocumentReference
  static FHIRTypesBuilder documentReference = FHIRTypesBuilder._(
    valueString: 'DocumentReference',
    valueEnum: FHIRTypesBuilderEnum.documentReference,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'DocumentReference',
    ),
  );

  /// Encounter
  static FHIRTypesBuilder encounter = FHIRTypesBuilder._(
    valueString: 'Encounter',
    valueEnum: FHIRTypesBuilderEnum.encounter,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Encounter',
    ),
  );

  /// EncounterHistory
  static FHIRTypesBuilder encounterHistory = FHIRTypesBuilder._(
    valueString: 'EncounterHistory',
    valueEnum: FHIRTypesBuilderEnum.encounterHistory,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'EncounterHistory',
    ),
  );

  /// Endpoint
  static FHIRTypesBuilder endpoint = FHIRTypesBuilder._(
    valueString: 'Endpoint',
    valueEnum: FHIRTypesBuilderEnum.endpoint,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Endpoint',
    ),
  );

  /// EnrollmentRequest
  static FHIRTypesBuilder enrollmentRequest = FHIRTypesBuilder._(
    valueString: 'EnrollmentRequest',
    valueEnum: FHIRTypesBuilderEnum.enrollmentRequest,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'EnrollmentRequest',
    ),
  );

  /// EnrollmentResponse
  static FHIRTypesBuilder enrollmentResponse = FHIRTypesBuilder._(
    valueString: 'EnrollmentResponse',
    valueEnum: FHIRTypesBuilderEnum.enrollmentResponse,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'EnrollmentResponse',
    ),
  );

  /// EpisodeOfCare
  static FHIRTypesBuilder episodeOfCare = FHIRTypesBuilder._(
    valueString: 'EpisodeOfCare',
    valueEnum: FHIRTypesBuilderEnum.episodeOfCare,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'EpisodeOfCare',
    ),
  );

  /// EventDefinition
  static FHIRTypesBuilder eventDefinition = FHIRTypesBuilder._(
    valueString: 'EventDefinition',
    valueEnum: FHIRTypesBuilderEnum.eventDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'EventDefinition',
    ),
  );

  /// Evidence
  static FHIRTypesBuilder evidence = FHIRTypesBuilder._(
    valueString: 'Evidence',
    valueEnum: FHIRTypesBuilderEnum.evidence,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Evidence',
    ),
  );

  /// EvidenceReport
  static FHIRTypesBuilder evidenceReport = FHIRTypesBuilder._(
    valueString: 'EvidenceReport',
    valueEnum: FHIRTypesBuilderEnum.evidenceReport,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'EvidenceReport',
    ),
  );

  /// EvidenceVariable
  static FHIRTypesBuilder evidenceVariable = FHIRTypesBuilder._(
    valueString: 'EvidenceVariable',
    valueEnum: FHIRTypesBuilderEnum.evidenceVariable,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'EvidenceVariable',
    ),
  );

  /// ExampleScenario
  static FHIRTypesBuilder exampleScenario = FHIRTypesBuilder._(
    valueString: 'ExampleScenario',
    valueEnum: FHIRTypesBuilderEnum.exampleScenario,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'ExampleScenario',
    ),
  );

  /// ExplanationOfBenefit
  static FHIRTypesBuilder explanationOfBenefit = FHIRTypesBuilder._(
    valueString: 'ExplanationOfBenefit',
    valueEnum: FHIRTypesBuilderEnum.explanationOfBenefit,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'ExplanationOfBenefit',
    ),
  );

  /// FamilyMemberHistory
  static FHIRTypesBuilder familyMemberHistory = FHIRTypesBuilder._(
    valueString: 'FamilyMemberHistory',
    valueEnum: FHIRTypesBuilderEnum.familyMemberHistory,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'FamilyMemberHistory',
    ),
  );

  /// Flag
  static FHIRTypesBuilder flag = FHIRTypesBuilder._(
    valueString: 'Flag',
    valueEnum: FHIRTypesBuilderEnum.flag,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Flag',
    ),
  );

  /// FormularyItem
  static FHIRTypesBuilder formularyItem = FHIRTypesBuilder._(
    valueString: 'FormularyItem',
    valueEnum: FHIRTypesBuilderEnum.formularyItem,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'FormularyItem',
    ),
  );

  /// GenomicStudy
  static FHIRTypesBuilder genomicStudy = FHIRTypesBuilder._(
    valueString: 'GenomicStudy',
    valueEnum: FHIRTypesBuilderEnum.genomicStudy,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'GenomicStudy',
    ),
  );

  /// Goal
  static FHIRTypesBuilder goal = FHIRTypesBuilder._(
    valueString: 'Goal',
    valueEnum: FHIRTypesBuilderEnum.goal,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Goal',
    ),
  );

  /// GraphDefinition
  static FHIRTypesBuilder graphDefinition = FHIRTypesBuilder._(
    valueString: 'GraphDefinition',
    valueEnum: FHIRTypesBuilderEnum.graphDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'GraphDefinition',
    ),
  );

  /// Group
  static FHIRTypesBuilder group = FHIRTypesBuilder._(
    valueString: 'Group',
    valueEnum: FHIRTypesBuilderEnum.group,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Group',
    ),
  );

  /// GuidanceResponse
  static FHIRTypesBuilder guidanceResponse = FHIRTypesBuilder._(
    valueString: 'GuidanceResponse',
    valueEnum: FHIRTypesBuilderEnum.guidanceResponse,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'GuidanceResponse',
    ),
  );

  /// HealthcareService
  static FHIRTypesBuilder healthcareService = FHIRTypesBuilder._(
    valueString: 'HealthcareService',
    valueEnum: FHIRTypesBuilderEnum.healthcareService,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'HealthcareService',
    ),
  );

  /// ImagingSelection
  static FHIRTypesBuilder imagingSelection = FHIRTypesBuilder._(
    valueString: 'ImagingSelection',
    valueEnum: FHIRTypesBuilderEnum.imagingSelection,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'ImagingSelection',
    ),
  );

  /// ImagingStudy
  static FHIRTypesBuilder imagingStudy = FHIRTypesBuilder._(
    valueString: 'ImagingStudy',
    valueEnum: FHIRTypesBuilderEnum.imagingStudy,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'ImagingStudy',
    ),
  );

  /// Immunization
  static FHIRTypesBuilder immunization = FHIRTypesBuilder._(
    valueString: 'Immunization',
    valueEnum: FHIRTypesBuilderEnum.immunization,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Immunization',
    ),
  );

  /// ImmunizationEvaluation
  static FHIRTypesBuilder immunizationEvaluation = FHIRTypesBuilder._(
    valueString: 'ImmunizationEvaluation',
    valueEnum: FHIRTypesBuilderEnum.immunizationEvaluation,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'ImmunizationEvaluation',
    ),
  );

  /// ImmunizationRecommendation
  static FHIRTypesBuilder immunizationRecommendation = FHIRTypesBuilder._(
    valueString: 'ImmunizationRecommendation',
    valueEnum: FHIRTypesBuilderEnum.immunizationRecommendation,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'ImmunizationRecommendation',
    ),
  );

  /// ImplementationGuide
  static FHIRTypesBuilder implementationGuide = FHIRTypesBuilder._(
    valueString: 'ImplementationGuide',
    valueEnum: FHIRTypesBuilderEnum.implementationGuide,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'ImplementationGuide',
    ),
  );

  /// Ingredient
  static FHIRTypesBuilder ingredient = FHIRTypesBuilder._(
    valueString: 'Ingredient',
    valueEnum: FHIRTypesBuilderEnum.ingredient,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Ingredient',
    ),
  );

  /// InsurancePlan
  static FHIRTypesBuilder insurancePlan = FHIRTypesBuilder._(
    valueString: 'InsurancePlan',
    valueEnum: FHIRTypesBuilderEnum.insurancePlan,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'InsurancePlan',
    ),
  );

  /// InventoryItem
  static FHIRTypesBuilder inventoryItem = FHIRTypesBuilder._(
    valueString: 'InventoryItem',
    valueEnum: FHIRTypesBuilderEnum.inventoryItem,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'InventoryItem',
    ),
  );

  /// InventoryReport
  static FHIRTypesBuilder inventoryReport = FHIRTypesBuilder._(
    valueString: 'InventoryReport',
    valueEnum: FHIRTypesBuilderEnum.inventoryReport,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'InventoryReport',
    ),
  );

  /// Invoice
  static FHIRTypesBuilder invoice = FHIRTypesBuilder._(
    valueString: 'Invoice',
    valueEnum: FHIRTypesBuilderEnum.invoice,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Invoice',
    ),
  );

  /// Library
  static FHIRTypesBuilder library = FHIRTypesBuilder._(
    valueString: 'Library',
    valueEnum: FHIRTypesBuilderEnum.library,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Library',
    ),
  );

  /// Linkage
  static FHIRTypesBuilder linkage = FHIRTypesBuilder._(
    valueString: 'Linkage',
    valueEnum: FHIRTypesBuilderEnum.linkage,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Linkage',
    ),
  );

  /// List_
  static FHIRTypesBuilder list_ = FHIRTypesBuilder._(
    valueString: 'List',
    valueEnum: FHIRTypesBuilderEnum.list_,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'List',
    ),
  );

  /// Location
  static FHIRTypesBuilder location = FHIRTypesBuilder._(
    valueString: 'Location',
    valueEnum: FHIRTypesBuilderEnum.location,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Location',
    ),
  );

  /// ManufacturedItemDefinition
  static FHIRTypesBuilder manufacturedItemDefinition = FHIRTypesBuilder._(
    valueString: 'ManufacturedItemDefinition',
    valueEnum: FHIRTypesBuilderEnum.manufacturedItemDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'ManufacturedItemDefinition',
    ),
  );

  /// Measure
  static FHIRTypesBuilder measure = FHIRTypesBuilder._(
    valueString: 'Measure',
    valueEnum: FHIRTypesBuilderEnum.measure,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Measure',
    ),
  );

  /// MeasureReport
  static FHIRTypesBuilder measureReport = FHIRTypesBuilder._(
    valueString: 'MeasureReport',
    valueEnum: FHIRTypesBuilderEnum.measureReport,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'MeasureReport',
    ),
  );

  /// Medication
  static FHIRTypesBuilder medication = FHIRTypesBuilder._(
    valueString: 'Medication',
    valueEnum: FHIRTypesBuilderEnum.medication,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Medication',
    ),
  );

  /// MedicationAdministration
  static FHIRTypesBuilder medicationAdministration = FHIRTypesBuilder._(
    valueString: 'MedicationAdministration',
    valueEnum: FHIRTypesBuilderEnum.medicationAdministration,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'MedicationAdministration',
    ),
  );

  /// MedicationDispense
  static FHIRTypesBuilder medicationDispense = FHIRTypesBuilder._(
    valueString: 'MedicationDispense',
    valueEnum: FHIRTypesBuilderEnum.medicationDispense,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'MedicationDispense',
    ),
  );

  /// MedicationKnowledge
  static FHIRTypesBuilder medicationKnowledge = FHIRTypesBuilder._(
    valueString: 'MedicationKnowledge',
    valueEnum: FHIRTypesBuilderEnum.medicationKnowledge,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'MedicationKnowledge',
    ),
  );

  /// MedicationRequest
  static FHIRTypesBuilder medicationRequest = FHIRTypesBuilder._(
    valueString: 'MedicationRequest',
    valueEnum: FHIRTypesBuilderEnum.medicationRequest,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'MedicationRequest',
    ),
  );

  /// MedicationStatement
  static FHIRTypesBuilder medicationStatement = FHIRTypesBuilder._(
    valueString: 'MedicationStatement',
    valueEnum: FHIRTypesBuilderEnum.medicationStatement,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'MedicationStatement',
    ),
  );

  /// MedicinalProductDefinition
  static FHIRTypesBuilder medicinalProductDefinition = FHIRTypesBuilder._(
    valueString: 'MedicinalProductDefinition',
    valueEnum: FHIRTypesBuilderEnum.medicinalProductDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'MedicinalProductDefinition',
    ),
  );

  /// MessageDefinition
  static FHIRTypesBuilder messageDefinition = FHIRTypesBuilder._(
    valueString: 'MessageDefinition',
    valueEnum: FHIRTypesBuilderEnum.messageDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'MessageDefinition',
    ),
  );

  /// MessageHeader
  static FHIRTypesBuilder messageHeader = FHIRTypesBuilder._(
    valueString: 'MessageHeader',
    valueEnum: FHIRTypesBuilderEnum.messageHeader,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'MessageHeader',
    ),
  );

  /// MetadataResource
  static FHIRTypesBuilder metadataResource = FHIRTypesBuilder._(
    valueString: 'MetadataResource',
    valueEnum: FHIRTypesBuilderEnum.metadataResource,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'MetadataResource',
    ),
  );

  /// MolecularSequence
  static FHIRTypesBuilder molecularSequence = FHIRTypesBuilder._(
    valueString: 'MolecularSequence',
    valueEnum: FHIRTypesBuilderEnum.molecularSequence,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'MolecularSequence',
    ),
  );

  /// NamingSystem
  static FHIRTypesBuilder namingSystem = FHIRTypesBuilder._(
    valueString: 'NamingSystem',
    valueEnum: FHIRTypesBuilderEnum.namingSystem,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'NamingSystem',
    ),
  );

  /// NutritionIntake
  static FHIRTypesBuilder nutritionIntake = FHIRTypesBuilder._(
    valueString: 'NutritionIntake',
    valueEnum: FHIRTypesBuilderEnum.nutritionIntake,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'NutritionIntake',
    ),
  );

  /// NutritionOrder
  static FHIRTypesBuilder nutritionOrder = FHIRTypesBuilder._(
    valueString: 'NutritionOrder',
    valueEnum: FHIRTypesBuilderEnum.nutritionOrder,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'NutritionOrder',
    ),
  );

  /// NutritionProduct
  static FHIRTypesBuilder nutritionProduct = FHIRTypesBuilder._(
    valueString: 'NutritionProduct',
    valueEnum: FHIRTypesBuilderEnum.nutritionProduct,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'NutritionProduct',
    ),
  );

  /// Observation
  static FHIRTypesBuilder observation = FHIRTypesBuilder._(
    valueString: 'Observation',
    valueEnum: FHIRTypesBuilderEnum.observation,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Observation',
    ),
  );

  /// ObservationDefinition
  static FHIRTypesBuilder observationDefinition = FHIRTypesBuilder._(
    valueString: 'ObservationDefinition',
    valueEnum: FHIRTypesBuilderEnum.observationDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'ObservationDefinition',
    ),
  );

  /// OperationDefinition
  static FHIRTypesBuilder operationDefinition = FHIRTypesBuilder._(
    valueString: 'OperationDefinition',
    valueEnum: FHIRTypesBuilderEnum.operationDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'OperationDefinition',
    ),
  );

  /// OperationOutcome
  static FHIRTypesBuilder operationOutcome = FHIRTypesBuilder._(
    valueString: 'OperationOutcome',
    valueEnum: FHIRTypesBuilderEnum.operationOutcome,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'OperationOutcome',
    ),
  );

  /// Organization
  static FHIRTypesBuilder organization = FHIRTypesBuilder._(
    valueString: 'Organization',
    valueEnum: FHIRTypesBuilderEnum.organization,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Organization',
    ),
  );

  /// OrganizationAffiliation
  static FHIRTypesBuilder organizationAffiliation = FHIRTypesBuilder._(
    valueString: 'OrganizationAffiliation',
    valueEnum: FHIRTypesBuilderEnum.organizationAffiliation,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'OrganizationAffiliation',
    ),
  );

  /// PackagedProductDefinition
  static FHIRTypesBuilder packagedProductDefinition = FHIRTypesBuilder._(
    valueString: 'PackagedProductDefinition',
    valueEnum: FHIRTypesBuilderEnum.packagedProductDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'PackagedProductDefinition',
    ),
  );

  /// Patient
  static FHIRTypesBuilder patient = FHIRTypesBuilder._(
    valueString: 'Patient',
    valueEnum: FHIRTypesBuilderEnum.patient,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Patient',
    ),
  );

  /// PaymentNotice
  static FHIRTypesBuilder paymentNotice = FHIRTypesBuilder._(
    valueString: 'PaymentNotice',
    valueEnum: FHIRTypesBuilderEnum.paymentNotice,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'PaymentNotice',
    ),
  );

  /// PaymentReconciliation
  static FHIRTypesBuilder paymentReconciliation = FHIRTypesBuilder._(
    valueString: 'PaymentReconciliation',
    valueEnum: FHIRTypesBuilderEnum.paymentReconciliation,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'PaymentReconciliation',
    ),
  );

  /// Permission
  static FHIRTypesBuilder permission = FHIRTypesBuilder._(
    valueString: 'Permission',
    valueEnum: FHIRTypesBuilderEnum.permission,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Permission',
    ),
  );

  /// Person
  static FHIRTypesBuilder person = FHIRTypesBuilder._(
    valueString: 'Person',
    valueEnum: FHIRTypesBuilderEnum.person,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Person',
    ),
  );

  /// PlanDefinition
  static FHIRTypesBuilder planDefinition = FHIRTypesBuilder._(
    valueString: 'PlanDefinition',
    valueEnum: FHIRTypesBuilderEnum.planDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'PlanDefinition',
    ),
  );

  /// Practitioner
  static FHIRTypesBuilder practitioner = FHIRTypesBuilder._(
    valueString: 'Practitioner',
    valueEnum: FHIRTypesBuilderEnum.practitioner,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Practitioner',
    ),
  );

  /// PractitionerRole
  static FHIRTypesBuilder practitionerRole = FHIRTypesBuilder._(
    valueString: 'PractitionerRole',
    valueEnum: FHIRTypesBuilderEnum.practitionerRole,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'PractitionerRole',
    ),
  );

  /// Procedure
  static FHIRTypesBuilder procedure = FHIRTypesBuilder._(
    valueString: 'Procedure',
    valueEnum: FHIRTypesBuilderEnum.procedure,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Procedure',
    ),
  );

  /// Provenance
  static FHIRTypesBuilder provenance = FHIRTypesBuilder._(
    valueString: 'Provenance',
    valueEnum: FHIRTypesBuilderEnum.provenance,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Provenance',
    ),
  );

  /// Questionnaire
  static FHIRTypesBuilder questionnaire = FHIRTypesBuilder._(
    valueString: 'Questionnaire',
    valueEnum: FHIRTypesBuilderEnum.questionnaire,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Questionnaire',
    ),
  );

  /// QuestionnaireResponse
  static FHIRTypesBuilder questionnaireResponse = FHIRTypesBuilder._(
    valueString: 'QuestionnaireResponse',
    valueEnum: FHIRTypesBuilderEnum.questionnaireResponse,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'QuestionnaireResponse',
    ),
  );

  /// RegulatedAuthorization
  static FHIRTypesBuilder regulatedAuthorization = FHIRTypesBuilder._(
    valueString: 'RegulatedAuthorization',
    valueEnum: FHIRTypesBuilderEnum.regulatedAuthorization,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'RegulatedAuthorization',
    ),
  );

  /// RelatedPerson
  static FHIRTypesBuilder relatedPerson = FHIRTypesBuilder._(
    valueString: 'RelatedPerson',
    valueEnum: FHIRTypesBuilderEnum.relatedPerson,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'RelatedPerson',
    ),
  );

  /// RequestOrchestration
  static FHIRTypesBuilder requestOrchestration = FHIRTypesBuilder._(
    valueString: 'RequestOrchestration',
    valueEnum: FHIRTypesBuilderEnum.requestOrchestration,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'RequestOrchestration',
    ),
  );

  /// Requirements
  static FHIRTypesBuilder requirements = FHIRTypesBuilder._(
    valueString: 'Requirements',
    valueEnum: FHIRTypesBuilderEnum.requirements,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Requirements',
    ),
  );

  /// ResearchStudy
  static FHIRTypesBuilder researchStudy = FHIRTypesBuilder._(
    valueString: 'ResearchStudy',
    valueEnum: FHIRTypesBuilderEnum.researchStudy,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'ResearchStudy',
    ),
  );

  /// ResearchSubject
  static FHIRTypesBuilder researchSubject = FHIRTypesBuilder._(
    valueString: 'ResearchSubject',
    valueEnum: FHIRTypesBuilderEnum.researchSubject,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'ResearchSubject',
    ),
  );

  /// RiskAssessment
  static FHIRTypesBuilder riskAssessment = FHIRTypesBuilder._(
    valueString: 'RiskAssessment',
    valueEnum: FHIRTypesBuilderEnum.riskAssessment,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'RiskAssessment',
    ),
  );

  /// Schedule
  static FHIRTypesBuilder schedule = FHIRTypesBuilder._(
    valueString: 'Schedule',
    valueEnum: FHIRTypesBuilderEnum.schedule,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Schedule',
    ),
  );

  /// SearchParameter
  static FHIRTypesBuilder searchParameter = FHIRTypesBuilder._(
    valueString: 'SearchParameter',
    valueEnum: FHIRTypesBuilderEnum.searchParameter,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'SearchParameter',
    ),
  );

  /// ServiceRequest
  static FHIRTypesBuilder serviceRequest = FHIRTypesBuilder._(
    valueString: 'ServiceRequest',
    valueEnum: FHIRTypesBuilderEnum.serviceRequest,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'ServiceRequest',
    ),
  );

  /// Slot
  static FHIRTypesBuilder slot = FHIRTypesBuilder._(
    valueString: 'Slot',
    valueEnum: FHIRTypesBuilderEnum.slot,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Slot',
    ),
  );

  /// Specimen
  static FHIRTypesBuilder specimen = FHIRTypesBuilder._(
    valueString: 'Specimen',
    valueEnum: FHIRTypesBuilderEnum.specimen,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Specimen',
    ),
  );

  /// SpecimenDefinition
  static FHIRTypesBuilder specimenDefinition = FHIRTypesBuilder._(
    valueString: 'SpecimenDefinition',
    valueEnum: FHIRTypesBuilderEnum.specimenDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'SpecimenDefinition',
    ),
  );

  /// StructureDefinition
  static FHIRTypesBuilder structureDefinition = FHIRTypesBuilder._(
    valueString: 'StructureDefinition',
    valueEnum: FHIRTypesBuilderEnum.structureDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'StructureDefinition',
    ),
  );

  /// StructureMap
  static FHIRTypesBuilder structureMap = FHIRTypesBuilder._(
    valueString: 'StructureMap',
    valueEnum: FHIRTypesBuilderEnum.structureMap,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'StructureMap',
    ),
  );

  /// Subscription
  static FHIRTypesBuilder subscription = FHIRTypesBuilder._(
    valueString: 'Subscription',
    valueEnum: FHIRTypesBuilderEnum.subscription,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Subscription',
    ),
  );

  /// SubscriptionStatus
  static FHIRTypesBuilder subscriptionStatus = FHIRTypesBuilder._(
    valueString: 'SubscriptionStatus',
    valueEnum: FHIRTypesBuilderEnum.subscriptionStatus,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'SubscriptionStatus',
    ),
  );

  /// SubscriptionTopic
  static FHIRTypesBuilder subscriptionTopic = FHIRTypesBuilder._(
    valueString: 'SubscriptionTopic',
    valueEnum: FHIRTypesBuilderEnum.subscriptionTopic,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'SubscriptionTopic',
    ),
  );

  /// Substance
  static FHIRTypesBuilder substance = FHIRTypesBuilder._(
    valueString: 'Substance',
    valueEnum: FHIRTypesBuilderEnum.substance,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Substance',
    ),
  );

  /// SubstanceDefinition
  static FHIRTypesBuilder substanceDefinition = FHIRTypesBuilder._(
    valueString: 'SubstanceDefinition',
    valueEnum: FHIRTypesBuilderEnum.substanceDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'SubstanceDefinition',
    ),
  );

  /// SubstanceNucleicAcid
  static FHIRTypesBuilder substanceNucleicAcid = FHIRTypesBuilder._(
    valueString: 'SubstanceNucleicAcid',
    valueEnum: FHIRTypesBuilderEnum.substanceNucleicAcid,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'SubstanceNucleicAcid',
    ),
  );

  /// SubstancePolymer
  static FHIRTypesBuilder substancePolymer = FHIRTypesBuilder._(
    valueString: 'SubstancePolymer',
    valueEnum: FHIRTypesBuilderEnum.substancePolymer,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'SubstancePolymer',
    ),
  );

  /// SubstanceProtein
  static FHIRTypesBuilder substanceProtein = FHIRTypesBuilder._(
    valueString: 'SubstanceProtein',
    valueEnum: FHIRTypesBuilderEnum.substanceProtein,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'SubstanceProtein',
    ),
  );

  /// SubstanceReferenceInformation
  static FHIRTypesBuilder substanceReferenceInformation = FHIRTypesBuilder._(
    valueString: 'SubstanceReferenceInformation',
    valueEnum: FHIRTypesBuilderEnum.substanceReferenceInformation,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'SubstanceReferenceInformation',
    ),
  );

  /// SubstanceSourceMaterial
  static FHIRTypesBuilder substanceSourceMaterial = FHIRTypesBuilder._(
    valueString: 'SubstanceSourceMaterial',
    valueEnum: FHIRTypesBuilderEnum.substanceSourceMaterial,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'SubstanceSourceMaterial',
    ),
  );

  /// SupplyDelivery
  static FHIRTypesBuilder supplyDelivery = FHIRTypesBuilder._(
    valueString: 'SupplyDelivery',
    valueEnum: FHIRTypesBuilderEnum.supplyDelivery,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'SupplyDelivery',
    ),
  );

  /// SupplyRequest
  static FHIRTypesBuilder supplyRequest = FHIRTypesBuilder._(
    valueString: 'SupplyRequest',
    valueEnum: FHIRTypesBuilderEnum.supplyRequest,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'SupplyRequest',
    ),
  );

  /// Task
  static FHIRTypesBuilder task = FHIRTypesBuilder._(
    valueString: 'Task',
    valueEnum: FHIRTypesBuilderEnum.task,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Task',
    ),
  );

  /// TerminologyCapabilities
  static FHIRTypesBuilder terminologyCapabilities = FHIRTypesBuilder._(
    valueString: 'TerminologyCapabilities',
    valueEnum: FHIRTypesBuilderEnum.terminologyCapabilities,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'TerminologyCapabilities',
    ),
  );

  /// TestPlan
  static FHIRTypesBuilder testPlan = FHIRTypesBuilder._(
    valueString: 'TestPlan',
    valueEnum: FHIRTypesBuilderEnum.testPlan,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'TestPlan',
    ),
  );

  /// TestReport
  static FHIRTypesBuilder testReport = FHIRTypesBuilder._(
    valueString: 'TestReport',
    valueEnum: FHIRTypesBuilderEnum.testReport,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'TestReport',
    ),
  );

  /// TestScript
  static FHIRTypesBuilder testScript = FHIRTypesBuilder._(
    valueString: 'TestScript',
    valueEnum: FHIRTypesBuilderEnum.testScript,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'TestScript',
    ),
  );

  /// Transport
  static FHIRTypesBuilder transport = FHIRTypesBuilder._(
    valueString: 'Transport',
    valueEnum: FHIRTypesBuilderEnum.transport,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Transport',
    ),
  );

  /// ValueSet
  static FHIRTypesBuilder valueSet = FHIRTypesBuilder._(
    valueString: 'ValueSet',
    valueEnum: FHIRTypesBuilderEnum.valueSet,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'ValueSet',
    ),
  );

  /// VerificationResult
  static FHIRTypesBuilder verificationResult = FHIRTypesBuilder._(
    valueString: 'VerificationResult',
    valueEnum: FHIRTypesBuilderEnum.verificationResult,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'VerificationResult',
    ),
  );

  /// VisionPrescription
  static FHIRTypesBuilder visionPrescription = FHIRTypesBuilder._(
    valueString: 'VisionPrescription',
    valueEnum: FHIRTypesBuilderEnum.visionPrescription,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'VisionPrescription',
    ),
  );

  /// Parameters
  static FHIRTypesBuilder parameters = FHIRTypesBuilder._(
    valueString: 'Parameters',
    valueEnum: FHIRTypesBuilderEnum.parameters,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Parameters',
    ),
  );

  /// For instances where an Element is present but not value
  static FHIRTypesBuilder elementOnly = FHIRTypesBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<FHIRTypesBuilder> values = [
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
  FHIRTypesBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return FHIRTypesBuilder._(
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
}
