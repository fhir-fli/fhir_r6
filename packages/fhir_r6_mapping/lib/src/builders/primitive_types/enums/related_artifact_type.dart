// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for RelatedArtifactType
enum RelatedArtifactTypeBuilderEnum {
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
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case RelatedArtifactTypeBuilderEnum.documentation:
        return 'documentation';
      case RelatedArtifactTypeBuilderEnum.justification:
        return 'justification';
      case RelatedArtifactTypeBuilderEnum.citation:
        return 'citation';
      case RelatedArtifactTypeBuilderEnum.predecessor:
        return 'predecessor';
      case RelatedArtifactTypeBuilderEnum.successor:
        return 'successor';
      case RelatedArtifactTypeBuilderEnum.derivedFrom:
        return 'derived-from';
      case RelatedArtifactTypeBuilderEnum.dependsOn:
        return 'depends-on';
      case RelatedArtifactTypeBuilderEnum.composedOf:
        return 'composed-of';
      case RelatedArtifactTypeBuilderEnum.partOf:
        return 'part-of';
      case RelatedArtifactTypeBuilderEnum.amends:
        return 'amends';
      case RelatedArtifactTypeBuilderEnum.amendedWith:
        return 'amended-with';
      case RelatedArtifactTypeBuilderEnum.appends:
        return 'appends';
      case RelatedArtifactTypeBuilderEnum.appendedWith:
        return 'appended-with';
      case RelatedArtifactTypeBuilderEnum.cites:
        return 'cites';
      case RelatedArtifactTypeBuilderEnum.citedBy:
        return 'cited-by';
      case RelatedArtifactTypeBuilderEnum.commentsOn:
        return 'comments-on';
      case RelatedArtifactTypeBuilderEnum.commentIn:
        return 'comment-in';
      case RelatedArtifactTypeBuilderEnum.contains_:
        return 'contains';
      case RelatedArtifactTypeBuilderEnum.containedIn:
        return 'contained-in';
      case RelatedArtifactTypeBuilderEnum.corrects:
        return 'corrects';
      case RelatedArtifactTypeBuilderEnum.correctionIn:
        return 'correction-in';
      case RelatedArtifactTypeBuilderEnum.replaces:
        return 'replaces';
      case RelatedArtifactTypeBuilderEnum.replacedWith:
        return 'replaced-with';
      case RelatedArtifactTypeBuilderEnum.retracts:
        return 'retracts';
      case RelatedArtifactTypeBuilderEnum.retractedBy:
        return 'retracted-by';
      case RelatedArtifactTypeBuilderEnum.signs:
        return 'signs';
      case RelatedArtifactTypeBuilderEnum.similarTo:
        return 'similar-to';
      case RelatedArtifactTypeBuilderEnum.supports:
        return 'supports';
      case RelatedArtifactTypeBuilderEnum.supportedWith:
        return 'supported-with';
      case RelatedArtifactTypeBuilderEnum.transforms:
        return 'transforms';
      case RelatedArtifactTypeBuilderEnum.transformedInto:
        return 'transformed-into';
      case RelatedArtifactTypeBuilderEnum.transformedWith:
        return 'transformed-with';
      case RelatedArtifactTypeBuilderEnum.documents:
        return 'documents';
      case RelatedArtifactTypeBuilderEnum.specificationOf:
        return 'specification-of';
      case RelatedArtifactTypeBuilderEnum.createdWith:
        return 'created-with';
      case RelatedArtifactTypeBuilderEnum.citeAs:
        return 'cite-as';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static RelatedArtifactTypeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return RelatedArtifactTypeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static RelatedArtifactTypeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'documentation':
        return RelatedArtifactTypeBuilderEnum.documentation;
      case 'justification':
        return RelatedArtifactTypeBuilderEnum.justification;
      case 'citation':
        return RelatedArtifactTypeBuilderEnum.citation;
      case 'predecessor':
        return RelatedArtifactTypeBuilderEnum.predecessor;
      case 'successor':
        return RelatedArtifactTypeBuilderEnum.successor;
      case 'derived-from':
        return RelatedArtifactTypeBuilderEnum.derivedFrom;
      case 'depends-on':
        return RelatedArtifactTypeBuilderEnum.dependsOn;
      case 'composed-of':
        return RelatedArtifactTypeBuilderEnum.composedOf;
      case 'part-of':
        return RelatedArtifactTypeBuilderEnum.partOf;
      case 'amends':
        return RelatedArtifactTypeBuilderEnum.amends;
      case 'amended-with':
        return RelatedArtifactTypeBuilderEnum.amendedWith;
      case 'appends':
        return RelatedArtifactTypeBuilderEnum.appends;
      case 'appended-with':
        return RelatedArtifactTypeBuilderEnum.appendedWith;
      case 'cites':
        return RelatedArtifactTypeBuilderEnum.cites;
      case 'cited-by':
        return RelatedArtifactTypeBuilderEnum.citedBy;
      case 'comments-on':
        return RelatedArtifactTypeBuilderEnum.commentsOn;
      case 'comment-in':
        return RelatedArtifactTypeBuilderEnum.commentIn;
      case 'contains':
        return RelatedArtifactTypeBuilderEnum.contains_;
      case 'contained-in':
        return RelatedArtifactTypeBuilderEnum.containedIn;
      case 'corrects':
        return RelatedArtifactTypeBuilderEnum.corrects;
      case 'correction-in':
        return RelatedArtifactTypeBuilderEnum.correctionIn;
      case 'replaces':
        return RelatedArtifactTypeBuilderEnum.replaces;
      case 'replaced-with':
        return RelatedArtifactTypeBuilderEnum.replacedWith;
      case 'retracts':
        return RelatedArtifactTypeBuilderEnum.retracts;
      case 'retracted-by':
        return RelatedArtifactTypeBuilderEnum.retractedBy;
      case 'signs':
        return RelatedArtifactTypeBuilderEnum.signs;
      case 'similar-to':
        return RelatedArtifactTypeBuilderEnum.similarTo;
      case 'supports':
        return RelatedArtifactTypeBuilderEnum.supports;
      case 'supported-with':
        return RelatedArtifactTypeBuilderEnum.supportedWith;
      case 'transforms':
        return RelatedArtifactTypeBuilderEnum.transforms;
      case 'transformed-into':
        return RelatedArtifactTypeBuilderEnum.transformedInto;
      case 'transformed-with':
        return RelatedArtifactTypeBuilderEnum.transformedWith;
      case 'documents':
        return RelatedArtifactTypeBuilderEnum.documents;
      case 'specification-of':
        return RelatedArtifactTypeBuilderEnum.specificationOf;
      case 'created-with':
        return RelatedArtifactTypeBuilderEnum.createdWith;
      case 'cite-as':
        return RelatedArtifactTypeBuilderEnum.citeAs;
    }
    return null;
  }
}

