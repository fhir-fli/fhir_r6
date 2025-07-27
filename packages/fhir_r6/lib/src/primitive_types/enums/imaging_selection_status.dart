// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ImagingSelectionStatus
enum ImagingSelectionStatusEnum {
  /// available
  available,

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
      case ImagingSelectionStatusEnum.available:
        return 'available';
      case ImagingSelectionStatusEnum.enteredInError:
        return 'entered-in-error';
      case ImagingSelectionStatusEnum.unknown:
        return 'unknown';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ImagingSelectionStatusEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return ImagingSelectionStatusEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ImagingSelectionStatusEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'available':
        return ImagingSelectionStatusEnum.available;
      case 'entered-in-error':
        return ImagingSelectionStatusEnum.enteredInError;
      case 'unknown':
        return ImagingSelectionStatusEnum.unknown;
    }
    return null;
  }
}

/// The status of the ImagingSelection.
class ImagingSelectionStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const ImagingSelectionStatus._({
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
  factory ImagingSelectionStatus(
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
    final valueEnum = ImagingSelectionStatusEnum.fromString(valueString);
    return ImagingSelectionStatus._(
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

  /// Factory constructor to create [ImagingSelectionStatus]
  /// from JSON.
  factory ImagingSelectionStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = ImagingSelectionStatusEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImagingSelectionStatus._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ImagingSelectionStatus cannot be constructed from JSON.',
      );
    }
    return ImagingSelectionStatus._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for ImagingSelectionStatus
  final ImagingSelectionStatusEnum? valueEnum;

  /// available
  static const ImagingSelectionStatus available = ImagingSelectionStatus._(
    valueString: 'available',
    valueEnum: ImagingSelectionStatusEnum.available,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/imagingselection-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Available',
    ),
  );

  /// entered_in_error
  static const ImagingSelectionStatus enteredInError = ImagingSelectionStatus._(
    valueString: 'entered-in-error',
    valueEnum: ImagingSelectionStatusEnum.enteredInError,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/imagingselection-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Entered in Error',
    ),
  );

  /// unknown
  static const ImagingSelectionStatus unknown = ImagingSelectionStatus._(
    valueString: 'unknown',
    valueEnum: ImagingSelectionStatusEnum.unknown,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/imagingselection-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Unknown',
    ),
  );

  /// List of all enum-like values
  static final List<ImagingSelectionStatus> values = [
    available,
    enteredInError,
    unknown,
  ];

  /// Returns the enum value with an element attached
  ImagingSelectionStatus withElement(Element? newElement) {
    return ImagingSelectionStatus._(
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
  ImagingSelectionStatus clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  ImagingSelectionStatusCopyWithImpl<ImagingSelectionStatus> get copyWith =>
      ImagingSelectionStatusCopyWithImpl<ImagingSelectionStatus>(
        this,
        (v) => v as ImagingSelectionStatus,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class ImagingSelectionStatusCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  ImagingSelectionStatusCopyWithImpl(super._value, super._then);

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
      ImagingSelectionStatus(
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
