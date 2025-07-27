// ignore_for_file: constant_identifier_names

/// An enum representing the different FHIR resource types.
enum R5ResourceType {
  /// Account
  Account,

  /// ActivityDefinition
  ActivityDefinition,

  /// ActorDefinition
  ActorDefinition,

  /// AdministrableProductDefinition
  AdministrableProductDefinition,

  /// AdverseEvent
  AdverseEvent,

  /// AllergyIntolerance
  AllergyIntolerance,

  /// Appointment
  Appointment,

  /// AppointmentResponse
  AppointmentResponse,

  /// ArtifactAssessment
  ArtifactAssessment,

  /// AuditEvent
  AuditEvent,

  /// Basic
  Basic,

  /// Binary
  Binary,

  /// BiologicallyDerivedProduct
  BiologicallyDerivedProduct,

  /// BiologicallyDerivedProductDispense
  BiologicallyDerivedProductDispense,

  /// BodyStructure
  BodyStructure,

  /// Bundle
  Bundle,

  /// CapabilityStatement
  CapabilityStatement,

  /// CarePlan
  CarePlan,

  /// CareTeam
  CareTeam,

  /// ChargeItem
  ChargeItem,

  /// ChargeItemDefinition
  ChargeItemDefinition,

  /// Citation
  Citation,

  /// Claim
  Claim,

  /// ClaimResponse
  ClaimResponse,

  /// ClinicalImpression
  ClinicalImpression,

  /// ClinicalUseDefinition
  ClinicalUseDefinition,

  /// CodeSystem
  CodeSystem,

  /// Communication
  Communication,

  /// CommunicationRequest
  CommunicationRequest,

  /// CompartmentDefinition
  CompartmentDefinition,

  /// Composition
  Composition,

  /// ConceptMap
  ConceptMap,

  /// Condition
  Condition,

  /// ConditionDefinition
  ConditionDefinition,

  /// Consent
  Consent,

  /// Contract
  Contract,

  /// Coverage
  Coverage,

  /// CoverageEligibilityRequest
  CoverageEligibilityRequest,

  /// CoverageEligibilityResponse
  CoverageEligibilityResponse,

  /// DetectedIssue
  DetectedIssue,

  /// Device
  Device,

  /// DeviceAssociation
  DeviceAssociation,

  /// DeviceDefinition
  DeviceDefinition,

  /// DeviceDispense
  DeviceDispense,

  /// DeviceMetric
  DeviceMetric,

  /// DeviceRequest
  DeviceRequest,

  /// DeviceUsage
  DeviceUsage,

  /// DiagnosticReport
  DiagnosticReport,

  /// DocumentReference
  DocumentReference,

  /// Encounter
  Encounter,

  /// EncounterHistory
  EncounterHistory,

  /// EnrollmentRequest
  EnrollmentRequest,

  /// EnrollmentResponse
  EnrollmentResponse,

  /// EpisodeOfCare
  EpisodeOfCare,

  /// EventDefinition
  EventDefinition,

  /// Evidence
  Evidence,

  /// EvidenceReport
  EvidenceReport,

  /// EvidenceVariable
  EvidenceVariable,

  /// ExampleScenario
  ExampleScenario,

  /// ExplanationOfBenefit
  ExplanationOfBenefit,

  /// FamilyMemberHistory
  FamilyMemberHistory,

  /// FhirEndpoint
  FhirEndpoint,

  /// FhirGroup
  FhirGroup,

  /// FhirList
  FhirList,

  /// Flag
  Flag,

  /// FormularyItem
  FormularyItem,

  /// GenomicStudy
  GenomicStudy,

  /// Goal
  Goal,

  /// GraphDefinition
  GraphDefinition,

  /// GuidanceResponse
  GuidanceResponse,

  /// HealthcareService
  HealthcareService,

  /// ImagingSelection
  ImagingSelection,

  /// ImagingStudy
  ImagingStudy,

  /// Immunization
  Immunization,

  /// ImmunizationEvaluation
  ImmunizationEvaluation,

  /// ImmunizationRecommendation
  ImmunizationRecommendation,

  /// ImplementationGuide
  ImplementationGuide,

  /// Ingredient
  Ingredient,

  /// InsurancePlan
  InsurancePlan,

  /// InventoryItem
  InventoryItem,

  /// InventoryReport
  InventoryReport,

  /// Invoice
  Invoice,

  /// Library
  Library,

  /// Linkage
  Linkage,

  /// Location
  Location,

  /// ManufacturedItemDefinition
  ManufacturedItemDefinition,

  /// Measure
  Measure,

  /// MeasureReport
  MeasureReport,

  /// Medication
  Medication,

  /// MedicationAdministration
  MedicationAdministration,

