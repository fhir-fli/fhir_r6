// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for RelatedArtifactType
enum RelatedArtifactTypeEnum {
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
      case RelatedArtifactTypeEnum.documentation:
        return 'documentation';
      case RelatedArtifactTypeEnum.justification:
        return 'justification';
      case RelatedArtifactTypeEnum.citation:
        return 'citation';
      case RelatedArtifactTypeEnum.predecessor:
        return 'predecessor';
      case RelatedArtifactTypeEnum.successor:
        return 'successor';
      case RelatedArtifactTypeEnum.derivedFrom:
        return 'derived-from';
      case RelatedArtifactTypeEnum.dependsOn:
        return 'depends-on';
      case RelatedArtifactTypeEnum.composedOf:
        return 'composed-of';
      case RelatedArtifactTypeEnum.partOf:
        return 'part-of';
      case RelatedArtifactTypeEnum.amends:
        return 'amends';
      case RelatedArtifactTypeEnum.amendedWith:
        return 'amended-with';
      case RelatedArtifactTypeEnum.appends:
        return 'appends';
      case RelatedArtifactTypeEnum.appendedWith:
        return 'appended-with';
      case RelatedArtifactTypeEnum.cites:
        return 'cites';
      case RelatedArtifactTypeEnum.citedBy:
        return 'cited-by';
      case RelatedArtifactTypeEnum.commentsOn:
        return 'comments-on';
      case RelatedArtifactTypeEnum.commentIn:
        return 'comment-in';
      case RelatedArtifactTypeEnum.contains_:
        return 'contains';
      case RelatedArtifactTypeEnum.containedIn:
        return 'contained-in';
      case RelatedArtifactTypeEnum.corrects:
        return 'corrects';
      case RelatedArtifactTypeEnum.correctionIn:
        return 'correction-in';
      case RelatedArtifactTypeEnum.replaces:
        return 'replaces';
      case RelatedArtifactTypeEnum.replacedWith:
        return 'replaced-with';
      case RelatedArtifactTypeEnum.retracts:
        return 'retracts';
      case RelatedArtifactTypeEnum.retractedBy:
        return 'retracted-by';
      case RelatedArtifactTypeEnum.signs:
        return 'signs';
      case RelatedArtifactTypeEnum.similarTo:
        return 'similar-to';
      case RelatedArtifactTypeEnum.supports:
        return 'supports';
      case RelatedArtifactTypeEnum.supportedWith:
        return 'supported-with';
      case RelatedArtifactTypeEnum.transforms:
        return 'transforms';
      case RelatedArtifactTypeEnum.transformedInto:
        return 'transformed-into';
      case RelatedArtifactTypeEnum.transformedWith:
        return 'transformed-with';
      case RelatedArtifactTypeEnum.documents:
        return 'documents';
      case RelatedArtifactTypeEnum.specificationOf:
        return 'specification-of';
      case RelatedArtifactTypeEnum.createdWith:
        return 'created-with';
      case RelatedArtifactTypeEnum.citeAs:
        return 'cite-as';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static RelatedArtifactTypeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return RelatedArtifactTypeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static RelatedArtifactTypeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'documentation':
        return RelatedArtifactTypeEnum.documentation;
      case 'justification':
        return RelatedArtifactTypeEnum.justification;
      case 'citation':
        return RelatedArtifactTypeEnum.citation;
      case 'predecessor':
        return RelatedArtifactTypeEnum.predecessor;
      case 'successor':
        return RelatedArtifactTypeEnum.successor;
      case 'derived-from':
        return RelatedArtifactTypeEnum.derivedFrom;
      case 'depends-on':
        return RelatedArtifactTypeEnum.dependsOn;
      case 'composed-of':
        return RelatedArtifactTypeEnum.composedOf;
      case 'part-of':
        return RelatedArtifactTypeEnum.partOf;
      case 'amends':
        return RelatedArtifactTypeEnum.amends;
      case 'amended-with':
        return RelatedArtifactTypeEnum.amendedWith;
      case 'appends':
        return RelatedArtifactTypeEnum.appends;
      case 'appended-with':
        return RelatedArtifactTypeEnum.appendedWith;
      case 'cites':
        return RelatedArtifactTypeEnum.cites;
      case 'cited-by':
        return RelatedArtifactTypeEnum.citedBy;
      case 'comments-on':
        return RelatedArtifactTypeEnum.commentsOn;
      case 'comment-in':
        return RelatedArtifactTypeEnum.commentIn;
      case 'contains':
        return RelatedArtifactTypeEnum.contains_;
      case 'contained-in':
        return RelatedArtifactTypeEnum.containedIn;
      case 'corrects':
        return RelatedArtifactTypeEnum.corrects;
      case 'correction-in':
        return RelatedArtifactTypeEnum.correctionIn;
      case 'replaces':
        return RelatedArtifactTypeEnum.replaces;
      case 'replaced-with':
        return RelatedArtifactTypeEnum.replacedWith;
      case 'retracts':
        return RelatedArtifactTypeEnum.retracts;
      case 'retracted-by':
        return RelatedArtifactTypeEnum.retractedBy;
      case 'signs':
        return RelatedArtifactTypeEnum.signs;
      case 'similar-to':
        return RelatedArtifactTypeEnum.similarTo;
      case 'supports':
        return RelatedArtifactTypeEnum.supports;
      case 'supported-with':
        return RelatedArtifactTypeEnum.supportedWith;
      case 'transforms':
        return RelatedArtifactTypeEnum.transforms;
      case 'transformed-into':
        return RelatedArtifactTypeEnum.transformedInto;
      case 'transformed-with':
        return RelatedArtifactTypeEnum.transformedWith;
      case 'documents':
        return RelatedArtifactTypeEnum.documents;
      case 'specification-of':
        return RelatedArtifactTypeEnum.specificationOf;
      case 'created-with':
        return RelatedArtifactTypeEnum.createdWith;
      case 'cite-as':
        return RelatedArtifactTypeEnum.citeAs;
    }
    return null;
  }
}

