// ignore_for_file: flutter_style_todos

import 'package:fhir_r6/fhir_r6.dart';

/// Polymorphic types for FHIR data types.
abstract class PolymorphicType {}

/// Indicates the mechanism used to compare versions to determine which is
/// more current.
abstract class VersionAlgorithmXActivityDefinition extends DataType
    implements PolymorphicType {}

/// A code, group definition, or canonical reference that describes or
/// identifies the intended subject of the activity being defined.
/// Canonical references are allowed to support the definition of protocols
/// for drug and substance quality specifications, and is allowed to
/// reference a MedicinalProductDefinition, SubstanceDefinition,
/// AdministrableProductDefinition, ManufacturedItemDefinition, or
/// PackagedProductDefinition resource.
abstract class SubjectXActivityDefinition extends DataType
    implements PolymorphicType {}

/// The timing or frequency upon which the described activity is to occur.
abstract class TimingXActivityDefinition extends DataType
    implements PolymorphicType {}

/// If a CodeableConcept is present, it indicates the pre-condition for
/// performing the service. For example "pain", "on flare-up", etc.
abstract class AsNeededXActivityDefinition extends DataType
    implements PolymorphicType {}

/// Identifies the food, drug or other product being consumed or supplied
/// in the activity.
abstract class ProductXActivityDefinition extends DataType
    implements PolymorphicType {}

/// Indicates the mechanism used to compare versions to determine which is
/// more current.
abstract class VersionAlgorithmXActorDefinition extends DataType
    implements PolymorphicType {}

/// A value for the characteristic.
abstract class ValueXAdministrableProductDefinitionProperty extends DataType
    implements PolymorphicType {}

/// The date (and perhaps time) when the adverse event occurred.
abstract class OccurrenceXAdverseEvent extends DataType
    implements PolymorphicType {}

/// Identifies the actual instance of what caused the adverse event. May be
/// a substance, medication, medication administration, medication
/// statement or a device.
abstract class InstanceXAdverseEventSuspectEntity extends DataType
    implements PolymorphicType {}

/// The item that is suspected to have increased the probability or
/// severity of the adverse event.
abstract class ItemXAdverseEventContributingFactor extends DataType
    implements PolymorphicType {}

/// The action that contributed to avoiding the adverse event.
abstract class ItemXAdverseEventPreventiveAction extends DataType
    implements PolymorphicType {}

/// The ameliorating action taken after the adverse event occured in order
/// to reduce the extent of harm.
abstract class ItemXAdverseEventMitigatingAction extends DataType
    implements PolymorphicType {}

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
abstract class ItemXAdverseEventSupportingInfo extends DataType
    implements PolymorphicType {}

/// Estimated or actual date, date-time, or age when allergy or intolerance
/// was identified.
abstract class OnsetXAllergyIntolerance extends DataType
    implements PolymorphicType {}

/// Display of or reference to the bibliographic citation of the comment,
/// classifier, or rating.
abstract class CiteAsXArtifactAssessment extends DataType
    implements PolymorphicType {}

/// A reference to a resource, canonical resource, or non-FHIR resource
/// which the comment or assessment is about.
abstract class ArtifactXArtifactAssessment extends DataType
    implements PolymorphicType {}

/// The time or period during which the activity occurred.
abstract class OccurredXAuditEvent extends DataType
    implements PolymorphicType {}

/// When the event utilizes a network there should be an agent describing
/// the local system, and an agent describing remote system, with the
/// network interface details.
abstract class NetworkXAuditEventAgent extends DataType
    implements PolymorphicType {}

/// The value of the extra detail.
abstract class ValueXAuditEventDetail extends DataType
    implements PolymorphicType {}

/// Time of product collection.
abstract class CollectedXBiologicallyDerivedProductCollection extends DataType
    implements PolymorphicType {}

/// Property values.
abstract class ValueXBiologicallyDerivedProductProperty extends DataType
    implements PolymorphicType {}

/// Indicates the mechanism used to compare versions to determine which is
/// more current.
abstract class VersionAlgorithmXCapabilityStatement extends DataType
    implements PolymorphicType {}

/// When the member is generally available within this care team.
abstract class CoverageXCareTeamParticipant extends DataType
    implements PolymorphicType {}

/// Date/time(s) or duration when the charged service was applied.
abstract class OccurrenceXChargeItem extends DataType
    implements PolymorphicType {}

/// Indicates the mechanism used to compare versions to determine which is
/// more current.
abstract class VersionAlgorithmXChargeItemDefinition extends DataType
    implements PolymorphicType {}

/// Indicates the mechanism used to compare versions to determine which is
/// more current.
abstract class VersionAlgorithmXCitation extends DataType
    implements PolymorphicType {}

/// A date or period in the past or future indicating when the event
/// occurred or is expectd to occur.
abstract class WhenXClaimEvent extends DataType implements PolymorphicType {}

/// The date when or period to which this information refers.
abstract class TimingXClaimSupportingInfo extends DataType
    implements PolymorphicType {}

/// Additional data or information such as resources, documents, images
/// etc. including references to the data or the actual inclusion of the
/// data.
abstract class ValueXClaimSupportingInfo extends DataType
    implements PolymorphicType {}

/// The nature of illness or problem in a coded form or as a reference to
/// an external defined Condition.
abstract class DiagnosisXClaimDiagnosis extends DataType
    implements PolymorphicType {}

/// The code or reference to a Procedure resource which identifies the
/// clinical intervention performed.
abstract class ProcedureXClaimProcedure extends DataType
    implements PolymorphicType {}

/// The physical location of the accident event.
abstract class LocationXClaimAccident extends DataType
    implements PolymorphicType {}

/// The date or dates when the service or product was supplied, performed
/// or completed.
abstract class ServicedXClaimItem extends DataType implements PolymorphicType {}

/// Where the product or service was provided.
abstract class LocationXClaimItem extends DataType implements PolymorphicType {}

/// A date or period in the past or future indicating when the event
/// occurred or is expectd to occur.
abstract class WhenXClaimResponseEvent extends DataType
    implements PolymorphicType {}

