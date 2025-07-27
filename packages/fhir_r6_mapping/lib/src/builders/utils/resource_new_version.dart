import 'package:fhir_r6/fhir_r6.dart' show R6ResourceType;
import 'package:fhir_r6_mapping/fhir_r6_mapping.dart';

/// Returns a [FhirMetaBuilder] object, creates a new one if none is passed,
/// otherwise updates the [lastUpdated] and increases the [version] by 1
FhirMetaBuilder updateFhirMetaVersion(
  FhirMetaBuilder? oldFhirMeta, [
  // ignore: avoid_positional_boolean_parameters
  bool versionIdAsTime = false,
]) {
  final now = DateTime.now().toUtc();
  if (versionIdAsTime) {
    if (oldFhirMeta == null) {
      return FhirMetaBuilder(
        lastUpdated: FhirInstantBuilder.fromDateTime(now),
        versionId: FhirIdBuilder(now.toIso8601String().replaceAll(':', '.')),
      );
    } else {
      return oldFhirMeta.copyWith(
        lastUpdated: FhirInstantBuilder.fromDateTime(now),
        versionId: FhirIdBuilder(now.toIso8601String().replaceAll(':', '.')),
      );
    }
  }
  final version = oldFhirMeta == null
      ? 1
      : oldFhirMeta.versionId == null
          ? 1
          : int.parse(oldFhirMeta.versionId.toString()) + 1;
  if (oldFhirMeta == null) {
    return FhirMetaBuilder(
      lastUpdated: FhirInstantBuilder.fromDateTime(now),
      versionId: FhirIdBuilder(version.toString()),
    );
  } else {
    return oldFhirMeta.copyWith(
      lastUpdated: FhirInstantBuilder.fromDateTime(now),
      versionId: FhirIdBuilder(version.toString()),
    );
  }
}

