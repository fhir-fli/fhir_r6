// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for RelatedArtifactTypeExpanded
enum RelatedArtifactTypeExpandedBuilderEnum {
  /// documentation
  documentation,

  /// justification
  justification,

  /// citation
  citation,

  /// predecessor
  predecessor,

  /// successor
  successor,

  /// derived-from
  derivedFrom,

  /// depends-on
  dependsOn,

  /// composed-of
  composedOf,

  /// part-of
  partOf,

  /// amends
  amends,

  /// amended-with
  amendedWith,

  /// appends
  appends,

  /// appended-with
  appendedWith,

  /// cites
  cites,

  /// cited-by
  citedBy,

  /// comments-on
  commentsOn,

  /// comment-in
  commentIn,

  /// contains
  contains_,

  /// contained-in
  containedIn,

  /// corrects
  corrects,

  /// correction-in
  correctionIn,

  /// replaces
  replaces,

  /// replaced-with
  replacedWith,

  /// retracts
  retracts,

  /// retracted-by
  retractedBy,

  /// signs
  signs,

  /// similar-to
  similarTo,

  /// supports
  supports,

  /// supported-with
  supportedWith,

  /// transforms
  transforms,

  /// transformed-into
  transformedInto,

  /// transformed-with
  transformedWith,

  /// documents
  documents,

  /// specification-of
  specificationOf,

  /// created-with
  createdWith,

  /// cite-as
  citeAs,

  /// reprint
  reprint,

