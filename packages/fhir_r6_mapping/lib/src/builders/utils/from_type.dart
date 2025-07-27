import 'package:fhir_r6_mapping/fhir_r6_mapping.dart';

/// This function accepts a dynamic value, and a String type and attmpts
/// to create that FhirType
FhirBaseBuilder? fromType(dynamic value, String type) {
  if (value == null) return null;
  final fhirType = type.toLowerCase();
  switch (fhirType) {
    case 'fhirbase64binary':
      return value is Map<String, dynamic>
          ? FhirBase64BinaryBuilder.fromJson(value)
          : FhirBase64BinaryBuilder.tryParse(value);
    case 'base64binary':
      return value is Map<String, dynamic>
          ? FhirBase64BinaryBuilder.fromJson(value)
          : FhirBase64BinaryBuilder.tryParse(value);
    case 'fhirboolean':
      return value is Map<String, dynamic>
          ? FhirBooleanBuilder.fromJson(value)
          : FhirBooleanBuilder.tryParse(value);
    case 'boolean':
      return value is Map<String, dynamic>
          ? FhirBooleanBuilder.fromJson(value)
          : FhirBooleanBuilder.tryParse(value);
    case 'fhircanonical':
      return value is Map<String, dynamic>
          ? FhirCanonicalBuilder.fromJson(value)
          : FhirCanonicalBuilder.tryParse(value);
    case 'canonical':
      return value is Map<String, dynamic>
          ? FhirCanonicalBuilder.fromJson(value)
          : FhirCanonicalBuilder.tryParse(value);
    case 'fhircode':
      return value is Map<String, dynamic>
          ? FhirCodeBuilder.fromJson(value)
          : FhirCodeBuilder.tryParse(value);
    case 'code':
      return value is Map<String, dynamic>
          ? FhirCodeBuilder.fromJson(value)
          : FhirCodeBuilder.tryParse(value);
    case 'fhirdate':
      return value is Map<String, dynamic>
          ? FhirDateBuilder.fromJson(value)
          : FhirDateBuilder.tryParse(value);
    case 'date':
      return value is Map<String, dynamic>
          ? FhirDateBuilder.fromJson(value)
          : FhirDateBuilder.tryParse(value);
    case 'fhirdatetime':
      return value is Map<String, dynamic>
          ? FhirDateTimeBuilder.fromJson(value)
          : FhirDateTimeBuilder.tryParse(value);
    case 'datetime':
      return value is Map<String, dynamic>
          ? FhirDateTimeBuilder.fromJson(value)
          : FhirDateTimeBuilder.tryParse(value);
    case 'fhirdecimal':
      return value is Map<String, dynamic>
          ? FhirDecimalBuilder.fromJson(value)
          : FhirDecimalBuilder.tryParse(value);
    case 'decimal':
      return value is Map<String, dynamic>
          ? FhirDecimalBuilder.fromJson(value)
          : FhirDecimalBuilder.tryParse(value);
    case 'fhirid':
      return value is Map<String, dynamic>
          ? FhirIdBuilder.fromJson(value)
          : FhirIdBuilder.tryParse(value);
    case 'id':
      return value is Map<String, dynamic>
          ? FhirIdBuilder.fromJson(value)
          : FhirIdBuilder.tryParse(value);
    case 'fhirinstant':
      return value is Map<String, dynamic>
          ? FhirInstantBuilder.fromJson(value)
          : FhirInstantBuilder.tryParse(value);
    case 'instant':
      return value is Map<String, dynamic>
          ? FhirInstantBuilder.fromJson(value)
          : FhirInstantBuilder.tryParse(value);
    case 'fhirinteger':
      return value is Map<String, dynamic>
          ? FhirIntegerBuilder.fromJson(value)
          : FhirIntegerBuilder.tryParse(value);
    case 'integer':
      return value is Map<String, dynamic>
          ? FhirIntegerBuilder.fromJson(value)
          : FhirIntegerBuilder.tryParse(value);
    case 'fhirinteger64':
      return value is Map<String, dynamic>
          ? FhirInteger64Builder.fromJson(value)
          : FhirInteger64Builder.tryParse(value);
    case 'integer64':
      return value is Map<String, dynamic>
          ? FhirInteger64Builder.fromJson(value)
          : FhirInteger64Builder.tryParse(value);
    case 'fhirmarkdown':
      return value is Map<String, dynamic>
          ? FhirMarkdownBuilder.fromJson(value)
          : FhirMarkdownBuilder.tryParse(value);
    case 'markdown':
      return value is Map<String, dynamic>
          ? FhirMarkdownBuilder.fromJson(value)
          : FhirMarkdownBuilder.tryParse(value);
    case 'fhiroid':
      return value is Map<String, dynamic>
          ? FhirOidBuilder.fromJson(value)
          : FhirOidBuilder.tryParse(value);
    case 'oid':
      return value is Map<String, dynamic>
          ? FhirOidBuilder.fromJson(value)
          : FhirOidBuilder.tryParse(value);
    case 'fhirpositiveint':
      return value is Map<String, dynamic>
          ? FhirPositiveIntBuilder.fromJson(value)
          : FhirPositiveIntBuilder.tryParse(value);
    case 'positiveint':
      return value is Map<String, dynamic>
          ? FhirPositiveIntBuilder.fromJson(value)
          : FhirPositiveIntBuilder.tryParse(value);
    case 'fhirstring':
      return value is Map<String, dynamic>
          ? FhirStringBuilder.fromJson(value)
          : FhirStringBuilder.tryParse(value);
    case 'string':
      return value is Map<String, dynamic>
          ? FhirStringBuilder.fromJson(value)
          : FhirStringBuilder.tryParse(value);
    case 'fhirtime':
      return value is Map<String, dynamic>
          ? FhirTimeBuilder.fromJson(value)
          : FhirTimeBuilder.tryParse(value);
    case 'time':
      return value is Map<String, dynamic>
          ? FhirTimeBuilder.fromJson(value)
          : FhirTimeBuilder.tryParse(value);
    case 'fhirunsignedint':
      return value is Map<String, dynamic>
          ? FhirUnsignedIntBuilder.fromJson(value)
          : FhirUnsignedIntBuilder.tryParse(value);
    case 'unsignedint':
      return value is Map<String, dynamic>
          ? FhirUnsignedIntBuilder.fromJson(value)
          : FhirUnsignedIntBuilder.tryParse(value);
    case 'fhiruri':
      return value is Map<String, dynamic>
          ? FhirUriBuilder.fromJson(value)
          : FhirUriBuilder.tryParse(value);
    case 'uri':
      return value is Map<String, dynamic>
          ? FhirUriBuilder.fromJson(value)
          : FhirUriBuilder.tryParse(value);
    case 'fhirurl':
      return value is Map<String, dynamic>
          ? FhirUrlBuilder.fromJson(value)
          : FhirUrlBuilder.tryParse(value);
    case 'url':
      return value is Map<String, dynamic>
          ? FhirUrlBuilder.fromJson(value)
          : FhirUrlBuilder.tryParse(value);
    case 'fhiruuid':
      return value is Map<String, dynamic>
          ? FhirUuidBuilder.fromJson(value)
          : FhirUuidBuilder.tryParse(value);
    case 'uuid':
      return value is Map<String, dynamic>
          ? FhirUuidBuilder.fromJson(value)
          : FhirUuidBuilder.tryParse(value);
    case 'fhirxhtml':
      return value is Map<String, dynamic>
          ? FhirXhtmlBuilder.fromJson(value)
          : FhirXhtmlBuilder.tryParse(value);
    case 'xhtml':
      return value is Map<String, dynamic>
          ? FhirXhtmlBuilder.fromJson(value)
          : FhirXhtmlBuilder.tryParse(value);
    case 'element':
      return value is! Map<String, dynamic>
          ? null
          : ElementBuilder.fromJson(value);
    case 'datatype':
      return value is! Map<String, dynamic>
          ? null
          : DataTypeBuilder.fromJson(value);
    case 'backbonetype':
      return value is! Map<String, dynamic>
          ? null
          : BackboneTypeBuilder.fromJson(value);
    case 'fhirextension':
      return value is! Map<String, dynamic>
          ? null
          : FhirExtensionBuilder.fromJson(value);
    case 'extension':
      return value is! Map<String, dynamic>
          ? null
          : FhirExtensionBuilder.fromJson(value);
    case 'narrative':
      return value is! Map<String, dynamic>
          ? null
          : NarrativeBuilder.fromJson(value);
    case 'annotation':
      return value is! Map<String, dynamic>
          ? null
          : AnnotationBuilder.fromJson(value);
    case 'attachment':
      return value is! Map<String, dynamic>
          ? null
          : AttachmentBuilder.fromJson(value);
    case 'identifier':
      return value is! Map<String, dynamic>
          ? null
          : IdentifierBuilder.fromJson(value);
    case 'codeableconcept':
      return value is! Map<String, dynamic>
          ? null
          : CodeableConceptBuilder.fromJson(value);
    case 'codeablereference':
      return value is! Map<String, dynamic>
          ? null
          : CodeableReferenceBuilder.fromJson(value);
    case 'coding':
      return value is! Map<String, dynamic>
          ? null
          : CodingBuilder.fromJson(value);
    case 'quantity':
      return value is! Map<String, dynamic>
          ? null
          : QuantityBuilder.fromJson(value);
    case 'fhirduration':
      return value is! Map<String, dynamic>
          ? null
          : FhirDurationBuilder.fromJson(value);
    case 'duration':
      return value is! Map<String, dynamic>
          ? null
          : FhirDurationBuilder.fromJson(value);
    case 'distance':
      return value is! Map<String, dynamic>
          ? null
          : DistanceBuilder.fromJson(value);
    case 'count':
      return value is! Map<String, dynamic>
          ? null
          : CountBuilder.fromJson(value);
    case 'money':
      return value is! Map<String, dynamic>
          ? null
          : MoneyBuilder.fromJson(value);
    case 'age':
      return value is! Map<String, dynamic> ? null : AgeBuilder.fromJson(value);
    case 'range':
      return value is! Map<String, dynamic>
          ? null
          : RangeBuilder.fromJson(value);
    case 'period':
      return value is! Map<String, dynamic>
          ? null
          : PeriodBuilder.fromJson(value);
    case 'ratio':
      return value is! Map<String, dynamic>
          ? null
          : RatioBuilder.fromJson(value);
    case 'ratiorange':
      return value is! Map<String, dynamic>
          ? null
          : RatioRangeBuilder.fromJson(value);
    case 'reference':
      return value is! Map<String, dynamic>
          ? null
          : ReferenceBuilder.fromJson(value);
    case 'sampleddata':
      return value is! Map<String, dynamic>
          ? null
          : SampledDataBuilder.fromJson(value);
    case 'signature':
      return value is! Map<String, dynamic>
          ? null
          : SignatureBuilder.fromJson(value);
    case 'humanname':
      return value is! Map<String, dynamic>
          ? null
          : HumanNameBuilder.fromJson(value);
    case 'address':
      return value is! Map<String, dynamic>
          ? null
          : AddressBuilder.fromJson(value);
    case 'contactpoint':
      return value is! Map<String, dynamic>
          ? null
          : ContactPointBuilder.fromJson(value);
    case 'timing':
      return value is! Map<String, dynamic>
          ? null
          : TimingBuilder.fromJson(value);
    case 'timingrepeat':
      return value is! Map<String, dynamic>
          ? null
          : TimingRepeatBuilder.fromJson(value);
    case 'timing_repeat':
      return value is! Map<String, dynamic>
          ? null
          : TimingRepeatBuilder.fromJson(value);
    case 'fhirmeta':
      return value is! Map<String, dynamic>
          ? null
          : FhirMetaBuilder.fromJson(value);
    case 'meta':
      return value is! Map<String, dynamic>
          ? null
          : FhirMetaBuilder.fromJson(value);
    case 'contactdetail':
      return value is! Map<String, dynamic>
          ? null
          : ContactDetailBuilder.fromJson(value);
    case 'extendedcontactdetail':
      return value is! Map<String, dynamic>
          ? null
          : ExtendedContactDetailBuilder.fromJson(value);
    case 'virtualservicedetail':
      return value is! Map<String, dynamic>
          ? null
          : VirtualServiceDetailBuilder.fromJson(value);
    case 'availability':
      return value is! Map<String, dynamic>
          ? null
          : AvailabilityBuilder.fromJson(value);
    case 'availabilityavailabletime':
      return value is! Map<String, dynamic>
          ? null
          : AvailabilityAvailableTimeBuilder.fromJson(value);
    case 'availability_availabletime':
      return value is! Map<String, dynamic>
          ? null
          : AvailabilityAvailableTimeBuilder.fromJson(value);
    case 'availabilitynotavailabletime':
      return value is! Map<String, dynamic>
          ? null
          : AvailabilityNotAvailableTimeBuilder.fromJson(value);
    case 'availability_notavailabletime':
      return value is! Map<String, dynamic>
          ? null
          : AvailabilityNotAvailableTimeBuilder.fromJson(value);
    case 'monetarycomponent':
      return value is! Map<String, dynamic>
          ? null
          : MonetaryComponentBuilder.fromJson(value);
    case 'contributor':
      return value is! Map<String, dynamic>
          ? null
          : ContributorBuilder.fromJson(value);
    case 'datarequirement':
      return value is! Map<String, dynamic>
          ? null
          : DataRequirementBuilder.fromJson(value);
    case 'datarequirementcodefilter':
      return value is! Map<String, dynamic>
          ? null
          : DataRequirementCodeFilterBuilder.fromJson(value);
    case 'datarequirement_codefilter':
      return value is! Map<String, dynamic>
          ? null
          : DataRequirementCodeFilterBuilder.fromJson(value);
    case 'datarequirementdatefilter':
      return value is! Map<String, dynamic>
          ? null
          : DataRequirementDateFilterBuilder.fromJson(value);
    case 'datarequirement_datefilter':
      return value is! Map<String, dynamic>
          ? null
          : DataRequirementDateFilterBuilder.fromJson(value);
    case 'datarequirementvaluefilter':
      return value is! Map<String, dynamic>
          ? null
          : DataRequirementValueFilterBuilder.fromJson(value);
    case 'datarequirement_valuefilter':
      return value is! Map<String, dynamic>
          ? null
          : DataRequirementValueFilterBuilder.fromJson(value);
    case 'datarequirementsort':
      return value is! Map<String, dynamic>
          ? null
          : DataRequirementSortBuilder.fromJson(value);
    case 'datarequirement_sort':
      return value is! Map<String, dynamic>
          ? null
          : DataRequirementSortBuilder.fromJson(value);
    case 'parameterdefinition':
      return value is! Map<String, dynamic>
          ? null
          : ParameterDefinitionBuilder.fromJson(value);
    case 'relatedartifact':
      return value is! Map<String, dynamic>
          ? null
          : RelatedArtifactBuilder.fromJson(value);
    case 'triggerdefinition':
      return value is! Map<String, dynamic>
          ? null
          : TriggerDefinitionBuilder.fromJson(value);
    case 'usagecontext':
      return value is! Map<String, dynamic>
          ? null
          : UsageContextBuilder.fromJson(value);
    case 'dosage':
      return value is! Map<String, dynamic>
          ? null
          : DosageBuilder.fromJson(value);
    case 'dosagedoseandrate':
      return value is! Map<String, dynamic>
          ? null
          : DosageDoseAndRateBuilder.fromJson(value);
    case 'dosage_doseandrate':
      return value is! Map<String, dynamic>
          ? null
          : DosageDoseAndRateBuilder.fromJson(value);
    case 'productshelflife':
      return value is! Map<String, dynamic>
          ? null
          : ProductShelfLifeBuilder.fromJson(value);
    case 'marketingstatus':
      return value is! Map<String, dynamic>
          ? null
          : MarketingStatusBuilder.fromJson(value);
    case 'fhirexpression':
      return value is! Map<String, dynamic>
          ? null
          : FhirExpressionBuilder.fromJson(value);
    case 'expression':
      return value is! Map<String, dynamic>
          ? null
          : FhirExpressionBuilder.fromJson(value);
    case 'elementdefinition':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionBuilder.fromJson(value);
    case 'elementdefinitionslicing':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionSlicingBuilder.fromJson(value);
    case 'elementdefinition_slicing':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionSlicingBuilder.fromJson(value);
    case 'elementdefinitiondiscriminator':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionDiscriminatorBuilder.fromJson(value);
    case 'elementdefinition_discriminator':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionDiscriminatorBuilder.fromJson(value);
    case 'elementdefinitionbase':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionBaseBuilder.fromJson(value);
    case 'elementdefinition_base':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionBaseBuilder.fromJson(value);
    case 'elementdefinitiontype':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionTypeBuilder.fromJson(value);
    case 'elementdefinition_type':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionTypeBuilder.fromJson(value);
    case 'elementdefinitionexample':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionExampleBuilder.fromJson(value);
    case 'elementdefinition_example':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionExampleBuilder.fromJson(value);
    case 'elementdefinitionconstraint':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionConstraintBuilder.fromJson(value);
    case 'elementdefinition_constraint':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionConstraintBuilder.fromJson(value);
    case 'elementdefinitionbinding':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionBindingBuilder.fromJson(value);
    case 'elementdefinition_binding':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionBindingBuilder.fromJson(value);
    case 'elementdefinitionadditional':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionAdditionalBuilder.fromJson(value);
    case 'elementdefinition_additional':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionAdditionalBuilder.fromJson(value);
    case 'elementdefinitionmapping':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionMappingBuilder.fromJson(value);
    case 'elementdefinition_mapping':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionMappingBuilder.fromJson(value);
    case 'account':
      return value is! Map<String, dynamic>
          ? null
          : AccountBuilder.fromJson(value);
    case 'accountcoverage':
      return value is! Map<String, dynamic>
          ? null
          : AccountCoverageBuilder.fromJson(value);
    case 'account_coverage':
      return value is! Map<String, dynamic>
          ? null
          : AccountCoverageBuilder.fromJson(value);
    case 'accountguarantor':
      return value is! Map<String, dynamic>
          ? null
          : AccountGuarantorBuilder.fromJson(value);
    case 'account_guarantor':
      return value is! Map<String, dynamic>
          ? null
          : AccountGuarantorBuilder.fromJson(value);
    case 'accountdiagnosis':
      return value is! Map<String, dynamic>
          ? null
          : AccountDiagnosisBuilder.fromJson(value);
    case 'account_diagnosis':
      return value is! Map<String, dynamic>
          ? null
          : AccountDiagnosisBuilder.fromJson(value);
    case 'accountprocedure':
      return value is! Map<String, dynamic>
          ? null
          : AccountProcedureBuilder.fromJson(value);
    case 'account_procedure':
      return value is! Map<String, dynamic>
          ? null
          : AccountProcedureBuilder.fromJson(value);
    case 'accountrelatedaccount':
      return value is! Map<String, dynamic>
          ? null
          : AccountRelatedAccountBuilder.fromJson(value);
    case 'account_relatedaccount':
      return value is! Map<String, dynamic>
          ? null
          : AccountRelatedAccountBuilder.fromJson(value);
    case 'accountbalance':
      return value is! Map<String, dynamic>
          ? null
          : AccountBalanceBuilder.fromJson(value);
    case 'account_balance':
      return value is! Map<String, dynamic>
          ? null
          : AccountBalanceBuilder.fromJson(value);
    case 'activitydefinition':
      return value is! Map<String, dynamic>
          ? null
          : ActivityDefinitionBuilder.fromJson(value);
    case 'activitydefinitionparticipant':
      return value is! Map<String, dynamic>
          ? null
          : ActivityDefinitionParticipantBuilder.fromJson(value);
    case 'activitydefinition_participant':
      return value is! Map<String, dynamic>
          ? null
          : ActivityDefinitionParticipantBuilder.fromJson(value);
    case 'activitydefinitiondynamicvalue':
      return value is! Map<String, dynamic>
          ? null
          : ActivityDefinitionDynamicValueBuilder.fromJson(value);
    case 'activitydefinition_dynamicvalue':
      return value is! Map<String, dynamic>
          ? null
          : ActivityDefinitionDynamicValueBuilder.fromJson(value);
    case 'actordefinition':
      return value is! Map<String, dynamic>
          ? null
          : ActorDefinitionBuilder.fromJson(value);
    case 'administrableproductdefinition':
      return value is! Map<String, dynamic>
          ? null
          : AdministrableProductDefinitionBuilder.fromJson(value);
    case 'administrableproductdefinitionproperty':
      return value is! Map<String, dynamic>
          ? null
          : AdministrableProductDefinitionPropertyBuilder.fromJson(value);
    case 'administrableproductdefinition_property':
      return value is! Map<String, dynamic>
          ? null
          : AdministrableProductDefinitionPropertyBuilder.fromJson(value);
    case 'administrableproductdefinitionrouteofadministration':
      return value is! Map<String, dynamic>
          ? null
          : AdministrableProductDefinitionRouteOfAdministrationBuilder.fromJson(
              value,
            );
    case 'administrableproductdefinition_routeofadministration':
      return value is! Map<String, dynamic>
          ? null
          : AdministrableProductDefinitionRouteOfAdministrationBuilder.fromJson(
              value,
            );
    case 'administrableproductdefinitiontargetspecies':
      return value is! Map<String, dynamic>
          ? null
          : AdministrableProductDefinitionTargetSpeciesBuilder.fromJson(value);
    case 'administrableproductdefinition_targetspecies':
      return value is! Map<String, dynamic>
          ? null
          : AdministrableProductDefinitionTargetSpeciesBuilder.fromJson(value);
    case 'administrableproductdefinitionwithdrawalperiod':
      return value is! Map<String, dynamic>
          ? null
          : AdministrableProductDefinitionWithdrawalPeriodBuilder.fromJson(
              value,
            );
    case 'administrableproductdefinition_withdrawalperiod':
      return value is! Map<String, dynamic>
          ? null
          : AdministrableProductDefinitionWithdrawalPeriodBuilder.fromJson(
              value,
            );
    case 'adverseevent':
      return value is! Map<String, dynamic>
          ? null
          : AdverseEventBuilder.fromJson(value);
    case 'adverseeventparticipant':
      return value is! Map<String, dynamic>
          ? null
          : AdverseEventParticipantBuilder.fromJson(value);
    case 'adverseevent_participant':
      return value is! Map<String, dynamic>
          ? null
          : AdverseEventParticipantBuilder.fromJson(value);
    case 'adverseeventsuspectentity':
      return value is! Map<String, dynamic>
          ? null
          : AdverseEventSuspectEntityBuilder.fromJson(value);
    case 'adverseevent_suspectentity':
      return value is! Map<String, dynamic>
          ? null
          : AdverseEventSuspectEntityBuilder.fromJson(value);
    case 'adverseeventcausality':
      return value is! Map<String, dynamic>
          ? null
          : AdverseEventCausalityBuilder.fromJson(value);
    case 'adverseevent_causality':
      return value is! Map<String, dynamic>
          ? null
          : AdverseEventCausalityBuilder.fromJson(value);
    case 'adverseeventcontributingfactor':
      return value is! Map<String, dynamic>
          ? null
          : AdverseEventContributingFactorBuilder.fromJson(value);
    case 'adverseevent_contributingfactor':
      return value is! Map<String, dynamic>
          ? null
          : AdverseEventContributingFactorBuilder.fromJson(value);
    case 'adverseeventpreventiveaction':
      return value is! Map<String, dynamic>
          ? null
          : AdverseEventPreventiveActionBuilder.fromJson(value);
    case 'adverseevent_preventiveaction':
      return value is! Map<String, dynamic>
          ? null
          : AdverseEventPreventiveActionBuilder.fromJson(value);
    case 'adverseeventmitigatingaction':
      return value is! Map<String, dynamic>
          ? null
          : AdverseEventMitigatingActionBuilder.fromJson(value);
    case 'adverseevent_mitigatingaction':
      return value is! Map<String, dynamic>
          ? null
          : AdverseEventMitigatingActionBuilder.fromJson(value);
    case 'adverseeventsupportinginfo':
      return value is! Map<String, dynamic>
          ? null
          : AdverseEventSupportingInfoBuilder.fromJson(value);
    case 'adverseevent_supportinginfo':
      return value is! Map<String, dynamic>
          ? null
          : AdverseEventSupportingInfoBuilder.fromJson(value);
    case 'allergyintolerance':
      return value is! Map<String, dynamic>
          ? null
          : AllergyIntoleranceBuilder.fromJson(value);
    case 'allergyintoleranceparticipant':
      return value is! Map<String, dynamic>
          ? null
          : AllergyIntoleranceParticipantBuilder.fromJson(value);
    case 'allergyintolerance_participant':
      return value is! Map<String, dynamic>
          ? null
          : AllergyIntoleranceParticipantBuilder.fromJson(value);
    case 'allergyintolerancereaction':
      return value is! Map<String, dynamic>
          ? null
          : AllergyIntoleranceReactionBuilder.fromJson(value);
    case 'allergyintolerance_reaction':
      return value is! Map<String, dynamic>
          ? null
          : AllergyIntoleranceReactionBuilder.fromJson(value);
    case 'appointment':
      return value is! Map<String, dynamic>
          ? null
          : AppointmentBuilder.fromJson(value);
    case 'appointmentparticipant':
      return value is! Map<String, dynamic>
          ? null
          : AppointmentParticipantBuilder.fromJson(value);
    case 'appointment_participant':
      return value is! Map<String, dynamic>
          ? null
          : AppointmentParticipantBuilder.fromJson(value);
    case 'appointmentrecurrencetemplate':
      return value is! Map<String, dynamic>
          ? null
          : AppointmentRecurrenceTemplateBuilder.fromJson(value);
    case 'appointment_recurrencetemplate':
      return value is! Map<String, dynamic>
          ? null
          : AppointmentRecurrenceTemplateBuilder.fromJson(value);
    case 'appointmentweeklytemplate':
      return value is! Map<String, dynamic>
          ? null
          : AppointmentWeeklyTemplateBuilder.fromJson(value);
    case 'appointment_weeklytemplate':
      return value is! Map<String, dynamic>
          ? null
          : AppointmentWeeklyTemplateBuilder.fromJson(value);
    case 'appointmentmonthlytemplate':
      return value is! Map<String, dynamic>
          ? null
          : AppointmentMonthlyTemplateBuilder.fromJson(value);
    case 'appointment_monthlytemplate':
      return value is! Map<String, dynamic>
          ? null
          : AppointmentMonthlyTemplateBuilder.fromJson(value);
    case 'appointmentyearlytemplate':
      return value is! Map<String, dynamic>
          ? null
          : AppointmentYearlyTemplateBuilder.fromJson(value);
    case 'appointment_yearlytemplate':
      return value is! Map<String, dynamic>
          ? null
          : AppointmentYearlyTemplateBuilder.fromJson(value);
    case 'appointmentresponse':
      return value is! Map<String, dynamic>
          ? null
          : AppointmentResponseBuilder.fromJson(value);
    case 'artifactassessment':
      return value is! Map<String, dynamic>
          ? null
          : ArtifactAssessmentBuilder.fromJson(value);
    case 'artifactassessmentcontent':
      return value is! Map<String, dynamic>
          ? null
          : ArtifactAssessmentContentBuilder.fromJson(value);
    case 'artifactassessment_content':
      return value is! Map<String, dynamic>
          ? null
          : ArtifactAssessmentContentBuilder.fromJson(value);
    case 'auditevent':
      return value is! Map<String, dynamic>
          ? null
          : AuditEventBuilder.fromJson(value);
    case 'auditeventoutcome':
      return value is! Map<String, dynamic>
          ? null
          : AuditEventOutcomeBuilder.fromJson(value);
    case 'auditevent_outcome':
      return value is! Map<String, dynamic>
          ? null
          : AuditEventOutcomeBuilder.fromJson(value);
    case 'auditeventagent':
      return value is! Map<String, dynamic>
          ? null
          : AuditEventAgentBuilder.fromJson(value);
    case 'auditevent_agent':
      return value is! Map<String, dynamic>
          ? null
          : AuditEventAgentBuilder.fromJson(value);
    case 'auditeventsource':
      return value is! Map<String, dynamic>
          ? null
          : AuditEventSourceBuilder.fromJson(value);
    case 'auditevent_source':
      return value is! Map<String, dynamic>
          ? null
          : AuditEventSourceBuilder.fromJson(value);
    case 'auditevententity':
      return value is! Map<String, dynamic>
          ? null
          : AuditEventEntityBuilder.fromJson(value);
    case 'auditevent_entity':
      return value is! Map<String, dynamic>
          ? null
          : AuditEventEntityBuilder.fromJson(value);
    case 'auditeventdetail':
      return value is! Map<String, dynamic>
          ? null
          : AuditEventDetailBuilder.fromJson(value);
    case 'auditevent_detail':
      return value is! Map<String, dynamic>
          ? null
          : AuditEventDetailBuilder.fromJson(value);
    case 'basic':
      return value is! Map<String, dynamic>
          ? null
          : BasicBuilder.fromJson(value);
    case 'binary':
      return value is! Map<String, dynamic>
          ? null
          : BinaryBuilder.fromJson(value);
    case 'biologicallyderivedproduct':
      return value is! Map<String, dynamic>
          ? null
          : BiologicallyDerivedProductBuilder.fromJson(value);
    case 'biologicallyderivedproductcollection':
      return value is! Map<String, dynamic>
          ? null
          : BiologicallyDerivedProductCollectionBuilder.fromJson(value);
    case 'biologicallyderivedproduct_collection':
      return value is! Map<String, dynamic>
          ? null
          : BiologicallyDerivedProductCollectionBuilder.fromJson(value);
    case 'biologicallyderivedproductproperty':
      return value is! Map<String, dynamic>
          ? null
          : BiologicallyDerivedProductPropertyBuilder.fromJson(value);
    case 'biologicallyderivedproduct_property':
      return value is! Map<String, dynamic>
          ? null
          : BiologicallyDerivedProductPropertyBuilder.fromJson(value);
    case 'biologicallyderivedproductdispense':
      return value is! Map<String, dynamic>
          ? null
          : BiologicallyDerivedProductDispenseBuilder.fromJson(value);
    case 'biologicallyderivedproductdispenseperformer':
      return value is! Map<String, dynamic>
          ? null
          : BiologicallyDerivedProductDispensePerformerBuilder.fromJson(value);
    case 'biologicallyderivedproductdispense_performer':
      return value is! Map<String, dynamic>
          ? null
          : BiologicallyDerivedProductDispensePerformerBuilder.fromJson(value);
    case 'bodystructure':
      return value is! Map<String, dynamic>
          ? null
          : BodyStructureBuilder.fromJson(value);
    case 'bodystructureincludedstructure':
      return value is! Map<String, dynamic>
          ? null
          : BodyStructureIncludedStructureBuilder.fromJson(value);
    case 'bodystructure_includedstructure':
      return value is! Map<String, dynamic>
          ? null
          : BodyStructureIncludedStructureBuilder.fromJson(value);
    case 'bodystructurebodylandmarkorientation':
      return value is! Map<String, dynamic>
          ? null
          : BodyStructureBodyLandmarkOrientationBuilder.fromJson(value);
    case 'bodystructure_bodylandmarkorientation':
      return value is! Map<String, dynamic>
          ? null
          : BodyStructureBodyLandmarkOrientationBuilder.fromJson(value);
    case 'bodystructuredistancefromlandmark':
      return value is! Map<String, dynamic>
          ? null
          : BodyStructureDistanceFromLandmarkBuilder.fromJson(value);
    case 'bodystructure_distancefromlandmark':
      return value is! Map<String, dynamic>
          ? null
          : BodyStructureDistanceFromLandmarkBuilder.fromJson(value);
    case 'bundle':
      return value is! Map<String, dynamic>
          ? null
          : BundleBuilder.fromJson(value);
    case 'bundlelink':
      return value is! Map<String, dynamic>
          ? null
          : BundleLinkBuilder.fromJson(value);
    case 'bundle_link':
      return value is! Map<String, dynamic>
          ? null
          : BundleLinkBuilder.fromJson(value);
    case 'bundleentry':
      return value is! Map<String, dynamic>
          ? null
          : BundleEntryBuilder.fromJson(value);
    case 'bundle_entry':
      return value is! Map<String, dynamic>
          ? null
          : BundleEntryBuilder.fromJson(value);
    case 'bundlesearch':
      return value is! Map<String, dynamic>
          ? null
          : BundleSearchBuilder.fromJson(value);
    case 'bundle_search':
      return value is! Map<String, dynamic>
          ? null
          : BundleSearchBuilder.fromJson(value);
    case 'bundlerequest':
      return value is! Map<String, dynamic>
          ? null
          : BundleRequestBuilder.fromJson(value);
    case 'bundle_request':
      return value is! Map<String, dynamic>
          ? null
          : BundleRequestBuilder.fromJson(value);
    case 'bundleresponse':
      return value is! Map<String, dynamic>
          ? null
          : BundleResponseBuilder.fromJson(value);
    case 'bundle_response':
      return value is! Map<String, dynamic>
          ? null
          : BundleResponseBuilder.fromJson(value);
    case 'capabilitystatement':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementBuilder.fromJson(value);
    case 'capabilitystatementsoftware':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementSoftwareBuilder.fromJson(value);
    case 'capabilitystatement_software':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementSoftwareBuilder.fromJson(value);
    case 'capabilitystatementimplementation':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementImplementationBuilder.fromJson(value);
    case 'capabilitystatement_implementation':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementImplementationBuilder.fromJson(value);
    case 'capabilitystatementrest':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementRestBuilder.fromJson(value);
    case 'capabilitystatement_rest':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementRestBuilder.fromJson(value);
    case 'capabilitystatementsecurity':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementSecurityBuilder.fromJson(value);
    case 'capabilitystatement_security':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementSecurityBuilder.fromJson(value);
    case 'capabilitystatementresource':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementResourceBuilder.fromJson(value);
    case 'capabilitystatement_resource':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementResourceBuilder.fromJson(value);
    case 'capabilitystatementinteraction':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementInteractionBuilder.fromJson(value);
    case 'capabilitystatement_interaction':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementInteractionBuilder.fromJson(value);
    case 'capabilitystatementsearchparam':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementSearchParamBuilder.fromJson(value);
    case 'capabilitystatement_searchparam':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementSearchParamBuilder.fromJson(value);
    case 'capabilitystatementoperation':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementOperationBuilder.fromJson(value);
    case 'capabilitystatement_operation':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementOperationBuilder.fromJson(value);
    case 'capabilitystatementinteraction1':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementInteraction1Builder.fromJson(value);
    case 'capabilitystatement_interaction1':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementInteraction1Builder.fromJson(value);
    case 'capabilitystatementmessaging':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementMessagingBuilder.fromJson(value);
    case 'capabilitystatement_messaging':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementMessagingBuilder.fromJson(value);
    case 'capabilitystatementendpoint':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementEndpointBuilder.fromJson(value);
    case 'capabilitystatement_endpoint':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementEndpointBuilder.fromJson(value);
    case 'capabilitystatementsupportedmessage':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementSupportedMessageBuilder.fromJson(value);
    case 'capabilitystatement_supportedmessage':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementSupportedMessageBuilder.fromJson(value);
    case 'capabilitystatementdocument':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementDocumentBuilder.fromJson(value);
    case 'capabilitystatement_document':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementDocumentBuilder.fromJson(value);
    case 'careplan':
      return value is! Map<String, dynamic>
          ? null
          : CarePlanBuilder.fromJson(value);
    case 'careplanactivity':
      return value is! Map<String, dynamic>
          ? null
          : CarePlanActivityBuilder.fromJson(value);
    case 'careplan_activity':
      return value is! Map<String, dynamic>
          ? null
          : CarePlanActivityBuilder.fromJson(value);
    case 'careteam':
      return value is! Map<String, dynamic>
          ? null
          : CareTeamBuilder.fromJson(value);
    case 'careteamparticipant':
      return value is! Map<String, dynamic>
          ? null
          : CareTeamParticipantBuilder.fromJson(value);
    case 'careteam_participant':
      return value is! Map<String, dynamic>
          ? null
          : CareTeamParticipantBuilder.fromJson(value);
    case 'chargeitem':
      return value is! Map<String, dynamic>
          ? null
          : ChargeItemBuilder.fromJson(value);
    case 'chargeitemperformer':
      return value is! Map<String, dynamic>
          ? null
          : ChargeItemPerformerBuilder.fromJson(value);
    case 'chargeitem_performer':
      return value is! Map<String, dynamic>
          ? null
          : ChargeItemPerformerBuilder.fromJson(value);
    case 'chargeitemdefinition':
      return value is! Map<String, dynamic>
          ? null
          : ChargeItemDefinitionBuilder.fromJson(value);
    case 'chargeitemdefinitionapplicability':
      return value is! Map<String, dynamic>
          ? null
          : ChargeItemDefinitionApplicabilityBuilder.fromJson(value);
    case 'chargeitemdefinition_applicability':
      return value is! Map<String, dynamic>
          ? null
          : ChargeItemDefinitionApplicabilityBuilder.fromJson(value);
    case 'chargeitemdefinitionpropertygroup':
      return value is! Map<String, dynamic>
          ? null
          : ChargeItemDefinitionPropertyGroupBuilder.fromJson(value);
    case 'chargeitemdefinition_propertygroup':
      return value is! Map<String, dynamic>
          ? null
          : ChargeItemDefinitionPropertyGroupBuilder.fromJson(value);
    case 'citation':
      return value is! Map<String, dynamic>
          ? null
          : CitationBuilder.fromJson(value);
    case 'citationsummary':
      return value is! Map<String, dynamic>
          ? null
          : CitationSummaryBuilder.fromJson(value);
    case 'citation_summary':
      return value is! Map<String, dynamic>
          ? null
          : CitationSummaryBuilder.fromJson(value);
    case 'citationclassification':
      return value is! Map<String, dynamic>
          ? null
          : CitationClassificationBuilder.fromJson(value);
    case 'citation_classification':
      return value is! Map<String, dynamic>
          ? null
          : CitationClassificationBuilder.fromJson(value);
    case 'citationstatusdate':
      return value is! Map<String, dynamic>
          ? null
          : CitationStatusDateBuilder.fromJson(value);
    case 'citation_statusdate':
      return value is! Map<String, dynamic>
          ? null
          : CitationStatusDateBuilder.fromJson(value);
    case 'citationcitedartifact':
      return value is! Map<String, dynamic>
          ? null
          : CitationCitedArtifactBuilder.fromJson(value);
    case 'citation_citedartifact':
      return value is! Map<String, dynamic>
          ? null
          : CitationCitedArtifactBuilder.fromJson(value);
    case 'citationversion':
      return value is! Map<String, dynamic>
          ? null
          : CitationVersionBuilder.fromJson(value);
    case 'citation_version':
      return value is! Map<String, dynamic>
          ? null
          : CitationVersionBuilder.fromJson(value);
    case 'citationstatusdate1':
      return value is! Map<String, dynamic>
          ? null
          : CitationStatusDate1Builder.fromJson(value);
    case 'citation_statusdate1':
      return value is! Map<String, dynamic>
          ? null
          : CitationStatusDate1Builder.fromJson(value);
    case 'citationtitle':
      return value is! Map<String, dynamic>
          ? null
          : CitationTitleBuilder.fromJson(value);
    case 'citation_title':
      return value is! Map<String, dynamic>
          ? null
          : CitationTitleBuilder.fromJson(value);
    case 'citationabstract':
      return value is! Map<String, dynamic>
          ? null
          : CitationAbstractBuilder.fromJson(value);
    case 'citation_abstract':
      return value is! Map<String, dynamic>
          ? null
          : CitationAbstractBuilder.fromJson(value);
    case 'citationpart':
      return value is! Map<String, dynamic>
          ? null
          : CitationPartBuilder.fromJson(value);
    case 'citation_part':
      return value is! Map<String, dynamic>
          ? null
          : CitationPartBuilder.fromJson(value);
    case 'citationrelatesto':
      return value is! Map<String, dynamic>
          ? null
          : CitationRelatesToBuilder.fromJson(value);
    case 'citation_relatesto':
      return value is! Map<String, dynamic>
          ? null
          : CitationRelatesToBuilder.fromJson(value);
    case 'citationpublicationform':
      return value is! Map<String, dynamic>
          ? null
          : CitationPublicationFormBuilder.fromJson(value);
    case 'citation_publicationform':
      return value is! Map<String, dynamic>
          ? null
          : CitationPublicationFormBuilder.fromJson(value);
    case 'citationpublishedin':
      return value is! Map<String, dynamic>
          ? null
          : CitationPublishedInBuilder.fromJson(value);
    case 'citation_publishedin':
      return value is! Map<String, dynamic>
          ? null
          : CitationPublishedInBuilder.fromJson(value);
    case 'citationweblocation':
      return value is! Map<String, dynamic>
          ? null
          : CitationWebLocationBuilder.fromJson(value);
    case 'citation_weblocation':
      return value is! Map<String, dynamic>
          ? null
          : CitationWebLocationBuilder.fromJson(value);
    case 'citationclassification1':
      return value is! Map<String, dynamic>
          ? null
          : CitationClassification1Builder.fromJson(value);
    case 'citation_classification1':
      return value is! Map<String, dynamic>
          ? null
          : CitationClassification1Builder.fromJson(value);
    case 'citationcontributorship':
      return value is! Map<String, dynamic>
          ? null
          : CitationContributorshipBuilder.fromJson(value);
    case 'citation_contributorship':
      return value is! Map<String, dynamic>
          ? null
          : CitationContributorshipBuilder.fromJson(value);
    case 'citationentry':
      return value is! Map<String, dynamic>
          ? null
          : CitationEntryBuilder.fromJson(value);
    case 'citation_entry':
      return value is! Map<String, dynamic>
          ? null
          : CitationEntryBuilder.fromJson(value);
    case 'citationcontributioninstance':
      return value is! Map<String, dynamic>
          ? null
          : CitationContributionInstanceBuilder.fromJson(value);
    case 'citation_contributioninstance':
      return value is! Map<String, dynamic>
          ? null
          : CitationContributionInstanceBuilder.fromJson(value);
    case 'citationsummary1':
      return value is! Map<String, dynamic>
          ? null
          : CitationSummary1Builder.fromJson(value);
    case 'citation_summary1':
      return value is! Map<String, dynamic>
          ? null
          : CitationSummary1Builder.fromJson(value);
    case 'claim':
      return value is! Map<String, dynamic>
          ? null
          : ClaimBuilder.fromJson(value);
    case 'claimrelated':
      return value is! Map<String, dynamic>
          ? null
          : ClaimRelatedBuilder.fromJson(value);
    case 'claim_related':
      return value is! Map<String, dynamic>
          ? null
          : ClaimRelatedBuilder.fromJson(value);
    case 'claimpayee':
      return value is! Map<String, dynamic>
          ? null
          : ClaimPayeeBuilder.fromJson(value);
    case 'claim_payee':
      return value is! Map<String, dynamic>
          ? null
          : ClaimPayeeBuilder.fromJson(value);
    case 'claimevent':
      return value is! Map<String, dynamic>
          ? null
          : ClaimEventBuilder.fromJson(value);
    case 'claim_event':
      return value is! Map<String, dynamic>
          ? null
          : ClaimEventBuilder.fromJson(value);
    case 'claimcareteam':
      return value is! Map<String, dynamic>
          ? null
          : ClaimCareTeamBuilder.fromJson(value);
    case 'claim_careteam':
      return value is! Map<String, dynamic>
          ? null
          : ClaimCareTeamBuilder.fromJson(value);
    case 'claimsupportinginfo':
      return value is! Map<String, dynamic>
          ? null
          : ClaimSupportingInfoBuilder.fromJson(value);
    case 'claim_supportinginfo':
      return value is! Map<String, dynamic>
          ? null
          : ClaimSupportingInfoBuilder.fromJson(value);
    case 'claimdiagnosis':
      return value is! Map<String, dynamic>
          ? null
          : ClaimDiagnosisBuilder.fromJson(value);
    case 'claim_diagnosis':
      return value is! Map<String, dynamic>
          ? null
          : ClaimDiagnosisBuilder.fromJson(value);
    case 'claimprocedure':
      return value is! Map<String, dynamic>
          ? null
          : ClaimProcedureBuilder.fromJson(value);
    case 'claim_procedure':
      return value is! Map<String, dynamic>
          ? null
          : ClaimProcedureBuilder.fromJson(value);
    case 'claiminsurance':
      return value is! Map<String, dynamic>
          ? null
          : ClaimInsuranceBuilder.fromJson(value);
    case 'claim_insurance':
      return value is! Map<String, dynamic>
          ? null
          : ClaimInsuranceBuilder.fromJson(value);
    case 'claimaccident':
      return value is! Map<String, dynamic>
          ? null
          : ClaimAccidentBuilder.fromJson(value);
    case 'claim_accident':
      return value is! Map<String, dynamic>
          ? null
          : ClaimAccidentBuilder.fromJson(value);
    case 'claimitem':
      return value is! Map<String, dynamic>
          ? null
          : ClaimItemBuilder.fromJson(value);
    case 'claim_item':
      return value is! Map<String, dynamic>
          ? null
          : ClaimItemBuilder.fromJson(value);
    case 'claimbodysite':
      return value is! Map<String, dynamic>
          ? null
          : ClaimBodySiteBuilder.fromJson(value);
    case 'claim_bodysite':
      return value is! Map<String, dynamic>
          ? null
          : ClaimBodySiteBuilder.fromJson(value);
    case 'claimdetail':
      return value is! Map<String, dynamic>
          ? null
          : ClaimDetailBuilder.fromJson(value);
    case 'claim_detail':
      return value is! Map<String, dynamic>
          ? null
          : ClaimDetailBuilder.fromJson(value);
    case 'claimsubdetail':
      return value is! Map<String, dynamic>
          ? null
          : ClaimSubDetailBuilder.fromJson(value);
    case 'claim_subdetail':
      return value is! Map<String, dynamic>
          ? null
          : ClaimSubDetailBuilder.fromJson(value);
    case 'claimresponse':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseBuilder.fromJson(value);
    case 'claimresponseevent':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseEventBuilder.fromJson(value);
    case 'claimresponse_event':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseEventBuilder.fromJson(value);
    case 'claimresponseitem':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseItemBuilder.fromJson(value);
    case 'claimresponse_item':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseItemBuilder.fromJson(value);
    case 'claimresponsereviewoutcome':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseReviewOutcomeBuilder.fromJson(value);
    case 'claimresponse_reviewoutcome':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseReviewOutcomeBuilder.fromJson(value);
    case 'claimresponseadjudication':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseAdjudicationBuilder.fromJson(value);
    case 'claimresponse_adjudication':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseAdjudicationBuilder.fromJson(value);
    case 'claimresponsedetail':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseDetailBuilder.fromJson(value);
    case 'claimresponse_detail':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseDetailBuilder.fromJson(value);
    case 'claimresponsesubdetail':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseSubDetailBuilder.fromJson(value);
    case 'claimresponse_subdetail':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseSubDetailBuilder.fromJson(value);
    case 'claimresponseadditem':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseAddItemBuilder.fromJson(value);
    case 'claimresponse_additem':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseAddItemBuilder.fromJson(value);
    case 'claimresponsebodysite':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseBodySiteBuilder.fromJson(value);
    case 'claimresponse_bodysite':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseBodySiteBuilder.fromJson(value);
    case 'claimresponsedetail1':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseDetail1Builder.fromJson(value);
    case 'claimresponse_detail1':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseDetail1Builder.fromJson(value);
    case 'claimresponsesubdetail1':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseSubDetail1Builder.fromJson(value);
    case 'claimresponse_subdetail1':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseSubDetail1Builder.fromJson(value);
    case 'claimresponsetotal':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseTotalBuilder.fromJson(value);
    case 'claimresponse_total':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseTotalBuilder.fromJson(value);
    case 'claimresponsepayment':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponsePaymentBuilder.fromJson(value);
    case 'claimresponse_payment':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponsePaymentBuilder.fromJson(value);
    case 'claimresponseprocessnote':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseProcessNoteBuilder.fromJson(value);
    case 'claimresponse_processnote':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseProcessNoteBuilder.fromJson(value);
    case 'claimresponseinsurance':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseInsuranceBuilder.fromJson(value);
    case 'claimresponse_insurance':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseInsuranceBuilder.fromJson(value);
    case 'claimresponseerror':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseErrorBuilder.fromJson(value);
    case 'claimresponse_error':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseErrorBuilder.fromJson(value);
    case 'clinicalimpression':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalImpressionBuilder.fromJson(value);
    case 'clinicalimpressionfinding':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalImpressionFindingBuilder.fromJson(value);
    case 'clinicalimpression_finding':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalImpressionFindingBuilder.fromJson(value);
    case 'clinicalusedefinition':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinitionBuilder.fromJson(value);
    case 'clinicalusedefinitioncontraindication':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinitionContraindicationBuilder.fromJson(value);
    case 'clinicalusedefinition_contraindication':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinitionContraindicationBuilder.fromJson(value);
    case 'clinicalusedefinitionothertherapy':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinitionOtherTherapyBuilder.fromJson(value);
    case 'clinicalusedefinition_othertherapy':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinitionOtherTherapyBuilder.fromJson(value);
    case 'clinicalusedefinitionindication':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinitionIndicationBuilder.fromJson(value);
    case 'clinicalusedefinition_indication':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinitionIndicationBuilder.fromJson(value);
    case 'clinicalusedefinitioninteraction':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinitionInteractionBuilder.fromJson(value);
    case 'clinicalusedefinition_interaction':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinitionInteractionBuilder.fromJson(value);
    case 'clinicalusedefinitioninteractant':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinitionInteractantBuilder.fromJson(value);
    case 'clinicalusedefinition_interactant':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinitionInteractantBuilder.fromJson(value);
    case 'clinicalusedefinitionundesirableeffect':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinitionUndesirableEffectBuilder.fromJson(value);
    case 'clinicalusedefinition_undesirableeffect':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinitionUndesirableEffectBuilder.fromJson(value);
    case 'clinicalusedefinitionwarning':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinitionWarningBuilder.fromJson(value);
    case 'clinicalusedefinition_warning':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinitionWarningBuilder.fromJson(value);
    case 'codesystem':
      return value is! Map<String, dynamic>
          ? null
          : CodeSystemBuilder.fromJson(value);
    case 'codesystemfilter':
      return value is! Map<String, dynamic>
          ? null
          : CodeSystemFilterBuilder.fromJson(value);
    case 'codesystem_filter':
      return value is! Map<String, dynamic>
          ? null
          : CodeSystemFilterBuilder.fromJson(value);
    case 'codesystemproperty':
      return value is! Map<String, dynamic>
          ? null
          : CodeSystemPropertyBuilder.fromJson(value);
    case 'codesystem_property':
      return value is! Map<String, dynamic>
          ? null
          : CodeSystemPropertyBuilder.fromJson(value);
    case 'codesystemconcept':
      return value is! Map<String, dynamic>
          ? null
          : CodeSystemConceptBuilder.fromJson(value);
    case 'codesystem_concept':
      return value is! Map<String, dynamic>
          ? null
          : CodeSystemConceptBuilder.fromJson(value);
    case 'codesystemdesignation':
      return value is! Map<String, dynamic>
          ? null
          : CodeSystemDesignationBuilder.fromJson(value);
    case 'codesystem_designation':
      return value is! Map<String, dynamic>
          ? null
          : CodeSystemDesignationBuilder.fromJson(value);
    case 'codesystemproperty1':
      return value is! Map<String, dynamic>
          ? null
          : CodeSystemProperty1Builder.fromJson(value);
    case 'codesystem_property1':
      return value is! Map<String, dynamic>
          ? null
          : CodeSystemProperty1Builder.fromJson(value);
    case 'communication':
      return value is! Map<String, dynamic>
          ? null
          : CommunicationBuilder.fromJson(value);
    case 'communicationpayload':
      return value is! Map<String, dynamic>
          ? null
          : CommunicationPayloadBuilder.fromJson(value);
    case 'communication_payload':
      return value is! Map<String, dynamic>
          ? null
          : CommunicationPayloadBuilder.fromJson(value);
    case 'communicationrequest':
      return value is! Map<String, dynamic>
          ? null
          : CommunicationRequestBuilder.fromJson(value);
    case 'communicationrequestpayload':
      return value is! Map<String, dynamic>
          ? null
          : CommunicationRequestPayloadBuilder.fromJson(value);
    case 'communicationrequest_payload':
      return value is! Map<String, dynamic>
          ? null
          : CommunicationRequestPayloadBuilder.fromJson(value);
    case 'compartmentdefinition':
      return value is! Map<String, dynamic>
          ? null
          : CompartmentDefinitionBuilder.fromJson(value);
    case 'compartmentdefinitionresource':
      return value is! Map<String, dynamic>
          ? null
          : CompartmentDefinitionResourceBuilder.fromJson(value);
    case 'compartmentdefinition_resource':
      return value is! Map<String, dynamic>
          ? null
          : CompartmentDefinitionResourceBuilder.fromJson(value);
    case 'composition':
      return value is! Map<String, dynamic>
          ? null
          : CompositionBuilder.fromJson(value);
    case 'compositionattester':
      return value is! Map<String, dynamic>
          ? null
          : CompositionAttesterBuilder.fromJson(value);
    case 'composition_attester':
      return value is! Map<String, dynamic>
          ? null
          : CompositionAttesterBuilder.fromJson(value);
    case 'compositionevent':
      return value is! Map<String, dynamic>
          ? null
          : CompositionEventBuilder.fromJson(value);
    case 'composition_event':
      return value is! Map<String, dynamic>
          ? null
          : CompositionEventBuilder.fromJson(value);
    case 'compositionsection':
      return value is! Map<String, dynamic>
          ? null
          : CompositionSectionBuilder.fromJson(value);
    case 'composition_section':
      return value is! Map<String, dynamic>
          ? null
          : CompositionSectionBuilder.fromJson(value);
    case 'conceptmap':
      return value is! Map<String, dynamic>
          ? null
          : ConceptMapBuilder.fromJson(value);
    case 'conceptmapproperty':
      return value is! Map<String, dynamic>
          ? null
          : ConceptMapPropertyBuilder.fromJson(value);
    case 'conceptmap_property':
      return value is! Map<String, dynamic>
          ? null
          : ConceptMapPropertyBuilder.fromJson(value);
    case 'conceptmapadditionalattribute':
      return value is! Map<String, dynamic>
          ? null
          : ConceptMapAdditionalAttributeBuilder.fromJson(value);
    case 'conceptmap_additionalattribute':
      return value is! Map<String, dynamic>
          ? null
          : ConceptMapAdditionalAttributeBuilder.fromJson(value);
    case 'conceptmapgroup':
      return value is! Map<String, dynamic>
          ? null
          : ConceptMapGroupBuilder.fromJson(value);
    case 'conceptmap_group':
      return value is! Map<String, dynamic>
          ? null
          : ConceptMapGroupBuilder.fromJson(value);
    case 'conceptmapelement':
      return value is! Map<String, dynamic>
          ? null
          : ConceptMapElementBuilder.fromJson(value);
    case 'conceptmap_element':
      return value is! Map<String, dynamic>
          ? null
          : ConceptMapElementBuilder.fromJson(value);
    case 'conceptmaptarget':
      return value is! Map<String, dynamic>
          ? null
          : ConceptMapTargetBuilder.fromJson(value);
    case 'conceptmap_target':
      return value is! Map<String, dynamic>
          ? null
          : ConceptMapTargetBuilder.fromJson(value);
    case 'conceptmapproperty1':
      return value is! Map<String, dynamic>
          ? null
          : ConceptMapProperty1Builder.fromJson(value);
    case 'conceptmap_property1':
      return value is! Map<String, dynamic>
          ? null
          : ConceptMapProperty1Builder.fromJson(value);
    case 'conceptmapdependson':
      return value is! Map<String, dynamic>
          ? null
          : ConceptMapDependsOnBuilder.fromJson(value);
    case 'conceptmap_dependson':
      return value is! Map<String, dynamic>
          ? null
          : ConceptMapDependsOnBuilder.fromJson(value);
    case 'conceptmapunmapped':
      return value is! Map<String, dynamic>
          ? null
          : ConceptMapUnmappedBuilder.fromJson(value);
    case 'conceptmap_unmapped':
      return value is! Map<String, dynamic>
          ? null
          : ConceptMapUnmappedBuilder.fromJson(value);
    case 'condition':
      return value is! Map<String, dynamic>
          ? null
          : ConditionBuilder.fromJson(value);
    case 'conditionparticipant':
      return value is! Map<String, dynamic>
          ? null
          : ConditionParticipantBuilder.fromJson(value);
    case 'condition_participant':
      return value is! Map<String, dynamic>
          ? null
          : ConditionParticipantBuilder.fromJson(value);
    case 'conditionstage':
      return value is! Map<String, dynamic>
          ? null
          : ConditionStageBuilder.fromJson(value);
    case 'condition_stage':
      return value is! Map<String, dynamic>
          ? null
          : ConditionStageBuilder.fromJson(value);
    case 'conditiondefinition':
      return value is! Map<String, dynamic>
          ? null
          : ConditionDefinitionBuilder.fromJson(value);
    case 'conditiondefinitionobservation':
      return value is! Map<String, dynamic>
          ? null
          : ConditionDefinitionObservationBuilder.fromJson(value);
    case 'conditiondefinition_observation':
      return value is! Map<String, dynamic>
          ? null
          : ConditionDefinitionObservationBuilder.fromJson(value);
    case 'conditiondefinitionmedication':
      return value is! Map<String, dynamic>
          ? null
          : ConditionDefinitionMedicationBuilder.fromJson(value);
    case 'conditiondefinition_medication':
      return value is! Map<String, dynamic>
          ? null
          : ConditionDefinitionMedicationBuilder.fromJson(value);
    case 'conditiondefinitionprecondition':
      return value is! Map<String, dynamic>
          ? null
          : ConditionDefinitionPreconditionBuilder.fromJson(value);
    case 'conditiondefinition_precondition':
      return value is! Map<String, dynamic>
          ? null
          : ConditionDefinitionPreconditionBuilder.fromJson(value);
    case 'conditiondefinitionquestionnaire':
      return value is! Map<String, dynamic>
          ? null
          : ConditionDefinitionQuestionnaireBuilder.fromJson(value);
    case 'conditiondefinition_questionnaire':
      return value is! Map<String, dynamic>
          ? null
          : ConditionDefinitionQuestionnaireBuilder.fromJson(value);
    case 'conditiondefinitionplan':
      return value is! Map<String, dynamic>
          ? null
          : ConditionDefinitionPlanBuilder.fromJson(value);
    case 'conditiondefinition_plan':
      return value is! Map<String, dynamic>
          ? null
          : ConditionDefinitionPlanBuilder.fromJson(value);
    case 'consent':
      return value is! Map<String, dynamic>
          ? null
          : ConsentBuilder.fromJson(value);
    case 'consentpolicybasis':
      return value is! Map<String, dynamic>
          ? null
          : ConsentPolicyBasisBuilder.fromJson(value);
    case 'consent_policybasis':
      return value is! Map<String, dynamic>
          ? null
          : ConsentPolicyBasisBuilder.fromJson(value);
    case 'consentverification':
      return value is! Map<String, dynamic>
          ? null
          : ConsentVerificationBuilder.fromJson(value);
    case 'consent_verification':
      return value is! Map<String, dynamic>
          ? null
          : ConsentVerificationBuilder.fromJson(value);
    case 'consentprovision':
      return value is! Map<String, dynamic>
          ? null
          : ConsentProvisionBuilder.fromJson(value);
    case 'consent_provision':
      return value is! Map<String, dynamic>
          ? null
          : ConsentProvisionBuilder.fromJson(value);
    case 'consentactor':
      return value is! Map<String, dynamic>
          ? null
          : ConsentActorBuilder.fromJson(value);
    case 'consent_actor':
      return value is! Map<String, dynamic>
          ? null
          : ConsentActorBuilder.fromJson(value);
    case 'consentdata':
      return value is! Map<String, dynamic>
          ? null
          : ConsentDataBuilder.fromJson(value);
    case 'consent_data':
      return value is! Map<String, dynamic>
          ? null
          : ConsentDataBuilder.fromJson(value);
    case 'contract':
      return value is! Map<String, dynamic>
          ? null
          : ContractBuilder.fromJson(value);
    case 'contractcontentdefinition':
      return value is! Map<String, dynamic>
          ? null
          : ContractContentDefinitionBuilder.fromJson(value);
    case 'contract_contentdefinition':
      return value is! Map<String, dynamic>
          ? null
          : ContractContentDefinitionBuilder.fromJson(value);
    case 'contractterm':
      return value is! Map<String, dynamic>
          ? null
          : ContractTermBuilder.fromJson(value);
    case 'contract_term':
      return value is! Map<String, dynamic>
          ? null
          : ContractTermBuilder.fromJson(value);
    case 'contractsecuritylabel':
      return value is! Map<String, dynamic>
          ? null
          : ContractSecurityLabelBuilder.fromJson(value);
    case 'contract_securitylabel':
      return value is! Map<String, dynamic>
          ? null
          : ContractSecurityLabelBuilder.fromJson(value);
    case 'contractoffer':
      return value is! Map<String, dynamic>
          ? null
          : ContractOfferBuilder.fromJson(value);
    case 'contract_offer':
      return value is! Map<String, dynamic>
          ? null
          : ContractOfferBuilder.fromJson(value);
    case 'contractparty':
      return value is! Map<String, dynamic>
          ? null
          : ContractPartyBuilder.fromJson(value);
    case 'contract_party':
      return value is! Map<String, dynamic>
          ? null
          : ContractPartyBuilder.fromJson(value);
    case 'contractanswer':
      return value is! Map<String, dynamic>
          ? null
          : ContractAnswerBuilder.fromJson(value);
    case 'contract_answer':
      return value is! Map<String, dynamic>
          ? null
          : ContractAnswerBuilder.fromJson(value);
    case 'contractasset':
      return value is! Map<String, dynamic>
          ? null
          : ContractAssetBuilder.fromJson(value);
    case 'contract_asset':
      return value is! Map<String, dynamic>
          ? null
          : ContractAssetBuilder.fromJson(value);
    case 'contractcontext':
      return value is! Map<String, dynamic>
          ? null
          : ContractContextBuilder.fromJson(value);
    case 'contract_context':
      return value is! Map<String, dynamic>
          ? null
          : ContractContextBuilder.fromJson(value);
    case 'contractvalueditem':
      return value is! Map<String, dynamic>
          ? null
          : ContractValuedItemBuilder.fromJson(value);
    case 'contract_valueditem':
      return value is! Map<String, dynamic>
          ? null
          : ContractValuedItemBuilder.fromJson(value);
    case 'contractaction':
      return value is! Map<String, dynamic>
          ? null
          : ContractActionBuilder.fromJson(value);
    case 'contract_action':
      return value is! Map<String, dynamic>
          ? null
          : ContractActionBuilder.fromJson(value);
    case 'contractsubject':
      return value is! Map<String, dynamic>
          ? null
          : ContractSubjectBuilder.fromJson(value);
    case 'contract_subject':
      return value is! Map<String, dynamic>
          ? null
          : ContractSubjectBuilder.fromJson(value);
    case 'contractsigner':
      return value is! Map<String, dynamic>
          ? null
          : ContractSignerBuilder.fromJson(value);
    case 'contract_signer':
      return value is! Map<String, dynamic>
          ? null
          : ContractSignerBuilder.fromJson(value);
    case 'contractfriendly':
      return value is! Map<String, dynamic>
          ? null
          : ContractFriendlyBuilder.fromJson(value);
    case 'contract_friendly':
      return value is! Map<String, dynamic>
          ? null
          : ContractFriendlyBuilder.fromJson(value);
    case 'contractlegal':
      return value is! Map<String, dynamic>
          ? null
          : ContractLegalBuilder.fromJson(value);
    case 'contract_legal':
      return value is! Map<String, dynamic>
          ? null
          : ContractLegalBuilder.fromJson(value);
    case 'contractrule':
      return value is! Map<String, dynamic>
          ? null
          : ContractRuleBuilder.fromJson(value);
    case 'contract_rule':
      return value is! Map<String, dynamic>
          ? null
          : ContractRuleBuilder.fromJson(value);
    case 'coverage':
      return value is! Map<String, dynamic>
          ? null
          : CoverageBuilder.fromJson(value);
    case 'coveragepaymentby':
      return value is! Map<String, dynamic>
          ? null
          : CoveragePaymentByBuilder.fromJson(value);
    case 'coverage_paymentby':
      return value is! Map<String, dynamic>
          ? null
          : CoveragePaymentByBuilder.fromJson(value);
    case 'coverageclass':
      return value is! Map<String, dynamic>
          ? null
          : CoverageClassBuilder.fromJson(value);
    case 'coverage_class':
      return value is! Map<String, dynamic>
          ? null
          : CoverageClassBuilder.fromJson(value);
    case 'coveragecosttobeneficiary':
      return value is! Map<String, dynamic>
          ? null
          : CoverageCostToBeneficiaryBuilder.fromJson(value);
    case 'coverage_costtobeneficiary':
      return value is! Map<String, dynamic>
          ? null
          : CoverageCostToBeneficiaryBuilder.fromJson(value);
    case 'coverageexception':
      return value is! Map<String, dynamic>
          ? null
          : CoverageExceptionBuilder.fromJson(value);
    case 'coverage_exception':
      return value is! Map<String, dynamic>
          ? null
          : CoverageExceptionBuilder.fromJson(value);
    case 'coverageeligibilityrequest':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityRequestBuilder.fromJson(value);
    case 'coverageeligibilityrequestevent':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityRequestEventBuilder.fromJson(value);
    case 'coverageeligibilityrequest_event':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityRequestEventBuilder.fromJson(value);
    case 'coverageeligibilityrequestsupportinginfo':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityRequestSupportingInfoBuilder.fromJson(value);
    case 'coverageeligibilityrequest_supportinginfo':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityRequestSupportingInfoBuilder.fromJson(value);
    case 'coverageeligibilityrequestinsurance':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityRequestInsuranceBuilder.fromJson(value);
    case 'coverageeligibilityrequest_insurance':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityRequestInsuranceBuilder.fromJson(value);
    case 'coverageeligibilityrequestitem':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityRequestItemBuilder.fromJson(value);
    case 'coverageeligibilityrequest_item':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityRequestItemBuilder.fromJson(value);
    case 'coverageeligibilityrequestdiagnosis':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityRequestDiagnosisBuilder.fromJson(value);
    case 'coverageeligibilityrequest_diagnosis':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityRequestDiagnosisBuilder.fromJson(value);
    case 'coverageeligibilityresponse':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityResponseBuilder.fromJson(value);
    case 'coverageeligibilityresponseevent':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityResponseEventBuilder.fromJson(value);
    case 'coverageeligibilityresponse_event':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityResponseEventBuilder.fromJson(value);
    case 'coverageeligibilityresponseinsurance':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityResponseInsuranceBuilder.fromJson(value);
    case 'coverageeligibilityresponse_insurance':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityResponseInsuranceBuilder.fromJson(value);
    case 'coverageeligibilityresponseitem':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityResponseItemBuilder.fromJson(value);
    case 'coverageeligibilityresponse_item':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityResponseItemBuilder.fromJson(value);
    case 'coverageeligibilityresponsebenefit':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityResponseBenefitBuilder.fromJson(value);
    case 'coverageeligibilityresponse_benefit':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityResponseBenefitBuilder.fromJson(value);
    case 'coverageeligibilityresponseerror':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityResponseErrorBuilder.fromJson(value);
    case 'coverageeligibilityresponse_error':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityResponseErrorBuilder.fromJson(value);
    case 'detectedissue':
      return value is! Map<String, dynamic>
          ? null
          : DetectedIssueBuilder.fromJson(value);
    case 'detectedissueevidence':
      return value is! Map<String, dynamic>
          ? null
          : DetectedIssueEvidenceBuilder.fromJson(value);
    case 'detectedissue_evidence':
      return value is! Map<String, dynamic>
          ? null
          : DetectedIssueEvidenceBuilder.fromJson(value);
    case 'detectedissuemitigation':
      return value is! Map<String, dynamic>
          ? null
          : DetectedIssueMitigationBuilder.fromJson(value);
    case 'detectedissue_mitigation':
      return value is! Map<String, dynamic>
          ? null
          : DetectedIssueMitigationBuilder.fromJson(value);
    case 'device':
      return value is! Map<String, dynamic>
          ? null
          : DeviceBuilder.fromJson(value);
    case 'deviceudicarrier':
      return value is! Map<String, dynamic>
          ? null
          : DeviceUdiCarrierBuilder.fromJson(value);
    case 'device_udicarrier':
      return value is! Map<String, dynamic>
          ? null
          : DeviceUdiCarrierBuilder.fromJson(value);
    case 'devicename':
      return value is! Map<String, dynamic>
          ? null
          : DeviceNameBuilder.fromJson(value);
    case 'device_name':
      return value is! Map<String, dynamic>
          ? null
          : DeviceNameBuilder.fromJson(value);
    case 'deviceversion':
      return value is! Map<String, dynamic>
          ? null
          : DeviceVersionBuilder.fromJson(value);
    case 'device_version':
      return value is! Map<String, dynamic>
          ? null
          : DeviceVersionBuilder.fromJson(value);
    case 'deviceconformsto':
      return value is! Map<String, dynamic>
          ? null
          : DeviceConformsToBuilder.fromJson(value);
    case 'device_conformsto':
      return value is! Map<String, dynamic>
          ? null
          : DeviceConformsToBuilder.fromJson(value);
    case 'deviceproperty':
      return value is! Map<String, dynamic>
          ? null
          : DevicePropertyBuilder.fromJson(value);
    case 'device_property':
      return value is! Map<String, dynamic>
          ? null
          : DevicePropertyBuilder.fromJson(value);
    case 'deviceassociation':
      return value is! Map<String, dynamic>
          ? null
          : DeviceAssociationBuilder.fromJson(value);
    case 'deviceassociationoperation':
      return value is! Map<String, dynamic>
          ? null
          : DeviceAssociationOperationBuilder.fromJson(value);
    case 'deviceassociation_operation':
      return value is! Map<String, dynamic>
          ? null
          : DeviceAssociationOperationBuilder.fromJson(value);
    case 'devicedefinition':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionBuilder.fromJson(value);
    case 'devicedefinitionudideviceidentifier':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionUdiDeviceIdentifierBuilder.fromJson(value);
    case 'devicedefinition_udideviceidentifier':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionUdiDeviceIdentifierBuilder.fromJson(value);
    case 'devicedefinitionmarketdistribution':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionMarketDistributionBuilder.fromJson(value);
    case 'devicedefinition_marketdistribution':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionMarketDistributionBuilder.fromJson(value);
    case 'devicedefinitionregulatoryidentifier':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionRegulatoryIdentifierBuilder.fromJson(value);
    case 'devicedefinition_regulatoryidentifier':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionRegulatoryIdentifierBuilder.fromJson(value);
    case 'devicedefinitiondevicename':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionDeviceNameBuilder.fromJson(value);
    case 'devicedefinition_devicename':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionDeviceNameBuilder.fromJson(value);
    case 'devicedefinitionclassification':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionClassificationBuilder.fromJson(value);
    case 'devicedefinition_classification':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionClassificationBuilder.fromJson(value);
    case 'devicedefinitionconformsto':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionConformsToBuilder.fromJson(value);
    case 'devicedefinition_conformsto':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionConformsToBuilder.fromJson(value);
    case 'devicedefinitionhaspart':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionHasPartBuilder.fromJson(value);
    case 'devicedefinition_haspart':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionHasPartBuilder.fromJson(value);
    case 'devicedefinitionpackaging':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionPackagingBuilder.fromJson(value);
    case 'devicedefinition_packaging':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionPackagingBuilder.fromJson(value);
    case 'devicedefinitiondistributor':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionDistributorBuilder.fromJson(value);
    case 'devicedefinition_distributor':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionDistributorBuilder.fromJson(value);
    case 'devicedefinitionversion':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionVersionBuilder.fromJson(value);
    case 'devicedefinition_version':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionVersionBuilder.fromJson(value);
    case 'devicedefinitionproperty':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionPropertyBuilder.fromJson(value);
    case 'devicedefinition_property':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionPropertyBuilder.fromJson(value);
    case 'devicedefinitionlink':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionLinkBuilder.fromJson(value);
    case 'devicedefinition_link':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionLinkBuilder.fromJson(value);
    case 'devicedefinitionmaterial':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionMaterialBuilder.fromJson(value);
    case 'devicedefinition_material':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionMaterialBuilder.fromJson(value);
    case 'devicedefinitionguideline':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionGuidelineBuilder.fromJson(value);
    case 'devicedefinition_guideline':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionGuidelineBuilder.fromJson(value);
    case 'devicedefinitioncorrectiveaction':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionCorrectiveActionBuilder.fromJson(value);
    case 'devicedefinition_correctiveaction':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionCorrectiveActionBuilder.fromJson(value);
    case 'devicedefinitionchargeitem':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionChargeItemBuilder.fromJson(value);
    case 'devicedefinition_chargeitem':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionChargeItemBuilder.fromJson(value);
    case 'devicedispense':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDispenseBuilder.fromJson(value);
    case 'devicedispenseperformer':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDispensePerformerBuilder.fromJson(value);
    case 'devicedispense_performer':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDispensePerformerBuilder.fromJson(value);
    case 'devicemetric':
      return value is! Map<String, dynamic>
          ? null
          : DeviceMetricBuilder.fromJson(value);
    case 'devicemetriccalibration':
      return value is! Map<String, dynamic>
          ? null
          : DeviceMetricCalibrationBuilder.fromJson(value);
    case 'devicemetric_calibration':
      return value is! Map<String, dynamic>
          ? null
          : DeviceMetricCalibrationBuilder.fromJson(value);
    case 'devicerequest':
      return value is! Map<String, dynamic>
          ? null
          : DeviceRequestBuilder.fromJson(value);
    case 'devicerequestparameter':
      return value is! Map<String, dynamic>
          ? null
          : DeviceRequestParameterBuilder.fromJson(value);
    case 'devicerequest_parameter':
      return value is! Map<String, dynamic>
          ? null
          : DeviceRequestParameterBuilder.fromJson(value);
    case 'deviceusage':
      return value is! Map<String, dynamic>
          ? null
          : DeviceUsageBuilder.fromJson(value);
    case 'deviceusageadherence':
      return value is! Map<String, dynamic>
          ? null
          : DeviceUsageAdherenceBuilder.fromJson(value);
    case 'deviceusage_adherence':
      return value is! Map<String, dynamic>
          ? null
          : DeviceUsageAdherenceBuilder.fromJson(value);
    case 'diagnosticreport':
      return value is! Map<String, dynamic>
          ? null
          : DiagnosticReportBuilder.fromJson(value);
    case 'diagnosticreportsupportinginfo':
      return value is! Map<String, dynamic>
          ? null
          : DiagnosticReportSupportingInfoBuilder.fromJson(value);
    case 'diagnosticreport_supportinginfo':
      return value is! Map<String, dynamic>
          ? null
          : DiagnosticReportSupportingInfoBuilder.fromJson(value);
    case 'diagnosticreportmedia':
      return value is! Map<String, dynamic>
          ? null
          : DiagnosticReportMediaBuilder.fromJson(value);
    case 'diagnosticreport_media':
      return value is! Map<String, dynamic>
          ? null
          : DiagnosticReportMediaBuilder.fromJson(value);
    case 'documentreference':
      return value is! Map<String, dynamic>
          ? null
          : DocumentReferenceBuilder.fromJson(value);
    case 'documentreferenceattester':
      return value is! Map<String, dynamic>
          ? null
          : DocumentReferenceAttesterBuilder.fromJson(value);
    case 'documentreference_attester':
      return value is! Map<String, dynamic>
          ? null
          : DocumentReferenceAttesterBuilder.fromJson(value);
    case 'documentreferencerelatesto':
      return value is! Map<String, dynamic>
          ? null
          : DocumentReferenceRelatesToBuilder.fromJson(value);
    case 'documentreference_relatesto':
      return value is! Map<String, dynamic>
          ? null
          : DocumentReferenceRelatesToBuilder.fromJson(value);
    case 'documentreferencecontent':
      return value is! Map<String, dynamic>
          ? null
          : DocumentReferenceContentBuilder.fromJson(value);
    case 'documentreference_content':
      return value is! Map<String, dynamic>
          ? null
          : DocumentReferenceContentBuilder.fromJson(value);
    case 'documentreferenceprofile':
      return value is! Map<String, dynamic>
          ? null
          : DocumentReferenceProfileBuilder.fromJson(value);
    case 'documentreference_profile':
      return value is! Map<String, dynamic>
          ? null
          : DocumentReferenceProfileBuilder.fromJson(value);
    case 'encounter':
      return value is! Map<String, dynamic>
          ? null
          : EncounterBuilder.fromJson(value);
    case 'encounterparticipant':
      return value is! Map<String, dynamic>
          ? null
          : EncounterParticipantBuilder.fromJson(value);
    case 'encounter_participant':
      return value is! Map<String, dynamic>
          ? null
          : EncounterParticipantBuilder.fromJson(value);
    case 'encounterreason':
      return value is! Map<String, dynamic>
          ? null
          : EncounterReasonBuilder.fromJson(value);
    case 'encounter_reason':
      return value is! Map<String, dynamic>
          ? null
          : EncounterReasonBuilder.fromJson(value);
    case 'encounterdiagnosis':
      return value is! Map<String, dynamic>
          ? null
          : EncounterDiagnosisBuilder.fromJson(value);
    case 'encounter_diagnosis':
      return value is! Map<String, dynamic>
          ? null
          : EncounterDiagnosisBuilder.fromJson(value);
    case 'encounteradmission':
      return value is! Map<String, dynamic>
          ? null
          : EncounterAdmissionBuilder.fromJson(value);
    case 'encounter_admission':
      return value is! Map<String, dynamic>
          ? null
          : EncounterAdmissionBuilder.fromJson(value);
    case 'encounterlocation':
      return value is! Map<String, dynamic>
          ? null
          : EncounterLocationBuilder.fromJson(value);
    case 'encounter_location':
      return value is! Map<String, dynamic>
          ? null
          : EncounterLocationBuilder.fromJson(value);
    case 'encounterhistory':
      return value is! Map<String, dynamic>
          ? null
          : EncounterHistoryBuilder.fromJson(value);
    case 'encounterhistorylocation':
      return value is! Map<String, dynamic>
          ? null
          : EncounterHistoryLocationBuilder.fromJson(value);
    case 'encounterhistory_location':
      return value is! Map<String, dynamic>
          ? null
          : EncounterHistoryLocationBuilder.fromJson(value);
    case 'fhirendpoint':
      return value is! Map<String, dynamic>
          ? null
          : FhirEndpointBuilder.fromJson(value);
    case 'endpoint':
      return value is! Map<String, dynamic>
          ? null
          : FhirEndpointBuilder.fromJson(value);
    case 'endpointpayload':
      return value is! Map<String, dynamic>
          ? null
          : EndpointPayloadBuilder.fromJson(value);
    case 'endpoint_payload':
      return value is! Map<String, dynamic>
          ? null
          : EndpointPayloadBuilder.fromJson(value);
    case 'enrollmentrequest':
      return value is! Map<String, dynamic>
          ? null
          : EnrollmentRequestBuilder.fromJson(value);
    case 'enrollmentresponse':
      return value is! Map<String, dynamic>
          ? null
          : EnrollmentResponseBuilder.fromJson(value);
    case 'episodeofcare':
      return value is! Map<String, dynamic>
          ? null
          : EpisodeOfCareBuilder.fromJson(value);
    case 'episodeofcarestatushistory':
      return value is! Map<String, dynamic>
          ? null
          : EpisodeOfCareStatusHistoryBuilder.fromJson(value);
    case 'episodeofcare_statushistory':
      return value is! Map<String, dynamic>
          ? null
          : EpisodeOfCareStatusHistoryBuilder.fromJson(value);
    case 'episodeofcarereason':
      return value is! Map<String, dynamic>
          ? null
          : EpisodeOfCareReasonBuilder.fromJson(value);
    case 'episodeofcare_reason':
      return value is! Map<String, dynamic>
          ? null
          : EpisodeOfCareReasonBuilder.fromJson(value);
    case 'episodeofcarediagnosis':
      return value is! Map<String, dynamic>
          ? null
          : EpisodeOfCareDiagnosisBuilder.fromJson(value);
    case 'episodeofcare_diagnosis':
      return value is! Map<String, dynamic>
          ? null
          : EpisodeOfCareDiagnosisBuilder.fromJson(value);
    case 'eventdefinition':
      return value is! Map<String, dynamic>
          ? null
          : EventDefinitionBuilder.fromJson(value);
    case 'evidence':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceBuilder.fromJson(value);
    case 'evidencevariabledefinition':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceVariableDefinitionBuilder.fromJson(value);
    case 'evidence_variabledefinition':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceVariableDefinitionBuilder.fromJson(value);
    case 'evidencestatistic':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceStatisticBuilder.fromJson(value);
    case 'evidence_statistic':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceStatisticBuilder.fromJson(value);
    case 'evidencesamplesize':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceSampleSizeBuilder.fromJson(value);
    case 'evidence_samplesize':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceSampleSizeBuilder.fromJson(value);
    case 'evidenceattributeestimate':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceAttributeEstimateBuilder.fromJson(value);
    case 'evidence_attributeestimate':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceAttributeEstimateBuilder.fromJson(value);
    case 'evidencemodelcharacteristic':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceModelCharacteristicBuilder.fromJson(value);
    case 'evidence_modelcharacteristic':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceModelCharacteristicBuilder.fromJson(value);
    case 'evidencemodelcharacteristicvariable':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceModelCharacteristicVariableBuilder.fromJson(value);
    case 'evidence_variable':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceModelCharacteristicVariableBuilder.fromJson(value);
    case 'evidencevariable':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceModelCharacteristicVariableBuilder.fromJson(value);
    case 'evidencecertainty':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceCertaintyBuilder.fromJson(value);
    case 'evidence_certainty':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceCertaintyBuilder.fromJson(value);
    case 'evidencereport':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceReportBuilder.fromJson(value);
    case 'evidencereportsubject':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceReportSubjectBuilder.fromJson(value);
    case 'evidencereport_subject':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceReportSubjectBuilder.fromJson(value);
    case 'evidencereportcharacteristic':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceReportCharacteristicBuilder.fromJson(value);
    case 'evidencereport_characteristic':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceReportCharacteristicBuilder.fromJson(value);
    case 'evidencereportrelatesto':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceReportRelatesToBuilder.fromJson(value);
    case 'evidencereport_relatesto':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceReportRelatesToBuilder.fromJson(value);
    case 'evidencereporttarget':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceReportTargetBuilder.fromJson(value);
    case 'evidencereport_target':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceReportTargetBuilder.fromJson(value);
    case 'evidencereportsection':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceReportSectionBuilder.fromJson(value);
    case 'evidencereport_section':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceReportSectionBuilder.fromJson(value);
    case 'evidencevariablecharacteristic':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceVariableCharacteristicBuilder.fromJson(value);
    case 'evidencevariable_characteristic':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceVariableCharacteristicBuilder.fromJson(value);
    case 'evidencevariabledefinitionbytypeandvalue':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceVariableDefinitionByTypeAndValueBuilder.fromJson(value);
    case 'evidencevariable_definitionbytypeandvalue':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceVariableDefinitionByTypeAndValueBuilder.fromJson(value);
    case 'evidencevariabledefinitionbycombination':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceVariableDefinitionByCombinationBuilder.fromJson(value);
    case 'evidencevariable_definitionbycombination':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceVariableDefinitionByCombinationBuilder.fromJson(value);
    case 'evidencevariabletimefromevent':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceVariableTimeFromEventBuilder.fromJson(value);
    case 'evidencevariable_timefromevent':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceVariableTimeFromEventBuilder.fromJson(value);
    case 'evidencevariablecategory':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceVariableCategoryBuilder.fromJson(value);
    case 'evidencevariable_category':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceVariableCategoryBuilder.fromJson(value);
    case 'examplescenario':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioBuilder.fromJson(value);
    case 'examplescenarioactor':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioActorBuilder.fromJson(value);
    case 'examplescenario_actor':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioActorBuilder.fromJson(value);
    case 'examplescenarioinstance':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioInstanceBuilder.fromJson(value);
    case 'examplescenario_instance':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioInstanceBuilder.fromJson(value);
    case 'examplescenarioversion':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioVersionBuilder.fromJson(value);
    case 'examplescenario_version':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioVersionBuilder.fromJson(value);
    case 'examplescenariocontainedinstance':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioContainedInstanceBuilder.fromJson(value);
    case 'examplescenario_containedinstance':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioContainedInstanceBuilder.fromJson(value);
    case 'examplescenarioprocess':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioProcessBuilder.fromJson(value);
    case 'examplescenario_process':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioProcessBuilder.fromJson(value);
    case 'examplescenariostep':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioStepBuilder.fromJson(value);
    case 'examplescenario_step':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioStepBuilder.fromJson(value);
    case 'examplescenariooperation':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioOperationBuilder.fromJson(value);
    case 'examplescenario_operation':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioOperationBuilder.fromJson(value);
    case 'examplescenarioalternative':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioAlternativeBuilder.fromJson(value);
    case 'examplescenario_alternative':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioAlternativeBuilder.fromJson(value);
    case 'explanationofbenefit':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitBuilder.fromJson(value);
    case 'explanationofbenefitrelated':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitRelatedBuilder.fromJson(value);
    case 'explanationofbenefit_related':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitRelatedBuilder.fromJson(value);
    case 'explanationofbenefitevent':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitEventBuilder.fromJson(value);
    case 'explanationofbenefit_event':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitEventBuilder.fromJson(value);
    case 'explanationofbenefitpayee':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitPayeeBuilder.fromJson(value);
    case 'explanationofbenefit_payee':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitPayeeBuilder.fromJson(value);
    case 'explanationofbenefitcareteam':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitCareTeamBuilder.fromJson(value);
    case 'explanationofbenefit_careteam':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitCareTeamBuilder.fromJson(value);
    case 'explanationofbenefitsupportinginfo':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitSupportingInfoBuilder.fromJson(value);
    case 'explanationofbenefit_supportinginfo':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitSupportingInfoBuilder.fromJson(value);
    case 'explanationofbenefitdiagnosis':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitDiagnosisBuilder.fromJson(value);
    case 'explanationofbenefit_diagnosis':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitDiagnosisBuilder.fromJson(value);
    case 'explanationofbenefitprocedure':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitProcedureBuilder.fromJson(value);
    case 'explanationofbenefit_procedure':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitProcedureBuilder.fromJson(value);
    case 'explanationofbenefitinsurance':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitInsuranceBuilder.fromJson(value);
    case 'explanationofbenefit_insurance':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitInsuranceBuilder.fromJson(value);
    case 'explanationofbenefitaccident':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitAccidentBuilder.fromJson(value);
    case 'explanationofbenefit_accident':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitAccidentBuilder.fromJson(value);
    case 'explanationofbenefititem':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitItemBuilder.fromJson(value);
    case 'explanationofbenefit_item':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitItemBuilder.fromJson(value);
    case 'explanationofbenefitbodysite':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitBodySiteBuilder.fromJson(value);
    case 'explanationofbenefit_bodysite':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitBodySiteBuilder.fromJson(value);
    case 'explanationofbenefitreviewoutcome':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitReviewOutcomeBuilder.fromJson(value);
    case 'explanationofbenefit_reviewoutcome':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitReviewOutcomeBuilder.fromJson(value);
    case 'explanationofbenefitadjudication':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitAdjudicationBuilder.fromJson(value);
    case 'explanationofbenefit_adjudication':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitAdjudicationBuilder.fromJson(value);
    case 'explanationofbenefitdetail':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitDetailBuilder.fromJson(value);
    case 'explanationofbenefit_detail':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitDetailBuilder.fromJson(value);
    case 'explanationofbenefitsubdetail':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitSubDetailBuilder.fromJson(value);
    case 'explanationofbenefit_subdetail':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitSubDetailBuilder.fromJson(value);
    case 'explanationofbenefitadditem':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitAddItemBuilder.fromJson(value);
    case 'explanationofbenefit_additem':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitAddItemBuilder.fromJson(value);
    case 'explanationofbenefitbodysite1':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitBodySite1Builder.fromJson(value);
    case 'explanationofbenefit_bodysite1':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitBodySite1Builder.fromJson(value);
    case 'explanationofbenefitdetail1':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitDetail1Builder.fromJson(value);
    case 'explanationofbenefit_detail1':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitDetail1Builder.fromJson(value);
    case 'explanationofbenefitsubdetail1':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitSubDetail1Builder.fromJson(value);
    case 'explanationofbenefit_subdetail1':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitSubDetail1Builder.fromJson(value);
    case 'explanationofbenefittotal':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitTotalBuilder.fromJson(value);
    case 'explanationofbenefit_total':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitTotalBuilder.fromJson(value);
    case 'explanationofbenefitpayment':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitPaymentBuilder.fromJson(value);
    case 'explanationofbenefit_payment':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitPaymentBuilder.fromJson(value);
    case 'explanationofbenefitprocessnote':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitProcessNoteBuilder.fromJson(value);
    case 'explanationofbenefit_processnote':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitProcessNoteBuilder.fromJson(value);
    case 'explanationofbenefitbenefitbalance':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitBenefitBalanceBuilder.fromJson(value);
    case 'explanationofbenefit_benefitbalance':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitBenefitBalanceBuilder.fromJson(value);
    case 'explanationofbenefitfinancial':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitFinancialBuilder.fromJson(value);
    case 'explanationofbenefit_financial':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitFinancialBuilder.fromJson(value);
    case 'familymemberhistory':
      return value is! Map<String, dynamic>
          ? null
          : FamilyMemberHistoryBuilder.fromJson(value);
    case 'familymemberhistoryparticipant':
      return value is! Map<String, dynamic>
          ? null
          : FamilyMemberHistoryParticipantBuilder.fromJson(value);
    case 'familymemberhistory_participant':
      return value is! Map<String, dynamic>
          ? null
          : FamilyMemberHistoryParticipantBuilder.fromJson(value);
    case 'familymemberhistorycondition':
      return value is! Map<String, dynamic>
          ? null
          : FamilyMemberHistoryConditionBuilder.fromJson(value);
    case 'familymemberhistory_condition':
      return value is! Map<String, dynamic>
          ? null
          : FamilyMemberHistoryConditionBuilder.fromJson(value);
    case 'familymemberhistoryprocedure':
      return value is! Map<String, dynamic>
          ? null
          : FamilyMemberHistoryProcedureBuilder.fromJson(value);
    case 'familymemberhistory_procedure':
      return value is! Map<String, dynamic>
          ? null
          : FamilyMemberHistoryProcedureBuilder.fromJson(value);
    case 'flag':
      return value is! Map<String, dynamic>
          ? null
          : FlagBuilder.fromJson(value);
    case 'formularyitem':
      return value is! Map<String, dynamic>
          ? null
          : FormularyItemBuilder.fromJson(value);
    case 'genomicstudy':
      return value is! Map<String, dynamic>
          ? null
          : GenomicStudyBuilder.fromJson(value);
    case 'genomicstudyanalysis':
      return value is! Map<String, dynamic>
          ? null
          : GenomicStudyAnalysisBuilder.fromJson(value);
    case 'genomicstudy_analysis':
      return value is! Map<String, dynamic>
          ? null
          : GenomicStudyAnalysisBuilder.fromJson(value);
    case 'genomicstudyinput':
      return value is! Map<String, dynamic>
          ? null
          : GenomicStudyInputBuilder.fromJson(value);
    case 'genomicstudy_input':
      return value is! Map<String, dynamic>
          ? null
          : GenomicStudyInputBuilder.fromJson(value);
    case 'genomicstudyoutput':
      return value is! Map<String, dynamic>
          ? null
          : GenomicStudyOutputBuilder.fromJson(value);
    case 'genomicstudy_output':
      return value is! Map<String, dynamic>
          ? null
          : GenomicStudyOutputBuilder.fromJson(value);
    case 'genomicstudyperformer':
      return value is! Map<String, dynamic>
          ? null
          : GenomicStudyPerformerBuilder.fromJson(value);
    case 'genomicstudy_performer':
      return value is! Map<String, dynamic>
          ? null
          : GenomicStudyPerformerBuilder.fromJson(value);
    case 'genomicstudydevice':
      return value is! Map<String, dynamic>
          ? null
          : GenomicStudyDeviceBuilder.fromJson(value);
    case 'genomicstudy_device':
      return value is! Map<String, dynamic>
          ? null
          : GenomicStudyDeviceBuilder.fromJson(value);
    case 'goal':
      return value is! Map<String, dynamic>
          ? null
          : GoalBuilder.fromJson(value);
    case 'goaltarget':
      return value is! Map<String, dynamic>
          ? null
          : GoalTargetBuilder.fromJson(value);
    case 'goal_target':
      return value is! Map<String, dynamic>
          ? null
          : GoalTargetBuilder.fromJson(value);
    case 'graphdefinition':
      return value is! Map<String, dynamic>
          ? null
          : GraphDefinitionBuilder.fromJson(value);
    case 'graphdefinitionnode':
      return value is! Map<String, dynamic>
          ? null
          : GraphDefinitionNodeBuilder.fromJson(value);
    case 'graphdefinition_node':
      return value is! Map<String, dynamic>
          ? null
          : GraphDefinitionNodeBuilder.fromJson(value);
    case 'graphdefinitionlink':
      return value is! Map<String, dynamic>
          ? null
          : GraphDefinitionLinkBuilder.fromJson(value);
    case 'graphdefinition_link':
      return value is! Map<String, dynamic>
          ? null
          : GraphDefinitionLinkBuilder.fromJson(value);
    case 'graphdefinitioncompartment':
      return value is! Map<String, dynamic>
          ? null
          : GraphDefinitionCompartmentBuilder.fromJson(value);
    case 'graphdefinition_compartment':
      return value is! Map<String, dynamic>
          ? null
          : GraphDefinitionCompartmentBuilder.fromJson(value);
    case 'fhirgroup':
      return value is! Map<String, dynamic>
          ? null
          : FhirGroupBuilder.fromJson(value);
    case 'group':
      return value is! Map<String, dynamic>
          ? null
          : FhirGroupBuilder.fromJson(value);
    case 'groupcharacteristic':
      return value is! Map<String, dynamic>
          ? null
          : GroupCharacteristicBuilder.fromJson(value);
    case 'group_characteristic':
      return value is! Map<String, dynamic>
          ? null
          : GroupCharacteristicBuilder.fromJson(value);
    case 'groupmember':
      return value is! Map<String, dynamic>
          ? null
          : GroupMemberBuilder.fromJson(value);
    case 'group_member':
      return value is! Map<String, dynamic>
          ? null
          : GroupMemberBuilder.fromJson(value);
    case 'guidanceresponse':
      return value is! Map<String, dynamic>
          ? null
          : GuidanceResponseBuilder.fromJson(value);
    case 'healthcareservice':
      return value is! Map<String, dynamic>
          ? null
          : HealthcareServiceBuilder.fromJson(value);
    case 'healthcareserviceeligibility':
      return value is! Map<String, dynamic>
          ? null
          : HealthcareServiceEligibilityBuilder.fromJson(value);
    case 'healthcareservice_eligibility':
      return value is! Map<String, dynamic>
          ? null
          : HealthcareServiceEligibilityBuilder.fromJson(value);
    case 'imagingselection':
      return value is! Map<String, dynamic>
          ? null
          : ImagingSelectionBuilder.fromJson(value);
    case 'imagingselectionperformer':
      return value is! Map<String, dynamic>
          ? null
          : ImagingSelectionPerformerBuilder.fromJson(value);
    case 'imagingselection_performer':
      return value is! Map<String, dynamic>
          ? null
          : ImagingSelectionPerformerBuilder.fromJson(value);
    case 'imagingselectioninstance':
      return value is! Map<String, dynamic>
          ? null
          : ImagingSelectionInstanceBuilder.fromJson(value);
    case 'imagingselection_instance':
      return value is! Map<String, dynamic>
          ? null
          : ImagingSelectionInstanceBuilder.fromJson(value);
    case 'imagingselectionimageregion2d':
      return value is! Map<String, dynamic>
          ? null
          : ImagingSelectionImageRegion2DBuilder.fromJson(value);
    case 'imagingselection_imageregion2d':
      return value is! Map<String, dynamic>
          ? null
          : ImagingSelectionImageRegion2DBuilder.fromJson(value);
    case 'imagingselectionimageregion3d':
      return value is! Map<String, dynamic>
          ? null
          : ImagingSelectionImageRegion3DBuilder.fromJson(value);
    case 'imagingselection_imageregion3d':
      return value is! Map<String, dynamic>
          ? null
          : ImagingSelectionImageRegion3DBuilder.fromJson(value);
    case 'imagingstudy':
      return value is! Map<String, dynamic>
          ? null
          : ImagingStudyBuilder.fromJson(value);
    case 'imagingstudyseries':
      return value is! Map<String, dynamic>
          ? null
          : ImagingStudySeriesBuilder.fromJson(value);
    case 'imagingstudy_series':
      return value is! Map<String, dynamic>
          ? null
          : ImagingStudySeriesBuilder.fromJson(value);
    case 'imagingstudyperformer':
      return value is! Map<String, dynamic>
          ? null
          : ImagingStudyPerformerBuilder.fromJson(value);
    case 'imagingstudy_performer':
      return value is! Map<String, dynamic>
          ? null
          : ImagingStudyPerformerBuilder.fromJson(value);
    case 'imagingstudyinstance':
      return value is! Map<String, dynamic>
          ? null
          : ImagingStudyInstanceBuilder.fromJson(value);
    case 'imagingstudy_instance':
      return value is! Map<String, dynamic>
          ? null
          : ImagingStudyInstanceBuilder.fromJson(value);
    case 'immunization':
      return value is! Map<String, dynamic>
          ? null
          : ImmunizationBuilder.fromJson(value);
    case 'immunizationperformer':
      return value is! Map<String, dynamic>
          ? null
          : ImmunizationPerformerBuilder.fromJson(value);
    case 'immunization_performer':
      return value is! Map<String, dynamic>
          ? null
          : ImmunizationPerformerBuilder.fromJson(value);
    case 'immunizationprogrameligibility':
      return value is! Map<String, dynamic>
          ? null
          : ImmunizationProgramEligibilityBuilder.fromJson(value);
    case 'immunization_programeligibility':
      return value is! Map<String, dynamic>
          ? null
          : ImmunizationProgramEligibilityBuilder.fromJson(value);
    case 'immunizationreaction':
      return value is! Map<String, dynamic>
          ? null
          : ImmunizationReactionBuilder.fromJson(value);
    case 'immunization_reaction':
      return value is! Map<String, dynamic>
          ? null
          : ImmunizationReactionBuilder.fromJson(value);
    case 'immunizationprotocolapplied':
      return value is! Map<String, dynamic>
          ? null
          : ImmunizationProtocolAppliedBuilder.fromJson(value);
    case 'immunization_protocolapplied':
      return value is! Map<String, dynamic>
          ? null
          : ImmunizationProtocolAppliedBuilder.fromJson(value);
    case 'immunizationevaluation':
      return value is! Map<String, dynamic>
          ? null
          : ImmunizationEvaluationBuilder.fromJson(value);
    case 'immunizationrecommendation':
      return value is! Map<String, dynamic>
          ? null
          : ImmunizationRecommendationBuilder.fromJson(value);
    case 'immunizationrecommendationrecommendation':
      return value is! Map<String, dynamic>
          ? null
          : ImmunizationRecommendationRecommendationBuilder.fromJson(value);
    case 'immunizationrecommendation_recommendation':
      return value is! Map<String, dynamic>
          ? null
          : ImmunizationRecommendationRecommendationBuilder.fromJson(value);
    case 'immunizationrecommendationdatecriterion':
      return value is! Map<String, dynamic>
          ? null
          : ImmunizationRecommendationDateCriterionBuilder.fromJson(value);
    case 'immunizationrecommendation_datecriterion':
      return value is! Map<String, dynamic>
          ? null
          : ImmunizationRecommendationDateCriterionBuilder.fromJson(value);
    case 'implementationguide':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideBuilder.fromJson(value);
    case 'implementationguidedependson':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideDependsOnBuilder.fromJson(value);
    case 'implementationguide_dependson':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideDependsOnBuilder.fromJson(value);
    case 'implementationguideglobal':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideGlobalBuilder.fromJson(value);
    case 'implementationguide_global':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideGlobalBuilder.fromJson(value);
    case 'implementationguidedefinition':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideDefinitionBuilder.fromJson(value);
    case 'implementationguide_definition':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideDefinitionBuilder.fromJson(value);
    case 'implementationguidegrouping':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideGroupingBuilder.fromJson(value);
    case 'implementationguide_grouping':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideGroupingBuilder.fromJson(value);
    case 'implementationguideresource':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideResourceBuilder.fromJson(value);
    case 'implementationguide_resource':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideResourceBuilder.fromJson(value);
    case 'implementationguidepage':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuidePageBuilder.fromJson(value);
    case 'implementationguide_page':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuidePageBuilder.fromJson(value);
    case 'implementationguideparameter':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideParameterBuilder.fromJson(value);
    case 'implementationguide_parameter':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideParameterBuilder.fromJson(value);
    case 'implementationguidetemplate':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideTemplateBuilder.fromJson(value);
    case 'implementationguide_template':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideTemplateBuilder.fromJson(value);
    case 'implementationguidemanifest':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideManifestBuilder.fromJson(value);
    case 'implementationguide_manifest':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideManifestBuilder.fromJson(value);
    case 'implementationguideresource1':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideResource1Builder.fromJson(value);
    case 'implementationguide_resource1':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideResource1Builder.fromJson(value);
    case 'implementationguidepage1':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuidePage1Builder.fromJson(value);
    case 'implementationguide_page1':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuidePage1Builder.fromJson(value);
    case 'ingredient':
      return value is! Map<String, dynamic>
          ? null
          : IngredientBuilder.fromJson(value);
    case 'ingredientmanufacturer':
      return value is! Map<String, dynamic>
          ? null
          : IngredientManufacturerBuilder.fromJson(value);
    case 'ingredient_manufacturer':
      return value is! Map<String, dynamic>
          ? null
          : IngredientManufacturerBuilder.fromJson(value);
    case 'ingredientsubstance':
      return value is! Map<String, dynamic>
          ? null
          : IngredientSubstanceBuilder.fromJson(value);
    case 'ingredient_substance':
      return value is! Map<String, dynamic>
          ? null
          : IngredientSubstanceBuilder.fromJson(value);
    case 'ingredientstrength':
      return value is! Map<String, dynamic>
          ? null
          : IngredientStrengthBuilder.fromJson(value);
    case 'ingredient_strength':
      return value is! Map<String, dynamic>
          ? null
          : IngredientStrengthBuilder.fromJson(value);
    case 'ingredientreferencestrength':
      return value is! Map<String, dynamic>
          ? null
          : IngredientReferenceStrengthBuilder.fromJson(value);
    case 'ingredient_referencestrength':
      return value is! Map<String, dynamic>
          ? null
          : IngredientReferenceStrengthBuilder.fromJson(value);
    case 'insuranceplan':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanBuilder.fromJson(value);
    case 'insuranceplancoverage':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanCoverageBuilder.fromJson(value);
    case 'insuranceplan_coverage':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanCoverageBuilder.fromJson(value);
    case 'insuranceplanbenefit':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanBenefitBuilder.fromJson(value);
    case 'insuranceplan_benefit':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanBenefitBuilder.fromJson(value);
    case 'insuranceplanlimit':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanLimitBuilder.fromJson(value);
    case 'insuranceplan_limit':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanLimitBuilder.fromJson(value);
    case 'insuranceplanplan':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanPlanBuilder.fromJson(value);
    case 'insuranceplan_plan':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanPlanBuilder.fromJson(value);
    case 'insuranceplangeneralcost':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanGeneralCostBuilder.fromJson(value);
    case 'insuranceplan_generalcost':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanGeneralCostBuilder.fromJson(value);
    case 'insuranceplanspecificcost':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanSpecificCostBuilder.fromJson(value);
    case 'insuranceplan_specificcost':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanSpecificCostBuilder.fromJson(value);
    case 'insuranceplanbenefit1':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanBenefit1Builder.fromJson(value);
    case 'insuranceplan_benefit1':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanBenefit1Builder.fromJson(value);
    case 'insuranceplancost':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanCostBuilder.fromJson(value);
    case 'insuranceplan_cost':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanCostBuilder.fromJson(value);
    case 'inventoryitem':
      return value is! Map<String, dynamic>
          ? null
          : InventoryItemBuilder.fromJson(value);
    case 'inventoryitemname':
      return value is! Map<String, dynamic>
          ? null
          : InventoryItemNameBuilder.fromJson(value);
    case 'inventoryitem_name':
      return value is! Map<String, dynamic>
          ? null
          : InventoryItemNameBuilder.fromJson(value);
    case 'inventoryitemresponsibleorganization':
      return value is! Map<String, dynamic>
          ? null
          : InventoryItemResponsibleOrganizationBuilder.fromJson(value);
    case 'inventoryitem_responsibleorganization':
      return value is! Map<String, dynamic>
          ? null
          : InventoryItemResponsibleOrganizationBuilder.fromJson(value);
    case 'inventoryitemdescription':
      return value is! Map<String, dynamic>
          ? null
          : InventoryItemDescriptionBuilder.fromJson(value);
    case 'inventoryitem_description':
      return value is! Map<String, dynamic>
          ? null
          : InventoryItemDescriptionBuilder.fromJson(value);
    case 'inventoryitemassociation':
      return value is! Map<String, dynamic>
          ? null
          : InventoryItemAssociationBuilder.fromJson(value);
    case 'inventoryitem_association':
      return value is! Map<String, dynamic>
          ? null
          : InventoryItemAssociationBuilder.fromJson(value);
    case 'inventoryitemcharacteristic':
      return value is! Map<String, dynamic>
          ? null
          : InventoryItemCharacteristicBuilder.fromJson(value);
    case 'inventoryitem_characteristic':
      return value is! Map<String, dynamic>
          ? null
          : InventoryItemCharacteristicBuilder.fromJson(value);
    case 'inventoryiteminstance':
      return value is! Map<String, dynamic>
          ? null
          : InventoryItemInstanceBuilder.fromJson(value);
    case 'inventoryitem_instance':
      return value is! Map<String, dynamic>
          ? null
          : InventoryItemInstanceBuilder.fromJson(value);
    case 'inventoryreport':
      return value is! Map<String, dynamic>
          ? null
          : InventoryReportBuilder.fromJson(value);
    case 'inventoryreportinventorylisting':
      return value is! Map<String, dynamic>
          ? null
          : InventoryReportInventoryListingBuilder.fromJson(value);
    case 'inventoryreport_inventorylisting':
      return value is! Map<String, dynamic>
          ? null
          : InventoryReportInventoryListingBuilder.fromJson(value);
    case 'inventoryreportitem':
      return value is! Map<String, dynamic>
          ? null
          : InventoryReportItemBuilder.fromJson(value);
    case 'inventoryreport_item':
      return value is! Map<String, dynamic>
          ? null
          : InventoryReportItemBuilder.fromJson(value);
    case 'invoice':
      return value is! Map<String, dynamic>
          ? null
          : InvoiceBuilder.fromJson(value);
    case 'invoiceparticipant':
      return value is! Map<String, dynamic>
          ? null
          : InvoiceParticipantBuilder.fromJson(value);
    case 'invoice_participant':
      return value is! Map<String, dynamic>
          ? null
          : InvoiceParticipantBuilder.fromJson(value);
    case 'invoicelineitem':
      return value is! Map<String, dynamic>
          ? null
          : InvoiceLineItemBuilder.fromJson(value);
    case 'invoice_lineitem':
      return value is! Map<String, dynamic>
          ? null
          : InvoiceLineItemBuilder.fromJson(value);
    case 'library':
      return value is! Map<String, dynamic>
          ? null
          : LibraryBuilder.fromJson(value);
    case 'linkage':
      return value is! Map<String, dynamic>
          ? null
          : LinkageBuilder.fromJson(value);
    case 'linkageitem':
      return value is! Map<String, dynamic>
          ? null
          : LinkageItemBuilder.fromJson(value);
    case 'linkage_item':
      return value is! Map<String, dynamic>
          ? null
          : LinkageItemBuilder.fromJson(value);
    case 'fhirlist':
      return value is! Map<String, dynamic>
          ? null
          : FhirListBuilder.fromJson(value);
    case 'list':
      return value is! Map<String, dynamic>
          ? null
          : FhirListBuilder.fromJson(value);
    case 'listentry':
      return value is! Map<String, dynamic>
          ? null
          : ListEntryBuilder.fromJson(value);
    case 'list_entry':
      return value is! Map<String, dynamic>
          ? null
          : ListEntryBuilder.fromJson(value);
    case 'location':
      return value is! Map<String, dynamic>
          ? null
          : LocationBuilder.fromJson(value);
    case 'locationposition':
      return value is! Map<String, dynamic>
          ? null
          : LocationPositionBuilder.fromJson(value);
    case 'location_position':
      return value is! Map<String, dynamic>
          ? null
          : LocationPositionBuilder.fromJson(value);
    case 'manufactureditemdefinition':
      return value is! Map<String, dynamic>
          ? null
          : ManufacturedItemDefinitionBuilder.fromJson(value);
    case 'manufactureditemdefinitionproperty':
      return value is! Map<String, dynamic>
          ? null
          : ManufacturedItemDefinitionPropertyBuilder.fromJson(value);
    case 'manufactureditemdefinition_property':
      return value is! Map<String, dynamic>
          ? null
          : ManufacturedItemDefinitionPropertyBuilder.fromJson(value);
    case 'manufactureditemdefinitioncomponent':
      return value is! Map<String, dynamic>
          ? null
          : ManufacturedItemDefinitionComponentBuilder.fromJson(value);
    case 'manufactureditemdefinition_component':
      return value is! Map<String, dynamic>
          ? null
          : ManufacturedItemDefinitionComponentBuilder.fromJson(value);
    case 'manufactureditemdefinitionconstituent':
      return value is! Map<String, dynamic>
          ? null
          : ManufacturedItemDefinitionConstituentBuilder.fromJson(value);
    case 'manufactureditemdefinition_constituent':
      return value is! Map<String, dynamic>
          ? null
          : ManufacturedItemDefinitionConstituentBuilder.fromJson(value);
    case 'measure':
      return value is! Map<String, dynamic>
          ? null
          : MeasureBuilder.fromJson(value);
    case 'measureterm':
      return value is! Map<String, dynamic>
          ? null
          : MeasureTermBuilder.fromJson(value);
    case 'measure_term':
      return value is! Map<String, dynamic>
          ? null
          : MeasureTermBuilder.fromJson(value);
    case 'measuregroup':
      return value is! Map<String, dynamic>
          ? null
          : MeasureGroupBuilder.fromJson(value);
    case 'measure_group':
      return value is! Map<String, dynamic>
          ? null
          : MeasureGroupBuilder.fromJson(value);
    case 'measurepopulation':
      return value is! Map<String, dynamic>
          ? null
          : MeasurePopulationBuilder.fromJson(value);
    case 'measure_population':
      return value is! Map<String, dynamic>
          ? null
          : MeasurePopulationBuilder.fromJson(value);
    case 'measurestratifier':
      return value is! Map<String, dynamic>
          ? null
          : MeasureStratifierBuilder.fromJson(value);
    case 'measure_stratifier':
      return value is! Map<String, dynamic>
          ? null
          : MeasureStratifierBuilder.fromJson(value);
    case 'measurecomponent':
      return value is! Map<String, dynamic>
          ? null
          : MeasureComponentBuilder.fromJson(value);
    case 'measure_component':
      return value is! Map<String, dynamic>
          ? null
          : MeasureComponentBuilder.fromJson(value);
    case 'measuresupplementaldata':
      return value is! Map<String, dynamic>
          ? null
          : MeasureSupplementalDataBuilder.fromJson(value);
    case 'measure_supplementaldata':
      return value is! Map<String, dynamic>
          ? null
          : MeasureSupplementalDataBuilder.fromJson(value);
    case 'measurereport':
      return value is! Map<String, dynamic>
          ? null
          : MeasureReportBuilder.fromJson(value);
    case 'measurereportgroup':
      return value is! Map<String, dynamic>
          ? null
          : MeasureReportGroupBuilder.fromJson(value);
    case 'measurereport_group':
      return value is! Map<String, dynamic>
          ? null
          : MeasureReportGroupBuilder.fromJson(value);
    case 'measurereportpopulation':
      return value is! Map<String, dynamic>
          ? null
          : MeasureReportPopulationBuilder.fromJson(value);
    case 'measurereport_population':
      return value is! Map<String, dynamic>
          ? null
          : MeasureReportPopulationBuilder.fromJson(value);
    case 'measurereportstratifier':
      return value is! Map<String, dynamic>
          ? null
          : MeasureReportStratifierBuilder.fromJson(value);
    case 'measurereport_stratifier':
      return value is! Map<String, dynamic>
          ? null
          : MeasureReportStratifierBuilder.fromJson(value);
    case 'measurereportstratum':
      return value is! Map<String, dynamic>
          ? null
          : MeasureReportStratumBuilder.fromJson(value);
    case 'measurereport_stratum':
      return value is! Map<String, dynamic>
          ? null
          : MeasureReportStratumBuilder.fromJson(value);
    case 'measurereportcomponent':
      return value is! Map<String, dynamic>
          ? null
          : MeasureReportComponentBuilder.fromJson(value);
    case 'measurereport_component':
      return value is! Map<String, dynamic>
          ? null
          : MeasureReportComponentBuilder.fromJson(value);
    case 'measurereportpopulation1':
      return value is! Map<String, dynamic>
          ? null
          : MeasureReportPopulation1Builder.fromJson(value);
    case 'measurereport_population1':
      return value is! Map<String, dynamic>
          ? null
          : MeasureReportPopulation1Builder.fromJson(value);
    case 'medication':
      return value is! Map<String, dynamic>
          ? null
          : MedicationBuilder.fromJson(value);
    case 'medicationingredient':
      return value is! Map<String, dynamic>
          ? null
          : MedicationIngredientBuilder.fromJson(value);
    case 'medication_ingredient':
      return value is! Map<String, dynamic>
          ? null
          : MedicationIngredientBuilder.fromJson(value);
    case 'medicationbatch':
      return value is! Map<String, dynamic>
          ? null
          : MedicationBatchBuilder.fromJson(value);
    case 'medication_batch':
      return value is! Map<String, dynamic>
          ? null
          : MedicationBatchBuilder.fromJson(value);
    case 'medicationadministration':
      return value is! Map<String, dynamic>
          ? null
          : MedicationAdministrationBuilder.fromJson(value);
    case 'medicationadministrationperformer':
      return value is! Map<String, dynamic>
          ? null
          : MedicationAdministrationPerformerBuilder.fromJson(value);
    case 'medicationadministration_performer':
      return value is! Map<String, dynamic>
          ? null
          : MedicationAdministrationPerformerBuilder.fromJson(value);
    case 'medicationadministrationdosage':
      return value is! Map<String, dynamic>
          ? null
          : MedicationAdministrationDosageBuilder.fromJson(value);
    case 'medicationadministration_dosage':
      return value is! Map<String, dynamic>
          ? null
          : MedicationAdministrationDosageBuilder.fromJson(value);
    case 'medicationdispense':
      return value is! Map<String, dynamic>
          ? null
          : MedicationDispenseBuilder.fromJson(value);
    case 'medicationdispenseperformer':
      return value is! Map<String, dynamic>
          ? null
          : MedicationDispensePerformerBuilder.fromJson(value);
    case 'medicationdispense_performer':
      return value is! Map<String, dynamic>
          ? null
          : MedicationDispensePerformerBuilder.fromJson(value);
    case 'medicationdispensesubstitution':
      return value is! Map<String, dynamic>
          ? null
          : MedicationDispenseSubstitutionBuilder.fromJson(value);
    case 'medicationdispense_substitution':
      return value is! Map<String, dynamic>
          ? null
          : MedicationDispenseSubstitutionBuilder.fromJson(value);
    case 'medicationknowledge':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeBuilder.fromJson(value);
    case 'medicationknowledgerelatedmedicationknowledge':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeRelatedMedicationKnowledgeBuilder.fromJson(
              value,
            );
    case 'medicationknowledge_relatedmedicationknowledge':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeRelatedMedicationKnowledgeBuilder.fromJson(
              value,
            );
    case 'medicationknowledgemonograph':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeMonographBuilder.fromJson(value);
    case 'medicationknowledge_monograph':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeMonographBuilder.fromJson(value);
    case 'medicationknowledgecost':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeCostBuilder.fromJson(value);
    case 'medicationknowledge_cost':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeCostBuilder.fromJson(value);
    case 'medicationknowledgemonitoringprogram':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeMonitoringProgramBuilder.fromJson(value);
    case 'medicationknowledge_monitoringprogram':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeMonitoringProgramBuilder.fromJson(value);
    case 'medicationknowledgeindicationguideline':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeIndicationGuidelineBuilder.fromJson(value);
    case 'medicationknowledge_indicationguideline':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeIndicationGuidelineBuilder.fromJson(value);
    case 'medicationknowledgedosingguideline':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeDosingGuidelineBuilder.fromJson(value);
    case 'medicationknowledge_dosingguideline':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeDosingGuidelineBuilder.fromJson(value);
    case 'medicationknowledgedosage':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeDosageBuilder.fromJson(value);
    case 'medicationknowledge_dosage':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeDosageBuilder.fromJson(value);
    case 'medicationknowledgepatientcharacteristic':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgePatientCharacteristicBuilder.fromJson(value);
    case 'medicationknowledge_patientcharacteristic':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgePatientCharacteristicBuilder.fromJson(value);
    case 'medicationknowledgemedicineclassification':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeMedicineClassificationBuilder.fromJson(value);
    case 'medicationknowledge_medicineclassification':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeMedicineClassificationBuilder.fromJson(value);
    case 'medicationknowledgepackaging':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgePackagingBuilder.fromJson(value);
    case 'medicationknowledge_packaging':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgePackagingBuilder.fromJson(value);
    case 'medicationknowledgestorageguideline':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeStorageGuidelineBuilder.fromJson(value);
    case 'medicationknowledge_storageguideline':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeStorageGuidelineBuilder.fromJson(value);
    case 'medicationknowledgeenvironmentalsetting':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeEnvironmentalSettingBuilder.fromJson(value);
    case 'medicationknowledge_environmentalsetting':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeEnvironmentalSettingBuilder.fromJson(value);
    case 'medicationknowledgeregulatory':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeRegulatoryBuilder.fromJson(value);
    case 'medicationknowledge_regulatory':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeRegulatoryBuilder.fromJson(value);
    case 'medicationknowledgesubstitution':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeSubstitutionBuilder.fromJson(value);
    case 'medicationknowledge_substitution':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeSubstitutionBuilder.fromJson(value);
    case 'medicationknowledgemaxdispense':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeMaxDispenseBuilder.fromJson(value);
    case 'medicationknowledge_maxdispense':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeMaxDispenseBuilder.fromJson(value);
    case 'medicationknowledgedefinitional':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeDefinitionalBuilder.fromJson(value);
    case 'medicationknowledge_definitional':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeDefinitionalBuilder.fromJson(value);
    case 'medicationknowledgeingredient':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeIngredientBuilder.fromJson(value);
    case 'medicationknowledge_ingredient':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeIngredientBuilder.fromJson(value);
    case 'medicationknowledgedrugcharacteristic':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeDrugCharacteristicBuilder.fromJson(value);
    case 'medicationknowledge_drugcharacteristic':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeDrugCharacteristicBuilder.fromJson(value);
    case 'medicationrequest':
      return value is! Map<String, dynamic>
          ? null
          : MedicationRequestBuilder.fromJson(value);
    case 'medicationrequestdispenserequest':
      return value is! Map<String, dynamic>
          ? null
          : MedicationRequestDispenseRequestBuilder.fromJson(value);
    case 'medicationrequest_dispenserequest':
      return value is! Map<String, dynamic>
          ? null
          : MedicationRequestDispenseRequestBuilder.fromJson(value);
    case 'medicationrequestinitialfill':
      return value is! Map<String, dynamic>
          ? null
          : MedicationRequestInitialFillBuilder.fromJson(value);
    case 'medicationrequest_initialfill':
      return value is! Map<String, dynamic>
          ? null
          : MedicationRequestInitialFillBuilder.fromJson(value);
    case 'medicationrequestsubstitution':
      return value is! Map<String, dynamic>
          ? null
          : MedicationRequestSubstitutionBuilder.fromJson(value);
    case 'medicationrequest_substitution':
      return value is! Map<String, dynamic>
          ? null
          : MedicationRequestSubstitutionBuilder.fromJson(value);
    case 'medicationstatement':
      return value is! Map<String, dynamic>
          ? null
          : MedicationStatementBuilder.fromJson(value);
    case 'medicationstatementadherence':
      return value is! Map<String, dynamic>
          ? null
          : MedicationStatementAdherenceBuilder.fromJson(value);
    case 'medicationstatement_adherence':
      return value is! Map<String, dynamic>
          ? null
          : MedicationStatementAdherenceBuilder.fromJson(value);
    case 'medicinalproductdefinition':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinitionBuilder.fromJson(value);
    case 'medicinalproductdefinitioncontact':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinitionContactBuilder.fromJson(value);
    case 'medicinalproductdefinition_contact':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinitionContactBuilder.fromJson(value);
    case 'medicinalproductdefinitionname':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinitionNameBuilder.fromJson(value);
    case 'medicinalproductdefinition_name':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinitionNameBuilder.fromJson(value);
    case 'medicinalproductdefinitionpart':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinitionPartBuilder.fromJson(value);
    case 'medicinalproductdefinition_part':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinitionPartBuilder.fromJson(value);
    case 'medicinalproductdefinitionusage':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinitionUsageBuilder.fromJson(value);
    case 'medicinalproductdefinition_usage':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinitionUsageBuilder.fromJson(value);
    case 'medicinalproductdefinitioncrossreference':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinitionCrossReferenceBuilder.fromJson(value);
    case 'medicinalproductdefinition_crossreference':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinitionCrossReferenceBuilder.fromJson(value);
    case 'medicinalproductdefinitionoperation':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinitionOperationBuilder.fromJson(value);
    case 'medicinalproductdefinition_operation':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinitionOperationBuilder.fromJson(value);
    case 'medicinalproductdefinitioncharacteristic':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinitionCharacteristicBuilder.fromJson(value);
    case 'medicinalproductdefinition_characteristic':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinitionCharacteristicBuilder.fromJson(value);
    case 'messagedefinition':
      return value is! Map<String, dynamic>
          ? null
          : MessageDefinitionBuilder.fromJson(value);
    case 'messagedefinitionfocus':
      return value is! Map<String, dynamic>
          ? null
          : MessageDefinitionFocusBuilder.fromJson(value);
    case 'messagedefinition_focus':
      return value is! Map<String, dynamic>
          ? null
          : MessageDefinitionFocusBuilder.fromJson(value);
    case 'messagedefinitionallowedresponse':
      return value is! Map<String, dynamic>
          ? null
          : MessageDefinitionAllowedResponseBuilder.fromJson(value);
    case 'messagedefinition_allowedresponse':
      return value is! Map<String, dynamic>
          ? null
          : MessageDefinitionAllowedResponseBuilder.fromJson(value);
    case 'messageheader':
      return value is! Map<String, dynamic>
          ? null
          : MessageHeaderBuilder.fromJson(value);
    case 'messageheaderdestination':
      return value is! Map<String, dynamic>
          ? null
          : MessageHeaderDestinationBuilder.fromJson(value);
    case 'messageheader_destination':
      return value is! Map<String, dynamic>
          ? null
          : MessageHeaderDestinationBuilder.fromJson(value);
    case 'messageheadersource':
      return value is! Map<String, dynamic>
          ? null
          : MessageHeaderSourceBuilder.fromJson(value);
    case 'messageheader_source':
      return value is! Map<String, dynamic>
          ? null
          : MessageHeaderSourceBuilder.fromJson(value);
    case 'messageheaderresponse':
      return value is! Map<String, dynamic>
          ? null
          : MessageHeaderResponseBuilder.fromJson(value);
    case 'messageheader_response':
      return value is! Map<String, dynamic>
          ? null
          : MessageHeaderResponseBuilder.fromJson(value);
    case 'molecularsequence':
      return value is! Map<String, dynamic>
          ? null
          : MolecularSequenceBuilder.fromJson(value);
    case 'molecularsequencerelative':
      return value is! Map<String, dynamic>
          ? null
          : MolecularSequenceRelativeBuilder.fromJson(value);
    case 'molecularsequence_relative':
      return value is! Map<String, dynamic>
          ? null
          : MolecularSequenceRelativeBuilder.fromJson(value);
    case 'molecularsequencestartingsequence':
      return value is! Map<String, dynamic>
          ? null
          : MolecularSequenceStartingSequenceBuilder.fromJson(value);
    case 'molecularsequence_startingsequence':
      return value is! Map<String, dynamic>
          ? null
          : MolecularSequenceStartingSequenceBuilder.fromJson(value);
    case 'molecularsequenceedit':
      return value is! Map<String, dynamic>
          ? null
          : MolecularSequenceEditBuilder.fromJson(value);
    case 'molecularsequence_edit':
      return value is! Map<String, dynamic>
          ? null
          : MolecularSequenceEditBuilder.fromJson(value);
    case 'namingsystem':
      return value is! Map<String, dynamic>
          ? null
          : NamingSystemBuilder.fromJson(value);
    case 'namingsystemuniqueid':
      return value is! Map<String, dynamic>
          ? null
          : NamingSystemUniqueIdBuilder.fromJson(value);
    case 'namingsystem_uniqueid':
      return value is! Map<String, dynamic>
          ? null
          : NamingSystemUniqueIdBuilder.fromJson(value);
    case 'nutritionintake':
      return value is! Map<String, dynamic>
          ? null
          : NutritionIntakeBuilder.fromJson(value);
    case 'nutritionintakeconsumeditem':
      return value is! Map<String, dynamic>
          ? null
          : NutritionIntakeConsumedItemBuilder.fromJson(value);
    case 'nutritionintake_consumeditem':
      return value is! Map<String, dynamic>
          ? null
          : NutritionIntakeConsumedItemBuilder.fromJson(value);
    case 'nutritionintakeingredientlabel':
      return value is! Map<String, dynamic>
          ? null
          : NutritionIntakeIngredientLabelBuilder.fromJson(value);
    case 'nutritionintake_ingredientlabel':
      return value is! Map<String, dynamic>
          ? null
          : NutritionIntakeIngredientLabelBuilder.fromJson(value);
    case 'nutritionintakeperformer':
      return value is! Map<String, dynamic>
          ? null
          : NutritionIntakePerformerBuilder.fromJson(value);
    case 'nutritionintake_performer':
      return value is! Map<String, dynamic>
          ? null
          : NutritionIntakePerformerBuilder.fromJson(value);
    case 'nutritionorder':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderBuilder.fromJson(value);
    case 'nutritionorderoraldiet':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderOralDietBuilder.fromJson(value);
    case 'nutritionorder_oraldiet':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderOralDietBuilder.fromJson(value);
    case 'nutritionorderschedule':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderScheduleBuilder.fromJson(value);
    case 'nutritionorder_schedule':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderScheduleBuilder.fromJson(value);
    case 'nutritionordernutrient':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderNutrientBuilder.fromJson(value);
    case 'nutritionorder_nutrient':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderNutrientBuilder.fromJson(value);
    case 'nutritionordertexture':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderTextureBuilder.fromJson(value);
    case 'nutritionorder_texture':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderTextureBuilder.fromJson(value);
    case 'nutritionordersupplement':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderSupplementBuilder.fromJson(value);
    case 'nutritionorder_supplement':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderSupplementBuilder.fromJson(value);
    case 'nutritionorderschedule1':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderSchedule1Builder.fromJson(value);
    case 'nutritionorder_schedule1':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderSchedule1Builder.fromJson(value);
    case 'nutritionorderenteralformula':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderEnteralFormulaBuilder.fromJson(value);
    case 'nutritionorder_enteralformula':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderEnteralFormulaBuilder.fromJson(value);
    case 'nutritionorderadditive':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderAdditiveBuilder.fromJson(value);
    case 'nutritionorder_additive':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderAdditiveBuilder.fromJson(value);
    case 'nutritionorderadministration':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderAdministrationBuilder.fromJson(value);
    case 'nutritionorder_administration':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderAdministrationBuilder.fromJson(value);
    case 'nutritionorderschedule2':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderSchedule2Builder.fromJson(value);
    case 'nutritionorder_schedule2':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderSchedule2Builder.fromJson(value);
    case 'nutritionproduct':
      return value is! Map<String, dynamic>
          ? null
          : NutritionProductBuilder.fromJson(value);
    case 'nutritionproductnutrient':
      return value is! Map<String, dynamic>
          ? null
          : NutritionProductNutrientBuilder.fromJson(value);
    case 'nutritionproduct_nutrient':
      return value is! Map<String, dynamic>
          ? null
          : NutritionProductNutrientBuilder.fromJson(value);
    case 'nutritionproductingredient':
      return value is! Map<String, dynamic>
          ? null
          : NutritionProductIngredientBuilder.fromJson(value);
    case 'nutritionproduct_ingredient':
      return value is! Map<String, dynamic>
          ? null
          : NutritionProductIngredientBuilder.fromJson(value);
    case 'nutritionproductcharacteristic':
      return value is! Map<String, dynamic>
          ? null
          : NutritionProductCharacteristicBuilder.fromJson(value);
    case 'nutritionproduct_characteristic':
      return value is! Map<String, dynamic>
          ? null
          : NutritionProductCharacteristicBuilder.fromJson(value);
    case 'nutritionproductinstance':
      return value is! Map<String, dynamic>
          ? null
          : NutritionProductInstanceBuilder.fromJson(value);
    case 'nutritionproduct_instance':
      return value is! Map<String, dynamic>
          ? null
          : NutritionProductInstanceBuilder.fromJson(value);
    case 'observation':
      return value is! Map<String, dynamic>
          ? null
          : ObservationBuilder.fromJson(value);
    case 'observationtriggeredby':
      return value is! Map<String, dynamic>
          ? null
          : ObservationTriggeredByBuilder.fromJson(value);
    case 'observation_triggeredby':
      return value is! Map<String, dynamic>
          ? null
          : ObservationTriggeredByBuilder.fromJson(value);
    case 'observationreferencerange':
      return value is! Map<String, dynamic>
          ? null
          : ObservationReferenceRangeBuilder.fromJson(value);
    case 'observation_referencerange':
      return value is! Map<String, dynamic>
          ? null
          : ObservationReferenceRangeBuilder.fromJson(value);
    case 'observationcomponent':
      return value is! Map<String, dynamic>
          ? null
          : ObservationComponentBuilder.fromJson(value);
    case 'observation_component':
      return value is! Map<String, dynamic>
          ? null
          : ObservationComponentBuilder.fromJson(value);
    case 'observationdefinition':
      return value is! Map<String, dynamic>
          ? null
          : ObservationDefinitionBuilder.fromJson(value);
    case 'observationdefinitionqualifiedvalue':
      return value is! Map<String, dynamic>
          ? null
          : ObservationDefinitionQualifiedValueBuilder.fromJson(value);
    case 'observationdefinition_qualifiedvalue':
      return value is! Map<String, dynamic>
          ? null
          : ObservationDefinitionQualifiedValueBuilder.fromJson(value);
    case 'observationdefinitioncomponent':
      return value is! Map<String, dynamic>
          ? null
          : ObservationDefinitionComponentBuilder.fromJson(value);
    case 'observationdefinition_component':
      return value is! Map<String, dynamic>
          ? null
          : ObservationDefinitionComponentBuilder.fromJson(value);
    case 'operationdefinition':
      return value is! Map<String, dynamic>
          ? null
          : OperationDefinitionBuilder.fromJson(value);
    case 'operationdefinitionparameter':
      return value is! Map<String, dynamic>
          ? null
          : OperationDefinitionParameterBuilder.fromJson(value);
    case 'operationdefinition_parameter':
      return value is! Map<String, dynamic>
          ? null
          : OperationDefinitionParameterBuilder.fromJson(value);
    case 'operationdefinitionbinding':
      return value is! Map<String, dynamic>
          ? null
          : OperationDefinitionBindingBuilder.fromJson(value);
    case 'operationdefinition_binding':
      return value is! Map<String, dynamic>
          ? null
          : OperationDefinitionBindingBuilder.fromJson(value);
    case 'operationdefinitionreferencedfrom':
      return value is! Map<String, dynamic>
          ? null
          : OperationDefinitionReferencedFromBuilder.fromJson(value);
    case 'operationdefinition_referencedfrom':
      return value is! Map<String, dynamic>
          ? null
          : OperationDefinitionReferencedFromBuilder.fromJson(value);
    case 'operationdefinitionoverload':
      return value is! Map<String, dynamic>
          ? null
          : OperationDefinitionOverloadBuilder.fromJson(value);
    case 'operationdefinition_overload':
      return value is! Map<String, dynamic>
          ? null
          : OperationDefinitionOverloadBuilder.fromJson(value);
    case 'operationoutcome':
      return value is! Map<String, dynamic>
          ? null
          : OperationOutcomeBuilder.fromJson(value);
    case 'operationoutcomeissue':
      return value is! Map<String, dynamic>
          ? null
          : OperationOutcomeIssueBuilder.fromJson(value);
    case 'operationoutcome_issue':
      return value is! Map<String, dynamic>
          ? null
          : OperationOutcomeIssueBuilder.fromJson(value);
    case 'organization':
      return value is! Map<String, dynamic>
          ? null
          : OrganizationBuilder.fromJson(value);
    case 'organizationqualification':
      return value is! Map<String, dynamic>
          ? null
          : OrganizationQualificationBuilder.fromJson(value);
    case 'organization_qualification':
      return value is! Map<String, dynamic>
          ? null
          : OrganizationQualificationBuilder.fromJson(value);
    case 'organizationaffiliation':
      return value is! Map<String, dynamic>
          ? null
          : OrganizationAffiliationBuilder.fromJson(value);
    case 'packagedproductdefinition':
      return value is! Map<String, dynamic>
          ? null
          : PackagedProductDefinitionBuilder.fromJson(value);
    case 'packagedproductdefinitionlegalstatusofsupply':
      return value is! Map<String, dynamic>
          ? null
          : PackagedProductDefinitionLegalStatusOfSupplyBuilder.fromJson(value);
    case 'packagedproductdefinition_legalstatusofsupply':
      return value is! Map<String, dynamic>
          ? null
          : PackagedProductDefinitionLegalStatusOfSupplyBuilder.fromJson(value);
    case 'packagedproductdefinitionpackaging':
      return value is! Map<String, dynamic>
          ? null
          : PackagedProductDefinitionPackagingBuilder.fromJson(value);
    case 'packagedproductdefinition_packaging':
      return value is! Map<String, dynamic>
          ? null
          : PackagedProductDefinitionPackagingBuilder.fromJson(value);
    case 'packagedproductdefinitionproperty':
      return value is! Map<String, dynamic>
          ? null
          : PackagedProductDefinitionPropertyBuilder.fromJson(value);
    case 'packagedproductdefinition_property':
      return value is! Map<String, dynamic>
          ? null
          : PackagedProductDefinitionPropertyBuilder.fromJson(value);
    case 'packagedproductdefinitioncontaineditem':
      return value is! Map<String, dynamic>
          ? null
          : PackagedProductDefinitionContainedItemBuilder.fromJson(value);
    case 'packagedproductdefinition_containeditem':
      return value is! Map<String, dynamic>
          ? null
          : PackagedProductDefinitionContainedItemBuilder.fromJson(value);
    case 'parameters':
      return value is! Map<String, dynamic>
          ? null
          : ParametersBuilder.fromJson(value);
    case 'parametersparameter':
      return value is! Map<String, dynamic>
          ? null
          : ParametersParameterBuilder.fromJson(value);
    case 'parameters_parameter':
      return value is! Map<String, dynamic>
          ? null
          : ParametersParameterBuilder.fromJson(value);
    case 'patient':
      return value is! Map<String, dynamic>
          ? null
          : PatientBuilder.fromJson(value);
    case 'patientcontact':
      return value is! Map<String, dynamic>
          ? null
          : PatientContactBuilder.fromJson(value);
    case 'patient_contact':
      return value is! Map<String, dynamic>
          ? null
          : PatientContactBuilder.fromJson(value);
    case 'patientcommunication':
      return value is! Map<String, dynamic>
          ? null
          : PatientCommunicationBuilder.fromJson(value);
    case 'patient_communication':
      return value is! Map<String, dynamic>
          ? null
          : PatientCommunicationBuilder.fromJson(value);
    case 'patientlink':
      return value is! Map<String, dynamic>
          ? null
          : PatientLinkBuilder.fromJson(value);
    case 'patient_link':
      return value is! Map<String, dynamic>
          ? null
          : PatientLinkBuilder.fromJson(value);
    case 'paymentnotice':
      return value is! Map<String, dynamic>
          ? null
          : PaymentNoticeBuilder.fromJson(value);
    case 'paymentreconciliation':
      return value is! Map<String, dynamic>
          ? null
          : PaymentReconciliationBuilder.fromJson(value);
    case 'paymentreconciliationallocation':
      return value is! Map<String, dynamic>
          ? null
          : PaymentReconciliationAllocationBuilder.fromJson(value);
    case 'paymentreconciliation_allocation':
      return value is! Map<String, dynamic>
          ? null
          : PaymentReconciliationAllocationBuilder.fromJson(value);
    case 'paymentreconciliationprocessnote':
      return value is! Map<String, dynamic>
          ? null
          : PaymentReconciliationProcessNoteBuilder.fromJson(value);
    case 'paymentreconciliation_processnote':
      return value is! Map<String, dynamic>
          ? null
          : PaymentReconciliationProcessNoteBuilder.fromJson(value);
    case 'permission':
      return value is! Map<String, dynamic>
          ? null
          : PermissionBuilder.fromJson(value);
    case 'permissionjustification':
      return value is! Map<String, dynamic>
          ? null
          : PermissionJustificationBuilder.fromJson(value);
    case 'permission_justification':
      return value is! Map<String, dynamic>
          ? null
          : PermissionJustificationBuilder.fromJson(value);
    case 'permissionrule':
      return value is! Map<String, dynamic>
          ? null
          : PermissionRuleBuilder.fromJson(value);
    case 'permission_rule':
      return value is! Map<String, dynamic>
          ? null
          : PermissionRuleBuilder.fromJson(value);
    case 'permissiondata':
      return value is! Map<String, dynamic>
          ? null
          : PermissionDataBuilder.fromJson(value);
    case 'permission_data':
      return value is! Map<String, dynamic>
          ? null
          : PermissionDataBuilder.fromJson(value);
    case 'permissionresource':
      return value is! Map<String, dynamic>
          ? null
          : PermissionResourceBuilder.fromJson(value);
    case 'permission_resource':
      return value is! Map<String, dynamic>
          ? null
          : PermissionResourceBuilder.fromJson(value);
    case 'permissionactivity':
      return value is! Map<String, dynamic>
          ? null
          : PermissionActivityBuilder.fromJson(value);
    case 'permission_activity':
      return value is! Map<String, dynamic>
          ? null
          : PermissionActivityBuilder.fromJson(value);
    case 'person':
      return value is! Map<String, dynamic>
          ? null
          : PersonBuilder.fromJson(value);
    case 'personcommunication':
      return value is! Map<String, dynamic>
          ? null
          : PersonCommunicationBuilder.fromJson(value);
    case 'person_communication':
      return value is! Map<String, dynamic>
          ? null
          : PersonCommunicationBuilder.fromJson(value);
    case 'personlink':
      return value is! Map<String, dynamic>
          ? null
          : PersonLinkBuilder.fromJson(value);
    case 'person_link':
      return value is! Map<String, dynamic>
          ? null
          : PersonLinkBuilder.fromJson(value);
    case 'plandefinition':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionBuilder.fromJson(value);
    case 'plandefinitiongoal':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionGoalBuilder.fromJson(value);
    case 'plandefinition_goal':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionGoalBuilder.fromJson(value);
    case 'plandefinitiontarget':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionTargetBuilder.fromJson(value);
    case 'plandefinition_target':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionTargetBuilder.fromJson(value);
    case 'plandefinitionactor':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionActorBuilder.fromJson(value);
    case 'plandefinition_actor':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionActorBuilder.fromJson(value);
    case 'plandefinitionoption':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionOptionBuilder.fromJson(value);
    case 'plandefinition_option':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionOptionBuilder.fromJson(value);
    case 'plandefinitionaction':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionActionBuilder.fromJson(value);
    case 'plandefinition_action':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionActionBuilder.fromJson(value);
    case 'plandefinitioncondition':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionConditionBuilder.fromJson(value);
    case 'plandefinition_condition':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionConditionBuilder.fromJson(value);
    case 'plandefinitioninput':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionInputBuilder.fromJson(value);
    case 'plandefinition_input':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionInputBuilder.fromJson(value);
    case 'plandefinitionoutput':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionOutputBuilder.fromJson(value);
    case 'plandefinition_output':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionOutputBuilder.fromJson(value);
    case 'plandefinitionrelatedaction':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionRelatedActionBuilder.fromJson(value);
    case 'plandefinition_relatedaction':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionRelatedActionBuilder.fromJson(value);
    case 'plandefinitionparticipant':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionParticipantBuilder.fromJson(value);
    case 'plandefinition_participant':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionParticipantBuilder.fromJson(value);
    case 'plandefinitiondynamicvalue':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionDynamicValueBuilder.fromJson(value);
    case 'plandefinition_dynamicvalue':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionDynamicValueBuilder.fromJson(value);
    case 'practitioner':
      return value is! Map<String, dynamic>
          ? null
          : PractitionerBuilder.fromJson(value);
    case 'practitionerqualification':
      return value is! Map<String, dynamic>
          ? null
          : PractitionerQualificationBuilder.fromJson(value);
    case 'practitioner_qualification':
      return value is! Map<String, dynamic>
          ? null
          : PractitionerQualificationBuilder.fromJson(value);
    case 'practitionercommunication':
      return value is! Map<String, dynamic>
          ? null
          : PractitionerCommunicationBuilder.fromJson(value);
    case 'practitioner_communication':
      return value is! Map<String, dynamic>
          ? null
          : PractitionerCommunicationBuilder.fromJson(value);
    case 'practitionerrole':
      return value is! Map<String, dynamic>
          ? null
          : PractitionerRoleBuilder.fromJson(value);
    case 'procedure':
      return value is! Map<String, dynamic>
          ? null
          : ProcedureBuilder.fromJson(value);
    case 'procedureperformer':
      return value is! Map<String, dynamic>
          ? null
          : ProcedurePerformerBuilder.fromJson(value);
    case 'procedure_performer':
      return value is! Map<String, dynamic>
          ? null
          : ProcedurePerformerBuilder.fromJson(value);
    case 'procedurefocaldevice':
      return value is! Map<String, dynamic>
          ? null
          : ProcedureFocalDeviceBuilder.fromJson(value);
    case 'procedure_focaldevice':
      return value is! Map<String, dynamic>
          ? null
          : ProcedureFocalDeviceBuilder.fromJson(value);
    case 'provenance':
      return value is! Map<String, dynamic>
          ? null
          : ProvenanceBuilder.fromJson(value);
    case 'provenanceagent':
      return value is! Map<String, dynamic>
          ? null
          : ProvenanceAgentBuilder.fromJson(value);
    case 'provenance_agent':
      return value is! Map<String, dynamic>
          ? null
          : ProvenanceAgentBuilder.fromJson(value);
    case 'provenanceentity':
      return value is! Map<String, dynamic>
          ? null
          : ProvenanceEntityBuilder.fromJson(value);
    case 'provenance_entity':
      return value is! Map<String, dynamic>
          ? null
          : ProvenanceEntityBuilder.fromJson(value);
    case 'questionnaire':
      return value is! Map<String, dynamic>
          ? null
          : QuestionnaireBuilder.fromJson(value);
    case 'questionnaireitem':
      return value is! Map<String, dynamic>
          ? null
          : QuestionnaireItemBuilder.fromJson(value);
    case 'questionnaire_item':
      return value is! Map<String, dynamic>
          ? null
          : QuestionnaireItemBuilder.fromJson(value);
    case 'questionnaireenablewhen':
      return value is! Map<String, dynamic>
          ? null
          : QuestionnaireEnableWhenBuilder.fromJson(value);
    case 'questionnaire_enablewhen':
      return value is! Map<String, dynamic>
          ? null
          : QuestionnaireEnableWhenBuilder.fromJson(value);
    case 'questionnaireansweroption':
      return value is! Map<String, dynamic>
          ? null
          : QuestionnaireAnswerOptionBuilder.fromJson(value);
    case 'questionnaire_answeroption':
      return value is! Map<String, dynamic>
          ? null
          : QuestionnaireAnswerOptionBuilder.fromJson(value);
    case 'questionnaireinitial':
      return value is! Map<String, dynamic>
          ? null
          : QuestionnaireInitialBuilder.fromJson(value);
    case 'questionnaire_initial':
      return value is! Map<String, dynamic>
          ? null
          : QuestionnaireInitialBuilder.fromJson(value);
    case 'questionnaireresponse':
      return value is! Map<String, dynamic>
          ? null
          : QuestionnaireResponseBuilder.fromJson(value);
    case 'questionnaireresponseitem':
      return value is! Map<String, dynamic>
          ? null
          : QuestionnaireResponseItemBuilder.fromJson(value);
    case 'questionnaireresponse_item':
      return value is! Map<String, dynamic>
          ? null
          : QuestionnaireResponseItemBuilder.fromJson(value);
    case 'questionnaireresponseanswer':
      return value is! Map<String, dynamic>
          ? null
          : QuestionnaireResponseAnswerBuilder.fromJson(value);
    case 'questionnaireresponse_answer':
      return value is! Map<String, dynamic>
          ? null
          : QuestionnaireResponseAnswerBuilder.fromJson(value);
    case 'regulatedauthorization':
      return value is! Map<String, dynamic>
          ? null
          : RegulatedAuthorizationBuilder.fromJson(value);
    case 'regulatedauthorizationcase':
      return value is! Map<String, dynamic>
          ? null
          : RegulatedAuthorizationCaseBuilder.fromJson(value);
    case 'regulatedauthorization_case':
      return value is! Map<String, dynamic>
          ? null
          : RegulatedAuthorizationCaseBuilder.fromJson(value);
    case 'relatedperson':
      return value is! Map<String, dynamic>
          ? null
          : RelatedPersonBuilder.fromJson(value);
    case 'relatedpersoncommunication':
      return value is! Map<String, dynamic>
          ? null
          : RelatedPersonCommunicationBuilder.fromJson(value);
    case 'relatedperson_communication':
      return value is! Map<String, dynamic>
          ? null
          : RelatedPersonCommunicationBuilder.fromJson(value);
    case 'requestorchestration':
      return value is! Map<String, dynamic>
          ? null
          : RequestOrchestrationBuilder.fromJson(value);
    case 'requestorchestrationaction':
      return value is! Map<String, dynamic>
          ? null
          : RequestOrchestrationActionBuilder.fromJson(value);
    case 'requestorchestration_action':
      return value is! Map<String, dynamic>
          ? null
          : RequestOrchestrationActionBuilder.fromJson(value);
    case 'requestorchestrationcondition':
      return value is! Map<String, dynamic>
          ? null
          : RequestOrchestrationConditionBuilder.fromJson(value);
    case 'requestorchestration_condition':
      return value is! Map<String, dynamic>
          ? null
          : RequestOrchestrationConditionBuilder.fromJson(value);
    case 'requestorchestrationinput':
      return value is! Map<String, dynamic>
          ? null
          : RequestOrchestrationInputBuilder.fromJson(value);
    case 'requestorchestration_input':
      return value is! Map<String, dynamic>
          ? null
          : RequestOrchestrationInputBuilder.fromJson(value);
    case 'requestorchestrationoutput':
      return value is! Map<String, dynamic>
          ? null
          : RequestOrchestrationOutputBuilder.fromJson(value);
    case 'requestorchestration_output':
      return value is! Map<String, dynamic>
          ? null
          : RequestOrchestrationOutputBuilder.fromJson(value);
    case 'requestorchestrationrelatedaction':
      return value is! Map<String, dynamic>
          ? null
          : RequestOrchestrationRelatedActionBuilder.fromJson(value);
    case 'requestorchestration_relatedaction':
      return value is! Map<String, dynamic>
          ? null
          : RequestOrchestrationRelatedActionBuilder.fromJson(value);
    case 'requestorchestrationparticipant':
      return value is! Map<String, dynamic>
          ? null
          : RequestOrchestrationParticipantBuilder.fromJson(value);
    case 'requestorchestration_participant':
      return value is! Map<String, dynamic>
          ? null
          : RequestOrchestrationParticipantBuilder.fromJson(value);
    case 'requestorchestrationdynamicvalue':
      return value is! Map<String, dynamic>
          ? null
          : RequestOrchestrationDynamicValueBuilder.fromJson(value);
    case 'requestorchestration_dynamicvalue':
      return value is! Map<String, dynamic>
          ? null
          : RequestOrchestrationDynamicValueBuilder.fromJson(value);
    case 'requirements':
      return value is! Map<String, dynamic>
          ? null
          : RequirementsBuilder.fromJson(value);
    case 'requirementsstatement':
      return value is! Map<String, dynamic>
          ? null
          : RequirementsStatementBuilder.fromJson(value);
    case 'requirements_statement':
      return value is! Map<String, dynamic>
          ? null
          : RequirementsStatementBuilder.fromJson(value);
    case 'researchstudy':
      return value is! Map<String, dynamic>
          ? null
          : ResearchStudyBuilder.fromJson(value);
    case 'researchstudylabel':
      return value is! Map<String, dynamic>
          ? null
          : ResearchStudyLabelBuilder.fromJson(value);
    case 'researchstudy_label':
      return value is! Map<String, dynamic>
          ? null
          : ResearchStudyLabelBuilder.fromJson(value);
    case 'researchstudyassociatedparty':
      return value is! Map<String, dynamic>
          ? null
          : ResearchStudyAssociatedPartyBuilder.fromJson(value);
    case 'researchstudy_associatedparty':
      return value is! Map<String, dynamic>
          ? null
          : ResearchStudyAssociatedPartyBuilder.fromJson(value);
    case 'researchstudyprogressstatus':
      return value is! Map<String, dynamic>
          ? null
          : ResearchStudyProgressStatusBuilder.fromJson(value);
    case 'researchstudy_progressstatus':
      return value is! Map<String, dynamic>
          ? null
          : ResearchStudyProgressStatusBuilder.fromJson(value);
    case 'researchstudyrecruitment':
      return value is! Map<String, dynamic>
          ? null
          : ResearchStudyRecruitmentBuilder.fromJson(value);
    case 'researchstudy_recruitment':
      return value is! Map<String, dynamic>
          ? null
          : ResearchStudyRecruitmentBuilder.fromJson(value);
    case 'researchstudycomparisongroup':
      return value is! Map<String, dynamic>
          ? null
          : ResearchStudyComparisonGroupBuilder.fromJson(value);
    case 'researchstudy_comparisongroup':
      return value is! Map<String, dynamic>
          ? null
          : ResearchStudyComparisonGroupBuilder.fromJson(value);
    case 'researchstudyobjective':
      return value is! Map<String, dynamic>
          ? null
          : ResearchStudyObjectiveBuilder.fromJson(value);
    case 'researchstudy_objective':
      return value is! Map<String, dynamic>
          ? null
          : ResearchStudyObjectiveBuilder.fromJson(value);
    case 'researchstudyoutcomemeasure':
      return value is! Map<String, dynamic>
          ? null
          : ResearchStudyOutcomeMeasureBuilder.fromJson(value);
    case 'researchstudy_outcomemeasure':
      return value is! Map<String, dynamic>
          ? null
          : ResearchStudyOutcomeMeasureBuilder.fromJson(value);
    case 'researchsubject':
      return value is! Map<String, dynamic>
          ? null
          : ResearchSubjectBuilder.fromJson(value);
    case 'researchsubjectprogress':
      return value is! Map<String, dynamic>
          ? null
          : ResearchSubjectProgressBuilder.fromJson(value);
    case 'researchsubject_progress':
      return value is! Map<String, dynamic>
          ? null
          : ResearchSubjectProgressBuilder.fromJson(value);
    case 'riskassessment':
      return value is! Map<String, dynamic>
          ? null
          : RiskAssessmentBuilder.fromJson(value);
    case 'riskassessmentprediction':
      return value is! Map<String, dynamic>
          ? null
          : RiskAssessmentPredictionBuilder.fromJson(value);
    case 'riskassessment_prediction':
      return value is! Map<String, dynamic>
          ? null
          : RiskAssessmentPredictionBuilder.fromJson(value);
    case 'schedule':
      return value is! Map<String, dynamic>
          ? null
          : ScheduleBuilder.fromJson(value);
    case 'searchparameter':
      return value is! Map<String, dynamic>
          ? null
          : SearchParameterBuilder.fromJson(value);
    case 'searchparametercomponent':
      return value is! Map<String, dynamic>
          ? null
          : SearchParameterComponentBuilder.fromJson(value);
    case 'searchparameter_component':
      return value is! Map<String, dynamic>
          ? null
          : SearchParameterComponentBuilder.fromJson(value);
    case 'servicerequest':
      return value is! Map<String, dynamic>
          ? null
          : ServiceRequestBuilder.fromJson(value);
    case 'servicerequestorderdetail':
      return value is! Map<String, dynamic>
          ? null
          : ServiceRequestOrderDetailBuilder.fromJson(value);
    case 'servicerequest_orderdetail':
      return value is! Map<String, dynamic>
          ? null
          : ServiceRequestOrderDetailBuilder.fromJson(value);
    case 'servicerequestparameter':
      return value is! Map<String, dynamic>
          ? null
          : ServiceRequestParameterBuilder.fromJson(value);
    case 'servicerequest_parameter':
      return value is! Map<String, dynamic>
          ? null
          : ServiceRequestParameterBuilder.fromJson(value);
    case 'servicerequestpatientinstruction':
      return value is! Map<String, dynamic>
          ? null
          : ServiceRequestPatientInstructionBuilder.fromJson(value);
    case 'servicerequest_patientinstruction':
      return value is! Map<String, dynamic>
          ? null
          : ServiceRequestPatientInstructionBuilder.fromJson(value);
    case 'slot':
      return value is! Map<String, dynamic>
          ? null
          : SlotBuilder.fromJson(value);
    case 'specimen':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenBuilder.fromJson(value);
    case 'specimenfeature':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenFeatureBuilder.fromJson(value);
    case 'specimen_feature':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenFeatureBuilder.fromJson(value);
    case 'specimencollection':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenCollectionBuilder.fromJson(value);
    case 'specimen_collection':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenCollectionBuilder.fromJson(value);
    case 'specimenprocessing':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenProcessingBuilder.fromJson(value);
    case 'specimen_processing':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenProcessingBuilder.fromJson(value);
    case 'specimencontainer':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenContainerBuilder.fromJson(value);
    case 'specimen_container':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenContainerBuilder.fromJson(value);
    case 'specimendefinition':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenDefinitionBuilder.fromJson(value);
    case 'specimendefinitiontypetested':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenDefinitionTypeTestedBuilder.fromJson(value);
    case 'specimendefinition_typetested':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenDefinitionTypeTestedBuilder.fromJson(value);
    case 'specimendefinitioncontainer':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenDefinitionContainerBuilder.fromJson(value);
    case 'specimendefinition_container':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenDefinitionContainerBuilder.fromJson(value);
    case 'specimendefinitionadditive':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenDefinitionAdditiveBuilder.fromJson(value);
    case 'specimendefinition_additive':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenDefinitionAdditiveBuilder.fromJson(value);
    case 'specimendefinitionhandling':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenDefinitionHandlingBuilder.fromJson(value);
    case 'specimendefinition_handling':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenDefinitionHandlingBuilder.fromJson(value);
    case 'structuredefinition':
      return value is! Map<String, dynamic>
          ? null
          : StructureDefinitionBuilder.fromJson(value);
    case 'structuredefinitionmapping':
      return value is! Map<String, dynamic>
          ? null
          : StructureDefinitionMappingBuilder.fromJson(value);
    case 'structuredefinition_mapping':
      return value is! Map<String, dynamic>
          ? null
          : StructureDefinitionMappingBuilder.fromJson(value);
    case 'structuredefinitioncontext':
      return value is! Map<String, dynamic>
          ? null
          : StructureDefinitionContextBuilder.fromJson(value);
    case 'structuredefinition_context':
      return value is! Map<String, dynamic>
          ? null
          : StructureDefinitionContextBuilder.fromJson(value);
    case 'structuredefinitionsnapshot':
      return value is! Map<String, dynamic>
          ? null
          : StructureDefinitionSnapshotBuilder.fromJson(value);
    case 'structuredefinition_snapshot':
      return value is! Map<String, dynamic>
          ? null
          : StructureDefinitionSnapshotBuilder.fromJson(value);
    case 'structuredefinitiondifferential':
      return value is! Map<String, dynamic>
          ? null
          : StructureDefinitionDifferentialBuilder.fromJson(value);
    case 'structuredefinition_differential':
      return value is! Map<String, dynamic>
          ? null
          : StructureDefinitionDifferentialBuilder.fromJson(value);
    case 'structuremap':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapBuilder.fromJson(value);
    case 'structuremapstructure':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapStructureBuilder.fromJson(value);
    case 'structuremap_structure':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapStructureBuilder.fromJson(value);
    case 'structuremapconst':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapConstBuilder.fromJson(value);
    case 'structuremap_const':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapConstBuilder.fromJson(value);
    case 'structuremapgroup':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapGroupBuilder.fromJson(value);
    case 'structuremap_group':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapGroupBuilder.fromJson(value);
    case 'structuremapinput':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapInputBuilder.fromJson(value);
    case 'structuremap_input':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapInputBuilder.fromJson(value);
    case 'structuremaprule':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapRuleBuilder.fromJson(value);
    case 'structuremap_rule':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapRuleBuilder.fromJson(value);
    case 'structuremapsource':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapSourceBuilder.fromJson(value);
    case 'structuremap_source':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapSourceBuilder.fromJson(value);
    case 'structuremaptarget':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapTargetBuilder.fromJson(value);
    case 'structuremap_target':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapTargetBuilder.fromJson(value);
    case 'structuremapparameter':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapParameterBuilder.fromJson(value);
    case 'structuremap_parameter':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapParameterBuilder.fromJson(value);
    case 'structuremapdependent':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapDependentBuilder.fromJson(value);
    case 'structuremap_dependent':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapDependentBuilder.fromJson(value);
    case 'subscription':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionBuilder.fromJson(value);
    case 'subscriptionfilterby':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionFilterByBuilder.fromJson(value);
    case 'subscription_filterby':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionFilterByBuilder.fromJson(value);
    case 'subscriptionparameter':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionParameterBuilder.fromJson(value);
    case 'subscription_parameter':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionParameterBuilder.fromJson(value);
    case 'subscriptionstatus':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionStatusBuilder.fromJson(value);
    case 'subscriptionstatusnotificationevent':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionStatusNotificationEventBuilder.fromJson(value);
    case 'subscriptionstatus_notificationevent':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionStatusNotificationEventBuilder.fromJson(value);
    case 'subscriptiontopic':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionTopicBuilder.fromJson(value);
    case 'subscriptiontopicresourcetrigger':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionTopicResourceTriggerBuilder.fromJson(value);
    case 'subscriptiontopic_resourcetrigger':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionTopicResourceTriggerBuilder.fromJson(value);
    case 'subscriptiontopicquerycriteria':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionTopicQueryCriteriaBuilder.fromJson(value);
    case 'subscriptiontopic_querycriteria':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionTopicQueryCriteriaBuilder.fromJson(value);
    case 'subscriptiontopiceventtrigger':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionTopicEventTriggerBuilder.fromJson(value);
    case 'subscriptiontopic_eventtrigger':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionTopicEventTriggerBuilder.fromJson(value);
    case 'subscriptiontopiccanfilterby':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionTopicCanFilterByBuilder.fromJson(value);
    case 'subscriptiontopic_canfilterby':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionTopicCanFilterByBuilder.fromJson(value);
    case 'subscriptiontopicnotificationshape':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionTopicNotificationShapeBuilder.fromJson(value);
    case 'subscriptiontopic_notificationshape':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionTopicNotificationShapeBuilder.fromJson(value);
    case 'substance':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceBuilder.fromJson(value);
    case 'substanceingredient':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceIngredientBuilder.fromJson(value);
    case 'substance_ingredient':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceIngredientBuilder.fromJson(value);
    case 'substancedefinition':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionBuilder.fromJson(value);
    case 'substancedefinitionmoiety':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionMoietyBuilder.fromJson(value);
    case 'substancedefinition_moiety':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionMoietyBuilder.fromJson(value);
    case 'substancedefinitioncharacterization':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionCharacterizationBuilder.fromJson(value);
    case 'substancedefinition_characterization':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionCharacterizationBuilder.fromJson(value);
    case 'substancedefinitionproperty':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionPropertyBuilder.fromJson(value);
    case 'substancedefinition_property':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionPropertyBuilder.fromJson(value);
    case 'substancedefinitionmolecularweight':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionMolecularWeightBuilder.fromJson(value);
    case 'substancedefinition_molecularweight':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionMolecularWeightBuilder.fromJson(value);
    case 'substancedefinitionstructure':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionStructureBuilder.fromJson(value);
    case 'substancedefinition_structure':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionStructureBuilder.fromJson(value);
    case 'substancedefinitionrepresentation':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionRepresentationBuilder.fromJson(value);
    case 'substancedefinition_representation':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionRepresentationBuilder.fromJson(value);
    case 'substancedefinitioncode':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionCodeBuilder.fromJson(value);
    case 'substancedefinition_code':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionCodeBuilder.fromJson(value);
    case 'substancedefinitionname':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionNameBuilder.fromJson(value);
    case 'substancedefinition_name':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionNameBuilder.fromJson(value);
    case 'substancedefinitionofficial':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionOfficialBuilder.fromJson(value);
    case 'substancedefinition_official':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionOfficialBuilder.fromJson(value);
    case 'substancedefinitionrelationship':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionRelationshipBuilder.fromJson(value);
    case 'substancedefinition_relationship':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionRelationshipBuilder.fromJson(value);
    case 'substancedefinitionsourcematerial':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionSourceMaterialBuilder.fromJson(value);
    case 'substancedefinition_sourcematerial':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionSourceMaterialBuilder.fromJson(value);
    case 'substancenucleicacid':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceNucleicAcidBuilder.fromJson(value);
    case 'substancenucleicacidsubunit':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceNucleicAcidSubunitBuilder.fromJson(value);
    case 'substancenucleicacid_subunit':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceNucleicAcidSubunitBuilder.fromJson(value);
    case 'substancenucleicacidlinkage':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceNucleicAcidLinkageBuilder.fromJson(value);
    case 'substancenucleicacid_linkage':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceNucleicAcidLinkageBuilder.fromJson(value);
    case 'substancenucleicacidsugar':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceNucleicAcidSugarBuilder.fromJson(value);
    case 'substancenucleicacid_sugar':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceNucleicAcidSugarBuilder.fromJson(value);
    case 'substancepolymer':
      return value is! Map<String, dynamic>
          ? null
          : SubstancePolymerBuilder.fromJson(value);
    case 'substancepolymermonomerset':
      return value is! Map<String, dynamic>
          ? null
          : SubstancePolymerMonomerSetBuilder.fromJson(value);
    case 'substancepolymer_monomerset':
      return value is! Map<String, dynamic>
          ? null
          : SubstancePolymerMonomerSetBuilder.fromJson(value);
    case 'substancepolymerstartingmaterial':
      return value is! Map<String, dynamic>
          ? null
          : SubstancePolymerStartingMaterialBuilder.fromJson(value);
    case 'substancepolymer_startingmaterial':
      return value is! Map<String, dynamic>
          ? null
          : SubstancePolymerStartingMaterialBuilder.fromJson(value);
    case 'substancepolymerrepeat':
      return value is! Map<String, dynamic>
          ? null
          : SubstancePolymerRepeatBuilder.fromJson(value);
    case 'substancepolymer_repeat':
      return value is! Map<String, dynamic>
          ? null
          : SubstancePolymerRepeatBuilder.fromJson(value);
    case 'substancepolymerrepeatunit':
      return value is! Map<String, dynamic>
          ? null
          : SubstancePolymerRepeatUnitBuilder.fromJson(value);
    case 'substancepolymer_repeatunit':
      return value is! Map<String, dynamic>
          ? null
          : SubstancePolymerRepeatUnitBuilder.fromJson(value);
    case 'substancepolymerdegreeofpolymerisation':
      return value is! Map<String, dynamic>
          ? null
          : SubstancePolymerDegreeOfPolymerisationBuilder.fromJson(value);
    case 'substancepolymer_degreeofpolymerisation':
      return value is! Map<String, dynamic>
          ? null
          : SubstancePolymerDegreeOfPolymerisationBuilder.fromJson(value);
    case 'substancepolymerstructuralrepresentation':
      return value is! Map<String, dynamic>
          ? null
          : SubstancePolymerStructuralRepresentationBuilder.fromJson(value);
    case 'substancepolymer_structuralrepresentation':
      return value is! Map<String, dynamic>
          ? null
          : SubstancePolymerStructuralRepresentationBuilder.fromJson(value);
    case 'substanceprotein':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceProteinBuilder.fromJson(value);
    case 'substanceproteinsubunit':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceProteinSubunitBuilder.fromJson(value);
    case 'substanceprotein_subunit':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceProteinSubunitBuilder.fromJson(value);
    case 'substancereferenceinformation':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceReferenceInformationBuilder.fromJson(value);
    case 'substancereferenceinformationgene':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceReferenceInformationGeneBuilder.fromJson(value);
    case 'substancereferenceinformation_gene':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceReferenceInformationGeneBuilder.fromJson(value);
    case 'substancereferenceinformationgeneelement':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceReferenceInformationGeneElementBuilder.fromJson(value);
    case 'substancereferenceinformation_geneelement':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceReferenceInformationGeneElementBuilder.fromJson(value);
    case 'substancereferenceinformationtarget':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceReferenceInformationTargetBuilder.fromJson(value);
    case 'substancereferenceinformation_target':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceReferenceInformationTargetBuilder.fromJson(value);
    case 'substancesourcematerial':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceSourceMaterialBuilder.fromJson(value);
    case 'substancesourcematerialfractiondescription':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceSourceMaterialFractionDescriptionBuilder.fromJson(value);
    case 'substancesourcematerial_fractiondescription':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceSourceMaterialFractionDescriptionBuilder.fromJson(value);
    case 'substancesourcematerialorganism':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceSourceMaterialOrganismBuilder.fromJson(value);
    case 'substancesourcematerial_organism':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceSourceMaterialOrganismBuilder.fromJson(value);
    case 'substancesourcematerialauthor':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceSourceMaterialAuthorBuilder.fromJson(value);
    case 'substancesourcematerial_author':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceSourceMaterialAuthorBuilder.fromJson(value);
    case 'substancesourcematerialhybrid':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceSourceMaterialHybridBuilder.fromJson(value);
    case 'substancesourcematerial_hybrid':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceSourceMaterialHybridBuilder.fromJson(value);
    case 'substancesourcematerialorganismgeneral':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceSourceMaterialOrganismGeneralBuilder.fromJson(value);
    case 'substancesourcematerial_organismgeneral':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceSourceMaterialOrganismGeneralBuilder.fromJson(value);
    case 'substancesourcematerialpartdescription':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceSourceMaterialPartDescriptionBuilder.fromJson(value);
    case 'substancesourcematerial_partdescription':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceSourceMaterialPartDescriptionBuilder.fromJson(value);
    case 'supplydelivery':
      return value is! Map<String, dynamic>
          ? null
          : SupplyDeliveryBuilder.fromJson(value);
    case 'supplydeliverysupplieditem':
      return value is! Map<String, dynamic>
          ? null
          : SupplyDeliverySuppliedItemBuilder.fromJson(value);
    case 'supplydelivery_supplieditem':
      return value is! Map<String, dynamic>
          ? null
          : SupplyDeliverySuppliedItemBuilder.fromJson(value);
    case 'supplyrequest':
      return value is! Map<String, dynamic>
          ? null
          : SupplyRequestBuilder.fromJson(value);
    case 'supplyrequestparameter':
      return value is! Map<String, dynamic>
          ? null
          : SupplyRequestParameterBuilder.fromJson(value);
    case 'supplyrequest_parameter':
      return value is! Map<String, dynamic>
          ? null
          : SupplyRequestParameterBuilder.fromJson(value);
    case 'task':
      return value is! Map<String, dynamic>
          ? null
          : TaskBuilder.fromJson(value);
    case 'taskperformer':
      return value is! Map<String, dynamic>
          ? null
          : TaskPerformerBuilder.fromJson(value);
    case 'task_performer':
      return value is! Map<String, dynamic>
          ? null
          : TaskPerformerBuilder.fromJson(value);
    case 'taskrestriction':
      return value is! Map<String, dynamic>
          ? null
          : TaskRestrictionBuilder.fromJson(value);
    case 'task_restriction':
      return value is! Map<String, dynamic>
          ? null
          : TaskRestrictionBuilder.fromJson(value);
    case 'taskinput':
      return value is! Map<String, dynamic>
          ? null
          : TaskInputBuilder.fromJson(value);
    case 'task_input':
      return value is! Map<String, dynamic>
          ? null
          : TaskInputBuilder.fromJson(value);
    case 'taskoutput':
      return value is! Map<String, dynamic>
          ? null
          : TaskOutputBuilder.fromJson(value);
    case 'task_output':
      return value is! Map<String, dynamic>
          ? null
          : TaskOutputBuilder.fromJson(value);
    case 'terminologycapabilities':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesBuilder.fromJson(value);
    case 'terminologycapabilitiessoftware':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesSoftwareBuilder.fromJson(value);
    case 'terminologycapabilities_software':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesSoftwareBuilder.fromJson(value);
    case 'terminologycapabilitiesimplementation':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesImplementationBuilder.fromJson(value);
    case 'terminologycapabilities_implementation':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesImplementationBuilder.fromJson(value);
    case 'terminologycapabilitiescodesystem':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesCodeSystemBuilder.fromJson(value);
    case 'terminologycapabilities_codesystem':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesCodeSystemBuilder.fromJson(value);
    case 'terminologycapabilitiesversion':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesVersionBuilder.fromJson(value);
    case 'terminologycapabilities_version':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesVersionBuilder.fromJson(value);
    case 'terminologycapabilitiesfilter':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesFilterBuilder.fromJson(value);
    case 'terminologycapabilities_filter':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesFilterBuilder.fromJson(value);
    case 'terminologycapabilitiesexpansion':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesExpansionBuilder.fromJson(value);
    case 'terminologycapabilities_expansion':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesExpansionBuilder.fromJson(value);
    case 'terminologycapabilitiesparameter':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesParameterBuilder.fromJson(value);
    case 'terminologycapabilities_parameter':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesParameterBuilder.fromJson(value);
    case 'terminologycapabilitiesvalidatecode':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesValidateCodeBuilder.fromJson(value);
    case 'terminologycapabilities_validatecode':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesValidateCodeBuilder.fromJson(value);
    case 'terminologycapabilitiestranslation':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesTranslationBuilder.fromJson(value);
    case 'terminologycapabilities_translation':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesTranslationBuilder.fromJson(value);
    case 'terminologycapabilitiesclosure':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesClosureBuilder.fromJson(value);
    case 'terminologycapabilities_closure':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesClosureBuilder.fromJson(value);
    case 'testplan':
      return value is! Map<String, dynamic>
          ? null
          : TestPlanBuilder.fromJson(value);
    case 'testplandependency':
      return value is! Map<String, dynamic>
          ? null
          : TestPlanDependencyBuilder.fromJson(value);
    case 'testplan_dependency':
      return value is! Map<String, dynamic>
          ? null
          : TestPlanDependencyBuilder.fromJson(value);
    case 'testplantestcase':
      return value is! Map<String, dynamic>
          ? null
          : TestPlanTestCaseBuilder.fromJson(value);
    case 'testplan_testcase':
      return value is! Map<String, dynamic>
          ? null
          : TestPlanTestCaseBuilder.fromJson(value);
    case 'testplandependency1':
      return value is! Map<String, dynamic>
          ? null
          : TestPlanDependency1Builder.fromJson(value);
    case 'testplan_dependency1':
      return value is! Map<String, dynamic>
          ? null
          : TestPlanDependency1Builder.fromJson(value);
    case 'testplantestrun':
      return value is! Map<String, dynamic>
          ? null
          : TestPlanTestRunBuilder.fromJson(value);
    case 'testplan_testrun':
      return value is! Map<String, dynamic>
          ? null
          : TestPlanTestRunBuilder.fromJson(value);
    case 'testplanscript':
      return value is! Map<String, dynamic>
          ? null
          : TestPlanScriptBuilder.fromJson(value);
    case 'testplan_script':
      return value is! Map<String, dynamic>
          ? null
          : TestPlanScriptBuilder.fromJson(value);
    case 'testplantestdata':
      return value is! Map<String, dynamic>
          ? null
          : TestPlanTestDataBuilder.fromJson(value);
    case 'testplan_testdata':
      return value is! Map<String, dynamic>
          ? null
          : TestPlanTestDataBuilder.fromJson(value);
    case 'testplanassertion':
      return value is! Map<String, dynamic>
          ? null
          : TestPlanAssertionBuilder.fromJson(value);
    case 'testplan_assertion':
      return value is! Map<String, dynamic>
          ? null
          : TestPlanAssertionBuilder.fromJson(value);
    case 'testreport':
      return value is! Map<String, dynamic>
          ? null
          : TestReportBuilder.fromJson(value);
    case 'testreportparticipant':
      return value is! Map<String, dynamic>
          ? null
          : TestReportParticipantBuilder.fromJson(value);
    case 'testreport_participant':
      return value is! Map<String, dynamic>
          ? null
          : TestReportParticipantBuilder.fromJson(value);
    case 'testreportsetup':
      return value is! Map<String, dynamic>
          ? null
          : TestReportSetupBuilder.fromJson(value);
    case 'testreport_setup':
      return value is! Map<String, dynamic>
          ? null
          : TestReportSetupBuilder.fromJson(value);
    case 'testreportaction':
      return value is! Map<String, dynamic>
          ? null
          : TestReportActionBuilder.fromJson(value);
    case 'testreport_action':
      return value is! Map<String, dynamic>
          ? null
          : TestReportActionBuilder.fromJson(value);
    case 'testreportoperation':
      return value is! Map<String, dynamic>
          ? null
          : TestReportOperationBuilder.fromJson(value);
    case 'testreport_operation':
      return value is! Map<String, dynamic>
          ? null
          : TestReportOperationBuilder.fromJson(value);
    case 'testreportassert':
      return value is! Map<String, dynamic>
          ? null
          : TestReportAssertBuilder.fromJson(value);
    case 'testreport_assert':
      return value is! Map<String, dynamic>
          ? null
          : TestReportAssertBuilder.fromJson(value);
    case 'testreportrequirement':
      return value is! Map<String, dynamic>
          ? null
          : TestReportRequirementBuilder.fromJson(value);
    case 'testreport_requirement':
      return value is! Map<String, dynamic>
          ? null
          : TestReportRequirementBuilder.fromJson(value);
    case 'testreporttest':
      return value is! Map<String, dynamic>
          ? null
          : TestReportTestBuilder.fromJson(value);
    case 'testreport_test':
      return value is! Map<String, dynamic>
          ? null
          : TestReportTestBuilder.fromJson(value);
    case 'testreportaction1':
      return value is! Map<String, dynamic>
          ? null
          : TestReportAction1Builder.fromJson(value);
    case 'testreport_action1':
      return value is! Map<String, dynamic>
          ? null
          : TestReportAction1Builder.fromJson(value);
    case 'testreportteardown':
      return value is! Map<String, dynamic>
          ? null
          : TestReportTeardownBuilder.fromJson(value);
    case 'testreport_teardown':
      return value is! Map<String, dynamic>
          ? null
          : TestReportTeardownBuilder.fromJson(value);
    case 'testreportaction2':
      return value is! Map<String, dynamic>
          ? null
          : TestReportAction2Builder.fromJson(value);
    case 'testreport_action2':
      return value is! Map<String, dynamic>
          ? null
          : TestReportAction2Builder.fromJson(value);
    case 'testscript':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptBuilder.fromJson(value);
    case 'testscriptorigin':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptOriginBuilder.fromJson(value);
    case 'testscript_origin':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptOriginBuilder.fromJson(value);
    case 'testscriptdestination':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptDestinationBuilder.fromJson(value);
    case 'testscript_destination':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptDestinationBuilder.fromJson(value);
    case 'testscriptmetadata':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptMetadataBuilder.fromJson(value);
    case 'testscript_metadata':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptMetadataBuilder.fromJson(value);
    case 'testscriptlink':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptLinkBuilder.fromJson(value);
    case 'testscript_link':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptLinkBuilder.fromJson(value);
    case 'testscriptcapability':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptCapabilityBuilder.fromJson(value);
    case 'testscript_capability':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptCapabilityBuilder.fromJson(value);
    case 'testscriptscope':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptScopeBuilder.fromJson(value);
    case 'testscript_scope':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptScopeBuilder.fromJson(value);
    case 'testscriptfixture':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptFixtureBuilder.fromJson(value);
    case 'testscript_fixture':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptFixtureBuilder.fromJson(value);
    case 'testscriptvariable':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptVariableBuilder.fromJson(value);
    case 'testscript_variable':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptVariableBuilder.fromJson(value);
    case 'testscriptsetup':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptSetupBuilder.fromJson(value);
    case 'testscript_setup':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptSetupBuilder.fromJson(value);
    case 'testscriptaction':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptActionBuilder.fromJson(value);
    case 'testscript_action':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptActionBuilder.fromJson(value);
    case 'testscriptoperation':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptOperationBuilder.fromJson(value);
    case 'testscript_operation':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptOperationBuilder.fromJson(value);
    case 'testscriptrequestheader':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptRequestHeaderBuilder.fromJson(value);
    case 'testscript_requestheader':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptRequestHeaderBuilder.fromJson(value);
    case 'testscriptassert':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptAssertBuilder.fromJson(value);
    case 'testscript_assert':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptAssertBuilder.fromJson(value);
    case 'testscriptrequirement':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptRequirementBuilder.fromJson(value);
    case 'testscript_requirement':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptRequirementBuilder.fromJson(value);
    case 'testscripttest':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptTestBuilder.fromJson(value);
    case 'testscript_test':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptTestBuilder.fromJson(value);
    case 'testscriptaction1':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptAction1Builder.fromJson(value);
    case 'testscript_action1':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptAction1Builder.fromJson(value);
    case 'testscriptteardown':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptTeardownBuilder.fromJson(value);
    case 'testscript_teardown':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptTeardownBuilder.fromJson(value);
    case 'testscriptaction2':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptAction2Builder.fromJson(value);
    case 'testscript_action2':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptAction2Builder.fromJson(value);
    case 'transport':
      return value is! Map<String, dynamic>
          ? null
          : TransportBuilder.fromJson(value);
    case 'transportrestriction':
      return value is! Map<String, dynamic>
          ? null
          : TransportRestrictionBuilder.fromJson(value);
    case 'transport_restriction':
      return value is! Map<String, dynamic>
          ? null
          : TransportRestrictionBuilder.fromJson(value);
    case 'transportinput':
      return value is! Map<String, dynamic>
          ? null
          : TransportInputBuilder.fromJson(value);
    case 'transport_input':
      return value is! Map<String, dynamic>
          ? null
          : TransportInputBuilder.fromJson(value);
    case 'transportoutput':
      return value is! Map<String, dynamic>
          ? null
          : TransportOutputBuilder.fromJson(value);
    case 'transport_output':
      return value is! Map<String, dynamic>
          ? null
          : TransportOutputBuilder.fromJson(value);
    case 'valueset':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetBuilder.fromJson(value);
    case 'valuesetcompose':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetComposeBuilder.fromJson(value);
    case 'valueset_compose':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetComposeBuilder.fromJson(value);
    case 'valuesetinclude':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetIncludeBuilder.fromJson(value);
    case 'valueset_include':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetIncludeBuilder.fromJson(value);
    case 'valuesetconcept':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetConceptBuilder.fromJson(value);
    case 'valueset_concept':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetConceptBuilder.fromJson(value);
    case 'valuesetdesignation':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetDesignationBuilder.fromJson(value);
    case 'valueset_designation':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetDesignationBuilder.fromJson(value);
    case 'valuesetfilter':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetFilterBuilder.fromJson(value);
    case 'valueset_filter':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetFilterBuilder.fromJson(value);
    case 'valuesetexpansion':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetExpansionBuilder.fromJson(value);
    case 'valueset_expansion':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetExpansionBuilder.fromJson(value);
    case 'valuesetparameter':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetParameterBuilder.fromJson(value);
    case 'valueset_parameter':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetParameterBuilder.fromJson(value);
    case 'valuesetproperty':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetPropertyBuilder.fromJson(value);
    case 'valueset_property':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetPropertyBuilder.fromJson(value);
    case 'valuesetcontains':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetContainsBuilder.fromJson(value);
    case 'valueset_contains':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetContainsBuilder.fromJson(value);
    case 'valuesetproperty1':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetProperty1Builder.fromJson(value);
    case 'valueset_property1':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetProperty1Builder.fromJson(value);
    case 'valuesetsubproperty':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetSubPropertyBuilder.fromJson(value);
    case 'valueset_subproperty':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetSubPropertyBuilder.fromJson(value);
    case 'valuesetscope':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetScopeBuilder.fromJson(value);
    case 'valueset_scope':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetScopeBuilder.fromJson(value);
    case 'verificationresult':
      return value is! Map<String, dynamic>
          ? null
          : VerificationResultBuilder.fromJson(value);
    case 'verificationresultprimarysource':
      return value is! Map<String, dynamic>
          ? null
          : VerificationResultPrimarySourceBuilder.fromJson(value);
    case 'verificationresult_primarysource':
      return value is! Map<String, dynamic>
          ? null
          : VerificationResultPrimarySourceBuilder.fromJson(value);
    case 'verificationresultattestation':
      return value is! Map<String, dynamic>
          ? null
          : VerificationResultAttestationBuilder.fromJson(value);
    case 'verificationresult_attestation':
      return value is! Map<String, dynamic>
          ? null
          : VerificationResultAttestationBuilder.fromJson(value);
    case 'verificationresultvalidator':
      return value is! Map<String, dynamic>
          ? null
          : VerificationResultValidatorBuilder.fromJson(value);
    case 'verificationresult_validator':
      return value is! Map<String, dynamic>
          ? null
          : VerificationResultValidatorBuilder.fromJson(value);
    case 'visionprescription':
      return value is! Map<String, dynamic>
          ? null
          : VisionPrescriptionBuilder.fromJson(value);
    case 'visionprescriptionlensspecification':
      return value is! Map<String, dynamic>
          ? null
          : VisionPrescriptionLensSpecificationBuilder.fromJson(value);
    case 'visionprescription_lensspecification':
      return value is! Map<String, dynamic>
          ? null
          : VisionPrescriptionLensSpecificationBuilder.fromJson(value);
    case 'visionprescriptionprism':
      return value is! Map<String, dynamic>
          ? null
          : VisionPrescriptionPrismBuilder.fromJson(value);
    case 'visionprescription_prism':
      return value is! Map<String, dynamic>
          ? null
          : VisionPrescriptionPrismBuilder.fromJson(value);
    default:
      return null;
  }
}
