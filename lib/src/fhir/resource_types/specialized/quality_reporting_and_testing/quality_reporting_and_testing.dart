// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r6.dart';

part 'quality_reporting_and_testing.freezed.dart';
part 'quality_reporting_and_testing.g.dart';

/// [Measure] The Measure resource provides the definition of a quality measure.
@freezed
class Measure with Resource, _$Measure {
  /// [Measure] The Measure resource provides the definition of a quality
  ///  measure.
  const Measure._();

  /// [Measure] The Measure resource provides the definition of a quality
  ///  measure.
  ///
  /// [resourceType] This is a Measure resource
  ///
  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  ///
  /// [meta] The metadata about the resource. This is content that is
  ///  maintained by the infrastructure. Changes to the content might not
  ///  always be associated with version changes to the resource.
  ///
  /// [implicitRules] A reference to a set of rules that were followed when the
  ///  resource was constructed, and which must be understood when processing
  ///  the content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  ///
  /// [implicitRulesElement] ("_implicitRules") Extensions for implicitRules
  ///
  /// [language] The base language in which the resource is written.
  ///
  /// [languageElement] ("_language") Extensions for language
  ///
  /// [text] A human-readable narrative that contains a summary of the resource
  ///  and can be used to represent the content of the resource to a human. The
  ///  narrative need not encode all the structured data, but is required to
  ///  contain sufficient detail to make it "clinically safe" for a human to
  ///  just read the narrative. Resource definitions may define what content
  ///  should be represented in the narrative to ensure clinical safety.
  ///
  /// [contained] These resources do not have an independent existence apart
  ///  from the resource that contains them - they cannot be identified
  ///  independently, nor can they have their own independent transaction
  ///  scope. This is allowed to be a Parameters resource if and only if it is
  ///  referenced by a resource that provides context/meaning.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the resource. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  ///  is not part of the basic definition of the resource and that modifies
  ///  the understanding of the element that contains it and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of
  ///  extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  is allowed to define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension. Applications
  ///  processing a resource are required to check for modifier
  ///  extensions.Modifier extensions SHALL NOT change the meaning of any
  ///  elements on Resource or DomainResource (including cannot change the
  ///  meaning of modifierExtension itself).
  ///
  /// [url] An absolute URI that is used to identify this measure when it is
  ///  referenced in a specification, model, design or an instance; also called
  ///  its canonical identifier. This SHOULD be globally unique and SHOULD be a
  ///  literal address at which an authoritative instance of this measure is
  ///  (or will be) published. This URL can be the target of a canonical
  ///  reference. It SHALL remain the same when the measure is stored on
  ///  different servers.
  ///
  /// [urlElement] ("_url") Extensions for url
  ///
  /// [identifier] A formal identifier that is used to identify this measure
  ///  when it is represented in other formats, or referenced in a
  ///  specification, model, design or an instance.
  ///
  /// [version] The identifier that is used to identify this version of the
  ///  measure when it is referenced in a specification, model, design or
  ///  instance. This is an arbitrary value managed by the measure author and
  ///  is not expected to be globally unique. For example, it might be a
  ///  timestamp (e.g. yyyymmdd) if a managed version is not available. There
  ///  is also no expectation that versions can be placed in a lexicographical
  ///  sequence. To provide a version consistent with the Decision Support
  ///  Service specification, use the format Major.Minor.Revision (e.g. 1.0.0).
  ///  For more information on versioning knowledge assets, refer to the
  ///  Decision Support Service specification. Note that a version is required
  ///  for non-experimental active artifacts.
  ///
  /// [versionElement] ("_version") Extensions for version
  ///
  /// [versionAlgorithmString] Indicates the mechanism used to compare versions
  ///  to determine which is more current.
  ///
  /// [versionAlgorithmStringElement] ("_versionAlgorithmString") Extensions
  ///  for versionAlgorithmString
  ///
  /// [versionAlgorithmCoding] Indicates the mechanism used to compare versions
  ///  to determine which is more current.
  ///
  /// [name] A natural language name identifying the measure. This name should
  ///  be usable as an identifier for the module by machine processing
  ///  applications such as code generation.
  ///
  /// [nameElement] ("_name") Extensions for name
  ///
  /// [title] A short, descriptive, user-friendly title for the measure.
  ///
  /// [titleElement] ("_title") Extensions for title
  ///
  /// [status] The status of this measure. Enables tracking the life-cycle of
  ///  the content.
  ///
  /// [statusElement] ("_status") Extensions for status
  ///
  /// [experimental] A Boolean value to indicate that this measure is authored
  ///  for testing purposes (or education/evaluation/marketing) and is not
  ///  intended to be used for genuine usage.
  ///
  /// [experimentalElement] ("_experimental") Extensions for experimental
  ///
  /// [date] The date  (and optionally time) when the measure was last
  ///  significantly changed. The date must change when the business version
  ///  changes and it must change if the status code changes. In addition, it
  ///  should change when the substantive content of the measure changes.
  ///
  /// [dateElement] ("_date") Extensions for date
  ///
  /// [publisher] The name of the organization or individual responsible for
  ///  the release and ongoing maintenance of the measure.
  ///
  /// [publisherElement] ("_publisher") Extensions for publisher
  ///
  /// [contact] Contact details to assist a user in finding and communicating
  ///  with the publisher.
  ///
  /// [description] A free text natural language description of the measure
  ///  from a consumer's perspective.
  ///
  /// [descriptionElement] ("_description") Extensions for description
  ///
  /// [useContext] The content was developed with a focus and intent of
  ///  supporting the contexts that are listed. These contexts may be general
  ///  categories (gender, age, ...) or may be references to specific programs
  ///  (insurance plans, studies, ...) and may be used to assist with indexing
  ///  and searching for appropriate measure instances.
  ///
  /// [jurisdiction] A legal or geographic region in which the measure is
  ///  intended to be used.
  ///
  /// [purpose] Explanation of why this measure is needed and why it has been
  ///  designed as it has.
  ///
  /// [purposeElement] ("_purpose") Extensions for purpose
  ///
  /// [copyright] A copyright statement relating to the measure and/or its
  ///  contents. Copyright statements are generally legal restrictions on the
  ///  use and publishing of the measure.
  ///
  /// [copyrightElement] ("_copyright") Extensions for copyright
  ///
  /// [copyrightLabel] A short string (<50 characters), suitable for inclusion
  ///  in a page footer that identifies the copyright holder, effective period,
  ///  and optionally whether rights are resctricted. (e.g. 'All rights
  ///  reserved', 'Some rights reserved').
  ///
  /// [copyrightLabelElement] ("_copyrightLabel") Extensions for copyrightLabel
  ///
  /// [approvalDate] The date on which the resource content was approved by the
  ///  publisher. Approval happens once when the content is officially approved
  ///  for usage.
  ///
  /// [approvalDateElement] ("_approvalDate") Extensions for approvalDate
  ///
  /// [lastReviewDate] The date on which the resource content was last
  ///  reviewed. Review happens periodically after approval but does not change
  ///  the original approval date.
  ///
  /// [lastReviewDateElement] ("_lastReviewDate") Extensions for lastReviewDate
  ///
  /// [effectivePeriod] The period during which the measure content was or is
  ///  planned to be in active use.
  ///
  /// [topic] Descriptive topics related to the content of the measure. Topics
  ///  provide a high-level categorization grouping types of measures that can
  ///  be useful for filtering and searching.
  ///
  /// [author] An individiual or organization primarily involved in the
  ///  creation and maintenance of the content.
  ///
  /// [editor] An individual or organization primarily responsible for internal
  ///  coherence of the content.
  ///
  /// [reviewer] An individual or organization asserted by the publisher to be
  ///  primarily responsible for review of some aspect of the content.
  ///
  /// [endorser] An individual or organization asserted by the publisher to be
  ///  responsible for officially endorsing the content for use in some setting.
  ///
  /// [relatedArtifact] Related artifacts such as additional documentation,
  ///  justification, or bibliographic references.
  ///
  /// [subtitle] An explanatory or alternate title for the measure giving
  ///  additional information about its content.
  ///
  /// [subtitleElement] ("_subtitle") Extensions for subtitle
  ///
  /// [subjectCodeableConcept] The intended subjects for the measure. If this
  ///  element is not provided, a Patient subject is assumed, but the subject
  ///  of the measure can be anything.
  ///
  /// [subjectReference] The intended subjects for the measure. If this element
  ///  is not provided, a Patient subject is assumed, but the subject of the
  ///  measure can be anything.
  ///
  /// [basis] The population basis specifies the type of elements in the
  ///  population. For a subject-based measure, this is boolean (because the
  ///  subject and the population basis are the same, and the population
  ///  criteria define yes/no values for each individual in the population).
  ///  For measures that have a population basis that is different than the
  ///  subject, this element specifies the type of the population basis. For
  ///  example, an encounter-based measure has a subject of Patient and a
  ///  population basis of Encounter, and the population criteria all return
  ///  lists of Encounters.
  ///
  /// [basisElement] ("_basis") Extensions for basis
  ///
  /// [usage] A detailed description, from a clinical perspective, of how the
  ///  measure is used.
  ///
  /// [usageElement] ("_usage") Extensions for usage
  ///
  /// [library_] ("library") A reference to a Library resource containing the
  ///  formal logic used by the measure.
  ///
  /// [disclaimer] Notices and disclaimers regarding the use of the measure or
  ///  related to intellectual property (such as code systems) referenced by
  ///  the measure.
  ///
  /// [disclaimerElement] ("_disclaimer") Extensions for disclaimer
  ///
  /// [scoring] Indicates how the calculation is performed for the measure,
  ///  including proportion, ratio, continuous-variable, and cohort. The value
  ///  set is extensible, allowing additional measure scoring types to be
  ///  represented.
  ///
  /// [scoringUnit] Defines the expected units of measure for the measure
  ///  score. This element SHOULD be specified as a UCUM unit.
  ///
  /// [compositeScoring] If this is a composite measure, the scoring method
  ///  used to combine the component measures to determine the composite score.
  ///
  /// [type] Indicates whether the measure is used to examine a process, an
  ///  outcome over time, a patient-reported outcome, or a structure measure
  ///  such as utilization.
  ///
  /// [riskAdjustment] A description of the risk adjustment factors that may
  ///  impact the resulting score for the measure and how they may be accounted
  ///  for when computing and reporting measure results.
  ///
  /// [riskAdjustmentElement] ("_riskAdjustment") Extensions for riskAdjustment
  ///
  /// [rateAggregation] Describes how to combine the information calculated,
  ///  based on logic in each of several populations, into one summarized
  ///  result.
  ///
  /// [rateAggregationElement] ("_rateAggregation") Extensions for
  ///  rateAggregation
  ///
  /// [rationale] Provides a succinct statement of the need for the measure.
  ///  Usually includes statements pertaining to importance criterion: impact,
  ///  gap in care, and evidence.
  ///
  /// [rationaleElement] ("_rationale") Extensions for rationale
  ///
  /// [clinicalRecommendationStatement] Provides a summary of relevant clinical
  ///  guidelines or other clinical recommendations supporting the measure.
  ///
  /// [clinicalRecommendationStatementElement]
  ///  ("_clinicalRecommendationStatement") Extensions for
  ///  clinicalRecommendationStatement
  ///
  /// [improvementNotation] Information on whether an increase or decrease in
  ///  score is the preferred result (e.g., a higher score indicates better
  ///  quality OR a lower score indicates better quality OR quality is within a
  ///  range).
  ///
  /// [term] Provides a description of an individual term used within the
  ///  measure.
  ///
  /// [guidance] Additional guidance for the measure including how it can be
  ///  used in a clinical context, and the intent of the measure.
  ///
  /// [guidanceElement] ("_guidance") Extensions for guidance
  ///
  /// [group] A group of population criteria for the measure.
  ///
  /// [supplementalData] The supplemental data criteria for the measure report,
  ///  specified as either the name of a valid CQL expression within a
  ///  referenced library, or a valid FHIR Resource Path.
  ///
  const factory Measure({
    /// [resourceType] This is a Measure resource
    @Default(R6ResourceType.Measure)
    @JsonKey(unknownEnumValue: R6ResourceType.Measure)
    R6ResourceType resourceType,

    /// [id] The logical id of the resource, as used in the URL for the
    ///  resource. Once assigned, this value never changes.
    FhirId? id,

    /// [meta] The metadata about the resource. This is content that is
    ///  maintained by the infrastructure. Changes to the content might not
    ///  always be associated with version changes to the resource.
    FhirMeta? meta,

    /// [implicitRules] A reference to a set of rules that were followed when
    ///  the resource was constructed, and which must be understood when
    ///  processing the content. Often, this is a reference to an
    ///  implementation guide that defines the special rules along with other
    ///  profiles etc.
    FhirUri? implicitRules,

    /// [implicitRulesElement] ("_implicitRules") Extensions for implicitRules
    @JsonKey(name: '_implicitRules') Element? implicitRulesElement,

    /// [language] The base language in which the resource is written.
    FhirCode? language,

    /// [languageElement] ("_language") Extensions for language
    @JsonKey(name: '_language') Element? languageElement,

    /// [text] A human-readable narrative that contains a summary of the
    ///  resource and can be used to represent the content of the resource to a
    ///  human. The narrative need not encode all the structured data, but is
    ///  required to contain sufficient detail to make it "clinically safe" for
    ///  a human to just read the narrative. Resource definitions may define
    ///  what content should be represented in the narrative to ensure clinical
    ///  safety.
    Narrative? text,

    /// [contained] These resources do not have an independent existence apart
    ///  from the resource that contains them - they cannot be identified
    ///  independently, nor can they have their own independent transaction
    ///  scope. This is allowed to be a Parameters resource if and only if it
    ///  is referenced by a resource that provides context/meaning.
    List<Resource>? contained,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the resource.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information
    ///  that is not part of the basic definition of the resource and that
    ///  modifies the understanding of the element that contains it and/or the
    ///  understanding of the containing element's descendants. Usually
    ///  modifier elements provide negation or qualification. To make the use
    ///  of extensions safe and managable, there is a strict set of governance
    ///  applied to the definition and use of extensions. Though any
    ///  implementer is allowed to define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension. Applications processing a resource are required to check
    ///  for modifier extensions.Modifier extensions SHALL NOT change the
    ///  meaning of any elements on Resource or DomainResource (including
    ///  cannot change the meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [url] An absolute URI that is used to identify this measure when it is
    ///  referenced in a specification, model, design or an instance; also
    ///  called its canonical identifier. This SHOULD be globally unique and
    ///  SHOULD be a literal address at which an authoritative instance of this
    ///  measure is (or will be) published. This URL can be the target of a
    ///  canonical reference. It SHALL remain the same when the measure is
    ///  stored on different servers.
    FhirUri? url,

    /// [urlElement] ("_url") Extensions for url
    @JsonKey(name: '_url') Element? urlElement,

    /// [identifier] A formal identifier that is used to identify this measure
    ///  when it is represented in other formats, or referenced in a
    ///  specification, model, design or an instance.
    List<Identifier>? identifier,

    /// [version] The identifier that is used to identify this version of the
    ///  measure when it is referenced in a specification, model, design or
    ///  instance. This is an arbitrary value managed by the measure author and
    ///  is not expected to be globally unique. For example, it might be a
    ///  timestamp (e.g. yyyymmdd) if a managed version is not available. There
    ///  is also no expectation that versions can be placed in a
    ///  lexicographical sequence. To provide a version consistent with the
    ///  Decision Support Service specification, use the format
    ///  Major.Minor.Revision (e.g. 1.0.0). For more information on versioning
    ///  knowledge assets, refer to the Decision Support Service specification.
    ///  Note that a version is required for non-experimental active artifacts.
    String? version,

    /// [versionElement] ("_version") Extensions for version
    @JsonKey(name: '_version') Element? versionElement,

    /// [versionAlgorithmString] Indicates the mechanism used to compare
    ///  versions to determine which is more current.
    String? versionAlgorithmString,

    /// [versionAlgorithmStringElement] ("_versionAlgorithmString") Extensions
    ///  for versionAlgorithmString
    @JsonKey(name: '_versionAlgorithmString')
    Element? versionAlgorithmStringElement,

    /// [versionAlgorithmCoding] Indicates the mechanism used to compare
    ///  versions to determine which is more current.
    Coding? versionAlgorithmCoding,

    /// [name] A natural language name identifying the measure. This name
    ///  should be usable as an identifier for the module by machine processing
    ///  applications such as code generation.
    String? name,

    /// [nameElement] ("_name") Extensions for name
    @JsonKey(name: '_name') Element? nameElement,

    /// [title] A short, descriptive, user-friendly title for the measure.
    String? title,

    /// [titleElement] ("_title") Extensions for title
    @JsonKey(name: '_title') Element? titleElement,

    /// [status] The status of this measure. Enables tracking the life-cycle of
    ///  the content.
    FhirCode? status,

    /// [statusElement] ("_status") Extensions for status
    @JsonKey(name: '_status') Element? statusElement,

    /// [experimental] A Boolean value to indicate that this measure is
    ///  authored for testing purposes (or education/evaluation/marketing) and
    ///  is not intended to be used for genuine usage.
    FhirBoolean? experimental,

    /// [experimentalElement] ("_experimental") Extensions for experimental
    @JsonKey(name: '_experimental') Element? experimentalElement,

    /// [date] The date  (and optionally time) when the measure was last
    ///  significantly changed. The date must change when the business version
    ///  changes and it must change if the status code changes. In addition, it
    ///  should change when the substantive content of the measure changes.
    FhirDateTime? date,

    /// [dateElement] ("_date") Extensions for date
    @JsonKey(name: '_date') Element? dateElement,

    /// [publisher] The name of the organization or individual responsible for
    ///  the release and ongoing maintenance of the measure.
    String? publisher,

    /// [publisherElement] ("_publisher") Extensions for publisher
    @JsonKey(name: '_publisher') Element? publisherElement,

    /// [contact] Contact details to assist a user in finding and communicating
    ///  with the publisher.
    List<ContactDetail>? contact,

    /// [description] A free text natural language description of the measure
    ///  from a consumer's perspective.
    FhirMarkdown? description,

    /// [descriptionElement] ("_description") Extensions for description
    @JsonKey(name: '_description') Element? descriptionElement,

    /// [useContext] The content was developed with a focus and intent of
    ///  supporting the contexts that are listed. These contexts may be general
    ///  categories (gender, age, ...) or may be references to specific
    ///  programs (insurance plans, studies, ...) and may be used to assist
    ///  with indexing and searching for appropriate measure instances.
    List<UsageContext>? useContext,

    /// [jurisdiction] A legal or geographic region in which the measure is
    ///  intended to be used.
    List<CodeableConcept>? jurisdiction,

    /// [purpose] Explanation of why this measure is needed and why it has been
    ///  designed as it has.
    FhirMarkdown? purpose,

    /// [purposeElement] ("_purpose") Extensions for purpose
    @JsonKey(name: '_purpose') Element? purposeElement,

    /// [copyright] A copyright statement relating to the measure and/or its
    ///  contents. Copyright statements are generally legal restrictions on the
    ///  use and publishing of the measure.
    FhirMarkdown? copyright,

    /// [copyrightElement] ("_copyright") Extensions for copyright
    @JsonKey(name: '_copyright') Element? copyrightElement,

    /// [copyrightLabel] A short string (<50 characters), suitable for
    ///  inclusion in a page footer that identifies the copyright holder,
    ///  effective period, and optionally whether rights are resctricted. (e.g.
    ///  'All rights reserved', 'Some rights reserved').
    String? copyrightLabel,

    /// [copyrightLabelElement] ("_copyrightLabel") Extensions for
    ///  copyrightLabel
    @JsonKey(name: '_copyrightLabel') Element? copyrightLabelElement,

    /// [approvalDate] The date on which the resource content was approved by
    ///  the publisher. Approval happens once when the content is officially
    ///  approved for usage.
    FhirDate? approvalDate,

    /// [approvalDateElement] ("_approvalDate") Extensions for approvalDate
    @JsonKey(name: '_approvalDate') Element? approvalDateElement,

    /// [lastReviewDate] The date on which the resource content was last
    ///  reviewed. Review happens periodically after approval but does not
    ///  change the original approval date.
    FhirDate? lastReviewDate,

    /// [lastReviewDateElement] ("_lastReviewDate") Extensions for
    ///  lastReviewDate
    @JsonKey(name: '_lastReviewDate') Element? lastReviewDateElement,

    /// [effectivePeriod] The period during which the measure content was or is
    ///  planned to be in active use.
    Period? effectivePeriod,

    /// [topic] Descriptive topics related to the content of the measure.
    ///  Topics provide a high-level categorization grouping types of measures
    ///  that can be useful for filtering and searching.
    List<CodeableConcept>? topic,

    /// [author] An individiual or organization primarily involved in the
    ///  creation and maintenance of the content.
    List<ContactDetail>? author,

    /// [editor] An individual or organization primarily responsible for
    ///  internal coherence of the content.
    List<ContactDetail>? editor,

    /// [reviewer] An individual or organization asserted by the publisher to
    ///  be primarily responsible for review of some aspect of the content.
    List<ContactDetail>? reviewer,

    /// [endorser] An individual or organization asserted by the publisher to
    ///  be responsible for officially endorsing the content for use in some
    ///  setting.
    List<ContactDetail>? endorser,

    /// [relatedArtifact] Related artifacts such as additional documentation,
    ///  justification, or bibliographic references.
    List<RelatedArtifact>? relatedArtifact,

    /// [subtitle] An explanatory or alternate title for the measure giving
    ///  additional information about its content.
    String? subtitle,

    /// [subtitleElement] ("_subtitle") Extensions for subtitle
    @JsonKey(name: '_subtitle') Element? subtitleElement,

    /// [subjectCodeableConcept] The intended subjects for the measure. If this
    ///  element is not provided, a Patient subject is assumed, but the subject
    ///  of the measure can be anything.
    CodeableConcept? subjectCodeableConcept,

    /// [subjectReference] The intended subjects for the measure. If this
    ///  element is not provided, a Patient subject is assumed, but the subject
    ///  of the measure can be anything.
    Reference? subjectReference,

    /// [basis] The population basis specifies the type of elements in the
    ///  population. For a subject-based measure, this is boolean (because the
    ///  subject and the population basis are the same, and the population
    ///  criteria define yes/no values for each individual in the population).
    ///  For measures that have a population basis that is different than the
    ///  subject, this element specifies the type of the population basis. For
    ///  example, an encounter-based measure has a subject of Patient and a
    ///  population basis of Encounter, and the population criteria all return
    ///  lists of Encounters.
    FhirCode? basis,

    /// [basisElement] ("_basis") Extensions for basis
    @JsonKey(name: '_basis') Element? basisElement,

    /// [usage] A detailed description, from a clinical perspective, of how the
    ///  measure is used.
    FhirMarkdown? usage,

    /// [usageElement] ("_usage") Extensions for usage
    @JsonKey(name: '_usage') Element? usageElement,

    /// [library_] ("library") A reference to a Library resource containing the
    ///  formal logic used by the measure.
    @JsonKey(name: 'library') List<FhirCanonical>? library_,

    /// [disclaimer] Notices and disclaimers regarding the use of the measure
    ///  or related to intellectual property (such as code systems) referenced
    ///  by the measure.
    FhirMarkdown? disclaimer,

    /// [disclaimerElement] ("_disclaimer") Extensions for disclaimer
    @JsonKey(name: '_disclaimer') Element? disclaimerElement,

    /// [scoring] Indicates how the calculation is performed for the measure,
    ///  including proportion, ratio, continuous-variable, and cohort. The
    ///  value set is extensible, allowing additional measure scoring types to
    ///  be represented.
    CodeableConcept? scoring,

    /// [scoringUnit] Defines the expected units of measure for the measure
    ///  score. This element SHOULD be specified as a UCUM unit.
    CodeableConcept? scoringUnit,

    /// [compositeScoring] If this is a composite measure, the scoring method
    ///  used to combine the component measures to determine the composite
    ///  score.
    CodeableConcept? compositeScoring,

    /// [type] Indicates whether the measure is used to examine a process, an
    ///  outcome over time, a patient-reported outcome, or a structure measure
    ///  such as utilization.
    List<CodeableConcept>? type,

    /// [riskAdjustment] A description of the risk adjustment factors that may
    ///  impact the resulting score for the measure and how they may be
    ///  accounted for when computing and reporting measure results.
    FhirMarkdown? riskAdjustment,

    /// [riskAdjustmentElement] ("_riskAdjustment") Extensions for
    ///  riskAdjustment
    @JsonKey(name: '_riskAdjustment') Element? riskAdjustmentElement,

    /// [rateAggregation] Describes how to combine the information calculated,
    ///  based on logic in each of several populations, into one summarized
    ///  result.
    FhirMarkdown? rateAggregation,

    /// [rateAggregationElement] ("_rateAggregation") Extensions for
    ///  rateAggregation
    @JsonKey(name: '_rateAggregation') Element? rateAggregationElement,

    /// [rationale] Provides a succinct statement of the need for the measure.
    ///  Usually includes statements pertaining to importance criterion:
    ///  impact, gap in care, and evidence.
    FhirMarkdown? rationale,

    /// [rationaleElement] ("_rationale") Extensions for rationale
    @JsonKey(name: '_rationale') Element? rationaleElement,

    /// [clinicalRecommendationStatement] Provides a summary of relevant
    ///  clinical guidelines or other clinical recommendations supporting the
    ///  measure.
    FhirMarkdown? clinicalRecommendationStatement,

    /// [clinicalRecommendationStatementElement]
    ///  ("_clinicalRecommendationStatement") Extensions for
    ///  clinicalRecommendationStatement
    @JsonKey(name: '_clinicalRecommendationStatement')
    Element? clinicalRecommendationStatementElement,

    /// [improvementNotation] Information on whether an increase or decrease in
    ///  score is the preferred result (e.g., a higher score indicates better
    ///  quality OR a lower score indicates better quality OR quality is within
    ///  a range).
    CodeableConcept? improvementNotation,

    /// [term] Provides a description of an individual term used within the
    ///  measure.
    List<MeasureTerm>? term,

    /// [guidance] Additional guidance for the measure including how it can be
    ///  used in a clinical context, and the intent of the measure.
    FhirMarkdown? guidance,

    /// [guidanceElement] ("_guidance") Extensions for guidance
    @JsonKey(name: '_guidance') Element? guidanceElement,

    /// [group] A group of population criteria for the measure.
    List<MeasureGroup>? group,

    /// [supplementalData] The supplemental data criteria for the measure
    ///  report, specified as either the name of a valid CQL expression within
    ///  a referenced library, or a valid FHIR Resource Path.
    List<MeasureSupplementalData>? supplementalData,
  }) = _Measure;

  @override
  String get fhirType => 'Measure';

  /// Produces a Yaml formatted String version of the object
  @override
  String toYaml() => json2yaml(toJson());

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory Measure.fromYaml(dynamic yaml) => yaml is String
      ? Measure.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Measure.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Measure cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory Measure.fromJson(Map<String, dynamic> json) =>
      _$MeasureFromJson(json);

  /// Acts like a constructor, returns a [Measure], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory Measure.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MeasureFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());
}

/// [MeasureTerm] The Measure resource provides the definition of a quality
///  measure.
@freezed
class MeasureTerm with BackboneType, _$MeasureTerm {
  /// [MeasureTerm] The Measure resource provides the definition of a quality
  ///  measure.
  const MeasureTerm._();

  /// [MeasureTerm] The Measure resource provides the definition of a quality
  ///  measure.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  ///  is not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of
  ///  extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be
  ///  met as part of the definition of the extension. Applications processing
  ///  a resource are required to check for modifier extensions.Modifier
  ///  extensions SHALL NOT change the meaning of any elements on Resource or
  ///  DomainResource (including cannot change the meaning of modifierExtension
  ///  itself).
  ///
  /// [code] A codeable representation of the defined term.
  ///
  /// [definition] Provides a definition for the term as used within the
  ///  measure.
  ///
  /// [definitionElement] ("_definition") Extensions for definition
  ///
  const factory MeasureTerm({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the element.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information
    ///  that is not part of the basic definition of the element and that
    ///  modifies the understanding of the element in which it is contained
    ///  and/or the understanding of the containing element's descendants.
    ///  Usually modifier elements provide negation or qualification. To make
    ///  the use of extensions safe and managable, there is a strict set of
    ///  governance applied to the definition and use of extensions. Though any
    ///  implementer can define an extension, there is a set of requirements
    ///  that SHALL be met as part of the definition of the extension.
    ///  Applications processing a resource are required to check for modifier
    ///  extensions.Modifier extensions SHALL NOT change the meaning of any
    ///  elements on Resource or DomainResource (including cannot change the
    ///  meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [code] A codeable representation of the defined term.
    CodeableConcept? code,

    /// [definition] Provides a definition for the term as used within the
    ///  measure.
    FhirMarkdown? definition,

    /// [definitionElement] ("_definition") Extensions for definition
    @JsonKey(name: '_definition') Element? definitionElement,
  }) = _MeasureTerm;

  @override
  String get fhirType => 'MeasureTerm';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MeasureTerm.fromYaml(dynamic yaml) => yaml is String
      ? MeasureTerm.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MeasureTerm.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MeasureTerm cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory MeasureTerm.fromJson(Map<String, dynamic> json) =>
      _$MeasureTermFromJson(json);

  /// Acts like a constructor, returns a [MeasureTerm], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory MeasureTerm.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MeasureTermFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [MeasureGroup] The Measure resource provides the definition of a quality
///  measure.
@freezed
class MeasureGroup with BackboneType, _$MeasureGroup {
  /// [MeasureGroup] The Measure resource provides the definition of a quality
  ///  measure.
  const MeasureGroup._();