/// The date or dates when the service or product was supplied, performed
/// or completed.
abstract class ServicedXClaimResponseAddItem extends DataType
    implements PolymorphicType {}

/// Where the product or service was provided.
abstract class LocationXClaimResponseAddItem extends DataType
    implements PolymorphicType {}

/// The point in time or period over which the subject was assessed.
abstract class EffectiveXClinicalImpression extends DataType
    implements PolymorphicType {}

/// Timing or duration information, that may be associated with use with
/// the indicated condition e.g. Adult patients suffering from myocardial
/// infarction (from a few days until less than 35 days), ischaemic stroke
/// (from 7 days until less than 6 months).
abstract class DurationXClinicalUseDefinitionIndication extends DataType
    implements PolymorphicType {}

/// The specific medication, product, food, substance etc. or laboratory
/// test that interacts.
abstract class ItemXClinicalUseDefinitionInteractant extends DataType
    implements PolymorphicType {}

/// Indicates the mechanism used to compare versions to determine which
/// CodeSystem is more current.
abstract class VersionAlgorithmXCodeSystem extends DataType
    implements PolymorphicType {}

/// The value of this property.
abstract class ValueXCodeSystemProperty extends DataType
    implements PolymorphicType {}

/// A communicated content (or for multi-part communications, one portion
/// of the communication).
abstract class ContentXCommunicationPayload extends DataType
    implements PolymorphicType {}

/// The time when this communication is to occur.
abstract class OccurrenceXCommunicationRequest extends DataType
    implements PolymorphicType {}

/// The communicated content (or for multi-part communications, one portion
/// of the communication).
abstract class ContentXCommunicationRequestPayload extends DataType
    implements PolymorphicType {}

/// Indicates the mechanism used to compare versions to determine which is
/// more current.
abstract class VersionAlgorithmXCompartmentDefinition extends DataType
    implements PolymorphicType {}

/// Indicates the mechanism used to compare versions to determine which
/// ConceptMap is more current.
abstract class VersionAlgorithmXConceptMap extends DataType
    implements PolymorphicType {}

/// Identifier for the source value set that contains the concepts that are
/// being mapped and provides context for the mappings. Limits the scope of
/// the map to source codes (ConceptMap.group.element code or valueSet)
/// that are members of this value set.
abstract class SourceScopeXConceptMap extends DataType
    implements PolymorphicType {}

/// Identifier for the target value set that provides important context
/// about how the mapping choices are made. Limits the scope of the map to
/// target codes (ConceptMap.group.element.target code or valueSet) that
/// are members of this value set.
abstract class TargetScopeXConceptMap extends DataType
    implements PolymorphicType {}

/// The value of this property. If the type chosen for this element is
/// 'code', then the property SHALL be defined in a ConceptMap.property
/// element.
abstract class ValueXConceptMapProperty extends DataType
    implements PolymorphicType {}

/// Data element value that the map depends on / produces.
abstract class ValueXConceptMapDependsOn extends DataType
    implements PolymorphicType {}

/// Estimated or actual date or date-time the condition began, in the
/// opinion of the clinician.
abstract class OnsetXCondition extends DataType implements PolymorphicType {}

/// The date or estimated date that the condition resolved or went into
/// remission. This is called "abatement" because of the many overloaded
/// connotations associated with "remission" or "resolution" - Some
/// conditions, such as chronic conditions, are never really resolved, but
/// they can abate.
abstract class AbatementXCondition extends DataType
    implements PolymorphicType {}

/// Indicates the mechanism used to compare versions to determine which is
/// more current.
abstract class VersionAlgorithmXConditionDefinition extends DataType
    implements PolymorphicType {}

/// Value of Observation.
abstract class ValueXConditionDefinitionPrecondition extends DataType
    implements PolymorphicType {}

/// Narrows the range of legal concerns to focus on the achievement of
/// specific contractual objectives.
abstract class TopicXContract extends DataType implements PolymorphicType {}

/// Legally binding Contract: This is the signed and legally recognized
/// representation of the Contract, which is considered the "source of
/// truth" and which would be the basis for legal action related to
/// enforcement of this Contract.
abstract class LegallyBindingXContract extends DataType
    implements PolymorphicType {}

/// The entity that the term applies to.
abstract class TopicXContractTerm extends DataType implements PolymorphicType {}

/// Response to an offer clause or question text, which enables selection
/// of values to be agreed to, e.g., the period of participation, the date
/// of occupancy of a rental, warranty duration, or whether biospecimen may
/// be used for further research.
abstract class ValueXContractAnswer extends DataType
    implements PolymorphicType {}

/// Specific type of Contract Valued Item that may be priced.
abstract class EntityXContractValuedItem extends DataType
    implements PolymorphicType {}

/// When action happens.
abstract class OccurrenceXContractAction extends DataType
    implements PolymorphicType {}

/// Human readable rendering of this Contract in a format and
/// representation intended to enhance comprehension and ensure
/// understandability.
abstract class ContentXContractFriendly extends DataType
    implements PolymorphicType {}

/// Contract legal text in human renderable form.
abstract class ContentXContractLegal extends DataType
    implements PolymorphicType {}

/// Computable Contract conveyed using a policy rule language (e.g. XACML,
/// DKAL, SecPal).
abstract class ContentXContractRule extends DataType
    implements PolymorphicType {}

/// The amount due from the patient for the cost category.
abstract class ValueXCoverageCostToBeneficiary extends DataType
    implements PolymorphicType {}

/// The date or dates when the enclosed suite of services were performed or
/// completed.
abstract class ServicedXCoverageEligibilityRequest extends DataType
    implements PolymorphicType {}

/// A date or period in the past or future indicating when the event
/// occurred or is expectd to occur.
abstract class WhenXCoverageEligibilityRequestEvent extends DataType
    implements PolymorphicType {}

/// The nature of illness or problem in a coded form or as a reference to
/// an external defined Condition.
abstract class DiagnosisXCoverageEligibilityRequestDiagnosis extends DataType
    implements PolymorphicType {}

