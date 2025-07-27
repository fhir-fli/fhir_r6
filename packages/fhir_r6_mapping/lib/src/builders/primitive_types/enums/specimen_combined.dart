// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for SpecimenCombined
enum SpecimenCombinedBuilderEnum {
  /// grouped
  grouped,

  /// pooled
  pooled,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case SpecimenCombinedBuilderEnum.grouped:
        return 'grouped';
      case SpecimenCombinedBuilderEnum.pooled:
        return 'pooled';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static SpecimenCombinedBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return SpecimenCombinedBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static SpecimenCombinedBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'grouped':
        return SpecimenCombinedBuilderEnum.grouped;
      case 'pooled':
        return SpecimenCombinedBuilderEnum.pooled;
    }
    return null;
  }
}

/// Codes providing the combined status of a specimen.
class SpecimenCombinedBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  SpecimenCombinedBuilder._({
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
  factory SpecimenCombinedBuilder(
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
    final valueEnum = SpecimenCombinedBuilderEnum.fromString(
      valueString,
    );
    return SpecimenCombinedBuilder._(
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

  /// Create empty [SpecimenCombinedBuilder]
  /// with element only
  factory SpecimenCombinedBuilder.empty() =>
      SpecimenCombinedBuilder._(valueString: null);

  /// Factory constructor to create
  /// [SpecimenCombinedBuilder] from JSON.
  factory SpecimenCombinedBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SpecimenCombinedBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SpecimenCombinedBuilder cannot be constructed from JSON.',
      );
    }
    return SpecimenCombinedBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for SpecimenCombinedBuilder
  final SpecimenCombinedBuilderEnum? valueEnum;

  /// grouped
  static SpecimenCombinedBuilder grouped = SpecimenCombinedBuilder._(
    valueString: 'grouped',
    valueEnum: SpecimenCombinedBuilderEnum.grouped,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/specimen-combined',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Grouped',
    ),
  );

  /// pooled
  static SpecimenCombinedBuilder pooled = SpecimenCombinedBuilder._(
    valueString: 'pooled',
    valueEnum: SpecimenCombinedBuilderEnum.pooled,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/specimen-combined',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Pooled',
    ),
  );

  /// For instances where an Element is present but not value
  static SpecimenCombinedBuilder elementOnly = SpecimenCombinedBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<SpecimenCombinedBuilder> values = [
    grouped,
    pooled,
  ];

  /// Returns the enum value with an element attached
  SpecimenCombinedBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return SpecimenCombinedBuilder._(
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
