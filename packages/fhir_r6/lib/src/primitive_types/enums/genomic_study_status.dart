// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for GenomicStudyStatus
enum GenomicStudyStatusEnum {
  /// registered
  registered,

  /// available
  available,

  /// cancelled
  cancelled,

  /// entered-in-error
  enteredInError,

  /// unknown
  unknown,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case GenomicStudyStatusEnum.registered:
        return 'registered';
      case GenomicStudyStatusEnum.available:
        return 'available';
      case GenomicStudyStatusEnum.cancelled:
        return 'cancelled';
      case GenomicStudyStatusEnum.enteredInError:
        return 'entered-in-error';
      case GenomicStudyStatusEnum.unknown:
        return 'unknown';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static GenomicStudyStatusEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return GenomicStudyStatusEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static GenomicStudyStatusEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'registered':
        return GenomicStudyStatusEnum.registered;
      case 'available':
        return GenomicStudyStatusEnum.available;
      case 'cancelled':
        return GenomicStudyStatusEnum.cancelled;
      case 'entered-in-error':
        return GenomicStudyStatusEnum.enteredInError;
      case 'unknown':
        return GenomicStudyStatusEnum.unknown;
    }
    return null;
  }
}

/// The status of the GenomicStudy.
class GenomicStudyStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const GenomicStudyStatus._({
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
  factory GenomicStudyStatus(
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
    final valueEnum = GenomicStudyStatusEnum.fromString(valueString);
    return GenomicStudyStatus._(
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

  /// Factory constructor to create [GenomicStudyStatus]
  /// from JSON.
  factory GenomicStudyStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = GenomicStudyStatusEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GenomicStudyStatus._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'GenomicStudyStatus cannot be constructed from JSON.',
      );
    }
    return GenomicStudyStatus._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for GenomicStudyStatus
  final GenomicStudyStatusEnum? valueEnum;

  /// registered
  static const GenomicStudyStatus registered = GenomicStudyStatus._(
    valueString: 'registered',
    valueEnum: GenomicStudyStatusEnum.registered,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/genomicstudy-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Registered',
    ),
  );

  /// available
  static const GenomicStudyStatus available = GenomicStudyStatus._(
    valueString: 'available',
    valueEnum: GenomicStudyStatusEnum.available,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/genomicstudy-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Available',
    ),
  );

  /// cancelled
  static const GenomicStudyStatus cancelled = GenomicStudyStatus._(
    valueString: 'cancelled',
    valueEnum: GenomicStudyStatusEnum.cancelled,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/genomicstudy-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Cancelled',
    ),
  );

  /// entered_in_error
  static const GenomicStudyStatus enteredInError = GenomicStudyStatus._(
    valueString: 'entered-in-error',
    valueEnum: GenomicStudyStatusEnum.enteredInError,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/genomicstudy-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Entered in Error',
    ),
  );

  /// unknown
  static const GenomicStudyStatus unknown = GenomicStudyStatus._(
    valueString: 'unknown',
    valueEnum: GenomicStudyStatusEnum.unknown,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/genomicstudy-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Unknown',
    ),
  );

  /// List of all enum-like values
  static final List<GenomicStudyStatus> values = [
    registered,
    available,
    cancelled,
    enteredInError,
    unknown,
  ];

  /// Returns the enum value with an element attached
  GenomicStudyStatus withElement(Element? newElement) {
    return GenomicStudyStatus._(
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
  GenomicStudyStatus clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  GenomicStudyStatusCopyWithImpl<GenomicStudyStatus> get copyWith =>
      GenomicStudyStatusCopyWithImpl<GenomicStudyStatus>(
        this,
        (v) => v as GenomicStudyStatus,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class GenomicStudyStatusCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  GenomicStudyStatusCopyWithImpl(super._value, super._then);

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
      GenomicStudyStatus(
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