  /// [MeasureGroup] The Measure resource provides the definition of a quality
  ///  measure.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  ///  is not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of
  ///  extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be
  ///  met as part of the definition of the extension. Applications processing
  ///  a resource are required to check for modifier extensions.Modifier
  ///  extensions SHALL NOT change the meaning of any elements on Resource or
  ///  DomainResource (including cannot change the meaning of modifierExtension
  ///  itself).
  ///
  /// [linkId] An identifier that is unique within the Measure allowing linkage
  ///  to the equivalent item in a MeasureReport resource.
  ///
  /// [linkIdElement] ("_linkId") Extensions for linkId
  ///
  /// [code] Indicates a meaning for the group. This can be as simple as a
  ///  unique identifier, or it can establish meaning in a broader context by
  ///  drawing from a terminology, allowing groups to be correlated across
  ///  measures.
  ///
  /// [description] The human readable description of this population group.
  ///
  /// [descriptionElement] ("_description") Extensions for description
  ///
  /// [type] Indicates whether the measure is used to examine a process, an
  ///  outcome over time, a patient-reported outcome, or a structure measure
  ///  such as utilization.
  ///
  /// [subjectCodeableConcept] The intended subjects for the measure. If this
  ///  element is not provided, a Patient subject is assumed, but the subject
  ///  of the measure can be anything.
  ///
  /// [subjectReference] The intended subjects for the measure. If this element
  ///  is not provided, a Patient subject is assumed, but the subject of the
  ///  measure can be anything.
  ///
  /// [basis] The population basis specifies the type of elements in the
  ///  population. For a subject-based measure, this is boolean (because the
  ///  subject and the population basis are the same, and the population
  ///  criteria define yes/no values for each individual in the population).
  ///  For measures that have a population basis that is different than the
  ///  subject, this element specifies the type of the population basis. For
  ///  example, an encounter-based measure has a subject of Patient and a
  ///  population basis of Encounter, and the population criteria all return
  ///  lists of Encounters.
  ///
  /// [basisElement] ("_basis") Extensions for basis
  ///
  /// [scoring] Indicates how the calculation is performed for the measure,
  ///  including proportion, ratio, continuous-variable, and cohort. The value
  ///  set is extensible, allowing additional measure scoring types to be
  ///  represented.
  ///
  /// [scoringUnit] Defines the expected units of measure for the measure
  ///  score. This element SHOULD be specified as a UCUM unit.
  ///
  /// [rateAggregation] Describes how to combine the information calculated,
  ///  based on logic in each of several populations, into one summarized
  ///  result.
  ///
  /// [rateAggregationElement] ("_rateAggregation") Extensions for
  ///  rateAggregation
  ///
  /// [improvementNotation] Information on whether an increase or decrease in
  ///  score is the preferred result (e.g., a higher score indicates better
  ///  quality OR a lower score indicates better quality OR quality is within a
  ///  range).
  ///
  /// [library_] ("library") A reference to a Library resource containing the
  ///  formal logic used by the measure group.
  ///
  /// [population] A population criteria for the measure.
  ///
  /// [stratifier] The stratifier criteria for the measure report, specified as
  ///  either the name of a valid CQL expression defined within a referenced
  ///  library or a valid FHIR Resource Path.
  ///
  const factory MeasureGroup({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the element.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information
    ///  that is not part of the basic definition of the element and that
    ///  modifies the understanding of the element in which it is contained
    ///  and/or the understanding of the containing element's descendants.
    ///  Usually modifier elements provide negation or qualification. To make
    ///  the use of extensions safe and managable, there is a strict set of
    ///  governance applied to the definition and use of extensions. Though any
    ///  implementer can define an extension, there is a set of requirements
    ///  that SHALL be met as part of the definition of the extension.
    ///  Applications processing a resource are required to check for modifier
    ///  extensions.Modifier extensions SHALL NOT change the meaning of any
    ///  elements on Resource or DomainResource (including cannot change the
    ///  meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [linkId] An identifier that is unique within the Measure allowing
    ///  linkage to the equivalent item in a MeasureReport resource.
    String? linkId,

    /// [linkIdElement] ("_linkId") Extensions for linkId
    @JsonKey(name: '_linkId') Element? linkIdElement,

    /// [code] Indicates a meaning for the group. This can be as simple as a
    ///  unique identifier, or it can establish meaning in a broader context by
    ///  drawing from a terminology, allowing groups to be correlated across
    ///  measures.
    CodeableConcept? code,

    /// [description] The human readable description of this population group.
    FhirMarkdown? description,

    /// [descriptionElement] ("_description") Extensions for description
    @JsonKey(name: '_description') Element? descriptionElement,

    /// [type] Indicates whether the measure is used to examine a process, an
    ///  outcome over time, a patient-reported outcome, or a structure measure
    ///  such as utilization.
    List<CodeableConcept>? type,

    /// [subjectCodeableConcept] The intended subjects for the measure. If this
    ///  element is not provided, a Patient subject is assumed, but the subject
    ///  of the measure can be anything.
    CodeableConcept? subjectCodeableConcept,

    /// [subjectReference] The intended subjects for the measure. If this
    ///  element is not provided, a Patient subject is assumed, but the subject
    ///  of the measure can be anything.
    Reference? subjectReference,

    /// [basis] The population basis specifies the type of elements in the
    ///  population. For a subject-based measure, this is boolean (because the
    ///  subject and the population basis are the same, and the population
    ///  criteria define yes/no values for each individual in the population).
    ///  For measures that have a population basis that is different than the
    ///  subject, this element specifies the type of the population basis. For
    ///  example, an encounter-based measure has a subject of Patient and a
    ///  population basis of Encounter, and the population criteria all return
    ///  lists of Encounters.
    FhirCode? basis,

    /// [basisElement] ("_basis") Extensions for basis
    @JsonKey(name: '_basis') Element? basisElement,

    /// [scoring] Indicates how the calculation is performed for the measure,
    ///  including proportion, ratio, continuous-variable, and cohort. The
    ///  value set is extensible, allowing additional measure scoring types to
    ///  be represented.
    CodeableConcept? scoring,

    /// [scoringUnit] Defines the expected units of measure for the measure
    ///  score. This element SHOULD be specified as a UCUM unit.
    CodeableConcept? scoringUnit,

    /// [rateAggregation] Describes how to combine the information calculated,
    ///  based on logic in each of several populations, into one summarized
    ///  result.
    FhirMarkdown? rateAggregation,

    /// [rateAggregationElement] ("_rateAggregation") Extensions for
    ///  rateAggregation
    @JsonKey(name: '_rateAggregation') Element? rateAggregationElement,

    /// [improvementNotation] Information on whether an increase or decrease in
    ///  score is the preferred result (e.g., a higher score indicates better
    ///  quality OR a lower score indicates better quality OR quality is within
    ///  a range).
    CodeableConcept? improvementNotation,

    /// [library_] ("library") A reference to a Library resource containing the
    ///  formal logic used by the measure group.
    @JsonKey(name: 'library') List<FhirCanonical>? library_,

    /// [population] A population criteria for the measure.
    List<MeasurePopulation>? population,

    /// [stratifier] The stratifier criteria for the measure report, specified
    ///  as either the name of a valid CQL expression defined within a
    ///  referenced library or a valid FHIR Resource Path.
    List<MeasureStratifier>? stratifier,
  }) = _MeasureGroup;

  @override
  String get fhirType => 'MeasureGroup';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MeasureGroup.fromYaml(dynamic yaml) => yaml is String
      ? MeasureGroup.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MeasureGroup.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MeasureGroup cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory MeasureGroup.fromJson(Map<String, dynamic> json) =>
      _$MeasureGroupFromJson(json);

  /// Acts like a constructor, returns a [MeasureGroup], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory MeasureGroup.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MeasureGroupFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [MeasurePopulation] The Measure resource provides the definition of a
///  quality measure.
@freezed
class MeasurePopulation with BackboneType, _$MeasurePopulation {
  /// [MeasurePopulation] The Measure resource provides the definition of a
  ///  quality measure.
  const MeasurePopulation._();

  /// [MeasurePopulation] The Measure resource provides the definition of a
  ///  quality measure.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  ///  is not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of
  ///  extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be
  ///  met as part of the definition of the extension. Applications processing
  ///  a resource are required to check for modifier extensions.Modifier
  ///  extensions SHALL NOT change the meaning of any elements on Resource or
  ///  DomainResource (including cannot change the meaning of modifierExtension
  ///  itself).
  ///
  /// [linkId] An identifier that is unique within the Measure allowing linkage
  ///  to the equivalent population in a MeasureReport resource.
  ///
  /// [linkIdElement] ("_linkId") Extensions for linkId
  ///
  /// [code] The type of population criteria.
  ///
  /// [description] The human readable description of this population criteria.
  ///
  /// [descriptionElement] ("_description") Extensions for description
  ///
  /// [criteria] An expression that specifies the criteria for the population,
  ///  typically the name of an expression in a library.
  ///
  /// [groupDefinition] A Group resource that defines this population as a set
  ///  of characteristics.
  ///
  /// [inputPopulationId] The id of a population element in this measure that
  ///  provides the input for this population criteria. In most cases, the
  ///  scoring structure of the measure implies specific relationships (e.g.
  ///  the Numerator uses the Denominator as the source in a proportion
  ///  scoring). In some cases, however, multiple possible choices exist and
  ///  must be resolved explicitly. For example in a ratio measure with
  ///  multiple initial populations, the denominator must specify which
  ///  population should be used as the starting point.
  ///
  /// [inputPopulationIdElement] ("_inputPopulationId") Extensions for
  ///  inputPopulationId
  ///
  /// [aggregateMethod] Specifies which method should be used to aggregate
  ///  measure observation values. For most scoring types, this is implied by
  ///  scoring (e.g. a proportion measure counts members of the populations).
  ///  For continuous variables, however, this information must be specified to
  ///  ensure correct calculation.
  ///
  const factory MeasurePopulation({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the element.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information
    ///  that is not part of the basic definition of the element and that
    ///  modifies the understanding of the element in which it is contained
    ///  and/or the understanding of the containing element's descendants.
    ///  Usually modifier elements provide negation or qualification. To make
    ///  the use of extensions safe and managable, there is a strict set of
    ///  governance applied to the definition and use of extensions. Though any
    ///  implementer can define an extension, there is a set of requirements
    ///  that SHALL be met as part of the definition of the extension.
    ///  Applications processing a resource are required to check for modifier
    ///  extensions.Modifier extensions SHALL NOT change the meaning of any
    ///  elements on Resource or DomainResource (including cannot change the
    ///  meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [linkId] An identifier that is unique within the Measure allowing
    ///  linkage to the equivalent population in a MeasureReport resource.
    String? linkId,

    /// [linkIdElement] ("_linkId") Extensions for linkId
    @JsonKey(name: '_linkId') Element? linkIdElement,

    /// [code] The type of population criteria.
    CodeableConcept? code,

    /// [description] The human readable description of this population
    ///  criteria.
    FhirMarkdown? description,

    /// [descriptionElement] ("_description") Extensions for description
    @JsonKey(name: '_description') Element? descriptionElement,

    /// [criteria] An expression that specifies the criteria for the
    ///  population, typically the name of an expression in a library.
    FhirExpression? criteria,

    /// [groupDefinition] A Group resource that defines this population as a
    ///  set of characteristics.
    Reference? groupDefinition,

    /// [inputPopulationId] The id of a population element in this measure that
    ///  provides the input for this population criteria. In most cases, the
    ///  scoring structure of the measure implies specific relationships (e.g.
    ///  the Numerator uses the Denominator as the source in a proportion
    ///  scoring). In some cases, however, multiple possible choices exist and
    ///  must be resolved explicitly. For example in a ratio measure with
    ///  multiple initial populations, the denominator must specify which
    ///  population should be used as the starting point.
    String? inputPopulationId,

    /// [inputPopulationIdElement] ("_inputPopulationId") Extensions for
    ///  inputPopulationId
    @JsonKey(name: '_inputPopulationId') Element? inputPopulationIdElement,

    /// [aggregateMethod] Specifies which method should be used to aggregate
    ///  measure observation values. For most scoring types, this is implied by
    ///  scoring (e.g. a proportion measure counts members of the populations).
    ///  For continuous variables, however, this information must be specified
    ///  to ensure correct calculation.
    CodeableConcept? aggregateMethod,
  }) = _MeasurePopulation;

  @override
  String get fhirType => 'MeasurePopulation';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MeasurePopulation.fromYaml(dynamic yaml) => yaml is String
      ? MeasurePopulation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MeasurePopulation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MeasurePopulation cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory MeasurePopulation.fromJson(Map<String, dynamic> json) =>
      _$MeasurePopulationFromJson(json);

  /// Acts like a constructor, returns a [MeasurePopulation], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory MeasurePopulation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MeasurePopulationFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [MeasureStratifier] The Measure resource provides the definition of a
///  quality measure.
@freezed
class MeasureStratifier with BackboneType, _$MeasureStratifier {
  /// [MeasureStratifier] The Measure resource provides the definition of a
  ///  quality measure.
  const MeasureStratifier._();

  /// [MeasureStratifier] The Measure resource provides the definition of a
  ///  quality measure.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  ///  is not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of
  ///  extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be
  ///  met as part of the definition of the extension. Applications processing
  ///  a resource are required to check for modifier extensions.Modifier
  ///  extensions SHALL NOT change the meaning of any elements on Resource or
  ///  DomainResource (including cannot change the meaning of modifierExtension
  ///  itself).
  ///
  /// [linkId] An identifier that is unique within the Measure allowing linkage
  ///  to the equivalent item in a MeasureReport resource.
  ///
  /// [linkIdElement] ("_linkId") Extensions for linkId
  ///
  /// [code] Indicates a meaning for the stratifier. This can be as simple as a
  ///  unique identifier, or it can establish meaning in a broader context by
  ///  drawing from a terminology, allowing stratifiers to be correlated across
  ///  measures.
  ///
  /// [description] The human readable description of this stratifier criteria.
  ///
  /// [descriptionElement] ("_description") Extensions for description
  ///
  /// [criteria] An expression that specifies the criteria for the stratifier.
  ///  This is typically the name of an expression defined within a referenced
  ///  library, but it may also be a path to a stratifier element.
  ///
  /// [groupDefinition] A Group resource that defines this population as a set
  ///  of characteristics.
  ///
  /// [component] A component of the stratifier criteria for the measure
  ///  report, specified as either the name of a valid CQL expression defined
  ///  within a referenced library or a valid FHIR Resource Path.
  ///
  const factory MeasureStratifier({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the element.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information
    ///  that is not part of the basic definition of the element and that
    ///  modifies the understanding of the element in which it is contained
    ///  and/or the understanding of the containing element's descendants.
    ///  Usually modifier elements provide negation or qualification. To make
    ///  the use of extensions safe and managable, there is a strict set of
    ///  governance applied to the definition and use of extensions. Though any
    ///  implementer can define an extension, there is a set of requirements
    ///  that SHALL be met as part of the definition of the extension.
    ///  Applications processing a resource are required to check for modifier
    ///  extensions.Modifier extensions SHALL NOT change the meaning of any
    ///  elements on Resource or DomainResource (including cannot change the
    ///  meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [linkId] An identifier that is unique within the Measure allowing
    ///  linkage to the equivalent item in a MeasureReport resource.
    String? linkId,

    /// [linkIdElement] ("_linkId") Extensions for linkId
    @JsonKey(name: '_linkId') Element? linkIdElement,

    /// [code] Indicates a meaning for the stratifier. This can be as simple as
    ///  a unique identifier, or it can establish meaning in a broader context
    ///  by drawing from a terminology, allowing stratifiers to be correlated
    ///  across measures.
    CodeableConcept? code,

    /// [description] The human readable description of this stratifier
    ///  criteria.
    FhirMarkdown? description,

    /// [descriptionElement] ("_description") Extensions for description
    @JsonKey(name: '_description') Element? descriptionElement,

    /// [criteria] An expression that specifies the criteria for the
    ///  stratifier. This is typically the name of an expression defined within
    ///  a referenced library, but it may also be a path to a stratifier
    ///  element.
    FhirExpression? criteria,

    /// [groupDefinition] A Group resource that defines this population as a
    ///  set of characteristics.
    Reference? groupDefinition,

    /// [component] A component of the stratifier criteria for the measure
    ///  report, specified as either the name of a valid CQL expression defined
    ///  within a referenced library or a valid FHIR Resource Path.
    List<MeasureComponent>? component,
  }) = _MeasureStratifier;

  @override
  String get fhirType => 'MeasureStratifier';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MeasureStratifier.fromYaml(dynamic yaml) => yaml is String
      ? MeasureStratifier.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MeasureStratifier.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MeasureStratifier cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory MeasureStratifier.fromJson(Map<String, dynamic> json) =>
      _$MeasureStratifierFromJson(json);

  /// Acts like a constructor, returns a [MeasureStratifier], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory MeasureStratifier.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MeasureStratifierFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [MeasureComponent] The Measure resource provides the definition of a
///  quality measure.
@freezed
class MeasureComponent with BackboneType, _$MeasureComponent {
  /// [MeasureComponent] The Measure resource provides the definition of a
  ///  quality measure.
  const MeasureComponent._();

  /// [MeasureComponent] The Measure resource provides the definition of a
  ///  quality measure.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  ///  is not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of
  ///  extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be
  ///  met as part of the definition of the extension. Applications processing
  ///  a resource are required to check for modifier extensions.Modifier
  ///  extensions SHALL NOT change the meaning of any elements on Resource or
  ///  DomainResource (including cannot change the meaning of modifierExtension
  ///  itself).
  ///
  /// [linkId] An identifier that is unique within the Measure allowing linkage
  ///  to the equivalent item in a MeasureReport resource.
  ///
  /// [linkIdElement] ("_linkId") Extensions for linkId
  ///
  /// [code] Indicates a meaning for the stratifier component. This can be as
  ///  simple as a unique identifier, or it can establish meaning in a broader
  ///  context by drawing from a terminology, allowing stratifiers to be
  ///  correlated across measures.
  ///
  /// [description] The human readable description of this stratifier criteria
  ///  component.
  ///
  /// [descriptionElement] ("_description") Extensions for description
  ///
  /// [criteria] An expression that specifies the criteria for this component
  ///  of the stratifier. This is typically the name of an expression defined
  ///  within a referenced library, but it may also be a path to a stratifier
  ///  element.
  ///
  /// [groupDefinition] A Group resource that defines this population as a set
  ///  of characteristics.
  ///
  const factory MeasureComponent({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the element.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information
    ///  that is not part of the basic definition of the element and that
    ///  modifies the understanding of the element in which it is contained
    ///  and/or the understanding of the containing element's descendants.
    ///  Usually modifier elements provide negation or qualification. To make
    ///  the use of extensions safe and managable, there is a strict set of
    ///  governance applied to the definition and use of extensions. Though any
    ///  implementer can define an extension, there is a set of requirements
    ///  that SHALL be met as part of the definition of the extension.
    ///  Applications processing a resource are required to check for modifier
    ///  extensions.Modifier extensions SHALL NOT change the meaning of any
    ///  elements on Resource or DomainResource (including cannot change the
    ///  meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [linkId] An identifier that is unique within the Measure allowing
    ///  linkage to the equivalent item in a MeasureReport resource.
    String? linkId,

    /// [linkIdElement] ("_linkId") Extensions for linkId
    @JsonKey(name: '_linkId') Element? linkIdElement,

    /// [code] Indicates a meaning for the stratifier component. This can be as
    ///  simple as a unique identifier, or it can establish meaning in a
    ///  broader context by drawing from a terminology, allowing stratifiers to
    ///  be correlated across measures.
    CodeableConcept? code,

    /// [description] The human readable description of this stratifier
    ///  criteria component.
    FhirMarkdown? description,

    /// [descriptionElement] ("_description") Extensions for description
    @JsonKey(name: '_description') Element? descriptionElement,

    /// [criteria] An expression that specifies the criteria for this component
    ///  of the stratifier. This is typically the name of an expression defined
    ///  within a referenced library, but it may also be a path to a stratifier
    ///  element.
    FhirExpression? criteria,

    /// [groupDefinition] A Group resource that defines this population as a
    ///  set of characteristics.
    Reference? groupDefinition,
  }) = _MeasureComponent;

  @override
  String get fhirType => 'MeasureComponent';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MeasureComponent.fromYaml(dynamic yaml) => yaml is String
      ? MeasureComponent.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MeasureComponent.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MeasureComponent cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory MeasureComponent.fromJson(Map<String, dynamic> json) =>
      _$MeasureComponentFromJson(json);

  /// Acts like a constructor, returns a [MeasureComponent], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory MeasureComponent.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MeasureComponentFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [MeasureSupplementalData] The Measure resource provides the definition of a
///  quality measure.
@freezed
class MeasureSupplementalData with BackboneType, _$MeasureSupplementalData {
  /// [MeasureSupplementalData] The Measure resource provides the definition of
  ///  a quality measure.
  const MeasureSupplementalData._();

  /// [MeasureSupplementalData] The Measure resource provides the definition of
  ///  a quality measure.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  ///  is not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of
  ///  extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be
  ///  met as part of the definition of the extension. Applications processing
  ///  a resource are required to check for modifier extensions.Modifier
  ///  extensions SHALL NOT change the meaning of any elements on Resource or
  ///  DomainResource (including cannot change the meaning of modifierExtension
  ///  itself).
  ///
  /// [linkId] An identifier that is unique within the Measure allowing linkage
  ///  to the equivalent item in a MeasureReport resource.
  ///
  /// [linkIdElement] ("_linkId") Extensions for linkId
  ///
  /// [code] Indicates a meaning for the supplemental data. This can be as
  ///  simple as a unique identifier, or it can establish meaning in a broader
  ///  context by drawing from a terminology, allowing supplemental data to be
  ///  correlated across measures.
  ///
  /// [usage] An indicator of the intended usage for the supplemental data
  ///  element. Supplemental data indicates the data is additional information
  ///  requested to augment the measure information. Risk adjustment factor
  ///  indicates the data is additional information used to calculate risk
  ///  adjustment factors when applying a risk model to the measure calculation.
  ///
  /// [description] The human readable description of this supplemental data.
  ///
  /// [descriptionElement] ("_description") Extensions for description
  ///
  /// [criteria] The criteria for the supplemental data. This is typically the
  ///  name of a valid expression defined within a referenced library, but it
  ///  may also be a path to a specific data element. The criteria defines the
  ///  data to be returned for this element.
  ///
  const factory MeasureSupplementalData({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the element.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information
    ///  that is not part of the basic definition of the element and that
    ///  modifies the understanding of the element in which it is contained
    ///  and/or the understanding of the containing element's descendants.
    ///  Usually modifier elements provide negation or qualification. To make
    ///  the use of extensions safe and managable, there is a strict set of
    ///  governance applied to the definition and use of extensions. Though any
    ///  implementer can define an extension, there is a set of requirements
    ///  that SHALL be met as part of the definition of the extension.
    ///  Applications processing a resource are required to check for modifier
    ///  extensions.Modifier extensions SHALL NOT change the meaning of any
    ///  elements on Resource or DomainResource (including cannot change the
    ///  meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [linkId] An identifier that is unique within the Measure allowing
    ///  linkage to the equivalent item in a MeasureReport resource.
    String? linkId,

    /// [linkIdElement] ("_linkId") Extensions for linkId
    @JsonKey(name: '_linkId') Element? linkIdElement,

    /// [code] Indicates a meaning for the supplemental data. This can be as
    ///  simple as a unique identifier, or it can establish meaning in a
    ///  broader context by drawing from a terminology, allowing supplemental
    ///  data to be correlated across measures.
    CodeableConcept? code,

    /// [usage] An indicator of the intended usage for the supplemental data
    ///  element. Supplemental data indicates the data is additional
    ///  information requested to augment the measure information. Risk
    ///  adjustment factor indicates the data is additional information used to
    ///  calculate risk adjustment factors when applying a risk model to the
    ///  measure calculation.
    List<CodeableConcept>? usage,

    /// [description] The human readable description of this supplemental data.
    FhirMarkdown? description,

    /// [descriptionElement] ("_description") Extensions for description
    @JsonKey(name: '_description') Element? descriptionElement,

    /// [criteria] The criteria for the supplemental data. This is typically
    ///  the name of a valid expression defined within a referenced library,
    ///  but it may also be a path to a specific data element. The criteria
    ///  defines the data to be returned for this element.
    required FhirExpression criteria,
  }) = _MeasureSupplementalData;

  @override
  String get fhirType => 'MeasureSupplementalData';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MeasureSupplementalData.fromYaml(dynamic yaml) => yaml is String
      ? MeasureSupplementalData.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MeasureSupplementalData.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MeasureSupplementalData cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory MeasureSupplementalData.fromJson(Map<String, dynamic> json) =>
      _$MeasureSupplementalDataFromJson(json);

  /// Acts like a constructor, returns a [MeasureSupplementalData], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory MeasureSupplementalData.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MeasureSupplementalDataFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [MeasureReport] The MeasureReport resource contains the results of the
///  calculation of a measure; and optionally a reference to the resources
///  involved in that calculation.
@freezed
class MeasureReport with Resource, _$MeasureReport {
  /// [MeasureReport] The MeasureReport resource contains the results of the
  ///  calculation of a measure; and optionally a reference to the resources
  ///  involved in that calculation.
  const MeasureReport._();

  /// [MeasureReport] The MeasureReport resource contains the results of the
  ///  calculation of a measure; and optionally a reference to the resources
  ///  involved in that calculation.
  ///
  /// [resourceType] This is a MeasureReport resource
  ///
  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  ///
  /// [meta] The metadata about the resource. This is content that is
  ///  maintained by the infrastructure. Changes to the content might not
  ///  always be associated with version changes to the resource.
  ///
  /// [implicitRules] A reference to a set of rules that were followed when the
  ///  resource was constructed, and which must be understood when processing
  ///  the content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  ///
  /// [implicitRulesElement] ("_implicitRules") Extensions for implicitRules
  ///
  /// [language] The base language in which the resource is written.
  ///
  /// [languageElement] ("_language") Extensions for language
  ///
  /// [text] A human-readable narrative that contains a summary of the resource
  ///  and can be used to represent the content of the resource to a human. The
  ///  narrative need not encode all the structured data, but is required to
  ///  contain sufficient detail to make it "clinically safe" for a human to
  ///  just read the narrative. Resource definitions may define what content
  ///  should be represented in the narrative to ensure clinical safety.
  ///
  /// [contained] These resources do not have an independent existence apart
  ///  from the resource that contains them - they cannot be identified
  ///  independently, nor can they have their own independent transaction
  ///  scope. This is allowed to be a Parameters resource if and only if it is
  ///  referenced by a resource that provides context/meaning.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the resource. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  ///  is not part of the basic definition of the resource and that modifies
  ///  the understanding of the element that contains it and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of
  ///  extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  is allowed to define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension. Applications
  ///  processing a resource are required to check for modifier
  ///  extensions.Modifier extensions SHALL NOT change the meaning of any
  ///  elements on Resource or DomainResource (including cannot change the
  ///  meaning of modifierExtension itself).
  ///
  /// [identifier] A formal identifier that is used to identify this
  ///  MeasureReport when it is represented in other formats or referenced in a
  ///  specification, model, design or an instance.
  ///
  /// [status] The MeasureReport status. No data will be available until the
  ///  MeasureReport status is complete.
  ///
  /// [statusElement] ("_status") Extensions for status
  ///
  /// [type] The type of measure report. This may be an individual report,
  ///  which provides the score for the measure for an individual member of the
  ///  population; a subject-listing, which returns the list of members that
  ///  meet the various criteria in the measure; a summary report, which
  ///  returns a population count for each of the criteria in the measure; or a
  ///  data-collection, which enables the MeasureReport to be used to exchange
  ///  the data-of-interest for a quality measure.
  ///
  /// [typeElement] ("_type") Extensions for type
  ///
  /// [dataUpdateType] Indicates whether the data submitted in a data-exchange
  ///  report represents a snapshot or incremental update. A snapshot update
  ///  replaces all previously submitted data for the receiver, whereas an
  ///  incremental update represents only updated and/or changed data and
  ///  should be applied as a differential update to the existing submitted
  ///  data for the receiver.
  ///
  /// [dataUpdateTypeElement] ("_dataUpdateType") Extensions for dataUpdateType
  ///
  /// [measure] A reference to the Measure that was calculated to produce this
  ///  report.
  ///
  /// [subject] Optional subject identifying the individual or individuals the
  ///  report is for.
  ///
  /// [date] The date this measure was calculated.
  ///
  /// [dateElement] ("_date") Extensions for date
  ///
  /// [reporter] The individual or organization that is reporting the data.
  ///
  /// [reportingVendor] A reference to the vendor who queried the data,
  ///  calculated results and/or generated the report. The ‘reporting vendor’
  ///  is intended to represent the submitting entity when it is not the same
  ///  as the reporting entity. This extension is used when the Receiver is
  ///  interested in getting vendor information in the report.
  ///
  /// [location] A reference to the location for which the data is being
  ///  reported.
  ///
  /// [period] The reporting period for which the report was calculated.
  ///
  /// [inputParameters] A reference to a Parameters resource (typically
  ///  represented using a contained resource) that represents any input
  ///  parameters that were provided to the operation that generated the report.
  ///
  /// [scoring] Indicates how the calculation is performed for the measure,
  ///  including proportion, ratio, continuous-variable, and cohort. The value
  ///  set is extensible, allowing additional measure scoring types to be
  ///  represented. It is expected to be the same as the scoring element on the
  ///  referenced Measure.
  ///
  /// [improvementNotation] Whether improvement in the measure is noted by an
  ///  increase or decrease in the measure score.
  ///
  /// [group] The results of the calculation, one for each population group in
  ///  the measure.
  ///
  /// [supplementalData] A reference to a Resource that represents additional
  ///  information collected for the report. If the value of the supplemental
  ///  data is not a Resource (i.e. evaluating the supplementalData expression
  ///  for this case in the measure results in a value that is not a FHIR
  ///  Resource), it is reported as a reference to a contained Observation
  ///  resource.
  ///
  /// [evaluatedResource] Evaluated resources are used to capture what data was
  ///  involved in the calculation of a measure. This usage is only allowed for
  ///  individual reports to ensure that the size of the MeasureReport resource
  ///  is bounded.
  ///
  const factory MeasureReport({
    /// [resourceType] This is a MeasureReport resource
    @Default(R6ResourceType.MeasureReport)
    @JsonKey(unknownEnumValue: R6ResourceType.MeasureReport)
    R6ResourceType resourceType,

    /// [id] The logical id of the resource, as used in the URL for the
    ///  resource. Once assigned, this value never changes.
    FhirId? id,

    /// [meta] The metadata about the resource. This is content that is
    ///  maintained by the infrastructure. Changes to the content might not
    ///  always be associated with version changes to the resource.
    FhirMeta? meta,

    /// [implicitRules] A reference to a set of rules that were followed when
    ///  the resource was constructed, and which must be understood when
    ///  processing the content. Often, this is a reference to an
    ///  implementation guide that defines the special rules along with other
    ///  profiles etc.
    FhirUri? implicitRules,

    /// [implicitRulesElement] ("_implicitRules") Extensions for implicitRules
    @JsonKey(name: '_implicitRules') Element? implicitRulesElement,

    /// [language] The base language in which the resource is written.
    FhirCode? language,

    /// [languageElement] ("_language") Extensions for language
    @JsonKey(name: '_language') Element? languageElement,

    /// [text] A human-readable narrative that contains a summary of the
    ///  resource and can be used to represent the content of the resource to a
    ///  human. The narrative need not encode all the structured data, but is
    ///  required to contain sufficient detail to make it "clinically safe" for
    ///  a human to just read the narrative. Resource definitions may define
    ///  what content should be represented in the narrative to ensure clinical
    ///  safety.
    Narrative? text,

    /// [contained] These resources do not have an independent existence apart
    ///  from the resource that contains them - they cannot be identified
    ///  independently, nor can they have their own independent transaction
    ///  scope. This is allowed to be a Parameters resource if and only if it
    ///  is referenced by a resource that provides context/meaning.
    List<Resource>? contained,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the resource.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information
    ///  that is not part of the basic definition of the resource and that
    ///  modifies the understanding of the element that contains it and/or the
    ///  understanding of the containing element's descendants. Usually
    ///  modifier elements provide negation or qualification. To make the use
    ///  of extensions safe and managable, there is a strict set of governance
    ///  applied to the definition and use of extensions. Though any
    ///  implementer is allowed to define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension. Applications processing a resource are required to check
    ///  for modifier extensions.Modifier extensions SHALL NOT change the
    ///  meaning of any elements on Resource or DomainResource (including
    ///  cannot change the meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [identifier] A formal identifier that is used to identify this
    ///  MeasureReport when it is represented in other formats or referenced in
    ///  a specification, model, design or an instance.
    List<Identifier>? identifier,

    /// [status] The MeasureReport status. No data will be available until the
    ///  MeasureReport status is complete.
    FhirCode? status,

    /// [statusElement] ("_status") Extensions for status
    @JsonKey(name: '_status') Element? statusElement,

    /// [type] The type of measure report. This may be an individual report,
    ///  which provides the score for the measure for an individual member of
    ///  the population; a subject-listing, which returns the list of members
    ///  that meet the various criteria in the measure; a summary report, which
    ///  returns a population count for each of the criteria in the measure; or
    ///  a data-collection, which enables the MeasureReport to be used to
    ///  exchange the data-of-interest for a quality measure.
    FhirCode? type,

    /// [typeElement] ("_type") Extensions for type
    @JsonKey(name: '_type') Element? typeElement,

    /// [dataUpdateType] Indicates whether the data submitted in a
    ///  data-exchange report represents a snapshot or incremental update. A
    ///  snapshot update replaces all previously submitted data for the
    ///  receiver, whereas an incremental update represents only updated and/or
    ///  changed data and should be applied as a differential update to the
    ///  existing submitted data for the receiver.
    FhirCode? dataUpdateType,

    /// [dataUpdateTypeElement] ("_dataUpdateType") Extensions for
    ///  dataUpdateType
    @JsonKey(name: '_dataUpdateType') Element? dataUpdateTypeElement,

    /// [measure] A reference to the Measure that was calculated to produce
    ///  this report.
    FhirCanonical? measure,

    /// [subject] Optional subject identifying the individual or individuals
    ///  the report is for.
    Reference? subject,

    /// [date] The date this measure was calculated.
    FhirDateTime? date,

    /// [dateElement] ("_date") Extensions for date
    @JsonKey(name: '_date') Element? dateElement,

    /// [reporter] The individual or organization that is reporting the data.
    Reference? reporter,

    /// [reportingVendor] A reference to the vendor who queried the data,
    ///  calculated results and/or generated the report. The ‘reporting vendor’
    ///  is intended to represent the submitting entity when it is not the same
    ///  as the reporting entity. This extension is used when the Receiver is
    ///  interested in getting vendor information in the report.
    Reference? reportingVendor,

    /// [location] A reference to the location for which the data is being
    ///  reported.
    Reference? location,

    /// [period] The reporting period for which the report was calculated.
    required Period period,

    /// [inputParameters] A reference to a Parameters resource (typically
    ///  represented using a contained resource) that represents any input
    ///  parameters that were provided to the operation that generated the
    ///  report.
    Reference? inputParameters,

    /// [scoring] Indicates how the calculation is performed for the measure,
    ///  including proportion, ratio, continuous-variable, and cohort. The
    ///  value set is extensible, allowing additional measure scoring types to
    ///  be represented. It is expected to be the same as the scoring element
    ///  on the referenced Measure.
    CodeableConcept? scoring,

    /// [improvementNotation] Whether improvement in the measure is noted by an
    ///  increase or decrease in the measure score.
    CodeableConcept? improvementNotation,

    /// [group] The results of the calculation, one for each population group
    ///  in the measure.
    List<MeasureReportGroup>? group,

    /// [supplementalData] A reference to a Resource that represents additional
    ///  information collected for the report. If the value of the supplemental
    ///  data is not a Resource (i.e. evaluating the supplementalData
    ///  expression for this case in the measure results in a value that is not
    ///  a FHIR Resource), it is reported as a reference to a contained
    ///  Observation resource.
    List<Reference>? supplementalData,

    /// [evaluatedResource] Evaluated resources are used to capture what data
    ///  was involved in the calculation of a measure. This usage is only
    ///  allowed for individual reports to ensure that the size of the
    ///  MeasureReport resource is bounded.
    List<Reference>? evaluatedResource,
  }) = _MeasureReport;

