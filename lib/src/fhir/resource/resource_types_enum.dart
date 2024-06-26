part of 'resource.dart';

enum R6ResourceType {
  @JsonValue('Account')
  Account,

  @JsonValue('ActivityDefinition')
  ActivityDefinition,

  @JsonValue('ActorDefinition')
  ActorDefinition,

  @JsonValue('AdministrableProductDefinition')
  AdministrableProductDefinition,

  @JsonValue('AdverseEvent')
  AdverseEvent,

  @JsonValue('AllergyIntolerance')
  AllergyIntolerance,

  @JsonValue('Appointment')
  Appointment,

  @JsonValue('AppointmentResponse')
  AppointmentResponse,

  @JsonValue('ArtifactAssessment')
  ArtifactAssessment,

  @JsonValue('AuditEvent')
  AuditEvent,

  @JsonValue('Basic')
  Basic,

  @JsonValue('Binary')
  Binary,

  @JsonValue('BiologicallyDerivedProduct')
  BiologicallyDerivedProduct,

  @JsonValue('BiologicallyDerivedProductDispense')
  BiologicallyDerivedProductDispense,

  @JsonValue('BodyStructure')
  BodyStructure,

  @JsonValue('Bundle')
  Bundle,

  @JsonValue('CapabilityStatement')
  CapabilityStatement,

  @JsonValue('CarePlan')
  CarePlan,

  @JsonValue('CareTeam')
  CareTeam,

  @JsonValue('ChargeItem')
  ChargeItem,

  @JsonValue('ChargeItemDefinition')
  ChargeItemDefinition,

  @JsonValue('Citation')
  Citation,

  @JsonValue('Claim')
  Claim,

  @JsonValue('ClaimResponse')
  ClaimResponse,

  @JsonValue('ClinicalImpression')
  ClinicalImpression,

  @JsonValue('ClinicalUseDefinition')
  ClinicalUseDefinition,

  @JsonValue('CodeSystem')
  CodeSystem,

  @JsonValue('Communication')
  Communication,

  @JsonValue('CommunicationRequest')
  CommunicationRequest,

  @JsonValue('CompartmentDefinition')
  CompartmentDefinition,

  @JsonValue('Composition')
  Composition,

  @JsonValue('ConceptMap')
  ConceptMap,

  @JsonValue('Condition')
  Condition,

  @JsonValue('ConditionDefinition')
  ConditionDefinition,

  @JsonValue('Consent')
  Consent,

  @JsonValue('Contract')
  Contract,

  @JsonValue('Coverage')
  Coverage,

  @JsonValue('CoverageEligibilityRequest')
  CoverageEligibilityRequest,

  @JsonValue('CoverageEligibilityResponse')
  CoverageEligibilityResponse,

  @JsonValue('DetectedIssue')
  DetectedIssue,

  @JsonValue('Device')
  Device,

  @JsonValue('DeviceAssociation')
  DeviceAssociation,

  @JsonValue('DeviceDefinition')
  DeviceDefinition,

  @JsonValue('DeviceDispense')
  DeviceDispense,

  @JsonValue('DeviceMetric')
  DeviceMetric,

  @JsonValue('DeviceRequest')
  DeviceRequest,

  @JsonValue('DeviceUsage')
  DeviceUsage,

  @JsonValue('DiagnosticReport')
  DiagnosticReport,

  @JsonValue('DocumentReference')
  DocumentReference,

  @JsonValue('Encounter')
  Encounter,

  @JsonValue('EncounterHistory')
  EncounterHistory,

  @JsonValue('Endpoint')
  Endpoint,

  @JsonValue('EnrollmentRequest')
  EnrollmentRequest,

  @JsonValue('EnrollmentResponse')
  EnrollmentResponse,

  @JsonValue('EpisodeOfCare')
  EpisodeOfCare,

  @JsonValue('EventDefinition')
  EventDefinition,

  @JsonValue('Evidence')
  Evidence,

  @JsonValue('EvidenceReport')
  EvidenceReport,

  @JsonValue('EvidenceVariable')
  EvidenceVariable,

  @JsonValue('ExampleScenario')
  ExampleScenario,

  @JsonValue('ExplanationOfBenefit')
  ExplanationOfBenefit,

  @JsonValue('FamilyMemberHistory')
  FamilyMemberHistory,

  @JsonValue('Flag')
  Flag,

  @JsonValue('FormularyItem')
  FormularyItem,

  @JsonValue('GenomicStudy')
  GenomicStudy,

  @JsonValue('Goal')
  Goal,