  /// MedicationDispense
  MedicationDispense,

  /// MedicationKnowledge
  MedicationKnowledge,

  /// MedicationRequest
  MedicationRequest,

  /// MedicationStatement
  MedicationStatement,

  /// MedicinalProductDefinition
  MedicinalProductDefinition,

  /// MessageDefinition
  MessageDefinition,

  /// MessageHeader
  MessageHeader,

  /// MolecularSequence
  MolecularSequence,

  /// NamingSystem
  NamingSystem,

  /// NutritionIntake
  NutritionIntake,

  /// NutritionOrder
  NutritionOrder,

  /// NutritionProduct
  NutritionProduct,

  /// Observation
  Observation,

  /// ObservationDefinition
  ObservationDefinition,

  /// OperationDefinition
  OperationDefinition,

  /// OperationOutcome
  OperationOutcome,

  /// Organization
  Organization,

  /// OrganizationAffiliation
  OrganizationAffiliation,

  /// PackagedProductDefinition
  PackagedProductDefinition,

  /// Parameters
  Parameters,

  /// Patient
  Patient,

  /// PaymentNotice
  PaymentNotice,

  /// PaymentReconciliation
  PaymentReconciliation,

  /// Permission
  Permission,

  /// Person
  Person,

  /// PlanDefinition
  PlanDefinition,

  /// Practitioner
  Practitioner,

  /// PractitionerRole
  PractitionerRole,

  /// Procedure
  Procedure,

  /// Provenance
  Provenance,

  /// Questionnaire
  Questionnaire,

  /// QuestionnaireResponse
  QuestionnaireResponse,

  /// RegulatedAuthorization
  RegulatedAuthorization,

  /// RelatedPerson
  RelatedPerson,

  /// RequestOrchestration
  RequestOrchestration,

  /// Requirements
  Requirements,

  /// ResearchStudy
  ResearchStudy,

  /// ResearchSubject
  ResearchSubject,

  /// RiskAssessment
  RiskAssessment,

  /// Schedule
  Schedule,

  /// SearchParameter
  SearchParameter,

  /// ServiceRequest
  ServiceRequest,

  /// Slot
  Slot,

  /// Specimen
  Specimen,

  /// SpecimenDefinition
  SpecimenDefinition,

  /// StructureDefinition
  StructureDefinition,

  /// StructureMap
  StructureMap,

  /// Subscription
  Subscription,

  /// SubscriptionStatus
  SubscriptionStatus,

  /// SubscriptionTopic
  SubscriptionTopic,

  /// Substance
  Substance,

  /// SubstanceDefinition
  SubstanceDefinition,

  /// SubstanceNucleicAcid
  SubstanceNucleicAcid,

  /// SubstancePolymer
  SubstancePolymer,

  /// SubstanceProtein
  SubstanceProtein,

  /// SubstanceReferenceInformation
  SubstanceReferenceInformation,

  /// SubstanceSourceMaterial
  SubstanceSourceMaterial,

  /// SupplyDelivery
  SupplyDelivery,

  /// SupplyRequest
  SupplyRequest,

  /// Task
  Task,

  /// TerminologyCapabilities
  TerminologyCapabilities,

  /// TestPlan
  TestPlan,

  /// TestReport
  TestReport,

  /// TestScript
  TestScript,

  /// Transport
  Transport,

  /// ValueSet
  ValueSet,

  /// VerificationResult
  VerificationResult,

  /// VisionPrescription
  VisionPrescription,
  ;

