import 'package:fhir_r5/fhir_r5.dart' show R5ResourceType;
import 'package:fhir_r5_mapping/fhir_r5_mapping.dart';

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
    case R5ResourceType.ActivityDefinition:
      return (resource as ActivityDefinitionBuilder).copyWith(meta: newMeta);
    case R5ResourceType.ActorDefinition:
      return (resource as ActorDefinitionBuilder).copyWith(meta: newMeta);
    case R5ResourceType.AdministrableProductDefinition:
      return (resource as AdministrableProductDefinitionBuilder)
          .copyWith(meta: newMeta);
    case R5ResourceType.AdverseEvent:
      return (resource as AdverseEventBuilder).copyWith(meta: newMeta);
    case R5ResourceType.AllergyIntolerance:
      return (resource as AllergyIntoleranceBuilder).copyWith(meta: newMeta);
    case R5ResourceType.Appointment:
      return (resource as AppointmentBuilder).copyWith(meta: newMeta);
    case R5ResourceType.AppointmentResponse:
      return (resource as AppointmentResponseBuilder).copyWith(meta: newMeta);
    case R5ResourceType.ArtifactAssessment:
      return (resource as ArtifactAssessmentBuilder).copyWith(meta: newMeta);
    case R5ResourceType.AuditEvent:
      return (resource as AuditEventBuilder).copyWith(meta: newMeta);
    case R5ResourceType.Basic:
      return (resource as BasicBuilder).copyWith(meta: newMeta);
    case R5ResourceType.Binary:
      return (resource as BinaryBuilder).copyWith(meta: newMeta);
    case R5ResourceType.BiologicallyDerivedProduct:
      return (resource as BiologicallyDerivedProductBuilder)
          .copyWith(meta: newMeta);
    case R5ResourceType.BiologicallyDerivedProductDispense:
      return (resource as BiologicallyDerivedProductDispenseBuilder)
          .copyWith(meta: newMeta);
    case R5ResourceType.BodyStructure:
      return (resource as BodyStructureBuilder).copyWith(meta: newMeta);
    case R5ResourceType.Bundle:
      return (resource as BundleBuilder).copyWith(meta: newMeta);
    case R5ResourceType.CapabilityStatement:
      return (resource as CapabilityStatementBuilder).copyWith(meta: newMeta);
    case R5ResourceType.CarePlan:
      return (resource as CarePlanBuilder).copyWith(meta: newMeta);
    case R5ResourceType.CareTeam:
      return (resource as CareTeamBuilder).copyWith(meta: newMeta);
    case R5ResourceType.ChargeItem:
      return (resource as ChargeItemBuilder).copyWith(meta: newMeta);
    case R5ResourceType.ChargeItemDefinition:
      return (resource as ChargeItemDefinitionBuilder).copyWith(meta: newMeta);
    case R5ResourceType.Citation:
      return (resource as CitationBuilder).copyWith(meta: newMeta);
    case R5ResourceType.Claim:
      return (resource as ClaimBuilder).copyWith(meta: newMeta);
    case R5ResourceType.ClaimResponse:
      return (resource as ClaimResponseBuilder).copyWith(meta: newMeta);
    case R5ResourceType.ClinicalImpression:
      return (resource as ClinicalImpressionBuilder).copyWith(meta: newMeta);
    case R5ResourceType.ClinicalUseDefinition:
      return (resource as ClinicalUseDefinitionBuilder).copyWith(meta: newMeta);
    case R5ResourceType.CodeSystem:
      return (resource as CodeSystemBuilder).copyWith(meta: newMeta);
    case R5ResourceType.Communication:
      return (resource as CommunicationBuilder).copyWith(meta: newMeta);
    case R5ResourceType.CommunicationRequest:
      return (resource as CommunicationRequestBuilder).copyWith(meta: newMeta);
    case R5ResourceType.CompartmentDefinition:
      return (resource as CompartmentDefinitionBuilder).copyWith(meta: newMeta);
    case R5ResourceType.Composition:
      return (resource as CompositionBuilder).copyWith(meta: newMeta);
    case R5ResourceType.ConceptMap:
      return (resource as ConceptMapBuilder).copyWith(meta: newMeta);
    case R5ResourceType.Condition:
      return (resource as ConditionBuilder).copyWith(meta: newMeta);
    case R5ResourceType.ConditionDefinition:
      return (resource as ConditionDefinitionBuilder).copyWith(meta: newMeta);
    case R5ResourceType.Consent:
      return (resource as ConsentBuilder).copyWith(meta: newMeta);
    case R5ResourceType.Contract:
      return (resource as ContractBuilder).copyWith(meta: newMeta);
    case R5ResourceType.Coverage:
      return (resource as CoverageBuilder).copyWith(meta: newMeta);
    case R5ResourceType.CoverageEligibilityRequest:
      return (resource as CoverageEligibilityRequestBuilder)
          .copyWith(meta: newMeta);
    case R5ResourceType.CoverageEligibilityResponse:
      return (resource as CoverageEligibilityResponseBuilder)
          .copyWith(meta: newMeta);
    case R5ResourceType.DetectedIssue:
      return (resource as DetectedIssueBuilder).copyWith(meta: newMeta);
    case R5ResourceType.Device:
      return (resource as DeviceBuilder).copyWith(meta: newMeta);
    case R5ResourceType.DeviceAssociation:
      return (resource as DeviceAssociationBuilder).copyWith(meta: newMeta);
    case R5ResourceType.DeviceDefinition:
      return (resource as DeviceDefinitionBuilder).copyWith(meta: newMeta);
    case R5ResourceType.DeviceDispense:
      return (resource as DeviceDispenseBuilder).copyWith(meta: newMeta);
    case R5ResourceType.DeviceMetric:
      return (resource as DeviceMetricBuilder).copyWith(meta: newMeta);
    case R5ResourceType.DeviceRequest:
      return (resource as DeviceRequestBuilder).copyWith(meta: newMeta);
    case R5ResourceType.DeviceUsage:
      return (resource as DeviceUsageBuilder).copyWith(meta: newMeta);
    case R5ResourceType.DiagnosticReport:
      return (resource as DiagnosticReportBuilder).copyWith(meta: newMeta);
    case R5ResourceType.DocumentReference:
      return (resource as DocumentReferenceBuilder).copyWith(meta: newMeta);
    case R5ResourceType.Encounter:
      return (resource as EncounterBuilder).copyWith(meta: newMeta);
    case R5ResourceType.EncounterHistory:
      return (resource as EncounterHistoryBuilder).copyWith(meta: newMeta);
    case R5ResourceType.EnrollmentRequest:
      return (resource as EnrollmentRequestBuilder).copyWith(meta: newMeta);
    case R5ResourceType.EnrollmentResponse:
      return (resource as EnrollmentResponseBuilder).copyWith(meta: newMeta);
    case R5ResourceType.EpisodeOfCare:
      return (resource as EpisodeOfCareBuilder).copyWith(meta: newMeta);
    case R5ResourceType.EventDefinition:
      return (resource as EventDefinitionBuilder).copyWith(meta: newMeta);
    case R5ResourceType.Evidence:
      return (resource as EvidenceBuilder).copyWith(meta: newMeta);
    case R5ResourceType.EvidenceReport:
      return (resource as EvidenceReportBuilder).copyWith(meta: newMeta);
    case R5ResourceType.EvidenceVariable:
      return (resource as EvidenceVariableBuilder).copyWith(meta: newMeta);
    case R5ResourceType.ExampleScenario:
      return (resource as ExampleScenarioBuilder).copyWith(meta: newMeta);
    case R5ResourceType.ExplanationOfBenefit:
      return (resource as ExplanationOfBenefitBuilder).copyWith(meta: newMeta);
    case R5ResourceType.FamilyMemberHistory:
      return (resource as FamilyMemberHistoryBuilder).copyWith(meta: newMeta);
    case R5ResourceType.FhirEndpoint:
      return (resource as FhirEndpointBuilder).copyWith(meta: newMeta);
    case R5ResourceType.FhirGroup:
      return (resource as FhirGroupBuilder).copyWith(meta: newMeta);
    case R5ResourceType.FhirList:
      return (resource as FhirListBuilder).copyWith(meta: newMeta);
    case R5ResourceType.Flag:
      return (resource as FlagBuilder).copyWith(meta: newMeta);
    case R5ResourceType.FormularyItem:
      return (resource as FormularyItemBuilder).copyWith(meta: newMeta);
    case R5ResourceType.GenomicStudy:
      return (resource as GenomicStudyBuilder).copyWith(meta: newMeta);
    case R5ResourceType.Goal:
      return (resource as GoalBuilder).copyWith(meta: newMeta);
    case R5ResourceType.GraphDefinition:
      return (resource as GraphDefinitionBuilder).copyWith(meta: newMeta);
    case R5ResourceType.GuidanceResponse:
      return (resource as GuidanceResponseBuilder).copyWith(meta: newMeta);
    case R5ResourceType.HealthcareService:
      return (resource as HealthcareServiceBuilder).copyWith(meta: newMeta);
    case R5ResourceType.ImagingSelection:
      return (resource as ImagingSelectionBuilder).copyWith(meta: newMeta);
    case R5ResourceType.ImagingStudy:
      return (resource as ImagingStudyBuilder).copyWith(meta: newMeta);
    case R5ResourceType.Immunization:
      return (resource as ImmunizationBuilder).copyWith(meta: newMeta);
    case R5ResourceType.ImmunizationEvaluation:
      return (resource as ImmunizationEvaluationBuilder)
          .copyWith(meta: newMeta);
    case R5ResourceType.ImmunizationRecommendation:
      return (resource as ImmunizationRecommendationBuilder)
          .copyWith(meta: newMeta);
    case R5ResourceType.ImplementationGuide:
      return (resource as ImplementationGuideBuilder).copyWith(meta: newMeta);
    case R5ResourceType.Ingredient:
      return (resource as IngredientBuilder).copyWith(meta: newMeta);
    case R5ResourceType.InsurancePlan:
      return (resource as InsurancePlanBuilder).copyWith(meta: newMeta);
    case R5ResourceType.InventoryItem:
      return (resource as InventoryItemBuilder).copyWith(meta: newMeta);
    case R5ResourceType.InventoryReport:
      return (resource as InventoryReportBuilder).copyWith(meta: newMeta);
    case R5ResourceType.Invoice:
      return (resource as InvoiceBuilder).copyWith(meta: newMeta);
    case R5ResourceType.Library:
      return (resource as LibraryBuilder).copyWith(meta: newMeta);
    case R5ResourceType.Linkage:
      return (resource as LinkageBuilder).copyWith(meta: newMeta);
    case R5ResourceType.Location:
      return (resource as LocationBuilder).copyWith(meta: newMeta);
    case R5ResourceType.ManufacturedItemDefinition:
      return (resource as ManufacturedItemDefinitionBuilder)
          .copyWith(meta: newMeta);
    case R5ResourceType.Measure:
      return (resource as MeasureBuilder).copyWith(meta: newMeta);
    case R5ResourceType.MeasureReport:
      return (resource as MeasureReportBuilder).copyWith(meta: newMeta);
    case R5ResourceType.Medication:
      return (resource as MedicationBuilder).copyWith(meta: newMeta);
    case R5ResourceType.MedicationAdministration:
      return (resource as MedicationAdministrationBuilder)
          .copyWith(meta: newMeta);
    case R5ResourceType.MedicationDispense:
      return (resource as MedicationDispenseBuilder).copyWith(meta: newMeta);
    case R5ResourceType.MedicationKnowledge:
      return (resource as MedicationKnowledgeBuilder).copyWith(meta: newMeta);
    case R5ResourceType.MedicationRequest:
      return (resource as MedicationRequestBuilder).copyWith(meta: newMeta);
    case R5ResourceType.MedicationStatement:
      return (resource as MedicationStatementBuilder).copyWith(meta: newMeta);
    case R5ResourceType.MedicinalProductDefinition:
      return (resource as MedicinalProductDefinitionBuilder)
          .copyWith(meta: newMeta);
    case R5ResourceType.MessageDefinition:
      return (resource as MessageDefinitionBuilder).copyWith(meta: newMeta);
    case R5ResourceType.MessageHeader:
      return (resource as MessageHeaderBuilder).copyWith(meta: newMeta);
    case R5ResourceType.MolecularSequence:
      return (resource as MolecularSequenceBuilder).copyWith(meta: newMeta);
    case R5ResourceType.NamingSystem:
      return (resource as NamingSystemBuilder).copyWith(meta: newMeta);
    case R5ResourceType.NutritionIntake:
      return (resource as NutritionIntakeBuilder).copyWith(meta: newMeta);
    case R5ResourceType.NutritionOrder:
      return (resource as NutritionOrderBuilder).copyWith(meta: newMeta);
    case R5ResourceType.NutritionProduct:
      return (resource as NutritionProductBuilder).copyWith(meta: newMeta);
    case R5ResourceType.Observation:
      return (resource as ObservationBuilder).copyWith(meta: newMeta);
    case R5ResourceType.ObservationDefinition:
      return (resource as ObservationDefinitionBuilder).copyWith(meta: newMeta);
    case R5ResourceType.OperationDefinition:
      return (resource as OperationDefinitionBuilder).copyWith(meta: newMeta);
    case R5ResourceType.OperationOutcome:
      return (resource as OperationOutcomeBuilder).copyWith(meta: newMeta);
    case R5ResourceType.Organization:
      return (resource as OrganizationBuilder).copyWith(meta: newMeta);
    case R5ResourceType.OrganizationAffiliation:
      return (resource as OrganizationAffiliationBuilder)
          .copyWith(meta: newMeta);
    case R5ResourceType.PackagedProductDefinition:
      return (resource as PackagedProductDefinitionBuilder)
          .copyWith(meta: newMeta);
    case R5ResourceType.Parameters:
      return (resource as ParametersBuilder).copyWith(meta: newMeta);
    case R5ResourceType.Patient:
      return (resource as PatientBuilder).copyWith(meta: newMeta);
    case R5ResourceType.PaymentNotice:
      return (resource as PaymentNoticeBuilder).copyWith(meta: newMeta);
    case R5ResourceType.PaymentReconciliation:
      return (resource as PaymentReconciliationBuilder).copyWith(meta: newMeta);
    case R5ResourceType.Permission:
      return (resource as PermissionBuilder).copyWith(meta: newMeta);
    case R5ResourceType.Person:
      return (resource as PersonBuilder).copyWith(meta: newMeta);
    case R5ResourceType.PlanDefinition:
      return (resource as PlanDefinitionBuilder).copyWith(meta: newMeta);
    case R5ResourceType.Practitioner:
      return (resource as PractitionerBuilder).copyWith(meta: newMeta);
    case R5ResourceType.PractitionerRole:
      return (resource as PractitionerRoleBuilder).copyWith(meta: newMeta);
    case R5ResourceType.Procedure:
      return (resource as ProcedureBuilder).copyWith(meta: newMeta);
    case R5ResourceType.Provenance:
      return (resource as ProvenanceBuilder).copyWith(meta: newMeta);
    case R5ResourceType.Questionnaire:
      return (resource as QuestionnaireBuilder).copyWith(meta: newMeta);
    case R5ResourceType.QuestionnaireResponse:
      return (resource as QuestionnaireResponseBuilder).copyWith(meta: newMeta);
    case R5ResourceType.RegulatedAuthorization:
      return (resource as RegulatedAuthorizationBuilder)
          .copyWith(meta: newMeta);
    case R5ResourceType.RelatedPerson:
      return (resource as RelatedPersonBuilder).copyWith(meta: newMeta);
    case R5ResourceType.RequestOrchestration:
      return (resource as RequestOrchestrationBuilder).copyWith(meta: newMeta);
    case R5ResourceType.Requirements:
      return (resource as RequirementsBuilder).copyWith(meta: newMeta);
    case R5ResourceType.ResearchStudy:
      return (resource as ResearchStudyBuilder).copyWith(meta: newMeta);
    case R5ResourceType.ResearchSubject:
      return (resource as ResearchSubjectBuilder).copyWith(meta: newMeta);
    case R5ResourceType.RiskAssessment:
      return (resource as RiskAssessmentBuilder).copyWith(meta: newMeta);
    case R5ResourceType.Schedule:
      return (resource as ScheduleBuilder).copyWith(meta: newMeta);
    case R5ResourceType.SearchParameter:
      return (resource as SearchParameterBuilder).copyWith(meta: newMeta);
    case R5ResourceType.ServiceRequest:
      return (resource as ServiceRequestBuilder).copyWith(meta: newMeta);
    case R5ResourceType.Slot:
      return (resource as SlotBuilder).copyWith(meta: newMeta);
    case R5ResourceType.Specimen:
      return (resource as SpecimenBuilder).copyWith(meta: newMeta);
    case R5ResourceType.SpecimenDefinition:
      return (resource as SpecimenDefinitionBuilder).copyWith(meta: newMeta);
    case R5ResourceType.StructureDefinition:
      return (resource as StructureDefinitionBuilder).copyWith(meta: newMeta);
    case R5ResourceType.StructureMap:
      return (resource as StructureMapBuilder).copyWith(meta: newMeta);
    case R5ResourceType.Subscription:
      return (resource as SubscriptionBuilder).copyWith(meta: newMeta);
    case R5ResourceType.SubscriptionStatus:
      return (resource as SubscriptionStatusBuilder).copyWith(meta: newMeta);
    case R5ResourceType.SubscriptionTopic:
      return (resource as SubscriptionTopicBuilder).copyWith(meta: newMeta);
    case R5ResourceType.Substance:
      return (resource as SubstanceBuilder).copyWith(meta: newMeta);
    case R5ResourceType.SubstanceDefinition:
      return (resource as SubstanceDefinitionBuilder).copyWith(meta: newMeta);
    case R5ResourceType.SubstanceNucleicAcid:
      return (resource as SubstanceNucleicAcidBuilder).copyWith(meta: newMeta);
    case R5ResourceType.SubstancePolymer:
      return (resource as SubstancePolymerBuilder).copyWith(meta: newMeta);
    case R5ResourceType.SubstanceProtein:
      return (resource as SubstanceProteinBuilder).copyWith(meta: newMeta);
    case R5ResourceType.SubstanceReferenceInformation:
      return (resource as SubstanceReferenceInformationBuilder)
          .copyWith(meta: newMeta);
    case R5ResourceType.SubstanceSourceMaterial:
      return (resource as SubstanceSourceMaterialBuilder)
          .copyWith(meta: newMeta);
    case R5ResourceType.SupplyDelivery:
      return (resource as SupplyDeliveryBuilder).copyWith(meta: newMeta);
    case R5ResourceType.SupplyRequest:
      return (resource as SupplyRequestBuilder).copyWith(meta: newMeta);
    case R5ResourceType.Task:
      return (resource as TaskBuilder).copyWith(meta: newMeta);
    case R5ResourceType.TerminologyCapabilities:
      return (resource as TerminologyCapabilitiesBuilder)
          .copyWith(meta: newMeta);
    case R5ResourceType.TestPlan:
      return (resource as TestPlanBuilder).copyWith(meta: newMeta);
    case R5ResourceType.TestReport:
      return (resource as TestReportBuilder).copyWith(meta: newMeta);
    case R5ResourceType.TestScript:
      return (resource as TestScriptBuilder).copyWith(meta: newMeta);
    case R5ResourceType.Transport:
      return (resource as TransportBuilder).copyWith(meta: newMeta);
    case R5ResourceType.ValueSet:
      return (resource as ValueSetBuilder).copyWith(meta: newMeta);
    case R5ResourceType.VerificationResult:
      return (resource as VerificationResultBuilder).copyWith(meta: newMeta);
    case R5ResourceType.VisionPrescription:
      return (resource as VisionPrescriptionBuilder).copyWith(meta: newMeta);
    case R5ResourceType.Account:
      return (resource as AccountBuilder).copyWith(meta: newMeta);
  }
}
