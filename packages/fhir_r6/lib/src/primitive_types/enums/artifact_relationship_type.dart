// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ArtifactRelationshipType
enum ArtifactRelationshipTypeEnum {
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
      case ArtifactRelationshipTypeEnum.documentation:
        return 'documentation';
      case ArtifactRelationshipTypeEnum.justification:
        return 'justification';
      case ArtifactRelationshipTypeEnum.predecessor:
        return 'predecessor';
      case ArtifactRelationshipTypeEnum.successor:
        return 'successor';
      case ArtifactRelationshipTypeEnum.derivedFrom:
        return 'derived-from';
      case ArtifactRelationshipTypeEnum.dependsOn:
        return 'depends-on';
      case ArtifactRelationshipTypeEnum.composedOf:
        return 'composed-of';
      case ArtifactRelationshipTypeEnum.partOf:
        return 'part-of';
      case ArtifactRelationshipTypeEnum.amends:
        return 'amends';
      case ArtifactRelationshipTypeEnum.amendedWith:
        return 'amended-with';
      case ArtifactRelationshipTypeEnum.appends:
        return 'appends';
      case ArtifactRelationshipTypeEnum.appendedWith:
        return 'appended-with';
      case ArtifactRelationshipTypeEnum.cites:
        return 'cites';
      case ArtifactRelationshipTypeEnum.citedBy:
        return 'cited-by';
      case ArtifactRelationshipTypeEnum.commentsOn:
        return 'comments-on';
      case ArtifactRelationshipTypeEnum.commentIn:
        return 'comment-in';
      case ArtifactRelationshipTypeEnum.contains_:
        return 'contains';
      case ArtifactRelationshipTypeEnum.containedIn:
        return 'contained-in';
      case ArtifactRelationshipTypeEnum.corrects:
        return 'corrects';
      case ArtifactRelationshipTypeEnum.correctionIn:
        return 'correction-in';
      case ArtifactRelationshipTypeEnum.replaces:
        return 'replaces';
      case ArtifactRelationshipTypeEnum.replacedWith:
        return 'replaced-with';
      case ArtifactRelationshipTypeEnum.retracts:
        return 'retracts';
      case ArtifactRelationshipTypeEnum.retractedBy:
        return 'retracted-by';
      case ArtifactRelationshipTypeEnum.signs:
        return 'signs';
      case ArtifactRelationshipTypeEnum.similarTo:
        return 'similar-to';
      case ArtifactRelationshipTypeEnum.supports:
        return 'supports';
      case ArtifactRelationshipTypeEnum.supportedWith:
        return 'supported-with';
      case ArtifactRelationshipTypeEnum.transforms:
        return 'transforms';
      case ArtifactRelationshipTypeEnum.transformedInto:
        return 'transformed-into';
      case ArtifactRelationshipTypeEnum.transformedWith:
        return 'transformed-with';
      case ArtifactRelationshipTypeEnum.specificationOf:
        return 'specification-of';
      case ArtifactRelationshipTypeEnum.createdWith:
        return 'created-with';
      case ArtifactRelationshipTypeEnum.citeAs:
        return 'cite-as';
      case ArtifactRelationshipTypeEnum.summarizes:
        return 'summarizes';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ArtifactRelationshipTypeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return ArtifactRelationshipTypeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ArtifactRelationshipTypeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'documentation':
        return ArtifactRelationshipTypeEnum.documentation;
      case 'justification':
        return ArtifactRelationshipTypeEnum.justification;
      case 'predecessor':
        return ArtifactRelationshipTypeEnum.predecessor;
      case 'successor':
        return ArtifactRelationshipTypeEnum.successor;
      case 'derived-from':
        return ArtifactRelationshipTypeEnum.derivedFrom;
      case 'depends-on':
        return ArtifactRelationshipTypeEnum.dependsOn;
      case 'composed-of':
        return ArtifactRelationshipTypeEnum.composedOf;
      case 'part-of':
        return ArtifactRelationshipTypeEnum.partOf;
      case 'amends':
        return ArtifactRelationshipTypeEnum.amends;
      case 'amended-with':
        return ArtifactRelationshipTypeEnum.amendedWith;
      case 'appends':
        return ArtifactRelationshipTypeEnum.appends;
      case 'appended-with':
        return ArtifactRelationshipTypeEnum.appendedWith;
      case 'cites':
        return ArtifactRelationshipTypeEnum.cites;
      case 'cited-by':
        return ArtifactRelationshipTypeEnum.citedBy;
      case 'comments-on':
        return ArtifactRelationshipTypeEnum.commentsOn;
      case 'comment-in':
        return ArtifactRelationshipTypeEnum.commentIn;
      case 'contains':
        return ArtifactRelationshipTypeEnum.contains_;
      case 'contained-in':
        return ArtifactRelationshipTypeEnum.containedIn;
      case 'corrects':
        return ArtifactRelationshipTypeEnum.corrects;
      case 'correction-in':
        return ArtifactRelationshipTypeEnum.correctionIn;
      case 'replaces':
        return ArtifactRelationshipTypeEnum.replaces;
      case 'replaced-with':
        return ArtifactRelationshipTypeEnum.replacedWith;
      case 'retracts':
        return ArtifactRelationshipTypeEnum.retracts;
      case 'retracted-by':
        return ArtifactRelationshipTypeEnum.retractedBy;
      case 'signs':
        return ArtifactRelationshipTypeEnum.signs;
      case 'similar-to':
        return ArtifactRelationshipTypeEnum.similarTo;
      case 'supports':
        return ArtifactRelationshipTypeEnum.supports;
      case 'supported-with':
        return ArtifactRelationshipTypeEnum.supportedWith;
      case 'transforms':
        return ArtifactRelationshipTypeEnum.transforms;
      case 'transformed-into':
        return ArtifactRelationshipTypeEnum.transformedInto;
      case 'transformed-with':
        return ArtifactRelationshipTypeEnum.transformedWith;
      case 'specification-of':
        return ArtifactRelationshipTypeEnum.specificationOf;
      case 'created-with':
        return ArtifactRelationshipTypeEnum.createdWith;
      case 'cite-as':
        return ArtifactRelationshipTypeEnum.citeAs;
      case 'summarizes':
        return ArtifactRelationshipTypeEnum.summarizes;
    }
    return null;
  }
}

