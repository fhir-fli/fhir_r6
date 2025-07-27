// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for RelatedArtifactTypeExpanded
enum RelatedArtifactTypeExpandedEnum {
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
      case RelatedArtifactTypeExpandedEnum.documentation:
        return 'documentation';
      case RelatedArtifactTypeExpandedEnum.justification:
        return 'justification';
      case RelatedArtifactTypeExpandedEnum.citation:
        return 'citation';
      case RelatedArtifactTypeExpandedEnum.predecessor:
        return 'predecessor';
      case RelatedArtifactTypeExpandedEnum.successor:
        return 'successor';
      case RelatedArtifactTypeExpandedEnum.derivedFrom:
        return 'derived-from';
      case RelatedArtifactTypeExpandedEnum.dependsOn:
        return 'depends-on';
      case RelatedArtifactTypeExpandedEnum.composedOf:
        return 'composed-of';
      case RelatedArtifactTypeExpandedEnum.partOf:
        return 'part-of';
      case RelatedArtifactTypeExpandedEnum.amends:
        return 'amends';
      case RelatedArtifactTypeExpandedEnum.amendedWith:
        return 'amended-with';
      case RelatedArtifactTypeExpandedEnum.appends:
        return 'appends';
      case RelatedArtifactTypeExpandedEnum.appendedWith:
        return 'appended-with';
      case RelatedArtifactTypeExpandedEnum.cites:
        return 'cites';
      case RelatedArtifactTypeExpandedEnum.citedBy:
        return 'cited-by';
      case RelatedArtifactTypeExpandedEnum.commentsOn:
        return 'comments-on';
      case RelatedArtifactTypeExpandedEnum.commentIn:
        return 'comment-in';
      case RelatedArtifactTypeExpandedEnum.contains_:
        return 'contains';
      case RelatedArtifactTypeExpandedEnum.containedIn:
        return 'contained-in';
      case RelatedArtifactTypeExpandedEnum.corrects:
        return 'corrects';
      case RelatedArtifactTypeExpandedEnum.correctionIn:
        return 'correction-in';
      case RelatedArtifactTypeExpandedEnum.replaces:
        return 'replaces';
      case RelatedArtifactTypeExpandedEnum.replacedWith:
        return 'replaced-with';
      case RelatedArtifactTypeExpandedEnum.retracts:
        return 'retracts';
      case RelatedArtifactTypeExpandedEnum.retractedBy:
        return 'retracted-by';
      case RelatedArtifactTypeExpandedEnum.signs:
        return 'signs';
      case RelatedArtifactTypeExpandedEnum.similarTo:
        return 'similar-to';
      case RelatedArtifactTypeExpandedEnum.supports:
        return 'supports';
      case RelatedArtifactTypeExpandedEnum.supportedWith:
        return 'supported-with';
      case RelatedArtifactTypeExpandedEnum.transforms:
        return 'transforms';
      case RelatedArtifactTypeExpandedEnum.transformedInto:
        return 'transformed-into';
      case RelatedArtifactTypeExpandedEnum.transformedWith:
        return 'transformed-with';
      case RelatedArtifactTypeExpandedEnum.documents:
        return 'documents';
      case RelatedArtifactTypeExpandedEnum.specificationOf:
        return 'specification-of';
      case RelatedArtifactTypeExpandedEnum.createdWith:
        return 'created-with';
      case RelatedArtifactTypeExpandedEnum.citeAs:
        return 'cite-as';
      case RelatedArtifactTypeExpandedEnum.reprint:
        return 'reprint';
      case RelatedArtifactTypeExpandedEnum.reprintOf:
        return 'reprint-of';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static RelatedArtifactTypeExpandedEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return RelatedArtifactTypeExpandedEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static RelatedArtifactTypeExpandedEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'documentation':
        return RelatedArtifactTypeExpandedEnum.documentation;
      case 'justification':
        return RelatedArtifactTypeExpandedEnum.justification;
      case 'citation':
        return RelatedArtifactTypeExpandedEnum.citation;
      case 'predecessor':
        return RelatedArtifactTypeExpandedEnum.predecessor;
      case 'successor':
        return RelatedArtifactTypeExpandedEnum.successor;
      case 'derived-from':
        return RelatedArtifactTypeExpandedEnum.derivedFrom;
      case 'depends-on':
        return RelatedArtifactTypeExpandedEnum.dependsOn;
      case 'composed-of':
        return RelatedArtifactTypeExpandedEnum.composedOf;
      case 'part-of':
        return RelatedArtifactTypeExpandedEnum.partOf;
      case 'amends':
        return RelatedArtifactTypeExpandedEnum.amends;
      case 'amended-with':
        return RelatedArtifactTypeExpandedEnum.amendedWith;
      case 'appends':
        return RelatedArtifactTypeExpandedEnum.appends;
      case 'appended-with':
        return RelatedArtifactTypeExpandedEnum.appendedWith;
      case 'cites':
        return RelatedArtifactTypeExpandedEnum.cites;
      case 'cited-by':
        return RelatedArtifactTypeExpandedEnum.citedBy;
      case 'comments-on':
        return RelatedArtifactTypeExpandedEnum.commentsOn;
      case 'comment-in':
        return RelatedArtifactTypeExpandedEnum.commentIn;
      case 'contains':
        return RelatedArtifactTypeExpandedEnum.contains_;
      case 'contained-in':
        return RelatedArtifactTypeExpandedEnum.containedIn;
      case 'corrects':
        return RelatedArtifactTypeExpandedEnum.corrects;
      case 'correction-in':
        return RelatedArtifactTypeExpandedEnum.correctionIn;
      case 'replaces':
        return RelatedArtifactTypeExpandedEnum.replaces;
      case 'replaced-with':
        return RelatedArtifactTypeExpandedEnum.replacedWith;
      case 'retracts':
        return RelatedArtifactTypeExpandedEnum.retracts;
      case 'retracted-by':
        return RelatedArtifactTypeExpandedEnum.retractedBy;
      case 'signs':
        return RelatedArtifactTypeExpandedEnum.signs;
      case 'similar-to':
        return RelatedArtifactTypeExpandedEnum.similarTo;
      case 'supports':
        return RelatedArtifactTypeExpandedEnum.supports;
      case 'supported-with':
        return RelatedArtifactTypeExpandedEnum.supportedWith;
      case 'transforms':
        return RelatedArtifactTypeExpandedEnum.transforms;
      case 'transformed-into':
        return RelatedArtifactTypeExpandedEnum.transformedInto;
      case 'transformed-with':
        return RelatedArtifactTypeExpandedEnum.transformedWith;
      case 'documents':
        return RelatedArtifactTypeExpandedEnum.documents;
      case 'specification-of':
        return RelatedArtifactTypeExpandedEnum.specificationOf;
      case 'created-with':
        return RelatedArtifactTypeExpandedEnum.createdWith;
      case 'cite-as':
        return RelatedArtifactTypeExpandedEnum.citeAs;
      case 'reprint':
        return RelatedArtifactTypeExpandedEnum.reprint;
      case 'reprint-of':
        return RelatedArtifactTypeExpandedEnum.reprintOf;
    }
    return null;
  }
}