/// The type of relationship to the related artifact.
class RelatedArtifactTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  RelatedArtifactTypeBuilder._({
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
  factory RelatedArtifactTypeBuilder(
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
    final valueEnum = RelatedArtifactTypeBuilderEnum.fromString(
      valueString,
    );
    return RelatedArtifactTypeBuilder._(
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

  /// Create empty [RelatedArtifactTypeBuilder]
  /// with element only
  factory RelatedArtifactTypeBuilder.empty() =>
      RelatedArtifactTypeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [RelatedArtifactTypeBuilder] from JSON.
  factory RelatedArtifactTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RelatedArtifactTypeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'RelatedArtifactTypeBuilder cannot be constructed from JSON.',
      );
    }
    return RelatedArtifactTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for RelatedArtifactTypeBuilder
  final RelatedArtifactTypeBuilderEnum? valueEnum;

  /// documentation
  static RelatedArtifactTypeBuilder documentation =
      RelatedArtifactTypeBuilder._(
    valueString: 'documentation',
    valueEnum: RelatedArtifactTypeBuilderEnum.documentation,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Documentation',
    ),
  );

  /// justification
  static RelatedArtifactTypeBuilder justification =
      RelatedArtifactTypeBuilder._(
    valueString: 'justification',
    valueEnum: RelatedArtifactTypeBuilderEnum.justification,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Justification',
    ),
  );

  /// citation
  static RelatedArtifactTypeBuilder citation = RelatedArtifactTypeBuilder._(
    valueString: 'citation',
    valueEnum: RelatedArtifactTypeBuilderEnum.citation,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Citation',
    ),
  );

  /// predecessor
  static RelatedArtifactTypeBuilder predecessor = RelatedArtifactTypeBuilder._(
    valueString: 'predecessor',
    valueEnum: RelatedArtifactTypeBuilderEnum.predecessor,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Predecessor',
    ),
  );

  /// successor
  static RelatedArtifactTypeBuilder successor = RelatedArtifactTypeBuilder._(
    valueString: 'successor',
    valueEnum: RelatedArtifactTypeBuilderEnum.successor,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Successor',
    ),
  );

  /// derived_from
  static RelatedArtifactTypeBuilder derivedFrom = RelatedArtifactTypeBuilder._(
    valueString: 'derived-from',
    valueEnum: RelatedArtifactTypeBuilderEnum.derivedFrom,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Derived From',
    ),
  );

  /// depends_on
  static RelatedArtifactTypeBuilder dependsOn = RelatedArtifactTypeBuilder._(
    valueString: 'depends-on',
    valueEnum: RelatedArtifactTypeBuilderEnum.dependsOn,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Depends On',
    ),
  );

  /// composed_of
  static RelatedArtifactTypeBuilder composedOf = RelatedArtifactTypeBuilder._(
    valueString: 'composed-of',
    valueEnum: RelatedArtifactTypeBuilderEnum.composedOf,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Composed Of',
    ),
  );

  /// part_of
  static RelatedArtifactTypeBuilder partOf = RelatedArtifactTypeBuilder._(
    valueString: 'part-of',
    valueEnum: RelatedArtifactTypeBuilderEnum.partOf,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Part Of',
    ),
  );

  /// amends
  static RelatedArtifactTypeBuilder amends = RelatedArtifactTypeBuilder._(
    valueString: 'amends',
    valueEnum: RelatedArtifactTypeBuilderEnum.amends,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Amends',
    ),
  );

  /// amended_with
  static RelatedArtifactTypeBuilder amendedWith = RelatedArtifactTypeBuilder._(
    valueString: 'amended-with',
    valueEnum: RelatedArtifactTypeBuilderEnum.amendedWith,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Amended With',
    ),
  );

  /// appends
  static RelatedArtifactTypeBuilder appends = RelatedArtifactTypeBuilder._(
    valueString: 'appends',
    valueEnum: RelatedArtifactTypeBuilderEnum.appends,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Appends',
    ),
  );

  /// appended_with
  static RelatedArtifactTypeBuilder appendedWith = RelatedArtifactTypeBuilder._(
    valueString: 'appended-with',
    valueEnum: RelatedArtifactTypeBuilderEnum.appendedWith,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Appended With',
    ),
  );

  /// cites
  static RelatedArtifactTypeBuilder cites = RelatedArtifactTypeBuilder._(
    valueString: 'cites',
    valueEnum: RelatedArtifactTypeBuilderEnum.cites,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Cites',
    ),
  );

  /// cited_by
  static RelatedArtifactTypeBuilder citedBy = RelatedArtifactTypeBuilder._(
    valueString: 'cited-by',
    valueEnum: RelatedArtifactTypeBuilderEnum.citedBy,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Cited By',
    ),
  );

  /// comments_on
  static RelatedArtifactTypeBuilder commentsOn = RelatedArtifactTypeBuilder._(
    valueString: 'comments-on',
    valueEnum: RelatedArtifactTypeBuilderEnum.commentsOn,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Is Comment On',
    ),
  );

  /// comment_in
  static RelatedArtifactTypeBuilder commentIn = RelatedArtifactTypeBuilder._(
    valueString: 'comment-in',
    valueEnum: RelatedArtifactTypeBuilderEnum.commentIn,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Has Comment In',
    ),
  );

  /// contains_
  static RelatedArtifactTypeBuilder contains_ = RelatedArtifactTypeBuilder._(
    valueString: 'contains',
    valueEnum: RelatedArtifactTypeBuilderEnum.contains_,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Contains',
    ),
  );

  /// contained_in
  static RelatedArtifactTypeBuilder containedIn = RelatedArtifactTypeBuilder._(
    valueString: 'contained-in',
    valueEnum: RelatedArtifactTypeBuilderEnum.containedIn,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Contained In',
    ),
  );

  /// corrects
  static RelatedArtifactTypeBuilder corrects = RelatedArtifactTypeBuilder._(
    valueString: 'corrects',
    valueEnum: RelatedArtifactTypeBuilderEnum.corrects,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Corrects',
    ),
  );

  /// correction_in
  static RelatedArtifactTypeBuilder correctionIn = RelatedArtifactTypeBuilder._(
    valueString: 'correction-in',
    valueEnum: RelatedArtifactTypeBuilderEnum.correctionIn,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Correction In',
    ),
  );

  /// replaces
  static RelatedArtifactTypeBuilder replaces = RelatedArtifactTypeBuilder._(
    valueString: 'replaces',
    valueEnum: RelatedArtifactTypeBuilderEnum.replaces,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Replaces',
    ),
  );

  /// replaced_with
  static RelatedArtifactTypeBuilder replacedWith = RelatedArtifactTypeBuilder._(
    valueString: 'replaced-with',
    valueEnum: RelatedArtifactTypeBuilderEnum.replacedWith,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Replaced With',
    ),
  );

  /// retracts
  static RelatedArtifactTypeBuilder retracts = RelatedArtifactTypeBuilder._(
    valueString: 'retracts',
    valueEnum: RelatedArtifactTypeBuilderEnum.retracts,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Retracts',
    ),
  );

  /// retracted_by
  static RelatedArtifactTypeBuilder retractedBy = RelatedArtifactTypeBuilder._(
    valueString: 'retracted-by',
    valueEnum: RelatedArtifactTypeBuilderEnum.retractedBy,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Retracted By',
    ),
  );

  /// signs
  static RelatedArtifactTypeBuilder signs = RelatedArtifactTypeBuilder._(
    valueString: 'signs',
    valueEnum: RelatedArtifactTypeBuilderEnum.signs,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Signs',
    ),
  );

  /// similar_to
  static RelatedArtifactTypeBuilder similarTo = RelatedArtifactTypeBuilder._(
    valueString: 'similar-to',
    valueEnum: RelatedArtifactTypeBuilderEnum.similarTo,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Similar To',
    ),
  );

  /// supports
  static RelatedArtifactTypeBuilder supports = RelatedArtifactTypeBuilder._(
    valueString: 'supports',
    valueEnum: RelatedArtifactTypeBuilderEnum.supports,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Supports',
    ),
  );

  /// supported_with
  static RelatedArtifactTypeBuilder supportedWith =
      RelatedArtifactTypeBuilder._(
    valueString: 'supported-with',
    valueEnum: RelatedArtifactTypeBuilderEnum.supportedWith,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Supported With',
    ),
  );

  /// transforms
  static RelatedArtifactTypeBuilder transforms = RelatedArtifactTypeBuilder._(
    valueString: 'transforms',
    valueEnum: RelatedArtifactTypeBuilderEnum.transforms,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Transforms',
    ),
  );

  /// transformed_into
  static RelatedArtifactTypeBuilder transformedInto =
      RelatedArtifactTypeBuilder._(
    valueString: 'transformed-into',
    valueEnum: RelatedArtifactTypeBuilderEnum.transformedInto,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Transformed Into',
    ),
  );

  /// transformed_with
  static RelatedArtifactTypeBuilder transformedWith =
      RelatedArtifactTypeBuilder._(
    valueString: 'transformed-with',
    valueEnum: RelatedArtifactTypeBuilderEnum.transformedWith,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Transformed With',
    ),
  );

  /// documents
  static RelatedArtifactTypeBuilder documents = RelatedArtifactTypeBuilder._(
    valueString: 'documents',
    valueEnum: RelatedArtifactTypeBuilderEnum.documents,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Documents',
    ),
  );

  /// specification_of
  static RelatedArtifactTypeBuilder specificationOf =
      RelatedArtifactTypeBuilder._(
    valueString: 'specification-of',
    valueEnum: RelatedArtifactTypeBuilderEnum.specificationOf,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Specification Of',
    ),
  );

  /// created_with
  static RelatedArtifactTypeBuilder createdWith = RelatedArtifactTypeBuilder._(
    valueString: 'created-with',
    valueEnum: RelatedArtifactTypeBuilderEnum.createdWith,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Created With',
    ),
  );

  /// cite_as
  static RelatedArtifactTypeBuilder citeAs = RelatedArtifactTypeBuilder._(
    valueString: 'cite-as',
    valueEnum: RelatedArtifactTypeBuilderEnum.citeAs,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Cite As',
    ),
  );

  /// For instances where an Element is present but not value
  static RelatedArtifactTypeBuilder elementOnly = RelatedArtifactTypeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<RelatedArtifactTypeBuilder> values = [
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
  ];

  /// Returns the enum value with an element attached
  RelatedArtifactTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return RelatedArtifactTypeBuilder._(
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
