// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ClaimProcessingCodes
enum ClaimProcessingCodesBuilderEnum {
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
      case ClaimProcessingCodesBuilderEnum.queued:
        return 'queued';
      case ClaimProcessingCodesBuilderEnum.complete:
        return 'complete';
      case ClaimProcessingCodesBuilderEnum.error:
        return 'error';
      case ClaimProcessingCodesBuilderEnum.partial:
        return 'partial';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ClaimProcessingCodesBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return ClaimProcessingCodesBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ClaimProcessingCodesBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'queued':
        return ClaimProcessingCodesBuilderEnum.queued;
      case 'complete':
        return ClaimProcessingCodesBuilderEnum.complete;
      case 'error':
        return ClaimProcessingCodesBuilderEnum.error;
      case 'partial':
        return ClaimProcessingCodesBuilderEnum.partial;
    }
    return null;
  }
}

/// This value set includes Claim Processing Outcome codes.
class ClaimProcessingCodesBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ClaimProcessingCodesBuilder._({
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
  factory ClaimProcessingCodesBuilder(
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
    final valueEnum = ClaimProcessingCodesBuilderEnum.fromString(
      valueString,
    );
    return ClaimProcessingCodesBuilder._(
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

  /// Create empty [ClaimProcessingCodesBuilder]
  /// with element only
  factory ClaimProcessingCodesBuilder.empty() =>
      ClaimProcessingCodesBuilder._(valueString: null);

  /// Factory constructor to create
  /// [ClaimProcessingCodesBuilder] from JSON.
  factory ClaimProcessingCodesBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ClaimProcessingCodesBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ClaimProcessingCodesBuilder cannot be constructed from JSON.',
      );
    }
    return ClaimProcessingCodesBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for ClaimProcessingCodesBuilder
  final ClaimProcessingCodesBuilderEnum? valueEnum;

  /// queued
  static ClaimProcessingCodesBuilder queued = ClaimProcessingCodesBuilder._(
    valueString: 'queued',
    valueEnum: ClaimProcessingCodesBuilderEnum.queued,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/claim-outcome',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Queued',
    ),
  );

  /// complete
  static ClaimProcessingCodesBuilder complete = ClaimProcessingCodesBuilder._(
    valueString: 'complete',
    valueEnum: ClaimProcessingCodesBuilderEnum.complete,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/claim-outcome',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Processing Complete',
    ),
  );

  /// error
  static ClaimProcessingCodesBuilder error = ClaimProcessingCodesBuilder._(
    valueString: 'error',
    valueEnum: ClaimProcessingCodesBuilderEnum.error,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/claim-outcome',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Error',
    ),
  );

  /// partial
  static ClaimProcessingCodesBuilder partial = ClaimProcessingCodesBuilder._(
    valueString: 'partial',
    valueEnum: ClaimProcessingCodesBuilderEnum.partial,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/claim-outcome',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Partial Processing',
    ),
  );

  /// For instances where an Element is present but not value
  static ClaimProcessingCodesBuilder elementOnly =
      ClaimProcessingCodesBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<ClaimProcessingCodesBuilder> values = [
    queued,
    complete,
    error,
    partial,
  ];

  /// Returns the enum value with an element attached
  ClaimProcessingCodesBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ClaimProcessingCodesBuilder._(
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