/// The date or dates when the enclosed suite of services were performed or
/// completed.
abstract class ServicedXCoverageEligibilityResponse extends DataType
    implements PolymorphicType {}

/// A date or period in the past or future indicating when the event
/// occurred or is expectd to occur.
abstract class WhenXCoverageEligibilityResponseEvent extends DataType
    implements PolymorphicType {}

/// The quantity of the benefit which is permitted under the coverage.
abstract class AllowedXCoverageEligibilityResponseBenefit extends DataType
    implements PolymorphicType {}

/// The quantity of the benefit which have been consumed to date.
abstract class UsedXCoverageEligibilityResponseBenefit extends DataType
    implements PolymorphicType {}

/// The date or period when the detected issue was initially identified.
abstract class IdentifiedXDetectedIssue extends DataType
    implements PolymorphicType {}

/// The value of the property specified by the associated property.type
/// code.
abstract class ValueXDeviceProperty extends DataType
    implements PolymorphicType {}

/// The value of the property specified by the associated property.type
/// code.
abstract class ValueXDeviceDefinitionProperty extends DataType
    implements PolymorphicType {}

/// The timing schedule for the use of the device. The Schedule data type
/// allows many different expressions, for example. "Every 8 hours"; "Three
/// times a day"; "1/2 an hour before breakfast for 10 days from 23-Dec
/// 2011:"; "15 Oct 2013, 17 Oct 2013 and 1 Nov 2013".
abstract class OccurrenceXDeviceRequest extends DataType
    implements PolymorphicType {}

/// The value of the device detail.
abstract class ValueXDeviceRequestParameter extends DataType
    implements PolymorphicType {}

/// How often the device was used.
abstract class TimingXDeviceUsage extends DataType implements PolymorphicType {}

/// The time or time-period the observed values are related to. When the
/// subject of the report is a patient, this is usually either the time of
/// the procedure or of specimen collection(s), but very often the source
/// of the date/time is not known, only the date/time itself.
abstract class EffectiveXDiagnosticReport extends DataType
    implements PolymorphicType {}

/// Code|uri|canonical.
abstract class ValueXDocumentReferenceProfile extends DataType
    implements PolymorphicType {}

/// Indicates the mechanism used to compare versions to determine which is
/// more current.
abstract class VersionAlgorithmXEventDefinition extends DataType
    implements PolymorphicType {}

/// A code or group definition that describes the intended subject of the
/// event definition.
abstract class SubjectXEventDefinition extends DataType
    implements PolymorphicType {}

/// Indicates the mechanism used to compare versions to determine which is
/// more current.
abstract class VersionAlgorithmXEvidence extends DataType
    implements PolymorphicType {}

/// Citation Resource or display of suggested citation for this evidence.
abstract class CiteAsXEvidence extends DataType implements PolymorphicType {}

/// Citation Resource or display of suggested citation for this report.
abstract class CiteAsXEvidenceReport extends DataType
    implements PolymorphicType {}

/// Characteristic value.
abstract class ValueXEvidenceReportCharacteristic extends DataType
    implements PolymorphicType {}

/// Indicates the mechanism used to compare versions to determine which is
/// more current.
abstract class VersionAlgorithmXEvidenceVariable extends DataType
    implements PolymorphicType {}

/// Number of occurrences meeting the characteristic.
abstract class InstancesXEvidenceVariableCharacteristic extends DataType
    implements PolymorphicType {}

/// Length of time in which the characteristic is met.
abstract class DurationXEvidenceVariableCharacteristic extends DataType
    implements PolymorphicType {}

/// Defines the characteristic when paired with characteristic.type.
abstract class ValueXEvidenceVariableDefinitionByTypeAndValue extends DataType
    implements PolymorphicType {}

/// The event used as a base point (reference point) in time.
abstract class EventXEvidenceVariableTimeFromEvent extends DataType
    implements PolymorphicType {}

/// Definition of the grouping.
abstract class ValueXEvidenceVariableCategory extends DataType
    implements PolymorphicType {}

/// Indicates the mechanism used to compare versions to determine which is
/// more current.
abstract class VersionAlgorithmXExampleScenario extends DataType
    implements PolymorphicType {}

/// Refers to a profile, template or other ruleset the instance adheres to.
abstract class StructureProfileXExampleScenarioInstance extends DataType
    implements PolymorphicType {}

/// A date or period in the past or future indicating when the event
/// occurred or is expectd to occur.
abstract class WhenXExplanationOfBenefitEvent extends DataType
    implements PolymorphicType {}

/// The date when or period to which this information refers.
abstract class TimingXExplanationOfBenefitSupportingInfo extends DataType
    implements PolymorphicType {}

/// Additional data or information such as resources, documents, images
/// etc. including references to the data or the actual inclusion of the
/// data.
abstract class ValueXExplanationOfBenefitSupportingInfo extends DataType
    implements PolymorphicType {}

/// The nature of illness or problem in a coded form or as a reference to
/// an external defined Condition.
abstract class DiagnosisXExplanationOfBenefitDiagnosis extends DataType
    implements PolymorphicType {}

/// The code or reference to a Procedure resource which identifies the
/// clinical intervention performed.
abstract class ProcedureXExplanationOfBenefitProcedure extends DataType
    implements PolymorphicType {}

/// The physical location of the accident event.
abstract class LocationXExplanationOfBenefitAccident extends DataType
    implements PolymorphicType {}

/// The date or dates when the service or product was supplied, performed
/// or completed.
abstract class ServicedXExplanationOfBenefitItem extends DataType
    implements PolymorphicType {}

/// Where the product or service was provided.
abstract class LocationXExplanationOfBenefitItem extends DataType
    implements PolymorphicType {}

/// The date or dates when the service or product was supplied, performed
/// or completed.
abstract class ServicedXExplanationOfBenefitAddItem extends DataType
    implements PolymorphicType {}

/// Where the product or service was provided.
abstract class LocationXExplanationOfBenefitAddItem extends DataType
    implements PolymorphicType {}