/// Type of relationship to the related artifact.
class ArtifactRelationshipType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const ArtifactRelationshipType._({
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
  factory ArtifactRelationshipType(
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
    final valueEnum = ArtifactRelationshipTypeEnum.fromString(valueString);
    return ArtifactRelationshipType._(
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

  /// Factory constructor to create [ArtifactRelationshipType]
  /// from JSON.
  factory ArtifactRelationshipType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = ArtifactRelationshipTypeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ArtifactRelationshipType._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ArtifactRelationshipType cannot be constructed from JSON.',
      );
    }
    return ArtifactRelationshipType._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for ArtifactRelationshipType
  final ArtifactRelationshipTypeEnum? valueEnum;

  /// documentation
  static const ArtifactRelationshipType documentation =
      ArtifactRelationshipType._(
    valueString: 'documentation',
    valueEnum: ArtifactRelationshipTypeEnum.documentation,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Documentation',
    ),
  );

  /// justification
  static const ArtifactRelationshipType justification =
      ArtifactRelationshipType._(
    valueString: 'justification',
    valueEnum: ArtifactRelationshipTypeEnum.justification,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Justification',
    ),
  );

  /// predecessor
  static const ArtifactRelationshipType predecessor =
      ArtifactRelationshipType._(
    valueString: 'predecessor',
    valueEnum: ArtifactRelationshipTypeEnum.predecessor,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Predecessor',
    ),
  );

  /// successor
  static const ArtifactRelationshipType successor = ArtifactRelationshipType._(
    valueString: 'successor',
    valueEnum: ArtifactRelationshipTypeEnum.successor,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Successor',
    ),
  );

  /// derived_from
  static const ArtifactRelationshipType derivedFrom =
      ArtifactRelationshipType._(
    valueString: 'derived-from',
    valueEnum: ArtifactRelationshipTypeEnum.derivedFrom,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Derived From',
    ),
  );

  /// depends_on
  static const ArtifactRelationshipType dependsOn = ArtifactRelationshipType._(
    valueString: 'depends-on',
    valueEnum: ArtifactRelationshipTypeEnum.dependsOn,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Depends On',
    ),
  );

  /// composed_of
  static const ArtifactRelationshipType composedOf = ArtifactRelationshipType._(
    valueString: 'composed-of',
    valueEnum: ArtifactRelationshipTypeEnum.composedOf,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Composed Of',
    ),
  );

  /// part_of
  static const ArtifactRelationshipType partOf = ArtifactRelationshipType._(
    valueString: 'part-of',
    valueEnum: ArtifactRelationshipTypeEnum.partOf,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Part Of',
    ),
  );

  /// amends
  static const ArtifactRelationshipType amends = ArtifactRelationshipType._(
    valueString: 'amends',
    valueEnum: ArtifactRelationshipTypeEnum.amends,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Amends',
    ),
  );

  /// amended_with
  static const ArtifactRelationshipType amendedWith =
      ArtifactRelationshipType._(
    valueString: 'amended-with',
    valueEnum: ArtifactRelationshipTypeEnum.amendedWith,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Amended With',
    ),
  );

  /// appends
  static const ArtifactRelationshipType appends = ArtifactRelationshipType._(
    valueString: 'appends',
    valueEnum: ArtifactRelationshipTypeEnum.appends,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Appends',
    ),
  );

  /// appended_with
  static const ArtifactRelationshipType appendedWith =
      ArtifactRelationshipType._(
    valueString: 'appended-with',
    valueEnum: ArtifactRelationshipTypeEnum.appendedWith,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Appended With',
    ),
  );

  /// cites
  static const ArtifactRelationshipType cites = ArtifactRelationshipType._(
    valueString: 'cites',
    valueEnum: ArtifactRelationshipTypeEnum.cites,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Cites',
    ),
  );

  /// cited_by
  static const ArtifactRelationshipType citedBy = ArtifactRelationshipType._(
    valueString: 'cited-by',
    valueEnum: ArtifactRelationshipTypeEnum.citedBy,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Cited By',
    ),
  );

  /// comments_on
  static const ArtifactRelationshipType commentsOn = ArtifactRelationshipType._(
    valueString: 'comments-on',
    valueEnum: ArtifactRelationshipTypeEnum.commentsOn,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Is Comment On',
    ),
  );

  /// comment_in
  static const ArtifactRelationshipType commentIn = ArtifactRelationshipType._(
    valueString: 'comment-in',
    valueEnum: ArtifactRelationshipTypeEnum.commentIn,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Has Comment In',
    ),
  );

  /// contains_
  static const ArtifactRelationshipType contains_ = ArtifactRelationshipType._(
    valueString: 'contains',
    valueEnum: ArtifactRelationshipTypeEnum.contains_,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Contains',
    ),
  );

  /// contained_in
  static const ArtifactRelationshipType containedIn =
      ArtifactRelationshipType._(
    valueString: 'contained-in',
    valueEnum: ArtifactRelationshipTypeEnum.containedIn,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Contained In',
    ),
  );

  /// corrects
  static const ArtifactRelationshipType corrects = ArtifactRelationshipType._(
    valueString: 'corrects',
    valueEnum: ArtifactRelationshipTypeEnum.corrects,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Corrects',
    ),
  );

  /// correction_in
  static const ArtifactRelationshipType correctionIn =
      ArtifactRelationshipType._(
    valueString: 'correction-in',
    valueEnum: ArtifactRelationshipTypeEnum.correctionIn,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Correction In',
    ),
  );

  /// replaces
  static const ArtifactRelationshipType replaces = ArtifactRelationshipType._(
    valueString: 'replaces',
    valueEnum: ArtifactRelationshipTypeEnum.replaces,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Replaces',
    ),
  );

  /// replaced_with
  static const ArtifactRelationshipType replacedWith =
      ArtifactRelationshipType._(
    valueString: 'replaced-with',
    valueEnum: ArtifactRelationshipTypeEnum.replacedWith,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Replaced With',
    ),
  );

  /// retracts
  static const ArtifactRelationshipType retracts = ArtifactRelationshipType._(
    valueString: 'retracts',
    valueEnum: ArtifactRelationshipTypeEnum.retracts,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Retracts',
    ),
  );

  /// retracted_by
  static const ArtifactRelationshipType retractedBy =
      ArtifactRelationshipType._(
    valueString: 'retracted-by',
    valueEnum: ArtifactRelationshipTypeEnum.retractedBy,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Retracted By',
    ),
  );

  /// signs
  static const ArtifactRelationshipType signs = ArtifactRelationshipType._(
    valueString: 'signs',
    valueEnum: ArtifactRelationshipTypeEnum.signs,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Signs',
    ),
  );

  /// similar_to
  static const ArtifactRelationshipType similarTo = ArtifactRelationshipType._(
    valueString: 'similar-to',
    valueEnum: ArtifactRelationshipTypeEnum.similarTo,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Similar To',
    ),
  );

  /// supports
  static const ArtifactRelationshipType supports = ArtifactRelationshipType._(
    valueString: 'supports',
    valueEnum: ArtifactRelationshipTypeEnum.supports,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Supports',
    ),
  );

  /// supported_with
  static const ArtifactRelationshipType supportedWith =
      ArtifactRelationshipType._(
    valueString: 'supported-with',
    valueEnum: ArtifactRelationshipTypeEnum.supportedWith,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Supported With',
    ),
  );

  /// transforms
  static const ArtifactRelationshipType transforms = ArtifactRelationshipType._(
    valueString: 'transforms',
    valueEnum: ArtifactRelationshipTypeEnum.transforms,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Transforms',
    ),
  );

  /// transformed_into
  static const ArtifactRelationshipType transformedInto =
      ArtifactRelationshipType._(
    valueString: 'transformed-into',
    valueEnum: ArtifactRelationshipTypeEnum.transformedInto,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Transformed Into',
    ),
  );

  /// transformed_with
  static const ArtifactRelationshipType transformedWith =
      ArtifactRelationshipType._(
    valueString: 'transformed-with',
    valueEnum: ArtifactRelationshipTypeEnum.transformedWith,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Transformed With',
    ),
  );

  /// specification_of
  static const ArtifactRelationshipType specificationOf =
      ArtifactRelationshipType._(
    valueString: 'specification-of',
    valueEnum: ArtifactRelationshipTypeEnum.specificationOf,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Specification Of',
    ),
  );

  /// created_with
  static const ArtifactRelationshipType createdWith =
      ArtifactRelationshipType._(
    valueString: 'created-with',
    valueEnum: ArtifactRelationshipTypeEnum.createdWith,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Created With',
    ),
  );

  /// cite_as
  static const ArtifactRelationshipType citeAs = ArtifactRelationshipType._(
    valueString: 'cite-as',
    valueEnum: ArtifactRelationshipTypeEnum.citeAs,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Cite As',
    ),
  );

  /// summarizes
  static const ArtifactRelationshipType summarizes = ArtifactRelationshipType._(
    valueString: 'summarizes',
    valueEnum: ArtifactRelationshipTypeEnum.summarizes,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/artifact-relationship-type',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Summarizes',
    ),
  );

  /// List of all enum-like values
  static final List<ArtifactRelationshipType> values = [
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
  ArtifactRelationshipType withElement(Element? newElement) {
    return ArtifactRelationshipType._(
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
  ArtifactRelationshipType clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  ArtifactRelationshipTypeCopyWithImpl<ArtifactRelationshipType> get copyWith =>
      ArtifactRelationshipTypeCopyWithImpl<ArtifactRelationshipType>(
        this,
        (v) => v as ArtifactRelationshipType,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class ArtifactRelationshipTypeCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  ArtifactRelationshipTypeCopyWithImpl(super._value, super._then);

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
      ArtifactRelationshipType(
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