/// Updates the [meta] field of this Resource, updates the meta.lastUpdated
/// field, adds 1 to the version number and adds an [Id] if there is not already
/// one, accepts [meta] as an argument and will update that field, otherwise
/// will try and update the [meta] field already in the resource
ResourceBuilder updateMeta(
  ResourceBuilder resource, {
  FhirMetaBuilder? meta,
  bool versionIdAsTime = false,
}) {
  final newMeta = updateFhirMetaVersion(meta ?? resource.meta, versionIdAsTime);
  switch (resource.resourceType) {
    case R6ResourceType.ActivityDefinition:
      return (resource as ActivityDefinitionBuilder).copyWith(meta: newMeta);
    case R6ResourceType.ActorDefinition:
      return (resource as ActorDefinitionBuilder).copyWith(meta: newMeta);
    case R6ResourceType.AdministrableProductDefinition:
      return (resource as AdministrableProductDefinitionBuilder)
          .copyWith(meta: newMeta);
    case R6ResourceType.AdverseEvent:
      return (resource as AdverseEventBuilder).copyWith(meta: newMeta);
    case R6ResourceType.AllergyIntolerance:
      return (resource as AllergyIntoleranceBuilder).copyWith(meta: newMeta);
    case R6ResourceType.Appointment:
      return (resource as AppointmentBuilder).copyWith(meta: newMeta);
    case R6ResourceType.AppointmentResponse:
      return (resource as AppointmentResponseBuilder).copyWith(meta: newMeta);
    case R6ResourceType.ArtifactAssessment:
      return (resource as ArtifactAssessmentBuilder).copyWith(meta: newMeta);
    case R6ResourceType.AuditEvent:
      return (resource as AuditEventBuilder).copyWith(meta: newMeta);
    case R6ResourceType.Basic:
      return (resource as BasicBuilder).copyWith(meta: newMeta);
    case R6ResourceType.Binary:
      return (resource as BinaryBuilder).copyWith(meta: newMeta);
    case R6ResourceType.BiologicallyDerivedProduct:
      return (resource as BiologicallyDerivedProductBuilder)
          .copyWith(meta: newMeta);
    case R6ResourceType.BiologicallyDerivedProductDispense:
      return (resource as BiologicallyDerivedProductDispenseBuilder)
          .copyWith(meta: newMeta);
    case R6ResourceType.BodyStructure:
      return (resource as BodyStructureBuilder).copyWith(meta: newMeta);
    case R6ResourceType.Bundle:
      return (resource as BundleBuilder).copyWith(meta: newMeta);
    case R6ResourceType.CapabilityStatement:
      return (resource as CapabilityStatementBuilder).copyWith(meta: newMeta);
    case R6ResourceType.CarePlan:
      return (resource as CarePlanBuilder).copyWith(meta: newMeta);
    case R6ResourceType.CareTeam:
      return (resource as CareTeamBuilder).copyWith(meta: newMeta);
    case R6ResourceType.ChargeItem:
      return (resource as ChargeItemBuilder).copyWith(meta: newMeta);
    case R6ResourceType.ChargeItemDefinition:
      return (resource as ChargeItemDefinitionBuilder).copyWith(meta: newMeta);
    case R6ResourceType.Citation:
      return (resource as CitationBuilder).copyWith(meta: newMeta);
    case R6ResourceType.Claim:
      return (resource as ClaimBuilder).copyWith(meta: newMeta);
    case R6ResourceType.ClaimResponse:
      return (resource as ClaimResponseBuilder).copyWith(meta: newMeta);
    case R6ResourceType.ClinicalImpression:
      return (resource as ClinicalImpressionBuilder).copyWith(meta: newMeta);
    case R6ResourceType.ClinicalUseDefinition:
      return (resource as ClinicalUseDefinitionBuilder).copyWith(meta: newMeta);
    case R6ResourceType.CodeSystem:
      return (resource as CodeSystemBuilder).copyWith(meta: newMeta);
    case R6ResourceType.Communication:
      return (resource as CommunicationBuilder).copyWith(meta: newMeta);
    case R6ResourceType.CommunicationRequest:
      return (resource as CommunicationRequestBuilder).copyWith(meta: newMeta);
    case R6ResourceType.CompartmentDefinition:
      return (resource as CompartmentDefinitionBuilder).copyWith(meta: newMeta);
    case R6ResourceType.Composition:
      return (resource as CompositionBuilder).copyWith(meta: newMeta);
    case R6ResourceType.ConceptMap:
      return (resource as ConceptMapBuilder).copyWith(meta: newMeta);
    case R6ResourceType.Condition:
      return (resource as ConditionBuilder).copyWith(meta: newMeta);
    case R6ResourceType.ConditionDefinition:
      return (resource as ConditionDefinitionBuilder).copyWith(meta: newMeta);
    case R6ResourceType.Consent:
      return (resource as ConsentBuilder).copyWith(meta: newMeta);
    case R6ResourceType.Contract:
      return (resource as ContractBuilder).copyWith(meta: newMeta);
    case R6ResourceType.Coverage:
      return (resource as CoverageBuilder).copyWith(meta: newMeta);
    case R6ResourceType.CoverageEligibilityRequest:
      return (resource as CoverageEligibilityRequestBuilder)
          .copyWith(meta: newMeta);
    case R6ResourceType.CoverageEligibilityResponse:
      return (resource as CoverageEligibilityResponseBuilder)
          .copyWith(meta: newMeta);
    case R6ResourceType.DetectedIssue:
      return (resource as DetectedIssueBuilder).copyWith(meta: newMeta);
    case R6ResourceType.Device:
      return (resource as DeviceBuilder).copyWith(meta: newMeta);
    case R6ResourceType.DeviceAssociation:
      return (resource as DeviceAssociationBuilder).copyWith(meta: newMeta);
    case R6ResourceType.DeviceDefinition:
      return (resource as DeviceDefinitionBuilder).copyWith(meta: newMeta);
    case R6ResourceType.DeviceDispense:
      return (resource as DeviceDispenseBuilder).copyWith(meta: newMeta);
    case R6ResourceType.DeviceMetric:
      return (resource as DeviceMetricBuilder).copyWith(meta: newMeta);
    case R6ResourceType.DeviceRequest:
      return (resource as DeviceRequestBuilder).copyWith(meta: newMeta);
    case R6ResourceType.DeviceUsage:
      return (resource as DeviceUsageBuilder).copyWith(meta: newMeta);
    case R6ResourceType.DiagnosticReport:
      return (resource as DiagnosticReportBuilder).copyWith(meta: newMeta);
    case R6ResourceType.DocumentReference:
      return (resource as DocumentReferenceBuilder).copyWith(meta: newMeta);
    case R6ResourceType.Encounter:
      return (resource as EncounterBuilder).copyWith(meta: newMeta);
    case R6ResourceType.EncounterHistory:
      return (resource as EncounterHistoryBuilder).copyWith(meta: newMeta);
    case R6ResourceType.EnrollmentRequest:
      return (resource as EnrollmentRequestBuilder).copyWith(meta: newMeta);
    case R6ResourceType.EnrollmentResponse:
      return (resource as EnrollmentResponseBuilder).copyWith(meta: newMeta);
    case R6ResourceType.EpisodeOfCare:
      return (resource as EpisodeOfCareBuilder).copyWith(meta: newMeta);
    case R6ResourceType.EventDefinition:
      return (resource as EventDefinitionBuilder).copyWith(meta: newMeta);
    case R6ResourceType.Evidence:
      return (resource as EvidenceBuilder).copyWith(meta: newMeta);
    case R6ResourceType.EvidenceReport:
      return (resource as EvidenceReportBuilder).copyWith(meta: newMeta);
    case R6ResourceType.EvidenceVariable:
      return (resource as EvidenceVariableBuilder).copyWith(meta: newMeta);
    case R6ResourceType.ExampleScenario:
      return (resource as ExampleScenarioBuilder).copyWith(meta: newMeta);
    case R6ResourceType.ExplanationOfBenefit:
      return (resource as ExplanationOfBenefitBuilder).copyWith(meta: newMeta);
    case R6ResourceType.FamilyMemberHistory:
      return (resource as FamilyMemberHistoryBuilder).copyWith(meta: newMeta);
    case R6ResourceType.FhirEndpoint:
      return (resource as FhirEndpointBuilder).copyWith(meta: newMeta);
    case R6ResourceType.FhirGroup:
      return (resource as FhirGroupBuilder).copyWith(meta: newMeta);
    case R6ResourceType.FhirList:
      return (resource as FhirListBuilder).copyWith(meta: newMeta);
    case R6ResourceType.Flag:
      return (resource as FlagBuilder).copyWith(meta: newMeta);
    case R6ResourceType.FormularyItem:
      return (resource as FormularyItemBuilder).copyWith(meta: newMeta);
    case R6ResourceType.GenomicStudy:
      return (resource as GenomicStudyBuilder).copyWith(meta: newMeta);
    case R6ResourceType.Goal:
      return (resource as GoalBuilder).copyWith(meta: newMeta);
    case R6ResourceType.GraphDefinition:
      return (resource as GraphDefinitionBuilder).copyWith(meta: newMeta);
    case R6ResourceType.GuidanceResponse:
      return (resource as GuidanceResponseBuilder).copyWith(meta: newMeta);
    case R6ResourceType.HealthcareService:
      return (resource as HealthcareServiceBuilder).copyWith(meta: newMeta);
    case R6ResourceType.ImagingSelection:
      return (resource as ImagingSelectionBuilder).copyWith(meta: newMeta);
    case R6ResourceType.ImagingStudy:
      return (resource as ImagingStudyBuilder).copyWith(meta: newMeta);
    case R6ResourceType.Immunization:
      return (resource as ImmunizationBuilder).copyWith(meta: newMeta);
    case R6ResourceType.ImmunizationEvaluation:
      return (resource as ImmunizationEvaluationBuilder)
          .copyWith(meta: newMeta);
    case R6ResourceType.ImmunizationRecommendation:
      return (resource as ImmunizationRecommendationBuilder)
          .copyWith(meta: newMeta);
    case R6ResourceType.ImplementationGuide:
      return (resource as ImplementationGuideBuilder).copyWith(meta: newMeta);
    case R6ResourceType.Ingredient:
      return (resource as IngredientBuilder).copyWith(meta: newMeta);
    case R6ResourceType.InsurancePlan:
      return (resource as InsurancePlanBuilder).copyWith(meta: newMeta);
    case R6ResourceType.InventoryItem:
      return (resource as InventoryItemBuilder).copyWith(meta: newMeta);
    case R6ResourceType.InventoryReport:
      return (resource as InventoryReportBuilder).copyWith(meta: newMeta);
    case R6ResourceType.Invoice:
      return (resource as InvoiceBuilder).copyWith(meta: newMeta);
    case R6ResourceType.Library:
      return (resource as LibraryBuilder).copyWith(meta: newMeta);
    case R6ResourceType.Linkage:
      return (resource as LinkageBuilder).copyWith(meta: newMeta);
    case R6ResourceType.Location:
      return (resource as LocationBuilder).copyWith(meta: newMeta);
    case R6ResourceType.ManufacturedItemDefinition:
      return (resource as ManufacturedItemDefinitionBuilder)
          .copyWith(meta: newMeta);
    case R6ResourceType.Measure:
      return (resource as MeasureBuilder).copyWith(meta: newMeta);
    case R6ResourceType.MeasureReport:
      return (resource as MeasureReportBuilder).copyWith(meta: newMeta);
    case R6ResourceType.Medication:
      return (resource as MedicationBuilder).copyWith(meta: newMeta);
    case R6ResourceType.MedicationAdministration:
      return (resource as MedicationAdministrationBuilder)
          .copyWith(meta: newMeta);
    case R6ResourceType.MedicationDispense:
      return (resource as MedicationDispenseBuilder).copyWith(meta: newMeta);
    case R6ResourceType.MedicationKnowledge:
      return (resource as MedicationKnowledgeBuilder).copyWith(meta: newMeta);
    case R6ResourceType.MedicationRequest:
      return (resource as MedicationRequestBuilder).copyWith(meta: newMeta);
    case R6ResourceType.MedicationStatement:
      return (resource as MedicationStatementBuilder).copyWith(meta: newMeta);
    case R6ResourceType.MedicinalProductDefinition:
      return (resource as MedicinalProductDefinitionBuilder)
          .copyWith(meta: newMeta);
    case R6ResourceType.MessageDefinition:
      return (resource as MessageDefinitionBuilder).copyWith(meta: newMeta);
    case R6ResourceType.MessageHeader:
      return (resource as MessageHeaderBuilder).copyWith(meta: newMeta);
    case R6ResourceType.MolecularSequence:
      return (resource as MolecularSequenceBuilder).copyWith(meta: newMeta);
    case R6ResourceType.NamingSystem:
      return (resource as NamingSystemBuilder).copyWith(meta: newMeta);
    case R6ResourceType.NutritionIntake:
      return (resource as NutritionIntakeBuilder).copyWith(meta: newMeta);
    case R6ResourceType.NutritionOrder:
      return (resource as NutritionOrderBuilder).copyWith(meta: newMeta);
    case R6ResourceType.NutritionProduct:
      return (resource as NutritionProductBuilder).copyWith(meta: newMeta);
    case R6ResourceType.Observation:
      return (resource as ObservationBuilder).copyWith(meta: newMeta);
    case R6ResourceType.ObservationDefinition:
      return (resource as ObservationDefinitionBuilder).copyWith(meta: newMeta);
    case R6ResourceType.OperationDefinition:
      return (resource as OperationDefinitionBuilder).copyWith(meta: newMeta);
    case R6ResourceType.OperationOutcome:
      return (resource as OperationOutcomeBuilder).copyWith(meta: newMeta);
    case R6ResourceType.Organization:
      return (resource as OrganizationBuilder).copyWith(meta: newMeta);
    case R6ResourceType.OrganizationAffiliation:
      return (resource as OrganizationAffiliationBuilder)
          .copyWith(meta: newMeta);
    case R6ResourceType.PackagedProductDefinition:
      return (resource as PackagedProductDefinitionBuilder)
          .copyWith(meta: newMeta);
    case R6ResourceType.Parameters:
      return (resource as ParametersBuilder).copyWith(meta: newMeta);
    case R6ResourceType.Patient:
      return (resource as PatientBuilder).copyWith(meta: newMeta);
    case R6ResourceType.PaymentNotice:
      return (resource as PaymentNoticeBuilder).copyWith(meta: newMeta);
    case R6ResourceType.PaymentReconciliation:
      return (resource as PaymentReconciliationBuilder).copyWith(meta: newMeta);
    case R6ResourceType.Permission:
      return (resource as PermissionBuilder).copyWith(meta: newMeta);
    case R6ResourceType.Person:
      return (resource as PersonBuilder).copyWith(meta: newMeta);
    case R6ResourceType.PlanDefinition:
      return (resource as PlanDefinitionBuilder).copyWith(meta: newMeta);
    case R6ResourceType.Practitioner:
      return (resource as PractitionerBuilder).copyWith(meta: newMeta);
    case R6ResourceType.PractitionerRole:
      return (resource as PractitionerRoleBuilder).copyWith(meta: newMeta);
    case R6ResourceType.Procedure:
      return (resource as ProcedureBuilder).copyWith(meta: newMeta);
    case R6ResourceType.Provenance:
      return (resource as ProvenanceBuilder).copyWith(meta: newMeta);
    case R6ResourceType.Questionnaire:
      return (resource as QuestionnaireBuilder).copyWith(meta: newMeta);
    case R6ResourceType.QuestionnaireResponse:
      return (resource as QuestionnaireResponseBuilder).copyWith(meta: newMeta);
    case R6ResourceType.RegulatedAuthorization:
      return (resource as RegulatedAuthorizationBuilder)
          .copyWith(meta: newMeta);
    case R6ResourceType.RelatedPerson:
      return (resource as RelatedPersonBuilder).copyWith(meta: newMeta);
    case R6ResourceType.RequestOrchestration:
      return (resource as RequestOrchestrationBuilder).copyWith(meta: newMeta);
    case R6ResourceType.Requirements:
      return (resource as RequirementsBuilder).copyWith(meta: newMeta);
    case R6ResourceType.ResearchStudy:
      return (resource as ResearchStudyBuilder).copyWith(meta: newMeta);
    case R6ResourceType.ResearchSubject:
      return (resource as ResearchSubjectBuilder).copyWith(meta: newMeta);
    case R6ResourceType.RiskAssessment:
      return (resource as RiskAssessmentBuilder).copyWith(meta: newMeta);
    case R6ResourceType.Schedule:
      return (resource as ScheduleBuilder).copyWith(meta: newMeta);
    case R6ResourceType.SearchParameter:
      return (resource as SearchParameterBuilder).copyWith(meta: newMeta);
    case R6ResourceType.ServiceRequest:
      return (resource as ServiceRequestBuilder).copyWith(meta: newMeta);
    case R6ResourceType.Slot:
      return (resource as SlotBuilder).copyWith(meta: newMeta);
    case R6ResourceType.Specimen:
      return (resource as SpecimenBuilder).copyWith(meta: newMeta);
    case R6ResourceType.SpecimenDefinition:
      return (resource as SpecimenDefinitionBuilder).copyWith(meta: newMeta);
    case R6ResourceType.StructureDefinition:
      return (resource as StructureDefinitionBuilder).copyWith(meta: newMeta);
    case R6ResourceType.StructureMap:
      return (resource as StructureMapBuilder).copyWith(meta: newMeta);
    case R6ResourceType.Subscription:
      return (resource as SubscriptionBuilder).copyWith(meta: newMeta);
    case R6ResourceType.SubscriptionStatus:
      return (resource as SubscriptionStatusBuilder).copyWith(meta: newMeta);
    case R6ResourceType.SubscriptionTopic:
      return (resource as SubscriptionTopicBuilder).copyWith(meta: newMeta);
    case R6ResourceType.Substance:
      return (resource as SubstanceBuilder).copyWith(meta: newMeta);
    case R6ResourceType.SubstanceDefinition:
      return (resource as SubstanceDefinitionBuilder).copyWith(meta: newMeta);
    case R6ResourceType.SubstanceNucleicAcid:
      return (resource as SubstanceNucleicAcidBuilder).copyWith(meta: newMeta);
    case R6ResourceType.SubstancePolymer:
      return (resource as SubstancePolymerBuilder).copyWith(meta: newMeta);
    case R6ResourceType.SubstanceProtein:
      return (resource as SubstanceProteinBuilder).copyWith(meta: newMeta);
    case R6ResourceType.SubstanceReferenceInformation:
      return (resource as SubstanceReferenceInformationBuilder)
          .copyWith(meta: newMeta);
    case R6ResourceType.SubstanceSourceMaterial:
      return (resource as SubstanceSourceMaterialBuilder)
          .copyWith(meta: newMeta);
    case R6ResourceType.SupplyDelivery:
      return (resource as SupplyDeliveryBuilder).copyWith(meta: newMeta);
    case R6ResourceType.SupplyRequest:
      return (resource as SupplyRequestBuilder).copyWith(meta: newMeta);
    case R6ResourceType.Task:
      return (resource as TaskBuilder).copyWith(meta: newMeta);
    case R6ResourceType.TerminologyCapabilities:
      return (resource as TerminologyCapabilitiesBuilder)
          .copyWith(meta: newMeta);
    case R6ResourceType.TestPlan:
      return (resource as TestPlanBuilder).copyWith(meta: newMeta);
    case R6ResourceType.TestReport:
      return (resource as TestReportBuilder).copyWith(meta: newMeta);
    case R6ResourceType.TestScript:
      return (resource as TestScriptBuilder).copyWith(meta: newMeta);
    case R6ResourceType.Transport:
      return (resource as TransportBuilder).copyWith(meta: newMeta);
    case R6ResourceType.ValueSet:
      return (resource as ValueSetBuilder).copyWith(meta: newMeta);
    case R6ResourceType.VerificationResult:
      return (resource as VerificationResultBuilder).copyWith(meta: newMeta);
    case R6ResourceType.VisionPrescription:
      return (resource as VisionPrescriptionBuilder).copyWith(meta: newMeta);
    case R6ResourceType.Account:
      return (resource as AccountBuilder).copyWith(meta: newMeta);
  }
}
