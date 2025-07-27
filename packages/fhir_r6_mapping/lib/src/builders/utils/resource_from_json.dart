import 'package:fhir_r6_mapping/fhir_r6_mapping.dart';

/// Acts like a constructor,
/// [Map<String, Dynamic>] as an argument
ResourceBuilder resourceFromJson(Map<String, dynamic> json) {
  final dynamic resourceType = json['resourceType'];
  switch (resourceType) {
    case 'Account':
      return AccountBuilder.fromJson(json);

    case 'ActivityDefinition':
      return ActivityDefinitionBuilder.fromJson(json);

    case 'ActorDefinition':
      return ActorDefinitionBuilder.fromJson(json);

    case 'AdministrableProductDefinition':
      return AdministrableProductDefinitionBuilder.fromJson(json);

    case 'AdverseEvent':
      return AdverseEventBuilder.fromJson(json);

    case 'AllergyIntolerance':
      return AllergyIntoleranceBuilder.fromJson(json);

    case 'Appointment':
      return AppointmentBuilder.fromJson(json);

    case 'AppointmentResponse':
      return AppointmentResponseBuilder.fromJson(json);

    case 'ArtifactAssessment':
      return ArtifactAssessmentBuilder.fromJson(json);

    case 'AuditEvent':
      return AuditEventBuilder.fromJson(json);

    case 'Basic':
      return BasicBuilder.fromJson(json);

    case 'Binary':
      return BinaryBuilder.fromJson(json);

    case 'BiologicallyDerivedProduct':
      return BiologicallyDerivedProductBuilder.fromJson(json);

    case 'BiologicallyDerivedProductDispense':
      return BiologicallyDerivedProductDispenseBuilder.fromJson(json);

    case 'BodyStructure':
      return BodyStructureBuilder.fromJson(json);

    case 'Bundle':
      return BundleBuilder.fromJson(json);

    case 'CapabilityStatement':
      return CapabilityStatementBuilder.fromJson(json);

    case 'CarePlan':
      return CarePlanBuilder.fromJson(json);

    case 'CareTeam':
      return CareTeamBuilder.fromJson(json);

    case 'ChargeItem':
      return ChargeItemBuilder.fromJson(json);

    case 'ChargeItemDefinition':
      return ChargeItemDefinitionBuilder.fromJson(json);

    case 'Citation':
      return CitationBuilder.fromJson(json);

    case 'Claim':
      return ClaimBuilder.fromJson(json);

    case 'ClaimResponse':
      return ClaimResponseBuilder.fromJson(json);

    case 'ClinicalImpression':
      return ClinicalImpressionBuilder.fromJson(json);

    case 'ClinicalUseDefinition':
      return ClinicalUseDefinitionBuilder.fromJson(json);

    case 'CodeSystem':
      return CodeSystemBuilder.fromJson(json);

    case 'Communication':
      return CommunicationBuilder.fromJson(json);

    case 'CommunicationRequest':
      return CommunicationRequestBuilder.fromJson(json);

    case 'CompartmentDefinition':
      return CompartmentDefinitionBuilder.fromJson(json);

    case 'Composition':
      return CompositionBuilder.fromJson(json);

    case 'ConceptMap':
      return ConceptMapBuilder.fromJson(json);

    case 'Condition':
      return ConditionBuilder.fromJson(json);

    case 'ConditionDefinition':
      return ConditionDefinitionBuilder.fromJson(json);

    case 'Consent':
      return ConsentBuilder.fromJson(json);

    case 'Contract':
      return ContractBuilder.fromJson(json);

    case 'Coverage':
      return CoverageBuilder.fromJson(json);

    case 'CoverageEligibilityRequest':
      return CoverageEligibilityRequestBuilder.fromJson(json);

    case 'CoverageEligibilityResponse':
      return CoverageEligibilityResponseBuilder.fromJson(json);

    case 'DetectedIssue':
      return DetectedIssueBuilder.fromJson(json);

    case 'Device':
      return DeviceBuilder.fromJson(json);

    case 'DeviceAssociation':
      return DeviceAssociationBuilder.fromJson(json);

    case 'DeviceDefinition':
      return DeviceDefinitionBuilder.fromJson(json);

    case 'DeviceDispense':
      return DeviceDispenseBuilder.fromJson(json);

    case 'DeviceMetric':
      return DeviceMetricBuilder.fromJson(json);

    case 'DeviceRequest':
      return DeviceRequestBuilder.fromJson(json);

    case 'DeviceUsage':
      return DeviceUsageBuilder.fromJson(json);

    case 'DiagnosticReport':
      return DiagnosticReportBuilder.fromJson(json);

    case 'DocumentReference':
      return DocumentReferenceBuilder.fromJson(json);

    case 'Encounter':
      return EncounterBuilder.fromJson(json);

    case 'EncounterHistory':
      return EncounterHistoryBuilder.fromJson(json);

    case 'EnrollmentRequest':
      return EnrollmentRequestBuilder.fromJson(json);

    case 'EnrollmentResponse':
      return EnrollmentResponseBuilder.fromJson(json);

    case 'EpisodeOfCare':
      return EpisodeOfCareBuilder.fromJson(json);

    case 'EventDefinition':
      return EventDefinitionBuilder.fromJson(json);

    case 'Evidence':
      return EvidenceBuilder.fromJson(json);

    case 'EvidenceReport':
      return EvidenceReportBuilder.fromJson(json);

    case 'EvidenceVariable':
      return EvidenceVariableBuilder.fromJson(json);

    case 'ExampleScenario':
      return ExampleScenarioBuilder.fromJson(json);

    case 'ExplanationOfBenefit':
      return ExplanationOfBenefitBuilder.fromJson(json);

    case 'FamilyMemberHistory':
      return FamilyMemberHistoryBuilder.fromJson(json);

    case 'FhirEndpoint':
      return FhirEndpointBuilder.fromJson(json);

    case 'FhirGroup':
      return FhirGroupBuilder.fromJson(json);

    case 'FhirList':
      return FhirListBuilder.fromJson(json);

    case 'Flag':
      return FlagBuilder.fromJson(json);

    case 'FormularyItem':
      return FormularyItemBuilder.fromJson(json);

    case 'GenomicStudy':
      return GenomicStudyBuilder.fromJson(json);

    case 'Goal':
      return GoalBuilder.fromJson(json);

    case 'GraphDefinition':
      return GraphDefinitionBuilder.fromJson(json);

    case 'GuidanceResponse':
      return GuidanceResponseBuilder.fromJson(json);

    case 'HealthcareService':
      return HealthcareServiceBuilder.fromJson(json);

    case 'ImagingSelection':
      return ImagingSelectionBuilder.fromJson(json);

    case 'ImagingStudy':
      return ImagingStudyBuilder.fromJson(json);

    case 'Immunization':
      return ImmunizationBuilder.fromJson(json);

    case 'ImmunizationEvaluation':
      return ImmunizationEvaluationBuilder.fromJson(json);

    case 'ImmunizationRecommendation':
      return ImmunizationRecommendationBuilder.fromJson(json);

    case 'ImplementationGuide':
      return ImplementationGuideBuilder.fromJson(json);

    case 'Ingredient':
      return IngredientBuilder.fromJson(json);

    case 'InsurancePlan':
      return InsurancePlanBuilder.fromJson(json);

    case 'InventoryItem':
      return InventoryItemBuilder.fromJson(json);

    case 'InventoryReport':
      return InventoryReportBuilder.fromJson(json);

    case 'Invoice':
      return InvoiceBuilder.fromJson(json);

    case 'Library':
      return LibraryBuilder.fromJson(json);

    case 'Linkage':
      return LinkageBuilder.fromJson(json);

    case 'Location':
      return LocationBuilder.fromJson(json);

    case 'ManufacturedItemDefinition':
      return ManufacturedItemDefinitionBuilder.fromJson(json);

    case 'Measure':
      return MeasureBuilder.fromJson(json);

    case 'MeasureReport':
      return MeasureReportBuilder.fromJson(json);

    case 'Medication':
      return MedicationBuilder.fromJson(json);

    case 'MedicationAdministration':
      return MedicationAdministrationBuilder.fromJson(json);

    case 'MedicationDispense':
      return MedicationDispenseBuilder.fromJson(json);

    case 'MedicationKnowledge':
      return MedicationKnowledgeBuilder.fromJson(json);

    case 'MedicationRequest':
      return MedicationRequestBuilder.fromJson(json);

    case 'MedicationStatement':
      return MedicationStatementBuilder.fromJson(json);

    case 'MedicinalProductDefinition':
      return MedicinalProductDefinitionBuilder.fromJson(json);

    case 'MessageDefinition':
      return MessageDefinitionBuilder.fromJson(json);

    case 'MessageHeader':
      return MessageHeaderBuilder.fromJson(json);

    case 'MolecularSequence':
      return MolecularSequenceBuilder.fromJson(json);

    case 'NamingSystem':
      return NamingSystemBuilder.fromJson(json);

    case 'NutritionIntake':
      return NutritionIntakeBuilder.fromJson(json);

    case 'NutritionOrder':
      return NutritionOrderBuilder.fromJson(json);

    case 'NutritionProduct':
      return NutritionProductBuilder.fromJson(json);

    case 'Observation':
      return ObservationBuilder.fromJson(json);

    case 'ObservationDefinition':
      return ObservationDefinitionBuilder.fromJson(json);

    case 'OperationDefinition':
      return OperationDefinitionBuilder.fromJson(json);

    case 'OperationOutcome':
      return OperationOutcomeBuilder.fromJson(json);

    case 'Organization':
      return OrganizationBuilder.fromJson(json);

    case 'OrganizationAffiliation':
      return OrganizationAffiliationBuilder.fromJson(json);

    case 'PackagedProductDefinition':
      return PackagedProductDefinitionBuilder.fromJson(json);

    case 'Parameters':
      return ParametersBuilder.fromJson(json);

    case 'Patient':
      return PatientBuilder.fromJson(json);

    case 'PaymentNotice':
      return PaymentNoticeBuilder.fromJson(json);

    case 'PaymentReconciliation':
      return PaymentReconciliationBuilder.fromJson(json);

    case 'Permission':
      return PermissionBuilder.fromJson(json);

    case 'Person':
      return PersonBuilder.fromJson(json);

    case 'PlanDefinition':
      return PlanDefinitionBuilder.fromJson(json);

    case 'Practitioner':
      return PractitionerBuilder.fromJson(json);

    case 'PractitionerRole':
      return PractitionerRoleBuilder.fromJson(json);

    case 'Procedure':
      return ProcedureBuilder.fromJson(json);

    case 'Provenance':
      return ProvenanceBuilder.fromJson(json);

    case 'Questionnaire':
      return QuestionnaireBuilder.fromJson(json);

    case 'QuestionnaireResponse':
      return QuestionnaireResponseBuilder.fromJson(json);

    case 'RegulatedAuthorization':
      return RegulatedAuthorizationBuilder.fromJson(json);

    case 'RelatedPerson':
      return RelatedPersonBuilder.fromJson(json);

    case 'RequestOrchestration':
      return RequestOrchestrationBuilder.fromJson(json);

    case 'Requirements':
      return RequirementsBuilder.fromJson(json);

    case 'ResearchStudy':
      return ResearchStudyBuilder.fromJson(json);

    case 'ResearchSubject':
      return ResearchSubjectBuilder.fromJson(json);

    case 'RiskAssessment':
      return RiskAssessmentBuilder.fromJson(json);

    case 'Schedule':
      return ScheduleBuilder.fromJson(json);

    case 'SearchParameter':
      return SearchParameterBuilder.fromJson(json);

    case 'ServiceRequest':
      return ServiceRequestBuilder.fromJson(json);

    case 'Slot':
      return SlotBuilder.fromJson(json);

    case 'Specimen':
      return SpecimenBuilder.fromJson(json);

    case 'SpecimenDefinition':
      return SpecimenDefinitionBuilder.fromJson(json);

    case 'StructureDefinition':
      return StructureDefinitionBuilder.fromJson(json);

    case 'StructureMap':
      return StructureMapBuilder.fromJson(json);

    case 'Subscription':
      return SubscriptionBuilder.fromJson(json);

    case 'SubscriptionStatus':
      return SubscriptionStatusBuilder.fromJson(json);

    case 'SubscriptionTopic':
      return SubscriptionTopicBuilder.fromJson(json);

    case 'Substance':
      return SubstanceBuilder.fromJson(json);

    case 'SubstanceDefinition':
      return SubstanceDefinitionBuilder.fromJson(json);

    case 'SubstanceNucleicAcid':
      return SubstanceNucleicAcidBuilder.fromJson(json);

    case 'SubstancePolymer':
      return SubstancePolymerBuilder.fromJson(json);

    case 'SubstanceProtein':
      return SubstanceProteinBuilder.fromJson(json);

    case 'SubstanceReferenceInformation':
      return SubstanceReferenceInformationBuilder.fromJson(json);

    case 'SubstanceSourceMaterial':
      return SubstanceSourceMaterialBuilder.fromJson(json);

    case 'SupplyDelivery':
      return SupplyDeliveryBuilder.fromJson(json);

    case 'SupplyRequest':
      return SupplyRequestBuilder.fromJson(json);

    case 'Task':
      return TaskBuilder.fromJson(json);

    case 'TerminologyCapabilities':
      return TerminologyCapabilitiesBuilder.fromJson(json);

    case 'TestPlan':
      return TestPlanBuilder.fromJson(json);

    case 'TestReport':
      return TestReportBuilder.fromJson(json);

    case 'TestScript':
      return TestScriptBuilder.fromJson(json);

    case 'Transport':
      return TransportBuilder.fromJson(json);

    case 'ValueSet':
      return ValueSetBuilder.fromJson(json);

    case 'VerificationResult':
      return VerificationResultBuilder.fromJson(json);

    case 'VisionPrescription':
      return VisionPrescriptionBuilder.fromJson(json);

    default:
      throw UnsupportedError(
          'You have passed ResourceBuilder.fromJson a type which does not '
          'exist or is null. In this case, the resourceType is $resourceType.');
  }
}