  @override
  String get fhirType => 'MeasureReport';

  /// Produces a Yaml formatted String version of the object
  @override
  String toYaml() => json2yaml(toJson());

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MeasureReport.fromYaml(dynamic yaml) => yaml is String
      ? MeasureReport.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MeasureReport.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MeasureReport cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory MeasureReport.fromJson(Map<String, dynamic> json) =>
      _$MeasureReportFromJson(json);

  /// Acts like a constructor, returns a [MeasureReport], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory MeasureReport.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MeasureReportFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());
}

/// [MeasureReportGroup] The MeasureReport resource contains the results of the
///  calculation of a measure; and optionally a reference to the resources
///  involved in that calculation.
@freezed
class MeasureReportGroup with BackboneType, _$MeasureReportGroup {
  /// [MeasureReportGroup] The MeasureReport resource contains the results of
  ///  the calculation of a measure; and optionally a reference to the
  ///  resources involved in that calculation.
  const MeasureReportGroup._();

  /// [MeasureReportGroup] The MeasureReport resource contains the results of
  ///  the calculation of a measure; and optionally a reference to the
  ///  resources involved in that calculation.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  ///  is not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of
  ///  extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be
  ///  met as part of the definition of the extension. Applications processing
  ///  a resource are required to check for modifier extensions.Modifier
  ///  extensions SHALL NOT change the meaning of any elements on Resource or
  ///  DomainResource (including cannot change the meaning of modifierExtension
  ///  itself).
  ///
  /// [linkId] The group from the Measure that corresponds to this group in the
  ///  MeasureReport resource.
  ///
  /// [linkIdElement] ("_linkId") Extensions for linkId
  ///
  /// [code] The meaning of the population group as defined in the measure
  ///  definition.
  ///
  /// [subject] Optional subject identifying the individual or individuals the
  ///  report is for.
  ///
  /// [population] The populations that make up the population group, one for
  ///  each type of population appropriate for the measure.
  ///
  /// [measureScoreQuantity] The measure score for this population group,
  ///  calculated as appropriate for the measure type and scoring method, and
  ///  based on the contents of the populations defined in the group.
  ///
  /// [measureScoreDateTime] The measure score for this population group,
  ///  calculated as appropriate for the measure type and scoring method, and
  ///  based on the contents of the populations defined in the group.
  ///
  /// [measureScoreDateTimeElement] ("_measureScoreDateTime") Extensions for
  ///  measureScoreDateTime
  ///
  /// [measureScoreCodeableConcept] The measure score for this population
  ///  group, calculated as appropriate for the measure type and scoring
  ///  method, and based on the contents of the populations defined in the
  ///  group.
  ///
  /// [measureScorePeriod] The measure score for this population group,
  ///  calculated as appropriate for the measure type and scoring method, and
  ///  based on the contents of the populations defined in the group.
  ///
  /// [measureScoreRange] The measure score for this population group,
  ///  calculated as appropriate for the measure type and scoring method, and
  ///  based on the contents of the populations defined in the group.
  ///
  /// [measureScoreDuration] The measure score for this population group,
  ///  calculated as appropriate for the measure type and scoring method, and
  ///  based on the contents of the populations defined in the group.
  ///
  /// [stratifier] When a measure includes multiple stratifiers, there will be
  ///  a stratifier group for each stratifier defined by the measure.
  ///
  const factory MeasureReportGroup({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the element.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information
    ///  that is not part of the basic definition of the element and that
    ///  modifies the understanding of the element in which it is contained
    ///  and/or the understanding of the containing element's descendants.
    ///  Usually modifier elements provide negation or qualification. To make
    ///  the use of extensions safe and managable, there is a strict set of
    ///  governance applied to the definition and use of extensions. Though any
    ///  implementer can define an extension, there is a set of requirements
    ///  that SHALL be met as part of the definition of the extension.
    ///  Applications processing a resource are required to check for modifier
    ///  extensions.Modifier extensions SHALL NOT change the meaning of any
    ///  elements on Resource or DomainResource (including cannot change the
    ///  meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [linkId] The group from the Measure that corresponds to this group in
    ///  the MeasureReport resource.
    String? linkId,

    /// [linkIdElement] ("_linkId") Extensions for linkId
    @JsonKey(name: '_linkId') Element? linkIdElement,

    /// [code] The meaning of the population group as defined in the measure
    ///  definition.
    CodeableConcept? code,

    /// [subject] Optional subject identifying the individual or individuals
    ///  the report is for.
    Reference? subject,

    /// [population] The populations that make up the population group, one for
    ///  each type of population appropriate for the measure.
    List<MeasureReportPopulation>? population,

    /// [measureScoreQuantity] The measure score for this population group,
    ///  calculated as appropriate for the measure type and scoring method, and
    ///  based on the contents of the populations defined in the group.
    Quantity? measureScoreQuantity,

    /// [measureScoreDateTime] The measure score for this population group,
    ///  calculated as appropriate for the measure type and scoring method, and
    ///  based on the contents of the populations defined in the group.
    FhirDateTime? measureScoreDateTime,

    /// [measureScoreDateTimeElement] ("_measureScoreDateTime") Extensions for
    ///  measureScoreDateTime
    @JsonKey(name: '_measureScoreDateTime')
    Element? measureScoreDateTimeElement,

    /// [measureScoreCodeableConcept] The measure score for this population
    ///  group, calculated as appropriate for the measure type and scoring
    ///  method, and based on the contents of the populations defined in the
    ///  group.
    CodeableConcept? measureScoreCodeableConcept,

    /// [measureScorePeriod] The measure score for this population group,
    ///  calculated as appropriate for the measure type and scoring method, and
    ///  based on the contents of the populations defined in the group.
    Period? measureScorePeriod,

    /// [measureScoreRange] The measure score for this population group,
    ///  calculated as appropriate for the measure type and scoring method, and
    ///  based on the contents of the populations defined in the group.
    Range? measureScoreRange,

    /// [measureScoreDuration] The measure score for this population group,
    ///  calculated as appropriate for the measure type and scoring method, and
    ///  based on the contents of the populations defined in the group.
    FhirDuration? measureScoreDuration,

    /// [stratifier] When a measure includes multiple stratifiers, there will
    ///  be a stratifier group for each stratifier defined by the measure.
    List<MeasureReportStratifier>? stratifier,
  }) = _MeasureReportGroup;

  @override
  String get fhirType => 'MeasureReportGroup';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MeasureReportGroup.fromYaml(dynamic yaml) => yaml is String
      ? MeasureReportGroup.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MeasureReportGroup.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MeasureReportGroup cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory MeasureReportGroup.fromJson(Map<String, dynamic> json) =>
      _$MeasureReportGroupFromJson(json);

  /// Acts like a constructor, returns a [MeasureReportGroup], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory MeasureReportGroup.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MeasureReportGroupFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [MeasureReportPopulation] The MeasureReport resource contains the results
///  of the calculation of a measure; and optionally a reference to the
///  resources involved in that calculation.
@freezed
class MeasureReportPopulation with BackboneType, _$MeasureReportPopulation {
  /// [MeasureReportPopulation] The MeasureReport resource contains the results
  ///  of the calculation of a measure; and optionally a reference to the
  ///  resources involved in that calculation.
  const MeasureReportPopulation._();

  /// [MeasureReportPopulation] The MeasureReport resource contains the results
  ///  of the calculation of a measure; and optionally a reference to the
  ///  resources involved in that calculation.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  ///  is not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of
  ///  extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be
  ///  met as part of the definition of the extension. Applications processing
  ///  a resource are required to check for modifier extensions.Modifier
  ///  extensions SHALL NOT change the meaning of any elements on Resource or
  ///  DomainResource (including cannot change the meaning of modifierExtension
  ///  itself).
  ///
  /// [linkId] The population from the Measure that corresponds to this
  ///  population in the MeasureReport resource.
  ///
  /// [linkIdElement] ("_linkId") Extensions for linkId
  ///
  /// [code] The type of the population.
  ///
  /// [count] The number of members of the population.
  ///
  /// [countElement] ("_count") Extensions for count
  ///
  /// [subjectResults] This element refers to a List of individual level
  ///  MeasureReport resources, one for each subject in this population.
  ///
  /// [subjectReport] A reference to an individual level MeasureReport resource
  ///  for a member of the population.
  ///
  /// [subjects] Optional Group identifying the individuals that make up the
  ///  population.
  ///
  const factory MeasureReportPopulation({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the element.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information
    ///  that is not part of the basic definition of the element and that
    ///  modifies the understanding of the element in which it is contained
    ///  and/or the understanding of the containing element's descendants.
    ///  Usually modifier elements provide negation or qualification. To make
    ///  the use of extensions safe and managable, there is a strict set of
    ///  governance applied to the definition and use of extensions. Though any
    ///  implementer can define an extension, there is a set of requirements
    ///  that SHALL be met as part of the definition of the extension.
    ///  Applications processing a resource are required to check for modifier
    ///  extensions.Modifier extensions SHALL NOT change the meaning of any
    ///  elements on Resource or DomainResource (including cannot change the
    ///  meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [linkId] The population from the Measure that corresponds to this
    ///  population in the MeasureReport resource.
    String? linkId,

    /// [linkIdElement] ("_linkId") Extensions for linkId
    @JsonKey(name: '_linkId') Element? linkIdElement,

    /// [code] The type of the population.
    CodeableConcept? code,

    /// [count] The number of members of the population.
    FhirInteger? count,

    /// [countElement] ("_count") Extensions for count
    @JsonKey(name: '_count') Element? countElement,

    /// [subjectResults] This element refers to a List of individual level
    ///  MeasureReport resources, one for each subject in this population.
    Reference? subjectResults,

    /// [subjectReport] A reference to an individual level MeasureReport
    ///  resource for a member of the population.
    List<Reference>? subjectReport,

    /// [subjects] Optional Group identifying the individuals that make up the
    ///  population.
    Reference? subjects,
  }) = _MeasureReportPopulation;

  @override
  String get fhirType => 'MeasureReportPopulation';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MeasureReportPopulation.fromYaml(dynamic yaml) => yaml is String
      ? MeasureReportPopulation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MeasureReportPopulation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MeasureReportPopulation cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory MeasureReportPopulation.fromJson(Map<String, dynamic> json) =>
      _$MeasureReportPopulationFromJson(json);

  /// Acts like a constructor, returns a [MeasureReportPopulation], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory MeasureReportPopulation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MeasureReportPopulationFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [MeasureReportStratifier] The MeasureReport resource contains the results
///  of the calculation of a measure; and optionally a reference to the
///  resources involved in that calculation.
@freezed
class MeasureReportStratifier with BackboneType, _$MeasureReportStratifier {
  /// [MeasureReportStratifier] The MeasureReport resource contains the results
  ///  of the calculation of a measure; and optionally a reference to the
  ///  resources involved in that calculation.
  const MeasureReportStratifier._();

  /// [MeasureReportStratifier] The MeasureReport resource contains the results
  ///  of the calculation of a measure; and optionally a reference to the
  ///  resources involved in that calculation.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  ///  is not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of
  ///  extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be
  ///  met as part of the definition of the extension. Applications processing
  ///  a resource are required to check for modifier extensions.Modifier
  ///  extensions SHALL NOT change the meaning of any elements on Resource or
  ///  DomainResource (including cannot change the meaning of modifierExtension
  ///  itself).
  ///
  /// [linkId] The stratifier from the Measure that corresponds to this
  ///  stratifier in the MeasureReport resource.
  ///
  /// [linkIdElement] ("_linkId") Extensions for linkId
  ///
  /// [code] The meaning of this stratifier, as defined in the measure
  ///  definition.
  ///
  /// [stratum] This element contains the results for a single stratum within
  ///  the stratifier. For example, when stratifying on administrative gender,
  ///  there will be four strata, one for each possible gender value.
  ///
  const factory MeasureReportStratifier({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the element.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information
    ///  that is not part of the basic definition of the element and that
    ///  modifies the understanding of the element in which it is contained
    ///  and/or the understanding of the containing element's descendants.
    ///  Usually modifier elements provide negation or qualification. To make
    ///  the use of extensions safe and managable, there is a strict set of
    ///  governance applied to the definition and use of extensions. Though any
    ///  implementer can define an extension, there is a set of requirements
    ///  that SHALL be met as part of the definition of the extension.
    ///  Applications processing a resource are required to check for modifier
    ///  extensions.Modifier extensions SHALL NOT change the meaning of any
    ///  elements on Resource or DomainResource (including cannot change the
    ///  meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [linkId] The stratifier from the Measure that corresponds to this
    ///  stratifier in the MeasureReport resource.
    String? linkId,

    /// [linkIdElement] ("_linkId") Extensions for linkId
    @JsonKey(name: '_linkId') Element? linkIdElement,

    /// [code] The meaning of this stratifier, as defined in the measure
    ///  definition.
    CodeableConcept? code,

    /// [stratum] This element contains the results for a single stratum within
    ///  the stratifier. For example, when stratifying on administrative
    ///  gender, there will be four strata, one for each possible gender value.
    List<MeasureReportStratum>? stratum,
  }) = _MeasureReportStratifier;

  @override
  String get fhirType => 'MeasureReportStratifier';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MeasureReportStratifier.fromYaml(dynamic yaml) => yaml is String
      ? MeasureReportStratifier.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MeasureReportStratifier.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MeasureReportStratifier cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory MeasureReportStratifier.fromJson(Map<String, dynamic> json) =>
      _$MeasureReportStratifierFromJson(json);

  /// Acts like a constructor, returns a [MeasureReportStratifier], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory MeasureReportStratifier.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MeasureReportStratifierFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [MeasureReportStratum] The MeasureReport resource contains the results of
///  the calculation of a measure; and optionally a reference to the resources
///  involved in that calculation.
@freezed
class MeasureReportStratum with BackboneType, _$MeasureReportStratum {
  /// [MeasureReportStratum] The MeasureReport resource contains the results of
  ///  the calculation of a measure; and optionally a reference to the
  ///  resources involved in that calculation.
  const MeasureReportStratum._();

  /// [MeasureReportStratum] The MeasureReport resource contains the results of
  ///  the calculation of a measure; and optionally a reference to the
  ///  resources involved in that calculation.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  ///  is not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of
  ///  extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be
  ///  met as part of the definition of the extension. Applications processing
  ///  a resource are required to check for modifier extensions.Modifier
  ///  extensions SHALL NOT change the meaning of any elements on Resource or
  ///  DomainResource (including cannot change the meaning of modifierExtension
  ///  itself).
  ///
  /// [valueCodeableConcept] The value for this stratum, expressed as a
  ///  CodeableConcept. When defining stratifiers on complex values, the value
  ///  must be rendered such that the value for each stratum within the
  ///  stratifier is unique.
  ///
  /// [valueBoolean] The value for this stratum, expressed as a
  ///  CodeableConcept. When defining stratifiers on complex values, the value
  ///  must be rendered such that the value for each stratum within the
  ///  stratifier is unique.
  ///
  /// [valueBooleanElement] ("_valueBoolean") Extensions for valueBoolean
  ///
  /// [valueQuantity] The value for this stratum, expressed as a
  ///  CodeableConcept. When defining stratifiers on complex values, the value
  ///  must be rendered such that the value for each stratum within the
  ///  stratifier is unique.
  ///
  /// [valueRange] The value for this stratum, expressed as a CodeableConcept.
  ///  When defining stratifiers on complex values, the value must be rendered
  ///  such that the value for each stratum within the stratifier is unique.
  ///
  /// [valueReference] The value for this stratum, expressed as a
  ///  CodeableConcept. When defining stratifiers on complex values, the value
  ///  must be rendered such that the value for each stratum within the
  ///  stratifier is unique.
  ///
  /// [component] A stratifier component value.
  ///
  /// [population] The populations that make up the stratum, one for each type
  ///  of population appropriate to the measure.
  ///
  /// [measureScoreQuantity] The measure score for this stratum, calculated as
  ///  appropriate for the measure type and scoring method, and based on only
  ///  the members of this stratum.
  ///
  /// [measureScoreDateTime] The measure score for this stratum, calculated as
  ///  appropriate for the measure type and scoring method, and based on only
  ///  the members of this stratum.
  ///
  /// [measureScoreDateTimeElement] ("_measureScoreDateTime") Extensions for
  ///  measureScoreDateTime
  ///
  /// [measureScoreCodeableConcept] The measure score for this stratum,
  ///  calculated as appropriate for the measure type and scoring method, and
  ///  based on only the members of this stratum.
  ///
  /// [measureScorePeriod] The measure score for this stratum, calculated as
  ///  appropriate for the measure type and scoring method, and based on only
  ///  the members of this stratum.
  ///
  /// [measureScoreRange] The measure score for this stratum, calculated as
  ///  appropriate for the measure type and scoring method, and based on only
  ///  the members of this stratum.
  ///
  /// [measureScoreDuration] The measure score for this stratum, calculated as
  ///  appropriate for the measure type and scoring method, and based on only
  ///  the members of this stratum.
  ///
  const factory MeasureReportStratum({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the element.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information
    ///  that is not part of the basic definition of the element and that
    ///  modifies the understanding of the element in which it is contained
    ///  and/or the understanding of the containing element's descendants.
    ///  Usually modifier elements provide negation or qualification. To make
    ///  the use of extensions safe and managable, there is a strict set of
    ///  governance applied to the definition and use of extensions. Though any
    ///  implementer can define an extension, there is a set of requirements
    ///  that SHALL be met as part of the definition of the extension.
    ///  Applications processing a resource are required to check for modifier
    ///  extensions.Modifier extensions SHALL NOT change the meaning of any
    ///  elements on Resource or DomainResource (including cannot change the
    ///  meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [valueCodeableConcept] The value for this stratum, expressed as a
    ///  CodeableConcept. When defining stratifiers on complex values, the
    ///  value must be rendered such that the value for each stratum within the
    ///  stratifier is unique.
    CodeableConcept? valueCodeableConcept,

    /// [valueBoolean] The value for this stratum, expressed as a
    ///  CodeableConcept. When defining stratifiers on complex values, the
    ///  value must be rendered such that the value for each stratum within the
    ///  stratifier is unique.
    FhirBoolean? valueBoolean,

    /// [valueBooleanElement] ("_valueBoolean") Extensions for valueBoolean
    @JsonKey(name: '_valueBoolean') Element? valueBooleanElement,

    /// [valueQuantity] The value for this stratum, expressed as a
    ///  CodeableConcept. When defining stratifiers on complex values, the
    ///  value must be rendered such that the value for each stratum within the
    ///  stratifier is unique.
    Quantity? valueQuantity,

    /// [valueRange] The value for this stratum, expressed as a
    ///  CodeableConcept. When defining stratifiers on complex values, the
    ///  value must be rendered such that the value for each stratum within the
    ///  stratifier is unique.
    Range? valueRange,

    /// [valueReference] The value for this stratum, expressed as a
    ///  CodeableConcept. When defining stratifiers on complex values, the
    ///  value must be rendered such that the value for each stratum within the
    ///  stratifier is unique.
    Reference? valueReference,

    /// [component] A stratifier component value.
    List<MeasureReportComponent>? component,

    /// [population] The populations that make up the stratum, one for each
    ///  type of population appropriate to the measure.
    List<MeasureReportPopulation1>? population,

    /// [measureScoreQuantity] The measure score for this stratum, calculated
    ///  as appropriate for the measure type and scoring method, and based on
    ///  only the members of this stratum.
    Quantity? measureScoreQuantity,

    /// [measureScoreDateTime] The measure score for this stratum, calculated
    ///  as appropriate for the measure type and scoring method, and based on
    ///  only the members of this stratum.
    FhirDateTime? measureScoreDateTime,

    /// [measureScoreDateTimeElement] ("_measureScoreDateTime") Extensions for
    ///  measureScoreDateTime
    @JsonKey(name: '_measureScoreDateTime')
    Element? measureScoreDateTimeElement,

    /// [measureScoreCodeableConcept] The measure score for this stratum,
    ///  calculated as appropriate for the measure type and scoring method, and
    ///  based on only the members of this stratum.
    CodeableConcept? measureScoreCodeableConcept,

    /// [measureScorePeriod] The measure score for this stratum, calculated as
    ///  appropriate for the measure type and scoring method, and based on only
    ///  the members of this stratum.
    Period? measureScorePeriod,

    /// [measureScoreRange] The measure score for this stratum, calculated as
    ///  appropriate for the measure type and scoring method, and based on only
    ///  the members of this stratum.
    Range? measureScoreRange,

    /// [measureScoreDuration] The measure score for this stratum, calculated
    ///  as appropriate for the measure type and scoring method, and based on
    ///  only the members of this stratum.
    FhirDuration? measureScoreDuration,
  }) = _MeasureReportStratum;

  @override
  String get fhirType => 'MeasureReportStratum';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MeasureReportStratum.fromYaml(dynamic yaml) => yaml is String
      ? MeasureReportStratum.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MeasureReportStratum.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MeasureReportStratum cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory MeasureReportStratum.fromJson(Map<String, dynamic> json) =>
      _$MeasureReportStratumFromJson(json);

  /// Acts like a constructor, returns a [MeasureReportStratum], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory MeasureReportStratum.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MeasureReportStratumFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [MeasureReportComponent] The MeasureReport resource contains the results of
///  the calculation of a measure; and optionally a reference to the resources
///  involved in that calculation.
@freezed
class MeasureReportComponent with BackboneType, _$MeasureReportComponent {
  /// [MeasureReportComponent] The MeasureReport resource contains the results
  ///  of the calculation of a measure; and optionally a reference to the
  ///  resources involved in that calculation.
  const MeasureReportComponent._();

  /// [MeasureReportComponent] The MeasureReport resource contains the results
  ///  of the calculation of a measure; and optionally a reference to the
  ///  resources involved in that calculation.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  ///  is not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of
  ///  extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be
  ///  met as part of the definition of the extension. Applications processing
  ///  a resource are required to check for modifier extensions.Modifier
  ///  extensions SHALL NOT change the meaning of any elements on Resource or
  ///  DomainResource (including cannot change the meaning of modifierExtension
  ///  itself).
  ///
  /// [linkId] The stratifier component from the Measure that corresponds to
  ///  this stratifier component in the MeasureReport resource.
  ///
  /// [linkIdElement] ("_linkId") Extensions for linkId
  ///
  /// [code] The code for the stratum component value.
  ///
  /// [valueCodeableConcept] The stratum component value.
  ///
  /// [valueBoolean] The stratum component value.
  ///
  /// [valueBooleanElement] ("_valueBoolean") Extensions for valueBoolean
  ///
  /// [valueQuantity] The stratum component value.
  ///
  /// [valueRange] The stratum component value.
  ///
  /// [valueReference] The stratum component value.
  ///
  const factory MeasureReportComponent({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the element.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information
    ///  that is not part of the basic definition of the element and that
    ///  modifies the understanding of the element in which it is contained
    ///  and/or the understanding of the containing element's descendants.
    ///  Usually modifier elements provide negation or qualification. To make
    ///  the use of extensions safe and managable, there is a strict set of
    ///  governance applied to the definition and use of extensions. Though any
    ///  implementer can define an extension, there is a set of requirements
    ///  that SHALL be met as part of the definition of the extension.
    ///  Applications processing a resource are required to check for modifier
    ///  extensions.Modifier extensions SHALL NOT change the meaning of any
    ///  elements on Resource or DomainResource (including cannot change the
    ///  meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [linkId] The stratifier component from the Measure that corresponds to
    ///  this stratifier component in the MeasureReport resource.
    String? linkId,

    /// [linkIdElement] ("_linkId") Extensions for linkId
    @JsonKey(name: '_linkId') Element? linkIdElement,

    /// [code] The code for the stratum component value.
    required CodeableConcept code,

    /// [valueCodeableConcept] The stratum component value.
    CodeableConcept? valueCodeableConcept,

    /// [valueBoolean] The stratum component value.
    FhirBoolean? valueBoolean,

    /// [valueBooleanElement] ("_valueBoolean") Extensions for valueBoolean
    @JsonKey(name: '_valueBoolean') Element? valueBooleanElement,

    /// [valueQuantity] The stratum component value.
    Quantity? valueQuantity,

    /// [valueRange] The stratum component value.
    Range? valueRange,

    /// [valueReference] The stratum component value.
    Reference? valueReference,
  }) = _MeasureReportComponent;

  @override
  String get fhirType => 'MeasureReportComponent';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MeasureReportComponent.fromYaml(dynamic yaml) => yaml is String
      ? MeasureReportComponent.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MeasureReportComponent.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MeasureReportComponent cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory MeasureReportComponent.fromJson(Map<String, dynamic> json) =>
      _$MeasureReportComponentFromJson(json);

  /// Acts like a constructor, returns a [MeasureReportComponent], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory MeasureReportComponent.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MeasureReportComponentFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [MeasureReportPopulation1] The MeasureReport resource contains the results
///  of the calculation of a measure; and optionally a reference to the
///  resources involved in that calculation.
@freezed
class MeasureReportPopulation1 with BackboneType, _$MeasureReportPopulation1 {
  /// [MeasureReportPopulation1] The MeasureReport resource contains the
  ///  results of the calculation of a measure; and optionally a reference to
  ///  the resources involved in that calculation.
  const MeasureReportPopulation1._();

  /// [MeasureReportPopulation1] The MeasureReport resource contains the
  ///  results of the calculation of a measure; and optionally a reference to
  ///  the resources involved in that calculation.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  ///  is not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of
  ///  extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be
  ///  met as part of the definition of the extension. Applications processing
  ///  a resource are required to check for modifier extensions.Modifier
  ///  extensions SHALL NOT change the meaning of any elements on Resource or
  ///  DomainResource (including cannot change the meaning of modifierExtension
  ///  itself).
  ///
  /// [linkId] The population from the Measure that corresponds to this
  ///  population in the MeasureReport resource.
  ///
  /// [linkIdElement] ("_linkId") Extensions for linkId
  ///
  /// [code] The type of the population.
  ///
  /// [count] The number of members of the population in this stratum.
  ///
  /// [countElement] ("_count") Extensions for count
  ///
  /// [subjectResults] This element refers to a List of individual level
  ///  MeasureReport resources, one for each subject in this population in this
  ///  stratum.
  ///
  /// [subjectReport] A reference to an individual level MeasureReport resource
  ///  for a member of the population.
  ///
  /// [subjects] Optional Group identifying the individuals that make up the
  ///  population.
  ///
  const factory MeasureReportPopulation1({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the element.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information
    ///  that is not part of the basic definition of the element and that
    ///  modifies the understanding of the element in which it is contained
    ///  and/or the understanding of the containing element's descendants.
    ///  Usually modifier elements provide negation or qualification. To make
    ///  the use of extensions safe and managable, there is a strict set of
    ///  governance applied to the definition and use of extensions. Though any
    ///  implementer can define an extension, there is a set of requirements
    ///  that SHALL be met as part of the definition of the extension.
    ///  Applications processing a resource are required to check for modifier
    ///  extensions.Modifier extensions SHALL NOT change the meaning of any
    ///  elements on Resource or DomainResource (including cannot change the
    ///  meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [linkId] The population from the Measure that corresponds to this
    ///  population in the MeasureReport resource.
    String? linkId,

    /// [linkIdElement] ("_linkId") Extensions for linkId
    @JsonKey(name: '_linkId') Element? linkIdElement,

    /// [code] The type of the population.
    CodeableConcept? code,

    /// [count] The number of members of the population in this stratum.
    FhirInteger? count,

    /// [countElement] ("_count") Extensions for count
    @JsonKey(name: '_count') Element? countElement,

    /// [subjectResults] This element refers to a List of individual level
    ///  MeasureReport resources, one for each subject in this population in
    ///  this stratum.
    Reference? subjectResults,

    /// [subjectReport] A reference to an individual level MeasureReport
    ///  resource for a member of the population.
    List<Reference>? subjectReport,

    /// [subjects] Optional Group identifying the individuals that make up the
    ///  population.
    Reference? subjects,
  }) = _MeasureReportPopulation1;

