// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for FormularyItemStatusCodes
enum FormularyItemStatusCodesEnum {
  /// active
  active,

  /// entered-in-error
  enteredInError,

  /// inactive
  inactive,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case FormularyItemStatusCodesEnum.active:
        return 'active';
      case FormularyItemStatusCodesEnum.enteredInError:
        return 'entered-in-error';
      case FormularyItemStatusCodesEnum.inactive:
        return 'inactive';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static FormularyItemStatusCodesEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return FormularyItemStatusCodesEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static FormularyItemStatusCodesEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'active':
        return FormularyItemStatusCodesEnum.active;
      case 'entered-in-error':
        return FormularyItemStatusCodesEnum.enteredInError;
      case 'inactive':
        return FormularyItemStatusCodesEnum.inactive;
    }
    return null;
  }
}

/// FormularyItem Status Codes
class FormularyItemStatusCodes extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const FormularyItemStatusCodes._({
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
  factory FormularyItemStatusCodes(
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
    final valueEnum = FormularyItemStatusCodesEnum.fromString(valueString);
    return FormularyItemStatusCodes._(
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

  /// Factory constructor to create [FormularyItemStatusCodes]
  /// from JSON.
  factory FormularyItemStatusCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = FormularyItemStatusCodesEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FormularyItemStatusCodes._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'FormularyItemStatusCodes cannot be constructed from JSON.',
      );
    }
    return FormularyItemStatusCodes._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for FormularyItemStatusCodes
  final FormularyItemStatusCodesEnum? valueEnum;

  /// active
  static const FormularyItemStatusCodes active = FormularyItemStatusCodes._(
    valueString: 'active',
    valueEnum: FormularyItemStatusCodesEnum.active,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/formularyitem-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Active',
    ),
  );

  /// entered_in_error
  static const FormularyItemStatusCodes enteredInError =
      FormularyItemStatusCodes._(
    valueString: 'entered-in-error',
    valueEnum: FormularyItemStatusCodesEnum.enteredInError,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/formularyitem-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Entered in Error',
    ),
  );

  /// inactive
  static const FormularyItemStatusCodes inactive = FormularyItemStatusCodes._(
    valueString: 'inactive',
    valueEnum: FormularyItemStatusCodesEnum.inactive,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/formularyitem-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Inactive',
    ),
  );

  /// List of all enum-like values
  static final List<FormularyItemStatusCodes> values = [
    active,
    enteredInError,
    inactive,
  ];

  /// Returns the enum value with an element attached
  FormularyItemStatusCodes withElement(Element? newElement) {
    return FormularyItemStatusCodes._(
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
  FormularyItemStatusCodes clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  FormularyItemStatusCodesCopyWithImpl<FormularyItemStatusCodes> get copyWith =>
      FormularyItemStatusCodesCopyWithImpl<FormularyItemStatusCodes>(
        this,
        (v) => v as FormularyItemStatusCodes,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class FormularyItemStatusCodesCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  FormularyItemStatusCodesCopyWithImpl(super._value, super._then);

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
      FormularyItemStatusCodes(
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
