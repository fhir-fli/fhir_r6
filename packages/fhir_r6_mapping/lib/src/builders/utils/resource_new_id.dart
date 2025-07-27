import 'package:fhir_r5/fhir_r5.dart' show R5ResourceType;
import 'package:fhir_r5_mapping/fhir_r5_mapping.dart';

/// Creates a new [id] for the Resources that's passed
ResourceBuilder resourceWithNewId(ResourceBuilder resource) {
  final newId = generateNewUuidFhirString();
  switch (resource.resourceType) {
    case R5ResourceType.Account:
      return (resource as AccountBuilder).copyWith(id: newId);

    case R5ResourceType.ActivityDefinition:
      return (resource as ActivityDefinitionBuilder).copyWith(id: newId);

    case R5ResourceType.ActorDefinition:
      return (resource as ActorDefinitionBuilder).copyWith(id: newId);

    case R5ResourceType.AdministrableProductDefinition:
      return (resource as AdministrableProductDefinitionBuilder)
          .copyWith(id: newId);

    case R5ResourceType.AdverseEvent:
      return (resource as AdverseEventBuilder).copyWith(id: newId);

    case R5ResourceType.AllergyIntolerance:
      return (resource as AllergyIntoleranceBuilder).copyWith(id: newId);

    case R5ResourceType.Appointment:
      return (resource as AppointmentBuilder).copyWith(id: newId);

    case R5ResourceType.AppointmentResponse:
      return (resource as AppointmentResponseBuilder).copyWith(id: newId);

    case R5ResourceType.ArtifactAssessment:
      return (resource as ArtifactAssessmentBuilder).copyWith(id: newId);

    case R5ResourceType.AuditEvent:
      return (resource as AuditEventBuilder).copyWith(id: newId);

    case R5ResourceType.Basic:
      return (resource as BasicBuilder).copyWith(id: newId);

    case R5ResourceType.Binary:
      return (resource as BinaryBuilder).copyWith(id: newId);

    case R5ResourceType.BiologicallyDerivedProduct:
      return (resource as BiologicallyDerivedProductBuilder)
          .copyWith(id: newId);

    case R5ResourceType.BiologicallyDerivedProductDispense:
      return (resource as BiologicallyDerivedProductDispenseBuilder)
          .copyWith(id: newId);

    case R5ResourceType.BodyStructure:
      return (resource as BodyStructureBuilder).copyWith(id: newId);

    case R5ResourceType.Bundle:
      return (resource as BundleBuilder).copyWith(id: newId);

    case R5ResourceType.CapabilityStatement:
      return (resource as CapabilityStatementBuilder).copyWith(id: newId);

    case R5ResourceType.CarePlan:
      return (resource as CarePlanBuilder).copyWith(id: newId);

    case R5ResourceType.CareTeam:
      return (resource as CareTeamBuilder).copyWith(id: newId);

    case R5ResourceType.ChargeItem:
      return (resource as ChargeItemBuilder).copyWith(id: newId);

    case R5ResourceType.ChargeItemDefinition:
      return (resource as ChargeItemDefinitionBuilder).copyWith(id: newId);

    case R5ResourceType.Citation:
      return (resource as CitationBuilder).copyWith(id: newId);

    case R5ResourceType.Claim:
      return (resource as ClaimBuilder).copyWith(id: newId);

    case R5ResourceType.ClaimResponse:
      return (resource as ClaimResponseBuilder).copyWith(id: newId);

    case R5ResourceType.ClinicalImpression:
      return (resource as ClinicalImpressionBuilder).copyWith(id: newId);

    case R5ResourceType.ClinicalUseDefinition:
      return (resource as ClinicalUseDefinitionBuilder).copyWith(id: newId);

    case R5ResourceType.CodeSystem:
      return (resource as CodeSystemBuilder).copyWith(id: newId);

    case R5ResourceType.Communication:
      return (resource as CommunicationBuilder).copyWith(id: newId);

    case R5ResourceType.CommunicationRequest:
      return (resource as CommunicationRequestBuilder).copyWith(id: newId);

    case R5ResourceType.CompartmentDefinition:
      return (resource as CompartmentDefinitionBuilder).copyWith(id: newId);

    case R5ResourceType.Composition:
      return (resource as CompositionBuilder).copyWith(id: newId);

    case R5ResourceType.ConceptMap:
      return (resource as ConceptMapBuilder).copyWith(id: newId);

    case R5ResourceType.Condition:
      return (resource as ConditionBuilder).copyWith(id: newId);

    case R5ResourceType.ConditionDefinition:
      return (resource as ConditionDefinitionBuilder).copyWith(id: newId);

    case R5ResourceType.Consent:
      return (resource as ConsentBuilder).copyWith(id: newId);

    case R5ResourceType.Contract:
      return (resource as ContractBuilder).copyWith(id: newId);

    case R5ResourceType.Coverage:
      return (resource as CoverageBuilder).copyWith(id: newId);

    case R5ResourceType.CoverageEligibilityRequest:
      return (resource as CoverageEligibilityRequestBuilder)
          .copyWith(id: newId);

    case R5ResourceType.CoverageEligibilityResponse:
      return (resource as CoverageEligibilityResponseBuilder)
          .copyWith(id: newId);

    case R5ResourceType.DetectedIssue:
      return (resource as DetectedIssueBuilder).copyWith(id: newId);

    case R5ResourceType.Device:
      return (resource as DeviceBuilder).copyWith(id: newId);

    case R5ResourceType.DeviceAssociation:
      return (resource as DeviceAssociationBuilder).copyWith(id: newId);

    case R5ResourceType.DeviceDefinition:
      return (resource as DeviceDefinitionBuilder).copyWith(id: newId);

    case R5ResourceType.DeviceDispense:
      return (resource as DeviceDispenseBuilder).copyWith(id: newId);

    case R5ResourceType.DeviceMetric:
      return (resource as DeviceMetricBuilder).copyWith(id: newId);

    case R5ResourceType.DeviceRequest:
      return (resource as DeviceRequestBuilder).copyWith(id: newId);

    case R5ResourceType.DeviceUsage:
      return (resource as DeviceUsageBuilder).copyWith(id: newId);

    case R5ResourceType.DiagnosticReport:
      return (resource as DiagnosticReportBuilder).copyWith(id: newId);

    case R5ResourceType.DocumentReference:
      return (resource as DocumentReferenceBuilder).copyWith(id: newId);

    case R5ResourceType.Encounter:
      return (resource as EncounterBuilder).copyWith(id: newId);

    case R5ResourceType.EncounterHistory:
      return (resource as EncounterHistoryBuilder).copyWith(id: newId);

    case R5ResourceType.EnrollmentRequest:
      return (resource as EnrollmentRequestBuilder).copyWith(id: newId);

    case R5ResourceType.EnrollmentResponse:
      return (resource as EnrollmentResponseBuilder).copyWith(id: newId);

    case R5ResourceType.EpisodeOfCare:
      return (resource as EpisodeOfCareBuilder).copyWith(id: newId);

    case R5ResourceType.EventDefinition:
      return (resource as EventDefinitionBuilder).copyWith(id: newId);

    case R5ResourceType.Evidence:
      return (resource as EvidenceBuilder).copyWith(id: newId);

    case R5ResourceType.EvidenceReport:
      return (resource as EvidenceReportBuilder).copyWith(id: newId);

    case R5ResourceType.EvidenceVariable:
      return (resource as EvidenceVariableBuilder).copyWith(id: newId);

    case R5ResourceType.ExampleScenario:
      return (resource as ExampleScenarioBuilder).copyWith(id: newId);

    case R5ResourceType.ExplanationOfBenefit:
      return (resource as ExplanationOfBenefitBuilder).copyWith(id: newId);

    case R5ResourceType.FamilyMemberHistory:
      return (resource as FamilyMemberHistoryBuilder).copyWith(id: newId);

    case R5ResourceType.FhirEndpoint:
      return (resource as FhirEndpointBuilder).copyWith(id: newId);

    case R5ResourceType.FhirGroup:
      return (resource as FhirGroupBuilder).copyWith(id: newId);

    case R5ResourceType.FhirList:
      return (resource as FhirListBuilder).copyWith(id: newId);

    case R5ResourceType.Flag:
      return (resource as FlagBuilder).copyWith(id: newId);

    case R5ResourceType.FormularyItem:
      return (resource as FormularyItemBuilder).copyWith(id: newId);

    case R5ResourceType.GenomicStudy:
      return (resource as GenomicStudyBuilder).copyWith(id: newId);

    case R5ResourceType.Goal:
      return (resource as GoalBuilder).copyWith(id: newId);

    case R5ResourceType.GraphDefinition:
      return (resource as GraphDefinitionBuilder).copyWith(id: newId);

    case R5ResourceType.GuidanceResponse:
      return (resource as GuidanceResponseBuilder).copyWith(id: newId);

    case R5ResourceType.HealthcareService:
      return (resource as HealthcareServiceBuilder).copyWith(id: newId);

    case R5ResourceType.ImagingSelection:
      return (resource as ImagingSelectionBuilder).copyWith(id: newId);

    case R5ResourceType.ImagingStudy:
      return (resource as ImagingStudyBuilder).copyWith(id: newId);

    case R5ResourceType.Immunization:
      return (resource as ImmunizationBuilder).copyWith(id: newId);

    case R5ResourceType.ImmunizationEvaluation:
      return (resource as ImmunizationEvaluationBuilder).copyWith(id: newId);

    case R5ResourceType.ImmunizationRecommendation:
      return (resource as ImmunizationRecommendationBuilder)
          .copyWith(id: newId);

    case R5ResourceType.ImplementationGuide:
      return (resource as ImplementationGuideBuilder).copyWith(id: newId);

    case R5ResourceType.Ingredient:
      return (resource as IngredientBuilder).copyWith(id: newId);

    case R5ResourceType.InsurancePlan:
      return (resource as InsurancePlanBuilder).copyWith(id: newId);

    case R5ResourceType.InventoryItem:
      return (resource as InventoryItemBuilder).copyWith(id: newId);

    case R5ResourceType.InventoryReport:
      return (resource as InventoryReportBuilder).copyWith(id: newId);

    case R5ResourceType.Invoice:
      return (resource as InvoiceBuilder).copyWith(id: newId);

    case R5ResourceType.Library:
      return (resource as LibraryBuilder).copyWith(id: newId);

    case R5ResourceType.Linkage:
      return (resource as LinkageBuilder).copyWith(id: newId);

    case R5ResourceType.Location:
      return (resource as LocationBuilder).copyWith(id: newId);

    case R5ResourceType.ManufacturedItemDefinition:
      return (resource as ManufacturedItemDefinitionBuilder)
          .copyWith(id: newId);

    case R5ResourceType.Measure:
      return (resource as MeasureBuilder).copyWith(id: newId);

    case R5ResourceType.MeasureReport:
      return (resource as MeasureReportBuilder).copyWith(id: newId);

    case R5ResourceType.Medication:
      return (resource as MedicationBuilder).copyWith(id: newId);

    case R5ResourceType.MedicationAdministration:
      return (resource as MedicationAdministrationBuilder).copyWith(id: newId);

    case R5ResourceType.MedicationDispense:
      return (resource as MedicationDispenseBuilder).copyWith(id: newId);

    case R5ResourceType.MedicationKnowledge:
      return (resource as MedicationKnowledgeBuilder).copyWith(id: newId);

    case R5ResourceType.MedicationRequest:
      return (resource as MedicationRequestBuilder).copyWith(id: newId);

    case R5ResourceType.MedicationStatement:
      return (resource as MedicationStatementBuilder).copyWith(id: newId);

    case R5ResourceType.MedicinalProductDefinition:
      return (resource as MedicinalProductDefinitionBuilder)
          .copyWith(id: newId);

    case R5ResourceType.MessageDefinition:
      return (resource as MessageDefinitionBuilder).copyWith(id: newId);

    case R5ResourceType.MessageHeader:
      return (resource as MessageHeaderBuilder).copyWith(id: newId);

    case R5ResourceType.MolecularSequence:
      return (resource as MolecularSequenceBuilder).copyWith(id: newId);

    case R5ResourceType.NamingSystem:
      return (resource as NamingSystemBuilder).copyWith(id: newId);

    case R5ResourceType.NutritionIntake:
      return (resource as NutritionIntakeBuilder).copyWith(id: newId);

    case R5ResourceType.NutritionOrder:
      return (resource as NutritionOrderBuilder).copyWith(id: newId);

    case R5ResourceType.NutritionProduct:
      return (resource as NutritionProductBuilder).copyWith(id: newId);

    case R5ResourceType.Observation:
      return (resource as ObservationBuilder).copyWith(id: newId);

    case R5ResourceType.ObservationDefinition:
      return (resource as ObservationDefinitionBuilder).copyWith(id: newId);

    case R5ResourceType.OperationDefinition:
      return (resource as OperationDefinitionBuilder).copyWith(id: newId);

    case R5ResourceType.OperationOutcome:
      return (resource as OperationOutcomeBuilder).copyWith(id: newId);

    case R5ResourceType.Organization:
      return (resource as OrganizationBuilder).copyWith(id: newId);

    case R5ResourceType.OrganizationAffiliation:
      return (resource as OrganizationAffiliationBuilder).copyWith(id: newId);

    case R5ResourceType.PackagedProductDefinition:
      return (resource as PackagedProductDefinitionBuilder).copyWith(id: newId);

    case R5ResourceType.Parameters:
      return (resource as ParametersBuilder).copyWith(id: newId);

    case R5ResourceType.Patient:
      return (resource as PatientBuilder).copyWith(id: newId);

    case R5ResourceType.PaymentNotice:
      return (resource as PaymentNoticeBuilder).copyWith(id: newId);

    case R5ResourceType.PaymentReconciliation:
      return (resource as PaymentReconciliationBuilder).copyWith(id: newId);

    case R5ResourceType.Permission:
      return (resource as PermissionBuilder).copyWith(id: newId);

    case R5ResourceType.Person:
      return (resource as PersonBuilder).copyWith(id: newId);

    case R5ResourceType.PlanDefinition:
      return (resource as PlanDefinitionBuilder).copyWith(id: newId);

    case R5ResourceType.Practitioner:
      return (resource as PractitionerBuilder).copyWith(id: newId);

    case R5ResourceType.PractitionerRole:
      return (resource as PractitionerRoleBuilder).copyWith(id: newId);

    case R5ResourceType.Procedure:
      return (resource as ProcedureBuilder).copyWith(id: newId);

    case R5ResourceType.Provenance:
      return (resource as ProvenanceBuilder).copyWith(id: newId);

    case R5ResourceType.Questionnaire:
      return (resource as QuestionnaireBuilder).copyWith(id: newId);

    case R5ResourceType.QuestionnaireResponse:
      return (resource as QuestionnaireResponseBuilder).copyWith(id: newId);

    case R5ResourceType.RegulatedAuthorization:
      return (resource as RegulatedAuthorizationBuilder).copyWith(id: newId);

    case R5ResourceType.RelatedPerson:
      return (resource as RelatedPersonBuilder).copyWith(id: newId);

    case R5ResourceType.RequestOrchestration:
      return (resource as RequestOrchestrationBuilder).copyWith(id: newId);

    case R5ResourceType.Requirements:
      return (resource as RequirementsBuilder).copyWith(id: newId);

    case R5ResourceType.ResearchStudy:
      return (resource as ResearchStudyBuilder).copyWith(id: newId);

    case R5ResourceType.ResearchSubject:
      return (resource as ResearchSubjectBuilder).copyWith(id: newId);

    case R5ResourceType.RiskAssessment:
      return (resource as RiskAssessmentBuilder).copyWith(id: newId);

    case R5ResourceType.Schedule:
      return (resource as ScheduleBuilder).copyWith(id: newId);

    case R5ResourceType.SearchParameter:
      return (resource as SearchParameterBuilder).copyWith(id: newId);

    case R5ResourceType.ServiceRequest:
      return (resource as ServiceRequestBuilder).copyWith(id: newId);

    case R5ResourceType.Slot:
      return (resource as SlotBuilder).copyWith(id: newId);

    case R5ResourceType.Specimen:
      return (resource as SpecimenBuilder).copyWith(id: newId);

    case R5ResourceType.SpecimenDefinition:
      return (resource as SpecimenDefinitionBuilder).copyWith(id: newId);

    case R5ResourceType.StructureDefinition:
      return (resource as StructureDefinitionBuilder).copyWith(id: newId);

    case R5ResourceType.StructureMap:
      return (resource as StructureMapBuilder).copyWith(id: newId);

    case R5ResourceType.Subscription:
      return (resource as SubscriptionBuilder).copyWith(id: newId);

    case R5ResourceType.SubscriptionStatus:
      return (resource as SubscriptionStatusBuilder).copyWith(id: newId);

    case R5ResourceType.SubscriptionTopic:
      return (resource as SubscriptionTopicBuilder).copyWith(id: newId);

    case R5ResourceType.Substance:
      return (resource as SubstanceBuilder).copyWith(id: newId);

    case R5ResourceType.SubstanceDefinition:
      return (resource as SubstanceDefinitionBuilder).copyWith(id: newId);

    case R5ResourceType.SubstanceNucleicAcid:
      return (resource as SubstanceNucleicAcidBuilder).copyWith(id: newId);

    case R5ResourceType.SubstancePolymer:
      return (resource as SubstancePolymerBuilder).copyWith(id: newId);

    case R5ResourceType.SubstanceProtein:
      return (resource as SubstanceProteinBuilder).copyWith(id: newId);

    case R5ResourceType.SubstanceReferenceInformation:
      return (resource as SubstanceReferenceInformationBuilder)
          .copyWith(id: newId);

    case R5ResourceType.SubstanceSourceMaterial:
      return (resource as SubstanceSourceMaterialBuilder).copyWith(id: newId);

    case R5ResourceType.SupplyDelivery:
      return (resource as SupplyDeliveryBuilder).copyWith(id: newId);

    case R5ResourceType.SupplyRequest:
      return (resource as SupplyRequestBuilder).copyWith(id: newId);

    case R5ResourceType.Task:
      return (resource as TaskBuilder).copyWith(id: newId);

    case R5ResourceType.TerminologyCapabilities:
      return (resource as TerminologyCapabilitiesBuilder).copyWith(id: newId);

    case R5ResourceType.TestPlan:
      return (resource as TestPlanBuilder).copyWith(id: newId);

    case R5ResourceType.TestReport:
      return (resource as TestReportBuilder).copyWith(id: newId);

    case R5ResourceType.TestScript:
      return (resource as TestScriptBuilder).copyWith(id: newId);

    case R5ResourceType.Transport:
      return (resource as TransportBuilder).copyWith(id: newId);

    case R5ResourceType.ValueSet:
      return (resource as ValueSetBuilder).copyWith(id: newId);

    case R5ResourceType.VerificationResult:
      return (resource as VerificationResultBuilder).copyWith(id: newId);

    case R5ResourceType.VisionPrescription:
      return (resource as VisionPrescriptionBuilder).copyWith(id: newId);
  }
}