  @JsonValue('GraphDefinition')
  GraphDefinition,

  @JsonValue('Group')
  Group,

  @JsonValue('GuidanceResponse')
  GuidanceResponse,

  @JsonValue('HealthcareService')
  HealthcareService,

  @JsonValue('ImagingSelection')
  ImagingSelection,

  @JsonValue('ImagingStudy')
  ImagingStudy,

  @JsonValue('Immunization')
  Immunization,

  @JsonValue('ImmunizationEvaluation')
  ImmunizationEvaluation,

  @JsonValue('ImmunizationRecommendation')
  ImmunizationRecommendation,

  @JsonValue('ImplementationGuide')
  ImplementationGuide,

  @JsonValue('Ingredient')
  Ingredient,

  @JsonValue('InsurancePlan')
  InsurancePlan,

  @JsonValue('InsuranceProduct')
  InsuranceProduct,

  @JsonValue('InventoryItem')
  InventoryItem,

  @JsonValue('InventoryReport')
  InventoryReport,

  @JsonValue('Invoice')
  Invoice,

  @JsonValue('Library')
  Library,

  @JsonValue('Linkage')
  Linkage,

  @JsonValue('List')
  FhirList,

  @JsonValue('Location')
  Location,

  @JsonValue('ManufacturedItemDefinition')
  ManufacturedItemDefinition,

  @JsonValue('Measure')
  Measure,

  @JsonValue('MeasureReport')
  MeasureReport,

  @JsonValue('Medication')
  Medication,

  @JsonValue('MedicationAdministration')
  MedicationAdministration,

  @JsonValue('MedicationDispense')
  MedicationDispense,

  @JsonValue('MedicationKnowledge')
  MedicationKnowledge,

  @JsonValue('MedicationRequest')
  MedicationRequest,

  @JsonValue('MedicationStatement')
  MedicationStatement,

  @JsonValue('MedicinalProductDefinition')
  MedicinalProductDefinition,

  @JsonValue('MessageDefinition')
  MessageDefinition,

  @JsonValue('MessageHeader')
  MessageHeader,

  @JsonValue('MolecularSequence')
  MolecularSequence,

  @JsonValue('NamingSystem')
  NamingSystem,

  @JsonValue('NutritionIntake')
  NutritionIntake,

  @JsonValue('NutritionOrder')
  NutritionOrder,

  @JsonValue('NutritionProduct')
  NutritionProduct,

  @JsonValue('Observation')
  Observation,

  @JsonValue('ObservationDefinition')
  ObservationDefinition,

  @JsonValue('OperationDefinition')
  OperationDefinition,

  @JsonValue('OperationOutcome')
  OperationOutcome,

  @JsonValue('Organization')
  Organization,

  @JsonValue('OrganizationAffiliation')
  OrganizationAffiliation,

  @JsonValue('PackagedProductDefinition')
  PackagedProductDefinition,

  @JsonValue('Parameters')
  Parameters,

  @JsonValue('Patient')
  Patient,

  @JsonValue('PaymentNotice')
  PaymentNotice,

  @JsonValue('PaymentReconciliation')
  PaymentReconciliation,

  @JsonValue('Permission')
  Permission,

  @JsonValue('Person')
  Person,

  @JsonValue('PlanDefinition')
  PlanDefinition,

  @JsonValue('Practitioner')
  Practitioner,

  @JsonValue('PractitionerRole')
  PractitionerRole,

  @JsonValue('Procedure')
  Procedure,

  @JsonValue('Provenance')
  Provenance,

  @JsonValue('Questionnaire')
  Questionnaire,

  @JsonValue('QuestionnaireResponse')
  QuestionnaireResponse,

  @JsonValue('RegulatedAuthorization')
  RegulatedAuthorization,

  @JsonValue('RelatedPerson')
  RelatedPerson,

  @JsonValue('RequestOrchestration')
  RequestOrchestration,

  @JsonValue('Requirements')
  Requirements,

  @JsonValue('ResearchStudy')
  ResearchStudy,

  @JsonValue('ResearchSubject')
  ResearchSubject,

  @JsonValue('RiskAssessment')
  RiskAssessment,

  @JsonValue('Schedule')
  Schedule,

  @JsonValue('SearchParameter')
  SearchParameter,

  @JsonValue('ServiceRequest')
  ServiceRequest,

  @JsonValue('Slot')
  Slot,

  @JsonValue('Specimen')
  Specimen,

  @JsonValue('SpecimenDefinition')
  SpecimenDefinition,

