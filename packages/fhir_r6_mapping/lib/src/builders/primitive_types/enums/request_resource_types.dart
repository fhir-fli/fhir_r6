// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for RequestResourceTypes
enum RequestResourceTypesBuilderEnum {
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
      case RequestResourceTypesBuilderEnum.base:
        return 'Base';
      case RequestResourceTypesBuilderEnum.element_:
        return 'Element';
      case RequestResourceTypesBuilderEnum.backboneElement:
        return 'BackboneElement';
      case RequestResourceTypesBuilderEnum.dataType:
        return 'DataType';
      case RequestResourceTypesBuilderEnum.address:
        return 'Address';
      case RequestResourceTypesBuilderEnum.annotation:
        return 'Annotation';
      case RequestResourceTypesBuilderEnum.attachment:
        return 'Attachment';
      case RequestResourceTypesBuilderEnum.availability:
        return 'Availability';
      case RequestResourceTypesBuilderEnum.backboneType:
        return 'BackboneType';
      case RequestResourceTypesBuilderEnum.dosage:
        return 'Dosage';
      case RequestResourceTypesBuilderEnum.elementDefinition:
        return 'ElementDefinition';
      case RequestResourceTypesBuilderEnum.marketingStatus:
        return 'MarketingStatus';
      case RequestResourceTypesBuilderEnum.productShelfLife:
        return 'ProductShelfLife';
      case RequestResourceTypesBuilderEnum.timing:
        return 'Timing';
      case RequestResourceTypesBuilderEnum.codeableConcept:
        return 'CodeableConcept';
      case RequestResourceTypesBuilderEnum.codeableReference:
        return 'CodeableReference';
      case RequestResourceTypesBuilderEnum.coding:
        return 'Coding';
      case RequestResourceTypesBuilderEnum.contactDetail:
        return 'ContactDetail';
      case RequestResourceTypesBuilderEnum.contactPoint:
        return 'ContactPoint';
      case RequestResourceTypesBuilderEnum.contributor:
        return 'Contributor';
      case RequestResourceTypesBuilderEnum.dataRequirement:
        return 'DataRequirement';
      case RequestResourceTypesBuilderEnum.expression:
        return 'Expression';
      case RequestResourceTypesBuilderEnum.extendedContactDetail:
        return 'ExtendedContactDetail';
      case RequestResourceTypesBuilderEnum.extension:
        return 'Extension';
      case RequestResourceTypesBuilderEnum.humanName:
        return 'HumanName';
      case RequestResourceTypesBuilderEnum.identifier:
        return 'Identifier';
      case RequestResourceTypesBuilderEnum.meta:
        return 'Meta';
      case RequestResourceTypesBuilderEnum.monetaryComponent:
        return 'MonetaryComponent';
      case RequestResourceTypesBuilderEnum.money:
        return 'Money';
      case RequestResourceTypesBuilderEnum.narrative:
        return 'Narrative';
      case RequestResourceTypesBuilderEnum.parameterDefinition:
        return 'ParameterDefinition';
      case RequestResourceTypesBuilderEnum.period:
        return 'Period';
      case RequestResourceTypesBuilderEnum.primitiveType:
        return 'PrimitiveType';
      case RequestResourceTypesBuilderEnum.base64Binary:
        return 'base64Binary';
      case RequestResourceTypesBuilderEnum.boolean:
        return 'boolean';
      case RequestResourceTypesBuilderEnum.date:
        return 'date';
      case RequestResourceTypesBuilderEnum.dateTime:
        return 'dateTime';
      case RequestResourceTypesBuilderEnum.decimal:
        return 'decimal';
      case RequestResourceTypesBuilderEnum.instant:
        return 'instant';
      case RequestResourceTypesBuilderEnum.integer:
        return 'integer';
      case RequestResourceTypesBuilderEnum.positiveInt:
        return 'positiveInt';
      case RequestResourceTypesBuilderEnum.unsignedInt:
        return 'unsignedInt';
      case RequestResourceTypesBuilderEnum.integer64:
        return 'integer64';
      case RequestResourceTypesBuilderEnum.string:
        return 'string';
      case RequestResourceTypesBuilderEnum.code:
        return 'code';
      case RequestResourceTypesBuilderEnum.id_:
        return 'id';
      case RequestResourceTypesBuilderEnum.markdown:
        return 'markdown';
      case RequestResourceTypesBuilderEnum.time:
        return 'time';
      case RequestResourceTypesBuilderEnum.uri:
        return 'uri';
      case RequestResourceTypesBuilderEnum.canonical:
        return 'canonical';
      case RequestResourceTypesBuilderEnum.oid:
        return 'oid';
      case RequestResourceTypesBuilderEnum.url:
        return 'url';
      case RequestResourceTypesBuilderEnum.uuid:
        return 'uuid';
      case RequestResourceTypesBuilderEnum.quantity:
        return 'Quantity';
      case RequestResourceTypesBuilderEnum.age:
        return 'Age';
      case RequestResourceTypesBuilderEnum.count:
        return 'Count';
      case RequestResourceTypesBuilderEnum.distance:
        return 'Distance';
      case RequestResourceTypesBuilderEnum.duration:
        return 'Duration';
      case RequestResourceTypesBuilderEnum.range:
        return 'Range';
      case RequestResourceTypesBuilderEnum.ratio:
        return 'Ratio';
      case RequestResourceTypesBuilderEnum.ratioRange:
        return 'RatioRange';
      case RequestResourceTypesBuilderEnum.reference:
        return 'Reference';
      case RequestResourceTypesBuilderEnum.relatedArtifact:
        return 'RelatedArtifact';
      case RequestResourceTypesBuilderEnum.sampledData:
        return 'SampledData';
      case RequestResourceTypesBuilderEnum.signature:
        return 'Signature';
      case RequestResourceTypesBuilderEnum.triggerDefinition:
        return 'TriggerDefinition';
      case RequestResourceTypesBuilderEnum.usageContext:
        return 'UsageContext';
      case RequestResourceTypesBuilderEnum.virtualServiceDetail:
        return 'VirtualServiceDetail';
      case RequestResourceTypesBuilderEnum.xhtml:
        return 'xhtml';
      case RequestResourceTypesBuilderEnum.resource:
        return 'Resource';
      case RequestResourceTypesBuilderEnum.binary:
        return 'Binary';
      case RequestResourceTypesBuilderEnum.bundle:
        return 'Bundle';
      case RequestResourceTypesBuilderEnum.domainResource:
        return 'DomainResource';
      case RequestResourceTypesBuilderEnum.account:
        return 'Account';
      case RequestResourceTypesBuilderEnum.activityDefinition:
        return 'ActivityDefinition';
      case RequestResourceTypesBuilderEnum.actorDefinition:
        return 'ActorDefinition';
      case RequestResourceTypesBuilderEnum.administrableProductDefinition:
        return 'AdministrableProductDefinition';
      case RequestResourceTypesBuilderEnum.adverseEvent:
        return 'AdverseEvent';
      case RequestResourceTypesBuilderEnum.allergyIntolerance:
        return 'AllergyIntolerance';
      case RequestResourceTypesBuilderEnum.appointment:
        return 'Appointment';
      case RequestResourceTypesBuilderEnum.appointmentResponse:
        return 'AppointmentResponse';
      case RequestResourceTypesBuilderEnum.artifactAssessment:
        return 'ArtifactAssessment';
      case RequestResourceTypesBuilderEnum.auditEvent:
        return 'AuditEvent';
      case RequestResourceTypesBuilderEnum.basic:
        return 'Basic';
      case RequestResourceTypesBuilderEnum.biologicallyDerivedProduct:
        return 'BiologicallyDerivedProduct';
      case RequestResourceTypesBuilderEnum.biologicallyDerivedProductDispense:
        return 'BiologicallyDerivedProductDispense';
      case RequestResourceTypesBuilderEnum.bodyStructure:
        return 'BodyStructure';
      case RequestResourceTypesBuilderEnum.canonicalResource:
        return 'CanonicalResource';
      case RequestResourceTypesBuilderEnum.capabilityStatement:
        return 'CapabilityStatement';
      case RequestResourceTypesBuilderEnum.carePlan:
        return 'CarePlan';
      case RequestResourceTypesBuilderEnum.careTeam:
        return 'CareTeam';
      case RequestResourceTypesBuilderEnum.chargeItem:
        return 'ChargeItem';
      case RequestResourceTypesBuilderEnum.chargeItemDefinition:
        return 'ChargeItemDefinition';
      case RequestResourceTypesBuilderEnum.citation:
        return 'Citation';
      case RequestResourceTypesBuilderEnum.claim:
        return 'Claim';
      case RequestResourceTypesBuilderEnum.claimResponse:
        return 'ClaimResponse';
      case RequestResourceTypesBuilderEnum.clinicalImpression:
        return 'ClinicalImpression';
      case RequestResourceTypesBuilderEnum.clinicalUseDefinition:
        return 'ClinicalUseDefinition';
      case RequestResourceTypesBuilderEnum.codeSystem:
        return 'CodeSystem';
      case RequestResourceTypesBuilderEnum.communication:
        return 'Communication';
      case RequestResourceTypesBuilderEnum.communicationRequest:
        return 'CommunicationRequest';
      case RequestResourceTypesBuilderEnum.compartmentDefinition:
        return 'CompartmentDefinition';
      case RequestResourceTypesBuilderEnum.composition:
        return 'Composition';
      case RequestResourceTypesBuilderEnum.conceptMap:
        return 'ConceptMap';
      case RequestResourceTypesBuilderEnum.condition:
        return 'Condition';
      case RequestResourceTypesBuilderEnum.conditionDefinition:
        return 'ConditionDefinition';
      case RequestResourceTypesBuilderEnum.consent:
        return 'Consent';
      case RequestResourceTypesBuilderEnum.contract:
        return 'Contract';
      case RequestResourceTypesBuilderEnum.coverage:
        return 'Coverage';
      case RequestResourceTypesBuilderEnum.coverageEligibilityRequest:
        return 'CoverageEligibilityRequest';
      case RequestResourceTypesBuilderEnum.coverageEligibilityResponse:
        return 'CoverageEligibilityResponse';
      case RequestResourceTypesBuilderEnum.detectedIssue:
        return 'DetectedIssue';
      case RequestResourceTypesBuilderEnum.device:
        return 'Device';
      case RequestResourceTypesBuilderEnum.deviceAssociation:
        return 'DeviceAssociation';
      case RequestResourceTypesBuilderEnum.deviceDefinition:
        return 'DeviceDefinition';
      case RequestResourceTypesBuilderEnum.deviceDispense:
        return 'DeviceDispense';
      case RequestResourceTypesBuilderEnum.deviceMetric:
        return 'DeviceMetric';
      case RequestResourceTypesBuilderEnum.deviceRequest:
        return 'DeviceRequest';
      case RequestResourceTypesBuilderEnum.deviceUsage:
        return 'DeviceUsage';
      case RequestResourceTypesBuilderEnum.diagnosticReport:
        return 'DiagnosticReport';
      case RequestResourceTypesBuilderEnum.documentReference:
        return 'DocumentReference';
      case RequestResourceTypesBuilderEnum.encounter:
        return 'Encounter';
      case RequestResourceTypesBuilderEnum.encounterHistory:
        return 'EncounterHistory';
      case RequestResourceTypesBuilderEnum.endpoint:
        return 'Endpoint';
      case RequestResourceTypesBuilderEnum.enrollmentRequest:
        return 'EnrollmentRequest';
      case RequestResourceTypesBuilderEnum.enrollmentResponse:
        return 'EnrollmentResponse';
      case RequestResourceTypesBuilderEnum.episodeOfCare:
        return 'EpisodeOfCare';
      case RequestResourceTypesBuilderEnum.eventDefinition:
        return 'EventDefinition';
      case RequestResourceTypesBuilderEnum.evidence:
        return 'Evidence';
      case RequestResourceTypesBuilderEnum.evidenceReport:
        return 'EvidenceReport';
      case RequestResourceTypesBuilderEnum.evidenceVariable:
        return 'EvidenceVariable';
      case RequestResourceTypesBuilderEnum.exampleScenario:
        return 'ExampleScenario';
      case RequestResourceTypesBuilderEnum.explanationOfBenefit:
        return 'ExplanationOfBenefit';
      case RequestResourceTypesBuilderEnum.familyMemberHistory:
        return 'FamilyMemberHistory';
      case RequestResourceTypesBuilderEnum.flag:
        return 'Flag';
      case RequestResourceTypesBuilderEnum.formularyItem:
        return 'FormularyItem';
      case RequestResourceTypesBuilderEnum.genomicStudy:
        return 'GenomicStudy';
      case RequestResourceTypesBuilderEnum.goal:
        return 'Goal';
      case RequestResourceTypesBuilderEnum.graphDefinition:
        return 'GraphDefinition';
      case RequestResourceTypesBuilderEnum.group:
        return 'Group';
      case RequestResourceTypesBuilderEnum.guidanceResponse:
        return 'GuidanceResponse';
      case RequestResourceTypesBuilderEnum.healthcareService:
        return 'HealthcareService';
      case RequestResourceTypesBuilderEnum.imagingSelection:
        return 'ImagingSelection';
      case RequestResourceTypesBuilderEnum.imagingStudy:
        return 'ImagingStudy';
      case RequestResourceTypesBuilderEnum.immunization:
        return 'Immunization';
      case RequestResourceTypesBuilderEnum.immunizationEvaluation:
        return 'ImmunizationEvaluation';
      case RequestResourceTypesBuilderEnum.immunizationRecommendation:
        return 'ImmunizationRecommendation';
      case RequestResourceTypesBuilderEnum.implementationGuide:
        return 'ImplementationGuide';
      case RequestResourceTypesBuilderEnum.ingredient:
        return 'Ingredient';
      case RequestResourceTypesBuilderEnum.insurancePlan:
        return 'InsurancePlan';
      case RequestResourceTypesBuilderEnum.inventoryItem:
        return 'InventoryItem';
      case RequestResourceTypesBuilderEnum.inventoryReport:
        return 'InventoryReport';
      case RequestResourceTypesBuilderEnum.invoice:
        return 'Invoice';
      case RequestResourceTypesBuilderEnum.library:
        return 'Library';
      case RequestResourceTypesBuilderEnum.linkage:
        return 'Linkage';
      case RequestResourceTypesBuilderEnum.list_:
        return 'List';
      case RequestResourceTypesBuilderEnum.location:
        return 'Location';
      case RequestResourceTypesBuilderEnum.manufacturedItemDefinition:
        return 'ManufacturedItemDefinition';
      case RequestResourceTypesBuilderEnum.measure:
        return 'Measure';
      case RequestResourceTypesBuilderEnum.measureReport:
        return 'MeasureReport';
      case RequestResourceTypesBuilderEnum.medication:
        return 'Medication';
      case RequestResourceTypesBuilderEnum.medicationAdministration:
        return 'MedicationAdministration';
      case RequestResourceTypesBuilderEnum.medicationDispense:
        return 'MedicationDispense';
      case RequestResourceTypesBuilderEnum.medicationKnowledge:
        return 'MedicationKnowledge';
      case RequestResourceTypesBuilderEnum.medicationRequest:
        return 'MedicationRequest';
      case RequestResourceTypesBuilderEnum.medicationStatement:
        return 'MedicationStatement';
      case RequestResourceTypesBuilderEnum.medicinalProductDefinition:
        return 'MedicinalProductDefinition';
      case RequestResourceTypesBuilderEnum.messageDefinition:
        return 'MessageDefinition';
      case RequestResourceTypesBuilderEnum.messageHeader:
        return 'MessageHeader';
      case RequestResourceTypesBuilderEnum.metadataResource:
        return 'MetadataResource';
      case RequestResourceTypesBuilderEnum.molecularSequence:
        return 'MolecularSequence';
      case RequestResourceTypesBuilderEnum.namingSystem:
        return 'NamingSystem';
      case RequestResourceTypesBuilderEnum.nutritionIntake:
        return 'NutritionIntake';
      case RequestResourceTypesBuilderEnum.nutritionOrder:
        return 'NutritionOrder';
      case RequestResourceTypesBuilderEnum.nutritionProduct:
        return 'NutritionProduct';
      case RequestResourceTypesBuilderEnum.observation:
        return 'Observation';
      case RequestResourceTypesBuilderEnum.observationDefinition:
        return 'ObservationDefinition';
      case RequestResourceTypesBuilderEnum.operationDefinition:
        return 'OperationDefinition';
      case RequestResourceTypesBuilderEnum.operationOutcome:
        return 'OperationOutcome';
      case RequestResourceTypesBuilderEnum.organization:
        return 'Organization';
      case RequestResourceTypesBuilderEnum.organizationAffiliation:
        return 'OrganizationAffiliation';
      case RequestResourceTypesBuilderEnum.packagedProductDefinition:
        return 'PackagedProductDefinition';
      case RequestResourceTypesBuilderEnum.patient:
        return 'Patient';
      case RequestResourceTypesBuilderEnum.paymentNotice:
        return 'PaymentNotice';
      case RequestResourceTypesBuilderEnum.paymentReconciliation:
        return 'PaymentReconciliation';
      case RequestResourceTypesBuilderEnum.permission:
        return 'Permission';
      case RequestResourceTypesBuilderEnum.person:
        return 'Person';
      case RequestResourceTypesBuilderEnum.planDefinition:
        return 'PlanDefinition';
      case RequestResourceTypesBuilderEnum.practitioner:
        return 'Practitioner';
      case RequestResourceTypesBuilderEnum.practitionerRole:
        return 'PractitionerRole';
      case RequestResourceTypesBuilderEnum.procedure:
        return 'Procedure';
      case RequestResourceTypesBuilderEnum.provenance:
        return 'Provenance';
      case RequestResourceTypesBuilderEnum.questionnaire:
        return 'Questionnaire';
      case RequestResourceTypesBuilderEnum.questionnaireResponse:
        return 'QuestionnaireResponse';
      case RequestResourceTypesBuilderEnum.regulatedAuthorization:
        return 'RegulatedAuthorization';
      case RequestResourceTypesBuilderEnum.relatedPerson:
        return 'RelatedPerson';
      case RequestResourceTypesBuilderEnum.requestOrchestration:
        return 'RequestOrchestration';
      case RequestResourceTypesBuilderEnum.requirements:
        return 'Requirements';
      case RequestResourceTypesBuilderEnum.researchStudy:
        return 'ResearchStudy';
      case RequestResourceTypesBuilderEnum.researchSubject:
        return 'ResearchSubject';
      case RequestResourceTypesBuilderEnum.riskAssessment:
        return 'RiskAssessment';
      case RequestResourceTypesBuilderEnum.schedule:
        return 'Schedule';
      case RequestResourceTypesBuilderEnum.searchParameter:
        return 'SearchParameter';
      case RequestResourceTypesBuilderEnum.serviceRequest:
        return 'ServiceRequest';
      case RequestResourceTypesBuilderEnum.slot:
        return 'Slot';
      case RequestResourceTypesBuilderEnum.specimen:
        return 'Specimen';
      case RequestResourceTypesBuilderEnum.specimenDefinition:
        return 'SpecimenDefinition';
      case RequestResourceTypesBuilderEnum.structureDefinition:
        return 'StructureDefinition';
      case RequestResourceTypesBuilderEnum.structureMap:
        return 'StructureMap';
      case RequestResourceTypesBuilderEnum.subscription:
        return 'Subscription';
      case RequestResourceTypesBuilderEnum.subscriptionStatus:
        return 'SubscriptionStatus';
      case RequestResourceTypesBuilderEnum.subscriptionTopic:
        return 'SubscriptionTopic';
      case RequestResourceTypesBuilderEnum.substance:
        return 'Substance';
      case RequestResourceTypesBuilderEnum.substanceDefinition:
        return 'SubstanceDefinition';
      case RequestResourceTypesBuilderEnum.substanceNucleicAcid:
        return 'SubstanceNucleicAcid';
      case RequestResourceTypesBuilderEnum.substancePolymer:
        return 'SubstancePolymer';
      case RequestResourceTypesBuilderEnum.substanceProtein:
        return 'SubstanceProtein';
      case RequestResourceTypesBuilderEnum.substanceReferenceInformation:
        return 'SubstanceReferenceInformation';
      case RequestResourceTypesBuilderEnum.substanceSourceMaterial:
        return 'SubstanceSourceMaterial';
      case RequestResourceTypesBuilderEnum.supplyDelivery:
        return 'SupplyDelivery';
      case RequestResourceTypesBuilderEnum.supplyRequest:
        return 'SupplyRequest';
      case RequestResourceTypesBuilderEnum.task:
        return 'Task';
      case RequestResourceTypesBuilderEnum.terminologyCapabilities:
        return 'TerminologyCapabilities';
      case RequestResourceTypesBuilderEnum.testPlan:
        return 'TestPlan';
      case RequestResourceTypesBuilderEnum.testReport:
        return 'TestReport';
      case RequestResourceTypesBuilderEnum.testScript:
        return 'TestScript';
      case RequestResourceTypesBuilderEnum.transport:
        return 'Transport';
      case RequestResourceTypesBuilderEnum.valueSet:
        return 'ValueSet';
      case RequestResourceTypesBuilderEnum.verificationResult:
        return 'VerificationResult';
      case RequestResourceTypesBuilderEnum.visionPrescription:
        return 'VisionPrescription';
      case RequestResourceTypesBuilderEnum.parameters:
        return 'Parameters';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static RequestResourceTypesBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return RequestResourceTypesBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static RequestResourceTypesBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'Base':
        return RequestResourceTypesBuilderEnum.base;
      case 'Element':
        return RequestResourceTypesBuilderEnum.element_;
      case 'BackboneElement':
        return RequestResourceTypesBuilderEnum.backboneElement;
      case 'DataType':
        return RequestResourceTypesBuilderEnum.dataType;
      case 'Address':
        return RequestResourceTypesBuilderEnum.address;
      case 'Annotation':
        return RequestResourceTypesBuilderEnum.annotation;
      case 'Attachment':
        return RequestResourceTypesBuilderEnum.attachment;
      case 'Availability':
        return RequestResourceTypesBuilderEnum.availability;
      case 'BackboneType':
        return RequestResourceTypesBuilderEnum.backboneType;
      case 'Dosage':
        return RequestResourceTypesBuilderEnum.dosage;
      case 'ElementDefinition':
        return RequestResourceTypesBuilderEnum.elementDefinition;
      case 'MarketingStatus':
        return RequestResourceTypesBuilderEnum.marketingStatus;
      case 'ProductShelfLife':
        return RequestResourceTypesBuilderEnum.productShelfLife;
      case 'Timing':
        return RequestResourceTypesBuilderEnum.timing;
      case 'CodeableConcept':
        return RequestResourceTypesBuilderEnum.codeableConcept;
      case 'CodeableReference':
        return RequestResourceTypesBuilderEnum.codeableReference;
      case 'Coding':
        return RequestResourceTypesBuilderEnum.coding;
      case 'ContactDetail':
        return RequestResourceTypesBuilderEnum.contactDetail;
      case 'ContactPoint':
        return RequestResourceTypesBuilderEnum.contactPoint;
      case 'Contributor':
        return RequestResourceTypesBuilderEnum.contributor;
      case 'DataRequirement':
        return RequestResourceTypesBuilderEnum.dataRequirement;
      case 'Expression':
        return RequestResourceTypesBuilderEnum.expression;
      case 'ExtendedContactDetail':
        return RequestResourceTypesBuilderEnum.extendedContactDetail;
      case 'Extension':
        return RequestResourceTypesBuilderEnum.extension;
      case 'HumanName':
        return RequestResourceTypesBuilderEnum.humanName;
      case 'Identifier':
        return RequestResourceTypesBuilderEnum.identifier;
      case 'Meta':
        return RequestResourceTypesBuilderEnum.meta;
      case 'MonetaryComponent':
        return RequestResourceTypesBuilderEnum.monetaryComponent;
      case 'Money':
        return RequestResourceTypesBuilderEnum.money;
      case 'Narrative':
        return RequestResourceTypesBuilderEnum.narrative;
      case 'ParameterDefinition':
        return RequestResourceTypesBuilderEnum.parameterDefinition;
      case 'Period':
        return RequestResourceTypesBuilderEnum.period;
      case 'PrimitiveType':
        return RequestResourceTypesBuilderEnum.primitiveType;
      case 'base64Binary':
        return RequestResourceTypesBuilderEnum.base64Binary;
      case 'boolean':
        return RequestResourceTypesBuilderEnum.boolean;
      case 'date':
        return RequestResourceTypesBuilderEnum.date;
      case 'dateTime':
        return RequestResourceTypesBuilderEnum.dateTime;
      case 'decimal':
        return RequestResourceTypesBuilderEnum.decimal;
      case 'instant':
        return RequestResourceTypesBuilderEnum.instant;
      case 'integer':
        return RequestResourceTypesBuilderEnum.integer;
      case 'positiveInt':
        return RequestResourceTypesBuilderEnum.positiveInt;
      case 'unsignedInt':
        return RequestResourceTypesBuilderEnum.unsignedInt;
      case 'integer64':
        return RequestResourceTypesBuilderEnum.integer64;
      case 'string':
        return RequestResourceTypesBuilderEnum.string;
      case 'code':
        return RequestResourceTypesBuilderEnum.code;
      case 'id':
        return RequestResourceTypesBuilderEnum.id_;
      case 'markdown':
        return RequestResourceTypesBuilderEnum.markdown;
      case 'time':
        return RequestResourceTypesBuilderEnum.time;
      case 'uri':
        return RequestResourceTypesBuilderEnum.uri;
      case 'canonical':
        return RequestResourceTypesBuilderEnum.canonical;
      case 'oid':
        return RequestResourceTypesBuilderEnum.oid;
      case 'url':
        return RequestResourceTypesBuilderEnum.url;
      case 'uuid':
        return RequestResourceTypesBuilderEnum.uuid;
      case 'Quantity':
        return RequestResourceTypesBuilderEnum.quantity;
      case 'Age':
        return RequestResourceTypesBuilderEnum.age;
      case 'Count':
        return RequestResourceTypesBuilderEnum.count;
      case 'Distance':
        return RequestResourceTypesBuilderEnum.distance;
      case 'Duration':
        return RequestResourceTypesBuilderEnum.duration;
      case 'Range':
        return RequestResourceTypesBuilderEnum.range;
      case 'Ratio':
        return RequestResourceTypesBuilderEnum.ratio;
      case 'RatioRange':
        return RequestResourceTypesBuilderEnum.ratioRange;
      case 'Reference':
        return RequestResourceTypesBuilderEnum.reference;
      case 'RelatedArtifact':
        return RequestResourceTypesBuilderEnum.relatedArtifact;
      case 'SampledData':
        return RequestResourceTypesBuilderEnum.sampledData;
      case 'Signature':
        return RequestResourceTypesBuilderEnum.signature;
      case 'TriggerDefinition':
        return RequestResourceTypesBuilderEnum.triggerDefinition;
      case 'UsageContext':
        return RequestResourceTypesBuilderEnum.usageContext;
      case 'VirtualServiceDetail':
        return RequestResourceTypesBuilderEnum.virtualServiceDetail;
      case 'xhtml':
        return RequestResourceTypesBuilderEnum.xhtml;
      case 'Resource':
        return RequestResourceTypesBuilderEnum.resource;
      case 'Binary':
        return RequestResourceTypesBuilderEnum.binary;
      case 'Bundle':
        return RequestResourceTypesBuilderEnum.bundle;
      case 'DomainResource':
        return RequestResourceTypesBuilderEnum.domainResource;
      case 'Account':
        return RequestResourceTypesBuilderEnum.account;
      case 'ActivityDefinition':
        return RequestResourceTypesBuilderEnum.activityDefinition;
      case 'ActorDefinition':
        return RequestResourceTypesBuilderEnum.actorDefinition;
      case 'AdministrableProductDefinition':
        return RequestResourceTypesBuilderEnum.administrableProductDefinition;
      case 'AdverseEvent':
        return RequestResourceTypesBuilderEnum.adverseEvent;
      case 'AllergyIntolerance':
        return RequestResourceTypesBuilderEnum.allergyIntolerance;
      case 'Appointment':
        return RequestResourceTypesBuilderEnum.appointment;
      case 'AppointmentResponse':
        return RequestResourceTypesBuilderEnum.appointmentResponse;
      case 'ArtifactAssessment':
        return RequestResourceTypesBuilderEnum.artifactAssessment;
      case 'AuditEvent':
        return RequestResourceTypesBuilderEnum.auditEvent;
      case 'Basic':
        return RequestResourceTypesBuilderEnum.basic;
      case 'BiologicallyDerivedProduct':
        return RequestResourceTypesBuilderEnum.biologicallyDerivedProduct;
      case 'BiologicallyDerivedProductDispense':
        return RequestResourceTypesBuilderEnum
            .biologicallyDerivedProductDispense;
      case 'BodyStructure':
        return RequestResourceTypesBuilderEnum.bodyStructure;
      case 'CanonicalResource':
        return RequestResourceTypesBuilderEnum.canonicalResource;
      case 'CapabilityStatement':
        return RequestResourceTypesBuilderEnum.capabilityStatement;
      case 'CarePlan':
        return RequestResourceTypesBuilderEnum.carePlan;
      case 'CareTeam':
        return RequestResourceTypesBuilderEnum.careTeam;
      case 'ChargeItem':
        return RequestResourceTypesBuilderEnum.chargeItem;
      case 'ChargeItemDefinition':
        return RequestResourceTypesBuilderEnum.chargeItemDefinition;
      case 'Citation':
        return RequestResourceTypesBuilderEnum.citation;
      case 'Claim':
        return RequestResourceTypesBuilderEnum.claim;
      case 'ClaimResponse':
        return RequestResourceTypesBuilderEnum.claimResponse;
      case 'ClinicalImpression':
        return RequestResourceTypesBuilderEnum.clinicalImpression;
      case 'ClinicalUseDefinition':
        return RequestResourceTypesBuilderEnum.clinicalUseDefinition;
      case 'CodeSystem':
        return RequestResourceTypesBuilderEnum.codeSystem;
      case 'Communication':
        return RequestResourceTypesBuilderEnum.communication;
      case 'CommunicationRequest':
        return RequestResourceTypesBuilderEnum.communicationRequest;
      case 'CompartmentDefinition':
        return RequestResourceTypesBuilderEnum.compartmentDefinition;
      case 'Composition':
        return RequestResourceTypesBuilderEnum.composition;
      case 'ConceptMap':
        return RequestResourceTypesBuilderEnum.conceptMap;
      case 'Condition':
        return RequestResourceTypesBuilderEnum.condition;
      case 'ConditionDefinition':
        return RequestResourceTypesBuilderEnum.conditionDefinition;
      case 'Consent':
        return RequestResourceTypesBuilderEnum.consent;
      case 'Contract':
        return RequestResourceTypesBuilderEnum.contract;
      case 'Coverage':
        return RequestResourceTypesBuilderEnum.coverage;
      case 'CoverageEligibilityRequest':
        return RequestResourceTypesBuilderEnum.coverageEligibilityRequest;
      case 'CoverageEligibilityResponse':
        return RequestResourceTypesBuilderEnum.coverageEligibilityResponse;
      case 'DetectedIssue':
        return RequestResourceTypesBuilderEnum.detectedIssue;
      case 'Device':
        return RequestResourceTypesBuilderEnum.device;
      case 'DeviceAssociation':
        return RequestResourceTypesBuilderEnum.deviceAssociation;
      case 'DeviceDefinition':
        return RequestResourceTypesBuilderEnum.deviceDefinition;
      case 'DeviceDispense':
        return RequestResourceTypesBuilderEnum.deviceDispense;
      case 'DeviceMetric':
        return RequestResourceTypesBuilderEnum.deviceMetric;
      case 'DeviceRequest':
        return RequestResourceTypesBuilderEnum.deviceRequest;
      case 'DeviceUsage':
        return RequestResourceTypesBuilderEnum.deviceUsage;
      case 'DiagnosticReport':
        return RequestResourceTypesBuilderEnum.diagnosticReport;
      case 'DocumentReference':
        return RequestResourceTypesBuilderEnum.documentReference;
      case 'Encounter':
        return RequestResourceTypesBuilderEnum.encounter;
      case 'EncounterHistory':
        return RequestResourceTypesBuilderEnum.encounterHistory;
      case 'Endpoint':
        return RequestResourceTypesBuilderEnum.endpoint;
      case 'EnrollmentRequest':
        return RequestResourceTypesBuilderEnum.enrollmentRequest;
      case 'EnrollmentResponse':
        return RequestResourceTypesBuilderEnum.enrollmentResponse;
      case 'EpisodeOfCare':
        return RequestResourceTypesBuilderEnum.episodeOfCare;
      case 'EventDefinition':
        return RequestResourceTypesBuilderEnum.eventDefinition;
      case 'Evidence':
        return RequestResourceTypesBuilderEnum.evidence;
      case 'EvidenceReport':
        return RequestResourceTypesBuilderEnum.evidenceReport;
      case 'EvidenceVariable':
        return RequestResourceTypesBuilderEnum.evidenceVariable;
      case 'ExampleScenario':
        return RequestResourceTypesBuilderEnum.exampleScenario;
      case 'ExplanationOfBenefit':
        return RequestResourceTypesBuilderEnum.explanationOfBenefit;
      case 'FamilyMemberHistory':
        return RequestResourceTypesBuilderEnum.familyMemberHistory;
      case 'Flag':
        return RequestResourceTypesBuilderEnum.flag;
      case 'FormularyItem':
        return RequestResourceTypesBuilderEnum.formularyItem;
      case 'GenomicStudy':
        return RequestResourceTypesBuilderEnum.genomicStudy;
      case 'Goal':
        return RequestResourceTypesBuilderEnum.goal;
      case 'GraphDefinition':
        return RequestResourceTypesBuilderEnum.graphDefinition;
      case 'Group':
        return RequestResourceTypesBuilderEnum.group;
      case 'GuidanceResponse':
        return RequestResourceTypesBuilderEnum.guidanceResponse;
      case 'HealthcareService':
        return RequestResourceTypesBuilderEnum.healthcareService;
      case 'ImagingSelection':
        return RequestResourceTypesBuilderEnum.imagingSelection;
      case 'ImagingStudy':
        return RequestResourceTypesBuilderEnum.imagingStudy;
      case 'Immunization':
        return RequestResourceTypesBuilderEnum.immunization;
      case 'ImmunizationEvaluation':
        return RequestResourceTypesBuilderEnum.immunizationEvaluation;
      case 'ImmunizationRecommendation':
        return RequestResourceTypesBuilderEnum.immunizationRecommendation;
      case 'ImplementationGuide':
        return RequestResourceTypesBuilderEnum.implementationGuide;
      case 'Ingredient':
        return RequestResourceTypesBuilderEnum.ingredient;
      case 'InsurancePlan':
        return RequestResourceTypesBuilderEnum.insurancePlan;
      case 'InventoryItem':
        return RequestResourceTypesBuilderEnum.inventoryItem;
      case 'InventoryReport':
        return RequestResourceTypesBuilderEnum.inventoryReport;
      case 'Invoice':
        return RequestResourceTypesBuilderEnum.invoice;
      case 'Library':
        return RequestResourceTypesBuilderEnum.library;
      case 'Linkage':
        return RequestResourceTypesBuilderEnum.linkage;
      case 'List':
        return RequestResourceTypesBuilderEnum.list_;
      case 'Location':
        return RequestResourceTypesBuilderEnum.location;
      case 'ManufacturedItemDefinition':
        return RequestResourceTypesBuilderEnum.manufacturedItemDefinition;
      case 'Measure':
        return RequestResourceTypesBuilderEnum.measure;
      case 'MeasureReport':
        return RequestResourceTypesBuilderEnum.measureReport;
      case 'Medication':
        return RequestResourceTypesBuilderEnum.medication;
      case 'MedicationAdministration':
        return RequestResourceTypesBuilderEnum.medicationAdministration;
      case 'MedicationDispense':
        return RequestResourceTypesBuilderEnum.medicationDispense;
      case 'MedicationKnowledge':
        return RequestResourceTypesBuilderEnum.medicationKnowledge;
      case 'MedicationRequest':
        return RequestResourceTypesBuilderEnum.medicationRequest;
      case 'MedicationStatement':
        return RequestResourceTypesBuilderEnum.medicationStatement;
      case 'MedicinalProductDefinition':
        return RequestResourceTypesBuilderEnum.medicinalProductDefinition;
      case 'MessageDefinition':
        return RequestResourceTypesBuilderEnum.messageDefinition;
      case 'MessageHeader':
        return RequestResourceTypesBuilderEnum.messageHeader;
      case 'MetadataResource':
        return RequestResourceTypesBuilderEnum.metadataResource;
      case 'MolecularSequence':
        return RequestResourceTypesBuilderEnum.molecularSequence;
      case 'NamingSystem':
        return RequestResourceTypesBuilderEnum.namingSystem;
      case 'NutritionIntake':
        return RequestResourceTypesBuilderEnum.nutritionIntake;
      case 'NutritionOrder':
        return RequestResourceTypesBuilderEnum.nutritionOrder;
      case 'NutritionProduct':
        return RequestResourceTypesBuilderEnum.nutritionProduct;
      case 'Observation':
        return RequestResourceTypesBuilderEnum.observation;
      case 'ObservationDefinition':
        return RequestResourceTypesBuilderEnum.observationDefinition;
      case 'OperationDefinition':
        return RequestResourceTypesBuilderEnum.operationDefinition;
      case 'OperationOutcome':
        return RequestResourceTypesBuilderEnum.operationOutcome;
      case 'Organization':
        return RequestResourceTypesBuilderEnum.organization;
      case 'OrganizationAffiliation':
        return RequestResourceTypesBuilderEnum.organizationAffiliation;
      case 'PackagedProductDefinition':
        return RequestResourceTypesBuilderEnum.packagedProductDefinition;
      case 'Patient':
        return RequestResourceTypesBuilderEnum.patient;
      case 'PaymentNotice':
        return RequestResourceTypesBuilderEnum.paymentNotice;
      case 'PaymentReconciliation':
        return RequestResourceTypesBuilderEnum.paymentReconciliation;
      case 'Permission':
        return RequestResourceTypesBuilderEnum.permission;
      case 'Person':
        return RequestResourceTypesBuilderEnum.person;
      case 'PlanDefinition':
        return RequestResourceTypesBuilderEnum.planDefinition;
      case 'Practitioner':
        return RequestResourceTypesBuilderEnum.practitioner;
      case 'PractitionerRole':
        return RequestResourceTypesBuilderEnum.practitionerRole;
      case 'Procedure':
        return RequestResourceTypesBuilderEnum.procedure;
      case 'Provenance':
        return RequestResourceTypesBuilderEnum.provenance;
      case 'Questionnaire':
        return RequestResourceTypesBuilderEnum.questionnaire;
      case 'QuestionnaireResponse':
        return RequestResourceTypesBuilderEnum.questionnaireResponse;
      case 'RegulatedAuthorization':
        return RequestResourceTypesBuilderEnum.regulatedAuthorization;
      case 'RelatedPerson':
        return RequestResourceTypesBuilderEnum.relatedPerson;
      case 'RequestOrchestration':
        return RequestResourceTypesBuilderEnum.requestOrchestration;
      case 'Requirements':
        return RequestResourceTypesBuilderEnum.requirements;
      case 'ResearchStudy':
        return RequestResourceTypesBuilderEnum.researchStudy;
      case 'ResearchSubject':
        return RequestResourceTypesBuilderEnum.researchSubject;
      case 'RiskAssessment':
        return RequestResourceTypesBuilderEnum.riskAssessment;
      case 'Schedule':
        return RequestResourceTypesBuilderEnum.schedule;
      case 'SearchParameter':
        return RequestResourceTypesBuilderEnum.searchParameter;
      case 'ServiceRequest':
        return RequestResourceTypesBuilderEnum.serviceRequest;
      case 'Slot':
        return RequestResourceTypesBuilderEnum.slot;
      case 'Specimen':
        return RequestResourceTypesBuilderEnum.specimen;
      case 'SpecimenDefinition':
        return RequestResourceTypesBuilderEnum.specimenDefinition;
      case 'StructureDefinition':
        return RequestResourceTypesBuilderEnum.structureDefinition;
      case 'StructureMap':
        return RequestResourceTypesBuilderEnum.structureMap;
      case 'Subscription':
        return RequestResourceTypesBuilderEnum.subscription;
      case 'SubscriptionStatus':
        return RequestResourceTypesBuilderEnum.subscriptionStatus;
      case 'SubscriptionTopic':
        return RequestResourceTypesBuilderEnum.subscriptionTopic;
      case 'Substance':
        return RequestResourceTypesBuilderEnum.substance;
      case 'SubstanceDefinition':
        return RequestResourceTypesBuilderEnum.substanceDefinition;
      case 'SubstanceNucleicAcid':
        return RequestResourceTypesBuilderEnum.substanceNucleicAcid;
      case 'SubstancePolymer':
        return RequestResourceTypesBuilderEnum.substancePolymer;
      case 'SubstanceProtein':
        return RequestResourceTypesBuilderEnum.substanceProtein;
      case 'SubstanceReferenceInformation':
        return RequestResourceTypesBuilderEnum.substanceReferenceInformation;
      case 'SubstanceSourceMaterial':
        return RequestResourceTypesBuilderEnum.substanceSourceMaterial;
      case 'SupplyDelivery':
        return RequestResourceTypesBuilderEnum.supplyDelivery;
      case 'SupplyRequest':
        return RequestResourceTypesBuilderEnum.supplyRequest;
      case 'Task':
        return RequestResourceTypesBuilderEnum.task;
      case 'TerminologyCapabilities':
        return RequestResourceTypesBuilderEnum.terminologyCapabilities;
      case 'TestPlan':
        return RequestResourceTypesBuilderEnum.testPlan;
      case 'TestReport':
        return RequestResourceTypesBuilderEnum.testReport;
      case 'TestScript':
        return RequestResourceTypesBuilderEnum.testScript;
      case 'Transport':
        return RequestResourceTypesBuilderEnum.transport;
      case 'ValueSet':
        return RequestResourceTypesBuilderEnum.valueSet;
      case 'VerificationResult':
        return RequestResourceTypesBuilderEnum.verificationResult;
      case 'VisionPrescription':
        return RequestResourceTypesBuilderEnum.visionPrescription;
      case 'Parameters':
        return RequestResourceTypesBuilderEnum.parameters;
    }
    return null;
  }
}