/// The quantity of the benefit which is permitted under the coverage.
abstract class AllowedXExplanationOfBenefitFinancial extends DataType
    implements PolymorphicType {}

/// The quantity of the benefit which have been consumed to date.
abstract class UsedXExplanationOfBenefitFinancial extends DataType
    implements PolymorphicType {}

/// The actual or approximate date of birth of the relative.
abstract class BornXFamilyMemberHistory extends DataType
    implements PolymorphicType {}

/// The age of the relative at the time the family member history is
/// recorded.
abstract class AgeXFamilyMemberHistory extends DataType
    implements PolymorphicType {}

/// Deceased flag or the actual or approximate age of the relative at the
/// time of death for the family member history record.
abstract class DeceasedXFamilyMemberHistory extends DataType
    implements PolymorphicType {}

/// Either the age of onset, range of approximate age or descriptive string
/// can be recorded. For conditions with multiple occurrences, this
/// describes the first known occurrence.
abstract class OnsetXFamilyMemberHistoryCondition extends DataType
    implements PolymorphicType {}

/// Estimated or actual date, date-time, period, or age when the procedure
/// was performed. Allows a period to support complex procedures that span
/// more than one date, and also allows for the length of the procedure to
/// be captured.
abstract class PerformedXFamilyMemberHistoryProcedure extends DataType
    implements PolymorphicType {}

/// The analysis event or other GenomicStudy that generated this input
/// file.
abstract class GeneratedByXGenomicStudyInput extends DataType
    implements PolymorphicType {}

/// The date or event after which the goal should begin being pursued.
abstract class StartXGoal extends DataType implements PolymorphicType {}

/// The target value of the focus to be achieved to signify the fulfillment
/// of the goal, e.g. 150 pounds, 7.0%. Either the high or low or both
/// values of the range can be specified. When a low value is missing, it
/// indicates that the goal is achieved at any focus value at or below the
/// high value. Similarly, if the high value is missing, it indicates that
/// the goal is achieved at any focus value at or above the low value.
abstract class DetailXGoalTarget extends DataType implements PolymorphicType {}

/// Indicates either the date or the duration after start by which the goal
/// should be met.
abstract class DueXGoalTarget extends DataType implements PolymorphicType {}

/// Indicates the mechanism used to compare versions to determine which is
/// more current.
abstract class VersionAlgorithmXGraphDefinition extends DataType
    implements PolymorphicType {}

/// The value of the trait that holds (or does not hold - see 'exclude')
/// for members of the group.
abstract class ValueXGroupCharacteristic extends DataType
    implements PolymorphicType {}

/// An identifier, CodeableConcept or canonical reference to the guidance
/// that was requested.
abstract class ModuleXGuidanceResponse extends DataType
    implements PolymorphicType {}

/// Date vaccine administered or was to be administered.
abstract class OccurrenceXImmunization extends DataType
    implements PolymorphicType {}

/// Indicates the mechanism used to compare versions to determine which is
/// more current.
abstract class VersionAlgorithmXImplementationGuide extends DataType
    implements PolymorphicType {}

/// Indicates the URL or the actual content to provide for the page.
abstract class SourceXImplementationGuidePage extends DataType
    implements PolymorphicType {}

/// The quantity of substance in the unit of presentation, or in the volume
/// (or mass) of the single pharmaceutical product or manufactured item.
/// Unit of presentation refers to the quantity that the item occurs in
/// e.g. a strength per tablet size, perhaps 'per 20mg' (the size of the
/// tablet). It is not generally normalized as a unitary unit, which would
/// be 'per mg').
abstract class PresentationXIngredientStrength extends DataType
    implements PolymorphicType {}

/// The strength per unitary volume (or mass).
abstract class ConcentrationXIngredientStrength extends DataType
    implements PolymorphicType {}

/// Strength expressed in terms of a reference substance.
abstract class StrengthXIngredientReferenceStrength extends DataType
    implements PolymorphicType {}

/// The value of the attribute.
abstract class ValueXInventoryItemCharacteristic extends DataType
    implements PolymorphicType {}

/// Date/time(s) range of services included in this invoice.
abstract class PeriodXInvoice extends DataType implements PolymorphicType {}

/// Date/time(s) range when this service was delivered or completed.
abstract class ServicedXInvoiceLineItem extends DataType
    implements PolymorphicType {}

/// The ChargeItem contains information such as the billing code, date,
/// amount etc. If no further details are required for the lineItem, inline
/// billing codes can be added using the CodeableConcept data type instead
/// of the Reference.
abstract class ChargeItemXInvoiceLineItem extends DataType
    implements PolymorphicType {}

/// Indicates the mechanism used to compare versions to determine which is
/// more current.
abstract class VersionAlgorithmXLibrary extends DataType
    implements PolymorphicType {}

/// A code or group definition that describes the intended subject of the
/// contents of the library.
abstract class SubjectXLibrary extends DataType implements PolymorphicType {}

/// A value for the characteristic.
abstract class ValueXManufacturedItemDefinitionProperty extends DataType
    implements PolymorphicType {}

/// Indicates the mechanism used to compare versions to determine which is
/// more current.
abstract class VersionAlgorithmXMeasure extends DataType
    implements PolymorphicType {}

/// The intended subjects for the measure. If this element is not provided,
/// a Patient subject is assumed, but the subject of the measure can be
/// anything.
abstract class SubjectXMeasure extends DataType implements PolymorphicType {}

/// The intended subjects for the measure. If this element is not provided,
/// a Patient subject is assumed, but the subject of the measure can be
/// anything.
abstract class SubjectXMeasureGroup extends DataType
    implements PolymorphicType {}

/// The measure score for this population group, calculated as appropriate
/// for the measure type and scoring method, and based on the contents of
/// the populations defined in the group.
abstract class MeasureScoreXMeasureReportGroup extends DataType
    implements PolymorphicType {}

