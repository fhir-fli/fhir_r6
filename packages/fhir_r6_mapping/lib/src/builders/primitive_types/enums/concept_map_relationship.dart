// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ConceptMapRelationship
enum ConceptMapRelationshipBuilderEnum {
  /// related-to
  relatedTo,

  /// equivalent
  equivalent,

  /// source-is-narrower-than-target
  sourceIsNarrowerThanTarget,

  /// source-is-broader-than-target
  sourceIsBroaderThanTarget,

  /// not-related-to
  notRelatedTo,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ConceptMapRelationshipBuilderEnum.relatedTo:
        return 'related-to';
      case ConceptMapRelationshipBuilderEnum.equivalent:
        return 'equivalent';
      case ConceptMapRelationshipBuilderEnum.sourceIsNarrowerThanTarget:
        return 'source-is-narrower-than-target';
      case ConceptMapRelationshipBuilderEnum.sourceIsBroaderThanTarget:
        return 'source-is-broader-than-target';
      case ConceptMapRelationshipBuilderEnum.notRelatedTo:
        return 'not-related-to';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ConceptMapRelationshipBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return ConceptMapRelationshipBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ConceptMapRelationshipBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'related-to':
        return ConceptMapRelationshipBuilderEnum.relatedTo;
      case 'equivalent':
        return ConceptMapRelationshipBuilderEnum.equivalent;
      case 'source-is-narrower-than-target':
        return ConceptMapRelationshipBuilderEnum.sourceIsNarrowerThanTarget;
      case 'source-is-broader-than-target':
        return ConceptMapRelationshipBuilderEnum.sourceIsBroaderThanTarget;
      case 'not-related-to':
        return ConceptMapRelationshipBuilderEnum.notRelatedTo;
    }
    return null;
  }
}

/// The relationship between concepts.
class ConceptMapRelationshipBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ConceptMapRelationshipBuilder._({
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
  factory ConceptMapRelationshipBuilder(
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
    final valueEnum = ConceptMapRelationshipBuilderEnum.fromString(
      valueString,
    );
    return ConceptMapRelationshipBuilder._(
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

  /// Create empty [ConceptMapRelationshipBuilder]
  /// with element only
  factory ConceptMapRelationshipBuilder.empty() =>
      ConceptMapRelationshipBuilder._(valueString: null);

  /// Factory constructor to create
  /// [ConceptMapRelationshipBuilder] from JSON.
  factory ConceptMapRelationshipBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConceptMapRelationshipBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ConceptMapRelationshipBuilder cannot be constructed from JSON.',
      );
    }
    return ConceptMapRelationshipBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for ConceptMapRelationshipBuilder
  final ConceptMapRelationshipBuilderEnum? valueEnum;

  /// related_to
  static ConceptMapRelationshipBuilder relatedTo =
      ConceptMapRelationshipBuilder._(
    valueString: 'related-to',
    valueEnum: ConceptMapRelationshipBuilderEnum.relatedTo,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/concept-map-relationship',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Related To',
    ),
  );

  /// equivalent
  static ConceptMapRelationshipBuilder equivalent =
      ConceptMapRelationshipBuilder._(
    valueString: 'equivalent',
    valueEnum: ConceptMapRelationshipBuilderEnum.equivalent,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/concept-map-relationship',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Equivalent',
    ),
  );

  /// source_is_narrower_than_target
  static ConceptMapRelationshipBuilder sourceIsNarrowerThanTarget =
      ConceptMapRelationshipBuilder._(
    valueString: 'source-is-narrower-than-target',
    valueEnum: ConceptMapRelationshipBuilderEnum.sourceIsNarrowerThanTarget,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/concept-map-relationship',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Source Is Narrower Than Target',
    ),
  );

  /// source_is_broader_than_target
  static ConceptMapRelationshipBuilder sourceIsBroaderThanTarget =
      ConceptMapRelationshipBuilder._(
    valueString: 'source-is-broader-than-target',
    valueEnum: ConceptMapRelationshipBuilderEnum.sourceIsBroaderThanTarget,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/concept-map-relationship',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Source Is Broader Than Target',
    ),
  );

  /// not_related_to
  static ConceptMapRelationshipBuilder notRelatedTo =
      ConceptMapRelationshipBuilder._(
    valueString: 'not-related-to',
    valueEnum: ConceptMapRelationshipBuilderEnum.notRelatedTo,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/concept-map-relationship',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Not Related To',
    ),
  );

  /// For instances where an Element is present but not value
  static ConceptMapRelationshipBuilder elementOnly =
      ConceptMapRelationshipBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<ConceptMapRelationshipBuilder> values = [
    relatedTo,
    equivalent,
    sourceIsNarrowerThanTarget,
    sourceIsBroaderThanTarget,
    notRelatedTo,
  ];

  /// Returns the enum value with an element attached
  ConceptMapRelationshipBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ConceptMapRelationshipBuilder._(
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