/// The type of relationship to the related artifact.
class RelatedArtifactType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const RelatedArtifactType._({
    required super.valueString,
    this.valueEnum,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory RelatedArtifactType(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    final valueEnum = RelatedArtifactTypeEnum.fromString(valueString);
    return RelatedArtifactType._(
      valueString: valueString,
      valueEnum: valueEnum,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
    );
  }

  /// Factory constructor to create [RelatedArtifactType]
  /// from JSON.
  factory RelatedArtifactType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = RelatedArtifactTypeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RelatedArtifactType._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'RelatedArtifactType cannot be constructed from JSON.',
      );
    }
    return RelatedArtifactType._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for RelatedArtifactType
  final RelatedArtifactTypeEnum? valueEnum;

  /// documentation
  static const RelatedArtifactType documentation = RelatedArtifactType._(
    valueString: 'documentation',
    valueEnum: RelatedArtifactTypeEnum.documentation,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Documentation',
    ),
  );

  /// justification
  static const RelatedArtifactType justification = RelatedArtifactType._(
    valueString: 'justification',
    valueEnum: RelatedArtifactTypeEnum.justification,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Justification',
    ),
  );

  /// citation
  static const RelatedArtifactType citation = RelatedArtifactType._(
    valueString: 'citation',
    valueEnum: RelatedArtifactTypeEnum.citation,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Citation',
    ),
  );

  /// predecessor
  static const RelatedArtifactType predecessor = RelatedArtifactType._(
    valueString: 'predecessor',
    valueEnum: RelatedArtifactTypeEnum.predecessor,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Predecessor',
    ),
  );

  /// successor
  static const RelatedArtifactType successor = RelatedArtifactType._(
    valueString: 'successor',
    valueEnum: RelatedArtifactTypeEnum.successor,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Successor',
    ),
  );

  /// derived_from
  static const RelatedArtifactType derivedFrom = RelatedArtifactType._(
    valueString: 'derived-from',
    valueEnum: RelatedArtifactTypeEnum.derivedFrom,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Derived From',
    ),
  );

  /// depends_on
  static const RelatedArtifactType dependsOn = RelatedArtifactType._(
    valueString: 'depends-on',
    valueEnum: RelatedArtifactTypeEnum.dependsOn,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Depends On',
    ),
  );

  /// composed_of
  static const RelatedArtifactType composedOf = RelatedArtifactType._(
    valueString: 'composed-of',
    valueEnum: RelatedArtifactTypeEnum.composedOf,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Composed Of',
    ),
  );

  /// part_of
  static const RelatedArtifactType partOf = RelatedArtifactType._(
    valueString: 'part-of',
    valueEnum: RelatedArtifactTypeEnum.partOf,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Part Of',
    ),
  );

  /// amends
  static const RelatedArtifactType amends = RelatedArtifactType._(
    valueString: 'amends',
    valueEnum: RelatedArtifactTypeEnum.amends,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Amends',
    ),
  );

  /// amended_with
  static const RelatedArtifactType amendedWith = RelatedArtifactType._(
    valueString: 'amended-with',
    valueEnum: RelatedArtifactTypeEnum.amendedWith,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Amended With',
    ),
  );

  /// appends
  static const RelatedArtifactType appends = RelatedArtifactType._(
    valueString: 'appends',
    valueEnum: RelatedArtifactTypeEnum.appends,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Appends',
    ),
  );

  /// appended_with
  static const RelatedArtifactType appendedWith = RelatedArtifactType._(
    valueString: 'appended-with',
    valueEnum: RelatedArtifactTypeEnum.appendedWith,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Appended With',
    ),
  );

  /// cites
  static const RelatedArtifactType cites = RelatedArtifactType._(
    valueString: 'cites',
    valueEnum: RelatedArtifactTypeEnum.cites,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Cites',
    ),
  );

  /// cited_by
  static const RelatedArtifactType citedBy = RelatedArtifactType._(
    valueString: 'cited-by',
    valueEnum: RelatedArtifactTypeEnum.citedBy,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Cited By',
    ),
  );

  /// comments_on
  static const RelatedArtifactType commentsOn = RelatedArtifactType._(
    valueString: 'comments-on',
    valueEnum: RelatedArtifactTypeEnum.commentsOn,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Is Comment On',
    ),
  );

  /// comment_in
  static const RelatedArtifactType commentIn = RelatedArtifactType._(
    valueString: 'comment-in',
    valueEnum: RelatedArtifactTypeEnum.commentIn,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Has Comment In',
    ),
  );

  /// contains_
  static const RelatedArtifactType contains_ = RelatedArtifactType._(
    valueString: 'contains',
    valueEnum: RelatedArtifactTypeEnum.contains_,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Contains',
    ),
  );

  /// contained_in
  static const RelatedArtifactType containedIn = RelatedArtifactType._(
    valueString: 'contained-in',
    valueEnum: RelatedArtifactTypeEnum.containedIn,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Contained In',
    ),
  );

  /// corrects
  static const RelatedArtifactType corrects = RelatedArtifactType._(
    valueString: 'corrects',
    valueEnum: RelatedArtifactTypeEnum.corrects,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Corrects',
    ),
  );

  /// correction_in
  static const RelatedArtifactType correctionIn = RelatedArtifactType._(
    valueString: 'correction-in',
    valueEnum: RelatedArtifactTypeEnum.correctionIn,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Correction In',
    ),
  );

  /// replaces
  static const RelatedArtifactType replaces = RelatedArtifactType._(
    valueString: 'replaces',
    valueEnum: RelatedArtifactTypeEnum.replaces,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Replaces',
    ),
  );

  /// replaced_with
  static const RelatedArtifactType replacedWith = RelatedArtifactType._(
    valueString: 'replaced-with',
    valueEnum: RelatedArtifactTypeEnum.replacedWith,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Replaced With',
    ),
  );

  /// retracts
  static const RelatedArtifactType retracts = RelatedArtifactType._(
    valueString: 'retracts',
    valueEnum: RelatedArtifactTypeEnum.retracts,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Retracts',
    ),
  );

  /// retracted_by
  static const RelatedArtifactType retractedBy = RelatedArtifactType._(
    valueString: 'retracted-by',
    valueEnum: RelatedArtifactTypeEnum.retractedBy,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Retracted By',
    ),
  );

  /// signs
  static const RelatedArtifactType signs = RelatedArtifactType._(
    valueString: 'signs',
    valueEnum: RelatedArtifactTypeEnum.signs,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Signs',
    ),
  );

  /// similar_to
  static const RelatedArtifactType similarTo = RelatedArtifactType._(
    valueString: 'similar-to',
    valueEnum: RelatedArtifactTypeEnum.similarTo,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Similar To',
    ),
  );

  /// supports
  static const RelatedArtifactType supports = RelatedArtifactType._(
    valueString: 'supports',
    valueEnum: RelatedArtifactTypeEnum.supports,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Supports',
    ),
  );

  /// supported_with
  static const RelatedArtifactType supportedWith = RelatedArtifactType._(
    valueString: 'supported-with',
    valueEnum: RelatedArtifactTypeEnum.supportedWith,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Supported With',
    ),
  );

  /// transforms
  static const RelatedArtifactType transforms = RelatedArtifactType._(
    valueString: 'transforms',
    valueEnum: RelatedArtifactTypeEnum.transforms,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Transforms',
    ),
  );

  /// transformed_into
  static const RelatedArtifactType transformedInto = RelatedArtifactType._(
    valueString: 'transformed-into',
    valueEnum: RelatedArtifactTypeEnum.transformedInto,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Transformed Into',
    ),
  );

  /// transformed_with
  static const RelatedArtifactType transformedWith = RelatedArtifactType._(
    valueString: 'transformed-with',
    valueEnum: RelatedArtifactTypeEnum.transformedWith,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Transformed With',
    ),
  );

  /// documents
  static const RelatedArtifactType documents = RelatedArtifactType._(
    valueString: 'documents',
    valueEnum: RelatedArtifactTypeEnum.documents,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Documents',
    ),
  );

  /// specification_of
  static const RelatedArtifactType specificationOf = RelatedArtifactType._(
    valueString: 'specification-of',
    valueEnum: RelatedArtifactTypeEnum.specificationOf,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Specification Of',
    ),
  );

  /// created_with
  static const RelatedArtifactType createdWith = RelatedArtifactType._(
    valueString: 'created-with',
    valueEnum: RelatedArtifactTypeEnum.createdWith,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Created With',
    ),
  );

  /// cite_as
  static const RelatedArtifactType citeAs = RelatedArtifactType._(
    valueString: 'cite-as',
    valueEnum: RelatedArtifactTypeEnum.citeAs,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Cite As',
    ),
  );

  /// List of all enum-like values
  static final List<RelatedArtifactType> values = [
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
  RelatedArtifactType withElement(Element? newElement) {
    return RelatedArtifactType._(
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

  @override
  RelatedArtifactType clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  RelatedArtifactTypeCopyWithImpl<RelatedArtifactType> get copyWith =>
      RelatedArtifactTypeCopyWithImpl<RelatedArtifactType>(
        this,
        (v) => v as RelatedArtifactType,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class RelatedArtifactTypeCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  RelatedArtifactTypeCopyWithImpl(super._value, super._then);

  @override
  T call({
    Object? newValue = fhirSentinel,
    Object? element = fhirSentinel,
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    if (!identical(newValue, fhirSentinel) && newValue is! String?) {
      throw ArgumentError(
        'newValue must be a String or null, but found ${newValue.runtimeType}',
        'newValue',
      );
    }
    return _then(
      RelatedArtifactType(
        identical(newValue, fhirSentinel)
            ? _value.valueString
            : newValue as String?,
        element: identical(element, fhirSentinel)
            ? _value.element
            : element as Element?,
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}