  @override
  String get fhirType => 'MeasureReportPopulation1';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MeasureReportPopulation1.fromYaml(dynamic yaml) => yaml is String
      ? MeasureReportPopulation1.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MeasureReportPopulation1.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MeasureReportPopulation1 cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory MeasureReportPopulation1.fromJson(Map<String, dynamic> json) =>
      _$MeasureReportPopulation1FromJson(json);

  /// Acts like a constructor, returns a [MeasureReportPopulation1], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory MeasureReportPopulation1.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MeasureReportPopulation1FromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [TestPlan] A plan for executing testing on an artifact or specifications.
@freezed
class TestPlan with Resource, _$TestPlan {
  /// [TestPlan] A plan for executing testing on an artifact or specifications.
  const TestPlan._();

  /// [TestPlan] A plan for executing testing on an artifact or specifications.
  ///
  /// [resourceType] This is a TestPlan resource
  ///
  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  ///
  /// [meta] The metadata about the resource. This is content that is
  ///  maintained by the infrastructure. Changes to the content might not
  ///  always be associated with version changes to the resource.
  ///
  /// [implicitRules] A reference to a set of rules that were followed when the
  ///  resource was constructed, and which must be understood when processing
  ///  the content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  ///
  /// [implicitRulesElement] ("_implicitRules") Extensions for implicitRules
  ///
  /// [language] The base language in which the resource is written.
  ///
  /// [languageElement] ("_language") Extensions for language
  ///
  /// [text] A human-readable narrative that contains a summary of the resource
  ///  and can be used to represent the content of the resource to a human. The
  ///  narrative need not encode all the structured data, but is required to
  ///  contain sufficient detail to make it "clinically safe" for a human to
  ///  just read the narrative. Resource definitions may define what content
  ///  should be represented in the narrative to ensure clinical safety.
  ///
  /// [contained] These resources do not have an independent existence apart
  ///  from the resource that contains them - they cannot be identified
  ///  independently, nor can they have their own independent transaction
  ///  scope. This is allowed to be a Parameters resource if and only if it is
  ///  referenced by a resource that provides context/meaning.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the resource. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  ///  is not part of the basic definition of the resource and that modifies
  ///  the understanding of the element that contains it and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of
  ///  extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  is allowed to define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension. Applications
  ///  processing a resource are required to check for modifier
  ///  extensions.Modifier extensions SHALL NOT change the meaning of any
  ///  elements on Resource or DomainResource (including cannot change the
  ///  meaning of modifierExtension itself).
  ///
  /// [url] An absolute URI that is used to identify this test plan when it is
  ///  referenced in a specification, model, design or an instance; also called
  ///  its canonical identifier. This SHOULD be globally unique and SHOULD be a
  ///  literal address at which an authoritative instance of this test plan is
  ///  (or will be) published. This URL can be the target of a canonical
  ///  reference. It SHALL remain the same when the test plan is stored on
  ///  different servers.
  ///
  /// [urlElement] ("_url") Extensions for url
  ///
  /// [identifier] A formal identifier that is used to identify this test plan
  ///  when it is represented in other formats, or referenced in a
  ///  specification, model, design or an instance.
  ///
  /// [version] The identifier that is used to identify this version of the
  ///  test plan when it is referenced in a specification, model, design or
  ///  instance.  This is an arbitrary value managed by the test plan author
  ///  and is not expected to be globally unique. For example, it might be a
  ///  timestamp (e.g. yyyymmdd) if a managed version is not available. There
  ///  is also no expectation that versions can be placed in a lexicographical
  ///  sequence.
  ///
  /// [versionElement] ("_version") Extensions for version
  ///
  /// [versionAlgorithmString] Indicates the mechanism used to compare versions
  ///  to determine which is more current.
  ///
  /// [versionAlgorithmStringElement] ("_versionAlgorithmString") Extensions
  ///  for versionAlgorithmString
  ///
  /// [versionAlgorithmCoding] Indicates the mechanism used to compare versions
  ///  to determine which is more current.
  ///
  /// [name] A natural language name identifying the test plan. This name
  ///  should be usable as an identifier for the module by machine processing
  ///  applications such as code generation.
  ///
  /// [nameElement] ("_name") Extensions for name
  ///
  /// [title] A short, descriptive, user-friendly title for the test plan.
  ///
  /// [titleElement] ("_title") Extensions for title
  ///
  /// [status] The status of this test plan. Enables tracking the life-cycle of
  ///  the content.
  ///
  /// [statusElement] ("_status") Extensions for status
  ///
  /// [experimental] A Boolean value to indicate that this test plan is
  ///  authored for testing purposes (or education/evaluation/marketing) and is
  ///  not intended to be used for genuine usage.
  ///
  /// [experimentalElement] ("_experimental") Extensions for experimental
  ///
  /// [date] The date (and optionally time) when the test plan was last
  ///  significantly changed. The date must change when the business version
  ///  changes and it must change if the status code changes. In addition, it
  ///  should change when the substantive content of the test plan changes.
  ///
  /// [dateElement] ("_date") Extensions for date
  ///
  /// [publisher] The name of the organization or individual responsible for
  ///  the release and ongoing maintenance of the test plan.
  ///
  /// [publisherElement] ("_publisher") Extensions for publisher
  ///
  /// [contact] Contact details to assist a user in finding and communicating
  ///  with the publisher.
  ///
  /// [description] A free text natural language description of the test plan
  ///  from a consumer's perspective.
  ///
  /// [descriptionElement] ("_description") Extensions for description
  ///
  /// [useContext] The content was developed with a focus and intent of
  ///  supporting the contexts that are listed. These contexts may be general
  ///  categories (gender, age, ...) or may be references to specific programs
  ///  (insurance plans, studies, ...) and may be used to assist with indexing
  ///  and searching for appropriate test plan instances.
  ///
  /// [jurisdiction] A legal or geographic region in which the test plan is
  ///  intended to be used.
  ///
  /// [purpose] Explanation of why this test plan is needed and why it has been
  ///  designed as it has.
  ///
  /// [purposeElement] ("_purpose") Extensions for purpose
  ///
  /// [copyright] A copyright statement relating to the test plan and/or its
  ///  contents. Copyright statements are generally legal restrictions on the
  ///  use and publishing of the test plan. The short copyright declaration
  ///  (e.g. (c) '2015+ xyz organization' should be sent in the copyrightLabel
  ///  element.
  ///
  /// [copyrightElement] ("_copyright") Extensions for copyright
  ///
  /// [copyrightLabel] A short string (<50 characters), suitable for inclusion
  ///  in a page footer that identifies the copyright holder, effective period,
  ///  and optionally whether rights are resctricted. (e.g. 'All rights
  ///  reserved', 'Some rights reserved').
  ///
  /// [copyrightLabelElement] ("_copyrightLabel") Extensions for copyrightLabel
  ///
  /// [category] The category of the Test Plan - can be acceptance, unit,
  ///  performance, etc.
  ///
  /// [scope] What is being tested with this Test Plan - a conformance
  ///  resource, or narrative criteria, or an external reference...
  ///
  /// [testTools] A description of test tools to be used in the test plan.
  ///
  /// [testToolsElement] ("_testTools") Extensions for testTools
  ///
  /// [dependency] The required criteria to execute the test plan - e.g.
  ///  preconditions, previous tests...
  ///
  /// [exitCriteria] The threshold or criteria for the test plan to be
  ///  considered successfully executed - narrative.
  ///
  /// [exitCriteriaElement] ("_exitCriteria") Extensions for exitCriteria
  ///
  /// [testCase] The individual test cases that are part of this plan, when
  ///  they they are made explicit.
  ///
  const factory TestPlan({
    /// [resourceType] This is a TestPlan resource
    @Default(R6ResourceType.TestPlan)
    @JsonKey(unknownEnumValue: R6ResourceType.TestPlan)
    R6ResourceType resourceType,

    /// [id] The logical id of the resource, as used in the URL for the
    ///  resource. Once assigned, this value never changes.
    FhirId? id,

    /// [meta] The metadata about the resource. This is content that is
    ///  maintained by the infrastructure. Changes to the content might not
    ///  always be associated with version changes to the resource.
    FhirMeta? meta,

    /// [implicitRules] A reference to a set of rules that were followed when
    ///  the resource was constructed, and which must be understood when
    ///  processing the content. Often, this is a reference to an
    ///  implementation guide that defines the special rules along with other
    ///  profiles etc.
    FhirUri? implicitRules,

    /// [implicitRulesElement] ("_implicitRules") Extensions for implicitRules
    @JsonKey(name: '_implicitRules') Element? implicitRulesElement,

    /// [language] The base language in which the resource is written.
    FhirCode? language,

    /// [languageElement] ("_language") Extensions for language
    @JsonKey(name: '_language') Element? languageElement,

    /// [text] A human-readable narrative that contains a summary of the
    ///  resource and can be used to represent the content of the resource to a
    ///  human. The narrative need not encode all the structured data, but is
    ///  required to contain sufficient detail to make it "clinically safe" for
    ///  a human to just read the narrative. Resource definitions may define
    ///  what content should be represented in the narrative to ensure clinical
    ///  safety.
    Narrative? text,

    /// [contained] These resources do not have an independent existence apart
    ///  from the resource that contains them - they cannot be identified
    ///  independently, nor can they have their own independent transaction
    ///  scope. This is allowed to be a Parameters resource if and only if it
    ///  is referenced by a resource that provides context/meaning.
    List<Resource>? contained,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the resource.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information
    ///  that is not part of the basic definition of the resource and that
    ///  modifies the understanding of the element that contains it and/or the
    ///  understanding of the containing element's descendants. Usually
    ///  modifier elements provide negation or qualification. To make the use
    ///  of extensions safe and managable, there is a strict set of governance
    ///  applied to the definition and use of extensions. Though any
    ///  implementer is allowed to define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension. Applications processing a resource are required to check
    ///  for modifier extensions.Modifier extensions SHALL NOT change the
    ///  meaning of any elements on Resource or DomainResource (including
    ///  cannot change the meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [url] An absolute URI that is used to identify this test plan when it
    ///  is referenced in a specification, model, design or an instance; also
    ///  called its canonical identifier. This SHOULD be globally unique and
    ///  SHOULD be a literal address at which an authoritative instance of this
    ///  test plan is (or will be) published. This URL can be the target of a
    ///  canonical reference. It SHALL remain the same when the test plan is
    ///  stored on different servers.
    FhirUri? url,

    /// [urlElement] ("_url") Extensions for url
    @JsonKey(name: '_url') Element? urlElement,

    /// [identifier] A formal identifier that is used to identify this test
    ///  plan when it is represented in other formats, or referenced in a
    ///  specification, model, design or an instance.
    List<Identifier>? identifier,

    /// [version] The identifier that is used to identify this version of the
    ///  test plan when it is referenced in a specification, model, design or
    ///  instance.  This is an arbitrary value managed by the test plan author
    ///  and is not expected to be globally unique. For example, it might be a
    ///  timestamp (e.g. yyyymmdd) if a managed version is not available. There
    ///  is also no expectation that versions can be placed in a
    ///  lexicographical sequence.
    String? version,

    /// [versionElement] ("_version") Extensions for version
    @JsonKey(name: '_version') Element? versionElement,

    /// [versionAlgorithmString] Indicates the mechanism used to compare
    ///  versions to determine which is more current.
    String? versionAlgorithmString,

    /// [versionAlgorithmStringElement] ("_versionAlgorithmString") Extensions
    ///  for versionAlgorithmString
    @JsonKey(name: '_versionAlgorithmString')
    Element? versionAlgorithmStringElement,

    /// [versionAlgorithmCoding] Indicates the mechanism used to compare
    ///  versions to determine which is more current.
    Coding? versionAlgorithmCoding,

    /// [name] A natural language name identifying the test plan. This name
    ///  should be usable as an identifier for the module by machine processing
    ///  applications such as code generation.
    String? name,

    /// [nameElement] ("_name") Extensions for name
    @JsonKey(name: '_name') Element? nameElement,

    /// [title] A short, descriptive, user-friendly title for the test plan.
    String? title,

    /// [titleElement] ("_title") Extensions for title
    @JsonKey(name: '_title') Element? titleElement,

    /// [status] The status of this test plan. Enables tracking the life-cycle
    ///  of the content.
    FhirCode? status,

    /// [statusElement] ("_status") Extensions for status
    @JsonKey(name: '_status') Element? statusElement,

    /// [experimental] A Boolean value to indicate that this test plan is
    ///  authored for testing purposes (or education/evaluation/marketing) and
    ///  is not intended to be used for genuine usage.
    FhirBoolean? experimental,

    /// [experimentalElement] ("_experimental") Extensions for experimental
    @JsonKey(name: '_experimental') Element? experimentalElement,

    /// [date] The date (and optionally time) when the test plan was last
    ///  significantly changed. The date must change when the business version
    ///  changes and it must change if the status code changes. In addition, it
    ///  should change when the substantive content of the test plan changes.
    FhirDateTime? date,

    /// [dateElement] ("_date") Extensions for date
    @JsonKey(name: '_date') Element? dateElement,

    /// [publisher] The name of the organization or individual responsible for
    ///  the release and ongoing maintenance of the test plan.
    String? publisher,

    /// [publisherElement] ("_publisher") Extensions for publisher
    @JsonKey(name: '_publisher') Element? publisherElement,

    /// [contact] Contact details to assist a user in finding and communicating
    ///  with the publisher.
    List<ContactDetail>? contact,

    /// [description] A free text natural language description of the test plan
    ///  from a consumer's perspective.
    FhirMarkdown? description,

    /// [descriptionElement] ("_description") Extensions for description
    @JsonKey(name: '_description') Element? descriptionElement,

    /// [useContext] The content was developed with a focus and intent of
    ///  supporting the contexts that are listed. These contexts may be general
    ///  categories (gender, age, ...) or may be references to specific
    ///  programs (insurance plans, studies, ...) and may be used to assist
    ///  with indexing and searching for appropriate test plan instances.
    List<UsageContext>? useContext,

    /// [jurisdiction] A legal or geographic region in which the test plan is
    ///  intended to be used.
    List<CodeableConcept>? jurisdiction,

    /// [purpose] Explanation of why this test plan is needed and why it has
    ///  been designed as it has.
    FhirMarkdown? purpose,

    /// [purposeElement] ("_purpose") Extensions for purpose
    @JsonKey(name: '_purpose') Element? purposeElement,

    /// [copyright] A copyright statement relating to the test plan and/or its
    ///  contents. Copyright statements are generally legal restrictions on the
    ///  use and publishing of the test plan. The short copyright declaration
    ///  (e.g. (c) '2015+ xyz organization' should be sent in the
    ///  copyrightLabel element.
    FhirMarkdown? copyright,

    /// [copyrightElement] ("_copyright") Extensions for copyright
    @JsonKey(name: '_copyright') Element? copyrightElement,

    /// [copyrightLabel] A short string (<50 characters), suitable for
    ///  inclusion in a page footer that identifies the copyright holder,
    ///  effective period, and optionally whether rights are resctricted. (e.g.
    ///  'All rights reserved', 'Some rights reserved').
    String? copyrightLabel,

    /// [copyrightLabelElement] ("_copyrightLabel") Extensions for
    ///  copyrightLabel
    @JsonKey(name: '_copyrightLabel') Element? copyrightLabelElement,

    /// [category] The category of the Test Plan - can be acceptance, unit,
    ///  performance, etc.
    List<CodeableConcept>? category,

    /// [scope] What is being tested with this Test Plan - a conformance
    ///  resource, or narrative criteria, or an external reference...
    List<Reference>? scope,

    /// [testTools] A description of test tools to be used in the test plan.
    FhirMarkdown? testTools,

    /// [testToolsElement] ("_testTools") Extensions for testTools
    @JsonKey(name: '_testTools') Element? testToolsElement,

    /// [dependency] The required criteria to execute the test plan - e.g.
    ///  preconditions, previous tests...
    List<TestPlanDependency>? dependency,

    /// [exitCriteria] The threshold or criteria for the test plan to be
    ///  considered successfully executed - narrative.
    FhirMarkdown? exitCriteria,

    /// [exitCriteriaElement] ("_exitCriteria") Extensions for exitCriteria
    @JsonKey(name: '_exitCriteria') Element? exitCriteriaElement,

    /// [testCase] The individual test cases that are part of this plan, when
    ///  they they are made explicit.
    List<TestPlanTestCase>? testCase,
  }) = _TestPlan;

  @override
  String get fhirType => 'TestPlan';

  /// Produces a Yaml formatted String version of the object
  @override
  String toYaml() => json2yaml(toJson());

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory TestPlan.fromYaml(dynamic yaml) => yaml is String
      ? TestPlan.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TestPlan.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TestPlan cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory TestPlan.fromJson(Map<String, dynamic> json) =>
      _$TestPlanFromJson(json);

  /// Acts like a constructor, returns a [TestPlan], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory TestPlan.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TestPlanFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());
}

/// [TestPlanDependency] A plan for executing testing on an artifact or
///  specifications.
@freezed
class TestPlanDependency with BackboneType, _$TestPlanDependency {
  /// [TestPlanDependency] A plan for executing testing on an artifact or
  ///  specifications.
  const TestPlanDependency._();

  /// [TestPlanDependency] A plan for executing testing on an artifact or
  ///  specifications.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  ///  is not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of
  ///  extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be
  ///  met as part of the definition of the extension. Applications processing
  ///  a resource are required to check for modifier extensions.Modifier
  ///  extensions SHALL NOT change the meaning of any elements on Resource or
  ///  DomainResource (including cannot change the meaning of modifierExtension
  ///  itself).
  ///
  /// [description] A textual description of the criterium - what is needed for
  ///  the dependency to be considered met.
  ///
  /// [descriptionElement] ("_description") Extensions for description
  ///
  /// [predecessor] Predecessor test plans - those that are expected to be
  ///  successfully performed as a dependency for the execution of this test
  ///  plan.
  ///
  const factory TestPlanDependency({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the element.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information
    ///  that is not part of the basic definition of the element and that
    ///  modifies the understanding of the element in which it is contained
    ///  and/or the understanding of the containing element's descendants.
    ///  Usually modifier elements provide negation or qualification. To make
    ///  the use of extensions safe and managable, there is a strict set of
    ///  governance applied to the definition and use of extensions. Though any
    ///  implementer can define an extension, there is a set of requirements
    ///  that SHALL be met as part of the definition of the extension.
    ///  Applications processing a resource are required to check for modifier
    ///  extensions.Modifier extensions SHALL NOT change the meaning of any
    ///  elements on Resource or DomainResource (including cannot change the
    ///  meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [description] A textual description of the criterium - what is needed
    ///  for the dependency to be considered met.
    FhirMarkdown? description,

    /// [descriptionElement] ("_description") Extensions for description
    @JsonKey(name: '_description') Element? descriptionElement,

    /// [predecessor] Predecessor test plans - those that are expected to be
    ///  successfully performed as a dependency for the execution of this test
    ///  plan.
    Reference? predecessor,
  }) = _TestPlanDependency;

  @override
  String get fhirType => 'TestPlanDependency';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory TestPlanDependency.fromYaml(dynamic yaml) => yaml is String
      ? TestPlanDependency.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TestPlanDependency.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TestPlanDependency cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory TestPlanDependency.fromJson(Map<String, dynamic> json) =>
      _$TestPlanDependencyFromJson(json);

  /// Acts like a constructor, returns a [TestPlanDependency], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory TestPlanDependency.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TestPlanDependencyFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [TestPlanTestCase] A plan for executing testing on an artifact or
///  specifications.
@freezed
class TestPlanTestCase with BackboneType, _$TestPlanTestCase {
  /// [TestPlanTestCase] A plan for executing testing on an artifact or
  ///  specifications.
  const TestPlanTestCase._();

  /// [TestPlanTestCase] A plan for executing testing on an artifact or
  ///  specifications.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  ///  is not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of
  ///  extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be
  ///  met as part of the definition of the extension. Applications processing
  ///  a resource are required to check for modifier extensions.Modifier
  ///  extensions SHALL NOT change the meaning of any elements on Resource or
  ///  DomainResource (including cannot change the meaning of modifierExtension
  ///  itself).
  ///
  /// [sequence] Sequence of test case - an ordinal number that indicates the
  ///  order for the present test case in the test plan.
  ///
  /// [sequenceElement] ("_sequence") Extensions for sequence
  ///
  /// [scope] The scope or artifact covered by the case, when the individual
  ///  test case is associated with a testable artifact.
  ///
  /// [dependency] The required criteria to execute the test case - e.g.
  ///  preconditions, previous tests.
  ///
  /// [testRun] The actual test to be executed.
  ///
  /// [testData] The test data used in the test case.
  ///
  /// [assertion] The test assertions - the expectations of test results from
  ///  the execution of the test case.
  ///
  const factory TestPlanTestCase({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the element.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information
    ///  that is not part of the basic definition of the element and that
    ///  modifies the understanding of the element in which it is contained
    ///  and/or the understanding of the containing element's descendants.
    ///  Usually modifier elements provide negation or qualification. To make
    ///  the use of extensions safe and managable, there is a strict set of
    ///  governance applied to the definition and use of extensions. Though any
    ///  implementer can define an extension, there is a set of requirements
    ///  that SHALL be met as part of the definition of the extension.
    ///  Applications processing a resource are required to check for modifier
    ///  extensions.Modifier extensions SHALL NOT change the meaning of any
    ///  elements on Resource or DomainResource (including cannot change the
    ///  meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [sequence] Sequence of test case - an ordinal number that indicates the
    ///  order for the present test case in the test plan.
    FhirInteger? sequence,

    /// [sequenceElement] ("_sequence") Extensions for sequence
    @JsonKey(name: '_sequence') Element? sequenceElement,

    /// [scope] The scope or artifact covered by the case, when the individual
    ///  test case is associated with a testable artifact.
    List<Reference>? scope,

    /// [dependency] The required criteria to execute the test case - e.g.
    ///  preconditions, previous tests.
    List<TestPlanDependency1>? dependency,

    /// [testRun] The actual test to be executed.
    List<TestPlanTestRun>? testRun,

    /// [testData] The test data used in the test case.
    List<TestPlanTestData>? testData,

    /// [assertion] The test assertions - the expectations of test results from
    ///  the execution of the test case.
    List<TestPlanAssertion>? assertion,
  }) = _TestPlanTestCase;

  @override
  String get fhirType => 'TestPlanTestCase';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory TestPlanTestCase.fromYaml(dynamic yaml) => yaml is String
      ? TestPlanTestCase.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TestPlanTestCase.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TestPlanTestCase cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory TestPlanTestCase.fromJson(Map<String, dynamic> json) =>
      _$TestPlanTestCaseFromJson(json);

  /// Acts like a constructor, returns a [TestPlanTestCase], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory TestPlanTestCase.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TestPlanTestCaseFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [TestPlanDependency1] A plan for executing testing on an artifact or
///  specifications.
@freezed
class TestPlanDependency1 with BackboneType, _$TestPlanDependency1 {
  /// [TestPlanDependency1] A plan for executing testing on an artifact or
  ///  specifications.
  const TestPlanDependency1._();

  /// [TestPlanDependency1] A plan for executing testing on an artifact or
  ///  specifications.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  ///  is not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of
  ///  extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be
  ///  met as part of the definition of the extension. Applications processing
  ///  a resource are required to check for modifier extensions.Modifier
  ///  extensions SHALL NOT change the meaning of any elements on Resource or
  ///  DomainResource (including cannot change the meaning of modifierExtension
  ///  itself).
  ///
  /// [description] Description of the criteria.
  ///
  /// [descriptionElement] ("_description") Extensions for description
  ///
  /// [predecessor] Link to predecessor test plans.
  ///
  const factory TestPlanDependency1({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the element.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information
    ///  that is not part of the basic definition of the element and that
    ///  modifies the understanding of the element in which it is contained
    ///  and/or the understanding of the containing element's descendants.
    ///  Usually modifier elements provide negation or qualification. To make
    ///  the use of extensions safe and managable, there is a strict set of
    ///  governance applied to the definition and use of extensions. Though any
    ///  implementer can define an extension, there is a set of requirements
    ///  that SHALL be met as part of the definition of the extension.
    ///  Applications processing a resource are required to check for modifier
    ///  extensions.Modifier extensions SHALL NOT change the meaning of any
    ///  elements on Resource or DomainResource (including cannot change the
    ///  meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [description] Description of the criteria.
    FhirMarkdown? description,

    /// [descriptionElement] ("_description") Extensions for description
    @JsonKey(name: '_description') Element? descriptionElement,

    /// [predecessor] Link to predecessor test plans.
    Reference? predecessor,
  }) = _TestPlanDependency1;

  @override
  String get fhirType => 'TestPlanDependency1';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory TestPlanDependency1.fromYaml(dynamic yaml) => yaml is String
      ? TestPlanDependency1.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TestPlanDependency1.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TestPlanDependency1 cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory TestPlanDependency1.fromJson(Map<String, dynamic> json) =>
      _$TestPlanDependency1FromJson(json);

  /// Acts like a constructor, returns a [TestPlanDependency1], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory TestPlanDependency1.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TestPlanDependency1FromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [TestPlanTestRun] A plan for executing testing on an artifact or
///  specifications.
@freezed
class TestPlanTestRun with BackboneType, _$TestPlanTestRun {
  /// [TestPlanTestRun] A plan for executing testing on an artifact or
  ///  specifications.
  const TestPlanTestRun._();

  /// [TestPlanTestRun] A plan for executing testing on an artifact or
  ///  specifications.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  ///  is not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of
  ///  extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be
  ///  met as part of the definition of the extension. Applications processing
  ///  a resource are required to check for modifier extensions.Modifier
  ///  extensions SHALL NOT change the meaning of any elements on Resource or
  ///  DomainResource (including cannot change the meaning of modifierExtension
  ///  itself).
  ///
  /// [narrative] The narrative description of the tests.
  ///
  /// [narrativeElement] ("_narrative") Extensions for narrative
  ///
  /// [script] The test cases in a structured language e.g. gherkin, Postman,
  ///  or FHIR TestScript.
  ///
  const factory TestPlanTestRun({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the element.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information
    ///  that is not part of the basic definition of the element and that
    ///  modifies the understanding of the element in which it is contained
    ///  and/or the understanding of the containing element's descendants.
    ///  Usually modifier elements provide negation or qualification. To make
    ///  the use of extensions safe and managable, there is a strict set of
    ///  governance applied to the definition and use of extensions. Though any
    ///  implementer can define an extension, there is a set of requirements
    ///  that SHALL be met as part of the definition of the extension.
    ///  Applications processing a resource are required to check for modifier
    ///  extensions.Modifier extensions SHALL NOT change the meaning of any
    ///  elements on Resource or DomainResource (including cannot change the
    ///  meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [narrative] The narrative description of the tests.
    FhirMarkdown? narrative,

    /// [narrativeElement] ("_narrative") Extensions for narrative
    @JsonKey(name: '_narrative') Element? narrativeElement,

    /// [script] The test cases in a structured language e.g. gherkin, Postman,
    ///  or FHIR TestScript.
    TestPlanScript? script,
  }) = _TestPlanTestRun;

  @override
  String get fhirType => 'TestPlanTestRun';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory TestPlanTestRun.fromYaml(dynamic yaml) => yaml is String
      ? TestPlanTestRun.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TestPlanTestRun.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TestPlanTestRun cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory TestPlanTestRun.fromJson(Map<String, dynamic> json) =>
      _$TestPlanTestRunFromJson(json);

  /// Acts like a constructor, returns a [TestPlanTestRun], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory TestPlanTestRun.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TestPlanTestRunFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [TestPlanScript] A plan for executing testing on an artifact or
///  specifications.
@freezed
class TestPlanScript with BackboneType, _$TestPlanScript {
  /// [TestPlanScript] A plan for executing testing on an artifact or
  ///  specifications.
  const TestPlanScript._();

  /// [TestPlanScript] A plan for executing testing on an artifact or
  ///  specifications.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  ///  is not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of
  ///  extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be
  ///  met as part of the definition of the extension. Applications processing
  ///  a resource are required to check for modifier extensions.Modifier
  ///  extensions SHALL NOT change the meaning of any elements on Resource or
  ///  DomainResource (including cannot change the meaning of modifierExtension
  ///  itself).
  ///
  /// [language] The language for the test cases e.g. 'gherkin', 'testscript'.
  ///
  /// [sourceString] The actual content of the cases - references to
  ///  TestScripts or externally defined content.
  ///
  /// [sourceStringElement] ("_sourceString") Extensions for sourceString
  ///
  /// [sourceReference] The actual content of the cases - references to
  ///  TestScripts or externally defined content.
  ///
  const factory TestPlanScript({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the element.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information
    ///  that is not part of the basic definition of the element and that
    ///  modifies the understanding of the element in which it is contained
    ///  and/or the understanding of the containing element's descendants.
    ///  Usually modifier elements provide negation or qualification. To make
    ///  the use of extensions safe and managable, there is a strict set of
    ///  governance applied to the definition and use of extensions. Though any
    ///  implementer can define an extension, there is a set of requirements
    ///  that SHALL be met as part of the definition of the extension.
    ///  Applications processing a resource are required to check for modifier
    ///  extensions.Modifier extensions SHALL NOT change the meaning of any
    ///  elements on Resource or DomainResource (including cannot change the
    ///  meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [language] The language for the test cases e.g. 'gherkin', 'testscript'.
    CodeableConcept? language,

    /// [sourceString] The actual content of the cases - references to
    ///  TestScripts or externally defined content.
    String? sourceString,

    /// [sourceStringElement] ("_sourceString") Extensions for sourceString
    @JsonKey(name: '_sourceString') Element? sourceStringElement,

    /// [sourceReference] The actual content of the cases - references to
    ///  TestScripts or externally defined content.
    Reference? sourceReference,
  }) = _TestPlanScript;

  @override
  String get fhirType => 'TestPlanScript';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory TestPlanScript.fromYaml(dynamic yaml) => yaml is String
      ? TestPlanScript.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TestPlanScript.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TestPlanScript cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory TestPlanScript.fromJson(Map<String, dynamic> json) =>
      _$TestPlanScriptFromJson(json);

  /// Acts like a constructor, returns a [TestPlanScript], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory TestPlanScript.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TestPlanScriptFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [TestPlanTestData] A plan for executing testing on an artifact or
///  specifications.
@freezed
class TestPlanTestData with BackboneType, _$TestPlanTestData {
  /// [TestPlanTestData] A plan for executing testing on an artifact or
  ///  specifications.
  const TestPlanTestData._();

