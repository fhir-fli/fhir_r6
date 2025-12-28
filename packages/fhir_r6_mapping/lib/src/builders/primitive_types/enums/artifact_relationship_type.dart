part of '../primitive_types.dart';

/// Actual enum for ArtifactRelationshipType
enum ArtifactRelationshipTypeBuilderEnum {
  /// documentation
  documentation,

  /// justification
  justification,

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

  /// specification-of
  specificationOf,

  /// created-with
  createdWith,

  /// cite-as
  citeAs,

  /// summarizes
  summarizes,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ArtifactRelationshipTypeBuilderEnum.documentation:
        return 'documentation';
      case ArtifactRelationshipTypeBuilderEnum.justification:
        return 'justification';
      case ArtifactRelationshipTypeBuilderEnum.predecessor:
        return 'predecessor';
      case ArtifactRelationshipTypeBuilderEnum.successor:
        return 'successor';
      case ArtifactRelationshipTypeBuilderEnum.derivedFrom:
        return 'derived-from';
      case ArtifactRelationshipTypeBuilderEnum.dependsOn:
        return 'depends-on';
      case ArtifactRelationshipTypeBuilderEnum.composedOf:
        return 'composed-of';
      case ArtifactRelationshipTypeBuilderEnum.partOf:
        return 'part-of';
      case ArtifactRelationshipTypeBuilderEnum.amends:
        return 'amends';
      case ArtifactRelationshipTypeBuilderEnum.amendedWith:
        return 'amended-with';
      case ArtifactRelationshipTypeBuilderEnum.appends:
        return 'appends';
      case ArtifactRelationshipTypeBuilderEnum.appendedWith:
        return 'appended-with';
      case ArtifactRelationshipTypeBuilderEnum.cites:
        return 'cites';
      case ArtifactRelationshipTypeBuilderEnum.citedBy:
        return 'cited-by';
      case ArtifactRelationshipTypeBuilderEnum.commentsOn:
        return 'comments-on';
      case ArtifactRelationshipTypeBuilderEnum.commentIn:
        return 'comment-in';
      case ArtifactRelationshipTypeBuilderEnum.contains_:
        return 'contains';
      case ArtifactRelationshipTypeBuilderEnum.containedIn:
        return 'contained-in';
      case ArtifactRelationshipTypeBuilderEnum.corrects:
        return 'corrects';
      case ArtifactRelationshipTypeBuilderEnum.correctionIn:
        return 'correction-in';
      case ArtifactRelationshipTypeBuilderEnum.replaces:
        return 'replaces';
      case ArtifactRelationshipTypeBuilderEnum.replacedWith:
        return 'replaced-with';
      case ArtifactRelationshipTypeBuilderEnum.retracts:
        return 'retracts';
      case ArtifactRelationshipTypeBuilderEnum.retractedBy:
        return 'retracted-by';
      case ArtifactRelationshipTypeBuilderEnum.signs:
        return 'signs';
      case ArtifactRelationshipTypeBuilderEnum.similarTo:
        return 'similar-to';
      case ArtifactRelationshipTypeBuilderEnum.supports:
        return 'supports';
      case ArtifactRelationshipTypeBuilderEnum.supportedWith:
        return 'supported-with';
      case ArtifactRelationshipTypeBuilderEnum.transforms:
        return 'transforms';
      case ArtifactRelationshipTypeBuilderEnum.transformedInto:
        return 'transformed-into';
      case ArtifactRelationshipTypeBuilderEnum.transformedWith:
        return 'transformed-with';
      case ArtifactRelationshipTypeBuilderEnum.specificationOf:
        return 'specification-of';
      case ArtifactRelationshipTypeBuilderEnum.createdWith:
        return 'created-with';
      case ArtifactRelationshipTypeBuilderEnum.citeAs:
        return 'cite-as';
      case ArtifactRelationshipTypeBuilderEnum.summarizes:
        return 'summarizes';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ArtifactRelationshipTypeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return ArtifactRelationshipTypeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ArtifactRelationshipTypeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'documentation':
        return ArtifactRelationshipTypeBuilderEnum.documentation;
      case 'justification':
        return ArtifactRelationshipTypeBuilderEnum.justification;
      case 'predecessor':
        return ArtifactRelationshipTypeBuilderEnum.predecessor;
      case 'successor':
        return ArtifactRelationshipTypeBuilderEnum.successor;
      case 'derived-from':
        return ArtifactRelationshipTypeBuilderEnum.derivedFrom;
      case 'depends-on':
        return ArtifactRelationshipTypeBuilderEnum.dependsOn;
      case 'composed-of':
        return ArtifactRelationshipTypeBuilderEnum.composedOf;
      case 'part-of':
        return ArtifactRelationshipTypeBuilderEnum.partOf;
      case 'amends':
        return ArtifactRelationshipTypeBuilderEnum.amends;
      case 'amended-with':
        return ArtifactRelationshipTypeBuilderEnum.amendedWith;
      case 'appends':
        return ArtifactRelationshipTypeBuilderEnum.appends;
      case 'appended-with':
        return ArtifactRelationshipTypeBuilderEnum.appendedWith;
      case 'cites':
        return ArtifactRelationshipTypeBuilderEnum.cites;
      case 'cited-by':
        return ArtifactRelationshipTypeBuilderEnum.citedBy;
      case 'comments-on':
        return ArtifactRelationshipTypeBuilderEnum.commentsOn;
      case 'comment-in':
        return ArtifactRelationshipTypeBuilderEnum.commentIn;
      case 'contains':
        return ArtifactRelationshipTypeBuilderEnum.contains_;
      case 'contained-in':
        return ArtifactRelationshipTypeBuilderEnum.containedIn;
      case 'corrects':
        return ArtifactRelationshipTypeBuilderEnum.corrects;
      case 'correction-in':
        return ArtifactRelationshipTypeBuilderEnum.correctionIn;
      case 'replaces':
        return ArtifactRelationshipTypeBuilderEnum.replaces;
      case 'replaced-with':
        return ArtifactRelationshipTypeBuilderEnum.replacedWith;
      case 'retracts':
        return ArtifactRelationshipTypeBuilderEnum.retracts;
      case 'retracted-by':
        return ArtifactRelationshipTypeBuilderEnum.retractedBy;
      case 'signs':
        return ArtifactRelationshipTypeBuilderEnum.signs;
      case 'similar-to':
        return ArtifactRelationshipTypeBuilderEnum.similarTo;
      case 'supports':
        return ArtifactRelationshipTypeBuilderEnum.supports;
      case 'supported-with':
        return ArtifactRelationshipTypeBuilderEnum.supportedWith;
      case 'transforms':
        return ArtifactRelationshipTypeBuilderEnum.transforms;
      case 'transformed-into':
        return ArtifactRelationshipTypeBuilderEnum.transformedInto;
      case 'transformed-with':
        return ArtifactRelationshipTypeBuilderEnum.transformedWith;
      case 'specification-of':
        return ArtifactRelationshipTypeBuilderEnum.specificationOf;
      case 'created-with':
        return ArtifactRelationshipTypeBuilderEnum.createdWith;
      case 'cite-as':
        return ArtifactRelationshipTypeBuilderEnum.citeAs;
      case 'summarizes':
        return ArtifactRelationshipTypeBuilderEnum.summarizes;
    }
    return null;
  }
}