/// All Resource Types that represent request resources
class RequestResourceTypesBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  RequestResourceTypesBuilder._({
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
  factory RequestResourceTypesBuilder(
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
    final valueEnum = RequestResourceTypesBuilderEnum.fromString(
      valueString,
    );
    return RequestResourceTypesBuilder._(
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

  /// Create empty [RequestResourceTypesBuilder]
  /// with element only
  factory RequestResourceTypesBuilder.empty() =>
      RequestResourceTypesBuilder._(valueString: null);

  /// Factory constructor to create
  /// [RequestResourceTypesBuilder] from JSON.
  factory RequestResourceTypesBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RequestResourceTypesBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'RequestResourceTypesBuilder cannot be constructed from JSON.',
      );
    }
    return RequestResourceTypesBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for RequestResourceTypesBuilder
  final RequestResourceTypesBuilderEnum? valueEnum;

  /// Base
  static RequestResourceTypesBuilder base = RequestResourceTypesBuilder._(
    valueString: 'Base',
    valueEnum: RequestResourceTypesBuilderEnum.base,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Base',
    ),
  );

  /// Element_
  static RequestResourceTypesBuilder element_ = RequestResourceTypesBuilder._(
    valueString: 'Element',
    valueEnum: RequestResourceTypesBuilderEnum.element_,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Element',
    ),
  );

  /// BackboneElement
  static RequestResourceTypesBuilder backboneElement =
      RequestResourceTypesBuilder._(
    valueString: 'BackboneElement',
    valueEnum: RequestResourceTypesBuilderEnum.backboneElement,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'BackboneElement',
    ),
  );

  /// DataType
  static RequestResourceTypesBuilder dataType = RequestResourceTypesBuilder._(
    valueString: 'DataType',
    valueEnum: RequestResourceTypesBuilderEnum.dataType,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'DataType',
    ),
  );

  /// Address
  static RequestResourceTypesBuilder address = RequestResourceTypesBuilder._(
    valueString: 'Address',
    valueEnum: RequestResourceTypesBuilderEnum.address,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Address',
    ),
  );

  /// Annotation
  static RequestResourceTypesBuilder annotation = RequestResourceTypesBuilder._(
    valueString: 'Annotation',
    valueEnum: RequestResourceTypesBuilderEnum.annotation,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Annotation',
    ),
  );

  /// Attachment
  static RequestResourceTypesBuilder attachment = RequestResourceTypesBuilder._(
    valueString: 'Attachment',
    valueEnum: RequestResourceTypesBuilderEnum.attachment,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Attachment',
    ),
  );

  /// Availability
  static RequestResourceTypesBuilder availability =
      RequestResourceTypesBuilder._(
    valueString: 'Availability',
    valueEnum: RequestResourceTypesBuilderEnum.availability,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Availability',
    ),
  );

  /// BackboneType
  static RequestResourceTypesBuilder backboneType =
      RequestResourceTypesBuilder._(
    valueString: 'BackboneType',
    valueEnum: RequestResourceTypesBuilderEnum.backboneType,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'BackboneType',
    ),
  );

  /// Dosage
  static RequestResourceTypesBuilder dosage = RequestResourceTypesBuilder._(
    valueString: 'Dosage',
    valueEnum: RequestResourceTypesBuilderEnum.dosage,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Dosage',
    ),
  );

  /// ElementDefinition
  static RequestResourceTypesBuilder elementDefinition =
      RequestResourceTypesBuilder._(
    valueString: 'ElementDefinition',
    valueEnum: RequestResourceTypesBuilderEnum.elementDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'ElementDefinition',
    ),
  );

  /// MarketingStatus
  static RequestResourceTypesBuilder marketingStatus =
      RequestResourceTypesBuilder._(
    valueString: 'MarketingStatus',
    valueEnum: RequestResourceTypesBuilderEnum.marketingStatus,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'MarketingStatus',
    ),
  );

  /// ProductShelfLife
  static RequestResourceTypesBuilder productShelfLife =
      RequestResourceTypesBuilder._(
    valueString: 'ProductShelfLife',
    valueEnum: RequestResourceTypesBuilderEnum.productShelfLife,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'ProductShelfLife',
    ),
  );

  /// Timing
  static RequestResourceTypesBuilder timing = RequestResourceTypesBuilder._(
    valueString: 'Timing',
    valueEnum: RequestResourceTypesBuilderEnum.timing,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Timing',
    ),
  );

  /// CodeableConcept
  static RequestResourceTypesBuilder codeableConcept =
      RequestResourceTypesBuilder._(
    valueString: 'CodeableConcept',
    valueEnum: RequestResourceTypesBuilderEnum.codeableConcept,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'CodeableConcept',
    ),
  );

  /// CodeableReference
  static RequestResourceTypesBuilder codeableReference =
      RequestResourceTypesBuilder._(
    valueString: 'CodeableReference',
    valueEnum: RequestResourceTypesBuilderEnum.codeableReference,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'CodeableReference',
    ),
  );

  /// Coding
  static RequestResourceTypesBuilder coding = RequestResourceTypesBuilder._(
    valueString: 'Coding',
    valueEnum: RequestResourceTypesBuilderEnum.coding,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Coding',
    ),
  );

  /// ContactDetail
  static RequestResourceTypesBuilder contactDetail =
      RequestResourceTypesBuilder._(
    valueString: 'ContactDetail',
    valueEnum: RequestResourceTypesBuilderEnum.contactDetail,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'ContactDetail',
    ),
  );

  /// ContactPoint
  static RequestResourceTypesBuilder contactPoint =
      RequestResourceTypesBuilder._(
    valueString: 'ContactPoint',
    valueEnum: RequestResourceTypesBuilderEnum.contactPoint,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'ContactPoint',
    ),
  );

  /// Contributor
  static RequestResourceTypesBuilder contributor =
      RequestResourceTypesBuilder._(
    valueString: 'Contributor',
    valueEnum: RequestResourceTypesBuilderEnum.contributor,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Contributor',
    ),
  );

  /// DataRequirement
  static RequestResourceTypesBuilder dataRequirement =
      RequestResourceTypesBuilder._(
    valueString: 'DataRequirement',
    valueEnum: RequestResourceTypesBuilderEnum.dataRequirement,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'DataRequirement',
    ),
  );

  /// Expression
  static RequestResourceTypesBuilder expression = RequestResourceTypesBuilder._(
    valueString: 'Expression',
    valueEnum: RequestResourceTypesBuilderEnum.expression,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Expression',
    ),
  );

  /// ExtendedContactDetail
  static RequestResourceTypesBuilder extendedContactDetail =
      RequestResourceTypesBuilder._(
    valueString: 'ExtendedContactDetail',
    valueEnum: RequestResourceTypesBuilderEnum.extendedContactDetail,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'ExtendedContactDetail',
    ),
  );

  /// Extension
  static RequestResourceTypesBuilder extension = RequestResourceTypesBuilder._(
    valueString: 'Extension',
    valueEnum: RequestResourceTypesBuilderEnum.extension,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Extension',
    ),
  );

  /// HumanName
  static RequestResourceTypesBuilder humanName = RequestResourceTypesBuilder._(
    valueString: 'HumanName',
    valueEnum: RequestResourceTypesBuilderEnum.humanName,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'HumanName',
    ),
  );

  /// Identifier
  static RequestResourceTypesBuilder identifier = RequestResourceTypesBuilder._(
    valueString: 'Identifier',
    valueEnum: RequestResourceTypesBuilderEnum.identifier,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Identifier',
    ),
  );

  /// Meta
  static RequestResourceTypesBuilder meta = RequestResourceTypesBuilder._(
    valueString: 'Meta',
    valueEnum: RequestResourceTypesBuilderEnum.meta,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Meta',
    ),
  );

  /// MonetaryComponent
  static RequestResourceTypesBuilder monetaryComponent =
      RequestResourceTypesBuilder._(
    valueString: 'MonetaryComponent',
    valueEnum: RequestResourceTypesBuilderEnum.monetaryComponent,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'MonetaryComponent',
    ),
  );

  /// Money
  static RequestResourceTypesBuilder money = RequestResourceTypesBuilder._(
    valueString: 'Money',
    valueEnum: RequestResourceTypesBuilderEnum.money,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Money',
    ),
  );

  /// Narrative
  static RequestResourceTypesBuilder narrative = RequestResourceTypesBuilder._(
    valueString: 'Narrative',
    valueEnum: RequestResourceTypesBuilderEnum.narrative,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Narrative',
    ),
  );

  /// ParameterDefinition
  static RequestResourceTypesBuilder parameterDefinition =
      RequestResourceTypesBuilder._(
    valueString: 'ParameterDefinition',
    valueEnum: RequestResourceTypesBuilderEnum.parameterDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'ParameterDefinition',
    ),
  );

  /// Period
  static RequestResourceTypesBuilder period = RequestResourceTypesBuilder._(
    valueString: 'Period',
    valueEnum: RequestResourceTypesBuilderEnum.period,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Period',
    ),
  );

  /// PrimitiveType
  static RequestResourceTypesBuilder primitiveType =
      RequestResourceTypesBuilder._(
    valueString: 'PrimitiveType',
    valueEnum: RequestResourceTypesBuilderEnum.primitiveType,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'PrimitiveType',
    ),
  );

  /// base64Binary
  static RequestResourceTypesBuilder base64Binary =
      RequestResourceTypesBuilder._(
    valueString: 'base64Binary',
    valueEnum: RequestResourceTypesBuilderEnum.base64Binary,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'base64Binary',
    ),
  );

  /// boolean
  static RequestResourceTypesBuilder boolean = RequestResourceTypesBuilder._(
    valueString: 'boolean',
    valueEnum: RequestResourceTypesBuilderEnum.boolean,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'boolean',
    ),
  );

  /// date
  static RequestResourceTypesBuilder date = RequestResourceTypesBuilder._(
    valueString: 'date',
    valueEnum: RequestResourceTypesBuilderEnum.date,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'date',
    ),
  );

  /// dateTime
  static RequestResourceTypesBuilder dateTime = RequestResourceTypesBuilder._(
    valueString: 'dateTime',
    valueEnum: RequestResourceTypesBuilderEnum.dateTime,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'dateTime',
    ),
  );

  /// decimal
  static RequestResourceTypesBuilder decimal = RequestResourceTypesBuilder._(
    valueString: 'decimal',
    valueEnum: RequestResourceTypesBuilderEnum.decimal,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'decimal',
    ),
  );

  /// instant
  static RequestResourceTypesBuilder instant = RequestResourceTypesBuilder._(
    valueString: 'instant',
    valueEnum: RequestResourceTypesBuilderEnum.instant,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'instant',
    ),
  );

  /// integer
  static RequestResourceTypesBuilder integer = RequestResourceTypesBuilder._(
    valueString: 'integer',
    valueEnum: RequestResourceTypesBuilderEnum.integer,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'integer',
    ),
  );

  /// positiveInt
  static RequestResourceTypesBuilder positiveInt =
      RequestResourceTypesBuilder._(
    valueString: 'positiveInt',
    valueEnum: RequestResourceTypesBuilderEnum.positiveInt,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'positiveInt',
    ),
  );

  /// unsignedInt
  static RequestResourceTypesBuilder unsignedInt =
      RequestResourceTypesBuilder._(
    valueString: 'unsignedInt',
    valueEnum: RequestResourceTypesBuilderEnum.unsignedInt,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'unsignedInt',
    ),
  );

  /// integer64
  static RequestResourceTypesBuilder integer64 = RequestResourceTypesBuilder._(
    valueString: 'integer64',
    valueEnum: RequestResourceTypesBuilderEnum.integer64,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'integer64',
    ),
  );

  /// string
  static RequestResourceTypesBuilder string = RequestResourceTypesBuilder._(
    valueString: 'string',
    valueEnum: RequestResourceTypesBuilderEnum.string,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'string',
    ),
  );

  /// code
  static RequestResourceTypesBuilder code = RequestResourceTypesBuilder._(
    valueString: 'code',
    valueEnum: RequestResourceTypesBuilderEnum.code,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'code',
    ),
  );

  /// id
  static RequestResourceTypesBuilder id_ = RequestResourceTypesBuilder._(
    valueString: 'id',
    valueEnum: RequestResourceTypesBuilderEnum.id_,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'id',
    ),
  );

  /// markdown
  static RequestResourceTypesBuilder markdown = RequestResourceTypesBuilder._(
    valueString: 'markdown',
    valueEnum: RequestResourceTypesBuilderEnum.markdown,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'markdown',
    ),
  );

  /// time
  static RequestResourceTypesBuilder time = RequestResourceTypesBuilder._(
    valueString: 'time',
    valueEnum: RequestResourceTypesBuilderEnum.time,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'time',
    ),
  );

  /// uri
  static RequestResourceTypesBuilder uri = RequestResourceTypesBuilder._(
    valueString: 'uri',
    valueEnum: RequestResourceTypesBuilderEnum.uri,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'uri',
    ),
  );

  /// canonical
  static RequestResourceTypesBuilder canonical = RequestResourceTypesBuilder._(
    valueString: 'canonical',
    valueEnum: RequestResourceTypesBuilderEnum.canonical,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'canonical',
    ),
  );

  /// oid
  static RequestResourceTypesBuilder oid = RequestResourceTypesBuilder._(
    valueString: 'oid',
    valueEnum: RequestResourceTypesBuilderEnum.oid,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'oid',
    ),
  );

  /// url
  static RequestResourceTypesBuilder url = RequestResourceTypesBuilder._(
    valueString: 'url',
    valueEnum: RequestResourceTypesBuilderEnum.url,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'url',
    ),
  );

  /// uuid
  static RequestResourceTypesBuilder uuid = RequestResourceTypesBuilder._(
    valueString: 'uuid',
    valueEnum: RequestResourceTypesBuilderEnum.uuid,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'uuid',
    ),
  );

  /// Quantity
  static RequestResourceTypesBuilder quantity = RequestResourceTypesBuilder._(
    valueString: 'Quantity',
    valueEnum: RequestResourceTypesBuilderEnum.quantity,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Quantity',
    ),
  );

  /// Age
  static RequestResourceTypesBuilder age = RequestResourceTypesBuilder._(
    valueString: 'Age',
    valueEnum: RequestResourceTypesBuilderEnum.age,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Age',
    ),
  );

  /// Count
  static RequestResourceTypesBuilder count = RequestResourceTypesBuilder._(
    valueString: 'Count',
    valueEnum: RequestResourceTypesBuilderEnum.count,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Count',
    ),
  );

  /// Distance
  static RequestResourceTypesBuilder distance = RequestResourceTypesBuilder._(
    valueString: 'Distance',
    valueEnum: RequestResourceTypesBuilderEnum.distance,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Distance',
    ),
  );

  /// Duration
  static RequestResourceTypesBuilder duration = RequestResourceTypesBuilder._(
    valueString: 'Duration',
    valueEnum: RequestResourceTypesBuilderEnum.duration,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Duration',
    ),
  );

  /// Range
  static RequestResourceTypesBuilder range = RequestResourceTypesBuilder._(
    valueString: 'Range',
    valueEnum: RequestResourceTypesBuilderEnum.range,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Range',
    ),
  );

  /// Ratio
  static RequestResourceTypesBuilder ratio = RequestResourceTypesBuilder._(
    valueString: 'Ratio',
    valueEnum: RequestResourceTypesBuilderEnum.ratio,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Ratio',
    ),
  );

  /// RatioRange
  static RequestResourceTypesBuilder ratioRange = RequestResourceTypesBuilder._(
    valueString: 'RatioRange',
    valueEnum: RequestResourceTypesBuilderEnum.ratioRange,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'RatioRange',
    ),
  );

  /// Reference
  static RequestResourceTypesBuilder reference = RequestResourceTypesBuilder._(
    valueString: 'Reference',
    valueEnum: RequestResourceTypesBuilderEnum.reference,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Reference',
    ),
  );

  /// RelatedArtifact
  static RequestResourceTypesBuilder relatedArtifact =
      RequestResourceTypesBuilder._(
    valueString: 'RelatedArtifact',
    valueEnum: RequestResourceTypesBuilderEnum.relatedArtifact,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'RelatedArtifact',
    ),
  );

  /// SampledData
  static RequestResourceTypesBuilder sampledData =
      RequestResourceTypesBuilder._(
    valueString: 'SampledData',
    valueEnum: RequestResourceTypesBuilderEnum.sampledData,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'SampledData',
    ),
  );

  /// Signature
  static RequestResourceTypesBuilder signature = RequestResourceTypesBuilder._(
    valueString: 'Signature',
    valueEnum: RequestResourceTypesBuilderEnum.signature,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Signature',
    ),
  );

  /// TriggerDefinition
  static RequestResourceTypesBuilder triggerDefinition =
      RequestResourceTypesBuilder._(
    valueString: 'TriggerDefinition',
    valueEnum: RequestResourceTypesBuilderEnum.triggerDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'TriggerDefinition',
    ),
  );

  /// UsageContext
  static RequestResourceTypesBuilder usageContext =
      RequestResourceTypesBuilder._(
    valueString: 'UsageContext',
    valueEnum: RequestResourceTypesBuilderEnum.usageContext,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'UsageContext',
    ),
  );

  /// VirtualServiceDetail
  static RequestResourceTypesBuilder virtualServiceDetail =
      RequestResourceTypesBuilder._(
    valueString: 'VirtualServiceDetail',
    valueEnum: RequestResourceTypesBuilderEnum.virtualServiceDetail,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'VirtualServiceDetail',
    ),
  );

  /// xhtml
  static RequestResourceTypesBuilder xhtml = RequestResourceTypesBuilder._(
    valueString: 'xhtml',
    valueEnum: RequestResourceTypesBuilderEnum.xhtml,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'xhtml',
    ),
  );

  /// Resource
  static RequestResourceTypesBuilder resource = RequestResourceTypesBuilder._(
    valueString: 'Resource',
    valueEnum: RequestResourceTypesBuilderEnum.resource,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Resource',
    ),
  );

  /// Binary
  static RequestResourceTypesBuilder binary = RequestResourceTypesBuilder._(
    valueString: 'Binary',
    valueEnum: RequestResourceTypesBuilderEnum.binary,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Binary',
    ),
  );

  /// Bundle
  static RequestResourceTypesBuilder bundle = RequestResourceTypesBuilder._(
    valueString: 'Bundle',
    valueEnum: RequestResourceTypesBuilderEnum.bundle,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Bundle',
    ),
  );

  /// DomainResource
  static RequestResourceTypesBuilder domainResource =
      RequestResourceTypesBuilder._(
    valueString: 'DomainResource',
    valueEnum: RequestResourceTypesBuilderEnum.domainResource,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'DomainResource',
    ),
  );

  /// Account
  static RequestResourceTypesBuilder account = RequestResourceTypesBuilder._(
    valueString: 'Account',
    valueEnum: RequestResourceTypesBuilderEnum.account,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Account',
    ),
  );

  /// ActivityDefinition
  static RequestResourceTypesBuilder activityDefinition =
      RequestResourceTypesBuilder._(
    valueString: 'ActivityDefinition',
    valueEnum: RequestResourceTypesBuilderEnum.activityDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'ActivityDefinition',
    ),
  );

  /// ActorDefinition
  static RequestResourceTypesBuilder actorDefinition =
      RequestResourceTypesBuilder._(
    valueString: 'ActorDefinition',
    valueEnum: RequestResourceTypesBuilderEnum.actorDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'ActorDefinition',
    ),
  );

  /// AdministrableProductDefinition
  static RequestResourceTypesBuilder administrableProductDefinition =
      RequestResourceTypesBuilder._(
    valueString: 'AdministrableProductDefinition',
    valueEnum: RequestResourceTypesBuilderEnum.administrableProductDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'AdministrableProductDefinition',
    ),
  );

  /// AdverseEvent
  static RequestResourceTypesBuilder adverseEvent =
      RequestResourceTypesBuilder._(
    valueString: 'AdverseEvent',
    valueEnum: RequestResourceTypesBuilderEnum.adverseEvent,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'AdverseEvent',
    ),
  );

  /// AllergyIntolerance
  static RequestResourceTypesBuilder allergyIntolerance =
      RequestResourceTypesBuilder._(
    valueString: 'AllergyIntolerance',
    valueEnum: RequestResourceTypesBuilderEnum.allergyIntolerance,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'AllergyIntolerance',
    ),
  );

  /// Appointment
  static RequestResourceTypesBuilder appointment =
      RequestResourceTypesBuilder._(
    valueString: 'Appointment',
    valueEnum: RequestResourceTypesBuilderEnum.appointment,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Appointment',
    ),
  );

  /// AppointmentResponse
  static RequestResourceTypesBuilder appointmentResponse =
      RequestResourceTypesBuilder._(
    valueString: 'AppointmentResponse',
    valueEnum: RequestResourceTypesBuilderEnum.appointmentResponse,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'AppointmentResponse',
    ),
  );

  /// ArtifactAssessment
  static RequestResourceTypesBuilder artifactAssessment =
      RequestResourceTypesBuilder._(
    valueString: 'ArtifactAssessment',
    valueEnum: RequestResourceTypesBuilderEnum.artifactAssessment,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'ArtifactAssessment',
    ),
  );

  /// AuditEvent
  static RequestResourceTypesBuilder auditEvent = RequestResourceTypesBuilder._(
    valueString: 'AuditEvent',
    valueEnum: RequestResourceTypesBuilderEnum.auditEvent,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'AuditEvent',
    ),
  );

  /// Basic
  static RequestResourceTypesBuilder basic = RequestResourceTypesBuilder._(
    valueString: 'Basic',
    valueEnum: RequestResourceTypesBuilderEnum.basic,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Basic',
    ),
  );

  /// BiologicallyDerivedProduct
  static RequestResourceTypesBuilder biologicallyDerivedProduct =
      RequestResourceTypesBuilder._(
    valueString: 'BiologicallyDerivedProduct',
    valueEnum: RequestResourceTypesBuilderEnum.biologicallyDerivedProduct,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'BiologicallyDerivedProduct',
    ),
  );

  /// BiologicallyDerivedProductDispense
  static RequestResourceTypesBuilder biologicallyDerivedProductDispense =
      RequestResourceTypesBuilder._(
    valueString: 'BiologicallyDerivedProductDispense',
    valueEnum:
        RequestResourceTypesBuilderEnum.biologicallyDerivedProductDispense,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'BiologicallyDerivedProductDispense',
    ),
  );

  /// BodyStructure
  static RequestResourceTypesBuilder bodyStructure =
      RequestResourceTypesBuilder._(
    valueString: 'BodyStructure',
    valueEnum: RequestResourceTypesBuilderEnum.bodyStructure,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'BodyStructure',
    ),
  );

  /// CanonicalResource
  static RequestResourceTypesBuilder canonicalResource =
      RequestResourceTypesBuilder._(
    valueString: 'CanonicalResource',
    valueEnum: RequestResourceTypesBuilderEnum.canonicalResource,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'CanonicalResource',
    ),
  );

  /// CapabilityStatement
  static RequestResourceTypesBuilder capabilityStatement =
      RequestResourceTypesBuilder._(
    valueString: 'CapabilityStatement',
    valueEnum: RequestResourceTypesBuilderEnum.capabilityStatement,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'CapabilityStatement',
    ),
  );

  /// CarePlan
  static RequestResourceTypesBuilder carePlan = RequestResourceTypesBuilder._(
    valueString: 'CarePlan',
    valueEnum: RequestResourceTypesBuilderEnum.carePlan,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'CarePlan',
    ),
  );

  /// CareTeam
  static RequestResourceTypesBuilder careTeam = RequestResourceTypesBuilder._(
    valueString: 'CareTeam',
    valueEnum: RequestResourceTypesBuilderEnum.careTeam,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'CareTeam',
    ),
  );

  /// ChargeItem
  static RequestResourceTypesBuilder chargeItem = RequestResourceTypesBuilder._(
    valueString: 'ChargeItem',
    valueEnum: RequestResourceTypesBuilderEnum.chargeItem,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'ChargeItem',
    ),
  );

  /// ChargeItemDefinition
  static RequestResourceTypesBuilder chargeItemDefinition =
      RequestResourceTypesBuilder._(
    valueString: 'ChargeItemDefinition',
    valueEnum: RequestResourceTypesBuilderEnum.chargeItemDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'ChargeItemDefinition',
    ),
  );

  /// Citation
  static RequestResourceTypesBuilder citation = RequestResourceTypesBuilder._(
    valueString: 'Citation',
    valueEnum: RequestResourceTypesBuilderEnum.citation,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Citation',
    ),
  );

  /// Claim
  static RequestResourceTypesBuilder claim = RequestResourceTypesBuilder._(
    valueString: 'Claim',
    valueEnum: RequestResourceTypesBuilderEnum.claim,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Claim',
    ),
  );

  /// ClaimResponse
  static RequestResourceTypesBuilder claimResponse =
      RequestResourceTypesBuilder._(
    valueString: 'ClaimResponse',
    valueEnum: RequestResourceTypesBuilderEnum.claimResponse,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'ClaimResponse',
    ),
  );

  /// ClinicalImpression
  static RequestResourceTypesBuilder clinicalImpression =
      RequestResourceTypesBuilder._(
    valueString: 'ClinicalImpression',
    valueEnum: RequestResourceTypesBuilderEnum.clinicalImpression,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'ClinicalImpression',
    ),
  );

  /// ClinicalUseDefinition
  static RequestResourceTypesBuilder clinicalUseDefinition =
      RequestResourceTypesBuilder._(
    valueString: 'ClinicalUseDefinition',
    valueEnum: RequestResourceTypesBuilderEnum.clinicalUseDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'ClinicalUseDefinition',
    ),
  );

  /// CodeSystem
  static RequestResourceTypesBuilder codeSystem = RequestResourceTypesBuilder._(
    valueString: 'CodeSystem',
    valueEnum: RequestResourceTypesBuilderEnum.codeSystem,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'CodeSystem',
    ),
  );

  /// Communication
  static RequestResourceTypesBuilder communication =
      RequestResourceTypesBuilder._(
    valueString: 'Communication',
    valueEnum: RequestResourceTypesBuilderEnum.communication,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Communication',
    ),
  );

  /// CommunicationRequest
  static RequestResourceTypesBuilder communicationRequest =
      RequestResourceTypesBuilder._(
    valueString: 'CommunicationRequest',
    valueEnum: RequestResourceTypesBuilderEnum.communicationRequest,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'CommunicationRequest',
    ),
  );

  /// CompartmentDefinition
  static RequestResourceTypesBuilder compartmentDefinition =
      RequestResourceTypesBuilder._(
    valueString: 'CompartmentDefinition',
    valueEnum: RequestResourceTypesBuilderEnum.compartmentDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'CompartmentDefinition',
    ),
  );

  /// Composition
  static RequestResourceTypesBuilder composition =
      RequestResourceTypesBuilder._(
    valueString: 'Composition',
    valueEnum: RequestResourceTypesBuilderEnum.composition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Composition',
    ),
  );

  /// ConceptMap
  static RequestResourceTypesBuilder conceptMap = RequestResourceTypesBuilder._(
    valueString: 'ConceptMap',
    valueEnum: RequestResourceTypesBuilderEnum.conceptMap,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'ConceptMap',
    ),
  );

  /// Condition
  static RequestResourceTypesBuilder condition = RequestResourceTypesBuilder._(
    valueString: 'Condition',
    valueEnum: RequestResourceTypesBuilderEnum.condition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Condition',
    ),
  );

  /// ConditionDefinition
  static RequestResourceTypesBuilder conditionDefinition =
      RequestResourceTypesBuilder._(
    valueString: 'ConditionDefinition',
    valueEnum: RequestResourceTypesBuilderEnum.conditionDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'ConditionDefinition',
    ),
  );

  /// Consent
  static RequestResourceTypesBuilder consent = RequestResourceTypesBuilder._(
    valueString: 'Consent',
    valueEnum: RequestResourceTypesBuilderEnum.consent,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Consent',
    ),
  );

  /// Contract
  static RequestResourceTypesBuilder contract = RequestResourceTypesBuilder._(
    valueString: 'Contract',
    valueEnum: RequestResourceTypesBuilderEnum.contract,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Contract',
    ),
  );

  /// Coverage
  static RequestResourceTypesBuilder coverage = RequestResourceTypesBuilder._(
    valueString: 'Coverage',
    valueEnum: RequestResourceTypesBuilderEnum.coverage,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Coverage',
    ),
  );

  /// CoverageEligibilityRequest
  static RequestResourceTypesBuilder coverageEligibilityRequest =
      RequestResourceTypesBuilder._(
    valueString: 'CoverageEligibilityRequest',
    valueEnum: RequestResourceTypesBuilderEnum.coverageEligibilityRequest,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'CoverageEligibilityRequest',
    ),
  );

  /// CoverageEligibilityResponse
  static RequestResourceTypesBuilder coverageEligibilityResponse =
      RequestResourceTypesBuilder._(
    valueString: 'CoverageEligibilityResponse',
    valueEnum: RequestResourceTypesBuilderEnum.coverageEligibilityResponse,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'CoverageEligibilityResponse',
    ),
  );

  /// DetectedIssue
  static RequestResourceTypesBuilder detectedIssue =
      RequestResourceTypesBuilder._(
    valueString: 'DetectedIssue',
    valueEnum: RequestResourceTypesBuilderEnum.detectedIssue,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'DetectedIssue',
    ),
  );

  /// Device
  static RequestResourceTypesBuilder device = RequestResourceTypesBuilder._(
    valueString: 'Device',
    valueEnum: RequestResourceTypesBuilderEnum.device,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Device',
    ),
  );

  /// DeviceAssociation
  static RequestResourceTypesBuilder deviceAssociation =
      RequestResourceTypesBuilder._(
    valueString: 'DeviceAssociation',
    valueEnum: RequestResourceTypesBuilderEnum.deviceAssociation,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'DeviceAssociation',
    ),
  );

  /// DeviceDefinition
  static RequestResourceTypesBuilder deviceDefinition =
      RequestResourceTypesBuilder._(
    valueString: 'DeviceDefinition',
    valueEnum: RequestResourceTypesBuilderEnum.deviceDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'DeviceDefinition',
    ),
  );

  /// DeviceDispense
  static RequestResourceTypesBuilder deviceDispense =
      RequestResourceTypesBuilder._(
    valueString: 'DeviceDispense',
    valueEnum: RequestResourceTypesBuilderEnum.deviceDispense,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'DeviceDispense',
    ),
  );

  /// DeviceMetric
  static RequestResourceTypesBuilder deviceMetric =
      RequestResourceTypesBuilder._(
    valueString: 'DeviceMetric',
    valueEnum: RequestResourceTypesBuilderEnum.deviceMetric,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'DeviceMetric',
    ),
  );

  /// DeviceRequest
  static RequestResourceTypesBuilder deviceRequest =
      RequestResourceTypesBuilder._(
    valueString: 'DeviceRequest',
    valueEnum: RequestResourceTypesBuilderEnum.deviceRequest,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'DeviceRequest',
    ),
  );

  /// DeviceUsage
  static RequestResourceTypesBuilder deviceUsage =
      RequestResourceTypesBuilder._(
    valueString: 'DeviceUsage',
    valueEnum: RequestResourceTypesBuilderEnum.deviceUsage,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'DeviceUsage',
    ),
  );

  /// DiagnosticReport
  static RequestResourceTypesBuilder diagnosticReport =
      RequestResourceTypesBuilder._(
    valueString: 'DiagnosticReport',
    valueEnum: RequestResourceTypesBuilderEnum.diagnosticReport,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'DiagnosticReport',
    ),
  );

  /// DocumentReference
  static RequestResourceTypesBuilder documentReference =
      RequestResourceTypesBuilder._(
    valueString: 'DocumentReference',
    valueEnum: RequestResourceTypesBuilderEnum.documentReference,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'DocumentReference',
    ),
  );

  /// Encounter
  static RequestResourceTypesBuilder encounter = RequestResourceTypesBuilder._(
    valueString: 'Encounter',
    valueEnum: RequestResourceTypesBuilderEnum.encounter,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Encounter',
    ),
  );

  /// EncounterHistory
  static RequestResourceTypesBuilder encounterHistory =
      RequestResourceTypesBuilder._(
    valueString: 'EncounterHistory',
    valueEnum: RequestResourceTypesBuilderEnum.encounterHistory,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'EncounterHistory',
    ),
  );

  /// Endpoint
  static RequestResourceTypesBuilder endpoint = RequestResourceTypesBuilder._(
    valueString: 'Endpoint',
    valueEnum: RequestResourceTypesBuilderEnum.endpoint,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Endpoint',
    ),
  );

  /// EnrollmentRequest
  static RequestResourceTypesBuilder enrollmentRequest =
      RequestResourceTypesBuilder._(
    valueString: 'EnrollmentRequest',
    valueEnum: RequestResourceTypesBuilderEnum.enrollmentRequest,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'EnrollmentRequest',
    ),
  );

  /// EnrollmentResponse
  static RequestResourceTypesBuilder enrollmentResponse =
      RequestResourceTypesBuilder._(
    valueString: 'EnrollmentResponse',
    valueEnum: RequestResourceTypesBuilderEnum.enrollmentResponse,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'EnrollmentResponse',
    ),
  );

  /// EpisodeOfCare
  static RequestResourceTypesBuilder episodeOfCare =
      RequestResourceTypesBuilder._(
    valueString: 'EpisodeOfCare',
    valueEnum: RequestResourceTypesBuilderEnum.episodeOfCare,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'EpisodeOfCare',
    ),
  );

  /// EventDefinition
  static RequestResourceTypesBuilder eventDefinition =
      RequestResourceTypesBuilder._(
    valueString: 'EventDefinition',
    valueEnum: RequestResourceTypesBuilderEnum.eventDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'EventDefinition',
    ),
  );

  /// Evidence
  static RequestResourceTypesBuilder evidence = RequestResourceTypesBuilder._(
    valueString: 'Evidence',
    valueEnum: RequestResourceTypesBuilderEnum.evidence,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Evidence',
    ),
  );

  /// EvidenceReport
  static RequestResourceTypesBuilder evidenceReport =
      RequestResourceTypesBuilder._(
    valueString: 'EvidenceReport',
    valueEnum: RequestResourceTypesBuilderEnum.evidenceReport,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'EvidenceReport',
    ),
  );

  /// EvidenceVariable
  static RequestResourceTypesBuilder evidenceVariable =
      RequestResourceTypesBuilder._(
    valueString: 'EvidenceVariable',
    valueEnum: RequestResourceTypesBuilderEnum.evidenceVariable,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'EvidenceVariable',
    ),
  );

  /// ExampleScenario
  static RequestResourceTypesBuilder exampleScenario =
      RequestResourceTypesBuilder._(
    valueString: 'ExampleScenario',
    valueEnum: RequestResourceTypesBuilderEnum.exampleScenario,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'ExampleScenario',
    ),
  );

  /// ExplanationOfBenefit
  static RequestResourceTypesBuilder explanationOfBenefit =
      RequestResourceTypesBuilder._(
    valueString: 'ExplanationOfBenefit',
    valueEnum: RequestResourceTypesBuilderEnum.explanationOfBenefit,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'ExplanationOfBenefit',
    ),
  );

  /// FamilyMemberHistory
  static RequestResourceTypesBuilder familyMemberHistory =
      RequestResourceTypesBuilder._(
    valueString: 'FamilyMemberHistory',
    valueEnum: RequestResourceTypesBuilderEnum.familyMemberHistory,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'FamilyMemberHistory',
    ),
  );

  /// Flag
  static RequestResourceTypesBuilder flag = RequestResourceTypesBuilder._(
    valueString: 'Flag',
    valueEnum: RequestResourceTypesBuilderEnum.flag,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Flag',
    ),
  );

  /// FormularyItem
  static RequestResourceTypesBuilder formularyItem =
      RequestResourceTypesBuilder._(
    valueString: 'FormularyItem',
    valueEnum: RequestResourceTypesBuilderEnum.formularyItem,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'FormularyItem',
    ),
  );

  /// GenomicStudy
  static RequestResourceTypesBuilder genomicStudy =
      RequestResourceTypesBuilder._(
    valueString: 'GenomicStudy',
    valueEnum: RequestResourceTypesBuilderEnum.genomicStudy,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'GenomicStudy',
    ),
  );

  /// Goal
  static RequestResourceTypesBuilder goal = RequestResourceTypesBuilder._(
    valueString: 'Goal',
    valueEnum: RequestResourceTypesBuilderEnum.goal,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Goal',
    ),
  );

  /// GraphDefinition
  static RequestResourceTypesBuilder graphDefinition =
      RequestResourceTypesBuilder._(
    valueString: 'GraphDefinition',
    valueEnum: RequestResourceTypesBuilderEnum.graphDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'GraphDefinition',
    ),
  );

  /// Group
  static RequestResourceTypesBuilder group = RequestResourceTypesBuilder._(
    valueString: 'Group',
    valueEnum: RequestResourceTypesBuilderEnum.group,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Group',
    ),
  );

  /// GuidanceResponse
  static RequestResourceTypesBuilder guidanceResponse =
      RequestResourceTypesBuilder._(
    valueString: 'GuidanceResponse',
    valueEnum: RequestResourceTypesBuilderEnum.guidanceResponse,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'GuidanceResponse',
    ),
  );

  /// HealthcareService
  static RequestResourceTypesBuilder healthcareService =
      RequestResourceTypesBuilder._(
    valueString: 'HealthcareService',
    valueEnum: RequestResourceTypesBuilderEnum.healthcareService,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'HealthcareService',
    ),
  );

  /// ImagingSelection
  static RequestResourceTypesBuilder imagingSelection =
      RequestResourceTypesBuilder._(
    valueString: 'ImagingSelection',
    valueEnum: RequestResourceTypesBuilderEnum.imagingSelection,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'ImagingSelection',
    ),
  );

  /// ImagingStudy
  static RequestResourceTypesBuilder imagingStudy =
      RequestResourceTypesBuilder._(
    valueString: 'ImagingStudy',
    valueEnum: RequestResourceTypesBuilderEnum.imagingStudy,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'ImagingStudy',
    ),
  );

  /// Immunization
  static RequestResourceTypesBuilder immunization =
      RequestResourceTypesBuilder._(
    valueString: 'Immunization',
    valueEnum: RequestResourceTypesBuilderEnum.immunization,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Immunization',
    ),
  );

  /// ImmunizationEvaluation
  static RequestResourceTypesBuilder immunizationEvaluation =
      RequestResourceTypesBuilder._(
    valueString: 'ImmunizationEvaluation',
    valueEnum: RequestResourceTypesBuilderEnum.immunizationEvaluation,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'ImmunizationEvaluation',
    ),
  );

  /// ImmunizationRecommendation
  static RequestResourceTypesBuilder immunizationRecommendation =
      RequestResourceTypesBuilder._(
    valueString: 'ImmunizationRecommendation',
    valueEnum: RequestResourceTypesBuilderEnum.immunizationRecommendation,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'ImmunizationRecommendation',
    ),
  );

  /// ImplementationGuide
  static RequestResourceTypesBuilder implementationGuide =
      RequestResourceTypesBuilder._(
    valueString: 'ImplementationGuide',
    valueEnum: RequestResourceTypesBuilderEnum.implementationGuide,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'ImplementationGuide',
    ),
  );

  /// Ingredient
  static RequestResourceTypesBuilder ingredient = RequestResourceTypesBuilder._(
    valueString: 'Ingredient',
    valueEnum: RequestResourceTypesBuilderEnum.ingredient,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Ingredient',
    ),
  );

  /// InsurancePlan
  static RequestResourceTypesBuilder insurancePlan =
      RequestResourceTypesBuilder._(
    valueString: 'InsurancePlan',
    valueEnum: RequestResourceTypesBuilderEnum.insurancePlan,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'InsurancePlan',
    ),
  );

  /// InventoryItem
  static RequestResourceTypesBuilder inventoryItem =
      RequestResourceTypesBuilder._(
    valueString: 'InventoryItem',
    valueEnum: RequestResourceTypesBuilderEnum.inventoryItem,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'InventoryItem',
    ),
  );

  /// InventoryReport
  static RequestResourceTypesBuilder inventoryReport =
      RequestResourceTypesBuilder._(
    valueString: 'InventoryReport',
    valueEnum: RequestResourceTypesBuilderEnum.inventoryReport,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'InventoryReport',
    ),
  );

  /// Invoice
  static RequestResourceTypesBuilder invoice = RequestResourceTypesBuilder._(
    valueString: 'Invoice',
    valueEnum: RequestResourceTypesBuilderEnum.invoice,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Invoice',
    ),
  );

  /// Library
  static RequestResourceTypesBuilder library = RequestResourceTypesBuilder._(
    valueString: 'Library',
    valueEnum: RequestResourceTypesBuilderEnum.library,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Library',
    ),
  );

  /// Linkage
  static RequestResourceTypesBuilder linkage = RequestResourceTypesBuilder._(
    valueString: 'Linkage',
    valueEnum: RequestResourceTypesBuilderEnum.linkage,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Linkage',
    ),
  );

  /// List_
  static RequestResourceTypesBuilder list_ = RequestResourceTypesBuilder._(
    valueString: 'List',
    valueEnum: RequestResourceTypesBuilderEnum.list_,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'List',
    ),
  );

  /// Location
  static RequestResourceTypesBuilder location = RequestResourceTypesBuilder._(
    valueString: 'Location',
    valueEnum: RequestResourceTypesBuilderEnum.location,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Location',
    ),
  );

  /// ManufacturedItemDefinition
  static RequestResourceTypesBuilder manufacturedItemDefinition =
      RequestResourceTypesBuilder._(
    valueString: 'ManufacturedItemDefinition',
    valueEnum: RequestResourceTypesBuilderEnum.manufacturedItemDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'ManufacturedItemDefinition',
    ),
  );

  /// Measure
  static RequestResourceTypesBuilder measure = RequestResourceTypesBuilder._(
    valueString: 'Measure',
    valueEnum: RequestResourceTypesBuilderEnum.measure,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Measure',
    ),
  );

  /// MeasureReport
  static RequestResourceTypesBuilder measureReport =
      RequestResourceTypesBuilder._(
    valueString: 'MeasureReport',
    valueEnum: RequestResourceTypesBuilderEnum.measureReport,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'MeasureReport',
    ),
  );

  /// Medication
  static RequestResourceTypesBuilder medication = RequestResourceTypesBuilder._(
    valueString: 'Medication',
    valueEnum: RequestResourceTypesBuilderEnum.medication,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Medication',
    ),
  );

  /// MedicationAdministration
  static RequestResourceTypesBuilder medicationAdministration =
      RequestResourceTypesBuilder._(
    valueString: 'MedicationAdministration',
    valueEnum: RequestResourceTypesBuilderEnum.medicationAdministration,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'MedicationAdministration',
    ),
  );

  /// MedicationDispense
  static RequestResourceTypesBuilder medicationDispense =
      RequestResourceTypesBuilder._(
    valueString: 'MedicationDispense',
    valueEnum: RequestResourceTypesBuilderEnum.medicationDispense,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'MedicationDispense',
    ),
  );

  /// MedicationKnowledge
  static RequestResourceTypesBuilder medicationKnowledge =
      RequestResourceTypesBuilder._(
    valueString: 'MedicationKnowledge',
    valueEnum: RequestResourceTypesBuilderEnum.medicationKnowledge,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'MedicationKnowledge',
    ),
  );

  /// MedicationRequest
  static RequestResourceTypesBuilder medicationRequest =
      RequestResourceTypesBuilder._(
    valueString: 'MedicationRequest',
    valueEnum: RequestResourceTypesBuilderEnum.medicationRequest,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'MedicationRequest',
    ),
  );

  /// MedicationStatement
  static RequestResourceTypesBuilder medicationStatement =
      RequestResourceTypesBuilder._(
    valueString: 'MedicationStatement',
    valueEnum: RequestResourceTypesBuilderEnum.medicationStatement,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'MedicationStatement',
    ),
  );

  /// MedicinalProductDefinition
  static RequestResourceTypesBuilder medicinalProductDefinition =
      RequestResourceTypesBuilder._(
    valueString: 'MedicinalProductDefinition',
    valueEnum: RequestResourceTypesBuilderEnum.medicinalProductDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'MedicinalProductDefinition',
    ),
  );

  /// MessageDefinition
  static RequestResourceTypesBuilder messageDefinition =
      RequestResourceTypesBuilder._(
    valueString: 'MessageDefinition',
    valueEnum: RequestResourceTypesBuilderEnum.messageDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'MessageDefinition',
    ),
  );

  /// MessageHeader
  static RequestResourceTypesBuilder messageHeader =
      RequestResourceTypesBuilder._(
    valueString: 'MessageHeader',
    valueEnum: RequestResourceTypesBuilderEnum.messageHeader,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'MessageHeader',
    ),
  );

  /// MetadataResource
  static RequestResourceTypesBuilder metadataResource =
      RequestResourceTypesBuilder._(
    valueString: 'MetadataResource',
    valueEnum: RequestResourceTypesBuilderEnum.metadataResource,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'MetadataResource',
    ),
  );

  /// MolecularSequence
  static RequestResourceTypesBuilder molecularSequence =
      RequestResourceTypesBuilder._(
    valueString: 'MolecularSequence',
    valueEnum: RequestResourceTypesBuilderEnum.molecularSequence,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'MolecularSequence',
    ),
  );

  /// NamingSystem
  static RequestResourceTypesBuilder namingSystem =
      RequestResourceTypesBuilder._(
    valueString: 'NamingSystem',
    valueEnum: RequestResourceTypesBuilderEnum.namingSystem,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'NamingSystem',
    ),
  );

  /// NutritionIntake
  static RequestResourceTypesBuilder nutritionIntake =
      RequestResourceTypesBuilder._(
    valueString: 'NutritionIntake',
    valueEnum: RequestResourceTypesBuilderEnum.nutritionIntake,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'NutritionIntake',
    ),
  );

  /// NutritionOrder
  static RequestResourceTypesBuilder nutritionOrder =
      RequestResourceTypesBuilder._(
    valueString: 'NutritionOrder',
    valueEnum: RequestResourceTypesBuilderEnum.nutritionOrder,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'NutritionOrder',
    ),
  );

  /// NutritionProduct
  static RequestResourceTypesBuilder nutritionProduct =
      RequestResourceTypesBuilder._(
    valueString: 'NutritionProduct',
    valueEnum: RequestResourceTypesBuilderEnum.nutritionProduct,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'NutritionProduct',
    ),
  );

  /// Observation
  static RequestResourceTypesBuilder observation =
      RequestResourceTypesBuilder._(
    valueString: 'Observation',
    valueEnum: RequestResourceTypesBuilderEnum.observation,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Observation',
    ),
  );

  /// ObservationDefinition
  static RequestResourceTypesBuilder observationDefinition =
      RequestResourceTypesBuilder._(
    valueString: 'ObservationDefinition',
    valueEnum: RequestResourceTypesBuilderEnum.observationDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'ObservationDefinition',
    ),
  );

  /// OperationDefinition
  static RequestResourceTypesBuilder operationDefinition =
      RequestResourceTypesBuilder._(
    valueString: 'OperationDefinition',
    valueEnum: RequestResourceTypesBuilderEnum.operationDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'OperationDefinition',
    ),
  );

  /// OperationOutcome
  static RequestResourceTypesBuilder operationOutcome =
      RequestResourceTypesBuilder._(
    valueString: 'OperationOutcome',
    valueEnum: RequestResourceTypesBuilderEnum.operationOutcome,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'OperationOutcome',
    ),
  );

  /// Organization
  static RequestResourceTypesBuilder organization =
      RequestResourceTypesBuilder._(
    valueString: 'Organization',
    valueEnum: RequestResourceTypesBuilderEnum.organization,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Organization',
    ),
  );

  /// OrganizationAffiliation
  static RequestResourceTypesBuilder organizationAffiliation =
      RequestResourceTypesBuilder._(
    valueString: 'OrganizationAffiliation',
    valueEnum: RequestResourceTypesBuilderEnum.organizationAffiliation,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'OrganizationAffiliation',
    ),
  );

  /// PackagedProductDefinition
  static RequestResourceTypesBuilder packagedProductDefinition =
      RequestResourceTypesBuilder._(
    valueString: 'PackagedProductDefinition',
    valueEnum: RequestResourceTypesBuilderEnum.packagedProductDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'PackagedProductDefinition',
    ),
  );

  /// Patient
  static RequestResourceTypesBuilder patient = RequestResourceTypesBuilder._(
    valueString: 'Patient',
    valueEnum: RequestResourceTypesBuilderEnum.patient,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Patient',
    ),
  );

  /// PaymentNotice
  static RequestResourceTypesBuilder paymentNotice =
      RequestResourceTypesBuilder._(
    valueString: 'PaymentNotice',
    valueEnum: RequestResourceTypesBuilderEnum.paymentNotice,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'PaymentNotice',
    ),
  );

  /// PaymentReconciliation
  static RequestResourceTypesBuilder paymentReconciliation =
      RequestResourceTypesBuilder._(
    valueString: 'PaymentReconciliation',
    valueEnum: RequestResourceTypesBuilderEnum.paymentReconciliation,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'PaymentReconciliation',
    ),
  );

  /// Permission
  static RequestResourceTypesBuilder permission = RequestResourceTypesBuilder._(
    valueString: 'Permission',
    valueEnum: RequestResourceTypesBuilderEnum.permission,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Permission',
    ),
  );

  /// Person
  static RequestResourceTypesBuilder person = RequestResourceTypesBuilder._(
    valueString: 'Person',
    valueEnum: RequestResourceTypesBuilderEnum.person,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Person',
    ),
  );

  /// PlanDefinition
  static RequestResourceTypesBuilder planDefinition =
      RequestResourceTypesBuilder._(
    valueString: 'PlanDefinition',
    valueEnum: RequestResourceTypesBuilderEnum.planDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'PlanDefinition',
    ),
  );

  /// Practitioner
  static RequestResourceTypesBuilder practitioner =
      RequestResourceTypesBuilder._(
    valueString: 'Practitioner',
    valueEnum: RequestResourceTypesBuilderEnum.practitioner,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Practitioner',
    ),
  );

  /// PractitionerRole
  static RequestResourceTypesBuilder practitionerRole =
      RequestResourceTypesBuilder._(
    valueString: 'PractitionerRole',
    valueEnum: RequestResourceTypesBuilderEnum.practitionerRole,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'PractitionerRole',
    ),
  );

  /// Procedure
  static RequestResourceTypesBuilder procedure = RequestResourceTypesBuilder._(
    valueString: 'Procedure',
    valueEnum: RequestResourceTypesBuilderEnum.procedure,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Procedure',
    ),
  );

  /// Provenance
  static RequestResourceTypesBuilder provenance = RequestResourceTypesBuilder._(
    valueString: 'Provenance',
    valueEnum: RequestResourceTypesBuilderEnum.provenance,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Provenance',
    ),
  );

  /// Questionnaire
  static RequestResourceTypesBuilder questionnaire =
      RequestResourceTypesBuilder._(
    valueString: 'Questionnaire',
    valueEnum: RequestResourceTypesBuilderEnum.questionnaire,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Questionnaire',
    ),
  );

  /// QuestionnaireResponse
  static RequestResourceTypesBuilder questionnaireResponse =
      RequestResourceTypesBuilder._(
    valueString: 'QuestionnaireResponse',
    valueEnum: RequestResourceTypesBuilderEnum.questionnaireResponse,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'QuestionnaireResponse',
    ),
  );

  /// RegulatedAuthorization
  static RequestResourceTypesBuilder regulatedAuthorization =
      RequestResourceTypesBuilder._(
    valueString: 'RegulatedAuthorization',
    valueEnum: RequestResourceTypesBuilderEnum.regulatedAuthorization,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'RegulatedAuthorization',
    ),
  );

  /// RelatedPerson
  static RequestResourceTypesBuilder relatedPerson =
      RequestResourceTypesBuilder._(
    valueString: 'RelatedPerson',
    valueEnum: RequestResourceTypesBuilderEnum.relatedPerson,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'RelatedPerson',
    ),
  );

  /// RequestOrchestration
  static RequestResourceTypesBuilder requestOrchestration =
      RequestResourceTypesBuilder._(
    valueString: 'RequestOrchestration',
    valueEnum: RequestResourceTypesBuilderEnum.requestOrchestration,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'RequestOrchestration',
    ),
  );

  /// Requirements
  static RequestResourceTypesBuilder requirements =
      RequestResourceTypesBuilder._(
    valueString: 'Requirements',
    valueEnum: RequestResourceTypesBuilderEnum.requirements,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Requirements',
    ),
  );

  /// ResearchStudy
  static RequestResourceTypesBuilder researchStudy =
      RequestResourceTypesBuilder._(
    valueString: 'ResearchStudy',
    valueEnum: RequestResourceTypesBuilderEnum.researchStudy,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'ResearchStudy',
    ),
  );

  /// ResearchSubject
  static RequestResourceTypesBuilder researchSubject =
      RequestResourceTypesBuilder._(
    valueString: 'ResearchSubject',
    valueEnum: RequestResourceTypesBuilderEnum.researchSubject,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'ResearchSubject',
    ),
  );

  /// RiskAssessment
  static RequestResourceTypesBuilder riskAssessment =
      RequestResourceTypesBuilder._(
    valueString: 'RiskAssessment',
    valueEnum: RequestResourceTypesBuilderEnum.riskAssessment,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'RiskAssessment',
    ),
  );

  /// Schedule
  static RequestResourceTypesBuilder schedule = RequestResourceTypesBuilder._(
    valueString: 'Schedule',
    valueEnum: RequestResourceTypesBuilderEnum.schedule,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Schedule',
    ),
  );

  /// SearchParameter
  static RequestResourceTypesBuilder searchParameter =
      RequestResourceTypesBuilder._(
    valueString: 'SearchParameter',
    valueEnum: RequestResourceTypesBuilderEnum.searchParameter,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'SearchParameter',
    ),
  );

  /// ServiceRequest
  static RequestResourceTypesBuilder serviceRequest =
      RequestResourceTypesBuilder._(
    valueString: 'ServiceRequest',
    valueEnum: RequestResourceTypesBuilderEnum.serviceRequest,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'ServiceRequest',
    ),
  );

  /// Slot
  static RequestResourceTypesBuilder slot = RequestResourceTypesBuilder._(
    valueString: 'Slot',
    valueEnum: RequestResourceTypesBuilderEnum.slot,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Slot',
    ),
  );

  /// Specimen
  static RequestResourceTypesBuilder specimen = RequestResourceTypesBuilder._(
    valueString: 'Specimen',
    valueEnum: RequestResourceTypesBuilderEnum.specimen,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Specimen',
    ),
  );

  /// SpecimenDefinition
  static RequestResourceTypesBuilder specimenDefinition =
      RequestResourceTypesBuilder._(
    valueString: 'SpecimenDefinition',
    valueEnum: RequestResourceTypesBuilderEnum.specimenDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'SpecimenDefinition',
    ),
  );

  /// StructureDefinition
  static RequestResourceTypesBuilder structureDefinition =
      RequestResourceTypesBuilder._(
    valueString: 'StructureDefinition',
    valueEnum: RequestResourceTypesBuilderEnum.structureDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'StructureDefinition',
    ),
  );

  /// StructureMap
  static RequestResourceTypesBuilder structureMap =
      RequestResourceTypesBuilder._(
    valueString: 'StructureMap',
    valueEnum: RequestResourceTypesBuilderEnum.structureMap,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'StructureMap',
    ),
  );

  /// Subscription
  static RequestResourceTypesBuilder subscription =
      RequestResourceTypesBuilder._(
    valueString: 'Subscription',
    valueEnum: RequestResourceTypesBuilderEnum.subscription,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Subscription',
    ),
  );

  /// SubscriptionStatus
  static RequestResourceTypesBuilder subscriptionStatus =
      RequestResourceTypesBuilder._(
    valueString: 'SubscriptionStatus',
    valueEnum: RequestResourceTypesBuilderEnum.subscriptionStatus,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'SubscriptionStatus',
    ),
  );

  /// SubscriptionTopic
  static RequestResourceTypesBuilder subscriptionTopic =
      RequestResourceTypesBuilder._(
    valueString: 'SubscriptionTopic',
    valueEnum: RequestResourceTypesBuilderEnum.subscriptionTopic,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'SubscriptionTopic',
    ),
  );

  /// Substance
  static RequestResourceTypesBuilder substance = RequestResourceTypesBuilder._(
    valueString: 'Substance',
    valueEnum: RequestResourceTypesBuilderEnum.substance,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Substance',
    ),
  );

  /// SubstanceDefinition
  static RequestResourceTypesBuilder substanceDefinition =
      RequestResourceTypesBuilder._(
    valueString: 'SubstanceDefinition',
    valueEnum: RequestResourceTypesBuilderEnum.substanceDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'SubstanceDefinition',
    ),
  );

  /// SubstanceNucleicAcid
  static RequestResourceTypesBuilder substanceNucleicAcid =
      RequestResourceTypesBuilder._(
    valueString: 'SubstanceNucleicAcid',
    valueEnum: RequestResourceTypesBuilderEnum.substanceNucleicAcid,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'SubstanceNucleicAcid',
    ),
  );

  /// SubstancePolymer
  static RequestResourceTypesBuilder substancePolymer =
      RequestResourceTypesBuilder._(
    valueString: 'SubstancePolymer',
    valueEnum: RequestResourceTypesBuilderEnum.substancePolymer,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'SubstancePolymer',
    ),
  );

  /// SubstanceProtein
  static RequestResourceTypesBuilder substanceProtein =
      RequestResourceTypesBuilder._(
    valueString: 'SubstanceProtein',
    valueEnum: RequestResourceTypesBuilderEnum.substanceProtein,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'SubstanceProtein',
    ),
  );

  /// SubstanceReferenceInformation
  static RequestResourceTypesBuilder substanceReferenceInformation =
      RequestResourceTypesBuilder._(
    valueString: 'SubstanceReferenceInformation',
    valueEnum: RequestResourceTypesBuilderEnum.substanceReferenceInformation,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'SubstanceReferenceInformation',
    ),
  );

  /// SubstanceSourceMaterial
  static RequestResourceTypesBuilder substanceSourceMaterial =
      RequestResourceTypesBuilder._(
    valueString: 'SubstanceSourceMaterial',
    valueEnum: RequestResourceTypesBuilderEnum.substanceSourceMaterial,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'SubstanceSourceMaterial',
    ),
  );

  /// SupplyDelivery
  static RequestResourceTypesBuilder supplyDelivery =
      RequestResourceTypesBuilder._(
    valueString: 'SupplyDelivery',
    valueEnum: RequestResourceTypesBuilderEnum.supplyDelivery,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'SupplyDelivery',
    ),
  );

  /// SupplyRequest
  static RequestResourceTypesBuilder supplyRequest =
      RequestResourceTypesBuilder._(
    valueString: 'SupplyRequest',
    valueEnum: RequestResourceTypesBuilderEnum.supplyRequest,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'SupplyRequest',
    ),
  );

  /// Task
  static RequestResourceTypesBuilder task = RequestResourceTypesBuilder._(
    valueString: 'Task',
    valueEnum: RequestResourceTypesBuilderEnum.task,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Task',
    ),
  );

  /// TerminologyCapabilities
  static RequestResourceTypesBuilder terminologyCapabilities =
      RequestResourceTypesBuilder._(
    valueString: 'TerminologyCapabilities',
    valueEnum: RequestResourceTypesBuilderEnum.terminologyCapabilities,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'TerminologyCapabilities',
    ),
  );

  /// TestPlan
  static RequestResourceTypesBuilder testPlan = RequestResourceTypesBuilder._(
    valueString: 'TestPlan',
    valueEnum: RequestResourceTypesBuilderEnum.testPlan,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'TestPlan',
    ),
  );

  /// TestReport
  static RequestResourceTypesBuilder testReport = RequestResourceTypesBuilder._(
    valueString: 'TestReport',
    valueEnum: RequestResourceTypesBuilderEnum.testReport,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'TestReport',
    ),
  );

  /// TestScript
  static RequestResourceTypesBuilder testScript = RequestResourceTypesBuilder._(
    valueString: 'TestScript',
    valueEnum: RequestResourceTypesBuilderEnum.testScript,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'TestScript',
    ),
  );

  /// Transport
  static RequestResourceTypesBuilder transport = RequestResourceTypesBuilder._(
    valueString: 'Transport',
    valueEnum: RequestResourceTypesBuilderEnum.transport,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Transport',
    ),
  );

  /// ValueSet
  static RequestResourceTypesBuilder valueSet = RequestResourceTypesBuilder._(
    valueString: 'ValueSet',
    valueEnum: RequestResourceTypesBuilderEnum.valueSet,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'ValueSet',
    ),
  );

  /// VerificationResult
  static RequestResourceTypesBuilder verificationResult =
      RequestResourceTypesBuilder._(
    valueString: 'VerificationResult',
    valueEnum: RequestResourceTypesBuilderEnum.verificationResult,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'VerificationResult',
    ),
  );

  /// VisionPrescription
  static RequestResourceTypesBuilder visionPrescription =
      RequestResourceTypesBuilder._(
    valueString: 'VisionPrescription',
    valueEnum: RequestResourceTypesBuilderEnum.visionPrescription,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'VisionPrescription',
    ),
  );

  /// Parameters
  static RequestResourceTypesBuilder parameters = RequestResourceTypesBuilder._(
    valueString: 'Parameters',
    valueEnum: RequestResourceTypesBuilderEnum.parameters,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Parameters',
    ),
  );

  /// For instances where an Element is present but not value
  static RequestResourceTypesBuilder elementOnly =
      RequestResourceTypesBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<RequestResourceTypesBuilder> values = [
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
  RequestResourceTypesBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return RequestResourceTypesBuilder._(
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
