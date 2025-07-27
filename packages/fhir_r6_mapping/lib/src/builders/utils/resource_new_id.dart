import 'package:fhir_r6/fhir_r6.dart' show R6ResourceType;
import 'package:fhir_r6_mapping/fhir_r6_mapping.dart';

/// Creates a new [id] for the Resources that's passed
ResourceBuilder resourceWithNewId(ResourceBuilder resource) {
  final newId = generateNewUuidFhirString();
  switch (resource.resourceType) {
    case R6ResourceType.Account:
      return (resource as AccountBuilder).copyWith(id: newId);

    case R6ResourceType.ActivityDefinition:
      return (resource as ActivityDefinitionBuilder).copyWith(id: newId);

    case R6ResourceType.ActorDefinition:
      return (resource as ActorDefinitionBuilder).copyWith(id: newId);

    case R6ResourceType.AdministrableProductDefinition:
      return (resource as AdministrableProductDefinitionBuilder)
          .copyWith(id: newId);

    case R6ResourceType.AdverseEvent:
      return (resource as AdverseEventBuilder).copyWith(id: newId);

    case R6ResourceType.AllergyIntolerance:
      return (resource as AllergyIntoleranceBuilder).copyWith(id: newId);

    case R6ResourceType.Appointment:
      return (resource as AppointmentBuilder).copyWith(id: newId);

    case R6ResourceType.AppointmentResponse:
      return (resource as AppointmentResponseBuilder).copyWith(id: newId);

    case R6ResourceType.ArtifactAssessment:
      return (resource as ArtifactAssessmentBuilder).copyWith(id: newId);

    case R6ResourceType.AuditEvent:
      return (resource as AuditEventBuilder).copyWith(id: newId);

    case R6ResourceType.Basic:
      return (resource as BasicBuilder).copyWith(id: newId);

    case R6ResourceType.Binary:
      return (resource as BinaryBuilder).copyWith(id: newId);

    case R6ResourceType.BiologicallyDerivedProduct:
      return (resource as BiologicallyDerivedProductBuilder)
          .copyWith(id: newId);

    case R6ResourceType.BiologicallyDerivedProductDispense:
      return (resource as BiologicallyDerivedProductDispenseBuilder)
          .copyWith(id: newId);

    case R6ResourceType.BodyStructure:
      return (resource as BodyStructureBuilder).copyWith(id: newId);

    case R6ResourceType.Bundle:
      return (resource as BundleBuilder).copyWith(id: newId);

    case R6ResourceType.CapabilityStatement:
      return (resource as CapabilityStatementBuilder).copyWith(id: newId);

    case R6ResourceType.CarePlan:
      return (resource as CarePlanBuilder).copyWith(id: newId);

    case R6ResourceType.CareTeam:
      return (resource as CareTeamBuilder).copyWith(id: newId);

    case R6ResourceType.ChargeItem:
      return (resource as ChargeItemBuilder).copyWith(id: newId);

    case R6ResourceType.ChargeItemDefinition:
      return (resource as ChargeItemDefinitionBuilder).copyWith(id: newId);

    case R6ResourceType.Citation:
      return (resource as CitationBuilder).copyWith(id: newId);

    case R6ResourceType.Claim:
      return (resource as ClaimBuilder).copyWith(id: newId);

    case R6ResourceType.ClaimResponse:
      return (resource as ClaimResponseBuilder).copyWith(id: newId);

    case R6ResourceType.ClinicalImpression:
      return (resource as ClinicalImpressionBuilder).copyWith(id: newId);

    case R6ResourceType.ClinicalUseDefinition:
      return (resource as ClinicalUseDefinitionBuilder).copyWith(id: newId);

    case R6ResourceType.CodeSystem:
      return (resource as CodeSystemBuilder).copyWith(id: newId);

    case R6ResourceType.Communication:
      return (resource as CommunicationBuilder).copyWith(id: newId);

    case R6ResourceType.CommunicationRequest:
      return (resource as CommunicationRequestBuilder).copyWith(id: newId);

    case R6ResourceType.CompartmentDefinition:
      return (resource as CompartmentDefinitionBuilder).copyWith(id: newId);

    case R6ResourceType.Composition:
      return (resource as CompositionBuilder).copyWith(id: newId);

    case R6ResourceType.ConceptMap:
      return (resource as ConceptMapBuilder).copyWith(id: newId);

    case R6ResourceType.Condition:
      return (resource as ConditionBuilder).copyWith(id: newId);

    case R6ResourceType.ConditionDefinition:
      return (resource as ConditionDefinitionBuilder).copyWith(id: newId);

    case R6ResourceType.Consent:
      return (resource as ConsentBuilder).copyWith(id: newId);

    case R6ResourceType.Contract:
      return (resource as ContractBuilder).copyWith(id: newId);

    case R6ResourceType.Coverage:
      return (resource as CoverageBuilder).copyWith(id: newId);

    case R6ResourceType.CoverageEligibilityRequest:
      return (resource as CoverageEligibilityRequestBuilder)
          .copyWith(id: newId);

    case R6ResourceType.CoverageEligibilityResponse:
      return (resource as CoverageEligibilityResponseBuilder)
          .copyWith(id: newId);

    case R6ResourceType.DetectedIssue:
      return (resource as DetectedIssueBuilder).copyWith(id: newId);

    case R6ResourceType.Device:
      return (resource as DeviceBuilder).copyWith(id: newId);

    case R6ResourceType.DeviceAssociation:
      return (resource as DeviceAssociationBuilder).copyWith(id: newId);

    case R6ResourceType.DeviceDefinition:
      return (resource as DeviceDefinitionBuilder).copyWith(id: newId);

    case R6ResourceType.DeviceDispense:
      return (resource as DeviceDispenseBuilder).copyWith(id: newId);

    case R6ResourceType.DeviceMetric:
      return (resource as DeviceMetricBuilder).copyWith(id: newId);

    case R6ResourceType.DeviceRequest:
      return (resource as DeviceRequestBuilder).copyWith(id: newId);

    case R6ResourceType.DeviceUsage:
      return (resource as DeviceUsageBuilder).copyWith(id: newId);

    case R6ResourceType.DiagnosticReport:
      return (resource as DiagnosticReportBuilder).copyWith(id: newId);

    case R6ResourceType.DocumentReference:
      return (resource as DocumentReferenceBuilder).copyWith(id: newId);

    case R6ResourceType.Encounter:
      return (resource as EncounterBuilder).copyWith(id: newId);

    case R6ResourceType.EncounterHistory:
      return (resource as EncounterHistoryBuilder).copyWith(id: newId);

    case R6ResourceType.EnrollmentRequest:
      return (resource as EnrollmentRequestBuilder).copyWith(id: newId);

    case R6ResourceType.EnrollmentResponse:
      return (resource as EnrollmentResponseBuilder).copyWith(id: newId);

    case R6ResourceType.EpisodeOfCare:
      return (resource as EpisodeOfCareBuilder).copyWith(id: newId);

    case R6ResourceType.EventDefinition:
      return (resource as EventDefinitionBuilder).copyWith(id: newId);

    case R6ResourceType.Evidence:
      return (resource as EvidenceBuilder).copyWith(id: newId);

    case R6ResourceType.EvidenceReport:
      return (resource as EvidenceReportBuilder).copyWith(id: newId);

    case R6ResourceType.EvidenceVariable:
      return (resource as EvidenceVariableBuilder).copyWith(id: newId);

    case R6ResourceType.ExampleScenario:
      return (resource as ExampleScenarioBuilder).copyWith(id: newId);

    case R6ResourceType.ExplanationOfBenefit:
      return (resource as ExplanationOfBenefitBuilder).copyWith(id: newId);

    case R6ResourceType.FamilyMemberHistory:
      return (resource as FamilyMemberHistoryBuilder).copyWith(id: newId);

    case R6ResourceType.FhirEndpoint:
      return (resource as FhirEndpointBuilder).copyWith(id: newId);

    case R6ResourceType.FhirGroup:
      return (resource as FhirGroupBuilder).copyWith(id: newId);

    case R6ResourceType.FhirList:
      return (resource as FhirListBuilder).copyWith(id: newId);

    case R6ResourceType.Flag:
      return (resource as FlagBuilder).copyWith(id: newId);

    case R6ResourceType.FormularyItem:
      return (resource as FormularyItemBuilder).copyWith(id: newId);

    case R6ResourceType.GenomicStudy:
      return (resource as GenomicStudyBuilder).copyWith(id: newId);

    case R6ResourceType.Goal:
      return (resource as GoalBuilder).copyWith(id: newId);

    case R6ResourceType.GraphDefinition:
      return (resource as GraphDefinitionBuilder).copyWith(id: newId);

    case R6ResourceType.GuidanceResponse:
      return (resource as GuidanceResponseBuilder).copyWith(id: newId);

    case R6ResourceType.HealthcareService:
      return (resource as HealthcareServiceBuilder).copyWith(id: newId);

    case R6ResourceType.ImagingSelection:
      return (resource as ImagingSelectionBuilder).copyWith(id: newId);

    case R6ResourceType.ImagingStudy:
      return (resource as ImagingStudyBuilder).copyWith(id: newId);

    case R6ResourceType.Immunization:
      return (resource as ImmunizationBuilder).copyWith(id: newId);

    case R6ResourceType.ImmunizationEvaluation:
      return (resource as ImmunizationEvaluationBuilder).copyWith(id: newId);

    case R6ResourceType.ImmunizationRecommendation:
      return (resource as ImmunizationRecommendationBuilder)
          .copyWith(id: newId);

    case R6ResourceType.ImplementationGuide:
      return (resource as ImplementationGuideBuilder).copyWith(id: newId);

    case R6ResourceType.Ingredient:
      return (resource as IngredientBuilder).copyWith(id: newId);

    case R6ResourceType.InsurancePlan:
      return (resource as InsurancePlanBuilder).copyWith(id: newId);

    case R6ResourceType.InventoryItem:
      return (resource as InventoryItemBuilder).copyWith(id: newId);

    case R6ResourceType.InventoryReport:
      return (resource as InventoryReportBuilder).copyWith(id: newId);

    case R6ResourceType.Invoice:
      return (resource as InvoiceBuilder).copyWith(id: newId);

    case R6ResourceType.Library:
      return (resource as LibraryBuilder).copyWith(id: newId);

    case R6ResourceType.Linkage:
      return (resource as LinkageBuilder).copyWith(id: newId);

    case R6ResourceType.Location:
      return (resource as LocationBuilder).copyWith(id: newId);

    case R6ResourceType.ManufacturedItemDefinition:
      return (resource as ManufacturedItemDefinitionBuilder)
          .copyWith(id: newId);

    case R6ResourceType.Measure:
      return (resource as MeasureBuilder).copyWith(id: newId);

    case R6ResourceType.MeasureReport:
      return (resource as MeasureReportBuilder).copyWith(id: newId);

    case R6ResourceType.Medication:
      return (resource as MedicationBuilder).copyWith(id: newId);

    case R6ResourceType.MedicationAdministration:
      return (resource as MedicationAdministrationBuilder).copyWith(id: newId);

    case R6ResourceType.MedicationDispense:
      return (resource as MedicationDispenseBuilder).copyWith(id: newId);

    case R6ResourceType.MedicationKnowledge:
      return (resource as MedicationKnowledgeBuilder).copyWith(id: newId);

    case R6ResourceType.MedicationRequest:
      return (resource as MedicationRequestBuilder).copyWith(id: newId);

    case R6ResourceType.MedicationStatement:
      return (resource as MedicationStatementBuilder).copyWith(id: newId);

    case R6ResourceType.MedicinalProductDefinition:
      return (resource as MedicinalProductDefinitionBuilder)
          .copyWith(id: newId);

    case R6ResourceType.MessageDefinition:
      return (resource as MessageDefinitionBuilder).copyWith(id: newId);

    case R6ResourceType.MessageHeader:
      return (resource as MessageHeaderBuilder).copyWith(id: newId);

    case R6ResourceType.MolecularSequence:
      return (resource as MolecularSequenceBuilder).copyWith(id: newId);

    case R6ResourceType.NamingSystem:
      return (resource as NamingSystemBuilder).copyWith(id: newId);

    case R6ResourceType.NutritionIntake:
      return (resource as NutritionIntakeBuilder).copyWith(id: newId);

    case R6ResourceType.NutritionOrder:
      return (resource as NutritionOrderBuilder).copyWith(id: newId);

    case R6ResourceType.NutritionProduct:
      return (resource as NutritionProductBuilder).copyWith(id: newId);

    case R6ResourceType.Observation:
      return (resource as ObservationBuilder).copyWith(id: newId);

    case R6ResourceType.ObservationDefinition:
      return (resource as ObservationDefinitionBuilder).copyWith(id: newId);

    case R6ResourceType.OperationDefinition:
      return (resource as OperationDefinitionBuilder).copyWith(id: newId);

    case R6ResourceType.OperationOutcome:
      return (resource as OperationOutcomeBuilder).copyWith(id: newId);

    case R6ResourceType.Organization:
      return (resource as OrganizationBuilder).copyWith(id: newId);

    case R6ResourceType.OrganizationAffiliation:
      return (resource as OrganizationAffiliationBuilder).copyWith(id: newId);

    case R6ResourceType.PackagedProductDefinition:
      return (resource as PackagedProductDefinitionBuilder).copyWith(id: newId);

    case R6ResourceType.Parameters:
      return (resource as ParametersBuilder).copyWith(id: newId);

    case R6ResourceType.Patient:
      return (resource as PatientBuilder).copyWith(id: newId);

    case R6ResourceType.PaymentNotice:
      return (resource as PaymentNoticeBuilder).copyWith(id: newId);

    case R6ResourceType.PaymentReconciliation:
      return (resource as PaymentReconciliationBuilder).copyWith(id: newId);

    case R6ResourceType.Permission:
      return (resource as PermissionBuilder).copyWith(id: newId);

    case R6ResourceType.Person:
      return (resource as PersonBuilder).copyWith(id: newId);

    case R6ResourceType.PlanDefinition:
      return (resource as PlanDefinitionBuilder).copyWith(id: newId);

    case R6ResourceType.Practitioner:
      return (resource as PractitionerBuilder).copyWith(id: newId);

    case R6ResourceType.PractitionerRole:
      return (resource as PractitionerRoleBuilder).copyWith(id: newId);

    case R6ResourceType.Procedure:
      return (resource as ProcedureBuilder).copyWith(id: newId);

    case R6ResourceType.Provenance:
      return (resource as ProvenanceBuilder).copyWith(id: newId);

    case R6ResourceType.Questionnaire:
      return (resource as QuestionnaireBuilder).copyWith(id: newId);

    case R6ResourceType.QuestionnaireResponse:
      return (resource as QuestionnaireResponseBuilder).copyWith(id: newId);

    case R6ResourceType.RegulatedAuthorization:
      return (resource as RegulatedAuthorizationBuilder).copyWith(id: newId);

    case R6ResourceType.RelatedPerson:
      return (resource as RelatedPersonBuilder).copyWith(id: newId);

    case R6ResourceType.RequestOrchestration:
      return (resource as RequestOrchestrationBuilder).copyWith(id: newId);

    case R6ResourceType.Requirements:
      return (resource as RequirementsBuilder).copyWith(id: newId);

    case R6ResourceType.ResearchStudy:
      return (resource as ResearchStudyBuilder).copyWith(id: newId);

    case R6ResourceType.ResearchSubject:
      return (resource as ResearchSubjectBuilder).copyWith(id: newId);

    case R6ResourceType.RiskAssessment:
      return (resource as RiskAssessmentBuilder).copyWith(id: newId);

    case R6ResourceType.Schedule:
      return (resource as ScheduleBuilder).copyWith(id: newId);

    case R6ResourceType.SearchParameter:
      return (resource as SearchParameterBuilder).copyWith(id: newId);

    case R6ResourceType.ServiceRequest:
      return (resource as ServiceRequestBuilder).copyWith(id: newId);

    case R6ResourceType.Slot:
      return (resource as SlotBuilder).copyWith(id: newId);

    case R6ResourceType.Specimen:
      return (resource as SpecimenBuilder).copyWith(id: newId);

    case R6ResourceType.SpecimenDefinition:
      return (resource as SpecimenDefinitionBuilder).copyWith(id: newId);

    case R6ResourceType.StructureDefinition:
      return (resource as StructureDefinitionBuilder).copyWith(id: newId);

    case R6ResourceType.StructureMap:
      return (resource as StructureMapBuilder).copyWith(id: newId);

    case R6ResourceType.Subscription:
      return (resource as SubscriptionBuilder).copyWith(id: newId);

    case R6ResourceType.SubscriptionStatus:
      return (resource as SubscriptionStatusBuilder).copyWith(id: newId);

    case R6ResourceType.SubscriptionTopic:
      return (resource as SubscriptionTopicBuilder).copyWith(id: newId);

    case R6ResourceType.Substance:
      return (resource as SubstanceBuilder).copyWith(id: newId);

    case R6ResourceType.SubstanceDefinition:
      return (resource as SubstanceDefinitionBuilder).copyWith(id: newId);

    case R6ResourceType.SubstanceNucleicAcid:
      return (resource as SubstanceNucleicAcidBuilder).copyWith(id: newId);

    case R6ResourceType.SubstancePolymer:
      return (resource as SubstancePolymerBuilder).copyWith(id: newId);

    case R6ResourceType.SubstanceProtein:
      return (resource as SubstanceProteinBuilder).copyWith(id: newId);

    case R6ResourceType.SubstanceReferenceInformation:
      return (resource as SubstanceReferenceInformationBuilder)
          .copyWith(id: newId);

    case R6ResourceType.SubstanceSourceMaterial:
      return (resource as SubstanceSourceMaterialBuilder).copyWith(id: newId);

    case R6ResourceType.SupplyDelivery:
      return (resource as SupplyDeliveryBuilder).copyWith(id: newId);

    case R6ResourceType.SupplyRequest:
      return (resource as SupplyRequestBuilder).copyWith(id: newId);

    case R6ResourceType.Task:
      return (resource as TaskBuilder).copyWith(id: newId);

    case R6ResourceType.TerminologyCapabilities:
      return (resource as TerminologyCapabilitiesBuilder).copyWith(id: newId);

    case R6ResourceType.TestPlan:
      return (resource as TestPlanBuilder).copyWith(id: newId);

    case R6ResourceType.TestReport:
      return (resource as TestReportBuilder).copyWith(id: newId);

    case R6ResourceType.TestScript:
      return (resource as TestScriptBuilder).copyWith(id: newId);

    case R6ResourceType.Transport:
      return (resource as TransportBuilder).copyWith(id: newId);

    case R6ResourceType.ValueSet:
      return (resource as ValueSetBuilder).copyWith(id: newId);

    case R6ResourceType.VerificationResult:
      return (resource as VerificationResultBuilder).copyWith(id: newId);

    case R6ResourceType.VisionPrescription:
      return (resource as VisionPrescriptionBuilder).copyWith(id: newId);
  }
}