  @JsonValue('StructureDefinition')
  StructureDefinition,

  @JsonValue('StructureMap')
  StructureMap,

  @JsonValue('Subscription')
  Subscription,

  @JsonValue('SubscriptionStatus')
  SubscriptionStatus,

  @JsonValue('SubscriptionTopic')
  SubscriptionTopic,

  @JsonValue('Substance')
  Substance,

  @JsonValue('SubstanceDefinition')
  SubstanceDefinition,

  @JsonValue('SubstanceNucleicAcid')
  SubstanceNucleicAcid,

  @JsonValue('SubstancePolymer')
  SubstancePolymer,

  @JsonValue('SubstanceProtein')
  SubstanceProtein,

  @JsonValue('SubstanceReferenceInformation')
  SubstanceReferenceInformation,

  @JsonValue('SubstanceSourceMaterial')
  SubstanceSourceMaterial,

  @JsonValue('SupplyDelivery')
  SupplyDelivery,

  @JsonValue('SupplyRequest')
  SupplyRequest,

  @JsonValue('Task')
  Task,

  @JsonValue('TerminologyCapabilities')
  TerminologyCapabilities,

  @JsonValue('TestPlan')
  TestPlan,

  @JsonValue('TestReport')
  TestReport,

  @JsonValue('TestScript')
  TestScript,

  @JsonValue('Transport')
  Transport,

  @JsonValue('ValueSet')
  ValueSet,

  @JsonValue('VerificationResult')
  VerificationResult,

  @JsonValue('VisionPrescription')
  VisionPrescription;