  /// [TestPlanTestData] A plan for executing testing on an artifact or
  ///  specifications.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  ///  is not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of
  ///  extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be
  ///  met as part of the definition of the extension. Applications processing
  ///  a resource are required to check for modifier extensions.Modifier
  ///  extensions SHALL NOT change the meaning of any elements on Resource or
  ///  DomainResource (including cannot change the meaning of modifierExtension
  ///  itself).
  ///
  /// [type] The type of test data description, e.g. 'synthea'.
  ///
  /// [content] The actual test resources when they exist.
  ///
  /// [sourceString] Pointer to a definition of test resources - narrative or
  ///  structured e.g. synthetic data generation, etc.
  ///
  /// [sourceStringElement] ("_sourceString") Extensions for sourceString
  ///
  /// [sourceReference] Pointer to a definition of test resources - narrative
  ///  or structured e.g. synthetic data generation, etc.
  ///
  const factory TestPlanTestData({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the element.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information
    ///  that is not part of the basic definition of the element and that
    ///  modifies the understanding of the element in which it is contained
    ///  and/or the understanding of the containing element's descendants.
    ///  Usually modifier elements provide negation or qualification. To make
    ///  the use of extensions safe and managable, there is a strict set of
    ///  governance applied to the definition and use of extensions. Though any
    ///  implementer can define an extension, there is a set of requirements
    ///  that SHALL be met as part of the definition of the extension.
    ///  Applications processing a resource are required to check for modifier
    ///  extensions.Modifier extensions SHALL NOT change the meaning of any
    ///  elements on Resource or DomainResource (including cannot change the
    ///  meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [type] The type of test data description, e.g. 'synthea'.
    required Coding type,

    /// [content] The actual test resources when they exist.
    Reference? content,

    /// [sourceString] Pointer to a definition of test resources - narrative or
    ///  structured e.g. synthetic data generation, etc.
    String? sourceString,

    /// [sourceStringElement] ("_sourceString") Extensions for sourceString
    @JsonKey(name: '_sourceString') Element? sourceStringElement,

    /// [sourceReference] Pointer to a definition of test resources - narrative
    ///  or structured e.g. synthetic data generation, etc.
    Reference? sourceReference,
  }) = _TestPlanTestData;

  @override
  String get fhirType => 'TestPlanTestData';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory TestPlanTestData.fromYaml(dynamic yaml) => yaml is String
      ? TestPlanTestData.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TestPlanTestData.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TestPlanTestData cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory TestPlanTestData.fromJson(Map<String, dynamic> json) =>
      _$TestPlanTestDataFromJson(json);

  /// Acts like a constructor, returns a [TestPlanTestData], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory TestPlanTestData.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TestPlanTestDataFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [TestPlanAssertion] A plan for executing testing on an artifact or
///  specifications.
@freezed
class TestPlanAssertion with BackboneType, _$TestPlanAssertion {
  /// [TestPlanAssertion] A plan for executing testing on an artifact or
  ///  specifications.
  const TestPlanAssertion._();

  /// [TestPlanAssertion] A plan for executing testing on an artifact or
  ///  specifications.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  ///  is not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of
  ///  extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be
  ///  met as part of the definition of the extension. Applications processing
  ///  a resource are required to check for modifier extensions.Modifier
  ///  extensions SHALL NOT change the meaning of any elements on Resource or
  ///  DomainResource (including cannot change the meaning of modifierExtension
  ///  itself).
  ///
  /// [type] The test assertion type - this can be used to group assertions as
  ///  'required' or 'optional', or can be used for other classification of the
  ///  assertion.
  ///
  /// [object] The focus or object of the assertion i.e. a resource.
  ///
  /// [result] The test assertion - the expected outcome from the test case
  ///  execution.
  ///
  const factory TestPlanAssertion({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the element.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information
    ///  that is not part of the basic definition of the element and that
    ///  modifies the understanding of the element in which it is contained
    ///  and/or the understanding of the containing element's descendants.
    ///  Usually modifier elements provide negation or qualification. To make
    ///  the use of extensions safe and managable, there is a strict set of
    ///  governance applied to the definition and use of extensions. Though any
    ///  implementer can define an extension, there is a set of requirements
    ///  that SHALL be met as part of the definition of the extension.
    ///  Applications processing a resource are required to check for modifier
    ///  extensions.Modifier extensions SHALL NOT change the meaning of any
    ///  elements on Resource or DomainResource (including cannot change the
    ///  meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [type] The test assertion type - this can be used to group assertions
    ///  as 'required' or 'optional', or can be used for other classification
    ///  of the assertion.
    List<CodeableConcept>? type,

    /// [object] The focus or object of the assertion i.e. a resource.
    List<CodeableReference>? object,

    /// [result] The test assertion - the expected outcome from the test case
    ///  execution.
    List<CodeableReference>? result,
  }) = _TestPlanAssertion;

  @override
  String get fhirType => 'TestPlanAssertion';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory TestPlanAssertion.fromYaml(dynamic yaml) => yaml is String
      ? TestPlanAssertion.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TestPlanAssertion.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TestPlanAssertion cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory TestPlanAssertion.fromJson(Map<String, dynamic> json) =>
      _$TestPlanAssertionFromJson(json);

  /// Acts like a constructor, returns a [TestPlanAssertion], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory TestPlanAssertion.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TestPlanAssertionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [TestReport] A summary of information based on the results of executing a
///  TestScript.
@freezed
class TestReport with Resource, _$TestReport {
  /// [TestReport] A summary of information based on the results of executing a
  ///  TestScript.
  const TestReport._();

  /// [TestReport] A summary of information based on the results of executing a
  ///  TestScript.
  ///
  /// [resourceType] This is a TestReport resource
  ///
  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  ///
  /// [meta] The metadata about the resource. This is content that is
  ///  maintained by the infrastructure. Changes to the content might not
  ///  always be associated with version changes to the resource.
  ///
  /// [implicitRules] A reference to a set of rules that were followed when the
  ///  resource was constructed, and which must be understood when processing
  ///  the content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  ///
  /// [implicitRulesElement] ("_implicitRules") Extensions for implicitRules
  ///
  /// [language] The base language in which the resource is written.
  ///
  /// [languageElement] ("_language") Extensions for language
  ///
  /// [text] A human-readable narrative that contains a summary of the resource
  ///  and can be used to represent the content of the resource to a human. The
  ///  narrative need not encode all the structured data, but is required to
  ///  contain sufficient detail to make it "clinically safe" for a human to
  ///  just read the narrative. Resource definitions may define what content
  ///  should be represented in the narrative to ensure clinical safety.
  ///
  /// [contained] These resources do not have an independent existence apart
  ///  from the resource that contains them - they cannot be identified
  ///  independently, nor can they have their own independent transaction
  ///  scope. This is allowed to be a Parameters resource if and only if it is
  ///  referenced by a resource that provides context/meaning.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the resource. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  ///  is not part of the basic definition of the resource and that modifies
  ///  the understanding of the element that contains it and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of
  ///  extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  is allowed to define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension. Applications
  ///  processing a resource are required to check for modifier
  ///  extensions.Modifier extensions SHALL NOT change the meaning of any
  ///  elements on Resource or DomainResource (including cannot change the
  ///  meaning of modifierExtension itself).
  ///
  /// [identifier] Identifier for the TestReport assigned for external purposes
  ///  outside the context of FHIR.
  ///
  /// [name] A free text natural language name identifying the executed
  ///  TestReport.
  ///
  /// [nameElement] ("_name") Extensions for name
  ///
  /// [status] The current state of this test report.
  ///
  /// [statusElement] ("_status") Extensions for status
  ///
  /// [testScript] Ideally this is an absolute URL that is used to identify the
  ///  version-specific TestScript that was executed, matching the
  ///  `TestScript.url`.
  ///
  /// [result] The overall result from the execution of the TestScript.
  ///
  /// [resultElement] ("_result") Extensions for result
  ///
  /// [score] The final score (percentage of tests passed) resulting from the
  ///  execution of the TestScript.
  ///
  /// [scoreElement] ("_score") Extensions for score
  ///
  /// [tester] Name of the tester producing this report (Organization or
  ///  individual).
  ///
  /// [testerElement] ("_tester") Extensions for tester
  ///
  /// [issued] When the TestScript was executed and this TestReport was
  ///  generated.
  ///
  /// [issuedElement] ("_issued") Extensions for issued
  ///
  /// [participant] A participant in the test execution, either the execution
  ///  engine, a client, or a server.
  ///
  /// [setup] The results of the series of required setup operations before the
  ///  tests were executed.
  ///
  /// [test] A test executed from the test script.
  ///
  /// [teardown] The results of the series of operations required to clean up
  ///  after all the tests were executed (successfully or otherwise).
  ///
  const factory TestReport({
    /// [resourceType] This is a TestReport resource
    @Default(R6ResourceType.TestReport)
    @JsonKey(unknownEnumValue: R6ResourceType.TestReport)
    R6ResourceType resourceType,

    /// [id] The logical id of the resource, as used in the URL for the
    ///  resource. Once assigned, this value never changes.
    FhirId? id,

    /// [meta] The metadata about the resource. This is content that is
    ///  maintained by the infrastructure. Changes to the content might not
    ///  always be associated with version changes to the resource.
    FhirMeta? meta,

    /// [implicitRules] A reference to a set of rules that were followed when
    ///  the resource was constructed, and which must be understood when
    ///  processing the content. Often, this is a reference to an
    ///  implementation guide that defines the special rules along with other
    ///  profiles etc.
    FhirUri? implicitRules,

    /// [implicitRulesElement] ("_implicitRules") Extensions for implicitRules
    @JsonKey(name: '_implicitRules') Element? implicitRulesElement,

    /// [language] The base language in which the resource is written.
    FhirCode? language,

    /// [languageElement] ("_language") Extensions for language
    @JsonKey(name: '_language') Element? languageElement,

    /// [text] A human-readable narrative that contains a summary of the
    ///  resource and can be used to represent the content of the resource to a
    ///  human. The narrative need not encode all the structured data, but is
    ///  required to contain sufficient detail to make it "clinically safe" for
    ///  a human to just read the narrative. Resource definitions may define
    ///  what content should be represented in the narrative to ensure clinical
    ///  safety.
    Narrative? text,

    /// [contained] These resources do not have an independent existence apart
    ///  from the resource that contains them - they cannot be identified
    ///  independently, nor can they have their own independent transaction
    ///  scope. This is allowed to be a Parameters resource if and only if it
    ///  is referenced by a resource that provides context/meaning.
    List<Resource>? contained,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the resource.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information
    ///  that is not part of the basic definition of the resource and that
    ///  modifies the understanding of the element that contains it and/or the
    ///  understanding of the containing element's descendants. Usually
    ///  modifier elements provide negation or qualification. To make the use
    ///  of extensions safe and managable, there is a strict set of governance
    ///  applied to the definition and use of extensions. Though any
    ///  implementer is allowed to define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension. Applications processing a resource are required to check
    ///  for modifier extensions.Modifier extensions SHALL NOT change the
    ///  meaning of any elements on Resource or DomainResource (including
    ///  cannot change the meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [identifier] Identifier for the TestReport assigned for external
    ///  purposes outside the context of FHIR.
    Identifier? identifier,

    /// [name] A free text natural language name identifying the executed
    ///  TestReport.
    String? name,

    /// [nameElement] ("_name") Extensions for name
    @JsonKey(name: '_name') Element? nameElement,

    /// [status] The current state of this test report.
    FhirCode? status,

    /// [statusElement] ("_status") Extensions for status
    @JsonKey(name: '_status') Element? statusElement,

    /// [testScript] Ideally this is an absolute URL that is used to identify
    ///  the version-specific TestScript that was executed, matching the
    ///  `TestScript.url`.
    required FhirCanonical testScript,

    /// [result] The overall result from the execution of the TestScript.
    FhirCode? result,

    /// [resultElement] ("_result") Extensions for result
    @JsonKey(name: '_result') Element? resultElement,

    /// [score] The final score (percentage of tests passed) resulting from the
    ///  execution of the TestScript.
    FhirDecimal? score,

    /// [scoreElement] ("_score") Extensions for score
    @JsonKey(name: '_score') Element? scoreElement,

    /// [tester] Name of the tester producing this report (Organization or
    ///  individual).
    String? tester,

    /// [testerElement] ("_tester") Extensions for tester
    @JsonKey(name: '_tester') Element? testerElement,

    /// [issued] When the TestScript was executed and this TestReport was
    ///  generated.
    FhirDateTime? issued,

    /// [issuedElement] ("_issued") Extensions for issued
    @JsonKey(name: '_issued') Element? issuedElement,

    /// [participant] A participant in the test execution, either the execution
    ///  engine, a client, or a server.
    List<TestReportParticipant>? participant,

    /// [setup] The results of the series of required setup operations before
    ///  the tests were executed.
    TestReportSetup? setup,

    /// [test] A test executed from the test script.
    List<TestReportTest>? test,

    /// [teardown] The results of the series of operations required to clean up
    ///  after all the tests were executed (successfully or otherwise).
    TestReportTeardown? teardown,
  }) = _TestReport;

  @override
  String get fhirType => 'TestReport';

  /// Produces a Yaml formatted String version of the object
  @override
  String toYaml() => json2yaml(toJson());

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory TestReport.fromYaml(dynamic yaml) => yaml is String
      ? TestReport.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TestReport.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TestReport cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory TestReport.fromJson(Map<String, dynamic> json) =>
      _$TestReportFromJson(json);

  /// Acts like a constructor, returns a [TestReport], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory TestReport.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TestReportFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());
}

/// [TestReportParticipant] A summary of information based on the results of
///  executing a TestScript.
@freezed
class TestReportParticipant with BackboneType, _$TestReportParticipant {
  /// [TestReportParticipant] A summary of information based on the results of
  ///  executing a TestScript.
  const TestReportParticipant._();

  /// [TestReportParticipant] A summary of information based on the results of
  ///  executing a TestScript.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  ///  is not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of
  ///  extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be
  ///  met as part of the definition of the extension. Applications processing
  ///  a resource are required to check for modifier extensions.Modifier
  ///  extensions SHALL NOT change the meaning of any elements on Resource or
  ///  DomainResource (including cannot change the meaning of modifierExtension
  ///  itself).
  ///
  /// [type] The type of participant.
  ///
  /// [typeElement] ("_type") Extensions for type
  ///
  /// [uri] The uri of the participant. An absolute URL is preferred.
  ///
  /// [uriElement] ("_uri") Extensions for uri
  ///
  /// [display] The display name of the participant.
  ///
  /// [displayElement] ("_display") Extensions for display
  ///
  const factory TestReportParticipant({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the element.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information
    ///  that is not part of the basic definition of the element and that
    ///  modifies the understanding of the element in which it is contained
    ///  and/or the understanding of the containing element's descendants.
    ///  Usually modifier elements provide negation or qualification. To make
    ///  the use of extensions safe and managable, there is a strict set of
    ///  governance applied to the definition and use of extensions. Though any
    ///  implementer can define an extension, there is a set of requirements
    ///  that SHALL be met as part of the definition of the extension.
    ///  Applications processing a resource are required to check for modifier
    ///  extensions.Modifier extensions SHALL NOT change the meaning of any
    ///  elements on Resource or DomainResource (including cannot change the
    ///  meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [type] The type of participant.
    FhirCode? type,

    /// [typeElement] ("_type") Extensions for type
    @JsonKey(name: '_type') Element? typeElement,

    /// [uri] The uri of the participant. An absolute URL is preferred.
    FhirUri? uri,

    /// [uriElement] ("_uri") Extensions for uri
    @JsonKey(name: '_uri') Element? uriElement,

    /// [display] The display name of the participant.
    String? display,

    /// [displayElement] ("_display") Extensions for display
    @JsonKey(name: '_display') Element? displayElement,
  }) = _TestReportParticipant;

  @override
  String get fhirType => 'TestReportParticipant';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory TestReportParticipant.fromYaml(dynamic yaml) => yaml is String
      ? TestReportParticipant.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TestReportParticipant.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TestReportParticipant cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory TestReportParticipant.fromJson(Map<String, dynamic> json) =>
      _$TestReportParticipantFromJson(json);

  /// Acts like a constructor, returns a [TestReportParticipant], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory TestReportParticipant.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TestReportParticipantFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [TestReportSetup] A summary of information based on the results of
///  executing a TestScript.
@freezed
class TestReportSetup with BackboneType, _$TestReportSetup {
  /// [TestReportSetup] A summary of information based on the results of
  ///  executing a TestScript.
  const TestReportSetup._();

  /// [TestReportSetup] A summary of information based on the results of
  ///  executing a TestScript.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  ///  is not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of
  ///  extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be
  ///  met as part of the definition of the extension. Applications processing
  ///  a resource are required to check for modifier extensions.Modifier
  ///  extensions SHALL NOT change the meaning of any elements on Resource or
  ///  DomainResource (including cannot change the meaning of modifierExtension
  ///  itself).
  ///
  /// [action] Action would contain either an operation or an assertion.
  ///
  const factory TestReportSetup({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the element.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information
    ///  that is not part of the basic definition of the element and that
    ///  modifies the understanding of the element in which it is contained
    ///  and/or the understanding of the containing element's descendants.
    ///  Usually modifier elements provide negation or qualification. To make
    ///  the use of extensions safe and managable, there is a strict set of
    ///  governance applied to the definition and use of extensions. Though any
    ///  implementer can define an extension, there is a set of requirements
    ///  that SHALL be met as part of the definition of the extension.
    ///  Applications processing a resource are required to check for modifier
    ///  extensions.Modifier extensions SHALL NOT change the meaning of any
    ///  elements on Resource or DomainResource (including cannot change the
    ///  meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [action] Action would contain either an operation or an assertion.
    required List<TestReportAction> action,
  }) = _TestReportSetup;

  @override
  String get fhirType => 'TestReportSetup';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory TestReportSetup.fromYaml(dynamic yaml) => yaml is String
      ? TestReportSetup.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TestReportSetup.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TestReportSetup cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory TestReportSetup.fromJson(Map<String, dynamic> json) =>
      _$TestReportSetupFromJson(json);

  /// Acts like a constructor, returns a [TestReportSetup], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory TestReportSetup.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TestReportSetupFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [TestReportAction] A summary of information based on the results of
///  executing a TestScript.
@freezed
class TestReportAction with BackboneType, _$TestReportAction {
  /// [TestReportAction] A summary of information based on the results of
  ///  executing a TestScript.
  const TestReportAction._();

  /// [TestReportAction] A summary of information based on the results of
  ///  executing a TestScript.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  ///  is not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of
  ///  extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be
  ///  met as part of the definition of the extension. Applications processing
  ///  a resource are required to check for modifier extensions.Modifier
  ///  extensions SHALL NOT change the meaning of any elements on Resource or
  ///  DomainResource (including cannot change the meaning of modifierExtension
  ///  itself).
  ///
  /// [operation] The operation performed.
  ///
  /// [assert_] ("assert") The results of the assertion performed on the
  ///  previous operations.
  ///
  const factory TestReportAction({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the element.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information
    ///  that is not part of the basic definition of the element and that
    ///  modifies the understanding of the element in which it is contained
    ///  and/or the understanding of the containing element's descendants.
    ///  Usually modifier elements provide negation or qualification. To make
    ///  the use of extensions safe and managable, there is a strict set of
    ///  governance applied to the definition and use of extensions. Though any
    ///  implementer can define an extension, there is a set of requirements
    ///  that SHALL be met as part of the definition of the extension.
    ///  Applications processing a resource are required to check for modifier
    ///  extensions.Modifier extensions SHALL NOT change the meaning of any
    ///  elements on Resource or DomainResource (including cannot change the
    ///  meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [operation] The operation performed.
    TestReportOperation? operation,

    /// [assert_] ("assert") The results of the assertion performed on the
    ///  previous operations.
    @JsonKey(name: 'assert') TestReportAssert? assert_,
  }) = _TestReportAction;

  @override
  String get fhirType => 'TestReportAction';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory TestReportAction.fromYaml(dynamic yaml) => yaml is String
      ? TestReportAction.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TestReportAction.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TestReportAction cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory TestReportAction.fromJson(Map<String, dynamic> json) =>
      _$TestReportActionFromJson(json);

  /// Acts like a constructor, returns a [TestReportAction], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory TestReportAction.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TestReportActionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [TestReportOperation] A summary of information based on the results of
///  executing a TestScript.
@freezed
class TestReportOperation with BackboneType, _$TestReportOperation {
  /// [TestReportOperation] A summary of information based on the results of
  ///  executing a TestScript.
  const TestReportOperation._();

  /// [TestReportOperation] A summary of information based on the results of
  ///  executing a TestScript.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  ///  is not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of
  ///  extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be
  ///  met as part of the definition of the extension. Applications processing
  ///  a resource are required to check for modifier extensions.Modifier
  ///  extensions SHALL NOT change the meaning of any elements on Resource or
  ///  DomainResource (including cannot change the meaning of modifierExtension
  ///  itself).
  ///
  /// [result] The result of this operation.
  ///
  /// [resultElement] ("_result") Extensions for result
  ///
  /// [message] An explanatory message associated with the result.
  ///
  /// [messageElement] ("_message") Extensions for message
  ///
  /// [detail] A link to further details on the result.
  ///
  /// [detailElement] ("_detail") Extensions for detail
  ///
  const factory TestReportOperation({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the element.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information
    ///  that is not part of the basic definition of the element and that
    ///  modifies the understanding of the element in which it is contained
    ///  and/or the understanding of the containing element's descendants.
    ///  Usually modifier elements provide negation or qualification. To make
    ///  the use of extensions safe and managable, there is a strict set of
    ///  governance applied to the definition and use of extensions. Though any
    ///  implementer can define an extension, there is a set of requirements
    ///  that SHALL be met as part of the definition of the extension.
    ///  Applications processing a resource are required to check for modifier
    ///  extensions.Modifier extensions SHALL NOT change the meaning of any
    ///  elements on Resource or DomainResource (including cannot change the
    ///  meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [result] The result of this operation.
    FhirCode? result,

    /// [resultElement] ("_result") Extensions for result
    @JsonKey(name: '_result') Element? resultElement,

    /// [message] An explanatory message associated with the result.
    FhirMarkdown? message,

    /// [messageElement] ("_message") Extensions for message
    @JsonKey(name: '_message') Element? messageElement,

    /// [detail] A link to further details on the result.
    FhirUri? detail,

    /// [detailElement] ("_detail") Extensions for detail
    @JsonKey(name: '_detail') Element? detailElement,
  }) = _TestReportOperation;

  @override
  String get fhirType => 'TestReportOperation';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory TestReportOperation.fromYaml(dynamic yaml) => yaml is String
      ? TestReportOperation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TestReportOperation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TestReportOperation cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory TestReportOperation.fromJson(Map<String, dynamic> json) =>
      _$TestReportOperationFromJson(json);

  /// Acts like a constructor, returns a [TestReportOperation], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory TestReportOperation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TestReportOperationFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [TestReportAssert] A summary of information based on the results of
///  executing a TestScript.
@freezed
class TestReportAssert with BackboneType, _$TestReportAssert {
  /// [TestReportAssert] A summary of information based on the results of
  ///  executing a TestScript.
  const TestReportAssert._();

  /// [TestReportAssert] A summary of information based on the results of
  ///  executing a TestScript.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  ///  is not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of
  ///  extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be
  ///  met as part of the definition of the extension. Applications processing
  ///  a resource are required to check for modifier extensions.Modifier
  ///  extensions SHALL NOT change the meaning of any elements on Resource or
  ///  DomainResource (including cannot change the meaning of modifierExtension
  ///  itself).
  ///
  /// [result] The result of this assertion.
  ///
  /// [resultElement] ("_result") Extensions for result
  ///
  /// [message] An explanatory message associated with the result.
  ///
  /// [messageElement] ("_message") Extensions for message
  ///
  /// [detail] A link to further details on the result.
  ///
  /// [detailElement] ("_detail") Extensions for detail
  ///
  /// [requirement] Links or references providing traceability to the testing
  ///  requirements for this assert.
  ///
  const factory TestReportAssert({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the element.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information
    ///  that is not part of the basic definition of the element and that
    ///  modifies the understanding of the element in which it is contained
    ///  and/or the understanding of the containing element's descendants.
    ///  Usually modifier elements provide negation or qualification. To make
    ///  the use of extensions safe and managable, there is a strict set of
    ///  governance applied to the definition and use of extensions. Though any
    ///  implementer can define an extension, there is a set of requirements
    ///  that SHALL be met as part of the definition of the extension.
    ///  Applications processing a resource are required to check for modifier
    ///  extensions.Modifier extensions SHALL NOT change the meaning of any
    ///  elements on Resource or DomainResource (including cannot change the
    ///  meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [result] The result of this assertion.
    FhirCode? result,

    /// [resultElement] ("_result") Extensions for result
    @JsonKey(name: '_result') Element? resultElement,

    /// [message] An explanatory message associated with the result.
    FhirMarkdown? message,

    /// [messageElement] ("_message") Extensions for message
    @JsonKey(name: '_message') Element? messageElement,

    /// [detail] A link to further details on the result.
    String? detail,

    /// [detailElement] ("_detail") Extensions for detail
    @JsonKey(name: '_detail') Element? detailElement,

    /// [requirement] Links or references providing traceability to the testing
    ///  requirements for this assert.
    List<TestReportRequirement>? requirement,
  }) = _TestReportAssert;

  @override
  String get fhirType => 'TestReportAssert';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory TestReportAssert.fromYaml(dynamic yaml) => yaml is String
      ? TestReportAssert.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TestReportAssert.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TestReportAssert cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory TestReportAssert.fromJson(Map<String, dynamic> json) =>
      _$TestReportAssertFromJson(json);

  /// Acts like a constructor, returns a [TestReportAssert], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory TestReportAssert.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TestReportAssertFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [TestReportRequirement] A summary of information based on the results of
///  executing a TestScript.
@freezed
class TestReportRequirement with BackboneType, _$TestReportRequirement {
  /// [TestReportRequirement] A summary of information based on the results of
  ///  executing a TestScript.
  const TestReportRequirement._();

  /// [TestReportRequirement] A summary of information based on the results of
  ///  executing a TestScript.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  ///  is not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of
  ///  extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be
  ///  met as part of the definition of the extension. Applications processing
  ///  a resource are required to check for modifier extensions.Modifier
  ///  extensions SHALL NOT change the meaning of any elements on Resource or
  ///  DomainResource (including cannot change the meaning of modifierExtension
  ///  itself).
  ///
  /// [linkUri] Link or reference providing traceability to the testing
  ///  requirement for this test.
  ///
  /// [linkUriElement] ("_linkUri") Extensions for linkUri
  ///
  /// [linkCanonical] Link or reference providing traceability to the testing
  ///  requirement for this test.
  ///
  /// [linkCanonicalElement] ("_linkCanonical") Extensions for linkCanonical
  ///
  const factory TestReportRequirement({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the element.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information
    ///  that is not part of the basic definition of the element and that
    ///  modifies the understanding of the element in which it is contained
    ///  and/or the understanding of the containing element's descendants.
    ///  Usually modifier elements provide negation or qualification. To make
    ///  the use of extensions safe and managable, there is a strict set of
    ///  governance applied to the definition and use of extensions. Though any
    ///  implementer can define an extension, there is a set of requirements
    ///  that SHALL be met as part of the definition of the extension.
    ///  Applications processing a resource are required to check for modifier
    ///  extensions.Modifier extensions SHALL NOT change the meaning of any
    ///  elements on Resource or DomainResource (including cannot change the
    ///  meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [linkUri] Link or reference providing traceability to the testing
    ///  requirement for this test.
    FhirUri? linkUri,

    /// [linkUriElement] ("_linkUri") Extensions for linkUri
    @JsonKey(name: '_linkUri') Element? linkUriElement,

    /// [linkCanonical] Link or reference providing traceability to the testing
    ///  requirement for this test.
    FhirCanonical? linkCanonical,

    /// [linkCanonicalElement] ("_linkCanonical") Extensions for linkCanonical
    @JsonKey(name: '_linkCanonical') Element? linkCanonicalElement,
  }) = _TestReportRequirement;

  @override
  String get fhirType => 'TestReportRequirement';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory TestReportRequirement.fromYaml(dynamic yaml) => yaml is String
      ? TestReportRequirement.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TestReportRequirement.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TestReportRequirement cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory TestReportRequirement.fromJson(Map<String, dynamic> json) =>
      _$TestReportRequirementFromJson(json);

  /// Acts like a constructor, returns a [TestReportRequirement], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory TestReportRequirement.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TestReportRequirementFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [TestReportTest] A summary of information based on the results of executing
///  a TestScript.
@freezed
class TestReportTest with BackboneType, _$TestReportTest {
  /// [TestReportTest] A summary of information based on the results of
  ///  executing a TestScript.
  const TestReportTest._();

  /// [TestReportTest] A summary of information based on the results of
  ///  executing a TestScript.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  ///  is not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of
  ///  extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be
  ///  met as part of the definition of the extension. Applications processing
  ///  a resource are required to check for modifier extensions.Modifier
  ///  extensions SHALL NOT change the meaning of any elements on Resource or
  ///  DomainResource (including cannot change the meaning of modifierExtension
  ///  itself).
  ///
  /// [name] The name of this test used for tracking/logging purposes by test
  ///  engines.
  ///
  /// [nameElement] ("_name") Extensions for name
  ///
  /// [description] A short description of the test used by test engines for
  ///  tracking and reporting purposes.
  ///
  /// [descriptionElement] ("_description") Extensions for description
  ///
  /// [action] Action would contain either an operation or an assertion.
  ///
  const factory TestReportTest({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the element.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information
    ///  that is not part of the basic definition of the element and that
    ///  modifies the understanding of the element in which it is contained
    ///  and/or the understanding of the containing element's descendants.
    ///  Usually modifier elements provide negation or qualification. To make
    ///  the use of extensions safe and managable, there is a strict set of
    ///  governance applied to the definition and use of extensions. Though any
    ///  implementer can define an extension, there is a set of requirements
    ///  that SHALL be met as part of the definition of the extension.
    ///  Applications processing a resource are required to check for modifier
    ///  extensions.Modifier extensions SHALL NOT change the meaning of any
    ///  elements on Resource or DomainResource (including cannot change the
    ///  meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [name] The name of this test used for tracking/logging purposes by test
    ///  engines.
    String? name,

    /// [nameElement] ("_name") Extensions for name
    @JsonKey(name: '_name') Element? nameElement,

    /// [description] A short description of the test used by test engines for
    ///  tracking and reporting purposes.
    String? description,

    /// [descriptionElement] ("_description") Extensions for description
    @JsonKey(name: '_description') Element? descriptionElement,

    /// [action] Action would contain either an operation or an assertion.
    required List<TestReportAction1> action,
  }) = _TestReportTest;

  @override
  String get fhirType => 'TestReportTest';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory TestReportTest.fromYaml(dynamic yaml) => yaml is String
      ? TestReportTest.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TestReportTest.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TestReportTest cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory TestReportTest.fromJson(Map<String, dynamic> json) =>
      _$TestReportTestFromJson(json);

  /// Acts like a constructor, returns a [TestReportTest], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory TestReportTest.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TestReportTestFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [TestReportAction1] A summary of information based on the results of
///  executing a TestScript.
@freezed
class TestReportAction1 with BackboneType, _$TestReportAction1 {
  /// [TestReportAction1] A summary of information based on the results of
  ///  executing a TestScript.
  const TestReportAction1._();

