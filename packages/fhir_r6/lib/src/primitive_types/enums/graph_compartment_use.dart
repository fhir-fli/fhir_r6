// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for GraphCompartmentUse
enum GraphCompartmentUseEnum {
  /// where
  where,

  /// requires
  requires,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case GraphCompartmentUseEnum.where:
        return 'where';
      case GraphCompartmentUseEnum.requires:
        return 'requires';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static GraphCompartmentUseEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return GraphCompartmentUseEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static GraphCompartmentUseEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'where':
        return GraphCompartmentUseEnum.where;
      case 'requires':
        return GraphCompartmentUseEnum.requires;
    }
    return null;
  }
}

/// Defines how a compartment rule is used.
class GraphCompartmentUse extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const GraphCompartmentUse._({
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
  factory GraphCompartmentUse(
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
    final valueEnum = GraphCompartmentUseEnum.fromString(valueString);
    return GraphCompartmentUse._(
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

  /// Factory constructor to create [GraphCompartmentUse]
  /// from JSON.
  factory GraphCompartmentUse.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = GraphCompartmentUseEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GraphCompartmentUse._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'GraphCompartmentUse cannot be constructed from JSON.',
      );
    }
    return GraphCompartmentUse._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for GraphCompartmentUse
  final GraphCompartmentUseEnum? valueEnum;

  /// where
  static const GraphCompartmentUse where = GraphCompartmentUse._(
    valueString: 'where',
    valueEnum: GraphCompartmentUseEnum.where,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/graph-compartment-use',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Where',
    ),
  );

  /// requires
  static const GraphCompartmentUse requires = GraphCompartmentUse._(
    valueString: 'requires',
    valueEnum: GraphCompartmentUseEnum.requires,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/graph-compartment-use',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'requires',
    ),
  );

  /// List of all enum-like values
  static final List<GraphCompartmentUse> values = [
    where,
    requires,
  ];

  /// Returns the enum value with an element attached
  GraphCompartmentUse withElement(Element? newElement) {
    return GraphCompartmentUse._(
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
  GraphCompartmentUse clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  GraphCompartmentUseCopyWithImpl<GraphCompartmentUse> get copyWith =>
      GraphCompartmentUseCopyWithImpl<GraphCompartmentUse>(
        this,
        (v) => v as GraphCompartmentUse,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class GraphCompartmentUseCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  GraphCompartmentUseCopyWithImpl(super._value, super._then);

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
      GraphCompartmentUse(
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