  /// reprint-of
  reprintOf,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case RelatedArtifactTypeExpandedBuilderEnum.documentation:
        return 'documentation';
      case RelatedArtifactTypeExpandedBuilderEnum.justification:
        return 'justification';
      case RelatedArtifactTypeExpandedBuilderEnum.citation:
        return 'citation';
      case RelatedArtifactTypeExpandedBuilderEnum.predecessor:
        return 'predecessor';
      case RelatedArtifactTypeExpandedBuilderEnum.successor:
        return 'successor';
      case RelatedArtifactTypeExpandedBuilderEnum.derivedFrom:
        return 'derived-from';
      case RelatedArtifactTypeExpandedBuilderEnum.dependsOn:
        return 'depends-on';
      case RelatedArtifactTypeExpandedBuilderEnum.composedOf:
        return 'composed-of';
      case RelatedArtifactTypeExpandedBuilderEnum.partOf:
        return 'part-of';
      case RelatedArtifactTypeExpandedBuilderEnum.amends:
        return 'amends';
      case RelatedArtifactTypeExpandedBuilderEnum.amendedWith:
        return 'amended-with';
      case RelatedArtifactTypeExpandedBuilderEnum.appends:
        return 'appends';
      case RelatedArtifactTypeExpandedBuilderEnum.appendedWith:
        return 'appended-with';
      case RelatedArtifactTypeExpandedBuilderEnum.cites:
        return 'cites';
      case RelatedArtifactTypeExpandedBuilderEnum.citedBy:
        return 'cited-by';
      case RelatedArtifactTypeExpandedBuilderEnum.commentsOn:
        return 'comments-on';
      case RelatedArtifactTypeExpandedBuilderEnum.commentIn:
        return 'comment-in';
      case RelatedArtifactTypeExpandedBuilderEnum.contains_:
        return 'contains';
      case RelatedArtifactTypeExpandedBuilderEnum.containedIn:
        return 'contained-in';
      case RelatedArtifactTypeExpandedBuilderEnum.corrects:
        return 'corrects';
      case RelatedArtifactTypeExpandedBuilderEnum.correctionIn:
        return 'correction-in';
      case RelatedArtifactTypeExpandedBuilderEnum.replaces:
        return 'replaces';
      case RelatedArtifactTypeExpandedBuilderEnum.replacedWith:
        return 'replaced-with';
      case RelatedArtifactTypeExpandedBuilderEnum.retracts:
        return 'retracts';
      case RelatedArtifactTypeExpandedBuilderEnum.retractedBy:
        return 'retracted-by';
      case RelatedArtifactTypeExpandedBuilderEnum.signs:
        return 'signs';
      case RelatedArtifactTypeExpandedBuilderEnum.similarTo:
        return 'similar-to';
      case RelatedArtifactTypeExpandedBuilderEnum.supports:
        return 'supports';
      case RelatedArtifactTypeExpandedBuilderEnum.supportedWith:
        return 'supported-with';
      case RelatedArtifactTypeExpandedBuilderEnum.transforms:
        return 'transforms';
      case RelatedArtifactTypeExpandedBuilderEnum.transformedInto:
        return 'transformed-into';
      case RelatedArtifactTypeExpandedBuilderEnum.transformedWith:
        return 'transformed-with';
      case RelatedArtifactTypeExpandedBuilderEnum.documents:
        return 'documents';
      case RelatedArtifactTypeExpandedBuilderEnum.specificationOf:
        return 'specification-of';
      case RelatedArtifactTypeExpandedBuilderEnum.createdWith:
        return 'created-with';
      case RelatedArtifactTypeExpandedBuilderEnum.citeAs:
        return 'cite-as';
      case RelatedArtifactTypeExpandedBuilderEnum.reprint:
        return 'reprint';
      case RelatedArtifactTypeExpandedBuilderEnum.reprintOf:
        return 'reprint-of';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static RelatedArtifactTypeExpandedBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return RelatedArtifactTypeExpandedBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static RelatedArtifactTypeExpandedBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'documentation':
        return RelatedArtifactTypeExpandedBuilderEnum.documentation;
      case 'justification':
        return RelatedArtifactTypeExpandedBuilderEnum.justification;
      case 'citation':
        return RelatedArtifactTypeExpandedBuilderEnum.citation;
      case 'predecessor':
        return RelatedArtifactTypeExpandedBuilderEnum.predecessor;
      case 'successor':
        return RelatedArtifactTypeExpandedBuilderEnum.successor;
      case 'derived-from':
        return RelatedArtifactTypeExpandedBuilderEnum.derivedFrom;
      case 'depends-on':
        return RelatedArtifactTypeExpandedBuilderEnum.dependsOn;
      case 'composed-of':
        return RelatedArtifactTypeExpandedBuilderEnum.composedOf;
      case 'part-of':
        return RelatedArtifactTypeExpandedBuilderEnum.partOf;
      case 'amends':
        return RelatedArtifactTypeExpandedBuilderEnum.amends;
      case 'amended-with':
        return RelatedArtifactTypeExpandedBuilderEnum.amendedWith;
      case 'appends':
        return RelatedArtifactTypeExpandedBuilderEnum.appends;
      case 'appended-with':
        return RelatedArtifactTypeExpandedBuilderEnum.appendedWith;
      case 'cites':
        return RelatedArtifactTypeExpandedBuilderEnum.cites;
      case 'cited-by':
        return RelatedArtifactTypeExpandedBuilderEnum.citedBy;
      case 'comments-on':
        return RelatedArtifactTypeExpandedBuilderEnum.commentsOn;
      case 'comment-in':
        return RelatedArtifactTypeExpandedBuilderEnum.commentIn;
      case 'contains':
        return RelatedArtifactTypeExpandedBuilderEnum.contains_;
      case 'contained-in':
        return RelatedArtifactTypeExpandedBuilderEnum.containedIn;
      case 'corrects':
        return RelatedArtifactTypeExpandedBuilderEnum.corrects;
      case 'correction-in':
        return RelatedArtifactTypeExpandedBuilderEnum.correctionIn;
      case 'replaces':
        return RelatedArtifactTypeExpandedBuilderEnum.replaces;
      case 'replaced-with':
        return RelatedArtifactTypeExpandedBuilderEnum.replacedWith;
      case 'retracts':
        return RelatedArtifactTypeExpandedBuilderEnum.retracts;
      case 'retracted-by':
        return RelatedArtifactTypeExpandedBuilderEnum.retractedBy;
      case 'signs':
        return RelatedArtifactTypeExpandedBuilderEnum.signs;
      case 'similar-to':
        return RelatedArtifactTypeExpandedBuilderEnum.similarTo;
      case 'supports':
        return RelatedArtifactTypeExpandedBuilderEnum.supports;
      case 'supported-with':
        return RelatedArtifactTypeExpandedBuilderEnum.supportedWith;
      case 'transforms':
        return RelatedArtifactTypeExpandedBuilderEnum.transforms;
      case 'transformed-into':
        return RelatedArtifactTypeExpandedBuilderEnum.transformedInto;
      case 'transformed-with':
        return RelatedArtifactTypeExpandedBuilderEnum.transformedWith;
      case 'documents':
        return RelatedArtifactTypeExpandedBuilderEnum.documents;
      case 'specification-of':
        return RelatedArtifactTypeExpandedBuilderEnum.specificationOf;
      case 'created-with':
        return RelatedArtifactTypeExpandedBuilderEnum.createdWith;
      case 'cite-as':
        return RelatedArtifactTypeExpandedBuilderEnum.citeAs;
      case 'reprint':
        return RelatedArtifactTypeExpandedBuilderEnum.reprint;
      case 'reprint-of':
        return RelatedArtifactTypeExpandedBuilderEnum.reprintOf;
    }
    return null;
  }
}