  @override
  String toString() {
    switch (this) {
      case R6ResourceType.Account:
        return 'Account';

      case R6ResourceType.ActivityDefinition:
        return 'ActivityDefinition';

      case R6ResourceType.ActorDefinition:
        return 'ActorDefinition';

      case R6ResourceType.AdministrableProductDefinition:
        return 'AdministrableProductDefinition';

      case R6ResourceType.AdverseEvent:
        return 'AdverseEvent';

      case R6ResourceType.AllergyIntolerance:
        return 'AllergyIntolerance';

      case R6ResourceType.Appointment:
        return 'Appointment';

      case R6ResourceType.AppointmentResponse:
        return 'AppointmentResponse';

      case R6ResourceType.ArtifactAssessment:
        return 'ArtifactAssessment';

      case R6ResourceType.AuditEvent:
        return 'AuditEvent';

      case R6ResourceType.Basic:
        return 'Basic';

      case R6ResourceType.Binary:
        return 'Binary';

      case R6ResourceType.BiologicallyDerivedProduct:
        return 'BiologicallyDerivedProduct';

      case R6ResourceType.BiologicallyDerivedProductDispense:
        return 'BiologicallyDerivedProductDispense';

      case R6ResourceType.BodyStructure:
        return 'BodyStructure';

      case R6ResourceType.Bundle:
        return 'Bundle';

      case R6ResourceType.CapabilityStatement:
        return 'CapabilityStatement';

      case R6ResourceType.CarePlan:
        return 'CarePlan';

      case R6ResourceType.CareTeam:
        return 'CareTeam';

      case R6ResourceType.ChargeItem:
        return 'ChargeItem';

      case R6ResourceType.ChargeItemDefinition:
        return 'ChargeItemDefinition';

      case R6ResourceType.Citation:
        return 'Citation';

      case R6ResourceType.Claim:
        return 'Claim';

      case R6ResourceType.ClaimResponse:
        return 'ClaimResponse';

      case R6ResourceType.ClinicalImpression:
        return 'ClinicalImpression';

      case R6ResourceType.ClinicalUseDefinition:
        return 'ClinicalUseDefinition';

      case R6ResourceType.CodeSystem:
        return 'CodeSystem';

      case R6ResourceType.Communication:
        return 'Communication';

      case R6ResourceType.CommunicationRequest:
        return 'CommunicationRequest';

      case R6ResourceType.CompartmentDefinition:
        return 'CompartmentDefinition';

      case R6ResourceType.Composition:
        return 'Composition';

      case R6ResourceType.ConceptMap:
        return 'ConceptMap';

      case R6ResourceType.Condition:
        return 'Condition';

      case R6ResourceType.ConditionDefinition:
        return 'ConditionDefinition';

      case R6ResourceType.Consent:
        return 'Consent';

      case R6ResourceType.Contract:
        return 'Contract';

      case R6ResourceType.Coverage:
        return 'Coverage';

      case R6ResourceType.CoverageEligibilityRequest:
        return 'CoverageEligibilityRequest';

      case R6ResourceType.CoverageEligibilityResponse:
        return 'CoverageEligibilityResponse';

      case R6ResourceType.DetectedIssue:
        return 'DetectedIssue';

      case R6ResourceType.Device:
        return 'Device';

      case R6ResourceType.DeviceAssociation:
        return 'DeviceAssociation';

      case R6ResourceType.DeviceDefinition:
        return 'DeviceDefinition';

      case R6ResourceType.DeviceDispense:
        return 'DeviceDispense';

      case R6ResourceType.DeviceMetric:
        return 'DeviceMetric';

      case R6ResourceType.DeviceRequest:
        return 'DeviceRequest';

      case R6ResourceType.DeviceUsage:
        return 'DeviceUsage';

      case R6ResourceType.DiagnosticReport:
        return 'DiagnosticReport';

      case R6ResourceType.DocumentReference:
        return 'DocumentReference';

      case R6ResourceType.Encounter:
        return 'Encounter';

      case R6ResourceType.EncounterHistory:
        return 'EncounterHistory';

      case R6ResourceType.Endpoint:
        return 'Endpoint';

      case R6ResourceType.EnrollmentRequest:
        return 'EnrollmentRequest';

      case R6ResourceType.EnrollmentResponse:
        return 'EnrollmentResponse';

      case R6ResourceType.EpisodeOfCare:
        return 'EpisodeOfCare';

      case R6ResourceType.EventDefinition:
        return 'EventDefinition';

      case R6ResourceType.Evidence:
        return 'Evidence';

      case R6ResourceType.EvidenceReport:
        return 'EvidenceReport';

      case R6ResourceType.EvidenceVariable:
        return 'EvidenceVariable';

      case R6ResourceType.ExampleScenario:
        return 'ExampleScenario';

      case R6ResourceType.ExplanationOfBenefit:
        return 'ExplanationOfBenefit';

      case R6ResourceType.FamilyMemberHistory:
        return 'FamilyMemberHistory';

      case R6ResourceType.Flag:
        return 'Flag';

      case R6ResourceType.FormularyItem:
        return 'FormularyItem';

      case R6ResourceType.GenomicStudy:
        return 'GenomicStudy';

      case R6ResourceType.Goal:
        return 'Goal';

      case R6ResourceType.GraphDefinition:
        return 'GraphDefinition';

      case R6ResourceType.Group:
        return 'Group';

      case R6ResourceType.GuidanceResponse:
        return 'GuidanceResponse';

      case R6ResourceType.HealthcareService:
        return 'HealthcareService';

      case R6ResourceType.ImagingSelection:
        return 'ImagingSelection';

      case R6ResourceType.ImagingStudy:
        return 'ImagingStudy';

      case R6ResourceType.Immunization:
        return 'Immunization';

      case R6ResourceType.ImmunizationEvaluation:
        return 'ImmunizationEvaluation';

      case R6ResourceType.ImmunizationRecommendation:
        return 'ImmunizationRecommendation';

      case R6ResourceType.ImplementationGuide:
        return 'ImplementationGuide';

      case R6ResourceType.Ingredient:
        return 'Ingredient';

      case R6ResourceType.InsurancePlan:
        return 'InsurancePlan';

      case R6ResourceType.InsuranceProduct:
        return 'InsuranceProduct';

      case R6ResourceType.InventoryItem:
        return 'InventoryItem';

      case R6ResourceType.InventoryReport:
        return 'InventoryReport';

      case R6ResourceType.Invoice:
        return 'Invoice';

      case R6ResourceType.Library:
        return 'Library';

      case R6ResourceType.Linkage:
        return 'Linkage';

      case R6ResourceType.FhirList:
        return 'List';

      case R6ResourceType.Location:
        return 'Location';

      case R6ResourceType.ManufacturedItemDefinition:
        return 'ManufacturedItemDefinition';

      case R6ResourceType.Measure:
        return 'Measure';

      case R6ResourceType.MeasureReport:
        return 'MeasureReport';

      case R6ResourceType.Medication:
        return 'Medication';

      case R6ResourceType.MedicationAdministration:
        return 'MedicationAdministration';

      case R6ResourceType.MedicationDispense:
        return 'MedicationDispense';

      case R6ResourceType.MedicationKnowledge:
        return 'MedicationKnowledge';

      case R6ResourceType.MedicationRequest:
        return 'MedicationRequest';

      case R6ResourceType.MedicationStatement:
        return 'MedicationStatement';

      case R6ResourceType.MedicinalProductDefinition:
        return 'MedicinalProductDefinition';

      case R6ResourceType.MessageDefinition:
        return 'MessageDefinition';

      case R6ResourceType.MessageHeader:
        return 'MessageHeader';

      case R6ResourceType.MolecularSequence:
        return 'MolecularSequence';

      case R6ResourceType.NamingSystem:
        return 'NamingSystem';

      case R6ResourceType.NutritionIntake:
        return 'NutritionIntake';

      case R6ResourceType.NutritionOrder:
        return 'NutritionOrder';

      case R6ResourceType.NutritionProduct:
        return 'NutritionProduct';

      case R6ResourceType.Observation:
        return 'Observation';

      case R6ResourceType.ObservationDefinition:
        return 'ObservationDefinition';

      case R6ResourceType.OperationDefinition:
        return 'OperationDefinition';

      case R6ResourceType.OperationOutcome:
        return 'OperationOutcome';

      case R6ResourceType.Organization:
        return 'Organization';

      case R6ResourceType.OrganizationAffiliation:
        return 'OrganizationAffiliation';

      case R6ResourceType.PackagedProductDefinition:
        return 'PackagedProductDefinition';

      case R6ResourceType.Parameters:
        return 'Parameters';

      case R6ResourceType.Patient:
        return 'Patient';

      case R6ResourceType.PaymentNotice:
        return 'PaymentNotice';

      case R6ResourceType.PaymentReconciliation:
        return 'PaymentReconciliation';

      case R6ResourceType.Permission:
        return 'Permission';

      case R6ResourceType.Person:
        return 'Person';

      case R6ResourceType.PlanDefinition:
        return 'PlanDefinition';

      case R6ResourceType.Practitioner:
        return 'Practitioner';

      case R6ResourceType.PractitionerRole:
        return 'PractitionerRole';

      case R6ResourceType.Procedure:
        return 'Procedure';

      case R6ResourceType.Provenance:
        return 'Provenance';

      case R6ResourceType.Questionnaire:
        return 'Questionnaire';

      case R6ResourceType.QuestionnaireResponse:
        return 'QuestionnaireResponse';

      case R6ResourceType.RegulatedAuthorization:
        return 'RegulatedAuthorization';

      case R6ResourceType.RelatedPerson:
        return 'RelatedPerson';

      case R6ResourceType.RequestOrchestration:
        return 'RequestOrchestration';

      case R6ResourceType.Requirements:
        return 'Requirements';

      case R6ResourceType.ResearchStudy:
        return 'ResearchStudy';

      case R6ResourceType.ResearchSubject:
        return 'ResearchSubject';

      case R6ResourceType.RiskAssessment:
        return 'RiskAssessment';

      case R6ResourceType.Schedule:
        return 'Schedule';

      case R6ResourceType.SearchParameter:
        return 'SearchParameter';

      case R6ResourceType.ServiceRequest:
        return 'ServiceRequest';

      case R6ResourceType.Slot:
        return 'Slot';

      case R6ResourceType.Specimen:
        return 'Specimen';

      case R6ResourceType.SpecimenDefinition:
        return 'SpecimenDefinition';

      case R6ResourceType.StructureDefinition:
        return 'StructureDefinition';

      case R6ResourceType.StructureMap:
        return 'StructureMap';

      case R6ResourceType.Subscription:
        return 'Subscription';

      case R6ResourceType.SubscriptionStatus:
        return 'SubscriptionStatus';

      case R6ResourceType.SubscriptionTopic:
        return 'SubscriptionTopic';

      case R6ResourceType.Substance:
        return 'Substance';

      case R6ResourceType.SubstanceDefinition:
        return 'SubstanceDefinition';

      case R6ResourceType.SubstanceNucleicAcid:
        return 'SubstanceNucleicAcid';

      case R6ResourceType.SubstancePolymer:
        return 'SubstancePolymer';

      case R6ResourceType.SubstanceProtein:
        return 'SubstanceProtein';

      case R6ResourceType.SubstanceReferenceInformation:
        return 'SubstanceReferenceInformation';

      case R6ResourceType.SubstanceSourceMaterial:
        return 'SubstanceSourceMaterial';

      case R6ResourceType.SupplyDelivery:
        return 'SupplyDelivery';

      case R6ResourceType.SupplyRequest:
        return 'SupplyRequest';

      case R6ResourceType.Task:
        return 'Task';

      case R6ResourceType.TerminologyCapabilities:
        return 'TerminologyCapabilities';

      case R6ResourceType.TestPlan:
        return 'TestPlan';

      case R6ResourceType.TestReport:
        return 'TestReport';

      case R6ResourceType.TestScript:
        return 'TestScript';

      case R6ResourceType.Transport:
        return 'Transport';

      case R6ResourceType.ValueSet:
        return 'ValueSet';

      case R6ResourceType.VerificationResult:
        return 'VerificationResult';

      case R6ResourceType.VisionPrescription:
        return 'VisionPrescription';
    }
  }

