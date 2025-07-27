// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for SubmitDataUpdateType
enum SubmitDataUpdateTypeBuilderEnum {
  /// incremental
  incremental,

  /// snapshot
  snapshot,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case SubmitDataUpdateTypeBuilderEnum.incremental:
        return 'incremental';
      case SubmitDataUpdateTypeBuilderEnum.snapshot:
        return 'snapshot';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static SubmitDataUpdateTypeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return SubmitDataUpdateTypeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static SubmitDataUpdateTypeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'incremental':
        return SubmitDataUpdateTypeBuilderEnum.incremental;
      case 'snapshot':
        return SubmitDataUpdateTypeBuilderEnum.snapshot;
    }
    return null;
  }
}

/// Concepts for how a measure report consumer and receiver coordinate data
/// exchange updates. The choices are snapshot or incremental updates
class SubmitDataUpdateTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  SubmitDataUpdateTypeBuilder._({
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
  factory SubmitDataUpdateTypeBuilder(
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
    final valueEnum = SubmitDataUpdateTypeBuilderEnum.fromString(
      valueString,
    );
    return SubmitDataUpdateTypeBuilder._(
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

  /// Create empty [SubmitDataUpdateTypeBuilder]
  /// with element only
  factory SubmitDataUpdateTypeBuilder.empty() =>
      SubmitDataUpdateTypeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [SubmitDataUpdateTypeBuilder] from JSON.
  factory SubmitDataUpdateTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubmitDataUpdateTypeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SubmitDataUpdateTypeBuilder cannot be constructed from JSON.',
      );
    }
    return SubmitDataUpdateTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for SubmitDataUpdateTypeBuilder
  final SubmitDataUpdateTypeBuilderEnum? valueEnum;

  /// incremental
  static SubmitDataUpdateTypeBuilder incremental =
      SubmitDataUpdateTypeBuilder._(
    valueString: 'incremental',
    valueEnum: SubmitDataUpdateTypeBuilderEnum.incremental,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/submit-data-update-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Incremental',
    ),
  );

  /// snapshot
  static SubmitDataUpdateTypeBuilder snapshot = SubmitDataUpdateTypeBuilder._(
    valueString: 'snapshot',
    valueEnum: SubmitDataUpdateTypeBuilderEnum.snapshot,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/submit-data-update-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Snapshot',
    ),
  );

  /// For instances where an Element is present but not value
  static SubmitDataUpdateTypeBuilder elementOnly =
      SubmitDataUpdateTypeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<SubmitDataUpdateTypeBuilder> values = [
    incremental,
    snapshot,
  ];

  /// Returns the enum value with an element attached
  SubmitDataUpdateTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return SubmitDataUpdateTypeBuilder._(
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
