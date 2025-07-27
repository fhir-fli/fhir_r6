// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for DetectedIssueStatus
enum DetectedIssueStatusEnum {
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
      case DetectedIssueStatusEnum.registered:
        return 'registered';
      case DetectedIssueStatusEnum.preliminary:
        return 'preliminary';
      case DetectedIssueStatusEnum.final_:
        return 'final';
      case DetectedIssueStatusEnum.amended:
        return 'amended';
      case DetectedIssueStatusEnum.corrected:
        return 'corrected';
      case DetectedIssueStatusEnum.cancelled:
        return 'cancelled';
      case DetectedIssueStatusEnum.enteredInError:
        return 'entered-in-error';
      case DetectedIssueStatusEnum.unknown:
        return 'unknown';
      case DetectedIssueStatusEnum.mitigated:
        return 'mitigated';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static DetectedIssueStatusEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return DetectedIssueStatusEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static DetectedIssueStatusEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'registered':
        return DetectedIssueStatusEnum.registered;
      case 'preliminary':
        return DetectedIssueStatusEnum.preliminary;
      case 'final':
        return DetectedIssueStatusEnum.final_;
      case 'amended':
        return DetectedIssueStatusEnum.amended;
      case 'corrected':
        return DetectedIssueStatusEnum.corrected;
      case 'cancelled':
        return DetectedIssueStatusEnum.cancelled;
      case 'entered-in-error':
        return DetectedIssueStatusEnum.enteredInError;
      case 'unknown':
        return DetectedIssueStatusEnum.unknown;
      case 'mitigated':
        return DetectedIssueStatusEnum.mitigated;
    }
    return null;
  }
}

/// Indicates the status of a detected issue
class DetectedIssueStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const DetectedIssueStatus._({
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
  factory DetectedIssueStatus(
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
    final valueEnum = DetectedIssueStatusEnum.fromString(valueString);
    return DetectedIssueStatus._(
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

  /// Factory constructor to create [DetectedIssueStatus]
  /// from JSON.
  factory DetectedIssueStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = DetectedIssueStatusEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DetectedIssueStatus._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DetectedIssueStatus cannot be constructed from JSON.',
      );
    }
    return DetectedIssueStatus._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for DetectedIssueStatus
  final DetectedIssueStatusEnum? valueEnum;

  /// registered
  static const DetectedIssueStatus registered = DetectedIssueStatus._(
    valueString: 'registered',
    valueEnum: DetectedIssueStatusEnum.registered,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/detectedissue-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Registered',
    ),
  );

  /// preliminary
  static const DetectedIssueStatus preliminary = DetectedIssueStatus._(
    valueString: 'preliminary',
    valueEnum: DetectedIssueStatusEnum.preliminary,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/detectedissue-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Preliminary',
    ),
  );

  /// final_
  static const DetectedIssueStatus final_ = DetectedIssueStatus._(
    valueString: 'final',
    valueEnum: DetectedIssueStatusEnum.final_,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/detectedissue-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Final',
    ),
  );

  /// amended
  static const DetectedIssueStatus amended = DetectedIssueStatus._(
    valueString: 'amended',
    valueEnum: DetectedIssueStatusEnum.amended,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/detectedissue-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Amended',
    ),
  );

  /// corrected
  static const DetectedIssueStatus corrected = DetectedIssueStatus._(
    valueString: 'corrected',
    valueEnum: DetectedIssueStatusEnum.corrected,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/detectedissue-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Corrected',
    ),
  );

  /// cancelled
  static const DetectedIssueStatus cancelled = DetectedIssueStatus._(
    valueString: 'cancelled',
    valueEnum: DetectedIssueStatusEnum.cancelled,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/detectedissue-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Cancelled',
    ),
  );

  /// entered_in_error
  static const DetectedIssueStatus enteredInError = DetectedIssueStatus._(
    valueString: 'entered-in-error',
    valueEnum: DetectedIssueStatusEnum.enteredInError,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/detectedissue-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Entered in Error',
    ),
  );

  /// unknown
  static const DetectedIssueStatus unknown = DetectedIssueStatus._(
    valueString: 'unknown',
    valueEnum: DetectedIssueStatusEnum.unknown,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/detectedissue-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Unknown',
    ),
  );

  /// mitigated
  static const DetectedIssueStatus mitigated = DetectedIssueStatus._(
    valueString: 'mitigated',
    valueEnum: DetectedIssueStatusEnum.mitigated,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/detectedissue-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Mitigated',
    ),
  );

  /// List of all enum-like values
  static final List<DetectedIssueStatus> values = [
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
  DetectedIssueStatus withElement(Element? newElement) {
    return DetectedIssueStatus._(
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
  DetectedIssueStatus clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  DetectedIssueStatusCopyWithImpl<DetectedIssueStatus> get copyWith =>
      DetectedIssueStatusCopyWithImpl<DetectedIssueStatus>(
        this,
        (v) => v as DetectedIssueStatus,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class DetectedIssueStatusCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  DetectedIssueStatusCopyWithImpl(super._value, super._then);

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
      DetectedIssueStatus(
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