  @override
  String toString() {
    switch (this) {
      case R5ResourceType.Account:
        return 'Account';
      case R5ResourceType.ActivityDefinition:
        return 'ActivityDefinition';
      case R5ResourceType.ActorDefinition:
        return 'ActorDefinition';
      case R5ResourceType.AdministrableProductDefinition:
        return 'AdministrableProductDefinition';
      case R5ResourceType.AdverseEvent:
        return 'AdverseEvent';
      case R5ResourceType.AllergyIntolerance:
        return 'AllergyIntolerance';
      case R5ResourceType.Appointment:
        return 'Appointment';
      case R5ResourceType.AppointmentResponse:
        return 'AppointmentResponse';
      case R5ResourceType.ArtifactAssessment:
        return 'ArtifactAssessment';
      case R5ResourceType.AuditEvent:
        return 'AuditEvent';
      case R5ResourceType.Basic:
        return 'Basic';
      case R5ResourceType.Binary:
        return 'Binary';
      case R5ResourceType.BiologicallyDerivedProduct:
        return 'BiologicallyDerivedProduct';
      case R5ResourceType.BiologicallyDerivedProductDispense:
        return 'BiologicallyDerivedProductDispense';
      case R5ResourceType.BodyStructure:
        return 'BodyStructure';
      case R5ResourceType.Bundle:
        return 'Bundle';
      case R5ResourceType.CapabilityStatement:
        return 'CapabilityStatement';
      case R5ResourceType.CarePlan:
        return 'CarePlan';
      case R5ResourceType.CareTeam:
        return 'CareTeam';
      case R5ResourceType.ChargeItem:
        return 'ChargeItem';
      case R5ResourceType.ChargeItemDefinition:
        return 'ChargeItemDefinition';
      case R5ResourceType.Citation:
        return 'Citation';
      case R5ResourceType.Claim:
        return 'Claim';
      case R5ResourceType.ClaimResponse:
        return 'ClaimResponse';
      case R5ResourceType.ClinicalImpression:
        return 'ClinicalImpression';
      case R5ResourceType.ClinicalUseDefinition:
        return 'ClinicalUseDefinition';
      case R5ResourceType.CodeSystem:
        return 'CodeSystem';
      case R5ResourceType.Communication:
        return 'Communication';
      case R5ResourceType.CommunicationRequest:
        return 'CommunicationRequest';
      case R5ResourceType.CompartmentDefinition:
        return 'CompartmentDefinition';
      case R5ResourceType.Composition:
        return 'Composition';
      case R5ResourceType.ConceptMap:
        return 'ConceptMap';
      case R5ResourceType.Condition:
        return 'Condition';
      case R5ResourceType.ConditionDefinition:
        return 'ConditionDefinition';
      case R5ResourceType.Consent:
        return 'Consent';
      case R5ResourceType.Contract:
        return 'Contract';
      case R5ResourceType.Coverage:
        return 'Coverage';
      case R5ResourceType.CoverageEligibilityRequest:
        return 'CoverageEligibilityRequest';
      case R5ResourceType.CoverageEligibilityResponse:
        return 'CoverageEligibilityResponse';
      case R5ResourceType.DetectedIssue:
        return 'DetectedIssue';
      case R5ResourceType.Device:
        return 'Device';
      case R5ResourceType.DeviceAssociation:
        return 'DeviceAssociation';
      case R5ResourceType.DeviceDefinition:
        return 'DeviceDefinition';
      case R5ResourceType.DeviceDispense:
        return 'DeviceDispense';
      case R5ResourceType.DeviceMetric:
        return 'DeviceMetric';
      case R5ResourceType.DeviceRequest:
        return 'DeviceRequest';
      case R5ResourceType.DeviceUsage:
        return 'DeviceUsage';
      case R5ResourceType.DiagnosticReport:
        return 'DiagnosticReport';
      case R5ResourceType.DocumentReference:
        return 'DocumentReference';
      case R5ResourceType.Encounter:
        return 'Encounter';
      case R5ResourceType.EncounterHistory:
        return 'EncounterHistory';
      case R5ResourceType.EnrollmentRequest:
        return 'EnrollmentRequest';
      case R5ResourceType.EnrollmentResponse:
        return 'EnrollmentResponse';
      case R5ResourceType.EpisodeOfCare:
        return 'EpisodeOfCare';
      case R5ResourceType.EventDefinition:
        return 'EventDefinition';
      case R5ResourceType.Evidence:
        return 'Evidence';
      case R5ResourceType.EvidenceReport:
        return 'EvidenceReport';
      case R5ResourceType.EvidenceVariable:
        return 'EvidenceVariable';
      case R5ResourceType.ExampleScenario:
        return 'ExampleScenario';
      case R5ResourceType.ExplanationOfBenefit:
        return 'ExplanationOfBenefit';
      case R5ResourceType.FamilyMemberHistory:
        return 'FamilyMemberHistory';
      case R5ResourceType.FhirEndpoint:
        return 'Endpoint';
      case R5ResourceType.FhirGroup:
        return 'Group';
      case R5ResourceType.FhirList:
        return 'List';
      case R5ResourceType.Flag:
        return 'Flag';
      case R5ResourceType.FormularyItem:
        return 'FormularyItem';
      case R5ResourceType.GenomicStudy:
        return 'GenomicStudy';
      case R5ResourceType.Goal:
        return 'Goal';
      case R5ResourceType.GraphDefinition:
        return 'GraphDefinition';
      case R5ResourceType.GuidanceResponse:
        return 'GuidanceResponse';
      case R5ResourceType.HealthcareService:
        return 'HealthcareService';
      case R5ResourceType.ImagingSelection:
        return 'ImagingSelection';
      case R5ResourceType.ImagingStudy:
        return 'ImagingStudy';
      case R5ResourceType.Immunization:
        return 'Immunization';
      case R5ResourceType.ImmunizationEvaluation:
        return 'ImmunizationEvaluation';
      case R5ResourceType.ImmunizationRecommendation:
        return 'ImmunizationRecommendation';
      case R5ResourceType.ImplementationGuide:
        return 'ImplementationGuide';
      case R5ResourceType.Ingredient:
        return 'Ingredient';
      case R5ResourceType.InsurancePlan:
        return 'InsurancePlan';
      case R5ResourceType.InventoryItem:
        return 'InventoryItem';
      case R5ResourceType.InventoryReport:
        return 'InventoryReport';
      case R5ResourceType.Invoice:
        return 'Invoice';
      case R5ResourceType.Library:
        return 'Library';
      case R5ResourceType.Linkage:
        return 'Linkage';
      case R5ResourceType.Location:
        return 'Location';
      case R5ResourceType.ManufacturedItemDefinition:
        return 'ManufacturedItemDefinition';
      case R5ResourceType.Measure:
        return 'Measure';
      case R5ResourceType.MeasureReport:
        return 'MeasureReport';
      case R5ResourceType.Medication:
        return 'Medication';
      case R5ResourceType.MedicationAdministration:
        return 'MedicationAdministration';
      case R5ResourceType.MedicationDispense:
        return 'MedicationDispense';
      case R5ResourceType.MedicationKnowledge:
        return 'MedicationKnowledge';
      case R5ResourceType.MedicationRequest:
        return 'MedicationRequest';
      case R5ResourceType.MedicationStatement:
        return 'MedicationStatement';
      case R5ResourceType.MedicinalProductDefinition:
        return 'MedicinalProductDefinition';
      case R5ResourceType.MessageDefinition:
        return 'MessageDefinition';
      case R5ResourceType.MessageHeader:
        return 'MessageHeader';
      case R5ResourceType.MolecularSequence:
        return 'MolecularSequence';
      case R5ResourceType.NamingSystem:
        return 'NamingSystem';
      case R5ResourceType.NutritionIntake:
        return 'NutritionIntake';
      case R5ResourceType.NutritionOrder:
        return 'NutritionOrder';
      case R5ResourceType.NutritionProduct:
        return 'NutritionProduct';
      case R5ResourceType.Observation:
        return 'Observation';
      case R5ResourceType.ObservationDefinition:
        return 'ObservationDefinition';
      case R5ResourceType.OperationDefinition:
        return 'OperationDefinition';
      case R5ResourceType.OperationOutcome:
        return 'OperationOutcome';
      case R5ResourceType.Organization:
        return 'Organization';
      case R5ResourceType.OrganizationAffiliation:
        return 'OrganizationAffiliation';
      case R5ResourceType.PackagedProductDefinition:
        return 'PackagedProductDefinition';
      case R5ResourceType.Parameters:
        return 'Parameters';
      case R5ResourceType.Patient:
        return 'Patient';
      case R5ResourceType.PaymentNotice:
        return 'PaymentNotice';
      case R5ResourceType.PaymentReconciliation:
        return 'PaymentReconciliation';
      case R5ResourceType.Permission:
        return 'Permission';
      case R5ResourceType.Person:
        return 'Person';
      case R5ResourceType.PlanDefinition:
        return 'PlanDefinition';
      case R5ResourceType.Practitioner:
        return 'Practitioner';
      case R5ResourceType.PractitionerRole:
        return 'PractitionerRole';
      case R5ResourceType.Procedure:
        return 'Procedure';
      case R5ResourceType.Provenance:
        return 'Provenance';
      case R5ResourceType.Questionnaire:
        return 'Questionnaire';
      case R5ResourceType.QuestionnaireResponse:
        return 'QuestionnaireResponse';
      case R5ResourceType.RegulatedAuthorization:
        return 'RegulatedAuthorization';
      case R5ResourceType.RelatedPerson:
        return 'RelatedPerson';
      case R5ResourceType.RequestOrchestration:
        return 'RequestOrchestration';
      case R5ResourceType.Requirements:
        return 'Requirements';
      case R5ResourceType.ResearchStudy:
        return 'ResearchStudy';
      case R5ResourceType.ResearchSubject:
        return 'ResearchSubject';
      case R5ResourceType.RiskAssessment:
        return 'RiskAssessment';
      case R5ResourceType.Schedule:
        return 'Schedule';
      case R5ResourceType.SearchParameter:
        return 'SearchParameter';
      case R5ResourceType.ServiceRequest:
        return 'ServiceRequest';
      case R5ResourceType.Slot:
        return 'Slot';
      case R5ResourceType.Specimen:
        return 'Specimen';
      case R5ResourceType.SpecimenDefinition:
        return 'SpecimenDefinition';
      case R5ResourceType.StructureDefinition:
        return 'StructureDefinition';
      case R5ResourceType.StructureMap:
        return 'StructureMap';
      case R5ResourceType.Subscription:
        return 'Subscription';
      case R5ResourceType.SubscriptionStatus:
        return 'SubscriptionStatus';
      case R5ResourceType.SubscriptionTopic:
        return 'SubscriptionTopic';
      case R5ResourceType.Substance:
        return 'Substance';
      case R5ResourceType.SubstanceDefinition:
        return 'SubstanceDefinition';
      case R5ResourceType.SubstanceNucleicAcid:
        return 'SubstanceNucleicAcid';
      case R5ResourceType.SubstancePolymer:
        return 'SubstancePolymer';
      case R5ResourceType.SubstanceProtein:
        return 'SubstanceProtein';
      case R5ResourceType.SubstanceReferenceInformation:
        return 'SubstanceReferenceInformation';
      case R5ResourceType.SubstanceSourceMaterial:
        return 'SubstanceSourceMaterial';
      case R5ResourceType.SupplyDelivery:
        return 'SupplyDelivery';
      case R5ResourceType.SupplyRequest:
        return 'SupplyRequest';
      case R5ResourceType.Task:
        return 'Task';
      case R5ResourceType.TerminologyCapabilities:
        return 'TerminologyCapabilities';
      case R5ResourceType.TestPlan:
        return 'TestPlan';
      case R5ResourceType.TestReport:
        return 'TestReport';
      case R5ResourceType.TestScript:
        return 'TestScript';
      case R5ResourceType.Transport:
        return 'Transport';
      case R5ResourceType.ValueSet:
        return 'ValueSet';
      case R5ResourceType.VerificationResult:
        return 'VerificationResult';
      case R5ResourceType.VisionPrescription:
        return 'VisionPrescription';
    }
  }