/// The value for this stratum, expressed as a CodeableConcept. When
/// defining stratifiers on complex values, the value must be rendered such
/// that the value for each stratum within the stratifier is unique.
abstract class ValueXMeasureReportStratum extends DataType
    implements PolymorphicType {}

/// The measure score for this stratum, calculated as appropriate for the
/// measure type and scoring method, and based on only the members of this
/// stratum.
abstract class MeasureScoreXMeasureReportStratum extends DataType
    implements PolymorphicType {}

/// The stratum component value.
abstract class ValueXMeasureReportComponent extends DataType
    implements PolymorphicType {}

/// Specifies how many (or how much) of the items there are in this
/// Medication. For example, 250 mg per tablet. This is expressed as a
/// ratio where the numerator is 250mg and the denominator is 1 tablet but
/// can also be expressed a quantity when the denominator is assumed to be
/// 1 tablet.
abstract class StrengthXMedicationIngredient extends DataType
    implements PolymorphicType {}

/// A specific date/time or interval of time during which the
/// administration took place (or did not take place). For many
/// administrations, such as swallowing a tablet the use of dateTime is
/// more appropriate.
abstract class OccurenceXMedicationAdministration extends DataType
    implements PolymorphicType {}

/// Identifies the speed with which the medication was or will be
/// introduced into the patient. Typically, the rate for an infusion e.g.
/// 100 ml per 1 hour or 100 ml/hr. May also be expressed as a rate per
/// unit of time, e.g. 500 ml per 2 hours. Other examples: 200 mcg/min or
/// 200 mcg/1 minute; 1 liter/8 hours.
abstract class RateXMedicationAdministrationDosage extends DataType
    implements PolymorphicType {}

/// The price or representation of the cost (for example, Band A, Band B or
/// $, $$) of the medication.
abstract class CostXMedicationKnowledgeCost extends DataType
    implements PolymorphicType {}

/// The specific characteristic (e.g. height, weight, gender, etc.).
abstract class ValueXMedicationKnowledgePatientCharacteristic extends DataType
    implements PolymorphicType {}

/// Either a textual source of the classification or a reference to an
/// online source.
abstract class SourceXMedicationKnowledgeMedicineClassification extends DataType
    implements PolymorphicType {}

/// Value associated to the setting. E.g., 40° – 50°F for temperature.
abstract class ValueXMedicationKnowledgeEnvironmentalSetting extends DataType
    implements PolymorphicType {}

/// Specifies how many (or how much) of the items there are in this
/// Medication. For example, 250 mg per tablet. This is expressed as a
/// ratio where the numerator is 250mg and the denominator is 1 tablet but
/// can also be expressed a quantity when the denominator is assumed to be
/// 1 tablet.
abstract class StrengthXMedicationKnowledgeIngredient extends DataType
    implements PolymorphicType {}

/// Description of the characteristic.
abstract class ValueXMedicationKnowledgeDrugCharacteristic extends DataType
    implements PolymorphicType {}

/// True if the prescriber allows a different drug to be dispensed from
/// what was prescribed.
abstract class AllowedXMedicationRequestSubstitution extends DataType
    implements PolymorphicType {}

/// The interval of time during which it is being asserted that the patient
/// is/was/will be taking the medication (or was not taking, when the
/// MedicationStatement.adherence element is Not Taking).
abstract class EffectiveXMedicationStatement extends DataType
    implements PolymorphicType {}

/// A value for the characteristic.text.
abstract class ValueXMedicinalProductDefinitionCharacteristic extends DataType
    implements PolymorphicType {}

/// Indicates the mechanism used to compare versions to determine which is
/// more current.
abstract class VersionAlgorithmXMessageDefinition extends DataType
    implements PolymorphicType {}

/// Event code or link to the EventDefinition.
abstract class EventXMessageDefinition extends DataType
    implements PolymorphicType {}

/// Code that identifies the event this message represents and connects it
/// with its definition. Events defined as part of the FHIR specification
/// are defined by the implementation. Alternatively a canonical uri to the
/// EventDefinition.
abstract class EventXMessageHeader extends DataType
    implements PolymorphicType {}

/// Indicates where the message should be routed.
abstract class EndpointXMessageHeaderDestination extends DataType
    implements PolymorphicType {}

/// Identifies the routing target to send acknowledgements to.
abstract class EndpointXMessageHeaderSource extends DataType
    implements PolymorphicType {}

/// The reference sequence that represents the starting sequence.
abstract class SequenceXMolecularSequenceStartingSequence extends DataType
    implements PolymorphicType {}

/// Indicates the mechanism used to compare versions to determine which
/// NamingSystem is more current.
abstract class VersionAlgorithmXNamingSystem extends DataType
    implements PolymorphicType {}

/// The interval of time during which it is being asserted that the patient
/// is/was consuming the food or fluid.
abstract class OccurrenceXNutritionIntake extends DataType
    implements PolymorphicType {}

/// The person or organization that provided the information about the
/// consumption of this food or fluid. Note: Use derivedFrom when a
/// NutritionIntake is derived from other resources.
abstract class ReportedXNutritionIntake extends DataType
    implements PolymorphicType {}

/// The rate of administration of formula via a feeding pump, e.g. 60 mL
/// per hour, according to the specified schedule.
abstract class RateXNutritionOrderAdministration extends DataType
    implements PolymorphicType {}

/// The actual characteristic value corresponding to the type.
abstract class ValueXNutritionProductCharacteristic extends DataType
    implements PolymorphicType {}

/// The reference to a FHIR ObservationDefinition resource that provides
/// the definition that is adhered to in whole or in part by this
/// Observation instance.
abstract class InstantiatesXObservation extends DataType
    implements PolymorphicType {}

/// The time or time-period the observed value is asserted as being true.
/// For biological subjects - e.g. human patients - this is usually called
/// the "physiologically relevant time". This is usually either the time of
/// the procedure or of specimen collection, but very often the source of
/// the date/time is not known, only the date/time itself.
abstract class EffectiveXObservation extends DataType
    implements PolymorphicType {}