  /// [TestReportAction1] A summary of information based on the results of
  ///  executing a TestScript.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  ///  is not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of
  ///  extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be
  ///  met as part of the definition of the extension. Applications processing
  ///  a resource are required to check for modifier extensions.Modifier
  ///  extensions SHALL NOT change the meaning of any elements on Resource or
  ///  DomainResource (including cannot change the meaning of modifierExtension
  ///  itself).
  ///
  /// [operation] An operation would involve a REST request to a server.
  ///
  /// [assert_] ("assert") The results of the assertion performed on the
  ///  previous operations.
  ///
  const factory TestReportAction1({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the element.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information
    ///  that is not part of the basic definition of the element and that
    ///  modifies the understanding of the element in which it is contained
    ///  and/or the understanding of the containing element's descendants.
    ///  Usually modifier elements provide negation or qualification. To make
    ///  the use of extensions safe and managable, there is a strict set of
    ///  governance applied to the definition and use of extensions. Though any
    ///  implementer can define an extension, there is a set of requirements
    ///  that SHALL be met as part of the definition of the extension.
    ///  Applications processing a resource are required to check for modifier
    ///  extensions.Modifier extensions SHALL NOT change the meaning of any
    ///  elements on Resource or DomainResource (including cannot change the
    ///  meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [operation] An operation would involve a REST request to a server.
    TestReportOperation? operation,

    /// [assert_] ("assert") The results of the assertion performed on the
    ///  previous operations.
    @JsonKey(name: 'assert') TestReportAssert? assert_,
  }) = _TestReportAction1;

  @override
  String get fhirType => 'TestReportAction1';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory TestReportAction1.fromYaml(dynamic yaml) => yaml is String
      ? TestReportAction1.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TestReportAction1.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TestReportAction1 cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory TestReportAction1.fromJson(Map<String, dynamic> json) =>
      _$TestReportAction1FromJson(json);

  /// Acts like a constructor, returns a [TestReportAction1], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory TestReportAction1.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TestReportAction1FromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [TestReportTeardown] A summary of information based on the results of
///  executing a TestScript.
@freezed
class TestReportTeardown with BackboneType, _$TestReportTeardown {
  /// [TestReportTeardown] A summary of information based on the results of
  ///  executing a TestScript.
  const TestReportTeardown._();

  /// [TestReportTeardown] A summary of information based on the results of
  ///  executing a TestScript.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  ///  is not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of
  ///  extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be
  ///  met as part of the definition of the extension. Applications processing
  ///  a resource are required to check for modifier extensions.Modifier
  ///  extensions SHALL NOT change the meaning of any elements on Resource or
  ///  DomainResource (including cannot change the meaning of modifierExtension
  ///  itself).
  ///
  /// [action] The teardown action will only contain an operation.
  ///
  const factory TestReportTeardown({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the element.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information
    ///  that is not part of the basic definition of the element and that
    ///  modifies the understanding of the element in which it is contained
    ///  and/or the understanding of the containing element's descendants.
    ///  Usually modifier elements provide negation or qualification. To make
    ///  the use of extensions safe and managable, there is a strict set of
    ///  governance applied to the definition and use of extensions. Though any
    ///  implementer can define an extension, there is a set of requirements
    ///  that SHALL be met as part of the definition of the extension.
    ///  Applications processing a resource are required to check for modifier
    ///  extensions.Modifier extensions SHALL NOT change the meaning of any
    ///  elements on Resource or DomainResource (including cannot change the
    ///  meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [action] The teardown action will only contain an operation.
    required List<TestReportAction2> action,
  }) = _TestReportTeardown;

  @override
  String get fhirType => 'TestReportTeardown';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory TestReportTeardown.fromYaml(dynamic yaml) => yaml is String
      ? TestReportTeardown.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TestReportTeardown.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TestReportTeardown cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory TestReportTeardown.fromJson(Map<String, dynamic> json) =>
      _$TestReportTeardownFromJson(json);

  /// Acts like a constructor, returns a [TestReportTeardown], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory TestReportTeardown.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TestReportTeardownFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [TestReportAction2] A summary of information based on the results of
///  executing a TestScript.
@freezed
class TestReportAction2 with BackboneType, _$TestReportAction2 {
  /// [TestReportAction2] A summary of information based on the results of
  ///  executing a TestScript.
  const TestReportAction2._();

  /// [TestReportAction2] A summary of information based on the results of
  ///  executing a TestScript.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  ///  is not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of
  ///  extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be
  ///  met as part of the definition of the extension. Applications processing
  ///  a resource are required to check for modifier extensions.Modifier
  ///  extensions SHALL NOT change the meaning of any elements on Resource or
  ///  DomainResource (including cannot change the meaning of modifierExtension
  ///  itself).
  ///
  /// [operation] An operation would involve a REST request to a server.
  ///
  const factory TestReportAction2({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the element.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information
    ///  that is not part of the basic definition of the element and that
    ///  modifies the understanding of the element in which it is contained
    ///  and/or the understanding of the containing element's descendants.
    ///  Usually modifier elements provide negation or qualification. To make
    ///  the use of extensions safe and managable, there is a strict set of
    ///  governance applied to the definition and use of extensions. Though any
    ///  implementer can define an extension, there is a set of requirements
    ///  that SHALL be met as part of the definition of the extension.
    ///  Applications processing a resource are required to check for modifier
    ///  extensions.Modifier extensions SHALL NOT change the meaning of any
    ///  elements on Resource or DomainResource (including cannot change the
    ///  meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [operation] An operation would involve a REST request to a server.
    required TestReportOperation operation,
  }) = _TestReportAction2;

  @override
  String get fhirType => 'TestReportAction2';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory TestReportAction2.fromYaml(dynamic yaml) => yaml is String
      ? TestReportAction2.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TestReportAction2.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TestReportAction2 cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory TestReportAction2.fromJson(Map<String, dynamic> json) =>
      _$TestReportAction2FromJson(json);

  /// Acts like a constructor, returns a [TestReportAction2], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory TestReportAction2.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TestReportAction2FromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [TestScript] A structured set of tests against a FHIR server or client
///  implementation to determine compliance against the FHIR specification.
@freezed
class TestScript with Resource, _$TestScript {
  /// [TestScript] A structured set of tests against a FHIR server or client
  ///  implementation to determine compliance against the FHIR specification.
  const TestScript._();

  /// [TestScript] A structured set of tests against a FHIR server or client
  ///  implementation to determine compliance against the FHIR specification.
  ///
  /// [resourceType] This is a TestScript resource
  ///
  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  ///
  /// [meta] The metadata about the resource. This is content that is
  ///  maintained by the infrastructure. Changes to the content might not
  ///  always be associated with version changes to the resource.
  ///
  /// [implicitRules] A reference to a set of rules that were followed when the
  ///  resource was constructed, and which must be understood when processing
  ///  the content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  ///
  /// [implicitRulesElement] ("_implicitRules") Extensions for implicitRules
  ///
  /// [language] The base language in which the resource is written.
  ///
  /// [languageElement] ("_language") Extensions for language
  ///
  /// [text] A human-readable narrative that contains a summary of the resource
  ///  and can be used to represent the content of the resource to a human. The
  ///  narrative need not encode all the structured data, but is required to
  ///  contain sufficient detail to make it "clinically safe" for a human to
  ///  just read the narrative. Resource definitions may define what content
  ///  should be represented in the narrative to ensure clinical safety.
  ///
  /// [contained] These resources do not have an independent existence apart
  ///  from the resource that contains them - they cannot be identified
  ///  independently, nor can they have their own independent transaction
  ///  scope. This is allowed to be a Parameters resource if and only if it is
  ///  referenced by a resource that provides context/meaning.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the resource. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  ///  is not part of the basic definition of the resource and that modifies
  ///  the understanding of the element that contains it and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of
  ///  extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  is allowed to define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension. Applications
  ///  processing a resource are required to check for modifier
  ///  extensions.Modifier extensions SHALL NOT change the meaning of any
  ///  elements on Resource or DomainResource (including cannot change the
  ///  meaning of modifierExtension itself).
  ///
  /// [url] An absolute URI that is used to identify this test script when it
  ///  is referenced in a specification, model, design or an instance; also
  ///  called its canonical identifier. This SHOULD be globally unique and
  ///  SHOULD be a literal address at which an authoritative instance of this
  ///  test script is (or will be) published. This URL can be the target of a
  ///  canonical reference. It SHALL remain the same when the test script is
  ///  stored on different servers.
  ///
  /// [urlElement] ("_url") Extensions for url
  ///
  /// [identifier] A formal identifier that is used to identify this test
  ///  script when it is represented in other formats, or referenced in a
  ///  specification, model, design or an instance.
  ///
  /// [version] The identifier that is used to identify this version of the
  ///  test script when it is referenced in a specification, model, design or
  ///  instance. This is an arbitrary value managed by the test script author
  ///  and is not expected to be globally unique. For example, it might be a
  ///  timestamp (e.g. yyyymmdd) if a managed version is not available. There
  ///  is also no expectation that versions can be placed in a lexicographical
  ///  sequence.
  ///
  /// [versionElement] ("_version") Extensions for version
  ///
  /// [versionAlgorithmString] Indicates the mechanism used to compare versions
  ///  to determine which is more current.
  ///
  /// [versionAlgorithmStringElement] ("_versionAlgorithmString") Extensions
  ///  for versionAlgorithmString
  ///
  /// [versionAlgorithmCoding] Indicates the mechanism used to compare versions
  ///  to determine which is more current.
  ///
  /// [name] A natural language name identifying the test script. This name
  ///  should be usable as an identifier for the module by machine processing
  ///  applications such as code generation.
  ///
  /// [nameElement] ("_name") Extensions for name
  ///
  /// [title] A short, descriptive, user-friendly title for the test script.
  ///
  /// [titleElement] ("_title") Extensions for title
  ///
  /// [status] The status of this test script. Enables tracking the life-cycle
  ///  of the content.
  ///
  /// [statusElement] ("_status") Extensions for status
  ///
  /// [experimental] A Boolean value to indicate that this test script is
  ///  authored for testing purposes (or education/evaluation/marketing) and is
  ///  not intended to be used for genuine usage.
  ///
  /// [experimentalElement] ("_experimental") Extensions for experimental
  ///
  /// [date] The date (and optionally time) when the test script was last
  ///  significantly changed. The date must change when the business version
  ///  changes and it must change if the status code changes. In addition, it
  ///  should change when the substantive content of the test script changes.
  ///
  /// [dateElement] ("_date") Extensions for date
  ///
  /// [publisher] The name of the organization or individual responsible for
  ///  the release and ongoing maintenance of the test script.
  ///
  /// [publisherElement] ("_publisher") Extensions for publisher
  ///
  /// [contact] Contact details to assist a user in finding and communicating
  ///  with the publisher.
  ///
  /// [description] A free text natural language description of the test script
  ///  from a consumer's perspective.
  ///
  /// [descriptionElement] ("_description") Extensions for description
  ///
  /// [useContext] The content was developed with a focus and intent of
  ///  supporting the contexts that are listed. These contexts may be general
  ///  categories (gender, age, ...) or may be references to specific programs
  ///  (insurance plans, studies, ...) and may be used to assist with indexing
  ///  and searching for appropriate test script instances.
  ///
  /// [jurisdiction] A legal or geographic region in which the test script is
  ///  intended to be used.
  ///
  /// [purpose] Explanation of why this test script is needed and why it has
  ///  been designed as it has.
  ///
  /// [purposeElement] ("_purpose") Extensions for purpose
  ///
  /// [copyright] A copyright statement relating to the test script and/or its
  ///  contents. Copyright statements are generally legal restrictions on the
  ///  use and publishing of the test script.
  ///
  /// [copyrightElement] ("_copyright") Extensions for copyright
  ///
  /// [copyrightLabel] A short string (<50 characters), suitable for inclusion
  ///  in a page footer that identifies the copyright holder, effective period,
  ///  and optionally whether rights are resctricted. (e.g. 'All rights
  ///  reserved', 'Some rights reserved').
  ///
  /// [copyrightLabelElement] ("_copyrightLabel") Extensions for copyrightLabel
  ///
  /// [origin] An abstract server used in operations within this test script in
  ///  the origin element.
  ///
  /// [destination] An abstract server used in operations within this test
  ///  script in the destination element.
  ///
  /// [metadata] The required capability must exist and are assumed to function
  ///  correctly on the FHIR server being tested.
  ///
  /// [scope] The scope indicates a conformance artifact that is tested by the
  ///  test(s) within this test case and the expectation of the test outcome(s)
  ///  as well as the intended test phase inclusion.
  ///
  /// [fixture] Fixture in the test script - by reference (uri). All fixtures
  ///  are required for the test script to execute.
  ///
  /// [profile] Reference to the profile to be used for validation.
  ///
  /// [variable] Variable is set based either on element value in response body
  ///  or on header field value in the response headers.
  ///
  /// [setup] A series of required setup operations before tests are executed.
  ///
  /// [test] A test in this script.
  ///
  /// [teardown] A series of operations required to clean up after all the
  ///  tests are executed (successfully or otherwise).
  ///
  const factory TestScript({
    /// [resourceType] This is a TestScript resource
    @Default(R6ResourceType.TestScript)
    @JsonKey(unknownEnumValue: R6ResourceType.TestScript)
    R6ResourceType resourceType,

    /// [id] The logical id of the resource, as used in the URL for the
    ///  resource. Once assigned, this value never changes.
    FhirId? id,

    /// [meta] The metadata about the resource. This is content that is
    ///  maintained by the infrastructure. Changes to the content might not
    ///  always be associated with version changes to the resource.
    FhirMeta? meta,

    /// [implicitRules] A reference to a set of rules that were followed when
    ///  the resource was constructed, and which must be understood when
    ///  processing the content. Often, this is a reference to an
    ///  implementation guide that defines the special rules along with other
    ///  profiles etc.
    FhirUri? implicitRules,

    /// [implicitRulesElement] ("_implicitRules") Extensions for implicitRules
    @JsonKey(name: '_implicitRules') Element? implicitRulesElement,

    /// [language] The base language in which the resource is written.
    FhirCode? language,

    /// [languageElement] ("_language") Extensions for language
    @JsonKey(name: '_language') Element? languageElement,

    /// [text] A human-readable narrative that contains a summary of the
    ///  resource and can be used to represent the content of the resource to a
    ///  human. The narrative need not encode all the structured data, but is
    ///  required to contain sufficient detail to make it "clinically safe" for
    ///  a human to just read the narrative. Resource definitions may define
    ///  what content should be represented in the narrative to ensure clinical
    ///  safety.
    Narrative? text,

    /// [contained] These resources do not have an independent existence apart
    ///  from the resource that contains them - they cannot be identified
    ///  independently, nor can they have their own independent transaction
    ///  scope. This is allowed to be a Parameters resource if and only if it
    ///  is referenced by a resource that provides context/meaning.
    List<Resource>? contained,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the resource.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information
    ///  that is not part of the basic definition of the resource and that
    ///  modifies the understanding of the element that contains it and/or the
    ///  understanding of the containing element's descendants. Usually
    ///  modifier elements provide negation or qualification. To make the use
    ///  of extensions safe and managable, there is a strict set of governance
    ///  applied to the definition and use of extensions. Though any
    ///  implementer is allowed to define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension. Applications processing a resource are required to check
    ///  for modifier extensions.Modifier extensions SHALL NOT change the
    ///  meaning of any elements on Resource or DomainResource (including
    ///  cannot change the meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [url] An absolute URI that is used to identify this test script when it
    ///  is referenced in a specification, model, design or an instance; also
    ///  called its canonical identifier. This SHOULD be globally unique and
    ///  SHOULD be a literal address at which an authoritative instance of this
    ///  test script is (or will be) published. This URL can be the target of a
    ///  canonical reference. It SHALL remain the same when the test script is
    ///  stored on different servers.
    FhirUri? url,

    /// [urlElement] ("_url") Extensions for url
    @JsonKey(name: '_url') Element? urlElement,

    /// [identifier] A formal identifier that is used to identify this test
    ///  script when it is represented in other formats, or referenced in a
    ///  specification, model, design or an instance.
    List<Identifier>? identifier,

    /// [version] The identifier that is used to identify this version of the
    ///  test script when it is referenced in a specification, model, design or
    ///  instance. This is an arbitrary value managed by the test script author
    ///  and is not expected to be globally unique. For example, it might be a
    ///  timestamp (e.g. yyyymmdd) if a managed version is not available. There
    ///  is also no expectation that versions can be placed in a
    ///  lexicographical sequence.
    String? version,

    /// [versionElement] ("_version") Extensions for version
    @JsonKey(name: '_version') Element? versionElement,

    /// [versionAlgorithmString] Indicates the mechanism used to compare
    ///  versions to determine which is more current.
    String? versionAlgorithmString,

    /// [versionAlgorithmStringElement] ("_versionAlgorithmString") Extensions
    ///  for versionAlgorithmString
    @JsonKey(name: '_versionAlgorithmString')
    Element? versionAlgorithmStringElement,

    /// [versionAlgorithmCoding] Indicates the mechanism used to compare
    ///  versions to determine which is more current.
    Coding? versionAlgorithmCoding,

    /// [name] A natural language name identifying the test script. This name
    ///  should be usable as an identifier for the module by machine processing
    ///  applications such as code generation.
    String? name,

    /// [nameElement] ("_name") Extensions for name
    @JsonKey(name: '_name') Element? nameElement,

    /// [title] A short, descriptive, user-friendly title for the test script.
    String? title,

    /// [titleElement] ("_title") Extensions for title
    @JsonKey(name: '_title') Element? titleElement,

    /// [status] The status of this test script. Enables tracking the
    ///  life-cycle of the content.
    FhirCode? status,

    /// [statusElement] ("_status") Extensions for status
    @JsonKey(name: '_status') Element? statusElement,

    /// [experimental] A Boolean value to indicate that this test script is
    ///  authored for testing purposes (or education/evaluation/marketing) and
    ///  is not intended to be used for genuine usage.
    FhirBoolean? experimental,

    /// [experimentalElement] ("_experimental") Extensions for experimental
    @JsonKey(name: '_experimental') Element? experimentalElement,

    /// [date] The date (and optionally time) when the test script was last
    ///  significantly changed. The date must change when the business version
    ///  changes and it must change if the status code changes. In addition, it
    ///  should change when the substantive content of the test script changes.
    FhirDateTime? date,

    /// [dateElement] ("_date") Extensions for date
    @JsonKey(name: '_date') Element? dateElement,

    /// [publisher] The name of the organization or individual responsible for
    ///  the release and ongoing maintenance of the test script.
    String? publisher,

    /// [publisherElement] ("_publisher") Extensions for publisher
    @JsonKey(name: '_publisher') Element? publisherElement,

    /// [contact] Contact details to assist a user in finding and communicating
    ///  with the publisher.
    List<ContactDetail>? contact,

    /// [description] A free text natural language description of the test
    ///  script from a consumer's perspective.
    FhirMarkdown? description,

    /// [descriptionElement] ("_description") Extensions for description
    @JsonKey(name: '_description') Element? descriptionElement,

    /// [useContext] The content was developed with a focus and intent of
    ///  supporting the contexts that are listed. These contexts may be general
    ///  categories (gender, age, ...) or may be references to specific
    ///  programs (insurance plans, studies, ...) and may be used to assist
    ///  with indexing and searching for appropriate test script instances.
    List<UsageContext>? useContext,

    /// [jurisdiction] A legal or geographic region in which the test script is
    ///  intended to be used.
    List<CodeableConcept>? jurisdiction,

    /// [purpose] Explanation of why this test script is needed and why it has
    ///  been designed as it has.
    FhirMarkdown? purpose,

    /// [purposeElement] ("_purpose") Extensions for purpose
    @JsonKey(name: '_purpose') Element? purposeElement,

    /// [copyright] A copyright statement relating to the test script and/or
    ///  its contents. Copyright statements are generally legal restrictions on
    ///  the use and publishing of the test script.
    FhirMarkdown? copyright,

    /// [copyrightElement] ("_copyright") Extensions for copyright
    @JsonKey(name: '_copyright') Element? copyrightElement,

    /// [copyrightLabel] A short string (<50 characters), suitable for
    ///  inclusion in a page footer that identifies the copyright holder,
    ///  effective period, and optionally whether rights are resctricted. (e.g.
    ///  'All rights reserved', 'Some rights reserved').
    String? copyrightLabel,

    /// [copyrightLabelElement] ("_copyrightLabel") Extensions for
    ///  copyrightLabel
    @JsonKey(name: '_copyrightLabel') Element? copyrightLabelElement,

    /// [origin] An abstract server used in operations within this test script
    ///  in the origin element.
    List<TestScriptOrigin>? origin,

    /// [destination] An abstract server used in operations within this test
    ///  script in the destination element.
    List<TestScriptDestination>? destination,

    /// [metadata] The required capability must exist and are assumed to
    ///  function correctly on the FHIR server being tested.
    TestScriptMetadata? metadata,

    /// [scope] The scope indicates a conformance artifact that is tested by
    ///  the test(s) within this test case and the expectation of the test
    ///  outcome(s) as well as the intended test phase inclusion.
    List<TestScriptScope>? scope,

    /// [fixture] Fixture in the test script - by reference (uri). All fixtures
    ///  are required for the test script to execute.
    List<TestScriptFixture>? fixture,

    /// [profile] Reference to the profile to be used for validation.
    List<FhirCanonical>? profile,
    @JsonKey(name: '_profile') List<Element>? profileElement,

    /// [variable] Variable is set based either on element value in response
    ///  body or on header field value in the response headers.
    List<TestScriptVariable>? variable,

    /// [setup] A series of required setup operations before tests are executed.
    TestScriptSetup? setup,

    /// [test] A test in this script.
    List<TestScriptTest>? test,

    /// [teardown] A series of operations required to clean up after all the
    ///  tests are executed (successfully or otherwise).
    TestScriptTeardown? teardown,
  }) = _TestScript;

  @override
  String get fhirType => 'TestScript';

  /// Produces a Yaml formatted String version of the object
  @override
  String toYaml() => json2yaml(toJson());

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory TestScript.fromYaml(dynamic yaml) => yaml is String
      ? TestScript.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TestScript.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TestScript cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory TestScript.fromJson(Map<String, dynamic> json) =>
      _$TestScriptFromJson(json);

  /// Acts like a constructor, returns a [TestScript], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory TestScript.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TestScriptFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());
}

/// [TestScriptOrigin] A structured set of tests against a FHIR server or
///  client implementation to determine compliance against the FHIR
///  specification.
@freezed
class TestScriptOrigin with BackboneType, _$TestScriptOrigin {
  /// [TestScriptOrigin] A structured set of tests against a FHIR server or
  ///  client implementation to determine compliance against the FHIR
  ///  specification.
  const TestScriptOrigin._();

  /// [TestScriptOrigin] A structured set of tests against a FHIR server or
  ///  client implementation to determine compliance against the FHIR
  ///  specification.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  ///  is not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of
  ///  extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be
  ///  met as part of the definition of the extension. Applications processing
  ///  a resource are required to check for modifier extensions.Modifier
  ///  extensions SHALL NOT change the meaning of any elements on Resource or
  ///  DomainResource (including cannot change the meaning of modifierExtension
  ///  itself).
  ///
  /// [index] Abstract name given to an origin server in this test script.  The
  ///  name is provided as a number starting at 1.
  ///
  /// [indexElement] ("_index") Extensions for index
  ///
  /// [profile] The type of origin profile the test system supports.
  ///
  /// [url] The explicit url path of the origin server used in this test script.
  ///
  /// [urlElement] ("_url") Extensions for url
  ///
  const factory TestScriptOrigin({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the element.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information
    ///  that is not part of the basic definition of the element and that
    ///  modifies the understanding of the element in which it is contained
    ///  and/or the understanding of the containing element's descendants.
    ///  Usually modifier elements provide negation or qualification. To make
    ///  the use of extensions safe and managable, there is a strict set of
    ///  governance applied to the definition and use of extensions. Though any
    ///  implementer can define an extension, there is a set of requirements
    ///  that SHALL be met as part of the definition of the extension.
    ///  Applications processing a resource are required to check for modifier
    ///  extensions.Modifier extensions SHALL NOT change the meaning of any
    ///  elements on Resource or DomainResource (including cannot change the
    ///  meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [index] Abstract name given to an origin server in this test script.
    ///  The name is provided as a number starting at 1.
    FhirInteger? index,

    /// [indexElement] ("_index") Extensions for index
    @JsonKey(name: '_index') Element? indexElement,

    /// [profile] The type of origin profile the test system supports.
    required Coding profile,

    /// [url] The explicit url path of the origin server used in this test
    ///  script.
    FhirUrl? url,

    /// [urlElement] ("_url") Extensions for url
    @JsonKey(name: '_url') Element? urlElement,
  }) = _TestScriptOrigin;

  @override
  String get fhirType => 'TestScriptOrigin';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory TestScriptOrigin.fromYaml(dynamic yaml) => yaml is String
      ? TestScriptOrigin.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TestScriptOrigin.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TestScriptOrigin cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory TestScriptOrigin.fromJson(Map<String, dynamic> json) =>
      _$TestScriptOriginFromJson(json);

  /// Acts like a constructor, returns a [TestScriptOrigin], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory TestScriptOrigin.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TestScriptOriginFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [TestScriptDestination] A structured set of tests against a FHIR server or
///  client implementation to determine compliance against the FHIR
///  specification.
@freezed
class TestScriptDestination with BackboneType, _$TestScriptDestination {
  /// [TestScriptDestination] A structured set of tests against a FHIR server
  ///  or client implementation to determine compliance against the FHIR
  ///  specification.
  const TestScriptDestination._();

  /// [TestScriptDestination] A structured set of tests against a FHIR server
  ///  or client implementation to determine compliance against the FHIR
  ///  specification.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  ///  is not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of
  ///  extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be
  ///  met as part of the definition of the extension. Applications processing
  ///  a resource are required to check for modifier extensions.Modifier
  ///  extensions SHALL NOT change the meaning of any elements on Resource or
  ///  DomainResource (including cannot change the meaning of modifierExtension
  ///  itself).
  ///
  /// [index] Abstract name given to a destination server in this test script.
  ///  The name is provided as a number starting at 1.
  ///
  /// [indexElement] ("_index") Extensions for index
  ///
  /// [profile] The type of destination profile the test system supports.
  ///
  /// [url] The explicit url path of the destination server used in this test
  ///  script.
  ///
  /// [urlElement] ("_url") Extensions for url
  ///
  const factory TestScriptDestination({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the element.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information
    ///  that is not part of the basic definition of the element and that
    ///  modifies the understanding of the element in which it is contained
    ///  and/or the understanding of the containing element's descendants.
    ///  Usually modifier elements provide negation or qualification. To make
    ///  the use of extensions safe and managable, there is a strict set of
    ///  governance applied to the definition and use of extensions. Though any
    ///  implementer can define an extension, there is a set of requirements
    ///  that SHALL be met as part of the definition of the extension.
    ///  Applications processing a resource are required to check for modifier
    ///  extensions.Modifier extensions SHALL NOT change the meaning of any
    ///  elements on Resource or DomainResource (including cannot change the
    ///  meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [index] Abstract name given to a destination server in this test
    ///  script.  The name is provided as a number starting at 1.
    FhirInteger? index,

    /// [indexElement] ("_index") Extensions for index
    @JsonKey(name: '_index') Element? indexElement,

    /// [profile] The type of destination profile the test system supports.
    required Coding profile,

    /// [url] The explicit url path of the destination server used in this test
    ///  script.
    FhirUrl? url,

    /// [urlElement] ("_url") Extensions for url
    @JsonKey(name: '_url') Element? urlElement,
  }) = _TestScriptDestination;

  @override
  String get fhirType => 'TestScriptDestination';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory TestScriptDestination.fromYaml(dynamic yaml) => yaml is String
      ? TestScriptDestination.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TestScriptDestination.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TestScriptDestination cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory TestScriptDestination.fromJson(Map<String, dynamic> json) =>
      _$TestScriptDestinationFromJson(json);

  /// Acts like a constructor, returns a [TestScriptDestination], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory TestScriptDestination.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TestScriptDestinationFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [TestScriptMetadata] A structured set of tests against a FHIR server or
///  client implementation to determine compliance against the FHIR
///  specification.
@freezed
class TestScriptMetadata with BackboneType, _$TestScriptMetadata {
  /// [TestScriptMetadata] A structured set of tests against a FHIR server or
  ///  client implementation to determine compliance against the FHIR
  ///  specification.
  const TestScriptMetadata._();

  /// [TestScriptMetadata] A structured set of tests against a FHIR server or
  ///  client implementation to determine compliance against the FHIR
  ///  specification.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  ///  is not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of
  ///  extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be
  ///  met as part of the definition of the extension. Applications processing
  ///  a resource are required to check for modifier extensions.Modifier
  ///  extensions SHALL NOT change the meaning of any elements on Resource or
  ///  DomainResource (including cannot change the meaning of modifierExtension
  ///  itself).
  ///
  /// [link] A link to the FHIR specification that this test is covering.
  ///
  /// [capability] Capabilities that must exist and are assumed to function
  ///  correctly on the FHIR server being tested.
  ///
  const factory TestScriptMetadata({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the element.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information
    ///  that is not part of the basic definition of the element and that
    ///  modifies the understanding of the element in which it is contained
    ///  and/or the understanding of the containing element's descendants.
    ///  Usually modifier elements provide negation or qualification. To make
    ///  the use of extensions safe and managable, there is a strict set of
    ///  governance applied to the definition and use of extensions. Though any
    ///  implementer can define an extension, there is a set of requirements
    ///  that SHALL be met as part of the definition of the extension.
    ///  Applications processing a resource are required to check for modifier
    ///  extensions.Modifier extensions SHALL NOT change the meaning of any
    ///  elements on Resource or DomainResource (including cannot change the
    ///  meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [link] A link to the FHIR specification that this test is covering.
    List<TestScriptLink>? link,

    /// [capability] Capabilities that must exist and are assumed to function
    ///  correctly on the FHIR server being tested.
    required List<TestScriptCapability> capability,
  }) = _TestScriptMetadata;

  @override
  String get fhirType => 'TestScriptMetadata';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory TestScriptMetadata.fromYaml(dynamic yaml) => yaml is String
      ? TestScriptMetadata.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TestScriptMetadata.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TestScriptMetadata cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory TestScriptMetadata.fromJson(Map<String, dynamic> json) =>
      _$TestScriptMetadataFromJson(json);

  /// Acts like a constructor, returns a [TestScriptMetadata], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory TestScriptMetadata.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TestScriptMetadataFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [TestScriptLink] A structured set of tests against a FHIR server or client
///  implementation to determine compliance against the FHIR specification.
@freezed
class TestScriptLink with BackboneType, _$TestScriptLink {
  /// [TestScriptLink] A structured set of tests against a FHIR server or
  ///  client implementation to determine compliance against the FHIR
  ///  specification.
  const TestScriptLink._();