  /// Returns the [R5ResourceType] as a [String].
  String toJson() => toString();

  /// Returns the [R5ResourceType] from a [String].
  static R5ResourceType? fromString(String string) {
    switch (string) {
      case 'Account':
        return R5ResourceType.Account;
      case 'ActivityDefinition':
        return R5ResourceType.ActivityDefinition;
      case 'ActorDefinition':
        return R5ResourceType.ActorDefinition;
      case 'AdministrableProductDefinition':
        return R5ResourceType.AdministrableProductDefinition;
      case 'AdverseEvent':
        return R5ResourceType.AdverseEvent;
      case 'AllergyIntolerance':
        return R5ResourceType.AllergyIntolerance;
      case 'Appointment':
        return R5ResourceType.Appointment;
      case 'AppointmentResponse':
        return R5ResourceType.AppointmentResponse;
      case 'ArtifactAssessment':
        return R5ResourceType.ArtifactAssessment;
      case 'AuditEvent':
        return R5ResourceType.AuditEvent;
      case 'Basic':
        return R5ResourceType.Basic;
      case 'Binary':
        return R5ResourceType.Binary;
      case 'BiologicallyDerivedProduct':
        return R5ResourceType.BiologicallyDerivedProduct;
      case 'BiologicallyDerivedProductDispense':
        return R5ResourceType.BiologicallyDerivedProductDispense;
      case 'BodyStructure':
        return R5ResourceType.BodyStructure;
      case 'Bundle':
        return R5ResourceType.Bundle;
      case 'CapabilityStatement':
        return R5ResourceType.CapabilityStatement;
      case 'CarePlan':
        return R5ResourceType.CarePlan;
      case 'CareTeam':
        return R5ResourceType.CareTeam;
      case 'ChargeItem':
        return R5ResourceType.ChargeItem;
      case 'ChargeItemDefinition':
        return R5ResourceType.ChargeItemDefinition;
      case 'Citation':
        return R5ResourceType.Citation;
      case 'Claim':
        return R5ResourceType.Claim;
      case 'ClaimResponse':
        return R5ResourceType.ClaimResponse;
      case 'ClinicalImpression':
        return R5ResourceType.ClinicalImpression;
      case 'ClinicalUseDefinition':
        return R5ResourceType.ClinicalUseDefinition;
      case 'CodeSystem':
        return R5ResourceType.CodeSystem;
      case 'Communication':
        return R5ResourceType.Communication;
      case 'CommunicationRequest':
        return R5ResourceType.CommunicationRequest;
      case 'CompartmentDefinition':
        return R5ResourceType.CompartmentDefinition;
      case 'Composition':
        return R5ResourceType.Composition;
      case 'ConceptMap':
        return R5ResourceType.ConceptMap;
      case 'Condition':
        return R5ResourceType.Condition;
      case 'ConditionDefinition':
        return R5ResourceType.ConditionDefinition;
      case 'Consent':
        return R5ResourceType.Consent;
      case 'Contract':
        return R5ResourceType.Contract;
      case 'Coverage':
        return R5ResourceType.Coverage;
      case 'CoverageEligibilityRequest':
        return R5ResourceType.CoverageEligibilityRequest;
      case 'CoverageEligibilityResponse':
        return R5ResourceType.CoverageEligibilityResponse;
      case 'DetectedIssue':
        return R5ResourceType.DetectedIssue;
      case 'Device':
        return R5ResourceType.Device;
      case 'DeviceAssociation':
        return R5ResourceType.DeviceAssociation;
      case 'DeviceDefinition':
        return R5ResourceType.DeviceDefinition;
      case 'DeviceDispense':
        return R5ResourceType.DeviceDispense;
      case 'DeviceMetric':
        return R5ResourceType.DeviceMetric;
      case 'DeviceRequest':
        return R5ResourceType.DeviceRequest;
      case 'DeviceUsage':
        return R5ResourceType.DeviceUsage;
      case 'DiagnosticReport':
        return R5ResourceType.DiagnosticReport;
      case 'DocumentReference':
        return R5ResourceType.DocumentReference;
      case 'Encounter':
        return R5ResourceType.Encounter;
      case 'EncounterHistory':
        return R5ResourceType.EncounterHistory;
      case 'EnrollmentRequest':
        return R5ResourceType.EnrollmentRequest;
      case 'EnrollmentResponse':
        return R5ResourceType.EnrollmentResponse;
      case 'EpisodeOfCare':
        return R5ResourceType.EpisodeOfCare;
      case 'EventDefinition':
        return R5ResourceType.EventDefinition;
      case 'Evidence':
        return R5ResourceType.Evidence;
      case 'EvidenceReport':
        return R5ResourceType.EvidenceReport;
      case 'EvidenceVariable':
        return R5ResourceType.EvidenceVariable;
      case 'ExampleScenario':
        return R5ResourceType.ExampleScenario;
      case 'ExplanationOfBenefit':
        return R5ResourceType.ExplanationOfBenefit;
      case 'FamilyMemberHistory':
        return R5ResourceType.FamilyMemberHistory;
      case 'Endpoint':
        return R5ResourceType.FhirEndpoint;
      case 'Group':
        return R5ResourceType.FhirGroup;
      case 'List':
        return R5ResourceType.FhirList;
      case 'Flag':
        return R5ResourceType.Flag;
      case 'FormularyItem':
        return R5ResourceType.FormularyItem;
      case 'GenomicStudy':
        return R5ResourceType.GenomicStudy;
      case 'Goal':
        return R5ResourceType.Goal;
      case 'GraphDefinition':
        return R5ResourceType.GraphDefinition;
      case 'GuidanceResponse':
        return R5ResourceType.GuidanceResponse;
      case 'HealthcareService':
        return R5ResourceType.HealthcareService;
      case 'ImagingSelection':
        return R5ResourceType.ImagingSelection;
      case 'ImagingStudy':
        return R5ResourceType.ImagingStudy;
      case 'Immunization':
        return R5ResourceType.Immunization;
      case 'ImmunizationEvaluation':
        return R5ResourceType.ImmunizationEvaluation;
      case 'ImmunizationRecommendation':
        return R5ResourceType.ImmunizationRecommendation;
      case 'ImplementationGuide':
        return R5ResourceType.ImplementationGuide;
      case 'Ingredient':
        return R5ResourceType.Ingredient;
      case 'InsurancePlan':
        return R5ResourceType.InsurancePlan;
      case 'InventoryItem':
        return R5ResourceType.InventoryItem;
      case 'InventoryReport':
        return R5ResourceType.InventoryReport;
      case 'Invoice':
        return R5ResourceType.Invoice;
      case 'Library':
        return R5ResourceType.Library;
      case 'Linkage':
        return R5ResourceType.Linkage;
      case 'Location':
        return R5ResourceType.Location;
      case 'ManufacturedItemDefinition':
        return R5ResourceType.ManufacturedItemDefinition;
      case 'Measure':
        return R5ResourceType.Measure;
      case 'MeasureReport':
        return R5ResourceType.MeasureReport;
      case 'Medication':
        return R5ResourceType.Medication;
      case 'MedicationAdministration':
        return R5ResourceType.MedicationAdministration;
      case 'MedicationDispense':
        return R5ResourceType.MedicationDispense;
      case 'MedicationKnowledge':
        return R5ResourceType.MedicationKnowledge;
      case 'MedicationRequest':
        return R5ResourceType.MedicationRequest;
      case 'MedicationStatement':
        return R5ResourceType.MedicationStatement;
      case 'MedicinalProductDefinition':
        return R5ResourceType.MedicinalProductDefinition;
      case 'MessageDefinition':
        return R5ResourceType.MessageDefinition;
      case 'MessageHeader':
        return R5ResourceType.MessageHeader;
      case 'MolecularSequence':
        return R5ResourceType.MolecularSequence;
      case 'NamingSystem':
        return R5ResourceType.NamingSystem;
      case 'NutritionIntake':
        return R5ResourceType.NutritionIntake;
      case 'NutritionOrder':
        return R5ResourceType.NutritionOrder;
      case 'NutritionProduct':
        return R5ResourceType.NutritionProduct;
      case 'Observation':
        return R5ResourceType.Observation;
      case 'ObservationDefinition':
        return R5ResourceType.ObservationDefinition;
      case 'OperationDefinition':
        return R5ResourceType.OperationDefinition;
      case 'OperationOutcome':
        return R5ResourceType.OperationOutcome;
      case 'Organization':
        return R5ResourceType.Organization;
      case 'OrganizationAffiliation':
        return R5ResourceType.OrganizationAffiliation;
      case 'PackagedProductDefinition':
        return R5ResourceType.PackagedProductDefinition;
      case 'Parameters':
        return R5ResourceType.Parameters;
      case 'Patient':
        return R5ResourceType.Patient;
      case 'PaymentNotice':
        return R5ResourceType.PaymentNotice;
      case 'PaymentReconciliation':
        return R5ResourceType.PaymentReconciliation;
      case 'Permission':
        return R5ResourceType.Permission;
      case 'Person':
        return R5ResourceType.Person;
      case 'PlanDefinition':
        return R5ResourceType.PlanDefinition;
      case 'Practitioner':
        return R5ResourceType.Practitioner;
      case 'PractitionerRole':
        return R5ResourceType.PractitionerRole;
      case 'Procedure':
        return R5ResourceType.Procedure;
      case 'Provenance':
        return R5ResourceType.Provenance;
      case 'Questionnaire':
        return R5ResourceType.Questionnaire;
      case 'QuestionnaireResponse':
        return R5ResourceType.QuestionnaireResponse;
      case 'RegulatedAuthorization':
        return R5ResourceType.RegulatedAuthorization;
      case 'RelatedPerson':
        return R5ResourceType.RelatedPerson;
      case 'RequestOrchestration':
        return R5ResourceType.RequestOrchestration;
      case 'Requirements':
        return R5ResourceType.Requirements;
      case 'ResearchStudy':
        return R5ResourceType.ResearchStudy;
      case 'ResearchSubject':
        return R5ResourceType.ResearchSubject;
      case 'RiskAssessment':
        return R5ResourceType.RiskAssessment;
      case 'Schedule':
        return R5ResourceType.Schedule;
      case 'SearchParameter':
        return R5ResourceType.SearchParameter;
      case 'ServiceRequest':
        return R5ResourceType.ServiceRequest;
      case 'Slot':
        return R5ResourceType.Slot;
      case 'Specimen':
        return R5ResourceType.Specimen;
      case 'SpecimenDefinition':
        return R5ResourceType.SpecimenDefinition;
      case 'StructureDefinition':
        return R5ResourceType.StructureDefinition;
      case 'StructureMap':
        return R5ResourceType.StructureMap;
      case 'Subscription':
        return R5ResourceType.Subscription;
      case 'SubscriptionStatus':
        return R5ResourceType.SubscriptionStatus;
      case 'SubscriptionTopic':
        return R5ResourceType.SubscriptionTopic;
      case 'Substance':
        return R5ResourceType.Substance;
      case 'SubstanceDefinition':
        return R5ResourceType.SubstanceDefinition;
      case 'SubstanceNucleicAcid':
        return R5ResourceType.SubstanceNucleicAcid;
      case 'SubstancePolymer':
        return R5ResourceType.SubstancePolymer;
      case 'SubstanceProtein':
        return R5ResourceType.SubstanceProtein;
      case 'SubstanceReferenceInformation':
        return R5ResourceType.SubstanceReferenceInformation;
      case 'SubstanceSourceMaterial':
        return R5ResourceType.SubstanceSourceMaterial;
      case 'SupplyDelivery':
        return R5ResourceType.SupplyDelivery;
      case 'SupplyRequest':
        return R5ResourceType.SupplyRequest;
      case 'Task':
        return R5ResourceType.Task;
      case 'TerminologyCapabilities':
        return R5ResourceType.TerminologyCapabilities;
      case 'TestPlan':
        return R5ResourceType.TestPlan;
      case 'TestReport':
        return R5ResourceType.TestReport;
      case 'TestScript':
        return R5ResourceType.TestScript;
      case 'Transport':
        return R5ResourceType.Transport;
      case 'ValueSet':
        return R5ResourceType.ValueSet;
      case 'VerificationResult':
        return R5ResourceType.VerificationResult;
      case 'VisionPrescription':
        return R5ResourceType.VisionPrescription;
      default:
        return null;
    }
  }