/// The information determined as a result of making the observation, if
/// the information has a simple value.
abstract class ValueXObservation extends DataType implements PolymorphicType {}

/// The information determined as a result of making the observation, if
/// the information has a simple value.
abstract class ValueXObservationComponent extends DataType
    implements PolymorphicType {}

/// Indicates the mechanism used to compare versions to determine which is
/// more current.
abstract class VersionAlgorithmXObservationDefinition extends DataType
    implements PolymorphicType {}

/// Indicates the mechanism used to compare versions to determine which is
/// more current.
abstract class VersionAlgorithmXOperationDefinition extends DataType
    implements PolymorphicType {}

/// A value for the characteristic.
abstract class ValueXPackagedProductDefinitionProperty extends DataType
    implements PolymorphicType {}

/// Conveys the content if the parameter is a data type.
abstract class ValueXParametersParameter extends DataType
    implements PolymorphicType {}

/// Indicates if the individual is deceased or not.
abstract class DeceasedXPatient extends DataType implements PolymorphicType {}

/// Indicates whether the patient is part of a multiple (boolean) or
/// indicates the actual birth order (integer).
abstract class MultipleBirthXPatient extends DataType
    implements PolymorphicType {}

/// Identifies the claim line item, encounter or other sub-element being
/// paid. Note payment may be partial, that is not match the then
/// outstanding balance or amount incurred.
abstract class TargetItemXPaymentReconciliationAllocation extends DataType
    implements PolymorphicType {}

/// Indicates if the individual is deceased or not.
abstract class DeceasedXPerson extends DataType implements PolymorphicType {}

/// Indicates the mechanism used to compare versions to determine which is
/// more current.
abstract class VersionAlgorithmXPlanDefinition extends DataType
    implements PolymorphicType {}

/// A code, group definition, or canonical reference that describes or
/// identifies the intended subject of the plan definition. Canonical
/// references are allowed to support the definition of protocols for drug
/// and substance quality specifications, and is allowed to reference a
/// MedicinalProductDefinition, SubstanceDefinition,
/// AdministrableProductDefinition, ManufacturedItemDefinition, or
/// PackagedProductDefinition resource.
abstract class SubjectXPlanDefinition extends DataType
    implements PolymorphicType {}

/// If a CodeableConcept is present, it indicates the pre-condition for
/// performing the service. For example "pain", "on flare-up", etc.
abstract class AsNeededXPlanDefinition extends DataType
    implements PolymorphicType {}

/// The target value of the measure to be achieved to signify fulfillment
/// of the goal, e.g. 150 pounds or 7.0%, or in the case of pharmaceutical
/// quality - NMT 0.6%, Clear solution, etc. Either the high or low or both
/// values of the range can be specified. When a low value is missing, it
/// indicates that the goal is achieved at any value at or below the high
/// value. Similarly, if the high value is missing, it indicates that the
/// goal is achieved at any value at or above the low value.
abstract class DetailXPlanDefinitionTarget extends DataType
    implements PolymorphicType {}

/// A code, group definition, or canonical reference that describes the
/// intended subject of the action and its children, if any. Canonical
/// references are allowed to support the definition of protocols for drug
/// and substance quality specifications, and is allowed to reference a
/// MedicinalProductDefinition, SubstanceDefinition,
/// AdministrableProductDefinition, ManufacturedItemDefinition, or
/// PackagedProductDefinition resource.
abstract class SubjectXPlanDefinitionAction extends DataType
    implements PolymorphicType {}

/// An optional value describing when the action should be performed.
abstract class TimingXPlanDefinitionAction extends DataType
    implements PolymorphicType {}

/// A reference to an ActivityDefinition that describes the action to be
/// taken in detail, a MessageDefinition describing a message to be snet, a
/// PlanDefinition that describes a series of actions to be taken, a
/// Questionnaire that should be filled out, a SpecimenDefinition
/// describing a specimen to be collected, or an ObservationDefinition that
/// specifies what observation should be captured.
abstract class DefinitionXPlanDefinitionAction extends DataType
    implements PolymorphicType {}

/// A duration or range of durations to apply to the relationship. For
/// example, 30-60 minutes before.
abstract class OffsetXPlanDefinitionRelatedAction extends DataType
    implements PolymorphicType {}

/// Indicates if the practitioner is deceased or not.
abstract class DeceasedXPractitioner extends DataType
    implements PolymorphicType {}

/// Estimated or actual date, date-time, period, or age when the procedure
/// did occur or is occurring. Allows a period to support complex
/// procedures that span more than one date, and also allows for the length
/// of the procedure to be captured.
abstract class OccurrenceXProcedure extends DataType
    implements PolymorphicType {}

/// Indicates if this record was captured as a secondary 'reported' record
/// rather than as an original primary source-of-truth record. It may also
/// indicate the source of the report.
abstract class ReportedXProcedure extends DataType implements PolymorphicType {}

/// The period during which the activity occurred.
abstract class OccurredXProvenance extends DataType
    implements PolymorphicType {}

/// Indicates the mechanism used to compare versions to determine which is
/// more current.
abstract class VersionAlgorithmXQuestionnaire extends DataType
    implements PolymorphicType {}

/// A value that the referenced question is tested using the specified
/// operator in order for the item to be enabled. If there are multiple
/// answers, a match on any of the answers suffices. If different behavior
/// is desired (all must match, at least 2 must match, etc.), consider
/// using the enableWhenExpression extension.
abstract class AnswerXQuestionnaireEnableWhen extends DataType
    implements PolymorphicType {}

/// A potential answer that's allowed as the answer to this question.
abstract class ValueXQuestionnaireAnswerOption extends DataType
    implements PolymorphicType {}

/// The actual value to for an initial answer.
abstract class ValueXQuestionnaireInitial extends DataType
    implements PolymorphicType {}

/// The answer (or one of the answers) provided by the respondent to the
/// question.
abstract class ValueXQuestionnaireResponseAnswer extends DataType
    implements PolymorphicType {}

/// Relevant date for this case.
abstract class DateXRegulatedAuthorizationCase extends DataType
    implements PolymorphicType {}

