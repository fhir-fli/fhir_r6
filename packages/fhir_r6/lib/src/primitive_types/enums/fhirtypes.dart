// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for FHIRTypes
enum FHIRTypesEnum {
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
      case FHIRTypesEnum.base:
        return 'Base';
      case FHIRTypesEnum.element_:
        return 'Element';
      case FHIRTypesEnum.backboneElement:
        return 'BackboneElement';
      case FHIRTypesEnum.dataType:
        return 'DataType';
      case FHIRTypesEnum.address:
        return 'Address';
      case FHIRTypesEnum.annotation:
        return 'Annotation';
      case FHIRTypesEnum.attachment:
        return 'Attachment';
      case FHIRTypesEnum.availability:
        return 'Availability';
      case FHIRTypesEnum.backboneType:
        return 'BackboneType';
      case FHIRTypesEnum.dosage:
        return 'Dosage';
      case FHIRTypesEnum.elementDefinition:
        return 'ElementDefinition';
      case FHIRTypesEnum.marketingStatus:
        return 'MarketingStatus';
      case FHIRTypesEnum.productShelfLife:
        return 'ProductShelfLife';
      case FHIRTypesEnum.timing:
        return 'Timing';
      case FHIRTypesEnum.codeableConcept:
        return 'CodeableConcept';
      case FHIRTypesEnum.codeableReference:
        return 'CodeableReference';
      case FHIRTypesEnum.coding:
        return 'Coding';
      case FHIRTypesEnum.contactDetail:
        return 'ContactDetail';
      case FHIRTypesEnum.contactPoint:
        return 'ContactPoint';
      case FHIRTypesEnum.contributor:
        return 'Contributor';
      case FHIRTypesEnum.dataRequirement:
        return 'DataRequirement';
      case FHIRTypesEnum.expression:
        return 'Expression';
      case FHIRTypesEnum.extendedContactDetail:
        return 'ExtendedContactDetail';
      case FHIRTypesEnum.extension:
        return 'Extension';
      case FHIRTypesEnum.humanName:
        return 'HumanName';
      case FHIRTypesEnum.identifier:
        return 'Identifier';
      case FHIRTypesEnum.meta:
        return 'Meta';
      case FHIRTypesEnum.monetaryComponent:
        return 'MonetaryComponent';
      case FHIRTypesEnum.money:
        return 'Money';
      case FHIRTypesEnum.narrative:
        return 'Narrative';
      case FHIRTypesEnum.parameterDefinition:
        return 'ParameterDefinition';
      case FHIRTypesEnum.period:
        return 'Period';
      case FHIRTypesEnum.primitiveType:
        return 'PrimitiveType';
      case FHIRTypesEnum.base64Binary:
        return 'base64Binary';
      case FHIRTypesEnum.boolean:
        return 'boolean';
      case FHIRTypesEnum.date:
        return 'date';
      case FHIRTypesEnum.dateTime:
        return 'dateTime';
      case FHIRTypesEnum.decimal:
        return 'decimal';
      case FHIRTypesEnum.instant:
        return 'instant';
      case FHIRTypesEnum.integer:
        return 'integer';
      case FHIRTypesEnum.positiveInt:
        return 'positiveInt';
      case FHIRTypesEnum.unsignedInt:
        return 'unsignedInt';
      case FHIRTypesEnum.integer64:
        return 'integer64';
      case FHIRTypesEnum.string:
        return 'string';
      case FHIRTypesEnum.code:
        return 'code';
      case FHIRTypesEnum.id_:
        return 'id';
      case FHIRTypesEnum.markdown:
        return 'markdown';
      case FHIRTypesEnum.time:
        return 'time';
      case FHIRTypesEnum.uri:
        return 'uri';
      case FHIRTypesEnum.canonical:
        return 'canonical';
      case FHIRTypesEnum.oid:
        return 'oid';
      case FHIRTypesEnum.url:
        return 'url';
      case FHIRTypesEnum.uuid:
        return 'uuid';
      case FHIRTypesEnum.quantity:
        return 'Quantity';
      case FHIRTypesEnum.age:
        return 'Age';
      case FHIRTypesEnum.count:
        return 'Count';
      case FHIRTypesEnum.distance:
        return 'Distance';
      case FHIRTypesEnum.duration:
        return 'Duration';
      case FHIRTypesEnum.range:
        return 'Range';
      case FHIRTypesEnum.ratio:
        return 'Ratio';
      case FHIRTypesEnum.ratioRange:
        return 'RatioRange';
      case FHIRTypesEnum.reference:
        return 'Reference';
      case FHIRTypesEnum.relatedArtifact:
        return 'RelatedArtifact';
      case FHIRTypesEnum.sampledData:
        return 'SampledData';
      case FHIRTypesEnum.signature:
        return 'Signature';
      case FHIRTypesEnum.triggerDefinition:
        return 'TriggerDefinition';
      case FHIRTypesEnum.usageContext:
        return 'UsageContext';
      case FHIRTypesEnum.virtualServiceDetail:
        return 'VirtualServiceDetail';
      case FHIRTypesEnum.xhtml:
        return 'xhtml';
      case FHIRTypesEnum.resource:
        return 'Resource';
      case FHIRTypesEnum.binary:
        return 'Binary';
      case FHIRTypesEnum.bundle:
        return 'Bundle';
      case FHIRTypesEnum.domainResource:
        return 'DomainResource';
      case FHIRTypesEnum.account:
        return 'Account';
      case FHIRTypesEnum.activityDefinition:
        return 'ActivityDefinition';
      case FHIRTypesEnum.actorDefinition:
        return 'ActorDefinition';
      case FHIRTypesEnum.administrableProductDefinition:
        return 'AdministrableProductDefinition';
      case FHIRTypesEnum.adverseEvent:
        return 'AdverseEvent';
      case FHIRTypesEnum.allergyIntolerance:
        return 'AllergyIntolerance';
      case FHIRTypesEnum.appointment:
        return 'Appointment';
      case FHIRTypesEnum.appointmentResponse:
        return 'AppointmentResponse';
      case FHIRTypesEnum.artifactAssessment:
        return 'ArtifactAssessment';
      case FHIRTypesEnum.auditEvent:
        return 'AuditEvent';
      case FHIRTypesEnum.basic:
        return 'Basic';
      case FHIRTypesEnum.biologicallyDerivedProduct:
        return 'BiologicallyDerivedProduct';
      case FHIRTypesEnum.biologicallyDerivedProductDispense:
        return 'BiologicallyDerivedProductDispense';
      case FHIRTypesEnum.bodyStructure:
        return 'BodyStructure';
      case FHIRTypesEnum.canonicalResource:
        return 'CanonicalResource';
      case FHIRTypesEnum.capabilityStatement:
        return 'CapabilityStatement';
      case FHIRTypesEnum.carePlan:
        return 'CarePlan';
      case FHIRTypesEnum.careTeam:
        return 'CareTeam';
      case FHIRTypesEnum.chargeItem:
        return 'ChargeItem';
      case FHIRTypesEnum.chargeItemDefinition:
        return 'ChargeItemDefinition';
      case FHIRTypesEnum.citation:
        return 'Citation';
      case FHIRTypesEnum.claim:
        return 'Claim';
      case FHIRTypesEnum.claimResponse:
        return 'ClaimResponse';
      case FHIRTypesEnum.clinicalImpression:
        return 'ClinicalImpression';
      case FHIRTypesEnum.clinicalUseDefinition:
        return 'ClinicalUseDefinition';
      case FHIRTypesEnum.codeSystem:
        return 'CodeSystem';
      case FHIRTypesEnum.communication:
        return 'Communication';
      case FHIRTypesEnum.communicationRequest:
        return 'CommunicationRequest';
      case FHIRTypesEnum.compartmentDefinition:
        return 'CompartmentDefinition';
      case FHIRTypesEnum.composition:
        return 'Composition';
      case FHIRTypesEnum.conceptMap:
        return 'ConceptMap';
      case FHIRTypesEnum.condition:
        return 'Condition';
      case FHIRTypesEnum.conditionDefinition:
        return 'ConditionDefinition';
      case FHIRTypesEnum.consent:
        return 'Consent';
      case FHIRTypesEnum.contract:
        return 'Contract';
      case FHIRTypesEnum.coverage:
        return 'Coverage';
      case FHIRTypesEnum.coverageEligibilityRequest:
        return 'CoverageEligibilityRequest';
      case FHIRTypesEnum.coverageEligibilityResponse:
        return 'CoverageEligibilityResponse';
      case FHIRTypesEnum.detectedIssue:
        return 'DetectedIssue';
      case FHIRTypesEnum.device:
        return 'Device';
      case FHIRTypesEnum.deviceAssociation:
        return 'DeviceAssociation';
      case FHIRTypesEnum.deviceDefinition:
        return 'DeviceDefinition';
      case FHIRTypesEnum.deviceDispense:
        return 'DeviceDispense';
      case FHIRTypesEnum.deviceMetric:
        return 'DeviceMetric';
      case FHIRTypesEnum.deviceRequest:
        return 'DeviceRequest';
      case FHIRTypesEnum.deviceUsage:
        return 'DeviceUsage';
      case FHIRTypesEnum.diagnosticReport:
        return 'DiagnosticReport';
      case FHIRTypesEnum.documentReference:
        return 'DocumentReference';
      case FHIRTypesEnum.encounter:
        return 'Encounter';
      case FHIRTypesEnum.encounterHistory:
        return 'EncounterHistory';
      case FHIRTypesEnum.endpoint:
        return 'Endpoint';
      case FHIRTypesEnum.enrollmentRequest:
        return 'EnrollmentRequest';
      case FHIRTypesEnum.enrollmentResponse:
        return 'EnrollmentResponse';
      case FHIRTypesEnum.episodeOfCare:
        return 'EpisodeOfCare';
      case FHIRTypesEnum.eventDefinition:
        return 'EventDefinition';
      case FHIRTypesEnum.evidence:
        return 'Evidence';
      case FHIRTypesEnum.evidenceReport:
        return 'EvidenceReport';
      case FHIRTypesEnum.evidenceVariable:
        return 'EvidenceVariable';
      case FHIRTypesEnum.exampleScenario:
        return 'ExampleScenario';
      case FHIRTypesEnum.explanationOfBenefit:
        return 'ExplanationOfBenefit';
      case FHIRTypesEnum.familyMemberHistory:
        return 'FamilyMemberHistory';
      case FHIRTypesEnum.flag:
        return 'Flag';
      case FHIRTypesEnum.formularyItem:
        return 'FormularyItem';
      case FHIRTypesEnum.genomicStudy:
        return 'GenomicStudy';
      case FHIRTypesEnum.goal:
        return 'Goal';
      case FHIRTypesEnum.graphDefinition:
        return 'GraphDefinition';
      case FHIRTypesEnum.group:
        return 'Group';
      case FHIRTypesEnum.guidanceResponse:
        return 'GuidanceResponse';
      case FHIRTypesEnum.healthcareService:
        return 'HealthcareService';
      case FHIRTypesEnum.imagingSelection:
        return 'ImagingSelection';
      case FHIRTypesEnum.imagingStudy:
        return 'ImagingStudy';
      case FHIRTypesEnum.immunization:
        return 'Immunization';
      case FHIRTypesEnum.immunizationEvaluation:
        return 'ImmunizationEvaluation';
      case FHIRTypesEnum.immunizationRecommendation:
        return 'ImmunizationRecommendation';
      case FHIRTypesEnum.implementationGuide:
        return 'ImplementationGuide';
      case FHIRTypesEnum.ingredient:
        return 'Ingredient';
      case FHIRTypesEnum.insurancePlan:
        return 'InsurancePlan';
      case FHIRTypesEnum.inventoryItem:
        return 'InventoryItem';
      case FHIRTypesEnum.inventoryReport:
        return 'InventoryReport';
      case FHIRTypesEnum.invoice:
        return 'Invoice';
      case FHIRTypesEnum.library:
        return 'Library';
      case FHIRTypesEnum.linkage:
        return 'Linkage';
      case FHIRTypesEnum.list_:
        return 'List';
      case FHIRTypesEnum.location:
        return 'Location';
      case FHIRTypesEnum.manufacturedItemDefinition:
        return 'ManufacturedItemDefinition';
      case FHIRTypesEnum.measure:
        return 'Measure';
      case FHIRTypesEnum.measureReport:
        return 'MeasureReport';
      case FHIRTypesEnum.medication:
        return 'Medication';
      case FHIRTypesEnum.medicationAdministration:
        return 'MedicationAdministration';
      case FHIRTypesEnum.medicationDispense:
        return 'MedicationDispense';
      case FHIRTypesEnum.medicationKnowledge:
        return 'MedicationKnowledge';
      case FHIRTypesEnum.medicationRequest:
        return 'MedicationRequest';
      case FHIRTypesEnum.medicationStatement:
        return 'MedicationStatement';
      case FHIRTypesEnum.medicinalProductDefinition:
        return 'MedicinalProductDefinition';
      case FHIRTypesEnum.messageDefinition:
        return 'MessageDefinition';
      case FHIRTypesEnum.messageHeader:
        return 'MessageHeader';
      case FHIRTypesEnum.metadataResource:
        return 'MetadataResource';
      case FHIRTypesEnum.molecularSequence:
        return 'MolecularSequence';
      case FHIRTypesEnum.namingSystem:
        return 'NamingSystem';
      case FHIRTypesEnum.nutritionIntake:
        return 'NutritionIntake';
      case FHIRTypesEnum.nutritionOrder:
        return 'NutritionOrder';
      case FHIRTypesEnum.nutritionProduct:
        return 'NutritionProduct';
      case FHIRTypesEnum.observation:
        return 'Observation';
      case FHIRTypesEnum.observationDefinition:
        return 'ObservationDefinition';
      case FHIRTypesEnum.operationDefinition:
        return 'OperationDefinition';
      case FHIRTypesEnum.operationOutcome:
        return 'OperationOutcome';
      case FHIRTypesEnum.organization:
        return 'Organization';
      case FHIRTypesEnum.organizationAffiliation:
        return 'OrganizationAffiliation';
      case FHIRTypesEnum.packagedProductDefinition:
        return 'PackagedProductDefinition';
      case FHIRTypesEnum.patient:
        return 'Patient';
      case FHIRTypesEnum.paymentNotice:
        return 'PaymentNotice';
      case FHIRTypesEnum.paymentReconciliation:
        return 'PaymentReconciliation';
      case FHIRTypesEnum.permission:
        return 'Permission';
      case FHIRTypesEnum.person:
        return 'Person';
      case FHIRTypesEnum.planDefinition:
        return 'PlanDefinition';
      case FHIRTypesEnum.practitioner:
        return 'Practitioner';
      case FHIRTypesEnum.practitionerRole:
        return 'PractitionerRole';
      case FHIRTypesEnum.procedure:
        return 'Procedure';
      case FHIRTypesEnum.provenance:
        return 'Provenance';
      case FHIRTypesEnum.questionnaire:
        return 'Questionnaire';
      case FHIRTypesEnum.questionnaireResponse:
        return 'QuestionnaireResponse';
      case FHIRTypesEnum.regulatedAuthorization:
        return 'RegulatedAuthorization';
      case FHIRTypesEnum.relatedPerson:
        return 'RelatedPerson';
      case FHIRTypesEnum.requestOrchestration:
        return 'RequestOrchestration';
      case FHIRTypesEnum.requirements:
        return 'Requirements';
      case FHIRTypesEnum.researchStudy:
        return 'ResearchStudy';
      case FHIRTypesEnum.researchSubject:
        return 'ResearchSubject';
      case FHIRTypesEnum.riskAssessment:
        return 'RiskAssessment';
      case FHIRTypesEnum.schedule:
        return 'Schedule';
      case FHIRTypesEnum.searchParameter:
        return 'SearchParameter';
      case FHIRTypesEnum.serviceRequest:
        return 'ServiceRequest';
      case FHIRTypesEnum.slot:
        return 'Slot';
      case FHIRTypesEnum.specimen:
        return 'Specimen';
      case FHIRTypesEnum.specimenDefinition:
        return 'SpecimenDefinition';
      case FHIRTypesEnum.structureDefinition:
        return 'StructureDefinition';
      case FHIRTypesEnum.structureMap:
        return 'StructureMap';
      case FHIRTypesEnum.subscription:
        return 'Subscription';
      case FHIRTypesEnum.subscriptionStatus:
        return 'SubscriptionStatus';
      case FHIRTypesEnum.subscriptionTopic:
        return 'SubscriptionTopic';
      case FHIRTypesEnum.substance:
        return 'Substance';
      case FHIRTypesEnum.substanceDefinition:
        return 'SubstanceDefinition';
      case FHIRTypesEnum.substanceNucleicAcid:
        return 'SubstanceNucleicAcid';
      case FHIRTypesEnum.substancePolymer:
        return 'SubstancePolymer';
      case FHIRTypesEnum.substanceProtein:
        return 'SubstanceProtein';
      case FHIRTypesEnum.substanceReferenceInformation:
        return 'SubstanceReferenceInformation';
      case FHIRTypesEnum.substanceSourceMaterial:
        return 'SubstanceSourceMaterial';
      case FHIRTypesEnum.supplyDelivery:
        return 'SupplyDelivery';
      case FHIRTypesEnum.supplyRequest:
        return 'SupplyRequest';
      case FHIRTypesEnum.task:
        return 'Task';
      case FHIRTypesEnum.terminologyCapabilities:
        return 'TerminologyCapabilities';
      case FHIRTypesEnum.testPlan:
        return 'TestPlan';
      case FHIRTypesEnum.testReport:
        return 'TestReport';
      case FHIRTypesEnum.testScript:
        return 'TestScript';
      case FHIRTypesEnum.transport:
        return 'Transport';
      case FHIRTypesEnum.valueSet:
        return 'ValueSet';
      case FHIRTypesEnum.verificationResult:
        return 'VerificationResult';
      case FHIRTypesEnum.visionPrescription:
        return 'VisionPrescription';
      case FHIRTypesEnum.parameters:
        return 'Parameters';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static FHIRTypesEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return FHIRTypesEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static FHIRTypesEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'Base':
        return FHIRTypesEnum.base;
      case 'Element':
        return FHIRTypesEnum.element_;
      case 'BackboneElement':
        return FHIRTypesEnum.backboneElement;
      case 'DataType':
        return FHIRTypesEnum.dataType;
      case 'Address':
        return FHIRTypesEnum.address;
      case 'Annotation':
        return FHIRTypesEnum.annotation;
      case 'Attachment':
        return FHIRTypesEnum.attachment;
      case 'Availability':
        return FHIRTypesEnum.availability;
      case 'BackboneType':
        return FHIRTypesEnum.backboneType;
      case 'Dosage':
        return FHIRTypesEnum.dosage;
      case 'ElementDefinition':
        return FHIRTypesEnum.elementDefinition;
      case 'MarketingStatus':
        return FHIRTypesEnum.marketingStatus;
      case 'ProductShelfLife':
        return FHIRTypesEnum.productShelfLife;
      case 'Timing':
        return FHIRTypesEnum.timing;
      case 'CodeableConcept':
        return FHIRTypesEnum.codeableConcept;
      case 'CodeableReference':
        return FHIRTypesEnum.codeableReference;
      case 'Coding':
        return FHIRTypesEnum.coding;
      case 'ContactDetail':
        return FHIRTypesEnum.contactDetail;
      case 'ContactPoint':
        return FHIRTypesEnum.contactPoint;
      case 'Contributor':
        return FHIRTypesEnum.contributor;
      case 'DataRequirement':
        return FHIRTypesEnum.dataRequirement;
      case 'Expression':
        return FHIRTypesEnum.expression;
      case 'ExtendedContactDetail':
        return FHIRTypesEnum.extendedContactDetail;
      case 'Extension':
        return FHIRTypesEnum.extension;
      case 'HumanName':
        return FHIRTypesEnum.humanName;
      case 'Identifier':
        return FHIRTypesEnum.identifier;
      case 'Meta':
        return FHIRTypesEnum.meta;
      case 'MonetaryComponent':
        return FHIRTypesEnum.monetaryComponent;
      case 'Money':
        return FHIRTypesEnum.money;
      case 'Narrative':
        return FHIRTypesEnum.narrative;
      case 'ParameterDefinition':
        return FHIRTypesEnum.parameterDefinition;
      case 'Period':
        return FHIRTypesEnum.period;
      case 'PrimitiveType':
        return FHIRTypesEnum.primitiveType;
      case 'base64Binary':
        return FHIRTypesEnum.base64Binary;
      case 'boolean':
        return FHIRTypesEnum.boolean;
      case 'date':
        return FHIRTypesEnum.date;
      case 'dateTime':
        return FHIRTypesEnum.dateTime;
      case 'decimal':
        return FHIRTypesEnum.decimal;
      case 'instant':
        return FHIRTypesEnum.instant;
      case 'integer':
        return FHIRTypesEnum.integer;
      case 'positiveInt':
        return FHIRTypesEnum.positiveInt;
      case 'unsignedInt':
        return FHIRTypesEnum.unsignedInt;
      case 'integer64':
        return FHIRTypesEnum.integer64;
      case 'string':
        return FHIRTypesEnum.string;
      case 'code':
        return FHIRTypesEnum.code;
      case 'id':
        return FHIRTypesEnum.id_;
      case 'markdown':
        return FHIRTypesEnum.markdown;
      case 'time':
        return FHIRTypesEnum.time;
      case 'uri':
        return FHIRTypesEnum.uri;
      case 'canonical':
        return FHIRTypesEnum.canonical;
      case 'oid':
        return FHIRTypesEnum.oid;
      case 'url':
        return FHIRTypesEnum.url;
      case 'uuid':
        return FHIRTypesEnum.uuid;
      case 'Quantity':
        return FHIRTypesEnum.quantity;
      case 'Age':
        return FHIRTypesEnum.age;
      case 'Count':
        return FHIRTypesEnum.count;
      case 'Distance':
        return FHIRTypesEnum.distance;
      case 'Duration':
        return FHIRTypesEnum.duration;
      case 'Range':
        return FHIRTypesEnum.range;
      case 'Ratio':
        return FHIRTypesEnum.ratio;
      case 'RatioRange':
        return FHIRTypesEnum.ratioRange;
      case 'Reference':
        return FHIRTypesEnum.reference;
      case 'RelatedArtifact':
        return FHIRTypesEnum.relatedArtifact;
      case 'SampledData':
        return FHIRTypesEnum.sampledData;
      case 'Signature':
        return FHIRTypesEnum.signature;
      case 'TriggerDefinition':
        return FHIRTypesEnum.triggerDefinition;
      case 'UsageContext':
        return FHIRTypesEnum.usageContext;
      case 'VirtualServiceDetail':
        return FHIRTypesEnum.virtualServiceDetail;
      case 'xhtml':
        return FHIRTypesEnum.xhtml;
      case 'Resource':
        return FHIRTypesEnum.resource;
      case 'Binary':
        return FHIRTypesEnum.binary;
      case 'Bundle':
        return FHIRTypesEnum.bundle;
      case 'DomainResource':
        return FHIRTypesEnum.domainResource;
      case 'Account':
        return FHIRTypesEnum.account;
      case 'ActivityDefinition':
        return FHIRTypesEnum.activityDefinition;
      case 'ActorDefinition':
        return FHIRTypesEnum.actorDefinition;
      case 'AdministrableProductDefinition':
        return FHIRTypesEnum.administrableProductDefinition;
      case 'AdverseEvent':
        return FHIRTypesEnum.adverseEvent;
      case 'AllergyIntolerance':
        return FHIRTypesEnum.allergyIntolerance;
      case 'Appointment':
        return FHIRTypesEnum.appointment;
      case 'AppointmentResponse':
        return FHIRTypesEnum.appointmentResponse;
      case 'ArtifactAssessment':
        return FHIRTypesEnum.artifactAssessment;
      case 'AuditEvent':
        return FHIRTypesEnum.auditEvent;
      case 'Basic':
        return FHIRTypesEnum.basic;
      case 'BiologicallyDerivedProduct':
        return FHIRTypesEnum.biologicallyDerivedProduct;
      case 'BiologicallyDerivedProductDispense':
        return FHIRTypesEnum.biologicallyDerivedProductDispense;
      case 'BodyStructure':
        return FHIRTypesEnum.bodyStructure;
      case 'CanonicalResource':
        return FHIRTypesEnum.canonicalResource;
      case 'CapabilityStatement':
        return FHIRTypesEnum.capabilityStatement;
      case 'CarePlan':
        return FHIRTypesEnum.carePlan;
      case 'CareTeam':
        return FHIRTypesEnum.careTeam;
      case 'ChargeItem':
        return FHIRTypesEnum.chargeItem;
      case 'ChargeItemDefinition':
        return FHIRTypesEnum.chargeItemDefinition;
      case 'Citation':
        return FHIRTypesEnum.citation;
      case 'Claim':
        return FHIRTypesEnum.claim;
      case 'ClaimResponse':
        return FHIRTypesEnum.claimResponse;
      case 'ClinicalImpression':
        return FHIRTypesEnum.clinicalImpression;
      case 'ClinicalUseDefinition':
        return FHIRTypesEnum.clinicalUseDefinition;
      case 'CodeSystem':
        return FHIRTypesEnum.codeSystem;
      case 'Communication':
        return FHIRTypesEnum.communication;
      case 'CommunicationRequest':
        return FHIRTypesEnum.communicationRequest;
      case 'CompartmentDefinition':
        return FHIRTypesEnum.compartmentDefinition;
      case 'Composition':
        return FHIRTypesEnum.composition;
      case 'ConceptMap':
        return FHIRTypesEnum.conceptMap;
      case 'Condition':
        return FHIRTypesEnum.condition;
      case 'ConditionDefinition':
        return FHIRTypesEnum.conditionDefinition;
      case 'Consent':
        return FHIRTypesEnum.consent;
      case 'Contract':
        return FHIRTypesEnum.contract;
      case 'Coverage':
        return FHIRTypesEnum.coverage;
      case 'CoverageEligibilityRequest':
        return FHIRTypesEnum.coverageEligibilityRequest;
      case 'CoverageEligibilityResponse':
        return FHIRTypesEnum.coverageEligibilityResponse;
      case 'DetectedIssue':
        return FHIRTypesEnum.detectedIssue;
      case 'Device':
        return FHIRTypesEnum.device;
      case 'DeviceAssociation':
        return FHIRTypesEnum.deviceAssociation;
      case 'DeviceDefinition':
        return FHIRTypesEnum.deviceDefinition;
      case 'DeviceDispense':
        return FHIRTypesEnum.deviceDispense;
      case 'DeviceMetric':
        return FHIRTypesEnum.deviceMetric;
      case 'DeviceRequest':
        return FHIRTypesEnum.deviceRequest;
      case 'DeviceUsage':
        return FHIRTypesEnum.deviceUsage;
      case 'DiagnosticReport':
        return FHIRTypesEnum.diagnosticReport;
      case 'DocumentReference':
        return FHIRTypesEnum.documentReference;
      case 'Encounter':
        return FHIRTypesEnum.encounter;
      case 'EncounterHistory':
        return FHIRTypesEnum.encounterHistory;
      case 'Endpoint':
        return FHIRTypesEnum.endpoint;
      case 'EnrollmentRequest':
        return FHIRTypesEnum.enrollmentRequest;
      case 'EnrollmentResponse':
        return FHIRTypesEnum.enrollmentResponse;
      case 'EpisodeOfCare':
        return FHIRTypesEnum.episodeOfCare;
      case 'EventDefinition':
        return FHIRTypesEnum.eventDefinition;
      case 'Evidence':
        return FHIRTypesEnum.evidence;
      case 'EvidenceReport':
        return FHIRTypesEnum.evidenceReport;
      case 'EvidenceVariable':
        return FHIRTypesEnum.evidenceVariable;
      case 'ExampleScenario':
        return FHIRTypesEnum.exampleScenario;
      case 'ExplanationOfBenefit':
        return FHIRTypesEnum.explanationOfBenefit;
      case 'FamilyMemberHistory':
        return FHIRTypesEnum.familyMemberHistory;
      case 'Flag':
        return FHIRTypesEnum.flag;
      case 'FormularyItem':
        return FHIRTypesEnum.formularyItem;
      case 'GenomicStudy':
        return FHIRTypesEnum.genomicStudy;
      case 'Goal':
        return FHIRTypesEnum.goal;
      case 'GraphDefinition':
        return FHIRTypesEnum.graphDefinition;
      case 'Group':
        return FHIRTypesEnum.group;
      case 'GuidanceResponse':
        return FHIRTypesEnum.guidanceResponse;
      case 'HealthcareService':
        return FHIRTypesEnum.healthcareService;
      case 'ImagingSelection':
        return FHIRTypesEnum.imagingSelection;
      case 'ImagingStudy':
        return FHIRTypesEnum.imagingStudy;
      case 'Immunization':
        return FHIRTypesEnum.immunization;
      case 'ImmunizationEvaluation':
        return FHIRTypesEnum.immunizationEvaluation;
      case 'ImmunizationRecommendation':
        return FHIRTypesEnum.immunizationRecommendation;
      case 'ImplementationGuide':
        return FHIRTypesEnum.implementationGuide;
      case 'Ingredient':
        return FHIRTypesEnum.ingredient;
      case 'InsurancePlan':
        return FHIRTypesEnum.insurancePlan;
      case 'InventoryItem':
        return FHIRTypesEnum.inventoryItem;
      case 'InventoryReport':
        return FHIRTypesEnum.inventoryReport;
      case 'Invoice':
        return FHIRTypesEnum.invoice;
      case 'Library':
        return FHIRTypesEnum.library;
      case 'Linkage':
        return FHIRTypesEnum.linkage;
      case 'List':
        return FHIRTypesEnum.list_;
      case 'Location':
        return FHIRTypesEnum.location;
      case 'ManufacturedItemDefinition':
        return FHIRTypesEnum.manufacturedItemDefinition;
      case 'Measure':
        return FHIRTypesEnum.measure;
      case 'MeasureReport':
        return FHIRTypesEnum.measureReport;
      case 'Medication':
        return FHIRTypesEnum.medication;
      case 'MedicationAdministration':
        return FHIRTypesEnum.medicationAdministration;
      case 'MedicationDispense':
        return FHIRTypesEnum.medicationDispense;
      case 'MedicationKnowledge':
        return FHIRTypesEnum.medicationKnowledge;
      case 'MedicationRequest':
        return FHIRTypesEnum.medicationRequest;
      case 'MedicationStatement':
        return FHIRTypesEnum.medicationStatement;
      case 'MedicinalProductDefinition':
        return FHIRTypesEnum.medicinalProductDefinition;
      case 'MessageDefinition':
        return FHIRTypesEnum.messageDefinition;
      case 'MessageHeader':
        return FHIRTypesEnum.messageHeader;
      case 'MetadataResource':
        return FHIRTypesEnum.metadataResource;
      case 'MolecularSequence':
        return FHIRTypesEnum.molecularSequence;
      case 'NamingSystem':
        return FHIRTypesEnum.namingSystem;
      case 'NutritionIntake':
        return FHIRTypesEnum.nutritionIntake;
      case 'NutritionOrder':
        return FHIRTypesEnum.nutritionOrder;
      case 'NutritionProduct':
        return FHIRTypesEnum.nutritionProduct;
      case 'Observation':
        return FHIRTypesEnum.observation;
      case 'ObservationDefinition':
        return FHIRTypesEnum.observationDefinition;
      case 'OperationDefinition':
        return FHIRTypesEnum.operationDefinition;
      case 'OperationOutcome':
        return FHIRTypesEnum.operationOutcome;
      case 'Organization':
        return FHIRTypesEnum.organization;
      case 'OrganizationAffiliation':
        return FHIRTypesEnum.organizationAffiliation;
      case 'PackagedProductDefinition':
        return FHIRTypesEnum.packagedProductDefinition;
      case 'Patient':
        return FHIRTypesEnum.patient;
      case 'PaymentNotice':
        return FHIRTypesEnum.paymentNotice;
      case 'PaymentReconciliation':
        return FHIRTypesEnum.paymentReconciliation;
      case 'Permission':
        return FHIRTypesEnum.permission;
      case 'Person':
        return FHIRTypesEnum.person;
      case 'PlanDefinition':
        return FHIRTypesEnum.planDefinition;
      case 'Practitioner':
        return FHIRTypesEnum.practitioner;
      case 'PractitionerRole':
        return FHIRTypesEnum.practitionerRole;
      case 'Procedure':
        return FHIRTypesEnum.procedure;
      case 'Provenance':
        return FHIRTypesEnum.provenance;
      case 'Questionnaire':
        return FHIRTypesEnum.questionnaire;
      case 'QuestionnaireResponse':
        return FHIRTypesEnum.questionnaireResponse;
      case 'RegulatedAuthorization':
        return FHIRTypesEnum.regulatedAuthorization;
      case 'RelatedPerson':
        return FHIRTypesEnum.relatedPerson;
      case 'RequestOrchestration':
        return FHIRTypesEnum.requestOrchestration;
      case 'Requirements':
        return FHIRTypesEnum.requirements;
      case 'ResearchStudy':
        return FHIRTypesEnum.researchStudy;
      case 'ResearchSubject':
        return FHIRTypesEnum.researchSubject;
      case 'RiskAssessment':
        return FHIRTypesEnum.riskAssessment;
      case 'Schedule':
        return FHIRTypesEnum.schedule;
      case 'SearchParameter':
        return FHIRTypesEnum.searchParameter;
      case 'ServiceRequest':
        return FHIRTypesEnum.serviceRequest;
      case 'Slot':
        return FHIRTypesEnum.slot;
      case 'Specimen':
        return FHIRTypesEnum.specimen;
      case 'SpecimenDefinition':
        return FHIRTypesEnum.specimenDefinition;
      case 'StructureDefinition':
        return FHIRTypesEnum.structureDefinition;
      case 'StructureMap':
        return FHIRTypesEnum.structureMap;
      case 'Subscription':
        return FHIRTypesEnum.subscription;
      case 'SubscriptionStatus':
        return FHIRTypesEnum.subscriptionStatus;
      case 'SubscriptionTopic':
        return FHIRTypesEnum.subscriptionTopic;
      case 'Substance':
        return FHIRTypesEnum.substance;
      case 'SubstanceDefinition':
        return FHIRTypesEnum.substanceDefinition;
      case 'SubstanceNucleicAcid':
        return FHIRTypesEnum.substanceNucleicAcid;
      case 'SubstancePolymer':
        return FHIRTypesEnum.substancePolymer;
      case 'SubstanceProtein':
        return FHIRTypesEnum.substanceProtein;
      case 'SubstanceReferenceInformation':
        return FHIRTypesEnum.substanceReferenceInformation;
      case 'SubstanceSourceMaterial':
        return FHIRTypesEnum.substanceSourceMaterial;
      case 'SupplyDelivery':
        return FHIRTypesEnum.supplyDelivery;
      case 'SupplyRequest':
        return FHIRTypesEnum.supplyRequest;
      case 'Task':
        return FHIRTypesEnum.task;
      case 'TerminologyCapabilities':
        return FHIRTypesEnum.terminologyCapabilities;
      case 'TestPlan':
        return FHIRTypesEnum.testPlan;
      case 'TestReport':
        return FHIRTypesEnum.testReport;
      case 'TestScript':
        return FHIRTypesEnum.testScript;
      case 'Transport':
        return FHIRTypesEnum.transport;
      case 'ValueSet':
        return FHIRTypesEnum.valueSet;
      case 'VerificationResult':
        return FHIRTypesEnum.verificationResult;
      case 'VisionPrescription':
        return FHIRTypesEnum.visionPrescription;
      case 'Parameters':
        return FHIRTypesEnum.parameters;
    }
    return null;
  }
}