  /// [TestScriptLink] A structured set of tests against a FHIR server or
  ///  client implementation to determine compliance against the FHIR
  ///  specification.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  ///  is not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of
  ///  extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be
  ///  met as part of the definition of the extension. Applications processing
  ///  a resource are required to check for modifier extensions.Modifier
  ///  extensions SHALL NOT change the meaning of any elements on Resource or
  ///  DomainResource (including cannot change the meaning of modifierExtension
  ///  itself).
  ///
  /// [url] URL to a particular requirement or feature within the FHIR
  ///  specification.
  ///
  /// [urlElement] ("_url") Extensions for url
  ///
  /// [description] Short description of the link.
  ///
  /// [descriptionElement] ("_description") Extensions for description
  ///
  const factory TestScriptLink({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the element.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information
    ///  that is not part of the basic definition of the element and that
    ///  modifies the understanding of the element in which it is contained
    ///  and/or the understanding of the containing element's descendants.
    ///  Usually modifier elements provide negation or qualification. To make
    ///  the use of extensions safe and managable, there is a strict set of
    ///  governance applied to the definition and use of extensions. Though any
    ///  implementer can define an extension, there is a set of requirements
    ///  that SHALL be met as part of the definition of the extension.
    ///  Applications processing a resource are required to check for modifier
    ///  extensions.Modifier extensions SHALL NOT change the meaning of any
    ///  elements on Resource or DomainResource (including cannot change the
    ///  meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [url] URL to a particular requirement or feature within the FHIR
    ///  specification.
    FhirUri? url,

    /// [urlElement] ("_url") Extensions for url
    @JsonKey(name: '_url') Element? urlElement,

    /// [description] Short description of the link.
    String? description,

    /// [descriptionElement] ("_description") Extensions for description
    @JsonKey(name: '_description') Element? descriptionElement,
  }) = _TestScriptLink;

  @override
  String get fhirType => 'TestScriptLink';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory TestScriptLink.fromYaml(dynamic yaml) => yaml is String
      ? TestScriptLink.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TestScriptLink.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TestScriptLink cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory TestScriptLink.fromJson(Map<String, dynamic> json) =>
      _$TestScriptLinkFromJson(json);

  /// Acts like a constructor, returns a [TestScriptLink], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory TestScriptLink.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TestScriptLinkFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [TestScriptCapability] A structured set of tests against a FHIR server or
///  client implementation to determine compliance against the FHIR
///  specification.
@freezed
class TestScriptCapability with BackboneType, _$TestScriptCapability {
  /// [TestScriptCapability] A structured set of tests against a FHIR server or
  ///  client implementation to determine compliance against the FHIR
  ///  specification.
  const TestScriptCapability._();

  /// [TestScriptCapability] A structured set of tests against a FHIR server or
  ///  client implementation to determine compliance against the FHIR
  ///  specification.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  ///  is not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of
  ///  extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be
  ///  met as part of the definition of the extension. Applications processing
  ///  a resource are required to check for modifier extensions.Modifier
  ///  extensions SHALL NOT change the meaning of any elements on Resource or
  ///  DomainResource (including cannot change the meaning of modifierExtension
  ///  itself).
  ///
  /// [required_] ("required") Whether or not the test execution will require
  ///  the given capabilities of the server in order for this test script to
  ///  execute.
  ///
  /// [requiredElement] ("_required") Extensions for required
  ///
  /// [validated] Whether or not the test execution will validate the given
  ///  capabilities of the server in order for this test script to execute.
  ///
  /// [validatedElement] ("_validated") Extensions for validated
  ///
  /// [description] Description of the capabilities that this test script is
  ///  requiring the server to support.
  ///
  /// [descriptionElement] ("_description") Extensions for description
  ///
  /// [origin] Which origin server these requirements apply to.
  ///
  /// [originElement] ("_origin") Extensions for origin
  ///
  /// [destination] Which server these requirements apply to.
  ///
  /// [destinationElement] ("_destination") Extensions for destination
  ///
  /// [link] Links to the FHIR specification that describes this interaction
  ///  and the resources involved in more detail.
  ///
  /// [linkElement] ("_link") Extensions for link
  ///
  /// [capabilities] Minimum capabilities required of server for test script to
  ///  execute successfully.   If server does not meet at a minimum the
  ///  referenced capability statement, then all tests in this script are
  ///  skipped.
  ///
  const factory TestScriptCapability({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the element.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information
    ///  that is not part of the basic definition of the element and that
    ///  modifies the understanding of the element in which it is contained
    ///  and/or the understanding of the containing element's descendants.
    ///  Usually modifier elements provide negation or qualification. To make
    ///  the use of extensions safe and managable, there is a strict set of
    ///  governance applied to the definition and use of extensions. Though any
    ///  implementer can define an extension, there is a set of requirements
    ///  that SHALL be met as part of the definition of the extension.
    ///  Applications processing a resource are required to check for modifier
    ///  extensions.Modifier extensions SHALL NOT change the meaning of any
    ///  elements on Resource or DomainResource (including cannot change the
    ///  meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [required_] ("required") Whether or not the test execution will require
    ///  the given capabilities of the server in order for this test script to
    ///  execute.
    @JsonKey(name: 'required') FhirBoolean? required_,

    /// [requiredElement] ("_required") Extensions for required
    @JsonKey(name: '_required') Element? requiredElement,

    /// [validated] Whether or not the test execution will validate the given
    ///  capabilities of the server in order for this test script to execute.
    FhirBoolean? validated,

    /// [validatedElement] ("_validated") Extensions for validated
    @JsonKey(name: '_validated') Element? validatedElement,

    /// [description] Description of the capabilities that this test script is
    ///  requiring the server to support.
    String? description,

    /// [descriptionElement] ("_description") Extensions for description
    @JsonKey(name: '_description') Element? descriptionElement,

    /// [origin] Which origin server these requirements apply to.
    List<FhirInteger>? origin,

    /// [originElement] ("_origin") Extensions for origin
    @JsonKey(name: '_origin') List<Element>? originElement,

    /// [destination] Which server these requirements apply to.
    FhirInteger? destination,

    /// [destinationElement] ("_destination") Extensions for destination
    @JsonKey(name: '_destination') Element? destinationElement,

    /// [link] Links to the FHIR specification that describes this interaction
    ///  and the resources involved in more detail.
    List<FhirUri>? link,

    /// [linkElement] ("_link") Extensions for link
    @JsonKey(name: '_link') List<Element>? linkElement,

    /// [capabilities] Minimum capabilities required of server for test script
    ///  to execute successfully.   If server does not meet at a minimum the
    ///  referenced capability statement, then all tests in this script are
    ///  skipped.
    required FhirCanonical capabilities,
  }) = _TestScriptCapability;

  @override
  String get fhirType => 'TestScriptCapability';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory TestScriptCapability.fromYaml(dynamic yaml) => yaml is String
      ? TestScriptCapability.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TestScriptCapability.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TestScriptCapability cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory TestScriptCapability.fromJson(Map<String, dynamic> json) =>
      _$TestScriptCapabilityFromJson(json);

  /// Acts like a constructor, returns a [TestScriptCapability], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory TestScriptCapability.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TestScriptCapabilityFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [TestScriptScope] A structured set of tests against a FHIR server or client
///  implementation to determine compliance against the FHIR specification.
@freezed
class TestScriptScope with BackboneType, _$TestScriptScope {
  /// [TestScriptScope] A structured set of tests against a FHIR server or
  ///  client implementation to determine compliance against the FHIR
  ///  specification.
  const TestScriptScope._();

  /// [TestScriptScope] A structured set of tests against a FHIR server or
  ///  client implementation to determine compliance against the FHIR
  ///  specification.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  ///  is not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of
  ///  extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be
  ///  met as part of the definition of the extension. Applications processing
  ///  a resource are required to check for modifier extensions.Modifier
  ///  extensions SHALL NOT change the meaning of any elements on Resource or
  ///  DomainResource (including cannot change the meaning of modifierExtension
  ///  itself).
  ///
  /// [artifact] The specific conformance artifact being tested. The canonical
  ///  reference can be version-specific.
  ///
  /// [conformance] The expectation of whether the test must pass for the
  ///  system to be considered conformant with the artifact: required - all
  ///  tests are expected to pass, optional - all test are expected to pass but
  ///  non-pass status may be allowed, strict - all tests are expected to pass
  ///  and warnings are treated as a failure.
  ///
  /// [phase] The phase of testing for this artifact: unit - development /
  ///  implementation phase, integration - internal system to system phase,
  ///  production - live system to system phase (Note, this may involve pii/phi
  ///  data).
  ///
  const factory TestScriptScope({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the element.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information
    ///  that is not part of the basic definition of the element and that
    ///  modifies the understanding of the element in which it is contained
    ///  and/or the understanding of the containing element's descendants.
    ///  Usually modifier elements provide negation or qualification. To make
    ///  the use of extensions safe and managable, there is a strict set of
    ///  governance applied to the definition and use of extensions. Though any
    ///  implementer can define an extension, there is a set of requirements
    ///  that SHALL be met as part of the definition of the extension.
    ///  Applications processing a resource are required to check for modifier
    ///  extensions.Modifier extensions SHALL NOT change the meaning of any
    ///  elements on Resource or DomainResource (including cannot change the
    ///  meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [artifact] The specific conformance artifact being tested. The
    ///  canonical reference can be version-specific.
    required FhirCanonical artifact,

    /// [conformance] The expectation of whether the test must pass for the
    ///  system to be considered conformant with the artifact: required - all
    ///  tests are expected to pass, optional - all test are expected to pass
    ///  but non-pass status may be allowed, strict - all tests are expected to
    ///  pass and warnings are treated as a failure.
    CodeableConcept? conformance,

    /// [phase] The phase of testing for this artifact: unit - development /
    ///  implementation phase, integration - internal system to system phase,
    ///  production - live system to system phase (Note, this may involve
    ///  pii/phi data).
    CodeableConcept? phase,
  }) = _TestScriptScope;

  @override
  String get fhirType => 'TestScriptScope';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory TestScriptScope.fromYaml(dynamic yaml) => yaml is String
      ? TestScriptScope.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TestScriptScope.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TestScriptScope cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory TestScriptScope.fromJson(Map<String, dynamic> json) =>
      _$TestScriptScopeFromJson(json);

  /// Acts like a constructor, returns a [TestScriptScope], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory TestScriptScope.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TestScriptScopeFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [TestScriptFixture] A structured set of tests against a FHIR server or
///  client implementation to determine compliance against the FHIR
///  specification.
@freezed
class TestScriptFixture with BackboneType, _$TestScriptFixture {
  /// [TestScriptFixture] A structured set of tests against a FHIR server or
  ///  client implementation to determine compliance against the FHIR
  ///  specification.
  const TestScriptFixture._();

  /// [TestScriptFixture] A structured set of tests against a FHIR server or
  ///  client implementation to determine compliance against the FHIR
  ///  specification.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  ///  is not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of
  ///  extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be
  ///  met as part of the definition of the extension. Applications processing
  ///  a resource are required to check for modifier extensions.Modifier
  ///  extensions SHALL NOT change the meaning of any elements on Resource or
  ///  DomainResource (including cannot change the meaning of modifierExtension
  ///  itself).
  ///
  /// [autocreate] Whether or not to implicitly create the fixture during
  ///  setup. If true, the fixture is automatically created on each server
  ///  being tested during setup, therefore no create operation is required for
  ///  this fixture in the TestScript.setup section.
  ///
  /// [autocreateElement] ("_autocreate") Extensions for autocreate
  ///
  /// [autodelete] Whether or not to implicitly delete the fixture during
  ///  teardown. If true, the fixture is automatically deleted on each server
  ///  being tested during teardown, therefore no delete operation is required
  ///  for this fixture in the TestScript.teardown section.
  ///
  /// [autodeleteElement] ("_autodelete") Extensions for autodelete
  ///
  /// [resource] Reference to the resource (containing the contents of the
  ///  resource needed for operations). This is allowed to be a Parameters
  ///  resource.
  ///
  const factory TestScriptFixture({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the element.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information
    ///  that is not part of the basic definition of the element and that
    ///  modifies the understanding of the element in which it is contained
    ///  and/or the understanding of the containing element's descendants.
    ///  Usually modifier elements provide negation or qualification. To make
    ///  the use of extensions safe and managable, there is a strict set of
    ///  governance applied to the definition and use of extensions. Though any
    ///  implementer can define an extension, there is a set of requirements
    ///  that SHALL be met as part of the definition of the extension.
    ///  Applications processing a resource are required to check for modifier
    ///  extensions.Modifier extensions SHALL NOT change the meaning of any
    ///  elements on Resource or DomainResource (including cannot change the
    ///  meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [autocreate] Whether or not to implicitly create the fixture during
    ///  setup. If true, the fixture is automatically created on each server
    ///  being tested during setup, therefore no create operation is required
    ///  for this fixture in the TestScript.setup section.
    FhirBoolean? autocreate,

    /// [autocreateElement] ("_autocreate") Extensions for autocreate
    @JsonKey(name: '_autocreate') Element? autocreateElement,

    /// [autodelete] Whether or not to implicitly delete the fixture during
    ///  teardown. If true, the fixture is automatically deleted on each server
    ///  being tested during teardown, therefore no delete operation is
    ///  required for this fixture in the TestScript.teardown section.
    FhirBoolean? autodelete,

    /// [autodeleteElement] ("_autodelete") Extensions for autodelete
    @JsonKey(name: '_autodelete') Element? autodeleteElement,

    /// [resource] Reference to the resource (containing the contents of the
    ///  resource needed for operations). This is allowed to be a Parameters
    ///  resource.
    Reference? resource,
  }) = _TestScriptFixture;

  @override
  String get fhirType => 'TestScriptFixture';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory TestScriptFixture.fromYaml(dynamic yaml) => yaml is String
      ? TestScriptFixture.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TestScriptFixture.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TestScriptFixture cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory TestScriptFixture.fromJson(Map<String, dynamic> json) =>
      _$TestScriptFixtureFromJson(json);

  /// Acts like a constructor, returns a [TestScriptFixture], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory TestScriptFixture.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TestScriptFixtureFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [TestScriptVariable] A structured set of tests against a FHIR server or
///  client implementation to determine compliance against the FHIR
///  specification.
@freezed
class TestScriptVariable with BackboneType, _$TestScriptVariable {
  /// [TestScriptVariable] A structured set of tests against a FHIR server or
  ///  client implementation to determine compliance against the FHIR
  ///  specification.
  const TestScriptVariable._();

  /// [TestScriptVariable] A structured set of tests against a FHIR server or
  ///  client implementation to determine compliance against the FHIR
  ///  specification.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  ///  is not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of
  ///  extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be
  ///  met as part of the definition of the extension. Applications processing
  ///  a resource are required to check for modifier extensions.Modifier
  ///  extensions SHALL NOT change the meaning of any elements on Resource or
  ///  DomainResource (including cannot change the meaning of modifierExtension
  ///  itself).
  ///
  /// [name] Descriptive name for this variable.
  ///
  /// [nameElement] ("_name") Extensions for name
  ///
  /// [defaultValue] A default, hard-coded, or user-defined value for this
  ///  variable.
  ///
  /// [defaultValueElement] ("_defaultValue") Extensions for defaultValue
  ///
  /// [description] A free text natural language description of the variable
  ///  and its purpose.
  ///
  /// [descriptionElement] ("_description") Extensions for description
  ///
  /// [expression] The FHIRPath expression for a specific value to evaluate
  ///  against the fixture body. When variables are defined, only one of either
  ///  expression, headerField or path must be specified.
  ///
  /// [expressionElement] ("_expression") Extensions for expression
  ///
  /// [headerField] Will be used to grab the HTTP header field value from the
  ///  headers that sourceId is pointing to.
  ///
  /// [headerFieldElement] ("_headerField") Extensions for headerField
  ///
  /// [hint] Displayable text string with hint help information to the user
  ///  when entering a default value.
  ///
  /// [hintElement] ("_hint") Extensions for hint
  ///
  /// [path] XPath or JSONPath to evaluate against the fixture body.  When
  ///  variables are defined, only one of either expression, headerField or
  ///  path must be specified.
  ///
  /// [pathElement] ("_path") Extensions for path
  ///
  /// [sourceId] Fixture to evaluate the XPath/JSONPath expression or the
  ///  headerField  against within this variable.
  ///
  /// [sourceIdElement] ("_sourceId") Extensions for sourceId
  ///
  const factory TestScriptVariable({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the element.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information
    ///  that is not part of the basic definition of the element and that
    ///  modifies the understanding of the element in which it is contained
    ///  and/or the understanding of the containing element's descendants.
    ///  Usually modifier elements provide negation or qualification. To make
    ///  the use of extensions safe and managable, there is a strict set of
    ///  governance applied to the definition and use of extensions. Though any
    ///  implementer can define an extension, there is a set of requirements
    ///  that SHALL be met as part of the definition of the extension.
    ///  Applications processing a resource are required to check for modifier
    ///  extensions.Modifier extensions SHALL NOT change the meaning of any
    ///  elements on Resource or DomainResource (including cannot change the
    ///  meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [name] Descriptive name for this variable.
    String? name,

    /// [nameElement] ("_name") Extensions for name
    @JsonKey(name: '_name') Element? nameElement,

    /// [defaultValue] A default, hard-coded, or user-defined value for this
    ///  variable.
    String? defaultValue,

    /// [defaultValueElement] ("_defaultValue") Extensions for defaultValue
    @JsonKey(name: '_defaultValue') Element? defaultValueElement,

    /// [description] A free text natural language description of the variable
    ///  and its purpose.
    String? description,

    /// [descriptionElement] ("_description") Extensions for description
    @JsonKey(name: '_description') Element? descriptionElement,

    /// [expression] The FHIRPath expression for a specific value to evaluate
    ///  against the fixture body. When variables are defined, only one of
    ///  either expression, headerField or path must be specified.
    String? expression,

    /// [expressionElement] ("_expression") Extensions for expression
    @JsonKey(name: '_expression') Element? expressionElement,

    /// [headerField] Will be used to grab the HTTP header field value from the
    ///  headers that sourceId is pointing to.
    String? headerField,

    /// [headerFieldElement] ("_headerField") Extensions for headerField
    @JsonKey(name: '_headerField') Element? headerFieldElement,

    /// [hint] Displayable text string with hint help information to the user
    ///  when entering a default value.
    String? hint,

    /// [hintElement] ("_hint") Extensions for hint
    @JsonKey(name: '_hint') Element? hintElement,

    /// [path] XPath or JSONPath to evaluate against the fixture body.  When
    ///  variables are defined, only one of either expression, headerField or
    ///  path must be specified.
    String? path,

    /// [pathElement] ("_path") Extensions for path
    @JsonKey(name: '_path') Element? pathElement,

    /// [sourceId] Fixture to evaluate the XPath/JSONPath expression or the
    ///  headerField  against within this variable.
    FhirId? sourceId,

    /// [sourceIdElement] ("_sourceId") Extensions for sourceId
    @JsonKey(name: '_sourceId') Element? sourceIdElement,
  }) = _TestScriptVariable;

  @override
  String get fhirType => 'TestScriptVariable';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory TestScriptVariable.fromYaml(dynamic yaml) => yaml is String
      ? TestScriptVariable.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TestScriptVariable.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TestScriptVariable cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory TestScriptVariable.fromJson(Map<String, dynamic> json) =>
      _$TestScriptVariableFromJson(json);

  /// Acts like a constructor, returns a [TestScriptVariable], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory TestScriptVariable.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TestScriptVariableFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [TestScriptSetup] A structured set of tests against a FHIR server or client
///  implementation to determine compliance against the FHIR specification.
@freezed
class TestScriptSetup with BackboneType, _$TestScriptSetup {
  /// [TestScriptSetup] A structured set of tests against a FHIR server or
  ///  client implementation to determine compliance against the FHIR
  ///  specification.
  const TestScriptSetup._();

  /// [TestScriptSetup] A structured set of tests against a FHIR server or
  ///  client implementation to determine compliance against the FHIR
  ///  specification.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  ///  is not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of
  ///  extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be
  ///  met as part of the definition of the extension. Applications processing
  ///  a resource are required to check for modifier extensions.Modifier
  ///  extensions SHALL NOT change the meaning of any elements on Resource or
  ///  DomainResource (including cannot change the meaning of modifierExtension
  ///  itself).
  ///
  /// [action] Action would contain either an operation or an assertion.
  ///
  const factory TestScriptSetup({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the element.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information
    ///  that is not part of the basic definition of the element and that
    ///  modifies the understanding of the element in which it is contained
    ///  and/or the understanding of the containing element's descendants.
    ///  Usually modifier elements provide negation or qualification. To make
    ///  the use of extensions safe and managable, there is a strict set of
    ///  governance applied to the definition and use of extensions. Though any
    ///  implementer can define an extension, there is a set of requirements
    ///  that SHALL be met as part of the definition of the extension.
    ///  Applications processing a resource are required to check for modifier
    ///  extensions.Modifier extensions SHALL NOT change the meaning of any
    ///  elements on Resource or DomainResource (including cannot change the
    ///  meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [action] Action would contain either an operation or an assertion.
    required List<TestScriptAction> action,
  }) = _TestScriptSetup;

  @override
  String get fhirType => 'TestScriptSetup';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory TestScriptSetup.fromYaml(dynamic yaml) => yaml is String
      ? TestScriptSetup.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TestScriptSetup.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TestScriptSetup cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory TestScriptSetup.fromJson(Map<String, dynamic> json) =>
      _$TestScriptSetupFromJson(json);

  /// Acts like a constructor, returns a [TestScriptSetup], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory TestScriptSetup.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TestScriptSetupFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [TestScriptAction] A structured set of tests against a FHIR server or
///  client implementation to determine compliance against the FHIR
///  specification.
@freezed
class TestScriptAction with BackboneType, _$TestScriptAction {
  /// [TestScriptAction] A structured set of tests against a FHIR server or
  ///  client implementation to determine compliance against the FHIR
  ///  specification.
  const TestScriptAction._();

  /// [TestScriptAction] A structured set of tests against a FHIR server or
  ///  client implementation to determine compliance against the FHIR
  ///  specification.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  ///  is not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of
  ///  extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be
  ///  met as part of the definition of the extension. Applications processing
  ///  a resource are required to check for modifier extensions.Modifier
  ///  extensions SHALL NOT change the meaning of any elements on Resource or
  ///  DomainResource (including cannot change the meaning of modifierExtension
  ///  itself).
  ///
  /// [operation] The operation to perform.
  ///
  /// [assert_] ("assert") Evaluates the results of previous operations to
  ///  determine if the server under test behaves appropriately.
  ///
  const factory TestScriptAction({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the element.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information
    ///  that is not part of the basic definition of the element and that
    ///  modifies the understanding of the element in which it is contained
    ///  and/or the understanding of the containing element's descendants.
    ///  Usually modifier elements provide negation or qualification. To make
    ///  the use of extensions safe and managable, there is a strict set of
    ///  governance applied to the definition and use of extensions. Though any
    ///  implementer can define an extension, there is a set of requirements
    ///  that SHALL be met as part of the definition of the extension.
    ///  Applications processing a resource are required to check for modifier
    ///  extensions.Modifier extensions SHALL NOT change the meaning of any
    ///  elements on Resource or DomainResource (including cannot change the
    ///  meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [operation] The operation to perform.
    TestScriptOperation? operation,

    /// [assert_] ("assert") Evaluates the results of previous operations to
    ///  determine if the server under test behaves appropriately.
    @JsonKey(name: 'assert') TestScriptAssert? assert_,
  }) = _TestScriptAction;

  @override
  String get fhirType => 'TestScriptAction';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory TestScriptAction.fromYaml(dynamic yaml) => yaml is String
      ? TestScriptAction.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TestScriptAction.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TestScriptAction cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory TestScriptAction.fromJson(Map<String, dynamic> json) =>
      _$TestScriptActionFromJson(json);

  /// Acts like a constructor, returns a [TestScriptAction], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory TestScriptAction.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TestScriptActionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [TestScriptOperation] A structured set of tests against a FHIR server or
///  client implementation to determine compliance against the FHIR
///  specification.
@freezed
class TestScriptOperation with BackboneType, _$TestScriptOperation {
  /// [TestScriptOperation] A structured set of tests against a FHIR server or
  ///  client implementation to determine compliance against the FHIR
  ///  specification.
  const TestScriptOperation._();

  /// [TestScriptOperation] A structured set of tests against a FHIR server or
  ///  client implementation to determine compliance against the FHIR
  ///  specification.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  ///  is not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of
  ///  extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be
  ///  met as part of the definition of the extension. Applications processing
  ///  a resource are required to check for modifier extensions.Modifier
  ///  extensions SHALL NOT change the meaning of any elements on Resource or
  ///  DomainResource (including cannot change the meaning of modifierExtension
  ///  itself).
  ///
  /// [type] Server interaction or operation type.
  ///
  /// [resource] The type of the FHIR resource. See the [resource
  ///  list](resourcelist.html). Data type of uri is needed when non-HL7
  ///  artifacts are identified.
  ///
  /// [resourceElement] ("_resource") Extensions for resource
  ///
  /// [label] The label would be used for tracking/logging purposes by test
  ///  engines.
  ///
  /// [labelElement] ("_label") Extensions for label
  ///
  /// [description] The description would be used by test engines for tracking
  ///  and reporting purposes.
  ///
  /// [descriptionElement] ("_description") Extensions for description
  ///
  /// [accept] The mime-type to use for RESTful operation in the 'Accept'
  ///  header.
  ///
  /// [acceptElement] ("_accept") Extensions for accept
  ///
  /// [contentType] The mime-type to use for RESTful operation in the
  ///  'Content-Type' header.
  ///
  /// [contentTypeElement] ("_contentType") Extensions for contentType
  ///
  /// [destination] The server where the request message is destined for.  Must
  ///  be one of the server numbers listed in TestScript.destination section.
  ///
  /// [destinationElement] ("_destination") Extensions for destination
  ///
  /// [encodeRequestUrl] Whether or not to implicitly send the request url in
  ///  encoded format. The default is true to match the standard RESTful client
  ///  behavior. Set to false when communicating with a server that does not
  ///  support encoded url paths.
  ///
  /// [encodeRequestUrlElement] ("_encodeRequestUrl") Extensions for
  ///  encodeRequestUrl
  ///
  /// [method] The HTTP method the test engine MUST use for this operation
  ///  regardless of any other operation details.
  ///
  /// [methodElement] ("_method") Extensions for method
  ///
  /// [origin] The server where the request message originates from.  Must be
  ///  one of the server numbers listed in TestScript.origin section.
  ///
  /// [originElement] ("_origin") Extensions for origin
  ///
  /// [params] Path plus parameters after [type].  Used to set parts of the
  ///  request URL explicitly.
  ///
  /// [paramsElement] ("_params") Extensions for params
  ///
  /// [requestHeader] Header elements would be used to set HTTP headers.
  ///
  /// [requestId] The fixture id (maybe new) to map to the request.
  ///
  /// [requestIdElement] ("_requestId") Extensions for requestId
  ///
  /// [responseId] The fixture id (maybe new) to map to the response.
  ///
  /// [responseIdElement] ("_responseId") Extensions for responseId
  ///
  /// [sourceId] The id of the fixture used as the body of a PUT or POST
  ///  request.
  ///
  /// [sourceIdElement] ("_sourceId") Extensions for sourceId
  ///
  /// [targetId] Id of fixture used for extracting the [id],  [type], and [vid]
  ///  for GET requests.
  ///
  /// [targetIdElement] ("_targetId") Extensions for targetId
  ///
  /// [url] Complete request URL.
  ///
  /// [urlElement] ("_url") Extensions for url
  ///
  const factory TestScriptOperation({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the element.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information
    ///  that is not part of the basic definition of the element and that
    ///  modifies the understanding of the element in which it is contained
    ///  and/or the understanding of the containing element's descendants.
    ///  Usually modifier elements provide negation or qualification. To make
    ///  the use of extensions safe and managable, there is a strict set of
    ///  governance applied to the definition and use of extensions. Though any
    ///  implementer can define an extension, there is a set of requirements
    ///  that SHALL be met as part of the definition of the extension.
    ///  Applications processing a resource are required to check for modifier
    ///  extensions.Modifier extensions SHALL NOT change the meaning of any
    ///  elements on Resource or DomainResource (including cannot change the
    ///  meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [type] Server interaction or operation type.
    Coding? type,

    /// [resource] The type of the FHIR resource. See the [resource
    ///  list](resourcelist.html). Data type of uri is needed when non-HL7
    ///  artifacts are identified.
    FhirUri? resource,

    /// [resourceElement] ("_resource") Extensions for resource
    @JsonKey(name: '_resource') Element? resourceElement,

    /// [label] The label would be used for tracking/logging purposes by test
    ///  engines.
    String? label,

    /// [labelElement] ("_label") Extensions for label
    @JsonKey(name: '_label') Element? labelElement,

    /// [description] The description would be used by test engines for
    ///  tracking and reporting purposes.
    String? description,

    /// [descriptionElement] ("_description") Extensions for description
    @JsonKey(name: '_description') Element? descriptionElement,

    /// [accept] The mime-type to use for RESTful operation in the 'Accept'
    ///  header.
    FhirCode? accept,

    /// [acceptElement] ("_accept") Extensions for accept
    @JsonKey(name: '_accept') Element? acceptElement,

    /// [contentType] The mime-type to use for RESTful operation in the
    ///  'Content-Type' header.
    FhirCode? contentType,

    /// [contentTypeElement] ("_contentType") Extensions for contentType
    @JsonKey(name: '_contentType') Element? contentTypeElement,

    /// [destination] The server where the request message is destined for.
    ///  Must be one of the server numbers listed in TestScript.destination
    ///  section.
    FhirInteger? destination,

    /// [destinationElement] ("_destination") Extensions for destination
    @JsonKey(name: '_destination') Element? destinationElement,

    /// [encodeRequestUrl] Whether or not to implicitly send the request url in
    ///  encoded format. The default is true to match the standard RESTful
    ///  client behavior. Set to false when communicating with a server that
    ///  does not support encoded url paths.
    FhirBoolean? encodeRequestUrl,

    /// [encodeRequestUrlElement] ("_encodeRequestUrl") Extensions for
    ///  encodeRequestUrl
    @JsonKey(name: '_encodeRequestUrl') Element? encodeRequestUrlElement,

    /// [method] The HTTP method the test engine MUST use for this operation
    ///  regardless of any other operation details.
    FhirCode? method,

    /// [methodElement] ("_method") Extensions for method
    @JsonKey(name: '_method') Element? methodElement,

    /// [origin] The server where the request message originates from.  Must be
    ///  one of the server numbers listed in TestScript.origin section.
    FhirInteger? origin,

    /// [originElement] ("_origin") Extensions for origin
    @JsonKey(name: '_origin') Element? originElement,

    /// [params] Path plus parameters after [type].  Used to set parts of the
    ///  request URL explicitly.
    String? params,

    /// [paramsElement] ("_params") Extensions for params
    @JsonKey(name: '_params') Element? paramsElement,

    /// [requestHeader] Header elements would be used to set HTTP headers.
    List<TestScriptRequestHeader>? requestHeader,

    /// [requestId] The fixture id (maybe new) to map to the request.
    FhirId? requestId,

    /// [requestIdElement] ("_requestId") Extensions for requestId
    @JsonKey(name: '_requestId') Element? requestIdElement,

    /// [responseId] The fixture id (maybe new) to map to the response.
    FhirId? responseId,

    /// [responseIdElement] ("_responseId") Extensions for responseId
    @JsonKey(name: '_responseId') Element? responseIdElement,

    /// [sourceId] The id of the fixture used as the body of a PUT or POST
    ///  request.
    FhirId? sourceId,

    /// [sourceIdElement] ("_sourceId") Extensions for sourceId
    @JsonKey(name: '_sourceId') Element? sourceIdElement,

    /// [targetId] Id of fixture used for extracting the [id],  [type], and
    ///  [vid] for GET requests.
    FhirId? targetId,

    /// [targetIdElement] ("_targetId") Extensions for targetId
    @JsonKey(name: '_targetId') Element? targetIdElement,

    /// [url] Complete request URL.
    String? url,

    /// [urlElement] ("_url") Extensions for url
    @JsonKey(name: '_url') Element? urlElement,
  }) = _TestScriptOperation;