/// Type of relationship to the related artifact.
class ArtifactRelationshipTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ArtifactRelationshipTypeBuilder._({
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
  factory ArtifactRelationshipTypeBuilder(
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
    final valueEnum = ArtifactRelationshipTypeBuilderEnum.fromString(
      valueString,
    );
    return ArtifactRelationshipTypeBuilder._(
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

  /// Create empty [ArtifactRelationshipTypeBuilder]
  /// with element only
  factory ArtifactRelationshipTypeBuilder.empty() =>
      ArtifactRelationshipTypeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [ArtifactRelationshipTypeBuilder] from JSON.
  factory ArtifactRelationshipTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ArtifactRelationshipTypeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ArtifactRelationshipTypeBuilder cannot be constructed from JSON.',
      );
    }
    return ArtifactRelationshipTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for ArtifactRelationshipTypeBuilder
  final ArtifactRelationshipTypeBuilderEnum? valueEnum;

  /// documentation
  static ArtifactRelationshipTypeBuilder documentation =
      ArtifactRelationshipTypeBuilder._(
    valueString: 'documentation',
    valueEnum: ArtifactRelationshipTypeBuilderEnum.documentation,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Documentation',
    ),
  );

  /// justification
  static ArtifactRelationshipTypeBuilder justification =
      ArtifactRelationshipTypeBuilder._(
    valueString: 'justification',
    valueEnum: ArtifactRelationshipTypeBuilderEnum.justification,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Justification',
    ),
  );

  /// predecessor
  static ArtifactRelationshipTypeBuilder predecessor =
      ArtifactRelationshipTypeBuilder._(
    valueString: 'predecessor',
    valueEnum: ArtifactRelationshipTypeBuilderEnum.predecessor,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Predecessor',
    ),
  );

  /// successor
  static ArtifactRelationshipTypeBuilder successor =
      ArtifactRelationshipTypeBuilder._(
    valueString: 'successor',
    valueEnum: ArtifactRelationshipTypeBuilderEnum.successor,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Successor',
    ),
  );

  /// derived_from
  static ArtifactRelationshipTypeBuilder derivedFrom =
      ArtifactRelationshipTypeBuilder._(
    valueString: 'derived-from',
    valueEnum: ArtifactRelationshipTypeBuilderEnum.derivedFrom,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Derived From',
    ),
  );

  /// depends_on
  static ArtifactRelationshipTypeBuilder dependsOn =
      ArtifactRelationshipTypeBuilder._(
    valueString: 'depends-on',
    valueEnum: ArtifactRelationshipTypeBuilderEnum.dependsOn,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Depends On',
    ),
  );

  /// composed_of
  static ArtifactRelationshipTypeBuilder composedOf =
      ArtifactRelationshipTypeBuilder._(
    valueString: 'composed-of',
    valueEnum: ArtifactRelationshipTypeBuilderEnum.composedOf,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Composed Of',
    ),
  );

  /// part_of
  static ArtifactRelationshipTypeBuilder partOf =
      ArtifactRelationshipTypeBuilder._(
    valueString: 'part-of',
    valueEnum: ArtifactRelationshipTypeBuilderEnum.partOf,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Part Of',
    ),
  );

  /// amends
  static ArtifactRelationshipTypeBuilder amends =
      ArtifactRelationshipTypeBuilder._(
    valueString: 'amends',
    valueEnum: ArtifactRelationshipTypeBuilderEnum.amends,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Amends',
    ),
  );

  /// amended_with
  static ArtifactRelationshipTypeBuilder amendedWith =
      ArtifactRelationshipTypeBuilder._(
    valueString: 'amended-with',
    valueEnum: ArtifactRelationshipTypeBuilderEnum.amendedWith,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Amended With',
    ),
  );

  /// appends
  static ArtifactRelationshipTypeBuilder appends =
      ArtifactRelationshipTypeBuilder._(
    valueString: 'appends',
    valueEnum: ArtifactRelationshipTypeBuilderEnum.appends,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Appends',
    ),
  );

  /// appended_with
  static ArtifactRelationshipTypeBuilder appendedWith =
      ArtifactRelationshipTypeBuilder._(
    valueString: 'appended-with',
    valueEnum: ArtifactRelationshipTypeBuilderEnum.appendedWith,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Appended With',
    ),
  );

  /// cites
  static ArtifactRelationshipTypeBuilder cites =
      ArtifactRelationshipTypeBuilder._(
    valueString: 'cites',
    valueEnum: ArtifactRelationshipTypeBuilderEnum.cites,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Cites',
    ),
  );

  /// cited_by
  static ArtifactRelationshipTypeBuilder citedBy =
      ArtifactRelationshipTypeBuilder._(
    valueString: 'cited-by',
    valueEnum: ArtifactRelationshipTypeBuilderEnum.citedBy,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Cited By',
    ),
  );

  /// comments_on
  static ArtifactRelationshipTypeBuilder commentsOn =
      ArtifactRelationshipTypeBuilder._(
    valueString: 'comments-on',
    valueEnum: ArtifactRelationshipTypeBuilderEnum.commentsOn,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Is Comment On',
    ),
  );

  /// comment_in
  static ArtifactRelationshipTypeBuilder commentIn =
      ArtifactRelationshipTypeBuilder._(
    valueString: 'comment-in',
    valueEnum: ArtifactRelationshipTypeBuilderEnum.commentIn,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Has Comment In',
    ),
  );

  /// contains_
  static ArtifactRelationshipTypeBuilder contains_ =
      ArtifactRelationshipTypeBuilder._(
    valueString: 'contains',
    valueEnum: ArtifactRelationshipTypeBuilderEnum.contains_,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Contains',
    ),
  );

  /// contained_in
  static ArtifactRelationshipTypeBuilder containedIn =
      ArtifactRelationshipTypeBuilder._(
    valueString: 'contained-in',
    valueEnum: ArtifactRelationshipTypeBuilderEnum.containedIn,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Contained In',
    ),
  );

  /// corrects
  static ArtifactRelationshipTypeBuilder corrects =
      ArtifactRelationshipTypeBuilder._(
    valueString: 'corrects',
    valueEnum: ArtifactRelationshipTypeBuilderEnum.corrects,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Corrects',
    ),
  );

  /// correction_in
  static ArtifactRelationshipTypeBuilder correctionIn =
      ArtifactRelationshipTypeBuilder._(
    valueString: 'correction-in',
    valueEnum: ArtifactRelationshipTypeBuilderEnum.correctionIn,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Correction In',
    ),
  );

  /// replaces
  static ArtifactRelationshipTypeBuilder replaces =
      ArtifactRelationshipTypeBuilder._(
    valueString: 'replaces',
    valueEnum: ArtifactRelationshipTypeBuilderEnum.replaces,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Replaces',
    ),
  );

  /// replaced_with
  static ArtifactRelationshipTypeBuilder replacedWith =
      ArtifactRelationshipTypeBuilder._(
    valueString: 'replaced-with',
    valueEnum: ArtifactRelationshipTypeBuilderEnum.replacedWith,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Replaced With',
    ),
  );

  /// retracts
  static ArtifactRelationshipTypeBuilder retracts =
      ArtifactRelationshipTypeBuilder._(
    valueString: 'retracts',
    valueEnum: ArtifactRelationshipTypeBuilderEnum.retracts,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Retracts',
    ),
  );

  /// retracted_by
  static ArtifactRelationshipTypeBuilder retractedBy =
      ArtifactRelationshipTypeBuilder._(
    valueString: 'retracted-by',
    valueEnum: ArtifactRelationshipTypeBuilderEnum.retractedBy,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Retracted By',
    ),
  );

  /// signs
  static ArtifactRelationshipTypeBuilder signs =
      ArtifactRelationshipTypeBuilder._(
    valueString: 'signs',
    valueEnum: ArtifactRelationshipTypeBuilderEnum.signs,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Signs',
    ),
  );

  /// similar_to
  static ArtifactRelationshipTypeBuilder similarTo =
      ArtifactRelationshipTypeBuilder._(
    valueString: 'similar-to',
    valueEnum: ArtifactRelationshipTypeBuilderEnum.similarTo,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Similar To',
    ),
  );

  /// supports
  static ArtifactRelationshipTypeBuilder supports =
      ArtifactRelationshipTypeBuilder._(
    valueString: 'supports',
    valueEnum: ArtifactRelationshipTypeBuilderEnum.supports,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Supports',
    ),
  );

  /// supported_with
  static ArtifactRelationshipTypeBuilder supportedWith =
      ArtifactRelationshipTypeBuilder._(
    valueString: 'supported-with',
    valueEnum: ArtifactRelationshipTypeBuilderEnum.supportedWith,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Supported With',
    ),
  );

  /// transforms
  static ArtifactRelationshipTypeBuilder transforms =
      ArtifactRelationshipTypeBuilder._(
    valueString: 'transforms',
    valueEnum: ArtifactRelationshipTypeBuilderEnum.transforms,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Transforms',
    ),
  );

  /// transformed_into
  static ArtifactRelationshipTypeBuilder transformedInto =
      ArtifactRelationshipTypeBuilder._(
    valueString: 'transformed-into',
    valueEnum: ArtifactRelationshipTypeBuilderEnum.transformedInto,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Transformed Into',
    ),
  );

  /// transformed_with
  static ArtifactRelationshipTypeBuilder transformedWith =
      ArtifactRelationshipTypeBuilder._(
    valueString: 'transformed-with',
    valueEnum: ArtifactRelationshipTypeBuilderEnum.transformedWith,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Transformed With',
    ),
  );

  /// specification_of
  static ArtifactRelationshipTypeBuilder specificationOf =
      ArtifactRelationshipTypeBuilder._(
    valueString: 'specification-of',
    valueEnum: ArtifactRelationshipTypeBuilderEnum.specificationOf,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Specification Of',
    ),
  );

  /// created_with
  static ArtifactRelationshipTypeBuilder createdWith =
      ArtifactRelationshipTypeBuilder._(
    valueString: 'created-with',
    valueEnum: ArtifactRelationshipTypeBuilderEnum.createdWith,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Created With',
    ),
  );

  /// cite_as
  static ArtifactRelationshipTypeBuilder citeAs =
      ArtifactRelationshipTypeBuilder._(
    valueString: 'cite-as',
    valueEnum: ArtifactRelationshipTypeBuilderEnum.citeAs,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Cite As',
    ),
  );

  /// summarizes
  static ArtifactRelationshipTypeBuilder summarizes =
      ArtifactRelationshipTypeBuilder._(
    valueString: 'summarizes',
    valueEnum: ArtifactRelationshipTypeBuilderEnum.summarizes,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Summarizes',
    ),
  );

  /// For instances where an Element is present but not value
  static ArtifactRelationshipTypeBuilder elementOnly =
      ArtifactRelationshipTypeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<ArtifactRelationshipTypeBuilder> values = [
    documentation,
    justification,
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
    specificationOf,
    createdWith,
    citeAs,
    summarizes,
  ];

  /// Returns the enum value with an element attached
  ArtifactRelationshipTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ArtifactRelationshipTypeBuilder._(
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
