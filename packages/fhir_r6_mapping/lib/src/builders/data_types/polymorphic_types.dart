// ignore_for_file: flutter_style_todos

import 'package:fhir_r6_mapping/fhir_r6_mapping.dart';

/// Polymorphic types for FHIR data types.
abstract class PolymorphicTypeBuilder {}

/// Indicates the mechanism used to compare versions to determine which is
/// more current.
abstract class VersionAlgorithmXActivityDefinitionBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// A code, group definition, or canonical reference that describes or
/// identifies the intended subject of the activity being defined.
/// Canonical references are allowed to support the definition of protocols
/// for drug and substance quality specifications, and is allowed to
/// reference a MedicinalProductDefinition, SubstanceDefinition,
/// AdministrableProductDefinition, ManufacturedItemDefinition, or
/// PackagedProductDefinition resource.
abstract class SubjectXActivityDefinitionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The timing or frequency upon which the described activity is to occur.
abstract class TimingXActivityDefinitionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// If a CodeableConcept is present, it indicates the pre-condition for
/// performing the service. For example "pain", "on flare-up", etc.
abstract class AsNeededXActivityDefinitionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Identifies the food, drug or other product being consumed or supplied
/// in the activity.
abstract class ProductXActivityDefinitionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Indicates the mechanism used to compare versions to determine which is
/// more current.
abstract class VersionAlgorithmXActorDefinitionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// A value for the characteristic.
abstract class ValueXAdministrableProductDefinitionPropertyBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// The date (and perhaps time) when the adverse event occurred.
abstract class OccurrenceXAdverseEventBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Identifies the actual instance of what caused the adverse event. May be
/// a substance, medication, medication administration, medication
/// statement or a device.
abstract class InstanceXAdverseEventSuspectEntityBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The item that is suspected to have increased the probability or
/// severity of the adverse event.
abstract class ItemXAdverseEventContributingFactorBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// The action that contributed to avoiding the adverse event.
abstract class ItemXAdverseEventPreventiveActionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The ameliorating action taken after the adverse event occured in order
/// to reduce the extent of harm.
abstract class ItemXAdverseEventMitigatingActionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Relevant past history for the subject. In a clinical care context, an
/// example being a patient had an adverse event following a pencillin
/// administration and the patient had a previously documented penicillin
/// allergy. In a clinical trials context, an example is a bunion or rash
/// that was present prior to the study. Additionally, the supporting item
/// can be a document that is relevant to this instance of the adverse
/// event that is not part of the subject's medical history. For example, a
/// clinical note, staff list, or material safety data sheet (MSDS).
/// Supporting information is not a contributing factor, preventive action,
/// or mitigating action.
abstract class ItemXAdverseEventSupportingInfoBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Estimated or actual date, date-time, or age when allergy or intolerance
/// was identified.
abstract class OnsetXAllergyIntoleranceBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Display of or reference to the bibliographic citation of the comment,
/// classifier, or rating.
abstract class CiteAsXArtifactAssessmentBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// A reference to a resource, canonical resource, or non-FHIR resource
/// which the comment or assessment is about.
abstract class ArtifactXArtifactAssessmentBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The time or period during which the activity occurred.
abstract class OccurredXAuditEventBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// When the event utilizes a network there should be an agent describing
/// the local system, and an agent describing remote system, with the
/// network interface details.
abstract class NetworkXAuditEventAgentBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The value of the extra detail.
abstract class ValueXAuditEventDetailBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Time of product collection.
abstract class CollectedXBiologicallyDerivedProductCollectionBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// Property values.
abstract class ValueXBiologicallyDerivedProductPropertyBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// Indicates the mechanism used to compare versions to determine which is
/// more current.
abstract class VersionAlgorithmXCapabilityStatementBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// When the member is generally available within this care team.
abstract class CoverageXCareTeamParticipantBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Date/time(s) or duration when the charged service was applied.
abstract class OccurrenceXChargeItemBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Indicates the mechanism used to compare versions to determine which is
/// more current.
abstract class VersionAlgorithmXChargeItemDefinitionBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// Indicates the mechanism used to compare versions to determine which is
/// more current.
abstract class VersionAlgorithmXCitationBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// A date or period in the past or future indicating when the event
/// occurred or is expectd to occur.
abstract class WhenXClaimEventBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The date when or period to which this information refers.
abstract class TimingXClaimSupportingInfoBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Additional data or information such as resources, documents, images
/// etc. including references to the data or the actual inclusion of the
/// data.
abstract class ValueXClaimSupportingInfoBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The nature of illness or problem in a coded form or as a reference to
/// an external defined Condition.
abstract class DiagnosisXClaimDiagnosisBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The code or reference to a Procedure resource which identifies the
/// clinical intervention performed.
abstract class ProcedureXClaimProcedureBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The physical location of the accident event.
abstract class LocationXClaimAccidentBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The date or dates when the service or product was supplied, performed
/// or completed.
abstract class ServicedXClaimItemBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Where the product or service was provided.
abstract class LocationXClaimItemBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// A date or period in the past or future indicating when the event
/// occurred or is expectd to occur.
abstract class WhenXClaimResponseEventBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The date or dates when the service or product was supplied, performed
/// or completed.
abstract class ServicedXClaimResponseAddItemBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Where the product or service was provided.
abstract class LocationXClaimResponseAddItemBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The point in time or period over which the subject was assessed.
abstract class EffectiveXClinicalImpressionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Timing or duration information, that may be associated with use with
/// the indicated condition e.g. Adult patients suffering from myocardial
/// infarction (from a few days until less than 35 days), ischaemic stroke
/// (from 7 days until less than 6 months).
abstract class DurationXClinicalUseDefinitionIndicationBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// The specific medication, product, food, substance etc. or laboratory
/// test that interacts.
abstract class ItemXClinicalUseDefinitionInteractantBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// Indicates the mechanism used to compare versions to determine which
/// CodeSystem is more current.
abstract class VersionAlgorithmXCodeSystemBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The value of this property.
abstract class ValueXCodeSystemPropertyBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// A communicated content (or for multi-part communications, one portion
/// of the communication).
abstract class ContentXCommunicationPayloadBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The time when this communication is to occur.
abstract class OccurrenceXCommunicationRequestBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The communicated content (or for multi-part communications, one portion
/// of the communication).
abstract class ContentXCommunicationRequestPayloadBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// Indicates the mechanism used to compare versions to determine which is
/// more current.
abstract class VersionAlgorithmXCompartmentDefinitionBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// Indicates the mechanism used to compare versions to determine which
/// ConceptMap is more current.
abstract class VersionAlgorithmXConceptMapBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Identifier for the source value set that contains the concepts that are
/// being mapped and provides context for the mappings. Limits the scope of
/// the map to source codes (ConceptMap.group.element code or valueSet)
/// that are members of this value set.
abstract class SourceScopeXConceptMapBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Identifier for the target value set that provides important context
/// about how the mapping choices are made. Limits the scope of the map to
/// target codes (ConceptMap.group.element.target code or valueSet) that
/// are members of this value set.
abstract class TargetScopeXConceptMapBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The value of this property. If the type chosen for this element is
/// 'code', then the property SHALL be defined in a ConceptMap.property
/// element.
abstract class ValueXConceptMapPropertyBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Data element value that the map depends on / produces.
abstract class ValueXConceptMapDependsOnBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Estimated or actual date or date-time the condition began, in the
/// opinion of the clinician.
abstract class OnsetXConditionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The date or estimated date that the condition resolved or went into
/// remission. This is called "abatement" because of the many overloaded
/// connotations associated with "remission" or "resolution" - Some
/// conditions, such as chronic conditions, are never really resolved, but
/// they can abate.
abstract class AbatementXConditionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Indicates the mechanism used to compare versions to determine which is
/// more current.
abstract class VersionAlgorithmXConditionDefinitionBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// Value of Observation.
abstract class ValueXConditionDefinitionPreconditionBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// Narrows the range of legal concerns to focus on the achievement of
/// specific contractual objectives.
abstract class TopicXContractBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Legally binding Contract: This is the signed and legally recognized
/// representation of the Contract, which is considered the "source of
/// truth" and which would be the basis for legal action related to
/// enforcement of this Contract.
abstract class LegallyBindingXContractBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The entity that the term applies to.
abstract class TopicXContractTermBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Response to an offer clause or question text, which enables selection
/// of values to be agreed to, e.g., the period of participation, the date
/// of occupancy of a rental, warranty duration, or whether biospecimen may
/// be used for further research.
abstract class ValueXContractAnswerBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Specific type of Contract Valued Item that may be priced.
abstract class EntityXContractValuedItemBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// When action happens.
abstract class OccurrenceXContractActionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Human readable rendering of this Contract in a format and
/// representation intended to enhance comprehension and ensure
/// understandability.
abstract class ContentXContractFriendlyBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Contract legal text in human renderable form.
abstract class ContentXContractLegalBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Computable Contract conveyed using a policy rule language (e.g. XACML,
/// DKAL, SecPal).
abstract class ContentXContractRuleBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The amount due from the patient for the cost category.
abstract class ValueXCoverageCostToBeneficiaryBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The date or dates when the enclosed suite of services were performed or
/// completed.
abstract class ServicedXCoverageEligibilityRequestBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// A date or period in the past or future indicating when the event
/// occurred or is expectd to occur.
abstract class WhenXCoverageEligibilityRequestEventBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// The nature of illness or problem in a coded form or as a reference to
/// an external defined Condition.
abstract class DiagnosisXCoverageEligibilityRequestDiagnosisBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// The date or dates when the enclosed suite of services were performed or
/// completed.
abstract class ServicedXCoverageEligibilityResponseBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// A date or period in the past or future indicating when the event
/// occurred or is expectd to occur.
abstract class WhenXCoverageEligibilityResponseEventBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// The quantity of the benefit which is permitted under the coverage.
abstract class AllowedXCoverageEligibilityResponseBenefitBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// The quantity of the benefit which have been consumed to date.
abstract class UsedXCoverageEligibilityResponseBenefitBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// The date or period when the detected issue was initially identified.
abstract class IdentifiedXDetectedIssueBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The value of the property specified by the associated property.type
/// code.
abstract class ValueXDevicePropertyBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The value of the property specified by the associated property.type
/// code.
abstract class ValueXDeviceDefinitionPropertyBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The timing schedule for the use of the device. The Schedule data type
/// allows many different expressions, for example. "Every 8 hours"; "Three
/// times a day"; "1/2 an hour before breakfast for 10 days from 23-Dec
/// 2011:"; "15 Oct 2013, 17 Oct 2013 and 1 Nov 2013".
abstract class OccurrenceXDeviceRequestBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The value of the device detail.
abstract class ValueXDeviceRequestParameterBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// How often the device was used.
abstract class TimingXDeviceUsageBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The time or time-period the observed values are related to. When the
/// subject of the report is a patient, this is usually either the time of
/// the procedure or of specimen collection(s), but very often the source
/// of the date/time is not known, only the date/time itself.
abstract class EffectiveXDiagnosticReportBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Code|uri|canonical.
abstract class ValueXDocumentReferenceProfileBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Indicates the mechanism used to compare versions to determine which is
/// more current.
abstract class VersionAlgorithmXEventDefinitionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// A code or group definition that describes the intended subject of the
/// event definition.
abstract class SubjectXEventDefinitionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Indicates the mechanism used to compare versions to determine which is
/// more current.
abstract class VersionAlgorithmXEvidenceBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Citation Resource or display of suggested citation for this evidence.
abstract class CiteAsXEvidenceBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Citation Resource or display of suggested citation for this report.
abstract class CiteAsXEvidenceReportBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Characteristic value.
abstract class ValueXEvidenceReportCharacteristicBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Indicates the mechanism used to compare versions to determine which is
/// more current.
abstract class VersionAlgorithmXEvidenceVariableBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Number of occurrences meeting the characteristic.
abstract class InstancesXEvidenceVariableCharacteristicBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// Length of time in which the characteristic is met.
abstract class DurationXEvidenceVariableCharacteristicBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// Defines the characteristic when paired with characteristic.type.
abstract class ValueXEvidenceVariableDefinitionByTypeAndValueBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// The event used as a base point (reference point) in time.
abstract class EventXEvidenceVariableTimeFromEventBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// Definition of the grouping.
abstract class ValueXEvidenceVariableCategoryBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Indicates the mechanism used to compare versions to determine which is
/// more current.
abstract class VersionAlgorithmXExampleScenarioBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Refers to a profile, template or other ruleset the instance adheres to.
abstract class StructureProfileXExampleScenarioInstanceBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// A date or period in the past or future indicating when the event
/// occurred or is expectd to occur.
abstract class WhenXExplanationOfBenefitEventBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The date when or period to which this information refers.
abstract class TimingXExplanationOfBenefitSupportingInfoBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// Additional data or information such as resources, documents, images
/// etc. including references to the data or the actual inclusion of the
/// data.
abstract class ValueXExplanationOfBenefitSupportingInfoBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// The nature of illness or problem in a coded form or as a reference to
/// an external defined Condition.
abstract class DiagnosisXExplanationOfBenefitDiagnosisBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// The code or reference to a Procedure resource which identifies the
/// clinical intervention performed.
abstract class ProcedureXExplanationOfBenefitProcedureBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// The physical location of the accident event.
abstract class LocationXExplanationOfBenefitAccidentBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// The date or dates when the service or product was supplied, performed
/// or completed.
abstract class ServicedXExplanationOfBenefitItemBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Where the product or service was provided.
abstract class LocationXExplanationOfBenefitItemBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The date or dates when the service or product was supplied, performed
/// or completed.
abstract class ServicedXExplanationOfBenefitAddItemBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// Where the product or service was provided.
abstract class LocationXExplanationOfBenefitAddItemBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// The quantity of the benefit which is permitted under the coverage.
abstract class AllowedXExplanationOfBenefitFinancialBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// The quantity of the benefit which have been consumed to date.
abstract class UsedXExplanationOfBenefitFinancialBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The actual or approximate date of birth of the relative.
abstract class BornXFamilyMemberHistoryBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The age of the relative at the time the family member history is
/// recorded.
abstract class AgeXFamilyMemberHistoryBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Deceased flag or the actual or approximate age of the relative at the
/// time of death for the family member history record.
abstract class DeceasedXFamilyMemberHistoryBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Either the age of onset, range of approximate age or descriptive string
/// can be recorded. For conditions with multiple occurrences, this
/// describes the first known occurrence.
abstract class OnsetXFamilyMemberHistoryConditionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Estimated or actual date, date-time, period, or age when the procedure
/// was performed. Allows a period to support complex procedures that span
/// more than one date, and also allows for the length of the procedure to
/// be captured.
abstract class PerformedXFamilyMemberHistoryProcedureBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// The analysis event or other GenomicStudy that generated this input
/// file.
abstract class GeneratedByXGenomicStudyInputBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The date or event after which the goal should begin being pursued.
abstract class StartXGoalBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The target value of the focus to be achieved to signify the fulfillment
/// of the goal, e.g. 150 pounds, 7.0%. Either the high or low or both
/// values of the range can be specified. When a low value is missing, it
/// indicates that the goal is achieved at any focus value at or below the
/// high value. Similarly, if the high value is missing, it indicates that
/// the goal is achieved at any focus value at or above the low value.
abstract class DetailXGoalTargetBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Indicates either the date or the duration after start by which the goal
/// should be met.
abstract class DueXGoalTargetBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Indicates the mechanism used to compare versions to determine which is
/// more current.
abstract class VersionAlgorithmXGraphDefinitionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The value of the trait that holds (or does not hold - see 'exclude')
/// for members of the group.
abstract class ValueXGroupCharacteristicBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// An identifier, CodeableConcept or canonical reference to the guidance
/// that was requested.
abstract class ModuleXGuidanceResponseBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Date vaccine administered or was to be administered.
abstract class OccurrenceXImmunizationBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Indicates the mechanism used to compare versions to determine which is
/// more current.
abstract class VersionAlgorithmXImplementationGuideBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// Indicates the URL or the actual content to provide for the page.
abstract class SourceXImplementationGuidePageBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The quantity of substance in the unit of presentation, or in the volume
/// (or mass) of the single pharmaceutical product or manufactured item.
/// Unit of presentation refers to the quantity that the item occurs in
/// e.g. a strength per tablet size, perhaps 'per 20mg' (the size of the
/// tablet). It is not generally normalized as a unitary unit, which would
/// be 'per mg').
abstract class PresentationXIngredientStrengthBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The strength per unitary volume (or mass).
abstract class ConcentrationXIngredientStrengthBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Strength expressed in terms of a reference substance.
abstract class StrengthXIngredientReferenceStrengthBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// The value of the attribute.
abstract class ValueXInventoryItemCharacteristicBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Date/time(s) range of services included in this invoice.
abstract class PeriodXInvoiceBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Date/time(s) range when this service was delivered or completed.
abstract class ServicedXInvoiceLineItemBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The ChargeItem contains information such as the billing code, date,
/// amount etc. If no further details are required for the lineItem, inline
/// billing codes can be added using the CodeableConcept data type instead
/// of the Reference.
abstract class ChargeItemXInvoiceLineItemBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Indicates the mechanism used to compare versions to determine which is
/// more current.
abstract class VersionAlgorithmXLibraryBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// A code or group definition that describes the intended subject of the
/// contents of the library.
abstract class SubjectXLibraryBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// A value for the characteristic.
abstract class ValueXManufacturedItemDefinitionPropertyBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// Indicates the mechanism used to compare versions to determine which is
/// more current.
abstract class VersionAlgorithmXMeasureBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The intended subjects for the measure. If this element is not provided,
/// a Patient subject is assumed, but the subject of the measure can be
/// anything.
abstract class SubjectXMeasureBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The intended subjects for the measure. If this element is not provided,
/// a Patient subject is assumed, but the subject of the measure can be
/// anything.
abstract class SubjectXMeasureGroupBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The measure score for this population group, calculated as appropriate
/// for the measure type and scoring method, and based on the contents of
/// the populations defined in the group.
abstract class MeasureScoreXMeasureReportGroupBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The value for this stratum, expressed as a CodeableConcept. When
/// defining stratifiers on complex values, the value must be rendered such
/// that the value for each stratum within the stratifier is unique.
abstract class ValueXMeasureReportStratumBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The measure score for this stratum, calculated as appropriate for the
/// measure type and scoring method, and based on only the members of this
/// stratum.
abstract class MeasureScoreXMeasureReportStratumBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The stratum component value.
abstract class ValueXMeasureReportComponentBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Specifies how many (or how much) of the items there are in this
/// Medication. For example, 250 mg per tablet. This is expressed as a
/// ratio where the numerator is 250mg and the denominator is 1 tablet but
/// can also be expressed a quantity when the denominator is assumed to be
/// 1 tablet.
abstract class StrengthXMedicationIngredientBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// A specific date/time or interval of time during which the
/// administration took place (or did not take place). For many
/// administrations, such as swallowing a tablet the use of dateTime is
/// more appropriate.
abstract class OccurenceXMedicationAdministrationBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Identifies the speed with which the medication was or will be
/// introduced into the patient. Typically, the rate for an infusion e.g.
/// 100 ml per 1 hour or 100 ml/hr. May also be expressed as a rate per
/// unit of time, e.g. 500 ml per 2 hours. Other examples: 200 mcg/min or
/// 200 mcg/1 minute; 1 liter/8 hours.
abstract class RateXMedicationAdministrationDosageBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// The price or representation of the cost (for example, Band A, Band B or
/// $, $$) of the medication.
abstract class CostXMedicationKnowledgeCostBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The specific characteristic (e.g. height, weight, gender, etc.).
abstract class ValueXMedicationKnowledgePatientCharacteristicBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// Either a textual source of the classification or a reference to an
/// online source.
abstract class SourceXMedicationKnowledgeMedicineClassificationBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// Value associated to the setting. E.g., 40° – 50°F for temperature.
abstract class ValueXMedicationKnowledgeEnvironmentalSettingBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// Specifies how many (or how much) of the items there are in this
/// Medication. For example, 250 mg per tablet. This is expressed as a
/// ratio where the numerator is 250mg and the denominator is 1 tablet but
/// can also be expressed a quantity when the denominator is assumed to be
/// 1 tablet.
abstract class StrengthXMedicationKnowledgeIngredientBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// Description of the characteristic.
abstract class ValueXMedicationKnowledgeDrugCharacteristicBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// True if the prescriber allows a different drug to be dispensed from
/// what was prescribed.
abstract class AllowedXMedicationRequestSubstitutionBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// The interval of time during which it is being asserted that the patient
/// is/was/will be taking the medication (or was not taking, when the
/// MedicationStatement.adherence element is Not Taking).
abstract class EffectiveXMedicationStatementBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// A value for the characteristic.text.
abstract class ValueXMedicinalProductDefinitionCharacteristicBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// Indicates the mechanism used to compare versions to determine which is
/// more current.
abstract class VersionAlgorithmXMessageDefinitionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Event code or link to the EventDefinition.
abstract class EventXMessageDefinitionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Code that identifies the event this message represents and connects it
/// with its definition. Events defined as part of the FHIR specification
/// are defined by the implementation. Alternatively a canonical uri to the
/// EventDefinition.
abstract class EventXMessageHeaderBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Indicates where the message should be routed.
abstract class EndpointXMessageHeaderDestinationBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Identifies the routing target to send acknowledgements to.
abstract class EndpointXMessageHeaderSourceBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The reference sequence that represents the starting sequence.
abstract class SequenceXMolecularSequenceStartingSequenceBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// Indicates the mechanism used to compare versions to determine which
/// NamingSystem is more current.
abstract class VersionAlgorithmXNamingSystemBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The interval of time during which it is being asserted that the patient
/// is/was consuming the food or fluid.
abstract class OccurrenceXNutritionIntakeBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The person or organization that provided the information about the
/// consumption of this food or fluid. Note: Use derivedFrom when a
/// NutritionIntake is derived from other resources.
abstract class ReportedXNutritionIntakeBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The rate of administration of formula via a feeding pump, e.g. 60 mL
/// per hour, according to the specified schedule.
abstract class RateXNutritionOrderAdministrationBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The actual characteristic value corresponding to the type.
abstract class ValueXNutritionProductCharacteristicBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// The reference to a FHIR ObservationDefinition resource that provides
/// the definition that is adhered to in whole or in part by this
/// Observation instance.
abstract class InstantiatesXObservationBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The time or time-period the observed value is asserted as being true.
/// For biological subjects - e.g. human patients - this is usually called
/// the "physiologically relevant time". This is usually either the time of
/// the procedure or of specimen collection, but very often the source of
/// the date/time is not known, only the date/time itself.
abstract class EffectiveXObservationBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The information determined as a result of making the observation, if
/// the information has a simple value.
abstract class ValueXObservationBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The information determined as a result of making the observation, if
/// the information has a simple value.
abstract class ValueXObservationComponentBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Indicates the mechanism used to compare versions to determine which is
/// more current.
abstract class VersionAlgorithmXObservationDefinitionBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// Indicates the mechanism used to compare versions to determine which is
/// more current.
abstract class VersionAlgorithmXOperationDefinitionBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// A value for the characteristic.
abstract class ValueXPackagedProductDefinitionPropertyBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// Conveys the content if the parameter is a data type.
abstract class ValueXParametersParameterBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Indicates if the individual is deceased or not.
abstract class DeceasedXPatientBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Indicates whether the patient is part of a multiple (boolean) or
/// indicates the actual birth order (integer).
abstract class MultipleBirthXPatientBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Identifies the claim line item, encounter or other sub-element being
/// paid. Note payment may be partial, that is not match the then
/// outstanding balance or amount incurred.
abstract class TargetItemXPaymentReconciliationAllocationBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// Indicates if the individual is deceased or not.
abstract class DeceasedXPersonBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Indicates the mechanism used to compare versions to determine which is
/// more current.
abstract class VersionAlgorithmXPlanDefinitionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// A code, group definition, or canonical reference that describes or
/// identifies the intended subject of the plan definition. Canonical
/// references are allowed to support the definition of protocols for drug
/// and substance quality specifications, and is allowed to reference a
/// MedicinalProductDefinition, SubstanceDefinition,
/// AdministrableProductDefinition, ManufacturedItemDefinition, or
/// PackagedProductDefinition resource.
abstract class SubjectXPlanDefinitionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// If a CodeableConcept is present, it indicates the pre-condition for
/// performing the service. For example "pain", "on flare-up", etc.
abstract class AsNeededXPlanDefinitionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The target value of the measure to be achieved to signify fulfillment
/// of the goal, e.g. 150 pounds or 7.0%, or in the case of pharmaceutical
/// quality - NMT 0.6%, Clear solution, etc. Either the high or low or both
/// values of the range can be specified. When a low value is missing, it
/// indicates that the goal is achieved at any value at or below the high
/// value. Similarly, if the high value is missing, it indicates that the
/// goal is achieved at any value at or above the low value.
abstract class DetailXPlanDefinitionTargetBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// A code, group definition, or canonical reference that describes the
/// intended subject of the action and its children, if any. Canonical
/// references are allowed to support the definition of protocols for drug
/// and substance quality specifications, and is allowed to reference a
/// MedicinalProductDefinition, SubstanceDefinition,
/// AdministrableProductDefinition, ManufacturedItemDefinition, or
/// PackagedProductDefinition resource.
abstract class SubjectXPlanDefinitionActionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// An optional value describing when the action should be performed.
abstract class TimingXPlanDefinitionActionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// A reference to an ActivityDefinition that describes the action to be
/// taken in detail, a MessageDefinition describing a message to be snet, a
/// PlanDefinition that describes a series of actions to be taken, a
/// Questionnaire that should be filled out, a SpecimenDefinition
/// describing a specimen to be collected, or an ObservationDefinition that
/// specifies what observation should be captured.
abstract class DefinitionXPlanDefinitionActionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// A duration or range of durations to apply to the relationship. For
/// example, 30-60 minutes before.
abstract class OffsetXPlanDefinitionRelatedActionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Indicates if the practitioner is deceased or not.
abstract class DeceasedXPractitionerBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Estimated or actual date, date-time, period, or age when the procedure
/// did occur or is occurring. Allows a period to support complex
/// procedures that span more than one date, and also allows for the length
/// of the procedure to be captured.
abstract class OccurrenceXProcedureBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Indicates if this record was captured as a secondary 'reported' record
/// rather than as an original primary source-of-truth record. It may also
/// indicate the source of the report.
abstract class ReportedXProcedureBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The period during which the activity occurred.
abstract class OccurredXProvenanceBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Indicates the mechanism used to compare versions to determine which is
/// more current.
abstract class VersionAlgorithmXQuestionnaireBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// A value that the referenced question is tested using the specified
/// operator in order for the item to be enabled. If there are multiple
/// answers, a match on any of the answers suffices. If different behavior
/// is desired (all must match, at least 2 must match, etc.), consider
/// using the enableWhenExpression extension.
abstract class AnswerXQuestionnaireEnableWhenBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// A potential answer that's allowed as the answer to this question.
abstract class ValueXQuestionnaireAnswerOptionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The actual value to for an initial answer.
abstract class ValueXQuestionnaireInitialBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The answer (or one of the answers) provided by the respondent to the
/// question.
abstract class ValueXQuestionnaireResponseAnswerBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Relevant date for this case.
abstract class DateXRegulatedAuthorizationCaseBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// An optional value describing when the action should be performed.
abstract class TimingXRequestOrchestrationActionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// A reference to an ActivityDefinition that describes the action to be
/// taken in detail, a PlanDefinition that describes a series of actions to
/// be taken, a Questionnaire that should be filled out, a
/// SpecimenDefinition describing a specimen to be collected, or an
/// ObservationDefinition that specifies what observation should be
/// captured.
abstract class DefinitionXRequestOrchestrationActionBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// A duration or range of durations to apply to the relationship. For
/// example, 30-60 minutes before.
abstract class OffsetXRequestOrchestrationRelatedActionBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// A reference to the actual participant.
abstract class ActorXRequestOrchestrationParticipantBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// Indicates the mechanism used to compare versions to determine which is
/// more current.
abstract class VersionAlgorithmXRequirementsBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The date (and possibly time) the risk assessment was performed.
abstract class OccurrenceXRiskAssessmentBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Indicates how likely the outcome is (in the specified timeframe).
abstract class ProbabilityXRiskAssessmentPredictionBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// Indicates the period of time or age range of the subject to which the
/// specified probability applies.
abstract class WhenXRiskAssessmentPredictionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Indicates the mechanism used to compare versions to determine which is
/// more current.
abstract class VersionAlgorithmXSearchParameterBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// An amount of service being requested which can be a quantity ( for
/// example $1,500 home modification), a ratio ( for example, 20 half day
/// visits per month), or a range (2.0 to 1.8 Gy per fraction).
abstract class QuantityXServiceRequestBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The date/time at which the requested service should occur.
abstract class OccurrenceXServiceRequestBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// If a CodeableConcept is present, it indicates the pre-condition for
/// performing the service. For example "pain", "on flare-up", etc.
abstract class AsNeededXServiceRequestBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Indicates a value for the order detail.
abstract class ValueXServiceRequestParameterBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Instructions in terms that are understood by the patient or consumer.
abstract class InstructionXServiceRequestPatientInstructionBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// Time when specimen was collected from subject - the physiologically
/// relevant time.
abstract class CollectedXSpecimenCollectionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Abstinence or reduction from some or all food, drink, or both, for a
/// period of time prior to sample collection.
abstract class FastingStatusXSpecimenCollectionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// A record of the time or period when the specimen processing occurred.
/// For example the time of sample fixation or the period of time the
/// sample was in formalin.
abstract class TimeXSpecimenProcessingBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Indicates the mechanism used to compare versions to determine which is
/// more current.
abstract class VersionAlgorithmXSpecimenDefinitionBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// A code or group definition that describes the intended subject from
/// which this kind of specimen is to be collected.
abstract class SubjectXSpecimenDefinitionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The minimum volume to be conditioned in the container.
abstract class MinimumVolumeXSpecimenDefinitionContainerBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// Substance introduced in the kind of container to preserve, maintain or
/// enhance the specimen. Examples: Formalin, Citrate, EDTA.
abstract class AdditiveXSpecimenDefinitionAdditiveBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// Indicates the mechanism used to compare versions to determine which is
/// more current.
abstract class VersionAlgorithmXStructureDefinitionBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// Indicates the mechanism used to compare versions to determine which is
/// more current.
abstract class VersionAlgorithmXStructureMapBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Parameter value - variable or literal.
abstract class ValueXStructureMapParameterBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Indicates the mechanism used to compare versions to determine which is
/// more current.
abstract class VersionAlgorithmXSubscriptionTopicBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Another substance that is a component of this substance.
abstract class SubstanceXSubstanceIngredientBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Quantitative value for this moiety.
abstract class AmountXSubstanceDefinitionMoietyBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// A value for the property.
abstract class ValueXSubstanceDefinitionPropertyBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// A pointer to another substance, as a resource or just a
/// representational code.
abstract class SubstanceDefinitionXSubstanceDefinitionRelationshipBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// A numeric factor for the relationship, for instance to express that the
/// salt of a substance has some percentage of the active substance in
/// relation to some other.
abstract class AmountXSubstanceDefinitionRelationshipBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// Todo.
abstract class AmountXSubstanceReferenceInformationTargetBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// The date or time(s) the activity occurred.
abstract class OccurrenceXSupplyDeliveryBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Identifies the medication, substance, device or biologically derived
/// product being supplied. This is either a link to a resource
/// representing the details of the item or a code that identifies the item
/// from a known list.
abstract class ItemXSupplyDeliverySuppliedItemBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// When the request should be fulfilled.
abstract class OccurrenceXSupplyRequestBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The value of the device detail.
abstract class ValueXSupplyRequestParameterBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The value of the input parameter as a basic type.
abstract class ValueXTaskInputBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The value of the Output parameter as a basic type.
abstract class ValueXTaskOutputBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Indicates the mechanism used to compare versions to determine which is
/// more current.
abstract class VersionAlgorithmXTerminologyCapabilitiesBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// Indicates the mechanism used to compare versions to determine which is
/// more current.
abstract class VersionAlgorithmXTestPlanBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The actual content of the cases - references to TestScripts or
/// externally defined content.
abstract class SourceXTestPlanScriptBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Pointer to a definition of test resources - narrative or structured
/// e.g. synthetic data generation, etc.
abstract class SourceXTestPlanTestDataBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Link or reference providing traceability to the testing requirement for
/// this test.
abstract class LinkXTestReportRequirementBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Indicates the mechanism used to compare versions to determine which is
/// more current.
abstract class VersionAlgorithmXTestScriptBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Link or reference providing traceability to the testing requirement for
/// this test.
abstract class LinkXTestScriptRequirementBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The value of the input parameter as a basic type.
abstract class ValueXTransportInputBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The value of the Output parameter as a basic type.
abstract class ValueXTransportOutputBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Indicates the mechanism used to compare versions to determine which
/// ValueSet is more current.
abstract class VersionAlgorithmXValueSetBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The value of the parameter.
abstract class ValueXValueSetParameterBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The value of this property.
abstract class ValueXValueSetPropertyBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The value of this subproperty.
abstract class ValueXValueSetSubPropertyBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The individual responsible for making the annotation.
abstract class AuthorXAnnotationBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The intended subjects of the data requirement. If this element is not
/// provided, a Patient subject is assumed.
abstract class SubjectXDataRequirementBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The value of the filter. If period is specified, the filter will return
/// only those data items that fall within the bounds determined by the
/// Period, inclusive of the period boundaries. If dateTime is specified,
/// the filter will return only those data items that are equal to the
/// specified dateTime. If a Duration is specified, the filter will return
/// only those data items that fall within Duration before now.
abstract class ValueXDataRequirementDateFilterBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The value of the filter.
abstract class ValueXDataRequirementValueFilterBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Amount of medication per dose.
abstract class DoseXDosageDoseAndRateBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Amount of medication per unit of time.
abstract class RateXDosageDoseAndRateBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The value that should be used if there is no value stated in the
/// instance (e.g. 'if not otherwise specified, the abstract is false').
abstract class DefaultValueXElementDefinitionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Specifies a value that SHALL be exactly the value for this element in
/// the instance, if present. For purposes of comparison, non-significant
/// whitespace is ignored, and all values must be an exact match (case and
/// accent sensitive). Missing elements/attributes must also be missing.
abstract class FixedXElementDefinitionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Specifies a value that each occurrence of the element in the instance
/// SHALL follow - that is, any value in the pattern must be found in the
/// instance, if the element has a value. Other additional values may be
/// found too. This is effectively constraint by example.
///
/// When pattern[x] is used to constrain a primitive, it means that the
/// value provided in the pattern[x] must match the instance value exactly.
///
/// When an element within a pattern[x] is used to constrain an array, it
/// means that each element provided in the pattern[x] must (recursively)
/// match at least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that
/// each property in the pattern must be present in the complex object, and
/// its value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value
///
/// If a pattern[x] is declared on a repeating element, the pattern applies
/// to all repetitions. If the desire is for a pattern to apply to only one
/// element or a subset of elements, slicing must be used. See [Examples of
/// Patterns](elementdefinition-examples.html#pattern-examples) for
/// examples of pattern usage and the effect it will have.
abstract class PatternXElementDefinitionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The minimum allowed value for the element. The value is inclusive. This
/// is allowed for the types date, dateTime, instant, time, decimal,
/// integer, and Quantity.
abstract class MinValueXElementDefinitionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The maximum allowed value for the element. The value is inclusive. This
/// is allowed for the types date, dateTime, instant, time, decimal,
/// integer, and Quantity.
abstract class MaxValueXElementDefinitionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The actual value for the element, which must be one of the types
/// allowed for this element.
abstract class ValueXElementDefinitionExampleBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Value of extension - must be one of a constrained set of the data types
/// (see [Extensibility](extensibility.html) for a list).
abstract class ValueXExtensionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The shelf life time period can be specified using a numerical value for
/// the period of time and its unit of time measurement The unit of
/// measurement shall be specified in accordance with ISO 11240 and the
/// resulting terminology The symbol and the symbol identifier shall be
/// used.
abstract class PeriodXProductShelfLifeBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Either a duration for the length of the timing schedule, a range of
/// possible length, or outer bounds for start and/or end limits of the
/// timing schedule.
abstract class BoundsXTimingRepeatBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The timing of the event (if this is a periodic trigger).
abstract class TimingXTriggerDefinitionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// A value that defines the context specified in this context of use. The
/// interpretation of the value is defined by the code.
abstract class ValueXUsageContextBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// What address or number needs to be used for a user to connect to the
/// virtual service to join. The channelType informs as to which datatype
/// is appropriate to use (requires knowledge of the specific type).
abstract class AddressXVirtualServiceDetailBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}