/// The type of relationship to the cited artifact.
class RelatedArtifactTypeExpanded extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const RelatedArtifactTypeExpanded._({
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
  factory RelatedArtifactTypeExpanded(
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
    final valueEnum = RelatedArtifactTypeExpandedEnum.fromString(valueString);
    return RelatedArtifactTypeExpanded._(
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

  /// Factory constructor to create [RelatedArtifactTypeExpanded]
  /// from JSON.
  factory RelatedArtifactTypeExpanded.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = RelatedArtifactTypeExpandedEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RelatedArtifactTypeExpanded._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'RelatedArtifactTypeExpanded cannot be constructed from JSON.',
      );
    }
    return RelatedArtifactTypeExpanded._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for RelatedArtifactTypeExpanded
  final RelatedArtifactTypeExpandedEnum? valueEnum;

  /// documentation
  static const RelatedArtifactTypeExpanded documentation =
      RelatedArtifactTypeExpanded._(
    valueString: 'documentation',
    valueEnum: RelatedArtifactTypeExpandedEnum.documentation,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Documentation',
    ),
  );

  /// justification
  static const RelatedArtifactTypeExpanded justification =
      RelatedArtifactTypeExpanded._(
    valueString: 'justification',
    valueEnum: RelatedArtifactTypeExpandedEnum.justification,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Justification',
    ),
  );

  /// citation
  static const RelatedArtifactTypeExpanded citation =
      RelatedArtifactTypeExpanded._(
    valueString: 'citation',
    valueEnum: RelatedArtifactTypeExpandedEnum.citation,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Citation',
    ),
  );

  /// predecessor
  static const RelatedArtifactTypeExpanded predecessor =
      RelatedArtifactTypeExpanded._(
    valueString: 'predecessor',
    valueEnum: RelatedArtifactTypeExpandedEnum.predecessor,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Predecessor',
    ),
  );

  /// successor
  static const RelatedArtifactTypeExpanded successor =
      RelatedArtifactTypeExpanded._(
    valueString: 'successor',
    valueEnum: RelatedArtifactTypeExpandedEnum.successor,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Successor',
    ),
  );

  /// derived_from
  static const RelatedArtifactTypeExpanded derivedFrom =
      RelatedArtifactTypeExpanded._(
    valueString: 'derived-from',
    valueEnum: RelatedArtifactTypeExpandedEnum.derivedFrom,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Derived From',
    ),
  );

  /// depends_on
  static const RelatedArtifactTypeExpanded dependsOn =
      RelatedArtifactTypeExpanded._(
    valueString: 'depends-on',
    valueEnum: RelatedArtifactTypeExpandedEnum.dependsOn,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Depends On',
    ),
  );

  /// composed_of
  static const RelatedArtifactTypeExpanded composedOf =
      RelatedArtifactTypeExpanded._(
    valueString: 'composed-of',
    valueEnum: RelatedArtifactTypeExpandedEnum.composedOf,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Composed Of',
    ),
  );

  /// part_of
  static const RelatedArtifactTypeExpanded partOf =
      RelatedArtifactTypeExpanded._(
    valueString: 'part-of',
    valueEnum: RelatedArtifactTypeExpandedEnum.partOf,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Part Of',
    ),
  );

  /// amends
  static const RelatedArtifactTypeExpanded amends =
      RelatedArtifactTypeExpanded._(
    valueString: 'amends',
    valueEnum: RelatedArtifactTypeExpandedEnum.amends,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Amends',
    ),
  );

  /// amended_with
  static const RelatedArtifactTypeExpanded amendedWith =
      RelatedArtifactTypeExpanded._(
    valueString: 'amended-with',
    valueEnum: RelatedArtifactTypeExpandedEnum.amendedWith,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Amended With',
    ),
  );

  /// appends
  static const RelatedArtifactTypeExpanded appends =
      RelatedArtifactTypeExpanded._(
    valueString: 'appends',
    valueEnum: RelatedArtifactTypeExpandedEnum.appends,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Appends',
    ),
  );

  /// appended_with
  static const RelatedArtifactTypeExpanded appendedWith =
      RelatedArtifactTypeExpanded._(
    valueString: 'appended-with',
    valueEnum: RelatedArtifactTypeExpandedEnum.appendedWith,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Appended With',
    ),
  );

  /// cites
  static const RelatedArtifactTypeExpanded cites =
      RelatedArtifactTypeExpanded._(
    valueString: 'cites',
    valueEnum: RelatedArtifactTypeExpandedEnum.cites,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Cites',
    ),
  );

  /// cited_by
  static const RelatedArtifactTypeExpanded citedBy =
      RelatedArtifactTypeExpanded._(
    valueString: 'cited-by',
    valueEnum: RelatedArtifactTypeExpandedEnum.citedBy,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Cited By',
    ),
  );

  /// comments_on
  static const RelatedArtifactTypeExpanded commentsOn =
      RelatedArtifactTypeExpanded._(
    valueString: 'comments-on',
    valueEnum: RelatedArtifactTypeExpandedEnum.commentsOn,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Is Comment On',
    ),
  );

  /// comment_in
  static const RelatedArtifactTypeExpanded commentIn =
      RelatedArtifactTypeExpanded._(
    valueString: 'comment-in',
    valueEnum: RelatedArtifactTypeExpandedEnum.commentIn,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Has Comment In',
    ),
  );

  /// contains_
  static const RelatedArtifactTypeExpanded contains_ =
      RelatedArtifactTypeExpanded._(
    valueString: 'contains',
    valueEnum: RelatedArtifactTypeExpandedEnum.contains_,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Contains',
    ),
  );

  /// contained_in
  static const RelatedArtifactTypeExpanded containedIn =
      RelatedArtifactTypeExpanded._(
    valueString: 'contained-in',
    valueEnum: RelatedArtifactTypeExpandedEnum.containedIn,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Contained In',
    ),
  );

  /// corrects
  static const RelatedArtifactTypeExpanded corrects =
      RelatedArtifactTypeExpanded._(
    valueString: 'corrects',
    valueEnum: RelatedArtifactTypeExpandedEnum.corrects,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Corrects',
    ),
  );

  /// correction_in
  static const RelatedArtifactTypeExpanded correctionIn =
      RelatedArtifactTypeExpanded._(
    valueString: 'correction-in',
    valueEnum: RelatedArtifactTypeExpandedEnum.correctionIn,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Correction In',
    ),
  );

  /// replaces
  static const RelatedArtifactTypeExpanded replaces =
      RelatedArtifactTypeExpanded._(
    valueString: 'replaces',
    valueEnum: RelatedArtifactTypeExpandedEnum.replaces,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Replaces',
    ),
  );

  /// replaced_with
  static const RelatedArtifactTypeExpanded replacedWith =
      RelatedArtifactTypeExpanded._(
    valueString: 'replaced-with',
    valueEnum: RelatedArtifactTypeExpandedEnum.replacedWith,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Replaced With',
    ),
  );

  /// retracts
  static const RelatedArtifactTypeExpanded retracts =
      RelatedArtifactTypeExpanded._(
    valueString: 'retracts',
    valueEnum: RelatedArtifactTypeExpandedEnum.retracts,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Retracts',
    ),
  );

  /// retracted_by
  static const RelatedArtifactTypeExpanded retractedBy =
      RelatedArtifactTypeExpanded._(
    valueString: 'retracted-by',
    valueEnum: RelatedArtifactTypeExpandedEnum.retractedBy,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Retracted By',
    ),
  );

  /// signs
  static const RelatedArtifactTypeExpanded signs =
      RelatedArtifactTypeExpanded._(
    valueString: 'signs',
    valueEnum: RelatedArtifactTypeExpandedEnum.signs,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Signs',
    ),
  );

  /// similar_to
  static const RelatedArtifactTypeExpanded similarTo =
      RelatedArtifactTypeExpanded._(
    valueString: 'similar-to',
    valueEnum: RelatedArtifactTypeExpandedEnum.similarTo,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Similar To',
    ),
  );

  /// supports
  static const RelatedArtifactTypeExpanded supports =
      RelatedArtifactTypeExpanded._(
    valueString: 'supports',
    valueEnum: RelatedArtifactTypeExpandedEnum.supports,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Supports',
    ),
  );

  /// supported_with
  static const RelatedArtifactTypeExpanded supportedWith =
      RelatedArtifactTypeExpanded._(
    valueString: 'supported-with',
    valueEnum: RelatedArtifactTypeExpandedEnum.supportedWith,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Supported With',
    ),
  );

  /// transforms
  static const RelatedArtifactTypeExpanded transforms =
      RelatedArtifactTypeExpanded._(
    valueString: 'transforms',
    valueEnum: RelatedArtifactTypeExpandedEnum.transforms,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Transforms',
    ),
  );

  /// transformed_into
  static const RelatedArtifactTypeExpanded transformedInto =
      RelatedArtifactTypeExpanded._(
    valueString: 'transformed-into',
    valueEnum: RelatedArtifactTypeExpandedEnum.transformedInto,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Transformed Into',
    ),
  );

  /// transformed_with
  static const RelatedArtifactTypeExpanded transformedWith =
      RelatedArtifactTypeExpanded._(
    valueString: 'transformed-with',
    valueEnum: RelatedArtifactTypeExpandedEnum.transformedWith,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Transformed With',
    ),
  );

  /// documents
  static const RelatedArtifactTypeExpanded documents =
      RelatedArtifactTypeExpanded._(
    valueString: 'documents',
    valueEnum: RelatedArtifactTypeExpandedEnum.documents,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Documents',
    ),
  );

  /// specification_of
  static const RelatedArtifactTypeExpanded specificationOf =
      RelatedArtifactTypeExpanded._(
    valueString: 'specification-of',
    valueEnum: RelatedArtifactTypeExpandedEnum.specificationOf,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Specification Of',
    ),
  );

  /// created_with
  static const RelatedArtifactTypeExpanded createdWith =
      RelatedArtifactTypeExpanded._(
    valueString: 'created-with',
    valueEnum: RelatedArtifactTypeExpandedEnum.createdWith,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Created With',
    ),
  );

  /// cite_as
  static const RelatedArtifactTypeExpanded citeAs =
      RelatedArtifactTypeExpanded._(
    valueString: 'cite-as',
    valueEnum: RelatedArtifactTypeExpandedEnum.citeAs,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Cite As',
    ),
  );

  /// reprint
  static const RelatedArtifactTypeExpanded reprint =
      RelatedArtifactTypeExpanded._(
    valueString: 'reprint',
    valueEnum: RelatedArtifactTypeExpandedEnum.reprint,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Reprint',
    ),
  );

  /// reprint_of
  static const RelatedArtifactTypeExpanded reprintOf =
      RelatedArtifactTypeExpanded._(
    valueString: 'reprint-of',
    valueEnum: RelatedArtifactTypeExpandedEnum.reprintOf,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type-all',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Reprint Of',
    ),
  );

  /// List of all enum-like values
  static final List<RelatedArtifactTypeExpanded> values = [
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
  RelatedArtifactTypeExpanded withElement(Element? newElement) {
    return RelatedArtifactTypeExpanded._(
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
  RelatedArtifactTypeExpanded clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  RelatedArtifactTypeExpandedCopyWithImpl<RelatedArtifactTypeExpanded>
      get copyWith =>
          RelatedArtifactTypeExpandedCopyWithImpl<RelatedArtifactTypeExpanded>(
            this,
            (v) => v as RelatedArtifactTypeExpanded,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class RelatedArtifactTypeExpandedCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  RelatedArtifactTypeExpandedCopyWithImpl(super._value, super._then);

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
      RelatedArtifactTypeExpanded(
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
