// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for MedicationStatusCodes
enum MedicationStatusCodesEnum {
  /// active
  active,

  /// inactive
  inactive,

  /// entered-in-error
  enteredInError,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case MedicationStatusCodesEnum.active:
        return 'active';
      case MedicationStatusCodesEnum.inactive:
        return 'inactive';
      case MedicationStatusCodesEnum.enteredInError:
        return 'entered-in-error';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static MedicationStatusCodesEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return MedicationStatusCodesEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static MedicationStatusCodesEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'active':
        return MedicationStatusCodesEnum.active;
      case 'inactive':
        return MedicationStatusCodesEnum.inactive;
      case 'entered-in-error':
        return MedicationStatusCodesEnum.enteredInError;
    }
    return null;
  }
}

/// Medication Status Codes
class MedicationStatusCodes extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const MedicationStatusCodes._({
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
  factory MedicationStatusCodes(
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
    final valueEnum = MedicationStatusCodesEnum.fromString(valueString);
    return MedicationStatusCodes._(
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

  /// Factory constructor to create [MedicationStatusCodes]
  /// from JSON.
  factory MedicationStatusCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = MedicationStatusCodesEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationStatusCodes._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'MedicationStatusCodes cannot be constructed from JSON.',
      );
    }
    return MedicationStatusCodes._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for MedicationStatusCodes
  final MedicationStatusCodesEnum? valueEnum;

  /// active
  static const MedicationStatusCodes active = MedicationStatusCodes._(
    valueString: 'active',
    valueEnum: MedicationStatusCodesEnum.active,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/medication-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Active',
    ),
  );

  /// inactive
  static const MedicationStatusCodes inactive = MedicationStatusCodes._(
    valueString: 'inactive',
    valueEnum: MedicationStatusCodesEnum.inactive,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/medication-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Inactive',
    ),
  );

  /// entered_in_error
  static const MedicationStatusCodes enteredInError = MedicationStatusCodes._(
    valueString: 'entered-in-error',
    valueEnum: MedicationStatusCodesEnum.enteredInError,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/medication-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Entered in Error',
    ),
  );

  /// List of all enum-like values
  static final List<MedicationStatusCodes> values = [
    active,
    inactive,
    enteredInError,
  ];

  /// Returns the enum value with an element attached
  MedicationStatusCodes withElement(Element? newElement) {
    return MedicationStatusCodes._(
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
  MedicationStatusCodes clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  MedicationStatusCodesCopyWithImpl<MedicationStatusCodes> get copyWith =>
      MedicationStatusCodesCopyWithImpl<MedicationStatusCodes>(
        this,
        (v) => v as MedicationStatusCodes,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class MedicationStatusCodesCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  MedicationStatusCodesCopyWithImpl(super._value, super._then);

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
      MedicationStatusCodes(
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
