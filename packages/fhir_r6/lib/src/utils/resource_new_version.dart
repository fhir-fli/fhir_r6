import 'package:fhir_r6/fhir_r6.dart';

/// Returns a [FhirMeta] object, creates a new one if none is passed, otherwise
/// updates the [lastUpdated] and increases the [version] by 1
FhirMeta updateFhirMetaVersion(
  FhirMeta? oldFhirMeta, [
  // ignore: avoid_positional_boolean_parameters
  bool versionIdAsTime = false,
]) {
  final now = DateTime.now().toUtc();
  if (versionIdAsTime) {
    if (oldFhirMeta == null) {
      return FhirMeta(
        lastUpdated: FhirInstant.fromDateTime(now),
        versionId: FhirId(now.toIso8601String().replaceAll(':', '.')),
      );
    } else {
      return oldFhirMeta.copyWith(
        lastUpdated: FhirInstant.fromDateTime(now),
        versionId: FhirId(now.toIso8601String().replaceAll(':', '.')),
      );
    }
  }
  final version = oldFhirMeta == null
      ? 1
      : oldFhirMeta.versionId == null
          ? 1
          : int.parse(oldFhirMeta.versionId.toString()) + 1;
  if (oldFhirMeta == null) {
    return FhirMeta(
      lastUpdated: FhirInstant.fromDateTime(now),
      versionId: FhirId(version.toString()),
    );
  } else {
    return oldFhirMeta.copyWith(
      lastUpdated: FhirInstant.fromDateTime(now),
      versionId: FhirId(version.toString()),
    );
  }
}

