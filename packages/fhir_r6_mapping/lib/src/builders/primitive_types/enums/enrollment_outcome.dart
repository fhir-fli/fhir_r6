// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for EnrollmentOutcome
enum EnrollmentOutcomeBuilderEnum {
  /// queued
  queued,

  /// complete
  complete,

  /// error
  error,

  /// partial
  partial,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case EnrollmentOutcomeBuilderEnum.queued:
        return 'queued';
      case EnrollmentOutcomeBuilderEnum.complete:
        return 'complete';
      case EnrollmentOutcomeBuilderEnum.error:
        return 'error';
      case EnrollmentOutcomeBuilderEnum.partial:
        return 'partial';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static EnrollmentOutcomeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return EnrollmentOutcomeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static EnrollmentOutcomeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'queued':
        return EnrollmentOutcomeBuilderEnum.queued;
      case 'complete':
        return EnrollmentOutcomeBuilderEnum.complete;
      case 'error':
        return EnrollmentOutcomeBuilderEnum.error;
      case 'partial':
        return EnrollmentOutcomeBuilderEnum.partial;
    }
    return null;
  }
}

/// The outcome of the processing.
class EnrollmentOutcomeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  EnrollmentOutcomeBuilder._({
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
  factory EnrollmentOutcomeBuilder(
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
    final valueEnum = EnrollmentOutcomeBuilderEnum.fromString(
      valueString,
    );
    return EnrollmentOutcomeBuilder._(
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

  /// Create empty [EnrollmentOutcomeBuilder]
  /// with element only
  factory EnrollmentOutcomeBuilder.empty() =>
      EnrollmentOutcomeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [EnrollmentOutcomeBuilder] from JSON.
  factory EnrollmentOutcomeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EnrollmentOutcomeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'EnrollmentOutcomeBuilder cannot be constructed from JSON.',
      );
    }
    return EnrollmentOutcomeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for EnrollmentOutcomeBuilder
  final EnrollmentOutcomeBuilderEnum? valueEnum;

  /// queued
  static EnrollmentOutcomeBuilder queued = EnrollmentOutcomeBuilder._(
    valueString: 'queued',
    valueEnum: EnrollmentOutcomeBuilderEnum.queued,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/enrollment-outcome',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Queued',
    ),
  );

  /// complete
  static EnrollmentOutcomeBuilder complete = EnrollmentOutcomeBuilder._(
    valueString: 'complete',
    valueEnum: EnrollmentOutcomeBuilderEnum.complete,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/enrollment-outcome',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Processing Complete',
    ),
  );

  /// error
  static EnrollmentOutcomeBuilder error = EnrollmentOutcomeBuilder._(
    valueString: 'error',
    valueEnum: EnrollmentOutcomeBuilderEnum.error,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/enrollment-outcome',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Error',
    ),
  );

  /// partial
  static EnrollmentOutcomeBuilder partial = EnrollmentOutcomeBuilder._(
    valueString: 'partial',
    valueEnum: EnrollmentOutcomeBuilderEnum.partial,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/enrollment-outcome',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Partial Processing',
    ),
  );

  /// For instances where an Element is present but not value
  static EnrollmentOutcomeBuilder elementOnly = EnrollmentOutcomeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<EnrollmentOutcomeBuilder> values = [
    queued,
    complete,
    error,
    partial,
  ];

  /// Returns the enum value with an element attached
  EnrollmentOutcomeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return EnrollmentOutcomeBuilder._(
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