  /// Returns a list of [R5ResourceType] from a [dynamic] object.
  static R5ResourceType? fromJson(dynamic json) {
    if (json is String) {
      return fromString(json);
    }
    return null;
  }

  /// Returns a list of [R5ResourceType] as [String]s.
  static List<String> get typesAsStrings => <String>[
        'Account',
        'ActivityDefinition',
        'ActorDefinition',
        'AdministrableProductDefinition',
        'AdverseEvent',
        'AllergyIntolerance',
        'Appointment',
        'AppointmentResponse',
        'ArtifactAssessment',
        'AuditEvent',
        'Basic',
        'Binary',
        'BiologicallyDerivedProduct',
        'BiologicallyDerivedProductDispense',
        'BodyStructure',
        'Bundle',
        'CapabilityStatement',
        'CarePlan',
        'CareTeam',
        'ChargeItem',
        'ChargeItemDefinition',
        'Citation',
        'Claim',
        'ClaimResponse',
        'ClinicalImpression',
        'ClinicalUseDefinition',
        'CodeSystem',
        'Communication',
        'CommunicationRequest',
        'CompartmentDefinition',
        'Composition',
        'ConceptMap',
        'Condition',
        'ConditionDefinition',
        'Consent',
        'Contract',
        'Coverage',
        'CoverageEligibilityRequest',
        'CoverageEligibilityResponse',
        'DetectedIssue',
        'Device',
        'DeviceAssociation',
        'DeviceDefinition',
        'DeviceDispense',
        'DeviceMetric',
        'DeviceRequest',
        'DeviceUsage',
        'DiagnosticReport',
        'DocumentReference',
        'Encounter',
        'EncounterHistory',
        'EnrollmentRequest',
        'EnrollmentResponse',
        'EpisodeOfCare',
        'EventDefinition',
        'Evidence',
        'EvidenceReport',
        'EvidenceVariable',
        'ExampleScenario',
        'ExplanationOfBenefit',
        'FamilyMemberHistory',
        'Endpoint',
        'Group',
        'List',
        'Flag',
        'FormularyItem',
        'GenomicStudy',
        'Goal',
        'GraphDefinition',
        'GuidanceResponse',
        'HealthcareService',
        'ImagingSelection',
        'ImagingStudy',
        'Immunization',
        'ImmunizationEvaluation',
        'ImmunizationRecommendation',
        'ImplementationGuide',
        'Ingredient',
        'InsurancePlan',
        'InventoryItem',
        'InventoryReport',
        'Invoice',
        'Library',
        'Linkage',
        'Location',
        'ManufacturedItemDefinition',
        'Measure',
        'MeasureReport',
        'Medication',
        'MedicationAdministration',
        'MedicationDispense',
        'MedicationKnowledge',
        'MedicationRequest',
        'MedicationStatement',
        'MedicinalProductDefinition',
        'MessageDefinition',
        'MessageHeader',
        'MolecularSequence',
        'NamingSystem',
        'NutritionIntake',
        'NutritionOrder',
        'NutritionProduct',
        'Observation',
        'ObservationDefinition',
        'OperationDefinition',
        'OperationOutcome',
        'Organization',
        'OrganizationAffiliation',
        'PackagedProductDefinition',
        'Parameters',
        'Patient',
        'PaymentNotice',
        'PaymentReconciliation',
        'Permission',
        'Person',
        'PlanDefinition',
        'Practitioner',
        'PractitionerRole',
        'Procedure',
        'Provenance',
        'Questionnaire',
        'QuestionnaireResponse',
        'RegulatedAuthorization',
        'RelatedPerson',
        'RequestOrchestration',
        'Requirements',
        'ResearchStudy',
        'ResearchSubject',
        'RiskAssessment',
        'Schedule',
        'SearchParameter',
        'ServiceRequest',
        'Slot',
        'Specimen',
        'SpecimenDefinition',
        'StructureDefinition',
        'StructureMap',
        'Subscription',
        'SubscriptionStatus',
        'SubscriptionTopic',
        'Substance',
        'SubstanceDefinition',
        'SubstanceNucleicAcid',
        'SubstancePolymer',
        'SubstanceProtein',
        'SubstanceReferenceInformation',
        'SubstanceSourceMaterial',
        'SupplyDelivery',
        'SupplyRequest',
        'Task',
        'TerminologyCapabilities',
        'TestPlan',
        'TestReport',
        'TestScript',
        'Transport',
        'ValueSet',
        'VerificationResult',
        'VisionPrescription',
      ];
}