/// Updates the [meta] field of this Resource, updates the meta.lastUpdated
/// field, adds 1 to the version number and adds an [Id] if there is not already
/// one, accepts [meta] as an argument and will update that field, otherwise
/// will try and update the [meta] field already in the resource
Resource updateMeta(
  Resource resource, {
  FhirMeta? meta,
  bool versionIdAsTime = false,
}) {
  final newMeta = updateFhirMetaVersion(meta ?? resource.meta, versionIdAsTime);
  switch (resource.resourceType) {
    case R6ResourceType.Account:
      return (resource as Account).copyWith(meta: newMeta);
    case R6ResourceType.ActivityDefinition:
      return (resource as ActivityDefinition).copyWith(meta: newMeta);
    case R6ResourceType.ActorDefinition:
      return (resource as ActorDefinition).copyWith(meta: newMeta);
    case R6ResourceType.AdministrableProductDefinition:
      return (resource as AdministrableProductDefinition)
          .copyWith(meta: newMeta);
    case R6ResourceType.AdverseEvent:
      return (resource as AdverseEvent).copyWith(meta: newMeta);
    case R6ResourceType.AllergyIntolerance:
      return (resource as AllergyIntolerance).copyWith(meta: newMeta);
    case R6ResourceType.Appointment:
      return (resource as Appointment).copyWith(meta: newMeta);
    case R6ResourceType.AppointmentResponse:
      return (resource as AppointmentResponse).copyWith(meta: newMeta);
    case R6ResourceType.ArtifactAssessment:
      return (resource as ArtifactAssessment).copyWith(meta: newMeta);
    case R6ResourceType.AuditEvent:
      return (resource as AuditEvent).copyWith(meta: newMeta);
    case R6ResourceType.Basic:
      return (resource as Basic).copyWith(meta: newMeta);
    case R6ResourceType.Binary:
      return (resource as Binary).copyWith(meta: newMeta);
    case R6ResourceType.BiologicallyDerivedProduct:
      return (resource as BiologicallyDerivedProduct).copyWith(meta: newMeta);
    case R6ResourceType.BiologicallyDerivedProductDispense:
      return (resource as BiologicallyDerivedProductDispense)
          .copyWith(meta: newMeta);
    case R6ResourceType.BodyStructure:
      return (resource as BodyStructure).copyWith(meta: newMeta);
    case R6ResourceType.Bundle:
      return (resource as Bundle).copyWith(meta: newMeta);
    case R6ResourceType.CapabilityStatement:
      return (resource as CapabilityStatement).copyWith(meta: newMeta);
    case R6ResourceType.CarePlan:
      return (resource as CarePlan).copyWith(meta: newMeta);
    case R6ResourceType.CareTeam:
      return (resource as CareTeam).copyWith(meta: newMeta);
    case R6ResourceType.ChargeItem:
      return (resource as ChargeItem).copyWith(meta: newMeta);
    case R6ResourceType.ChargeItemDefinition:
      return (resource as ChargeItemDefinition).copyWith(meta: newMeta);
    case R6ResourceType.Citation:
      return (resource as Citation).copyWith(meta: newMeta);
    case R6ResourceType.Claim:
      return (resource as Claim).copyWith(meta: newMeta);
    case R6ResourceType.ClaimResponse:
      return (resource as ClaimResponse).copyWith(meta: newMeta);
    case R6ResourceType.ClinicalImpression:
      return (resource as ClinicalImpression).copyWith(meta: newMeta);
    case R6ResourceType.ClinicalUseDefinition:
      return (resource as ClinicalUseDefinition).copyWith(meta: newMeta);
    case R6ResourceType.CodeSystem:
      return (resource as CodeSystem).copyWith(meta: newMeta);
    case R6ResourceType.Communication:
      return (resource as Communication).copyWith(meta: newMeta);
    case R6ResourceType.CommunicationRequest:
      return (resource as CommunicationRequest).copyWith(meta: newMeta);
    case R6ResourceType.CompartmentDefinition:
      return (resource as CompartmentDefinition).copyWith(meta: newMeta);
    case R6ResourceType.Composition:
      return (resource as Composition).copyWith(meta: newMeta);
    case R6ResourceType.ConceptMap:
      return (resource as ConceptMap).copyWith(meta: newMeta);
    case R6ResourceType.Condition:
      return (resource as Condition).copyWith(meta: newMeta);
    case R6ResourceType.ConditionDefinition:
      return (resource as ConditionDefinition).copyWith(meta: newMeta);
    case R6ResourceType.Consent:
      return (resource as Consent).copyWith(meta: newMeta);
    case R6ResourceType.Contract:
      return (resource as Contract).copyWith(meta: newMeta);
    case R6ResourceType.Coverage:
      return (resource as Coverage).copyWith(meta: newMeta);
    case R6ResourceType.CoverageEligibilityRequest:
      return (resource as CoverageEligibilityRequest).copyWith(meta: newMeta);
    case R6ResourceType.CoverageEligibilityResponse:
      return (resource as CoverageEligibilityResponse).copyWith(meta: newMeta);
    case R6ResourceType.DetectedIssue:
      return (resource as DetectedIssue).copyWith(meta: newMeta);
    case R6ResourceType.Device:
      return (resource as Device).copyWith(meta: newMeta);
    case R6ResourceType.DeviceAssociation:
      return (resource as DeviceAssociation).copyWith(meta: newMeta);
    case R6ResourceType.DeviceDefinition:
      return (resource as DeviceDefinition).copyWith(meta: newMeta);
    case R6ResourceType.DeviceDispense:
      return (resource as DeviceDispense).copyWith(meta: newMeta);
    case R6ResourceType.DeviceMetric:
      return (resource as DeviceMetric).copyWith(meta: newMeta);
    case R6ResourceType.DeviceRequest:
      return (resource as DeviceRequest).copyWith(meta: newMeta);
    case R6ResourceType.DeviceUsage:
      return (resource as DeviceUsage).copyWith(meta: newMeta);
    case R6ResourceType.DiagnosticReport:
      return (resource as DiagnosticReport).copyWith(meta: newMeta);
    case R6ResourceType.DocumentReference:
      return (resource as DocumentReference).copyWith(meta: newMeta);
    case R6ResourceType.Encounter:
      return (resource as Encounter).copyWith(meta: newMeta);
    case R6ResourceType.EncounterHistory:
      return (resource as EncounterHistory).copyWith(meta: newMeta);
    case R6ResourceType.EnrollmentRequest:
      return (resource as EnrollmentRequest).copyWith(meta: newMeta);
    case R6ResourceType.EnrollmentResponse:
      return (resource as EnrollmentResponse).copyWith(meta: newMeta);
    case R6ResourceType.EpisodeOfCare:
      return (resource as EpisodeOfCare).copyWith(meta: newMeta);
    case R6ResourceType.EventDefinition:
      return (resource as EventDefinition).copyWith(meta: newMeta);
    case R6ResourceType.Evidence:
      return (resource as Evidence).copyWith(meta: newMeta);
    case R6ResourceType.EvidenceReport:
      return (resource as EvidenceReport).copyWith(meta: newMeta);
    case R6ResourceType.EvidenceVariable:
      return (resource as EvidenceVariable).copyWith(meta: newMeta);
    case R6ResourceType.ExampleScenario:
      return (resource as ExampleScenario).copyWith(meta: newMeta);
    case R6ResourceType.ExplanationOfBenefit:
      return (resource as ExplanationOfBenefit).copyWith(meta: newMeta);
    case R6ResourceType.FamilyMemberHistory:
      return (resource as FamilyMemberHistory).copyWith(meta: newMeta);
    case R6ResourceType.FhirEndpoint:
      return (resource as FhirEndpoint).copyWith(meta: newMeta);
    case R6ResourceType.FhirGroup:
      return (resource as FhirGroup).copyWith(meta: newMeta);
    case R6ResourceType.FhirList:
      return (resource as FhirList).copyWith(meta: newMeta);
    case R6ResourceType.Flag:
      return (resource as Flag).copyWith(meta: newMeta);
    case R6ResourceType.FormularyItem:
      return (resource as FormularyItem).copyWith(meta: newMeta);
    case R6ResourceType.GenomicStudy:
      return (resource as GenomicStudy).copyWith(meta: newMeta);
    case R6ResourceType.Goal:
      return (resource as Goal).copyWith(meta: newMeta);
    case R6ResourceType.GraphDefinition:
      return (resource as GraphDefinition).copyWith(meta: newMeta);
    case R6ResourceType.GuidanceResponse:
      return (resource as GuidanceResponse).copyWith(meta: newMeta);
    case R6ResourceType.HealthcareService:
      return (resource as HealthcareService).copyWith(meta: newMeta);
    case R6ResourceType.ImagingSelection:
      return (resource as ImagingSelection).copyWith(meta: newMeta);
    case R6ResourceType.ImagingStudy:
      return (resource as ImagingStudy).copyWith(meta: newMeta);
    case R6ResourceType.Immunization:
      return (resource as Immunization).copyWith(meta: newMeta);
    case R6ResourceType.ImmunizationEvaluation:
      return (resource as ImmunizationEvaluation).copyWith(meta: newMeta);
    case R6ResourceType.ImmunizationRecommendation:
      return (resource as ImmunizationRecommendation).copyWith(meta: newMeta);
    case R6ResourceType.ImplementationGuide:
      return (resource as ImplementationGuide).copyWith(meta: newMeta);
    case R6ResourceType.Ingredient:
      return (resource as Ingredient).copyWith(meta: newMeta);
    case R6ResourceType.InsurancePlan:
      return (resource as InsurancePlan).copyWith(meta: newMeta);
    case R6ResourceType.InventoryItem:
      return (resource as InventoryItem).copyWith(meta: newMeta);
    case R6ResourceType.InventoryReport:
      return (resource as InventoryReport).copyWith(meta: newMeta);
    case R6ResourceType.Invoice:
      return (resource as Invoice).copyWith(meta: newMeta);
    case R6ResourceType.Library:
      return (resource as Library).copyWith(meta: newMeta);
    case R6ResourceType.Linkage:
      return (resource as Linkage).copyWith(meta: newMeta);
    case R6ResourceType.Location:
      return (resource as Location).copyWith(meta: newMeta);
    case R6ResourceType.ManufacturedItemDefinition:
      return (resource as ManufacturedItemDefinition).copyWith(meta: newMeta);
    case R6ResourceType.Measure:
      return (resource as Measure).copyWith(meta: newMeta);
    case R6ResourceType.MeasureReport:
      return (resource as MeasureReport).copyWith(meta: newMeta);
    case R6ResourceType.Medication:
      return (resource as Medication).copyWith(meta: newMeta);
    case R6ResourceType.MedicationAdministration:
      return (resource as MedicationAdministration).copyWith(meta: newMeta);
    case R6ResourceType.MedicationDispense:
      return (resource as MedicationDispense).copyWith(meta: newMeta);
    case R6ResourceType.MedicationKnowledge:
      return (resource as MedicationKnowledge).copyWith(meta: newMeta);
    case R6ResourceType.MedicationRequest:
      return (resource as MedicationRequest).copyWith(meta: newMeta);
    case R6ResourceType.MedicationStatement:
      return (resource as MedicationStatement).copyWith(meta: newMeta);
    case R6ResourceType.MedicinalProductDefinition:
      return (resource as MedicinalProductDefinition).copyWith(meta: newMeta);
    case R6ResourceType.MessageDefinition:
      return (resource as MessageDefinition).copyWith(meta: newMeta);
    case R6ResourceType.MessageHeader:
      return (resource as MessageHeader).copyWith(meta: newMeta);
    case R6ResourceType.MolecularSequence:
      return (resource as MolecularSequence).copyWith(meta: newMeta);
    case R6ResourceType.NamingSystem:
      return (resource as NamingSystem).copyWith(meta: newMeta);
    case R6ResourceType.NutritionIntake:
      return (resource as NutritionIntake).copyWith(meta: newMeta);
    case R6ResourceType.NutritionOrder:
      return (resource as NutritionOrder).copyWith(meta: newMeta);
    case R6ResourceType.NutritionProduct:
      return (resource as NutritionProduct).copyWith(meta: newMeta);
    case R6ResourceType.Observation:
      return (resource as Observation).copyWith(meta: newMeta);
    case R6ResourceType.ObservationDefinition:
      return (resource as ObservationDefinition).copyWith(meta: newMeta);
    case R6ResourceType.OperationDefinition:
      return (resource as OperationDefinition).copyWith(meta: newMeta);
    case R6ResourceType.OperationOutcome:
      return (resource as OperationOutcome).copyWith(meta: newMeta);
    case R6ResourceType.Organization:
      return (resource as Organization).copyWith(meta: newMeta);
    case R6ResourceType.OrganizationAffiliation:
      return (resource as OrganizationAffiliation).copyWith(meta: newMeta);
    case R6ResourceType.PackagedProductDefinition:
      return (resource as PackagedProductDefinition).copyWith(meta: newMeta);
    case R6ResourceType.Parameters:
      return (resource as Parameters).copyWith(meta: newMeta);
    case R6ResourceType.Patient:
      return (resource as Patient).copyWith(meta: newMeta);
    case R6ResourceType.PaymentNotice:
      return (resource as PaymentNotice).copyWith(meta: newMeta);
    case R6ResourceType.PaymentReconciliation:
      return (resource as PaymentReconciliation).copyWith(meta: newMeta);
    case R6ResourceType.Permission:
      return (resource as Permission).copyWith(meta: newMeta);
    case R6ResourceType.Person:
      return (resource as Person).copyWith(meta: newMeta);
    case R6ResourceType.PlanDefinition:
      return (resource as PlanDefinition).copyWith(meta: newMeta);
    case R6ResourceType.Practitioner:
      return (resource as Practitioner).copyWith(meta: newMeta);
    case R6ResourceType.PractitionerRole:
      return (resource as PractitionerRole).copyWith(meta: newMeta);
    case R6ResourceType.Procedure:
      return (resource as Procedure).copyWith(meta: newMeta);
    case R6ResourceType.Provenance:
      return (resource as Provenance).copyWith(meta: newMeta);
    case R6ResourceType.Questionnaire:
      return (resource as Questionnaire).copyWith(meta: newMeta);
    case R6ResourceType.QuestionnaireResponse:
      return (resource as QuestionnaireResponse).copyWith(meta: newMeta);
    case R6ResourceType.RegulatedAuthorization:
      return (resource as RegulatedAuthorization).copyWith(meta: newMeta);
    case R6ResourceType.RelatedPerson:
      return (resource as RelatedPerson).copyWith(meta: newMeta);
    case R6ResourceType.RequestOrchestration:
      return (resource as RequestOrchestration).copyWith(meta: newMeta);
    case R6ResourceType.Requirements:
      return (resource as Requirements).copyWith(meta: newMeta);
    case R6ResourceType.ResearchStudy:
      return (resource as ResearchStudy).copyWith(meta: newMeta);
    case R6ResourceType.ResearchSubject:
      return (resource as ResearchSubject).copyWith(meta: newMeta);
    case R6ResourceType.RiskAssessment:
      return (resource as RiskAssessment).copyWith(meta: newMeta);
    case R6ResourceType.Schedule:
      return (resource as Schedule).copyWith(meta: newMeta);
    case R6ResourceType.SearchParameter:
      return (resource as SearchParameter).copyWith(meta: newMeta);
    case R6ResourceType.ServiceRequest:
      return (resource as ServiceRequest).copyWith(meta: newMeta);
    case R6ResourceType.Slot:
      return (resource as Slot).copyWith(meta: newMeta);
    case R6ResourceType.Specimen:
      return (resource as Specimen).copyWith(meta: newMeta);
    case R6ResourceType.SpecimenDefinition:
      return (resource as SpecimenDefinition).copyWith(meta: newMeta);
    case R6ResourceType.StructureDefinition:
      return (resource as StructureDefinition).copyWith(meta: newMeta);
    case R6ResourceType.StructureMap:
      return (resource as StructureMap).copyWith(meta: newMeta);
    case R6ResourceType.Subscription:
      return (resource as Subscription).copyWith(meta: newMeta);
    case R6ResourceType.SubscriptionStatus:
      return (resource as SubscriptionStatus).copyWith(meta: newMeta);
    case R6ResourceType.SubscriptionTopic:
      return (resource as SubscriptionTopic).copyWith(meta: newMeta);
    case R6ResourceType.Substance:
      return (resource as Substance).copyWith(meta: newMeta);
    case R6ResourceType.SubstanceDefinition:
      return (resource as SubstanceDefinition).copyWith(meta: newMeta);
    case R6ResourceType.SubstanceNucleicAcid:
      return (resource as SubstanceNucleicAcid).copyWith(meta: newMeta);
    case R6ResourceType.SubstancePolymer:
      return (resource as SubstancePolymer).copyWith(meta: newMeta);
    case R6ResourceType.SubstanceProtein:
      return (resource as SubstanceProtein).copyWith(meta: newMeta);
    case R6ResourceType.SubstanceReferenceInformation:
      return (resource as SubstanceReferenceInformation)
          .copyWith(meta: newMeta);
    case R6ResourceType.SubstanceSourceMaterial:
      return (resource as SubstanceSourceMaterial).copyWith(meta: newMeta);
    case R6ResourceType.SupplyDelivery:
      return (resource as SupplyDelivery).copyWith(meta: newMeta);
    case R6ResourceType.SupplyRequest:
      return (resource as SupplyRequest).copyWith(meta: newMeta);
    case R6ResourceType.Task:
      return (resource as Task).copyWith(meta: newMeta);
    case R6ResourceType.TerminologyCapabilities:
      return (resource as TerminologyCapabilities).copyWith(meta: newMeta);
    case R6ResourceType.TestPlan:
      return (resource as TestPlan).copyWith(meta: newMeta);
    case R6ResourceType.TestReport:
      return (resource as TestReport).copyWith(meta: newMeta);
    case R6ResourceType.TestScript:
      return (resource as TestScript).copyWith(meta: newMeta);
    case R6ResourceType.Transport:
      return (resource as Transport).copyWith(meta: newMeta);
    case R6ResourceType.ValueSet:
      return (resource as ValueSet).copyWith(meta: newMeta);
    case R6ResourceType.VerificationResult:
      return (resource as VerificationResult).copyWith(meta: newMeta);
    case R6ResourceType.VisionPrescription:
      return (resource as VisionPrescription).copyWith(meta: newMeta);
  }
}