/// An optional value describing when the action should be performed.
abstract class TimingXRequestOrchestrationAction extends DataType
    implements PolymorphicType {}

/// A reference to an ActivityDefinition that describes the action to be
/// taken in detail, a PlanDefinition that describes a series of actions to
/// be taken, a Questionnaire that should be filled out, a
/// SpecimenDefinition describing a specimen to be collected, or an
/// ObservationDefinition that specifies what observation should be
/// captured.
abstract class DefinitionXRequestOrchestrationAction extends DataType
    implements PolymorphicType {}

/// A duration or range of durations to apply to the relationship. For
/// example, 30-60 minutes before.
abstract class OffsetXRequestOrchestrationRelatedAction extends DataType
    implements PolymorphicType {}

/// A reference to the actual participant.
abstract class ActorXRequestOrchestrationParticipant extends DataType
    implements PolymorphicType {}

/// Indicates the mechanism used to compare versions to determine which is
/// more current.
abstract class VersionAlgorithmXRequirements extends DataType
    implements PolymorphicType {}

/// The date (and possibly time) the risk assessment was performed.
abstract class OccurrenceXRiskAssessment extends DataType
    implements PolymorphicType {}

/// Indicates how likely the outcome is (in the specified timeframe).
abstract class ProbabilityXRiskAssessmentPrediction extends DataType
    implements PolymorphicType {}

/// Indicates the period of time or age range of the subject to which the
/// specified probability applies.
abstract class WhenXRiskAssessmentPrediction extends DataType
    implements PolymorphicType {}

/// Indicates the mechanism used to compare versions to determine which is
/// more current.
abstract class VersionAlgorithmXSearchParameter extends DataType
    implements PolymorphicType {}

/// An amount of service being requested which can be a quantity ( for
/// example $1,500 home modification), a ratio ( for example, 20 half day
/// visits per month), or a range (2.0 to 1.8 Gy per fraction).
abstract class QuantityXServiceRequest extends DataType
    implements PolymorphicType {}

/// The date/time at which the requested service should occur.
abstract class OccurrenceXServiceRequest extends DataType
    implements PolymorphicType {}

/// If a CodeableConcept is present, it indicates the pre-condition for
/// performing the service. For example "pain", "on flare-up", etc.
abstract class AsNeededXServiceRequest extends DataType
    implements PolymorphicType {}

/// Indicates a value for the order detail.
abstract class ValueXServiceRequestParameter extends DataType
    implements PolymorphicType {}

/// Instructions in terms that are understood by the patient or consumer.
abstract class InstructionXServiceRequestPatientInstruction extends DataType
    implements PolymorphicType {}

/// Time when specimen was collected from subject - the physiologically
/// relevant time.
abstract class CollectedXSpecimenCollection extends DataType
    implements PolymorphicType {}

/// Abstinence or reduction from some or all food, drink, or both, for a
/// period of time prior to sample collection.
abstract class FastingStatusXSpecimenCollection extends DataType
    implements PolymorphicType {}

/// A record of the time or period when the specimen processing occurred.
/// For example the time of sample fixation or the period of time the
/// sample was in formalin.
abstract class TimeXSpecimenProcessing extends DataType
    implements PolymorphicType {}

/// Indicates the mechanism used to compare versions to determine which is
/// more current.
abstract class VersionAlgorithmXSpecimenDefinition extends DataType
    implements PolymorphicType {}

/// A code or group definition that describes the intended subject from
/// which this kind of specimen is to be collected.
abstract class SubjectXSpecimenDefinition extends DataType
    implements PolymorphicType {}

/// The minimum volume to be conditioned in the container.
abstract class MinimumVolumeXSpecimenDefinitionContainer extends DataType
    implements PolymorphicType {}

/// Substance introduced in the kind of container to preserve, maintain or
/// enhance the specimen. Examples: Formalin, Citrate, EDTA.
abstract class AdditiveXSpecimenDefinitionAdditive extends DataType
    implements PolymorphicType {}

/// Indicates the mechanism used to compare versions to determine which is
/// more current.
abstract class VersionAlgorithmXStructureDefinition extends DataType
    implements PolymorphicType {}

/// Indicates the mechanism used to compare versions to determine which is
/// more current.
abstract class VersionAlgorithmXStructureMap extends DataType
    implements PolymorphicType {}

/// Parameter value - variable or literal.
abstract class ValueXStructureMapParameter extends DataType
    implements PolymorphicType {}

/// Indicates the mechanism used to compare versions to determine which is
/// more current.
abstract class VersionAlgorithmXSubscriptionTopic extends DataType
    implements PolymorphicType {}

/// Another substance that is a component of this substance.
abstract class SubstanceXSubstanceIngredient extends DataType
    implements PolymorphicType {}

/// Quantitative value for this moiety.
abstract class AmountXSubstanceDefinitionMoiety extends DataType
    implements PolymorphicType {}

/// A value for the property.
abstract class ValueXSubstanceDefinitionProperty extends DataType
    implements PolymorphicType {}

/// A pointer to another substance, as a resource or just a
/// representational code.
abstract class SubstanceDefinitionXSubstanceDefinitionRelationship
    extends DataType implements PolymorphicType {}

/// A numeric factor for the relationship, for instance to express that the
/// salt of a substance has some percentage of the active substance in
/// relation to some other.
abstract class AmountXSubstanceDefinitionRelationship extends DataType
    implements PolymorphicType {}

/// Todo.
abstract class AmountXSubstanceReferenceInformationTarget extends DataType
    implements PolymorphicType {}

/// The date or time(s) the activity occurred.
abstract class OccurrenceXSupplyDelivery extends DataType
    implements PolymorphicType {}

/// Identifies the medication, substance, device or biologically derived
/// product being supplied. This is either a link to a resource
/// representing the details of the item or a code that identifies the item
/// from a known list.
abstract class ItemXSupplyDeliverySuppliedItem extends DataType
    implements PolymorphicType {}

