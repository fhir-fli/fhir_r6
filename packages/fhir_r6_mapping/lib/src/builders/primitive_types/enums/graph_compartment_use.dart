// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for GraphCompartmentUse
enum GraphCompartmentUseBuilderEnum {
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
      case GraphCompartmentUseBuilderEnum.where:
        return 'where';
      case GraphCompartmentUseBuilderEnum.requires:
        return 'requires';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static GraphCompartmentUseBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return GraphCompartmentUseBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static GraphCompartmentUseBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'where':
        return GraphCompartmentUseBuilderEnum.where;
      case 'requires':
        return GraphCompartmentUseBuilderEnum.requires;
    }
    return null;
  }
}

/// Defines how a compartment rule is used.
class GraphCompartmentUseBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  GraphCompartmentUseBuilder._({
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
  factory GraphCompartmentUseBuilder(
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
    final valueEnum = GraphCompartmentUseBuilderEnum.fromString(
      valueString,
    );
    return GraphCompartmentUseBuilder._(
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

  /// Create empty [GraphCompartmentUseBuilder]
  /// with element only
  factory GraphCompartmentUseBuilder.empty() =>
      GraphCompartmentUseBuilder._(valueString: null);

  /// Factory constructor to create
  /// [GraphCompartmentUseBuilder] from JSON.
  factory GraphCompartmentUseBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GraphCompartmentUseBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'GraphCompartmentUseBuilder cannot be constructed from JSON.',
      );
    }
    return GraphCompartmentUseBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for GraphCompartmentUseBuilder
  final GraphCompartmentUseBuilderEnum? valueEnum;

  /// where
  static GraphCompartmentUseBuilder where = GraphCompartmentUseBuilder._(
    valueString: 'where',
    valueEnum: GraphCompartmentUseBuilderEnum.where,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/graph-compartment-use',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Where',
    ),
  );

  /// requires
  static GraphCompartmentUseBuilder requires = GraphCompartmentUseBuilder._(
    valueString: 'requires',
    valueEnum: GraphCompartmentUseBuilderEnum.requires,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/graph-compartment-use',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'requires',
    ),
  );

  /// For instances where an Element is present but not value
  static GraphCompartmentUseBuilder elementOnly = GraphCompartmentUseBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<GraphCompartmentUseBuilder> values = [
    where,
    requires,
  ];

  /// Returns the enum value with an element attached
  GraphCompartmentUseBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return GraphCompartmentUseBuilder._(
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
