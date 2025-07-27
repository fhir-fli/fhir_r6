// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ConceptMapRelationship
enum ConceptMapRelationshipEnum {
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
      case ConceptMapRelationshipEnum.relatedTo:
        return 'related-to';
      case ConceptMapRelationshipEnum.equivalent:
        return 'equivalent';
      case ConceptMapRelationshipEnum.sourceIsNarrowerThanTarget:
        return 'source-is-narrower-than-target';
      case ConceptMapRelationshipEnum.sourceIsBroaderThanTarget:
        return 'source-is-broader-than-target';
      case ConceptMapRelationshipEnum.notRelatedTo:
        return 'not-related-to';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ConceptMapRelationshipEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return ConceptMapRelationshipEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ConceptMapRelationshipEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'related-to':
        return ConceptMapRelationshipEnum.relatedTo;
      case 'equivalent':
        return ConceptMapRelationshipEnum.equivalent;
      case 'source-is-narrower-than-target':
        return ConceptMapRelationshipEnum.sourceIsNarrowerThanTarget;
      case 'source-is-broader-than-target':
        return ConceptMapRelationshipEnum.sourceIsBroaderThanTarget;
      case 'not-related-to':
        return ConceptMapRelationshipEnum.notRelatedTo;
    }
    return null;
  }
}

/// The relationship between concepts.
class ConceptMapRelationship extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const ConceptMapRelationship._({
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
  factory ConceptMapRelationship(
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
    final valueEnum = ConceptMapRelationshipEnum.fromString(valueString);
    return ConceptMapRelationship._(
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

  /// Factory constructor to create [ConceptMapRelationship]
  /// from JSON.
  factory ConceptMapRelationship.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = ConceptMapRelationshipEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConceptMapRelationship._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ConceptMapRelationship cannot be constructed from JSON.',
      );
    }
    return ConceptMapRelationship._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for ConceptMapRelationship
  final ConceptMapRelationshipEnum? valueEnum;

  /// related_to
  static const ConceptMapRelationship relatedTo = ConceptMapRelationship._(
    valueString: 'related-to',
    valueEnum: ConceptMapRelationshipEnum.relatedTo,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/concept-map-relationship',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Related To',
    ),
  );

  /// equivalent
  static const ConceptMapRelationship equivalent = ConceptMapRelationship._(
    valueString: 'equivalent',
    valueEnum: ConceptMapRelationshipEnum.equivalent,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/concept-map-relationship',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Equivalent',
    ),
  );

  /// source_is_narrower_than_target
  static const ConceptMapRelationship sourceIsNarrowerThanTarget =
      ConceptMapRelationship._(
    valueString: 'source-is-narrower-than-target',
    valueEnum: ConceptMapRelationshipEnum.sourceIsNarrowerThanTarget,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/concept-map-relationship',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Source Is Narrower Than Target',
    ),
  );

  /// source_is_broader_than_target
  static const ConceptMapRelationship sourceIsBroaderThanTarget =
      ConceptMapRelationship._(
    valueString: 'source-is-broader-than-target',
    valueEnum: ConceptMapRelationshipEnum.sourceIsBroaderThanTarget,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/concept-map-relationship',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Source Is Broader Than Target',
    ),
  );

  /// not_related_to
  static const ConceptMapRelationship notRelatedTo = ConceptMapRelationship._(
    valueString: 'not-related-to',
    valueEnum: ConceptMapRelationshipEnum.notRelatedTo,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/concept-map-relationship',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Not Related To',
    ),
  );

  /// List of all enum-like values
  static final List<ConceptMapRelationship> values = [
    relatedTo,
    equivalent,
    sourceIsNarrowerThanTarget,
    sourceIsBroaderThanTarget,
    notRelatedTo,
  ];

  /// Returns the enum value with an element attached
  ConceptMapRelationship withElement(Element? newElement) {
    return ConceptMapRelationship._(
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
  ConceptMapRelationship clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  ConceptMapRelationshipCopyWithImpl<ConceptMapRelationship> get copyWith =>
      ConceptMapRelationshipCopyWithImpl<ConceptMapRelationship>(
        this,
        (v) => v as ConceptMapRelationship,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class ConceptMapRelationshipCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  ConceptMapRelationshipCopyWithImpl(super._value, super._then);

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
      ConceptMapRelationship(
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