  String toJson() => toString();

  static R6ResourceType? fromString(String string) {
    switch (string) {
      case 'Account':
        return R6ResourceType.Account;
      case 'ActivityDefinition':
        return R6ResourceType.ActivityDefinition;
      case 'ActorDefinition':
        return R6ResourceType.ActorDefinition;
      case 'AdministrableProductDefinition':
        return R6ResourceType.AdministrableProductDefinition;
      case 'AdverseEvent':
        return R6ResourceType.AdverseEvent;
      case 'AllergyIntolerance':
        return R6ResourceType.AllergyIntolerance;
      case 'Appointment':
        return R6ResourceType.Appointment;
      case 'AppointmentResponse':
        return R6ResourceType.AppointmentResponse;
      case 'ArtifactAssessment':
        return R6ResourceType.ArtifactAssessment;
      case 'AuditEvent':
        return R6ResourceType.AuditEvent;
      case 'Basic':
        return R6ResourceType.Basic;
      case 'Binary':
        return R6ResourceType.Binary;
      case 'BiologicallyDerivedProduct':
        return R6ResourceType.BiologicallyDerivedProduct;
      case 'BiologicallyDerivedProductDispense':
        return R6ResourceType.BiologicallyDerivedProductDispense;
      case 'BodyStructure':
        return R6ResourceType.BodyStructure;
      case 'Bundle':
        return R6ResourceType.Bundle;
      case 'CapabilityStatement':
        return R6ResourceType.CapabilityStatement;
      case 'CarePlan':
        return R6ResourceType.CarePlan;
      case 'CareTeam':
        return R6ResourceType.CareTeam;
      case 'ChargeItem':
        return R6ResourceType.ChargeItem;
      case 'ChargeItemDefinition':
        return R6ResourceType.ChargeItemDefinition;
      case 'Citation':
        return R6ResourceType.Citation;
      case 'Claim':
        return R6ResourceType.Claim;
      case 'ClaimResponse':
        return R6ResourceType.ClaimResponse;
      case 'ClinicalImpression':
        return R6ResourceType.ClinicalImpression;
      case 'ClinicalUseDefinition':
        return R6ResourceType.ClinicalUseDefinition;
      case 'CodeSystem':
        return R6ResourceType.CodeSystem;
      case 'Communication':
        return R6ResourceType.Communication;
      case 'CommunicationRequest':
        return R6ResourceType.CommunicationRequest;
      case 'CompartmentDefinition':
        return R6ResourceType.CompartmentDefinition;
      case 'Composition':
        return R6ResourceType.Composition;
      case 'ConceptMap':
        return R6ResourceType.ConceptMap;
      case 'Condition':
        return R6ResourceType.Condition;
      case 'ConditionDefinition':
        return R6ResourceType.ConditionDefinition;
      case 'Consent':
        return R6ResourceType.Consent;
      case 'Contract':
        return R6ResourceType.Contract;
      case 'Coverage':
        return R6ResourceType.Coverage;
      case 'CoverageEligibilityRequest':
        return R6ResourceType.CoverageEligibilityRequest;
      case 'CoverageEligibilityResponse':
        return R6ResourceType.CoverageEligibilityResponse;
      case 'DetectedIssue':
        return R6ResourceType.DetectedIssue;
      case 'Device':
        return R6ResourceType.Device;
      case 'DeviceAssociation':
        return R6ResourceType.DeviceAssociation;
      case 'DeviceDefinition':
        return R6ResourceType.DeviceDefinition;
      case 'DeviceDispense':
        return R6ResourceType.DeviceDispense;
      case 'DeviceMetric':
        return R6ResourceType.DeviceMetric;
      case 'DeviceRequest':
        return R6ResourceType.DeviceRequest;
      case 'DeviceUsage':
        return R6ResourceType.DeviceUsage;
      case 'DiagnosticReport':
        return R6ResourceType.DiagnosticReport;
      case 'DocumentReference':
        return R6ResourceType.DocumentReference;
      case 'Encounter':
        return R6ResourceType.Encounter;
      case 'EncounterHistory':
        return R6ResourceType.EncounterHistory;
      case 'Endpoint':
        return R6ResourceType.Endpoint;
      case 'EnrollmentRequest':
        return R6ResourceType.EnrollmentRequest;
      case 'EnrollmentResponse':
        return R6ResourceType.EnrollmentResponse;
      case 'EpisodeOfCare':
        return R6ResourceType.EpisodeOfCare;
      case 'EventDefinition':
        return R6ResourceType.EventDefinition;
      case 'Evidence':
        return R6ResourceType.Evidence;
      case 'EvidenceReport':
        return R6ResourceType.EvidenceReport;
      case 'EvidenceVariable':
        return R6ResourceType.EvidenceVariable;
      case 'ExampleScenario':
        return R6ResourceType.ExampleScenario;
      case 'ExplanationOfBenefit':
        return R6ResourceType.ExplanationOfBenefit;
      case 'FamilyMemberHistory':
        return R6ResourceType.FamilyMemberHistory;
      case 'Flag':
        return R6ResourceType.Flag;
      case 'FormularyItem':
        return R6ResourceType.FormularyItem;
      case 'GenomicStudy':
        return R6ResourceType.GenomicStudy;
      case 'Goal':
        return R6ResourceType.Goal;
      case 'GraphDefinition':
        return R6ResourceType.GraphDefinition;
      case 'Group':
        return R6ResourceType.Group;
      case 'GuidanceResponse':
        return R6ResourceType.GuidanceResponse;
      case 'HealthcareService':
        return R6ResourceType.HealthcareService;
      case 'ImagingSelection':
        return R6ResourceType.ImagingSelection;
      case 'ImagingStudy':
        return R6ResourceType.ImagingStudy;
      case 'Immunization':
        return R6ResourceType.Immunization;
      case 'ImmunizationEvaluation':
        return R6ResourceType.ImmunizationEvaluation;
      case 'ImmunizationRecommendation':
        return R6ResourceType.ImmunizationRecommendation;
      case 'ImplementationGuide':
        return R6ResourceType.ImplementationGuide;
      case 'Ingredient':
        return R6ResourceType.Ingredient;
      case 'InsurancePlan':
        return R6ResourceType.InsurancePlan;
      case 'InsuranceProduct':
        return R6ResourceType.InsuranceProduct;
      case 'InventoryItem':
        return R6ResourceType.InventoryItem;
      case 'InventoryReport':
        return R6ResourceType.InventoryReport;
      case 'Invoice':
        return R6ResourceType.Invoice;
      case 'Library':
        return R6ResourceType.Library;
      case 'Linkage':
        return R6ResourceType.Linkage;
      case 'List':
        return R6ResourceType.FhirList;
      case 'Location':
        return R6ResourceType.Location;
      case 'ManufacturedItemDefinition':
        return R6ResourceType.ManufacturedItemDefinition;
      case 'Measure':
        return R6ResourceType.Measure;
      case 'MeasureReport':
        return R6ResourceType.MeasureReport;
      case 'Medication':
        return R6ResourceType.Medication;
      case 'MedicationAdministration':
        return R6ResourceType.MedicationAdministration;
      case 'MedicationDispense':
        return R6ResourceType.MedicationDispense;
      case 'MedicationKnowledge':
        return R6ResourceType.MedicationKnowledge;
      case 'MedicationRequest':
        return R6ResourceType.MedicationRequest;
      case 'MedicationStatement':
        return R6ResourceType.MedicationStatement;
      case 'MedicinalProductDefinition':
        return R6ResourceType.MedicinalProductDefinition;
      case 'MessageDefinition':
        return R6ResourceType.MessageDefinition;
      case 'MessageHeader':
        return R6ResourceType.MessageHeader;
      case 'MolecularSequence':
        return R6ResourceType.MolecularSequence;
      case 'NamingSystem':
        return R6ResourceType.NamingSystem;
      case 'NutritionIntake':
        return R6ResourceType.NutritionIntake;
      case 'NutritionOrder':
        return R6ResourceType.NutritionOrder;
      case 'NutritionProduct':
        return R6ResourceType.NutritionProduct;
      case 'Observation':
        return R6ResourceType.Observation;
      case 'ObservationDefinition':
        return R6ResourceType.ObservationDefinition;
      case 'OperationDefinition':
        return R6ResourceType.OperationDefinition;
      case 'OperationOutcome':
        return R6ResourceType.OperationOutcome;
      case 'Organization':
        return R6ResourceType.Organization;
      case 'OrganizationAffiliation':
        return R6ResourceType.OrganizationAffiliation;
      case 'PackagedProductDefinition':
        return R6ResourceType.PackagedProductDefinition;
      case 'Parameters':
        return R6ResourceType.Parameters;
      case 'Patient':
        return R6ResourceType.Patient;
      case 'PaymentNotice':
        return R6ResourceType.PaymentNotice;
      case 'PaymentReconciliation':
        return R6ResourceType.PaymentReconciliation;
      case 'Permission':
        return R6ResourceType.Permission;
      case 'Person':
        return R6ResourceType.Person;
      case 'PlanDefinition':
        return R6ResourceType.PlanDefinition;
      case 'Practitioner':
        return R6ResourceType.Practitioner;
      case 'PractitionerRole':
        return R6ResourceType.PractitionerRole;
      case 'Procedure':
        return R6ResourceType.Procedure;
      case 'Provenance':
        return R6ResourceType.Provenance;
      case 'Questionnaire':
        return R6ResourceType.Questionnaire;
      case 'QuestionnaireResponse':
        return R6ResourceType.QuestionnaireResponse;
      case 'RegulatedAuthorization':
        return R6ResourceType.RegulatedAuthorization;
      case 'RelatedPerson':
        return R6ResourceType.RelatedPerson;
      case 'RequestOrchestration':
        return R6ResourceType.RequestOrchestration;
      case 'Requirements':
        return R6ResourceType.Requirements;
      case 'ResearchStudy':
        return R6ResourceType.ResearchStudy;
      case 'ResearchSubject':
        return R6ResourceType.ResearchSubject;
      case 'RiskAssessment':
        return R6ResourceType.RiskAssessment;
      case 'Schedule':
        return R6ResourceType.Schedule;
      case 'SearchParameter':
        return R6ResourceType.SearchParameter;
      case 'ServiceRequest':
        return R6ResourceType.ServiceRequest;
      case 'Slot':
        return R6ResourceType.Slot;
      case 'Specimen':
        return R6ResourceType.Specimen;
      case 'SpecimenDefinition':
        return R6ResourceType.SpecimenDefinition;
      case 'StructureDefinition':
        return R6ResourceType.StructureDefinition;
      case 'StructureMap':
        return R6ResourceType.StructureMap;
      case 'Subscription':
        return R6ResourceType.Subscription;
      case 'SubscriptionStatus':
        return R6ResourceType.SubscriptionStatus;
      case 'SubscriptionTopic':
        return R6ResourceType.SubscriptionTopic;
      case 'Substance':
        return R6ResourceType.Substance;
      case 'SubstanceDefinition':
        return R6ResourceType.SubstanceDefinition;
      case 'SubstanceNucleicAcid':
        return R6ResourceType.SubstanceNucleicAcid;
      case 'SubstancePolymer':
        return R6ResourceType.SubstancePolymer;
      case 'SubstanceProtein':
        return R6ResourceType.SubstanceProtein;
      case 'SubstanceReferenceInformation':
        return R6ResourceType.SubstanceReferenceInformation;
      case 'SubstanceSourceMaterial':
        return R6ResourceType.SubstanceSourceMaterial;
      case 'SupplyDelivery':
        return R6ResourceType.SupplyDelivery;
      case 'SupplyRequest':
        return R6ResourceType.SupplyRequest;
      case 'Task':
        return R6ResourceType.Task;
      case 'TerminologyCapabilities':
        return R6ResourceType.TerminologyCapabilities;
      case 'TestPlan':
        return R6ResourceType.TestPlan;
      case 'TestReport':
        return R6ResourceType.TestReport;
      case 'TestScript':
        return R6ResourceType.TestScript;
      case 'Transport':
        return R6ResourceType.Transport;
      case 'ValueSet':
        return R6ResourceType.ValueSet;
      case 'VerificationResult':
        return R6ResourceType.VerificationResult;
      case 'VisionPrescription':
        return R6ResourceType.VisionPrescription;
      default:
        return null;
    }
  }

  static R6ResourceType? fromJson(dynamic json) {
    if (json is String) {
      return fromString(json);
    } else {
      return null;
    }
  }

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
        'Endpoint',
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
        'Flag',
        'FormularyItem',
        'GenomicStudy',
        'Goal',
        'GraphDefinition',
        'Group',
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
        'InsuranceProduct',
        'InventoryItem',
        'InventoryReport',
        'Invoice',
        'Library',
        'Linkage',
        'List',
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
