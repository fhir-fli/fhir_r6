// ignore_for_file: unused_element_parameter, non_constant_identifier_names, lines_longer_than_80_chars
part of '../primitive_types.dart';

/// Actual enum for BiologicallyDerivedProductDispenseCodes
enum BiologicallyDerivedProductDispenseCodesEnum {
  /// preparation
  preparation,

  /// in-progress
  inProgress,

  /// allocated
  allocated,

  /// issued
  issued,

  /// unfulfilled
  unfulfilled,

  /// returned
  returned,

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
      case BiologicallyDerivedProductDispenseCodesEnum.preparation:
        return 'preparation';
      case BiologicallyDerivedProductDispenseCodesEnum.inProgress:
        return 'in-progress';
      case BiologicallyDerivedProductDispenseCodesEnum.allocated:
        return 'allocated';
      case BiologicallyDerivedProductDispenseCodesEnum.issued:
        return 'issued';
      case BiologicallyDerivedProductDispenseCodesEnum.unfulfilled:
        return 'unfulfilled';
      case BiologicallyDerivedProductDispenseCodesEnum.returned:
        return 'returned';
      case BiologicallyDerivedProductDispenseCodesEnum.enteredInError:
        return 'entered-in-error';
      case BiologicallyDerivedProductDispenseCodesEnum.unknown:
        return 'unknown';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static BiologicallyDerivedProductDispenseCodesEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return BiologicallyDerivedProductDispenseCodesEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static BiologicallyDerivedProductDispenseCodesEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'preparation':
        return BiologicallyDerivedProductDispenseCodesEnum.preparation;
      case 'in-progress':
        return BiologicallyDerivedProductDispenseCodesEnum.inProgress;
      case 'allocated':
        return BiologicallyDerivedProductDispenseCodesEnum.allocated;
      case 'issued':
        return BiologicallyDerivedProductDispenseCodesEnum.issued;
      case 'unfulfilled':
        return BiologicallyDerivedProductDispenseCodesEnum.unfulfilled;
      case 'returned':
        return BiologicallyDerivedProductDispenseCodesEnum.returned;
      case 'entered-in-error':
        return BiologicallyDerivedProductDispenseCodesEnum.enteredInError;
      case 'unknown':
        return BiologicallyDerivedProductDispenseCodesEnum.unknown;
    }
    return null;
  }
}

/// BiologicallyDerivedProductDispense Status Codes
class BiologicallyDerivedProductDispenseCodes extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const BiologicallyDerivedProductDispenseCodes._({
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
  factory BiologicallyDerivedProductDispenseCodes(
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
    final valueEnum =
        BiologicallyDerivedProductDispenseCodesEnum.fromString(valueString);
    return BiologicallyDerivedProductDispenseCodes._(
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

  /// Factory constructor to create [BiologicallyDerivedProductDispenseCodes]
  /// from JSON.
  factory BiologicallyDerivedProductDispenseCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum =
        BiologicallyDerivedProductDispenseCodesEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return BiologicallyDerivedProductDispenseCodes._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'BiologicallyDerivedProductDispenseCodes cannot be constructed from JSON.',
      );
    }
    return BiologicallyDerivedProductDispenseCodes._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for BiologicallyDerivedProductDispenseCodes
  final BiologicallyDerivedProductDispenseCodesEnum? valueEnum;

  /// preparation
  static const BiologicallyDerivedProductDispenseCodes preparation =
      BiologicallyDerivedProductDispenseCodes._(
    valueString: 'preparation',
    valueEnum: BiologicallyDerivedProductDispenseCodesEnum.preparation,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/biologicallyderivedproductdispense-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Preparation',
    ),
  );

  /// in_progress
  static const BiologicallyDerivedProductDispenseCodes inProgress =
      BiologicallyDerivedProductDispenseCodes._(
    valueString: 'in-progress',
    valueEnum: BiologicallyDerivedProductDispenseCodesEnum.inProgress,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/biologicallyderivedproductdispense-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'In Progress',
    ),
  );

  /// allocated
  static const BiologicallyDerivedProductDispenseCodes allocated =
      BiologicallyDerivedProductDispenseCodes._(
    valueString: 'allocated',
    valueEnum: BiologicallyDerivedProductDispenseCodesEnum.allocated,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/biologicallyderivedproductdispense-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Allocated',
    ),
  );

  /// issued
  static const BiologicallyDerivedProductDispenseCodes issued =
      BiologicallyDerivedProductDispenseCodes._(
    valueString: 'issued',
    valueEnum: BiologicallyDerivedProductDispenseCodesEnum.issued,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/biologicallyderivedproductdispense-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Issued',
    ),
  );

  /// unfulfilled
  static const BiologicallyDerivedProductDispenseCodes unfulfilled =
      BiologicallyDerivedProductDispenseCodes._(
    valueString: 'unfulfilled',
    valueEnum: BiologicallyDerivedProductDispenseCodesEnum.unfulfilled,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/biologicallyderivedproductdispense-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Unfulfilled',
    ),
  );

  /// returned
  static const BiologicallyDerivedProductDispenseCodes returned =
      BiologicallyDerivedProductDispenseCodes._(
    valueString: 'returned',
    valueEnum: BiologicallyDerivedProductDispenseCodesEnum.returned,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/biologicallyderivedproductdispense-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Returned',
    ),
  );

  /// entered_in_error
  static const BiologicallyDerivedProductDispenseCodes enteredInError =
      BiologicallyDerivedProductDispenseCodes._(
    valueString: 'entered-in-error',
    valueEnum: BiologicallyDerivedProductDispenseCodesEnum.enteredInError,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/biologicallyderivedproductdispense-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Entered in Error',
    ),
  );

  /// unknown
  static const BiologicallyDerivedProductDispenseCodes unknown =
      BiologicallyDerivedProductDispenseCodes._(
    valueString: 'unknown',
    valueEnum: BiologicallyDerivedProductDispenseCodesEnum.unknown,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/biologicallyderivedproductdispense-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Unknown',
    ),
  );

  /// List of all enum-like values
  static final List<BiologicallyDerivedProductDispenseCodes> values = [
    preparation,
    inProgress,
    allocated,
    issued,
    unfulfilled,
    returned,
    enteredInError,
    unknown,
  ];

  /// Returns the enum value with an element attached
  BiologicallyDerivedProductDispenseCodes withElement(Element? newElement) {
    return BiologicallyDerivedProductDispenseCodes._(
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
  BiologicallyDerivedProductDispenseCodes clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  BiologicallyDerivedProductDispenseCodesCopyWithImpl<
          BiologicallyDerivedProductDispenseCodes>
      get copyWith => BiologicallyDerivedProductDispenseCodesCopyWithImpl<
              BiologicallyDerivedProductDispenseCodes>(
            this,
            (v) => v as BiologicallyDerivedProductDispenseCodes,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class BiologicallyDerivedProductDispenseCodesCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  BiologicallyDerivedProductDispenseCodesCopyWithImpl(
    super._value,
    super._then,
  );

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
      BiologicallyDerivedProductDispenseCodes(
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