/// All FHIR types
class FHIRTypes extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const FHIRTypes._({
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
  factory FHIRTypes(
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
    final valueEnum = FHIRTypesEnum.fromString(valueString);
    return FHIRTypes._(
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

  /// Factory constructor to create [FHIRTypes]
  /// from JSON.
  factory FHIRTypes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = FHIRTypesEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FHIRTypes._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'FHIRTypes cannot be constructed from JSON.',
      );
    }
    return FHIRTypes._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for FHIRTypes
  final FHIRTypesEnum? valueEnum;

  /// Base
  static const FHIRTypes base = FHIRTypes._(
    valueString: 'Base',
    valueEnum: FHIRTypesEnum.base,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Base',
    ),
  );

  /// Element_
  static const FHIRTypes element_ = FHIRTypes._(
    valueString: 'Element',
    valueEnum: FHIRTypesEnum.element_,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Element',
    ),
  );

  /// BackboneElement
  static const FHIRTypes backboneElement = FHIRTypes._(
    valueString: 'BackboneElement',
    valueEnum: FHIRTypesEnum.backboneElement,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'BackboneElement',
    ),
  );

  /// DataType
  static const FHIRTypes dataType = FHIRTypes._(
    valueString: 'DataType',
    valueEnum: FHIRTypesEnum.dataType,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'DataType',
    ),
  );

  /// Address
  static const FHIRTypes address = FHIRTypes._(
    valueString: 'Address',
    valueEnum: FHIRTypesEnum.address,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Address',
    ),
  );

  /// Annotation
  static const FHIRTypes annotation = FHIRTypes._(
    valueString: 'Annotation',
    valueEnum: FHIRTypesEnum.annotation,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Annotation',
    ),
  );

  /// Attachment
  static const FHIRTypes attachment = FHIRTypes._(
    valueString: 'Attachment',
    valueEnum: FHIRTypesEnum.attachment,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Attachment',
    ),
  );

  /// Availability
  static const FHIRTypes availability = FHIRTypes._(
    valueString: 'Availability',
    valueEnum: FHIRTypesEnum.availability,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Availability',
    ),
  );

  /// BackboneType
  static const FHIRTypes backboneType = FHIRTypes._(
    valueString: 'BackboneType',
    valueEnum: FHIRTypesEnum.backboneType,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'BackboneType',
    ),
  );

  /// Dosage
  static const FHIRTypes dosage = FHIRTypes._(
    valueString: 'Dosage',
    valueEnum: FHIRTypesEnum.dosage,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Dosage',
    ),
  );

  /// ElementDefinition
  static const FHIRTypes elementDefinition = FHIRTypes._(
    valueString: 'ElementDefinition',
    valueEnum: FHIRTypesEnum.elementDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ElementDefinition',
    ),
  );

  /// MarketingStatus
  static const FHIRTypes marketingStatus = FHIRTypes._(
    valueString: 'MarketingStatus',
    valueEnum: FHIRTypesEnum.marketingStatus,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'MarketingStatus',
    ),
  );

  /// ProductShelfLife
  static const FHIRTypes productShelfLife = FHIRTypes._(
    valueString: 'ProductShelfLife',
    valueEnum: FHIRTypesEnum.productShelfLife,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ProductShelfLife',
    ),
  );

  /// Timing
  static const FHIRTypes timing = FHIRTypes._(
    valueString: 'Timing',
    valueEnum: FHIRTypesEnum.timing,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Timing',
    ),
  );

  /// CodeableConcept
  static const FHIRTypes codeableConcept = FHIRTypes._(
    valueString: 'CodeableConcept',
    valueEnum: FHIRTypesEnum.codeableConcept,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'CodeableConcept',
    ),
  );

  /// CodeableReference
  static const FHIRTypes codeableReference = FHIRTypes._(
    valueString: 'CodeableReference',
    valueEnum: FHIRTypesEnum.codeableReference,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'CodeableReference',
    ),
  );

  /// Coding
  static const FHIRTypes coding = FHIRTypes._(
    valueString: 'Coding',
    valueEnum: FHIRTypesEnum.coding,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Coding',
    ),
  );

  /// ContactDetail
  static const FHIRTypes contactDetail = FHIRTypes._(
    valueString: 'ContactDetail',
    valueEnum: FHIRTypesEnum.contactDetail,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ContactDetail',
    ),
  );

  /// ContactPoint
  static const FHIRTypes contactPoint = FHIRTypes._(
    valueString: 'ContactPoint',
    valueEnum: FHIRTypesEnum.contactPoint,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ContactPoint',
    ),
  );

  /// Contributor
  static const FHIRTypes contributor = FHIRTypes._(
    valueString: 'Contributor',
    valueEnum: FHIRTypesEnum.contributor,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Contributor',
    ),
  );

  /// DataRequirement
  static const FHIRTypes dataRequirement = FHIRTypes._(
    valueString: 'DataRequirement',
    valueEnum: FHIRTypesEnum.dataRequirement,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'DataRequirement',
    ),
  );

  /// Expression
  static const FHIRTypes expression = FHIRTypes._(
    valueString: 'Expression',
    valueEnum: FHIRTypesEnum.expression,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Expression',
    ),
  );

  /// ExtendedContactDetail
  static const FHIRTypes extendedContactDetail = FHIRTypes._(
    valueString: 'ExtendedContactDetail',
    valueEnum: FHIRTypesEnum.extendedContactDetail,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ExtendedContactDetail',
    ),
  );

  /// Extension
  static const FHIRTypes extension = FHIRTypes._(
    valueString: 'Extension',
    valueEnum: FHIRTypesEnum.extension,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Extension',
    ),
  );

  /// HumanName
  static const FHIRTypes humanName = FHIRTypes._(
    valueString: 'HumanName',
    valueEnum: FHIRTypesEnum.humanName,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'HumanName',
    ),
  );

  /// Identifier
  static const FHIRTypes identifier = FHIRTypes._(
    valueString: 'Identifier',
    valueEnum: FHIRTypesEnum.identifier,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Identifier',
    ),
  );

  /// Meta
  static const FHIRTypes meta = FHIRTypes._(
    valueString: 'Meta',
    valueEnum: FHIRTypesEnum.meta,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Meta',
    ),
  );

  /// MonetaryComponent
  static const FHIRTypes monetaryComponent = FHIRTypes._(
    valueString: 'MonetaryComponent',
    valueEnum: FHIRTypesEnum.monetaryComponent,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'MonetaryComponent',
    ),
  );

  /// Money
  static const FHIRTypes money = FHIRTypes._(
    valueString: 'Money',
    valueEnum: FHIRTypesEnum.money,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Money',
    ),
  );

  /// Narrative
  static const FHIRTypes narrative = FHIRTypes._(
    valueString: 'Narrative',
    valueEnum: FHIRTypesEnum.narrative,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Narrative',
    ),
  );

  /// ParameterDefinition
  static const FHIRTypes parameterDefinition = FHIRTypes._(
    valueString: 'ParameterDefinition',
    valueEnum: FHIRTypesEnum.parameterDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ParameterDefinition',
    ),
  );

  /// Period
  static const FHIRTypes period = FHIRTypes._(
    valueString: 'Period',
    valueEnum: FHIRTypesEnum.period,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Period',
    ),
  );

  /// PrimitiveType
  static const FHIRTypes primitiveType = FHIRTypes._(
    valueString: 'PrimitiveType',
    valueEnum: FHIRTypesEnum.primitiveType,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'PrimitiveType',
    ),
  );

  /// base64Binary
  static const FHIRTypes base64Binary = FHIRTypes._(
    valueString: 'base64Binary',
    valueEnum: FHIRTypesEnum.base64Binary,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'base64Binary',
    ),
  );

  /// boolean
  static const FHIRTypes boolean = FHIRTypes._(
    valueString: 'boolean',
    valueEnum: FHIRTypesEnum.boolean,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'boolean',
    ),
  );

  /// date
  static const FHIRTypes date = FHIRTypes._(
    valueString: 'date',
    valueEnum: FHIRTypesEnum.date,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'date',
    ),
  );

  /// dateTime
  static const FHIRTypes dateTime = FHIRTypes._(
    valueString: 'dateTime',
    valueEnum: FHIRTypesEnum.dateTime,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'dateTime',
    ),
  );

  /// decimal
  static const FHIRTypes decimal = FHIRTypes._(
    valueString: 'decimal',
    valueEnum: FHIRTypesEnum.decimal,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'decimal',
    ),
  );

  /// instant
  static const FHIRTypes instant = FHIRTypes._(
    valueString: 'instant',
    valueEnum: FHIRTypesEnum.instant,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'instant',
    ),
  );

  /// integer
  static const FHIRTypes integer = FHIRTypes._(
    valueString: 'integer',
    valueEnum: FHIRTypesEnum.integer,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'integer',
    ),
  );

  /// positiveInt
  static const FHIRTypes positiveInt = FHIRTypes._(
    valueString: 'positiveInt',
    valueEnum: FHIRTypesEnum.positiveInt,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'positiveInt',
    ),
  );

  /// unsignedInt
  static const FHIRTypes unsignedInt = FHIRTypes._(
    valueString: 'unsignedInt',
    valueEnum: FHIRTypesEnum.unsignedInt,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'unsignedInt',
    ),
  );

  /// integer64
  static const FHIRTypes integer64 = FHIRTypes._(
    valueString: 'integer64',
    valueEnum: FHIRTypesEnum.integer64,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'integer64',
    ),
  );

  /// string
  static const FHIRTypes string = FHIRTypes._(
    valueString: 'string',
    valueEnum: FHIRTypesEnum.string,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'string',
    ),
  );

  /// code
  static const FHIRTypes code = FHIRTypes._(
    valueString: 'code',
    valueEnum: FHIRTypesEnum.code,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'code',
    ),
  );

  /// id
  static const FHIRTypes id_ = FHIRTypes._(
    valueString: 'id',
    valueEnum: FHIRTypesEnum.id_,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'id',
    ),
  );

  /// markdown
  static const FHIRTypes markdown = FHIRTypes._(
    valueString: 'markdown',
    valueEnum: FHIRTypesEnum.markdown,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'markdown',
    ),
  );

  /// time
  static const FHIRTypes time = FHIRTypes._(
    valueString: 'time',
    valueEnum: FHIRTypesEnum.time,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'time',
    ),
  );

  /// uri
  static const FHIRTypes uri = FHIRTypes._(
    valueString: 'uri',
    valueEnum: FHIRTypesEnum.uri,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'uri',
    ),
  );

  /// canonical
  static const FHIRTypes canonical = FHIRTypes._(
    valueString: 'canonical',
    valueEnum: FHIRTypesEnum.canonical,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'canonical',
    ),
  );

  /// oid
  static const FHIRTypes oid = FHIRTypes._(
    valueString: 'oid',
    valueEnum: FHIRTypesEnum.oid,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'oid',
    ),
  );

  /// url
  static const FHIRTypes url = FHIRTypes._(
    valueString: 'url',
    valueEnum: FHIRTypesEnum.url,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'url',
    ),
  );

  /// uuid
  static const FHIRTypes uuid = FHIRTypes._(
    valueString: 'uuid',
    valueEnum: FHIRTypesEnum.uuid,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'uuid',
    ),
  );

  /// Quantity
  static const FHIRTypes quantity = FHIRTypes._(
    valueString: 'Quantity',
    valueEnum: FHIRTypesEnum.quantity,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Quantity',
    ),
  );

  /// Age
  static const FHIRTypes age = FHIRTypes._(
    valueString: 'Age',
    valueEnum: FHIRTypesEnum.age,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Age',
    ),
  );

  /// Count
  static const FHIRTypes count = FHIRTypes._(
    valueString: 'Count',
    valueEnum: FHIRTypesEnum.count,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Count',
    ),
  );

  /// Distance
  static const FHIRTypes distance = FHIRTypes._(
    valueString: 'Distance',
    valueEnum: FHIRTypesEnum.distance,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Distance',
    ),
  );

  /// Duration
  static const FHIRTypes duration = FHIRTypes._(
    valueString: 'Duration',
    valueEnum: FHIRTypesEnum.duration,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Duration',
    ),
  );

  /// Range
  static const FHIRTypes range = FHIRTypes._(
    valueString: 'Range',
    valueEnum: FHIRTypesEnum.range,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Range',
    ),
  );

  /// Ratio
  static const FHIRTypes ratio = FHIRTypes._(
    valueString: 'Ratio',
    valueEnum: FHIRTypesEnum.ratio,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Ratio',
    ),
  );

  /// RatioRange
  static const FHIRTypes ratioRange = FHIRTypes._(
    valueString: 'RatioRange',
    valueEnum: FHIRTypesEnum.ratioRange,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'RatioRange',
    ),
  );

  /// Reference
  static const FHIRTypes reference = FHIRTypes._(
    valueString: 'Reference',
    valueEnum: FHIRTypesEnum.reference,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Reference',
    ),
  );

  /// RelatedArtifact
  static const FHIRTypes relatedArtifact = FHIRTypes._(
    valueString: 'RelatedArtifact',
    valueEnum: FHIRTypesEnum.relatedArtifact,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'RelatedArtifact',
    ),
  );

  /// SampledData
  static const FHIRTypes sampledData = FHIRTypes._(
    valueString: 'SampledData',
    valueEnum: FHIRTypesEnum.sampledData,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'SampledData',
    ),
  );

  /// Signature
  static const FHIRTypes signature = FHIRTypes._(
    valueString: 'Signature',
    valueEnum: FHIRTypesEnum.signature,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Signature',
    ),
  );

  /// TriggerDefinition
  static const FHIRTypes triggerDefinition = FHIRTypes._(
    valueString: 'TriggerDefinition',
    valueEnum: FHIRTypesEnum.triggerDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'TriggerDefinition',
    ),
  );

  /// UsageContext
  static const FHIRTypes usageContext = FHIRTypes._(
    valueString: 'UsageContext',
    valueEnum: FHIRTypesEnum.usageContext,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'UsageContext',
    ),
  );

  /// VirtualServiceDetail
  static const FHIRTypes virtualServiceDetail = FHIRTypes._(
    valueString: 'VirtualServiceDetail',
    valueEnum: FHIRTypesEnum.virtualServiceDetail,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'VirtualServiceDetail',
    ),
  );

  /// xhtml
  static const FHIRTypes xhtml = FHIRTypes._(
    valueString: 'xhtml',
    valueEnum: FHIRTypesEnum.xhtml,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'xhtml',
    ),
  );

  /// Resource
  static const FHIRTypes resource = FHIRTypes._(
    valueString: 'Resource',
    valueEnum: FHIRTypesEnum.resource,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Resource',
    ),
  );

  /// Binary
  static const FHIRTypes binary = FHIRTypes._(
    valueString: 'Binary',
    valueEnum: FHIRTypesEnum.binary,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Binary',
    ),
  );

  /// Bundle
  static const FHIRTypes bundle = FHIRTypes._(
    valueString: 'Bundle',
    valueEnum: FHIRTypesEnum.bundle,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Bundle',
    ),
  );

  /// DomainResource
  static const FHIRTypes domainResource = FHIRTypes._(
    valueString: 'DomainResource',
    valueEnum: FHIRTypesEnum.domainResource,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'DomainResource',
    ),
  );

  /// Account
  static const FHIRTypes account = FHIRTypes._(
    valueString: 'Account',
    valueEnum: FHIRTypesEnum.account,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Account',
    ),
  );

  /// ActivityDefinition
  static const FHIRTypes activityDefinition = FHIRTypes._(
    valueString: 'ActivityDefinition',
    valueEnum: FHIRTypesEnum.activityDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ActivityDefinition',
    ),
  );

  /// ActorDefinition
  static const FHIRTypes actorDefinition = FHIRTypes._(
    valueString: 'ActorDefinition',
    valueEnum: FHIRTypesEnum.actorDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ActorDefinition',
    ),
  );

  /// AdministrableProductDefinition
  static const FHIRTypes administrableProductDefinition = FHIRTypes._(
    valueString: 'AdministrableProductDefinition',
    valueEnum: FHIRTypesEnum.administrableProductDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'AdministrableProductDefinition',
    ),
  );

  /// AdverseEvent
  static const FHIRTypes adverseEvent = FHIRTypes._(
    valueString: 'AdverseEvent',
    valueEnum: FHIRTypesEnum.adverseEvent,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'AdverseEvent',
    ),
  );

  /// AllergyIntolerance
  static const FHIRTypes allergyIntolerance = FHIRTypes._(
    valueString: 'AllergyIntolerance',
    valueEnum: FHIRTypesEnum.allergyIntolerance,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'AllergyIntolerance',
    ),
  );

  /// Appointment
  static const FHIRTypes appointment = FHIRTypes._(
    valueString: 'Appointment',
    valueEnum: FHIRTypesEnum.appointment,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Appointment',
    ),
  );

  /// AppointmentResponse
  static const FHIRTypes appointmentResponse = FHIRTypes._(
    valueString: 'AppointmentResponse',
    valueEnum: FHIRTypesEnum.appointmentResponse,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'AppointmentResponse',
    ),
  );

  /// ArtifactAssessment
  static const FHIRTypes artifactAssessment = FHIRTypes._(
    valueString: 'ArtifactAssessment',
    valueEnum: FHIRTypesEnum.artifactAssessment,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ArtifactAssessment',
    ),
  );

  /// AuditEvent
  static const FHIRTypes auditEvent = FHIRTypes._(
    valueString: 'AuditEvent',
    valueEnum: FHIRTypesEnum.auditEvent,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'AuditEvent',
    ),
  );

  /// Basic
  static const FHIRTypes basic = FHIRTypes._(
    valueString: 'Basic',
    valueEnum: FHIRTypesEnum.basic,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Basic',
    ),
  );

  /// BiologicallyDerivedProduct
  static const FHIRTypes biologicallyDerivedProduct = FHIRTypes._(
    valueString: 'BiologicallyDerivedProduct',
    valueEnum: FHIRTypesEnum.biologicallyDerivedProduct,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'BiologicallyDerivedProduct',
    ),
  );

  /// BiologicallyDerivedProductDispense
  static const FHIRTypes biologicallyDerivedProductDispense = FHIRTypes._(
    valueString: 'BiologicallyDerivedProductDispense',
    valueEnum: FHIRTypesEnum.biologicallyDerivedProductDispense,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'BiologicallyDerivedProductDispense',
    ),
  );

  /// BodyStructure
  static const FHIRTypes bodyStructure = FHIRTypes._(
    valueString: 'BodyStructure',
    valueEnum: FHIRTypesEnum.bodyStructure,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'BodyStructure',
    ),
  );

  /// CanonicalResource
  static const FHIRTypes canonicalResource = FHIRTypes._(
    valueString: 'CanonicalResource',
    valueEnum: FHIRTypesEnum.canonicalResource,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'CanonicalResource',
    ),
  );

  /// CapabilityStatement
  static const FHIRTypes capabilityStatement = FHIRTypes._(
    valueString: 'CapabilityStatement',
    valueEnum: FHIRTypesEnum.capabilityStatement,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'CapabilityStatement',
    ),
  );

  /// CarePlan
  static const FHIRTypes carePlan = FHIRTypes._(
    valueString: 'CarePlan',
    valueEnum: FHIRTypesEnum.carePlan,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'CarePlan',
    ),
  );

  /// CareTeam
  static const FHIRTypes careTeam = FHIRTypes._(
    valueString: 'CareTeam',
    valueEnum: FHIRTypesEnum.careTeam,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'CareTeam',
    ),
  );

  /// ChargeItem
  static const FHIRTypes chargeItem = FHIRTypes._(
    valueString: 'ChargeItem',
    valueEnum: FHIRTypesEnum.chargeItem,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ChargeItem',
    ),
  );

  /// ChargeItemDefinition
  static const FHIRTypes chargeItemDefinition = FHIRTypes._(
    valueString: 'ChargeItemDefinition',
    valueEnum: FHIRTypesEnum.chargeItemDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ChargeItemDefinition',
    ),
  );

  /// Citation
  static const FHIRTypes citation = FHIRTypes._(
    valueString: 'Citation',
    valueEnum: FHIRTypesEnum.citation,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Citation',
    ),
  );

  /// Claim
  static const FHIRTypes claim = FHIRTypes._(
    valueString: 'Claim',
    valueEnum: FHIRTypesEnum.claim,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Claim',
    ),
  );

  /// ClaimResponse
  static const FHIRTypes claimResponse = FHIRTypes._(
    valueString: 'ClaimResponse',
    valueEnum: FHIRTypesEnum.claimResponse,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ClaimResponse',
    ),
  );

  /// ClinicalImpression
  static const FHIRTypes clinicalImpression = FHIRTypes._(
    valueString: 'ClinicalImpression',
    valueEnum: FHIRTypesEnum.clinicalImpression,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ClinicalImpression',
    ),
  );

  /// ClinicalUseDefinition
  static const FHIRTypes clinicalUseDefinition = FHIRTypes._(
    valueString: 'ClinicalUseDefinition',
    valueEnum: FHIRTypesEnum.clinicalUseDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ClinicalUseDefinition',
    ),
  );

  /// CodeSystem
  static const FHIRTypes codeSystem = FHIRTypes._(
    valueString: 'CodeSystem',
    valueEnum: FHIRTypesEnum.codeSystem,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'CodeSystem',
    ),
  );

  /// Communication
  static const FHIRTypes communication = FHIRTypes._(
    valueString: 'Communication',
    valueEnum: FHIRTypesEnum.communication,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Communication',
    ),
  );

  /// CommunicationRequest
  static const FHIRTypes communicationRequest = FHIRTypes._(
    valueString: 'CommunicationRequest',
    valueEnum: FHIRTypesEnum.communicationRequest,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'CommunicationRequest',
    ),
  );

  /// CompartmentDefinition
  static const FHIRTypes compartmentDefinition = FHIRTypes._(
    valueString: 'CompartmentDefinition',
    valueEnum: FHIRTypesEnum.compartmentDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'CompartmentDefinition',
    ),
  );

  /// Composition
  static const FHIRTypes composition = FHIRTypes._(
    valueString: 'Composition',
    valueEnum: FHIRTypesEnum.composition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Composition',
    ),
  );

  /// ConceptMap
  static const FHIRTypes conceptMap = FHIRTypes._(
    valueString: 'ConceptMap',
    valueEnum: FHIRTypesEnum.conceptMap,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ConceptMap',
    ),
  );

  /// Condition
  static const FHIRTypes condition = FHIRTypes._(
    valueString: 'Condition',
    valueEnum: FHIRTypesEnum.condition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Condition',
    ),
  );

  /// ConditionDefinition
  static const FHIRTypes conditionDefinition = FHIRTypes._(
    valueString: 'ConditionDefinition',
    valueEnum: FHIRTypesEnum.conditionDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ConditionDefinition',
    ),
  );

  /// Consent
  static const FHIRTypes consent = FHIRTypes._(
    valueString: 'Consent',
    valueEnum: FHIRTypesEnum.consent,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Consent',
    ),
  );

  /// Contract
  static const FHIRTypes contract = FHIRTypes._(
    valueString: 'Contract',
    valueEnum: FHIRTypesEnum.contract,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Contract',
    ),
  );

  /// Coverage
  static const FHIRTypes coverage = FHIRTypes._(
    valueString: 'Coverage',
    valueEnum: FHIRTypesEnum.coverage,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Coverage',
    ),
  );

  /// CoverageEligibilityRequest
  static const FHIRTypes coverageEligibilityRequest = FHIRTypes._(
    valueString: 'CoverageEligibilityRequest',
    valueEnum: FHIRTypesEnum.coverageEligibilityRequest,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'CoverageEligibilityRequest',
    ),
  );

  /// CoverageEligibilityResponse
  static const FHIRTypes coverageEligibilityResponse = FHIRTypes._(
    valueString: 'CoverageEligibilityResponse',
    valueEnum: FHIRTypesEnum.coverageEligibilityResponse,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'CoverageEligibilityResponse',
    ),
  );

  /// DetectedIssue
  static const FHIRTypes detectedIssue = FHIRTypes._(
    valueString: 'DetectedIssue',
    valueEnum: FHIRTypesEnum.detectedIssue,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'DetectedIssue',
    ),
  );

  /// Device
  static const FHIRTypes device = FHIRTypes._(
    valueString: 'Device',
    valueEnum: FHIRTypesEnum.device,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Device',
    ),
  );

  /// DeviceAssociation
  static const FHIRTypes deviceAssociation = FHIRTypes._(
    valueString: 'DeviceAssociation',
    valueEnum: FHIRTypesEnum.deviceAssociation,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'DeviceAssociation',
    ),
  );

  /// DeviceDefinition
  static const FHIRTypes deviceDefinition = FHIRTypes._(
    valueString: 'DeviceDefinition',
    valueEnum: FHIRTypesEnum.deviceDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'DeviceDefinition',
    ),
  );

  /// DeviceDispense
  static const FHIRTypes deviceDispense = FHIRTypes._(
    valueString: 'DeviceDispense',
    valueEnum: FHIRTypesEnum.deviceDispense,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'DeviceDispense',
    ),
  );

  /// DeviceMetric
  static const FHIRTypes deviceMetric = FHIRTypes._(
    valueString: 'DeviceMetric',
    valueEnum: FHIRTypesEnum.deviceMetric,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'DeviceMetric',
    ),
  );

  /// DeviceRequest
  static const FHIRTypes deviceRequest = FHIRTypes._(
    valueString: 'DeviceRequest',
    valueEnum: FHIRTypesEnum.deviceRequest,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'DeviceRequest',
    ),
  );

  /// DeviceUsage
  static const FHIRTypes deviceUsage = FHIRTypes._(
    valueString: 'DeviceUsage',
    valueEnum: FHIRTypesEnum.deviceUsage,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'DeviceUsage',
    ),
  );

  /// DiagnosticReport
  static const FHIRTypes diagnosticReport = FHIRTypes._(
    valueString: 'DiagnosticReport',
    valueEnum: FHIRTypesEnum.diagnosticReport,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'DiagnosticReport',
    ),
  );

  /// DocumentReference
  static const FHIRTypes documentReference = FHIRTypes._(
    valueString: 'DocumentReference',
    valueEnum: FHIRTypesEnum.documentReference,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'DocumentReference',
    ),
  );

  /// Encounter
  static const FHIRTypes encounter = FHIRTypes._(
    valueString: 'Encounter',
    valueEnum: FHIRTypesEnum.encounter,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Encounter',
    ),
  );

  /// EncounterHistory
  static const FHIRTypes encounterHistory = FHIRTypes._(
    valueString: 'EncounterHistory',
    valueEnum: FHIRTypesEnum.encounterHistory,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'EncounterHistory',
    ),
  );

  /// Endpoint
  static const FHIRTypes endpoint = FHIRTypes._(
    valueString: 'Endpoint',
    valueEnum: FHIRTypesEnum.endpoint,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Endpoint',
    ),
  );

  /// EnrollmentRequest
  static const FHIRTypes enrollmentRequest = FHIRTypes._(
    valueString: 'EnrollmentRequest',
    valueEnum: FHIRTypesEnum.enrollmentRequest,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'EnrollmentRequest',
    ),
  );

  /// EnrollmentResponse
  static const FHIRTypes enrollmentResponse = FHIRTypes._(
    valueString: 'EnrollmentResponse',
    valueEnum: FHIRTypesEnum.enrollmentResponse,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'EnrollmentResponse',
    ),
  );

  /// EpisodeOfCare
  static const FHIRTypes episodeOfCare = FHIRTypes._(
    valueString: 'EpisodeOfCare',
    valueEnum: FHIRTypesEnum.episodeOfCare,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'EpisodeOfCare',
    ),
  );

  /// EventDefinition
  static const FHIRTypes eventDefinition = FHIRTypes._(
    valueString: 'EventDefinition',
    valueEnum: FHIRTypesEnum.eventDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'EventDefinition',
    ),
  );

  /// Evidence
  static const FHIRTypes evidence = FHIRTypes._(
    valueString: 'Evidence',
    valueEnum: FHIRTypesEnum.evidence,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Evidence',
    ),
  );

  /// EvidenceReport
  static const FHIRTypes evidenceReport = FHIRTypes._(
    valueString: 'EvidenceReport',
    valueEnum: FHIRTypesEnum.evidenceReport,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'EvidenceReport',
    ),
  );

  /// EvidenceVariable
  static const FHIRTypes evidenceVariable = FHIRTypes._(
    valueString: 'EvidenceVariable',
    valueEnum: FHIRTypesEnum.evidenceVariable,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'EvidenceVariable',
    ),
  );

  /// ExampleScenario
  static const FHIRTypes exampleScenario = FHIRTypes._(
    valueString: 'ExampleScenario',
    valueEnum: FHIRTypesEnum.exampleScenario,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ExampleScenario',
    ),
  );

  /// ExplanationOfBenefit
  static const FHIRTypes explanationOfBenefit = FHIRTypes._(
    valueString: 'ExplanationOfBenefit',
    valueEnum: FHIRTypesEnum.explanationOfBenefit,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ExplanationOfBenefit',
    ),
  );

  /// FamilyMemberHistory
  static const FHIRTypes familyMemberHistory = FHIRTypes._(
    valueString: 'FamilyMemberHistory',
    valueEnum: FHIRTypesEnum.familyMemberHistory,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'FamilyMemberHistory',
    ),
  );

  /// Flag
  static const FHIRTypes flag = FHIRTypes._(
    valueString: 'Flag',
    valueEnum: FHIRTypesEnum.flag,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Flag',
    ),
  );

  /// FormularyItem
  static const FHIRTypes formularyItem = FHIRTypes._(
    valueString: 'FormularyItem',
    valueEnum: FHIRTypesEnum.formularyItem,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'FormularyItem',
    ),
  );

  /// GenomicStudy
  static const FHIRTypes genomicStudy = FHIRTypes._(
    valueString: 'GenomicStudy',
    valueEnum: FHIRTypesEnum.genomicStudy,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'GenomicStudy',
    ),
  );

  /// Goal
  static const FHIRTypes goal = FHIRTypes._(
    valueString: 'Goal',
    valueEnum: FHIRTypesEnum.goal,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Goal',
    ),
  );

  /// GraphDefinition
  static const FHIRTypes graphDefinition = FHIRTypes._(
    valueString: 'GraphDefinition',
    valueEnum: FHIRTypesEnum.graphDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'GraphDefinition',
    ),
  );

  /// Group
  static const FHIRTypes group = FHIRTypes._(
    valueString: 'Group',
    valueEnum: FHIRTypesEnum.group,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Group',
    ),
  );

  /// GuidanceResponse
  static const FHIRTypes guidanceResponse = FHIRTypes._(
    valueString: 'GuidanceResponse',
    valueEnum: FHIRTypesEnum.guidanceResponse,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'GuidanceResponse',
    ),
  );

  /// HealthcareService
  static const FHIRTypes healthcareService = FHIRTypes._(
    valueString: 'HealthcareService',
    valueEnum: FHIRTypesEnum.healthcareService,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'HealthcareService',
    ),
  );

  /// ImagingSelection
  static const FHIRTypes imagingSelection = FHIRTypes._(
    valueString: 'ImagingSelection',
    valueEnum: FHIRTypesEnum.imagingSelection,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ImagingSelection',
    ),
  );

  /// ImagingStudy
  static const FHIRTypes imagingStudy = FHIRTypes._(
    valueString: 'ImagingStudy',
    valueEnum: FHIRTypesEnum.imagingStudy,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ImagingStudy',
    ),
  );

  /// Immunization
  static const FHIRTypes immunization = FHIRTypes._(
    valueString: 'Immunization',
    valueEnum: FHIRTypesEnum.immunization,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Immunization',
    ),
  );

  /// ImmunizationEvaluation
  static const FHIRTypes immunizationEvaluation = FHIRTypes._(
    valueString: 'ImmunizationEvaluation',
    valueEnum: FHIRTypesEnum.immunizationEvaluation,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ImmunizationEvaluation',
    ),
  );

  /// ImmunizationRecommendation
  static const FHIRTypes immunizationRecommendation = FHIRTypes._(
    valueString: 'ImmunizationRecommendation',
    valueEnum: FHIRTypesEnum.immunizationRecommendation,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ImmunizationRecommendation',
    ),
  );

  /// ImplementationGuide
  static const FHIRTypes implementationGuide = FHIRTypes._(
    valueString: 'ImplementationGuide',
    valueEnum: FHIRTypesEnum.implementationGuide,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ImplementationGuide',
    ),
  );

  /// Ingredient
  static const FHIRTypes ingredient = FHIRTypes._(
    valueString: 'Ingredient',
    valueEnum: FHIRTypesEnum.ingredient,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Ingredient',
    ),
  );

  /// InsurancePlan
  static const FHIRTypes insurancePlan = FHIRTypes._(
    valueString: 'InsurancePlan',
    valueEnum: FHIRTypesEnum.insurancePlan,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'InsurancePlan',
    ),
  );

  /// InventoryItem
  static const FHIRTypes inventoryItem = FHIRTypes._(
    valueString: 'InventoryItem',
    valueEnum: FHIRTypesEnum.inventoryItem,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'InventoryItem',
    ),
  );

  /// InventoryReport
  static const FHIRTypes inventoryReport = FHIRTypes._(
    valueString: 'InventoryReport',
    valueEnum: FHIRTypesEnum.inventoryReport,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'InventoryReport',
    ),
  );

  /// Invoice
  static const FHIRTypes invoice = FHIRTypes._(
    valueString: 'Invoice',
    valueEnum: FHIRTypesEnum.invoice,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Invoice',
    ),
  );

  /// Library
  static const FHIRTypes library = FHIRTypes._(
    valueString: 'Library',
    valueEnum: FHIRTypesEnum.library,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Library',
    ),
  );

  /// Linkage
  static const FHIRTypes linkage = FHIRTypes._(
    valueString: 'Linkage',
    valueEnum: FHIRTypesEnum.linkage,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Linkage',
    ),
  );

  /// List_
  static const FHIRTypes list_ = FHIRTypes._(
    valueString: 'List',
    valueEnum: FHIRTypesEnum.list_,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'List',
    ),
  );

  /// Location
  static const FHIRTypes location = FHIRTypes._(
    valueString: 'Location',
    valueEnum: FHIRTypesEnum.location,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Location',
    ),
  );

  /// ManufacturedItemDefinition
  static const FHIRTypes manufacturedItemDefinition = FHIRTypes._(
    valueString: 'ManufacturedItemDefinition',
    valueEnum: FHIRTypesEnum.manufacturedItemDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ManufacturedItemDefinition',
    ),
  );

  /// Measure
  static const FHIRTypes measure = FHIRTypes._(
    valueString: 'Measure',
    valueEnum: FHIRTypesEnum.measure,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Measure',
    ),
  );

  /// MeasureReport
  static const FHIRTypes measureReport = FHIRTypes._(
    valueString: 'MeasureReport',
    valueEnum: FHIRTypesEnum.measureReport,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'MeasureReport',
    ),
  );

  /// Medication
  static const FHIRTypes medication = FHIRTypes._(
    valueString: 'Medication',
    valueEnum: FHIRTypesEnum.medication,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Medication',
    ),
  );

  /// MedicationAdministration
  static const FHIRTypes medicationAdministration = FHIRTypes._(
    valueString: 'MedicationAdministration',
    valueEnum: FHIRTypesEnum.medicationAdministration,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'MedicationAdministration',
    ),
  );

  /// MedicationDispense
  static const FHIRTypes medicationDispense = FHIRTypes._(
    valueString: 'MedicationDispense',
    valueEnum: FHIRTypesEnum.medicationDispense,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'MedicationDispense',
    ),
  );

  /// MedicationKnowledge
  static const FHIRTypes medicationKnowledge = FHIRTypes._(
    valueString: 'MedicationKnowledge',
    valueEnum: FHIRTypesEnum.medicationKnowledge,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'MedicationKnowledge',
    ),
  );

  /// MedicationRequest
  static const FHIRTypes medicationRequest = FHIRTypes._(
    valueString: 'MedicationRequest',
    valueEnum: FHIRTypesEnum.medicationRequest,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'MedicationRequest',
    ),
  );

  /// MedicationStatement
  static const FHIRTypes medicationStatement = FHIRTypes._(
    valueString: 'MedicationStatement',
    valueEnum: FHIRTypesEnum.medicationStatement,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'MedicationStatement',
    ),
  );

  /// MedicinalProductDefinition
  static const FHIRTypes medicinalProductDefinition = FHIRTypes._(
    valueString: 'MedicinalProductDefinition',
    valueEnum: FHIRTypesEnum.medicinalProductDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'MedicinalProductDefinition',
    ),
  );

  /// MessageDefinition
  static const FHIRTypes messageDefinition = FHIRTypes._(
    valueString: 'MessageDefinition',
    valueEnum: FHIRTypesEnum.messageDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'MessageDefinition',
    ),
  );

  /// MessageHeader
  static const FHIRTypes messageHeader = FHIRTypes._(
    valueString: 'MessageHeader',
    valueEnum: FHIRTypesEnum.messageHeader,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'MessageHeader',
    ),
  );

  /// MetadataResource
  static const FHIRTypes metadataResource = FHIRTypes._(
    valueString: 'MetadataResource',
    valueEnum: FHIRTypesEnum.metadataResource,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'MetadataResource',
    ),
  );

  /// MolecularSequence
  static const FHIRTypes molecularSequence = FHIRTypes._(
    valueString: 'MolecularSequence',
    valueEnum: FHIRTypesEnum.molecularSequence,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'MolecularSequence',
    ),
  );

  /// NamingSystem
  static const FHIRTypes namingSystem = FHIRTypes._(
    valueString: 'NamingSystem',
    valueEnum: FHIRTypesEnum.namingSystem,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'NamingSystem',
    ),
  );

  /// NutritionIntake
  static const FHIRTypes nutritionIntake = FHIRTypes._(
    valueString: 'NutritionIntake',
    valueEnum: FHIRTypesEnum.nutritionIntake,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'NutritionIntake',
    ),
  );

  /// NutritionOrder
  static const FHIRTypes nutritionOrder = FHIRTypes._(
    valueString: 'NutritionOrder',
    valueEnum: FHIRTypesEnum.nutritionOrder,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'NutritionOrder',
    ),
  );

  /// NutritionProduct
  static const FHIRTypes nutritionProduct = FHIRTypes._(
    valueString: 'NutritionProduct',
    valueEnum: FHIRTypesEnum.nutritionProduct,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'NutritionProduct',
    ),
  );

  /// Observation
  static const FHIRTypes observation = FHIRTypes._(
    valueString: 'Observation',
    valueEnum: FHIRTypesEnum.observation,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Observation',
    ),
  );

  /// ObservationDefinition
  static const FHIRTypes observationDefinition = FHIRTypes._(
    valueString: 'ObservationDefinition',
    valueEnum: FHIRTypesEnum.observationDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ObservationDefinition',
    ),
  );

  /// OperationDefinition
  static const FHIRTypes operationDefinition = FHIRTypes._(
    valueString: 'OperationDefinition',
    valueEnum: FHIRTypesEnum.operationDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'OperationDefinition',
    ),
  );

  /// OperationOutcome
  static const FHIRTypes operationOutcome = FHIRTypes._(
    valueString: 'OperationOutcome',
    valueEnum: FHIRTypesEnum.operationOutcome,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'OperationOutcome',
    ),
  );

  /// Organization
  static const FHIRTypes organization = FHIRTypes._(
    valueString: 'Organization',
    valueEnum: FHIRTypesEnum.organization,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Organization',
    ),
  );

  /// OrganizationAffiliation
  static const FHIRTypes organizationAffiliation = FHIRTypes._(
    valueString: 'OrganizationAffiliation',
    valueEnum: FHIRTypesEnum.organizationAffiliation,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'OrganizationAffiliation',
    ),
  );

  /// PackagedProductDefinition
  static const FHIRTypes packagedProductDefinition = FHIRTypes._(
    valueString: 'PackagedProductDefinition',
    valueEnum: FHIRTypesEnum.packagedProductDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'PackagedProductDefinition',
    ),
  );

  /// Patient
  static const FHIRTypes patient = FHIRTypes._(
    valueString: 'Patient',
    valueEnum: FHIRTypesEnum.patient,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Patient',
    ),
  );

  /// PaymentNotice
  static const FHIRTypes paymentNotice = FHIRTypes._(
    valueString: 'PaymentNotice',
    valueEnum: FHIRTypesEnum.paymentNotice,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'PaymentNotice',
    ),
  );

  /// PaymentReconciliation
  static const FHIRTypes paymentReconciliation = FHIRTypes._(
    valueString: 'PaymentReconciliation',
    valueEnum: FHIRTypesEnum.paymentReconciliation,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'PaymentReconciliation',
    ),
  );

  /// Permission
  static const FHIRTypes permission = FHIRTypes._(
    valueString: 'Permission',
    valueEnum: FHIRTypesEnum.permission,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Permission',
    ),
  );

  /// Person
  static const FHIRTypes person = FHIRTypes._(
    valueString: 'Person',
    valueEnum: FHIRTypesEnum.person,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Person',
    ),
  );

  /// PlanDefinition
  static const FHIRTypes planDefinition = FHIRTypes._(
    valueString: 'PlanDefinition',
    valueEnum: FHIRTypesEnum.planDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'PlanDefinition',
    ),
  );

  /// Practitioner
  static const FHIRTypes practitioner = FHIRTypes._(
    valueString: 'Practitioner',
    valueEnum: FHIRTypesEnum.practitioner,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Practitioner',
    ),
  );

  /// PractitionerRole
  static const FHIRTypes practitionerRole = FHIRTypes._(
    valueString: 'PractitionerRole',
    valueEnum: FHIRTypesEnum.practitionerRole,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'PractitionerRole',
    ),
  );

  /// Procedure
  static const FHIRTypes procedure = FHIRTypes._(
    valueString: 'Procedure',
    valueEnum: FHIRTypesEnum.procedure,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Procedure',
    ),
  );

  /// Provenance
  static const FHIRTypes provenance = FHIRTypes._(
    valueString: 'Provenance',
    valueEnum: FHIRTypesEnum.provenance,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Provenance',
    ),
  );

  /// Questionnaire
  static const FHIRTypes questionnaire = FHIRTypes._(
    valueString: 'Questionnaire',
    valueEnum: FHIRTypesEnum.questionnaire,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Questionnaire',
    ),
  );

  /// QuestionnaireResponse
  static const FHIRTypes questionnaireResponse = FHIRTypes._(
    valueString: 'QuestionnaireResponse',
    valueEnum: FHIRTypesEnum.questionnaireResponse,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'QuestionnaireResponse',
    ),
  );

  /// RegulatedAuthorization
  static const FHIRTypes regulatedAuthorization = FHIRTypes._(
    valueString: 'RegulatedAuthorization',
    valueEnum: FHIRTypesEnum.regulatedAuthorization,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'RegulatedAuthorization',
    ),
  );

  /// RelatedPerson
  static const FHIRTypes relatedPerson = FHIRTypes._(
    valueString: 'RelatedPerson',
    valueEnum: FHIRTypesEnum.relatedPerson,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'RelatedPerson',
    ),
  );

  /// RequestOrchestration
  static const FHIRTypes requestOrchestration = FHIRTypes._(
    valueString: 'RequestOrchestration',
    valueEnum: FHIRTypesEnum.requestOrchestration,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'RequestOrchestration',
    ),
  );

  /// Requirements
  static const FHIRTypes requirements = FHIRTypes._(
    valueString: 'Requirements',
    valueEnum: FHIRTypesEnum.requirements,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Requirements',
    ),
  );

  /// ResearchStudy
  static const FHIRTypes researchStudy = FHIRTypes._(
    valueString: 'ResearchStudy',
    valueEnum: FHIRTypesEnum.researchStudy,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ResearchStudy',
    ),
  );

  /// ResearchSubject
  static const FHIRTypes researchSubject = FHIRTypes._(
    valueString: 'ResearchSubject',
    valueEnum: FHIRTypesEnum.researchSubject,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ResearchSubject',
    ),
  );

  /// RiskAssessment
  static const FHIRTypes riskAssessment = FHIRTypes._(
    valueString: 'RiskAssessment',
    valueEnum: FHIRTypesEnum.riskAssessment,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'RiskAssessment',
    ),
  );

  /// Schedule
  static const FHIRTypes schedule = FHIRTypes._(
    valueString: 'Schedule',
    valueEnum: FHIRTypesEnum.schedule,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Schedule',
    ),
  );

  /// SearchParameter
  static const FHIRTypes searchParameter = FHIRTypes._(
    valueString: 'SearchParameter',
    valueEnum: FHIRTypesEnum.searchParameter,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'SearchParameter',
    ),
  );

  /// ServiceRequest
  static const FHIRTypes serviceRequest = FHIRTypes._(
    valueString: 'ServiceRequest',
    valueEnum: FHIRTypesEnum.serviceRequest,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ServiceRequest',
    ),
  );

  /// Slot
  static const FHIRTypes slot = FHIRTypes._(
    valueString: 'Slot',
    valueEnum: FHIRTypesEnum.slot,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Slot',
    ),
  );

  /// Specimen
  static const FHIRTypes specimen = FHIRTypes._(
    valueString: 'Specimen',
    valueEnum: FHIRTypesEnum.specimen,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Specimen',
    ),
  );

  /// SpecimenDefinition
  static const FHIRTypes specimenDefinition = FHIRTypes._(
    valueString: 'SpecimenDefinition',
    valueEnum: FHIRTypesEnum.specimenDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'SpecimenDefinition',
    ),
  );

  /// StructureDefinition
  static const FHIRTypes structureDefinition = FHIRTypes._(
    valueString: 'StructureDefinition',
    valueEnum: FHIRTypesEnum.structureDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'StructureDefinition',
    ),
  );

  /// StructureMap
  static const FHIRTypes structureMap = FHIRTypes._(
    valueString: 'StructureMap',
    valueEnum: FHIRTypesEnum.structureMap,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'StructureMap',
    ),
  );

  /// Subscription
  static const FHIRTypes subscription = FHIRTypes._(
    valueString: 'Subscription',
    valueEnum: FHIRTypesEnum.subscription,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Subscription',
    ),
  );

  /// SubscriptionStatus
  static const FHIRTypes subscriptionStatus = FHIRTypes._(
    valueString: 'SubscriptionStatus',
    valueEnum: FHIRTypesEnum.subscriptionStatus,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'SubscriptionStatus',
    ),
  );

  /// SubscriptionTopic
  static const FHIRTypes subscriptionTopic = FHIRTypes._(
    valueString: 'SubscriptionTopic',
    valueEnum: FHIRTypesEnum.subscriptionTopic,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'SubscriptionTopic',
    ),
  );

  /// Substance
  static const FHIRTypes substance = FHIRTypes._(
    valueString: 'Substance',
    valueEnum: FHIRTypesEnum.substance,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Substance',
    ),
  );

  /// SubstanceDefinition
  static const FHIRTypes substanceDefinition = FHIRTypes._(
    valueString: 'SubstanceDefinition',
    valueEnum: FHIRTypesEnum.substanceDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'SubstanceDefinition',
    ),
  );

  /// SubstanceNucleicAcid
  static const FHIRTypes substanceNucleicAcid = FHIRTypes._(
    valueString: 'SubstanceNucleicAcid',
    valueEnum: FHIRTypesEnum.substanceNucleicAcid,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'SubstanceNucleicAcid',
    ),
  );

  /// SubstancePolymer
  static const FHIRTypes substancePolymer = FHIRTypes._(
    valueString: 'SubstancePolymer',
    valueEnum: FHIRTypesEnum.substancePolymer,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'SubstancePolymer',
    ),
  );

  /// SubstanceProtein
  static const FHIRTypes substanceProtein = FHIRTypes._(
    valueString: 'SubstanceProtein',
    valueEnum: FHIRTypesEnum.substanceProtein,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'SubstanceProtein',
    ),
  );

  /// SubstanceReferenceInformation
  static const FHIRTypes substanceReferenceInformation = FHIRTypes._(
    valueString: 'SubstanceReferenceInformation',
    valueEnum: FHIRTypesEnum.substanceReferenceInformation,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'SubstanceReferenceInformation',
    ),
  );

  /// SubstanceSourceMaterial
  static const FHIRTypes substanceSourceMaterial = FHIRTypes._(
    valueString: 'SubstanceSourceMaterial',
    valueEnum: FHIRTypesEnum.substanceSourceMaterial,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'SubstanceSourceMaterial',
    ),
  );

  /// SupplyDelivery
  static const FHIRTypes supplyDelivery = FHIRTypes._(
    valueString: 'SupplyDelivery',
    valueEnum: FHIRTypesEnum.supplyDelivery,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'SupplyDelivery',
    ),
  );

  /// SupplyRequest
  static const FHIRTypes supplyRequest = FHIRTypes._(
    valueString: 'SupplyRequest',
    valueEnum: FHIRTypesEnum.supplyRequest,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'SupplyRequest',
    ),
  );

  /// Task
  static const FHIRTypes task = FHIRTypes._(
    valueString: 'Task',
    valueEnum: FHIRTypesEnum.task,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Task',
    ),
  );

  /// TerminologyCapabilities
  static const FHIRTypes terminologyCapabilities = FHIRTypes._(
    valueString: 'TerminologyCapabilities',
    valueEnum: FHIRTypesEnum.terminologyCapabilities,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'TerminologyCapabilities',
    ),
  );

  /// TestPlan
  static const FHIRTypes testPlan = FHIRTypes._(
    valueString: 'TestPlan',
    valueEnum: FHIRTypesEnum.testPlan,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'TestPlan',
    ),
  );

  /// TestReport
  static const FHIRTypes testReport = FHIRTypes._(
    valueString: 'TestReport',
    valueEnum: FHIRTypesEnum.testReport,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'TestReport',
    ),
  );

  /// TestScript
  static const FHIRTypes testScript = FHIRTypes._(
    valueString: 'TestScript',
    valueEnum: FHIRTypesEnum.testScript,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'TestScript',
    ),
  );

  /// Transport
  static const FHIRTypes transport = FHIRTypes._(
    valueString: 'Transport',
    valueEnum: FHIRTypesEnum.transport,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Transport',
    ),
  );

  /// ValueSet
  static const FHIRTypes valueSet = FHIRTypes._(
    valueString: 'ValueSet',
    valueEnum: FHIRTypesEnum.valueSet,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ValueSet',
    ),
  );

  /// VerificationResult
  static const FHIRTypes verificationResult = FHIRTypes._(
    valueString: 'VerificationResult',
    valueEnum: FHIRTypesEnum.verificationResult,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'VerificationResult',
    ),
  );

  /// VisionPrescription
  static const FHIRTypes visionPrescription = FHIRTypes._(
    valueString: 'VisionPrescription',
    valueEnum: FHIRTypesEnum.visionPrescription,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'VisionPrescription',
    ),
  );

  /// Parameters
  static const FHIRTypes parameters = FHIRTypes._(
    valueString: 'Parameters',
    valueEnum: FHIRTypesEnum.parameters,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fhir-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Parameters',
    ),
  );

  /// List of all enum-like values
  static final List<FHIRTypes> values = [
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
  FHIRTypes withElement(Element? newElement) {
    return FHIRTypes._(
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
  FHIRTypes clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  FHIRTypesCopyWithImpl<FHIRTypes> get copyWith =>
      FHIRTypesCopyWithImpl<FHIRTypes>(
        this,
        (v) => v as FHIRTypes,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class FHIRTypesCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  FHIRTypesCopyWithImpl(super._value, super._then);

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
      FHIRTypes(
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
