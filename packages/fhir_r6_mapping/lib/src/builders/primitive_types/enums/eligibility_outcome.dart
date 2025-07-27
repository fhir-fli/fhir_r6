// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for EligibilityOutcome
enum EligibilityOutcomeBuilderEnum {
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
      case EligibilityOutcomeBuilderEnum.queued:
        return 'queued';
      case EligibilityOutcomeBuilderEnum.complete:
        return 'complete';
      case EligibilityOutcomeBuilderEnum.error:
        return 'error';
      case EligibilityOutcomeBuilderEnum.partial:
        return 'partial';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static EligibilityOutcomeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return EligibilityOutcomeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static EligibilityOutcomeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'queued':
        return EligibilityOutcomeBuilderEnum.queued;
      case 'complete':
        return EligibilityOutcomeBuilderEnum.complete;
      case 'error':
        return EligibilityOutcomeBuilderEnum.error;
      case 'partial':
        return EligibilityOutcomeBuilderEnum.partial;
    }
    return null;
  }
}

/// The outcome of the processing.
class EligibilityOutcomeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  EligibilityOutcomeBuilder._({
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
  factory EligibilityOutcomeBuilder(
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
    final valueEnum = EligibilityOutcomeBuilderEnum.fromString(
      valueString,
    );
    return EligibilityOutcomeBuilder._(
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

  /// Create empty [EligibilityOutcomeBuilder]
  /// with element only
  factory EligibilityOutcomeBuilder.empty() =>
      EligibilityOutcomeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [EligibilityOutcomeBuilder] from JSON.
  factory EligibilityOutcomeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EligibilityOutcomeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'EligibilityOutcomeBuilder cannot be constructed from JSON.',
      );
    }
    return EligibilityOutcomeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for EligibilityOutcomeBuilder
  final EligibilityOutcomeBuilderEnum? valueEnum;

  /// queued
  static EligibilityOutcomeBuilder queued = EligibilityOutcomeBuilder._(
    valueString: 'queued',
    valueEnum: EligibilityOutcomeBuilderEnum.queued,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/eligibility-outcome',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Queued',
    ),
  );

  /// complete
  static EligibilityOutcomeBuilder complete = EligibilityOutcomeBuilder._(
    valueString: 'complete',
    valueEnum: EligibilityOutcomeBuilderEnum.complete,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/eligibility-outcome',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Processing Complete',
    ),
  );

  /// error
  static EligibilityOutcomeBuilder error = EligibilityOutcomeBuilder._(
    valueString: 'error',
    valueEnum: EligibilityOutcomeBuilderEnum.error,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/eligibility-outcome',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Error',
    ),
  );

  /// partial
  static EligibilityOutcomeBuilder partial = EligibilityOutcomeBuilder._(
    valueString: 'partial',
    valueEnum: EligibilityOutcomeBuilderEnum.partial,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/eligibility-outcome',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Partial Processing',
    ),
  );

  /// For instances where an Element is present but not value
  static EligibilityOutcomeBuilder elementOnly = EligibilityOutcomeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<EligibilityOutcomeBuilder> values = [
    queued,
    complete,
    error,
    partial,
  ];

  /// Returns the enum value with an element attached
  EligibilityOutcomeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return EligibilityOutcomeBuilder._(
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