  @override
  String get fhirType => 'TestScriptOperation';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory TestScriptOperation.fromYaml(dynamic yaml) => yaml is String
      ? TestScriptOperation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TestScriptOperation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TestScriptOperation cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory TestScriptOperation.fromJson(Map<String, dynamic> json) =>
      _$TestScriptOperationFromJson(json);

  /// Acts like a constructor, returns a [TestScriptOperation], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory TestScriptOperation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TestScriptOperationFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [TestScriptRequestHeader] A structured set of tests against a FHIR server
///  or client implementation to determine compliance against the FHIR
///  specification.
@freezed
class TestScriptRequestHeader with BackboneType, _$TestScriptRequestHeader {
  /// [TestScriptRequestHeader] A structured set of tests against a FHIR server
  ///  or client implementation to determine compliance against the FHIR
  ///  specification.
  const TestScriptRequestHeader._();

  /// [TestScriptRequestHeader] A structured set of tests against a FHIR server
  ///  or client implementation to determine compliance against the FHIR
  ///  specification.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  ///  is not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of
  ///  extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be
  ///  met as part of the definition of the extension. Applications processing
  ///  a resource are required to check for modifier extensions.Modifier
  ///  extensions SHALL NOT change the meaning of any elements on Resource or
  ///  DomainResource (including cannot change the meaning of modifierExtension
  ///  itself).
  ///
  /// [field] The HTTP header field e.g. "Accept".
  ///
  /// [fieldElement] ("_field") Extensions for field
  ///
  /// [value] The value of the header e.g. "application/fhir+xml".
  ///
  /// [valueElement] ("_value") Extensions for value
  ///
  const factory TestScriptRequestHeader({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the element.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information
    ///  that is not part of the basic definition of the element and that
    ///  modifies the understanding of the element in which it is contained
    ///  and/or the understanding of the containing element's descendants.
    ///  Usually modifier elements provide negation or qualification. To make
    ///  the use of extensions safe and managable, there is a strict set of
    ///  governance applied to the definition and use of extensions. Though any
    ///  implementer can define an extension, there is a set of requirements
    ///  that SHALL be met as part of the definition of the extension.
    ///  Applications processing a resource are required to check for modifier
    ///  extensions.Modifier extensions SHALL NOT change the meaning of any
    ///  elements on Resource or DomainResource (including cannot change the
    ///  meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [field] The HTTP header field e.g. "Accept".
    String? field,

    /// [fieldElement] ("_field") Extensions for field
    @JsonKey(name: '_field') Element? fieldElement,

    /// [value] The value of the header e.g. "application/fhir+xml".
    String? value,

    /// [valueElement] ("_value") Extensions for value
    @JsonKey(name: '_value') Element? valueElement,
  }) = _TestScriptRequestHeader;

  @override
  String get fhirType => 'TestScriptRequestHeader';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory TestScriptRequestHeader.fromYaml(dynamic yaml) => yaml is String
      ? TestScriptRequestHeader.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TestScriptRequestHeader.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TestScriptRequestHeader cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory TestScriptRequestHeader.fromJson(Map<String, dynamic> json) =>
      _$TestScriptRequestHeaderFromJson(json);

  /// Acts like a constructor, returns a [TestScriptRequestHeader], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory TestScriptRequestHeader.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TestScriptRequestHeaderFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [TestScriptAssert] A structured set of tests against a FHIR server or
///  client implementation to determine compliance against the FHIR
///  specification.
@freezed
class TestScriptAssert with BackboneType, _$TestScriptAssert {
  /// [TestScriptAssert] A structured set of tests against a FHIR server or
  ///  client implementation to determine compliance against the FHIR
  ///  specification.
  const TestScriptAssert._();

  /// [TestScriptAssert] A structured set of tests against a FHIR server or
  ///  client implementation to determine compliance against the FHIR
  ///  specification.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  ///  is not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of
  ///  extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be
  ///  met as part of the definition of the extension. Applications processing
  ///  a resource are required to check for modifier extensions.Modifier
  ///  extensions SHALL NOT change the meaning of any elements on Resource or
  ///  DomainResource (including cannot change the meaning of modifierExtension
  ///  itself).
  ///
  /// [label] The label would be used for tracking/logging purposes by test
  ///  engines.
  ///
  /// [labelElement] ("_label") Extensions for label
  ///
  /// [description] The description would be used by test engines for tracking
  ///  and reporting purposes.
  ///
  /// [descriptionElement] ("_description") Extensions for description
  ///
  /// [direction] The direction to use for the assertion.
  ///
  /// [directionElement] ("_direction") Extensions for direction
  ///
  /// [compareToSourceId] Id of the source fixture used as the contents to be
  ///  evaluated by either the "source/expression" or "sourceId/path"
  ///  definition.
  ///
  /// [compareToSourceIdElement] ("_compareToSourceId") Extensions for
  ///  compareToSourceId
  ///
  /// [compareToSourceExpression] The FHIRPath expression for a specific value
  ///  to evaluate against the source fixture. When compareToSourceId is
  ///  defined, either compareToSourceExpression or compareToSourcePath must be
  ///  defined, but not both.
  ///
  /// [compareToSourceExpressionElement] ("_compareToSourceExpression")
  ///  Extensions for compareToSourceExpression
  ///
  /// [compareToSourcePath] XPath or JSONPath expression to evaluate against
  ///  the source fixture. When compareToSourceId is defined, either
  ///  compareToSourceExpression or compareToSourcePath must be defined, but
  ///  not both.
  ///
  /// [compareToSourcePathElement] ("_compareToSourcePath") Extensions for
  ///  compareToSourcePath
  ///
  /// [contentType] The mime-type contents to compare against the request or
  ///  response message 'Content-Type' header.
  ///
  /// [contentTypeElement] ("_contentType") Extensions for contentType
  ///
  /// [defaultManualCompletion] The default manual completion outcome applied
  ///  to this assertion.
  ///
  /// [defaultManualCompletionElement] ("_defaultManualCompletion") Extensions
  ///  for defaultManualCompletion
  ///
  /// [expression] The FHIRPath expression to be evaluated against the request
  ///  or response message contents - HTTP headers and payload.
  ///
  /// [expressionElement] ("_expression") Extensions for expression
  ///
  /// [headerField] The HTTP header field name e.g. 'Location'.
  ///
  /// [headerFieldElement] ("_headerField") Extensions for headerField
  ///
  /// [minimumId] The ID of a fixture. Asserts that the response contains at a
  ///  minimum the fixture specified by minimumId.
  ///
  /// [minimumIdElement] ("_minimumId") Extensions for minimumId
  ///
  /// [navigationLinks] Whether or not the test execution performs validation
  ///  on the bundle navigation links.
  ///
  /// [navigationLinksElement] ("_navigationLinks") Extensions for
  ///  navigationLinks
  ///
  /// [operator_] ("operator") The operator type defines the conditional
  ///  behavior of the assert.
  ///
  /// [operatorElement] ("_operator") Extensions for operator
  ///
  /// [path] The XPath or JSONPath expression to be evaluated against the
  ///  fixture representing the response received from server.
  ///
  /// [pathElement] ("_path") Extensions for path
  ///
  /// [requestMethod] The request method or HTTP operation code to compare
  ///  against that used by the client system under test.
  ///
  /// [requestMethodElement] ("_requestMethod") Extensions for requestMethod
  ///
  /// [requestURL] The value to use in a comparison against the request URL
  ///  path string.
  ///
  /// [requestURLElement] ("_requestURL") Extensions for requestURL
  ///
  /// [resource] The type of the resource.  See the [resource
  ///  list](resourcelist.html).
  ///
  /// [resourceElement] ("_resource") Extensions for resource
  ///
  /// [response] continue | switchingProtocols | okay | created | accepted |
  ///  nonAuthoritativeInformation | noContent | resetContent | partialContent
  ///  | multipleChoices | movedPermanently | found | seeOther | notModified |
  ///  useProxy | temporaryRedirect | permanentRedirect | badRequest |
  ///  unauthorized | paymentRequired | forbidden | notFound | methodNotAllowed
  ///  | notAcceptable | proxyAuthenticationRequired | requestTimeout |
  ///  conflict | gone | lengthRequired | preconditionFailed | contentTooLarge
  ///  | uriTooLong | unsupportedMediaType | rangeNotSatisfiable |
  ///  expectationFailed | misdirectedRequest | unprocessableContent |
  ///  upgradeRequired | internalServerError | notImplemented | badGateway |
  ///  serviceUnavailable | gatewayTimeout | httpVersionNotSupported.
  ///
  /// [responseElement] ("_response") Extensions for response
  ///
  /// [responseCode] The value of the HTTP response code to be tested.
  ///
  /// [responseCodeElement] ("_responseCode") Extensions for responseCode
  ///
  /// [sourceId] Fixture to evaluate the XPath/JSONPath expression or the
  ///  headerField  against.
  ///
  /// [sourceIdElement] ("_sourceId") Extensions for sourceId
  ///
  /// [stopTestOnFail] Whether or not the current test execution will stop on
  ///  failure for this assert.
  ///
  /// [stopTestOnFailElement] ("_stopTestOnFail") Extensions for stopTestOnFail
  ///
  /// [validateProfileId] The ID of the Profile to validate against.
  ///
  /// [validateProfileIdElement] ("_validateProfileId") Extensions for
  ///  validateProfileId
  ///
  /// [value] The value to compare to.
  ///
  /// [valueElement] ("_value") Extensions for value
  ///
  /// [warningOnly] Whether or not the test execution will produce a warning
  ///  only on error for this assert.
  ///
  /// [warningOnlyElement] ("_warningOnly") Extensions for warningOnly
  ///
  /// [requirement] Links or references providing traceability to the testing
  ///  requirements for this assert.
  ///
  const factory TestScriptAssert({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the element.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information
    ///  that is not part of the basic definition of the element and that
    ///  modifies the understanding of the element in which it is contained
    ///  and/or the understanding of the containing element's descendants.
    ///  Usually modifier elements provide negation or qualification. To make
    ///  the use of extensions safe and managable, there is a strict set of
    ///  governance applied to the definition and use of extensions. Though any
    ///  implementer can define an extension, there is a set of requirements
    ///  that SHALL be met as part of the definition of the extension.
    ///  Applications processing a resource are required to check for modifier
    ///  extensions.Modifier extensions SHALL NOT change the meaning of any
    ///  elements on Resource or DomainResource (including cannot change the
    ///  meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [label] The label would be used for tracking/logging purposes by test
    ///  engines.
    String? label,

    /// [labelElement] ("_label") Extensions for label
    @JsonKey(name: '_label') Element? labelElement,

    /// [description] The description would be used by test engines for
    ///  tracking and reporting purposes.
    String? description,

    /// [descriptionElement] ("_description") Extensions for description
    @JsonKey(name: '_description') Element? descriptionElement,

    /// [direction] The direction to use for the assertion.
    FhirCode? direction,

    /// [directionElement] ("_direction") Extensions for direction
    @JsonKey(name: '_direction') Element? directionElement,

    /// [compareToSourceId] Id of the source fixture used as the contents to be
    ///  evaluated by either the "source/expression" or "sourceId/path"
    ///  definition.
    String? compareToSourceId,

    /// [compareToSourceIdElement] ("_compareToSourceId") Extensions for
    ///  compareToSourceId
    @JsonKey(name: '_compareToSourceId') Element? compareToSourceIdElement,

    /// [compareToSourceExpression] The FHIRPath expression for a specific
    ///  value to evaluate against the source fixture. When compareToSourceId
    ///  is defined, either compareToSourceExpression or compareToSourcePath
    ///  must be defined, but not both.
    String? compareToSourceExpression,

    /// [compareToSourceExpressionElement] ("_compareToSourceExpression")
    ///  Extensions for compareToSourceExpression
    @JsonKey(name: '_compareToSourceExpression')
    Element? compareToSourceExpressionElement,

    /// [compareToSourcePath] XPath or JSONPath expression to evaluate against
    ///  the source fixture. When compareToSourceId is defined, either
    ///  compareToSourceExpression or compareToSourcePath must be defined, but
    ///  not both.
    String? compareToSourcePath,

    /// [compareToSourcePathElement] ("_compareToSourcePath") Extensions for
    ///  compareToSourcePath
    @JsonKey(name: '_compareToSourcePath') Element? compareToSourcePathElement,

    /// [contentType] The mime-type contents to compare against the request or
    ///  response message 'Content-Type' header.
    FhirCode? contentType,

    /// [contentTypeElement] ("_contentType") Extensions for contentType
    @JsonKey(name: '_contentType') Element? contentTypeElement,

    /// [defaultManualCompletion] The default manual completion outcome applied
    ///  to this assertion.
    FhirCode? defaultManualCompletion,

    /// [defaultManualCompletionElement] ("_defaultManualCompletion")
    ///  Extensions for defaultManualCompletion
    @JsonKey(name: '_defaultManualCompletion')
    Element? defaultManualCompletionElement,

    /// [expression] The FHIRPath expression to be evaluated against the
    ///  request or response message contents - HTTP headers and payload.
    String? expression,

    /// [expressionElement] ("_expression") Extensions for expression
    @JsonKey(name: '_expression') Element? expressionElement,

    /// [headerField] The HTTP header field name e.g. 'Location'.
    String? headerField,

    /// [headerFieldElement] ("_headerField") Extensions for headerField
    @JsonKey(name: '_headerField') Element? headerFieldElement,

    /// [minimumId] The ID of a fixture. Asserts that the response contains at
    ///  a minimum the fixture specified by minimumId.
    String? minimumId,

    /// [minimumIdElement] ("_minimumId") Extensions for minimumId
    @JsonKey(name: '_minimumId') Element? minimumIdElement,

    /// [navigationLinks] Whether or not the test execution performs validation
    ///  on the bundle navigation links.
    FhirBoolean? navigationLinks,

    /// [navigationLinksElement] ("_navigationLinks") Extensions for
    ///  navigationLinks
    @JsonKey(name: '_navigationLinks') Element? navigationLinksElement,

    /// [operator_] ("operator") The operator type defines the conditional
    ///  behavior of the assert.
    @JsonKey(name: 'operator') FhirCode? operator_,

    /// [operatorElement] ("_operator") Extensions for operator
    @JsonKey(name: '_operator') Element? operatorElement,

    /// [path] The XPath or JSONPath expression to be evaluated against the
    ///  fixture representing the response received from server.
    String? path,

    /// [pathElement] ("_path") Extensions for path
    @JsonKey(name: '_path') Element? pathElement,

    /// [requestMethod] The request method or HTTP operation code to compare
    ///  against that used by the client system under test.
    FhirCode? requestMethod,

    /// [requestMethodElement] ("_requestMethod") Extensions for requestMethod
    @JsonKey(name: '_requestMethod') Element? requestMethodElement,

    /// [requestURL] The value to use in a comparison against the request URL
    ///  path string.
    String? requestURL,

    /// [requestURLElement] ("_requestURL") Extensions for requestURL
    @JsonKey(name: '_requestURL') Element? requestURLElement,

    /// [resource] The type of the resource.  See the [resource
    ///  list](resourcelist.html).
    FhirUri? resource,

    /// [resourceElement] ("_resource") Extensions for resource
    @JsonKey(name: '_resource') Element? resourceElement,

    /// [response] continue | switchingProtocols | okay | created | accepted |
    ///  nonAuthoritativeInformation | noContent | resetContent |
    ///  partialContent | multipleChoices | movedPermanently | found | seeOther
    ///  | notModified | useProxy | temporaryRedirect | permanentRedirect |
    ///  badRequest | unauthorized | paymentRequired | forbidden | notFound |
    ///  methodNotAllowed | notAcceptable | proxyAuthenticationRequired |
    ///  requestTimeout | conflict | gone | lengthRequired | preconditionFailed
    ///  | contentTooLarge | uriTooLong | unsupportedMediaType |
    ///  rangeNotSatisfiable | expectationFailed | misdirectedRequest |
    ///  unprocessableContent | upgradeRequired | internalServerError |
    ///  notImplemented | badGateway | serviceUnavailable | gatewayTimeout |
    ///  httpVersionNotSupported.
    FhirCode? response,

    /// [responseElement] ("_response") Extensions for response
    @JsonKey(name: '_response') Element? responseElement,

    /// [responseCode] The value of the HTTP response code to be tested.
    String? responseCode,

    /// [responseCodeElement] ("_responseCode") Extensions for responseCode
    @JsonKey(name: '_responseCode') Element? responseCodeElement,

    /// [sourceId] Fixture to evaluate the XPath/JSONPath expression or the
    ///  headerField  against.
    FhirId? sourceId,

    /// [sourceIdElement] ("_sourceId") Extensions for sourceId
    @JsonKey(name: '_sourceId') Element? sourceIdElement,

    /// [stopTestOnFail] Whether or not the current test execution will stop on
    ///  failure for this assert.
    FhirBoolean? stopTestOnFail,

    /// [stopTestOnFailElement] ("_stopTestOnFail") Extensions for
    ///  stopTestOnFail
    @JsonKey(name: '_stopTestOnFail') Element? stopTestOnFailElement,

    /// [validateProfileId] The ID of the Profile to validate against.
    FhirId? validateProfileId,

    /// [validateProfileIdElement] ("_validateProfileId") Extensions for
    ///  validateProfileId
    @JsonKey(name: '_validateProfileId') Element? validateProfileIdElement,

    /// [value] The value to compare to.
    String? value,

    /// [valueElement] ("_value") Extensions for value
    @JsonKey(name: '_value') Element? valueElement,

    /// [warningOnly] Whether or not the test execution will produce a warning
    ///  only on error for this assert.
    FhirBoolean? warningOnly,

    /// [warningOnlyElement] ("_warningOnly") Extensions for warningOnly
    @JsonKey(name: '_warningOnly') Element? warningOnlyElement,

    /// [requirement] Links or references providing traceability to the testing
    ///  requirements for this assert.
    List<TestScriptRequirement>? requirement,
  }) = _TestScriptAssert;

  @override
  String get fhirType => 'TestScriptAssert';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory TestScriptAssert.fromYaml(dynamic yaml) => yaml is String
      ? TestScriptAssert.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TestScriptAssert.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TestScriptAssert cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory TestScriptAssert.fromJson(Map<String, dynamic> json) =>
      _$TestScriptAssertFromJson(json);

  /// Acts like a constructor, returns a [TestScriptAssert], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory TestScriptAssert.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TestScriptAssertFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [TestScriptRequirement] A structured set of tests against a FHIR server or
///  client implementation to determine compliance against the FHIR
///  specification.
@freezed
class TestScriptRequirement with BackboneType, _$TestScriptRequirement {
  /// [TestScriptRequirement] A structured set of tests against a FHIR server
  ///  or client implementation to determine compliance against the FHIR
  ///  specification.
  const TestScriptRequirement._();

  /// [TestScriptRequirement] A structured set of tests against a FHIR server
  ///  or client implementation to determine compliance against the FHIR
  ///  specification.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  ///  is not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of
  ///  extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be
  ///  met as part of the definition of the extension. Applications processing
  ///  a resource are required to check for modifier extensions.Modifier
  ///  extensions SHALL NOT change the meaning of any elements on Resource or
  ///  DomainResource (including cannot change the meaning of modifierExtension
  ///  itself).
  ///
  /// [linkUri] Link or reference providing traceability to the testing
  ///  requirement for this test.
  ///
  /// [linkUriElement] ("_linkUri") Extensions for linkUri
  ///
  /// [linkCanonical] Link or reference providing traceability to the testing
  ///  requirement for this test.
  ///
  /// [linkCanonicalElement] ("_linkCanonical") Extensions for linkCanonical
  ///
  const factory TestScriptRequirement({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the element.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information
    ///  that is not part of the basic definition of the element and that
    ///  modifies the understanding of the element in which it is contained
    ///  and/or the understanding of the containing element's descendants.
    ///  Usually modifier elements provide negation or qualification. To make
    ///  the use of extensions safe and managable, there is a strict set of
    ///  governance applied to the definition and use of extensions. Though any
    ///  implementer can define an extension, there is a set of requirements
    ///  that SHALL be met as part of the definition of the extension.
    ///  Applications processing a resource are required to check for modifier
    ///  extensions.Modifier extensions SHALL NOT change the meaning of any
    ///  elements on Resource or DomainResource (including cannot change the
    ///  meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [linkUri] Link or reference providing traceability to the testing
    ///  requirement for this test.
    FhirUri? linkUri,

    /// [linkUriElement] ("_linkUri") Extensions for linkUri
    @JsonKey(name: '_linkUri') Element? linkUriElement,

    /// [linkCanonical] Link or reference providing traceability to the testing
    ///  requirement for this test.
    FhirCanonical? linkCanonical,

    /// [linkCanonicalElement] ("_linkCanonical") Extensions for linkCanonical
    @JsonKey(name: '_linkCanonical') Element? linkCanonicalElement,
  }) = _TestScriptRequirement;

  @override
  String get fhirType => 'TestScriptRequirement';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory TestScriptRequirement.fromYaml(dynamic yaml) => yaml is String
      ? TestScriptRequirement.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TestScriptRequirement.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TestScriptRequirement cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory TestScriptRequirement.fromJson(Map<String, dynamic> json) =>
      _$TestScriptRequirementFromJson(json);

  /// Acts like a constructor, returns a [TestScriptRequirement], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory TestScriptRequirement.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TestScriptRequirementFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [TestScriptTest] A structured set of tests against a FHIR server or client
///  implementation to determine compliance against the FHIR specification.
@freezed
class TestScriptTest with BackboneType, _$TestScriptTest {
  /// [TestScriptTest] A structured set of tests against a FHIR server or
  ///  client implementation to determine compliance against the FHIR
  ///  specification.
  const TestScriptTest._();

  /// [TestScriptTest] A structured set of tests against a FHIR server or
  ///  client implementation to determine compliance against the FHIR
  ///  specification.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  ///  is not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of
  ///  extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be
  ///  met as part of the definition of the extension. Applications processing
  ///  a resource are required to check for modifier extensions.Modifier
  ///  extensions SHALL NOT change the meaning of any elements on Resource or
  ///  DomainResource (including cannot change the meaning of modifierExtension
  ///  itself).
  ///
  /// [name] The name of this test used for tracking/logging purposes by test
  ///  engines.
  ///
  /// [nameElement] ("_name") Extensions for name
  ///
  /// [description] A short description of the test used by test engines for
  ///  tracking and reporting purposes.
  ///
  /// [descriptionElement] ("_description") Extensions for description
  ///
  /// [action] Action would contain either an operation or an assertion.
  ///
  const factory TestScriptTest({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the element.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information
    ///  that is not part of the basic definition of the element and that
    ///  modifies the understanding of the element in which it is contained
    ///  and/or the understanding of the containing element's descendants.
    ///  Usually modifier elements provide negation or qualification. To make
    ///  the use of extensions safe and managable, there is a strict set of
    ///  governance applied to the definition and use of extensions. Though any
    ///  implementer can define an extension, there is a set of requirements
    ///  that SHALL be met as part of the definition of the extension.
    ///  Applications processing a resource are required to check for modifier
    ///  extensions.Modifier extensions SHALL NOT change the meaning of any
    ///  elements on Resource or DomainResource (including cannot change the
    ///  meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [name] The name of this test used for tracking/logging purposes by test
    ///  engines.
    String? name,

    /// [nameElement] ("_name") Extensions for name
    @JsonKey(name: '_name') Element? nameElement,

    /// [description] A short description of the test used by test engines for
    ///  tracking and reporting purposes.
    String? description,

    /// [descriptionElement] ("_description") Extensions for description
    @JsonKey(name: '_description') Element? descriptionElement,

    /// [action] Action would contain either an operation or an assertion.
    required List<TestScriptAction1> action,
  }) = _TestScriptTest;

  @override
  String get fhirType => 'TestScriptTest';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory TestScriptTest.fromYaml(dynamic yaml) => yaml is String
      ? TestScriptTest.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TestScriptTest.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TestScriptTest cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory TestScriptTest.fromJson(Map<String, dynamic> json) =>
      _$TestScriptTestFromJson(json);

  /// Acts like a constructor, returns a [TestScriptTest], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory TestScriptTest.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TestScriptTestFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [TestScriptAction1] A structured set of tests against a FHIR server or
///  client implementation to determine compliance against the FHIR
///  specification.
@freezed
class TestScriptAction1 with BackboneType, _$TestScriptAction1 {
  /// [TestScriptAction1] A structured set of tests against a FHIR server or
  ///  client implementation to determine compliance against the FHIR
  ///  specification.
  const TestScriptAction1._();

  /// [TestScriptAction1] A structured set of tests against a FHIR server or
  ///  client implementation to determine compliance against the FHIR
  ///  specification.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  ///  is not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of
  ///  extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be
  ///  met as part of the definition of the extension. Applications processing
  ///  a resource are required to check for modifier extensions.Modifier
  ///  extensions SHALL NOT change the meaning of any elements on Resource or
  ///  DomainResource (including cannot change the meaning of modifierExtension
  ///  itself).
  ///
  /// [operation] An operation would involve a REST request to a server.
  ///
  /// [assert_] ("assert") Evaluates the results of previous operations to
  ///  determine if the server under test behaves appropriately.
  ///
  const factory TestScriptAction1({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the element.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information
    ///  that is not part of the basic definition of the element and that
    ///  modifies the understanding of the element in which it is contained
    ///  and/or the understanding of the containing element's descendants.
    ///  Usually modifier elements provide negation or qualification. To make
    ///  the use of extensions safe and managable, there is a strict set of
    ///  governance applied to the definition and use of extensions. Though any
    ///  implementer can define an extension, there is a set of requirements
    ///  that SHALL be met as part of the definition of the extension.
    ///  Applications processing a resource are required to check for modifier
    ///  extensions.Modifier extensions SHALL NOT change the meaning of any
    ///  elements on Resource or DomainResource (including cannot change the
    ///  meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [operation] An operation would involve a REST request to a server.
    TestScriptOperation? operation,

    /// [assert_] ("assert") Evaluates the results of previous operations to
    ///  determine if the server under test behaves appropriately.
    @JsonKey(name: 'assert') TestScriptAssert? assert_,
  }) = _TestScriptAction1;

  @override
  String get fhirType => 'TestScriptAction1';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory TestScriptAction1.fromYaml(dynamic yaml) => yaml is String
      ? TestScriptAction1.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TestScriptAction1.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TestScriptAction1 cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory TestScriptAction1.fromJson(Map<String, dynamic> json) =>
      _$TestScriptAction1FromJson(json);

  /// Acts like a constructor, returns a [TestScriptAction1], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory TestScriptAction1.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TestScriptAction1FromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [TestScriptTeardown] A structured set of tests against a FHIR server or
///  client implementation to determine compliance against the FHIR
///  specification.
@freezed
class TestScriptTeardown with BackboneType, _$TestScriptTeardown {
  /// [TestScriptTeardown] A structured set of tests against a FHIR server or
  ///  client implementation to determine compliance against the FHIR
  ///  specification.
  const TestScriptTeardown._();

  /// [TestScriptTeardown] A structured set of tests against a FHIR server or
  ///  client implementation to determine compliance against the FHIR
  ///  specification.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  ///  is not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of
  ///  extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be
  ///  met as part of the definition of the extension. Applications processing
  ///  a resource are required to check for modifier extensions.Modifier
  ///  extensions SHALL NOT change the meaning of any elements on Resource or
  ///  DomainResource (including cannot change the meaning of modifierExtension
  ///  itself).
  ///
  /// [action] The teardown action will only contain an operation.
  ///
  const factory TestScriptTeardown({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the element.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information
    ///  that is not part of the basic definition of the element and that
    ///  modifies the understanding of the element in which it is contained
    ///  and/or the understanding of the containing element's descendants.
    ///  Usually modifier elements provide negation or qualification. To make
    ///  the use of extensions safe and managable, there is a strict set of
    ///  governance applied to the definition and use of extensions. Though any
    ///  implementer can define an extension, there is a set of requirements
    ///  that SHALL be met as part of the definition of the extension.
    ///  Applications processing a resource are required to check for modifier
    ///  extensions.Modifier extensions SHALL NOT change the meaning of any
    ///  elements on Resource or DomainResource (including cannot change the
    ///  meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [action] The teardown action will only contain an operation.
    required List<TestScriptAction2> action,
  }) = _TestScriptTeardown;

  @override
  String get fhirType => 'TestScriptTeardown';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory TestScriptTeardown.fromYaml(dynamic yaml) => yaml is String
      ? TestScriptTeardown.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TestScriptTeardown.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TestScriptTeardown cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory TestScriptTeardown.fromJson(Map<String, dynamic> json) =>
      _$TestScriptTeardownFromJson(json);

  /// Acts like a constructor, returns a [TestScriptTeardown], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory TestScriptTeardown.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TestScriptTeardownFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [TestScriptAction2] A structured set of tests against a FHIR server or
///  client implementation to determine compliance against the FHIR
///  specification.
@freezed
class TestScriptAction2 with BackboneType, _$TestScriptAction2 {
  /// [TestScriptAction2] A structured set of tests against a FHIR server or
  ///  client implementation to determine compliance against the FHIR
  ///  specification.
  const TestScriptAction2._();

  /// [TestScriptAction2] A structured set of tests against a FHIR server or
  ///  client implementation to determine compliance against the FHIR
  ///  specification.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  ///  is not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of
  ///  extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be
  ///  met as part of the definition of the extension. Applications processing
  ///  a resource are required to check for modifier extensions.Modifier
  ///  extensions SHALL NOT change the meaning of any elements on Resource or
  ///  DomainResource (including cannot change the meaning of modifierExtension
  ///  itself).
  ///
  /// [operation] An operation would involve a REST request to a server.
  ///
  const factory TestScriptAction2({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the element.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information
    ///  that is not part of the basic definition of the element and that
    ///  modifies the understanding of the element in which it is contained
    ///  and/or the understanding of the containing element's descendants.
    ///  Usually modifier elements provide negation or qualification. To make
    ///  the use of extensions safe and managable, there is a strict set of
    ///  governance applied to the definition and use of extensions. Though any
    ///  implementer can define an extension, there is a set of requirements
    ///  that SHALL be met as part of the definition of the extension.
    ///  Applications processing a resource are required to check for modifier
    ///  extensions.Modifier extensions SHALL NOT change the meaning of any
    ///  elements on Resource or DomainResource (including cannot change the
    ///  meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [operation] An operation would involve a REST request to a server.
    required TestScriptOperation operation,
  }) = _TestScriptAction2;

  @override
  String get fhirType => 'TestScriptAction2';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory TestScriptAction2.fromYaml(dynamic yaml) => yaml is String
      ? TestScriptAction2.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TestScriptAction2.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TestScriptAction2 cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory TestScriptAction2.fromJson(Map<String, dynamic> json) =>
      _$TestScriptAction2FromJson(json);

  /// Acts like a constructor, returns a [TestScriptAction2], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory TestScriptAction2.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TestScriptAction2FromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}