/// When the request should be fulfilled.
abstract class OccurrenceXSupplyRequest extends DataType
    implements PolymorphicType {}

/// The value of the device detail.
abstract class ValueXSupplyRequestParameter extends DataType
    implements PolymorphicType {}

/// The value of the input parameter as a basic type.
abstract class ValueXTaskInput extends DataType implements PolymorphicType {}

/// The value of the Output parameter as a basic type.
abstract class ValueXTaskOutput extends DataType implements PolymorphicType {}

/// Indicates the mechanism used to compare versions to determine which is
/// more current.
abstract class VersionAlgorithmXTerminologyCapabilities extends DataType
    implements PolymorphicType {}

/// Indicates the mechanism used to compare versions to determine which is
/// more current.
abstract class VersionAlgorithmXTestPlan extends DataType
    implements PolymorphicType {}

/// The actual content of the cases - references to TestScripts or
/// externally defined content.
abstract class SourceXTestPlanScript extends DataType
    implements PolymorphicType {}

/// Pointer to a definition of test resources - narrative or structured
/// e.g. synthetic data generation, etc.
abstract class SourceXTestPlanTestData extends DataType
    implements PolymorphicType {}

/// Link or reference providing traceability to the testing requirement for
/// this test.
abstract class LinkXTestReportRequirement extends DataType
    implements PolymorphicType {}

/// Indicates the mechanism used to compare versions to determine which is
/// more current.
abstract class VersionAlgorithmXTestScript extends DataType
    implements PolymorphicType {}

/// Link or reference providing traceability to the testing requirement for
/// this test.
abstract class LinkXTestScriptRequirement extends DataType
    implements PolymorphicType {}

/// The value of the input parameter as a basic type.
abstract class ValueXTransportInput extends DataType
    implements PolymorphicType {}

/// The value of the Output parameter as a basic type.
abstract class ValueXTransportOutput extends DataType
    implements PolymorphicType {}

/// Indicates the mechanism used to compare versions to determine which
/// ValueSet is more current.
abstract class VersionAlgorithmXValueSet extends DataType
    implements PolymorphicType {}

/// The value of the parameter.
abstract class ValueXValueSetParameter extends DataType
    implements PolymorphicType {}

/// The value of this property.
abstract class ValueXValueSetProperty extends DataType
    implements PolymorphicType {}

/// The value of this subproperty.
abstract class ValueXValueSetSubProperty extends DataType
    implements PolymorphicType {}

/// The individual responsible for making the annotation.
abstract class AuthorXAnnotation extends DataType implements PolymorphicType {}

/// The intended subjects of the data requirement. If this element is not
/// provided, a Patient subject is assumed.
abstract class SubjectXDataRequirement extends DataType
    implements PolymorphicType {}

/// The value of the filter. If period is specified, the filter will return
/// only those data items that fall within the bounds determined by the
/// Period, inclusive of the period boundaries. If dateTime is specified,
/// the filter will return only those data items that are equal to the
/// specified dateTime. If a Duration is specified, the filter will return
/// only those data items that fall within Duration before now.
abstract class ValueXDataRequirementDateFilter extends DataType
    implements PolymorphicType {}

/// The value of the filter.
abstract class ValueXDataRequirementValueFilter extends DataType
    implements PolymorphicType {}

/// Amount of medication per dose.
abstract class DoseXDosageDoseAndRate extends DataType
    implements PolymorphicType {}

/// Amount of medication per unit of time.
abstract class RateXDosageDoseAndRate extends DataType
    implements PolymorphicType {}

/// The value that should be used if there is no value stated in the
/// instance (e.g. 'if not otherwise specified, the abstract is false').
abstract class DefaultValueXElementDefinition extends DataType
    implements PolymorphicType {}

/// Specifies a value that SHALL be exactly the value for this element in
/// the instance, if present. For purposes of comparison, non-significant
/// whitespace is ignored, and all values must be an exact match (case and
/// accent sensitive). Missing elements/attributes must also be missing.
abstract class FixedXElementDefinition extends DataType
    implements PolymorphicType {}

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
abstract class PatternXElementDefinition extends DataType
    implements PolymorphicType {}

/// The minimum allowed value for the element. The value is inclusive. This
/// is allowed for the types date, dateTime, instant, time, decimal,
/// integer, and Quantity.
abstract class MinValueXElementDefinition extends DataType
    implements PolymorphicType {}

/// The maximum allowed value for the element. The value is inclusive. This
/// is allowed for the types date, dateTime, instant, time, decimal,
/// integer, and Quantity.
abstract class MaxValueXElementDefinition extends DataType
    implements PolymorphicType {}

/// The actual value for the element, which must be one of the types
/// allowed for this element.
abstract class ValueXElementDefinitionExample extends DataType
    implements PolymorphicType {}

/// Value of extension - must be one of a constrained set of the data types
/// (see [Extensibility](extensibility.html) for a list).
abstract class ValueXExtension extends DataType implements PolymorphicType {}

/// The shelf life time period can be specified using a numerical value for
/// the period of time and its unit of time measurement The unit of
/// measurement shall be specified in accordance with ISO 11240 and the
/// resulting terminology The symbol and the symbol identifier shall be
/// used.
abstract class PeriodXProductShelfLife extends DataType
    implements PolymorphicType {}

/// Either a duration for the length of the timing schedule, a range of
/// possible length, or outer bounds for start and/or end limits of the
/// timing schedule.
abstract class BoundsXTimingRepeat extends DataType
    implements PolymorphicType {}

/// The timing of the event (if this is a periodic trigger).
abstract class TimingXTriggerDefinition extends DataType
    implements PolymorphicType {}

/// A value that defines the context specified in this context of use. The
/// interpretation of the value is defined by the code.
abstract class ValueXUsageContext extends DataType implements PolymorphicType {}

/// What address or number needs to be used for a user to connect to the
/// virtual service to join. The channelType informs as to which datatype
/// is appropriate to use (requires knowledge of the specific type).
abstract class AddressXVirtualServiceDetail extends DataType
    implements PolymorphicType {}
