// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for CompositionStatus
enum CompositionStatusEnum {
  /// registered
  registered,

  /// partial
  partial,

  /// preliminary
  preliminary,

  /// final
  final_,

  /// amended
  amended,

  /// corrected
  corrected,

  /// appended
  appended,

  /// cancelled
  cancelled,

  /// entered-in-error
  enteredInError,

  /// deprecated
  deprecated,

  /// unknown
  unknown,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case CompositionStatusEnum.registered:
        return 'registered';
      case CompositionStatusEnum.partial:
        return 'partial';
      case CompositionStatusEnum.preliminary:
        return 'preliminary';
      case CompositionStatusEnum.final_:
        return 'final';
      case CompositionStatusEnum.amended:
        return 'amended';
      case CompositionStatusEnum.corrected:
        return 'corrected';
      case CompositionStatusEnum.appended:
        return 'appended';
      case CompositionStatusEnum.cancelled:
        return 'cancelled';
      case CompositionStatusEnum.enteredInError:
        return 'entered-in-error';
      case CompositionStatusEnum.deprecated:
        return 'deprecated';
      case CompositionStatusEnum.unknown:
        return 'unknown';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static CompositionStatusEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return CompositionStatusEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static CompositionStatusEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'registered':
        return CompositionStatusEnum.registered;
      case 'partial':
        return CompositionStatusEnum.partial;
      case 'preliminary':
        return CompositionStatusEnum.preliminary;
      case 'final':
        return CompositionStatusEnum.final_;
      case 'amended':
        return CompositionStatusEnum.amended;
      case 'corrected':
        return CompositionStatusEnum.corrected;
      case 'appended':
        return CompositionStatusEnum.appended;
      case 'cancelled':
        return CompositionStatusEnum.cancelled;
      case 'entered-in-error':
        return CompositionStatusEnum.enteredInError;
      case 'deprecated':
        return CompositionStatusEnum.deprecated;
      case 'unknown':
        return CompositionStatusEnum.unknown;
    }
    return null;
  }
}

/// The workflow/clinical status of the composition.
class CompositionStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const CompositionStatus._({
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
  factory CompositionStatus(
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
    final valueEnum = CompositionStatusEnum.fromString(valueString);
    return CompositionStatus._(
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

  /// Factory constructor to create [CompositionStatus]
  /// from JSON.
  factory CompositionStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = CompositionStatusEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CompositionStatus._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CompositionStatus cannot be constructed from JSON.',
      );
    }
    return CompositionStatus._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for CompositionStatus
  final CompositionStatusEnum? valueEnum;

  /// registered
  static const CompositionStatus registered = CompositionStatus._(
    valueString: 'registered',
    valueEnum: CompositionStatusEnum.registered,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/composition-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Registered',
    ),
  );

  /// partial
  static const CompositionStatus partial = CompositionStatus._(
    valueString: 'partial',
    valueEnum: CompositionStatusEnum.partial,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/composition-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Partial',
    ),
  );

  /// preliminary
  static const CompositionStatus preliminary = CompositionStatus._(
    valueString: 'preliminary',
    valueEnum: CompositionStatusEnum.preliminary,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/composition-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Preliminary',
    ),
  );

  /// final_
  static const CompositionStatus final_ = CompositionStatus._(
    valueString: 'final',
    valueEnum: CompositionStatusEnum.final_,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/composition-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Final',
    ),
  );

  /// amended
  static const CompositionStatus amended = CompositionStatus._(
    valueString: 'amended',
    valueEnum: CompositionStatusEnum.amended,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/composition-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Amended',
    ),
  );

  /// corrected
  static const CompositionStatus corrected = CompositionStatus._(
    valueString: 'corrected',
    valueEnum: CompositionStatusEnum.corrected,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/composition-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Corrected',
    ),
  );

  /// appended
  static const CompositionStatus appended = CompositionStatus._(
    valueString: 'appended',
    valueEnum: CompositionStatusEnum.appended,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/composition-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Appended',
    ),
  );

  /// cancelled
  static const CompositionStatus cancelled = CompositionStatus._(
    valueString: 'cancelled',
    valueEnum: CompositionStatusEnum.cancelled,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/composition-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Cancelled',
    ),
  );

  /// entered_in_error
  static const CompositionStatus enteredInError = CompositionStatus._(
    valueString: 'entered-in-error',
    valueEnum: CompositionStatusEnum.enteredInError,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/composition-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Entered in Error',
    ),
  );

  /// deprecated
  static const CompositionStatus deprecated = CompositionStatus._(
    valueString: 'deprecated',
    valueEnum: CompositionStatusEnum.deprecated,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/composition-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Deprecated',
    ),
  );

  /// unknown
  static const CompositionStatus unknown = CompositionStatus._(
    valueString: 'unknown',
    valueEnum: CompositionStatusEnum.unknown,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/composition-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Unknown',
    ),
  );

  /// List of all enum-like values
  static final List<CompositionStatus> values = [
    registered,
    partial,
    preliminary,
    final_,
    amended,
    corrected,
    appended,
    cancelled,
    enteredInError,
    deprecated,
    unknown,
  ];

  /// Returns the enum value with an element attached
  CompositionStatus withElement(Element? newElement) {
    return CompositionStatus._(
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
  CompositionStatus clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  CompositionStatusCopyWithImpl<CompositionStatus> get copyWith =>
      CompositionStatusCopyWithImpl<CompositionStatus>(
        this,
        (v) => v as CompositionStatus,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class CompositionStatusCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  CompositionStatusCopyWithImpl(super._value, super._then);

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
      CompositionStatus(
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
