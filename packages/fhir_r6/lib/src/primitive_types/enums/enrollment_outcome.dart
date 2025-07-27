// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for EnrollmentOutcome
enum EnrollmentOutcomeEnum {
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
      case EnrollmentOutcomeEnum.queued:
        return 'queued';
      case EnrollmentOutcomeEnum.complete:
        return 'complete';
      case EnrollmentOutcomeEnum.error:
        return 'error';
      case EnrollmentOutcomeEnum.partial:
        return 'partial';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static EnrollmentOutcomeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return EnrollmentOutcomeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static EnrollmentOutcomeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'queued':
        return EnrollmentOutcomeEnum.queued;
      case 'complete':
        return EnrollmentOutcomeEnum.complete;
      case 'error':
        return EnrollmentOutcomeEnum.error;
      case 'partial':
        return EnrollmentOutcomeEnum.partial;
    }
    return null;
  }
}

/// The outcome of the processing.
class EnrollmentOutcome extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const EnrollmentOutcome._({
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
  factory EnrollmentOutcome(
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
    final valueEnum = EnrollmentOutcomeEnum.fromString(valueString);
    return EnrollmentOutcome._(
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

  /// Factory constructor to create [EnrollmentOutcome]
  /// from JSON.
  factory EnrollmentOutcome.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = EnrollmentOutcomeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EnrollmentOutcome._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'EnrollmentOutcome cannot be constructed from JSON.',
      );
    }
    return EnrollmentOutcome._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for EnrollmentOutcome
  final EnrollmentOutcomeEnum? valueEnum;

  /// queued
  static const EnrollmentOutcome queued = EnrollmentOutcome._(
    valueString: 'queued',
    valueEnum: EnrollmentOutcomeEnum.queued,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/enrollment-outcome',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Queued',
    ),
  );

  /// complete
  static const EnrollmentOutcome complete = EnrollmentOutcome._(
    valueString: 'complete',
    valueEnum: EnrollmentOutcomeEnum.complete,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/enrollment-outcome',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Processing Complete',
    ),
  );

  /// error
  static const EnrollmentOutcome error = EnrollmentOutcome._(
    valueString: 'error',
    valueEnum: EnrollmentOutcomeEnum.error,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/enrollment-outcome',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Error',
    ),
  );

  /// partial
  static const EnrollmentOutcome partial = EnrollmentOutcome._(
    valueString: 'partial',
    valueEnum: EnrollmentOutcomeEnum.partial,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/enrollment-outcome',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Partial Processing',
    ),
  );

  /// List of all enum-like values
  static final List<EnrollmentOutcome> values = [
    queued,
    complete,
    error,
    partial,
  ];

  /// Returns the enum value with an element attached
  EnrollmentOutcome withElement(Element? newElement) {
    return EnrollmentOutcome._(
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
  EnrollmentOutcome clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  EnrollmentOutcomeCopyWithImpl<EnrollmentOutcome> get copyWith =>
      EnrollmentOutcomeCopyWithImpl<EnrollmentOutcome>(
        this,
        (v) => v as EnrollmentOutcome,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class EnrollmentOutcomeCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  EnrollmentOutcomeCopyWithImpl(super._value, super._then);

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
      EnrollmentOutcome(
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
