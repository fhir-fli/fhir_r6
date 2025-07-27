// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ClaimProcessingCodes
enum ClaimProcessingCodesEnum {
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
      case ClaimProcessingCodesEnum.queued:
        return 'queued';
      case ClaimProcessingCodesEnum.complete:
        return 'complete';
      case ClaimProcessingCodesEnum.error:
        return 'error';
      case ClaimProcessingCodesEnum.partial:
        return 'partial';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ClaimProcessingCodesEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return ClaimProcessingCodesEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ClaimProcessingCodesEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'queued':
        return ClaimProcessingCodesEnum.queued;
      case 'complete':
        return ClaimProcessingCodesEnum.complete;
      case 'error':
        return ClaimProcessingCodesEnum.error;
      case 'partial':
        return ClaimProcessingCodesEnum.partial;
    }
    return null;
  }
}

/// This value set includes Claim Processing Outcome codes.
class ClaimProcessingCodes extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const ClaimProcessingCodes._({
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
  factory ClaimProcessingCodes(
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
    final valueEnum = ClaimProcessingCodesEnum.fromString(valueString);
    return ClaimProcessingCodes._(
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

  /// Factory constructor to create [ClaimProcessingCodes]
  /// from JSON.
  factory ClaimProcessingCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = ClaimProcessingCodesEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ClaimProcessingCodes._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ClaimProcessingCodes cannot be constructed from JSON.',
      );
    }
    return ClaimProcessingCodes._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for ClaimProcessingCodes
  final ClaimProcessingCodesEnum? valueEnum;

  /// queued
  static const ClaimProcessingCodes queued = ClaimProcessingCodes._(
    valueString: 'queued',
    valueEnum: ClaimProcessingCodesEnum.queued,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/claim-outcome',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Queued',
    ),
  );

  /// complete
  static const ClaimProcessingCodes complete = ClaimProcessingCodes._(
    valueString: 'complete',
    valueEnum: ClaimProcessingCodesEnum.complete,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/claim-outcome',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Processing Complete',
    ),
  );

  /// error
  static const ClaimProcessingCodes error = ClaimProcessingCodes._(
    valueString: 'error',
    valueEnum: ClaimProcessingCodesEnum.error,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/claim-outcome',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Error',
    ),
  );

  /// partial
  static const ClaimProcessingCodes partial = ClaimProcessingCodes._(
    valueString: 'partial',
    valueEnum: ClaimProcessingCodesEnum.partial,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/claim-outcome',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Partial Processing',
    ),
  );

  /// List of all enum-like values
  static final List<ClaimProcessingCodes> values = [
    queued,
    complete,
    error,
    partial,
  ];

  /// Returns the enum value with an element attached
  ClaimProcessingCodes withElement(Element? newElement) {
    return ClaimProcessingCodes._(
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
  ClaimProcessingCodes clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  ClaimProcessingCodesCopyWithImpl<ClaimProcessingCodes> get copyWith =>
      ClaimProcessingCodesCopyWithImpl<ClaimProcessingCodes>(
        this,
        (v) => v as ClaimProcessingCodes,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class ClaimProcessingCodesCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  ClaimProcessingCodesCopyWithImpl(super._value, super._then);

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
      ClaimProcessingCodes(
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