/// The type of relationship to the cited artifact.
class RelatedArtifactTypeExpandedBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  RelatedArtifactTypeExpandedBuilder._({
    required super.valueString,
    this.valueEnum,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory RelatedArtifactTypeExpandedBuilder(
    String? rawValue, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCodeBuilder._validateCode(rawValue) : null;
    final valueEnum = RelatedArtifactTypeExpandedBuilderEnum.fromString(
      valueString,
    );
    return RelatedArtifactTypeExpandedBuilder._(
      valueString: valueString,
      valueEnum: valueEnum,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Create empty [RelatedArtifactTypeExpandedBuilder]
  /// with element only
  factory RelatedArtifactTypeExpandedBuilder.empty() =>
      RelatedArtifactTypeExpandedBuilder._(valueString: null);

  /// Factory constructor to create
  /// [RelatedArtifactTypeExpandedBuilder] from JSON.
  factory RelatedArtifactTypeExpandedBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RelatedArtifactTypeExpandedBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'RelatedArtifactTypeExpandedBuilder cannot be constructed from JSON.',
      );
    }
    return RelatedArtifactTypeExpandedBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for RelatedArtifactTypeExpandedBuilder
  final RelatedArtifactTypeExpandedBuilderEnum? valueEnum;

  /// documentation
  static RelatedArtifactTypeExpandedBuilder documentation =
      RelatedArtifactTypeExpandedBuilder._(
    valueString: 'documentation',
    valueEnum: RelatedArtifactTypeExpandedBuilderEnum.documentation,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Documentation',
    ),
  );

  /// justification
  static RelatedArtifactTypeExpandedBuilder justification =
      RelatedArtifactTypeExpandedBuilder._(
    valueString: 'justification',
    valueEnum: RelatedArtifactTypeExpandedBuilderEnum.justification,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Justification',
    ),
  );

  /// citation
  static RelatedArtifactTypeExpandedBuilder citation =
      RelatedArtifactTypeExpandedBuilder._(
    valueString: 'citation',
    valueEnum: RelatedArtifactTypeExpandedBuilderEnum.citation,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Citation',
    ),
  );

  /// predecessor
  static RelatedArtifactTypeExpandedBuilder predecessor =
      RelatedArtifactTypeExpandedBuilder._(
    valueString: 'predecessor',
    valueEnum: RelatedArtifactTypeExpandedBuilderEnum.predecessor,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Predecessor',
    ),
  );

  /// successor
  static RelatedArtifactTypeExpandedBuilder successor =
      RelatedArtifactTypeExpandedBuilder._(
    valueString: 'successor',
    valueEnum: RelatedArtifactTypeExpandedBuilderEnum.successor,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Successor',
    ),
  );

  /// derived_from
  static RelatedArtifactTypeExpandedBuilder derivedFrom =
      RelatedArtifactTypeExpandedBuilder._(
    valueString: 'derived-from',
    valueEnum: RelatedArtifactTypeExpandedBuilderEnum.derivedFrom,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Derived From',
    ),
  );

  /// depends_on
  static RelatedArtifactTypeExpandedBuilder dependsOn =
      RelatedArtifactTypeExpandedBuilder._(
    valueString: 'depends-on',
    valueEnum: RelatedArtifactTypeExpandedBuilderEnum.dependsOn,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Depends On',
    ),
  );

  /// composed_of
  static RelatedArtifactTypeExpandedBuilder composedOf =
      RelatedArtifactTypeExpandedBuilder._(
    valueString: 'composed-of',
    valueEnum: RelatedArtifactTypeExpandedBuilderEnum.composedOf,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Composed Of',
    ),
  );

  /// part_of
  static RelatedArtifactTypeExpandedBuilder partOf =
      RelatedArtifactTypeExpandedBuilder._(
    valueString: 'part-of',
    valueEnum: RelatedArtifactTypeExpandedBuilderEnum.partOf,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Part Of',
    ),
  );

  /// amends
  static RelatedArtifactTypeExpandedBuilder amends =
      RelatedArtifactTypeExpandedBuilder._(
    valueString: 'amends',
    valueEnum: RelatedArtifactTypeExpandedBuilderEnum.amends,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Amends',
    ),
  );

  /// amended_with
  static RelatedArtifactTypeExpandedBuilder amendedWith =
      RelatedArtifactTypeExpandedBuilder._(
    valueString: 'amended-with',
    valueEnum: RelatedArtifactTypeExpandedBuilderEnum.amendedWith,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Amended With',
    ),
  );

  /// appends
  static RelatedArtifactTypeExpandedBuilder appends =
      RelatedArtifactTypeExpandedBuilder._(
    valueString: 'appends',
    valueEnum: RelatedArtifactTypeExpandedBuilderEnum.appends,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Appends',
    ),
  );

  /// appended_with
  static RelatedArtifactTypeExpandedBuilder appendedWith =
      RelatedArtifactTypeExpandedBuilder._(
    valueString: 'appended-with',
    valueEnum: RelatedArtifactTypeExpandedBuilderEnum.appendedWith,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Appended With',
    ),
  );

  /// cites
  static RelatedArtifactTypeExpandedBuilder cites =
      RelatedArtifactTypeExpandedBuilder._(
    valueString: 'cites',
    valueEnum: RelatedArtifactTypeExpandedBuilderEnum.cites,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Cites',
    ),
  );

  /// cited_by
  static RelatedArtifactTypeExpandedBuilder citedBy =
      RelatedArtifactTypeExpandedBuilder._(
    valueString: 'cited-by',
    valueEnum: RelatedArtifactTypeExpandedBuilderEnum.citedBy,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Cited By',
    ),
  );

  /// comments_on
  static RelatedArtifactTypeExpandedBuilder commentsOn =
      RelatedArtifactTypeExpandedBuilder._(
    valueString: 'comments-on',
    valueEnum: RelatedArtifactTypeExpandedBuilderEnum.commentsOn,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Is Comment On',
    ),
  );

  /// comment_in
  static RelatedArtifactTypeExpandedBuilder commentIn =
      RelatedArtifactTypeExpandedBuilder._(
    valueString: 'comment-in',
    valueEnum: RelatedArtifactTypeExpandedBuilderEnum.commentIn,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Has Comment In',
    ),
  );

  /// contains_
  static RelatedArtifactTypeExpandedBuilder contains_ =
      RelatedArtifactTypeExpandedBuilder._(
    valueString: 'contains',
    valueEnum: RelatedArtifactTypeExpandedBuilderEnum.contains_,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Contains',
    ),
  );

  /// contained_in
  static RelatedArtifactTypeExpandedBuilder containedIn =
      RelatedArtifactTypeExpandedBuilder._(
    valueString: 'contained-in',
    valueEnum: RelatedArtifactTypeExpandedBuilderEnum.containedIn,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Contained In',
    ),
  );

  /// corrects
  static RelatedArtifactTypeExpandedBuilder corrects =
      RelatedArtifactTypeExpandedBuilder._(
    valueString: 'corrects',
    valueEnum: RelatedArtifactTypeExpandedBuilderEnum.corrects,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Corrects',
    ),
  );

  /// correction_in
  static RelatedArtifactTypeExpandedBuilder correctionIn =
      RelatedArtifactTypeExpandedBuilder._(
    valueString: 'correction-in',
    valueEnum: RelatedArtifactTypeExpandedBuilderEnum.correctionIn,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Correction In',
    ),
  );

  /// replaces
  static RelatedArtifactTypeExpandedBuilder replaces =
      RelatedArtifactTypeExpandedBuilder._(
    valueString: 'replaces',
    valueEnum: RelatedArtifactTypeExpandedBuilderEnum.replaces,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Replaces',
    ),
  );

  /// replaced_with
  static RelatedArtifactTypeExpandedBuilder replacedWith =
      RelatedArtifactTypeExpandedBuilder._(
    valueString: 'replaced-with',
    valueEnum: RelatedArtifactTypeExpandedBuilderEnum.replacedWith,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Replaced With',
    ),
  );

  /// retracts
  static RelatedArtifactTypeExpandedBuilder retracts =
      RelatedArtifactTypeExpandedBuilder._(
    valueString: 'retracts',
    valueEnum: RelatedArtifactTypeExpandedBuilderEnum.retracts,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Retracts',
    ),
  );

  /// retracted_by
  static RelatedArtifactTypeExpandedBuilder retractedBy =
      RelatedArtifactTypeExpandedBuilder._(
    valueString: 'retracted-by',
    valueEnum: RelatedArtifactTypeExpandedBuilderEnum.retractedBy,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Retracted By',
    ),
  );

  /// signs
  static RelatedArtifactTypeExpandedBuilder signs =
      RelatedArtifactTypeExpandedBuilder._(
    valueString: 'signs',
    valueEnum: RelatedArtifactTypeExpandedBuilderEnum.signs,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Signs',
    ),
  );

  /// similar_to
  static RelatedArtifactTypeExpandedBuilder similarTo =
      RelatedArtifactTypeExpandedBuilder._(
    valueString: 'similar-to',
    valueEnum: RelatedArtifactTypeExpandedBuilderEnum.similarTo,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Similar To',
    ),
  );

  /// supports
  static RelatedArtifactTypeExpandedBuilder supports =
      RelatedArtifactTypeExpandedBuilder._(
    valueString: 'supports',
    valueEnum: RelatedArtifactTypeExpandedBuilderEnum.supports,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Supports',
    ),
  );

  /// supported_with
  static RelatedArtifactTypeExpandedBuilder supportedWith =
      RelatedArtifactTypeExpandedBuilder._(
    valueString: 'supported-with',
    valueEnum: RelatedArtifactTypeExpandedBuilderEnum.supportedWith,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Supported With',
    ),
  );

  /// transforms
  static RelatedArtifactTypeExpandedBuilder transforms =
      RelatedArtifactTypeExpandedBuilder._(
    valueString: 'transforms',
    valueEnum: RelatedArtifactTypeExpandedBuilderEnum.transforms,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Transforms',
    ),
  );

  /// transformed_into
  static RelatedArtifactTypeExpandedBuilder transformedInto =
      RelatedArtifactTypeExpandedBuilder._(
    valueString: 'transformed-into',
    valueEnum: RelatedArtifactTypeExpandedBuilderEnum.transformedInto,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Transformed Into',
    ),
  );

  /// transformed_with
  static RelatedArtifactTypeExpandedBuilder transformedWith =
      RelatedArtifactTypeExpandedBuilder._(
    valueString: 'transformed-with',
    valueEnum: RelatedArtifactTypeExpandedBuilderEnum.transformedWith,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Transformed With',
    ),
  );

  /// documents
  static RelatedArtifactTypeExpandedBuilder documents =
      RelatedArtifactTypeExpandedBuilder._(
    valueString: 'documents',
    valueEnum: RelatedArtifactTypeExpandedBuilderEnum.documents,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Documents',
    ),
  );

  /// specification_of
  static RelatedArtifactTypeExpandedBuilder specificationOf =
      RelatedArtifactTypeExpandedBuilder._(
    valueString: 'specification-of',
    valueEnum: RelatedArtifactTypeExpandedBuilderEnum.specificationOf,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Specification Of',
    ),
  );

  /// created_with
  static RelatedArtifactTypeExpandedBuilder createdWith =
      RelatedArtifactTypeExpandedBuilder._(
    valueString: 'created-with',
    valueEnum: RelatedArtifactTypeExpandedBuilderEnum.createdWith,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Created With',
    ),
  );

  /// cite_as
  static RelatedArtifactTypeExpandedBuilder citeAs =
      RelatedArtifactTypeExpandedBuilder._(
    valueString: 'cite-as',
    valueEnum: RelatedArtifactTypeExpandedBuilderEnum.citeAs,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Cite As',
    ),
  );

  /// reprint
  static RelatedArtifactTypeExpandedBuilder reprint =
      RelatedArtifactTypeExpandedBuilder._(
    valueString: 'reprint',
    valueEnum: RelatedArtifactTypeExpandedBuilderEnum.reprint,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Reprint',
    ),
  );

  /// reprint_of
  static RelatedArtifactTypeExpandedBuilder reprintOf =
      RelatedArtifactTypeExpandedBuilder._(
    valueString: 'reprint-of',
    valueEnum: RelatedArtifactTypeExpandedBuilderEnum.reprintOf,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Reprint Of',
    ),
  );

  /// For instances where an Element is present but not value
  static RelatedArtifactTypeExpandedBuilder elementOnly =
      RelatedArtifactTypeExpandedBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<RelatedArtifactTypeExpandedBuilder> values = [
    documentation,
    justification,
    citation,
    predecessor,
    successor,
    derivedFrom,
    dependsOn,
    composedOf,
    partOf,
    amends,
    amendedWith,
    appends,
    appendedWith,
    cites,
    citedBy,
    commentsOn,
    commentIn,
    contains_,
    containedIn,
    corrects,
    correctionIn,
    replaces,
    replacedWith,
    retracts,
    retractedBy,
    signs,
    similarTo,
    supports,
    supportedWith,
    transforms,
    transformedInto,
    transformedWith,
    documents,
    specificationOf,
    createdWith,
    citeAs,
    reprint,
    reprintOf,
  ];

  /// Returns the enum value with an element attached
  RelatedArtifactTypeExpandedBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return RelatedArtifactTypeExpandedBuilder._(
      valueString: valueString,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (valueString?.isEmpty ?? false) ? null : valueString,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => valueString ?? '';
}
