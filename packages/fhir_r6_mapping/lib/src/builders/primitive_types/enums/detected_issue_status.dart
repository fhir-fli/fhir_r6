// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for DetectedIssueStatus
enum DetectedIssueStatusBuilderEnum {
  /// registered
  registered,

  /// preliminary
  preliminary,

  /// final
  final_,

  /// amended
  amended,

  /// corrected
  corrected,

  /// cancelled
  cancelled,

  /// entered-in-error
  enteredInError,

  /// unknown
  unknown,

  /// mitigated
  mitigated,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case DetectedIssueStatusBuilderEnum.registered:
        return 'registered';
      case DetectedIssueStatusBuilderEnum.preliminary:
        return 'preliminary';
      case DetectedIssueStatusBuilderEnum.final_:
        return 'final';
      case DetectedIssueStatusBuilderEnum.amended:
        return 'amended';
      case DetectedIssueStatusBuilderEnum.corrected:
        return 'corrected';
      case DetectedIssueStatusBuilderEnum.cancelled:
        return 'cancelled';
      case DetectedIssueStatusBuilderEnum.enteredInError:
        return 'entered-in-error';
      case DetectedIssueStatusBuilderEnum.unknown:
        return 'unknown';
      case DetectedIssueStatusBuilderEnum.mitigated:
        return 'mitigated';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static DetectedIssueStatusBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return DetectedIssueStatusBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static DetectedIssueStatusBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'registered':
        return DetectedIssueStatusBuilderEnum.registered;
      case 'preliminary':
        return DetectedIssueStatusBuilderEnum.preliminary;
      case 'final':
        return DetectedIssueStatusBuilderEnum.final_;
      case 'amended':
        return DetectedIssueStatusBuilderEnum.amended;
      case 'corrected':
        return DetectedIssueStatusBuilderEnum.corrected;
      case 'cancelled':
        return DetectedIssueStatusBuilderEnum.cancelled;
      case 'entered-in-error':
        return DetectedIssueStatusBuilderEnum.enteredInError;
      case 'unknown':
        return DetectedIssueStatusBuilderEnum.unknown;
      case 'mitigated':
        return DetectedIssueStatusBuilderEnum.mitigated;
    }
    return null;
  }
}

/// Indicates the status of a detected issue
class DetectedIssueStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  DetectedIssueStatusBuilder._({
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
  factory DetectedIssueStatusBuilder(
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
    final valueEnum = DetectedIssueStatusBuilderEnum.fromString(
      valueString,
    );
    return DetectedIssueStatusBuilder._(
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

  /// Create empty [DetectedIssueStatusBuilder]
  /// with element only
  factory DetectedIssueStatusBuilder.empty() =>
      DetectedIssueStatusBuilder._(valueString: null);

  /// Factory constructor to create
  /// [DetectedIssueStatusBuilder] from JSON.
  factory DetectedIssueStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DetectedIssueStatusBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DetectedIssueStatusBuilder cannot be constructed from JSON.',
      );
    }
    return DetectedIssueStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for DetectedIssueStatusBuilder
  final DetectedIssueStatusBuilderEnum? valueEnum;

  /// registered
  static DetectedIssueStatusBuilder registered = DetectedIssueStatusBuilder._(
    valueString: 'registered',
    valueEnum: DetectedIssueStatusBuilderEnum.registered,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/detectedissue-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Registered',
    ),
  );

  /// preliminary
  static DetectedIssueStatusBuilder preliminary = DetectedIssueStatusBuilder._(
    valueString: 'preliminary',
    valueEnum: DetectedIssueStatusBuilderEnum.preliminary,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/detectedissue-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Preliminary',
    ),
  );

  /// final_
  static DetectedIssueStatusBuilder final_ = DetectedIssueStatusBuilder._(
    valueString: 'final',
    valueEnum: DetectedIssueStatusBuilderEnum.final_,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/detectedissue-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Final',
    ),
  );

  /// amended
  static DetectedIssueStatusBuilder amended = DetectedIssueStatusBuilder._(
    valueString: 'amended',
    valueEnum: DetectedIssueStatusBuilderEnum.amended,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/detectedissue-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Amended',
    ),
  );

  /// corrected
  static DetectedIssueStatusBuilder corrected = DetectedIssueStatusBuilder._(
    valueString: 'corrected',
    valueEnum: DetectedIssueStatusBuilderEnum.corrected,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/detectedissue-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Corrected',
    ),
  );

  /// cancelled
  static DetectedIssueStatusBuilder cancelled = DetectedIssueStatusBuilder._(
    valueString: 'cancelled',
    valueEnum: DetectedIssueStatusBuilderEnum.cancelled,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/detectedissue-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Cancelled',
    ),
  );

  /// entered_in_error
  static DetectedIssueStatusBuilder enteredInError =
      DetectedIssueStatusBuilder._(
    valueString: 'entered-in-error',
    valueEnum: DetectedIssueStatusBuilderEnum.enteredInError,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/detectedissue-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Entered in Error',
    ),
  );

  /// unknown
  static DetectedIssueStatusBuilder unknown = DetectedIssueStatusBuilder._(
    valueString: 'unknown',
    valueEnum: DetectedIssueStatusBuilderEnum.unknown,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/detectedissue-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Unknown',
    ),
  );

  /// mitigated
  static DetectedIssueStatusBuilder mitigated = DetectedIssueStatusBuilder._(
    valueString: 'mitigated',
    valueEnum: DetectedIssueStatusBuilderEnum.mitigated,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/detectedissue-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Mitigated',
    ),
  );

  /// For instances where an Element is present but not value
  static DetectedIssueStatusBuilder elementOnly = DetectedIssueStatusBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<DetectedIssueStatusBuilder> values = [
    registered,
    preliminary,
    final_,
    amended,
    corrected,
    cancelled,
    enteredInError,
    unknown,
    mitigated,
  ];

  /// Returns the enum value with an element attached
  DetectedIssueStatusBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return DetectedIssueStatusBuilder._(
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
