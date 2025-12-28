part of '../primitive_types.dart';

/// Actual enum for BiologicallyDerivedProductDispenseStatus
enum BiologicallyDerivedProductDispenseStatusEnum {
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
      case BiologicallyDerivedProductDispenseStatusEnum.preparation:
        return 'preparation';
      case BiologicallyDerivedProductDispenseStatusEnum.inProgress:
        return 'in-progress';
      case BiologicallyDerivedProductDispenseStatusEnum.allocated:
        return 'allocated';
      case BiologicallyDerivedProductDispenseStatusEnum.issued:
        return 'issued';
      case BiologicallyDerivedProductDispenseStatusEnum.unfulfilled:
        return 'unfulfilled';
      case BiologicallyDerivedProductDispenseStatusEnum.returned:
        return 'returned';
      case BiologicallyDerivedProductDispenseStatusEnum.enteredInError:
        return 'entered-in-error';
      case BiologicallyDerivedProductDispenseStatusEnum.unknown:
        return 'unknown';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static BiologicallyDerivedProductDispenseStatusEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return BiologicallyDerivedProductDispenseStatusEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static BiologicallyDerivedProductDispenseStatusEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'preparation':
        return BiologicallyDerivedProductDispenseStatusEnum.preparation;
      case 'in-progress':
        return BiologicallyDerivedProductDispenseStatusEnum.inProgress;
      case 'allocated':
        return BiologicallyDerivedProductDispenseStatusEnum.allocated;
      case 'issued':
        return BiologicallyDerivedProductDispenseStatusEnum.issued;
      case 'unfulfilled':
        return BiologicallyDerivedProductDispenseStatusEnum.unfulfilled;
      case 'returned':
        return BiologicallyDerivedProductDispenseStatusEnum.returned;
      case 'entered-in-error':
        return BiologicallyDerivedProductDispenseStatusEnum.enteredInError;
      case 'unknown':
        return BiologicallyDerivedProductDispenseStatusEnum.unknown;
    }
    return null;
  }
}

/// Biologically Derived Product Dispense Status Codes.
class BiologicallyDerivedProductDispenseStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const BiologicallyDerivedProductDispenseStatus._({
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
  factory BiologicallyDerivedProductDispenseStatus(
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
        BiologicallyDerivedProductDispenseStatusEnum.fromString(valueString);
    return BiologicallyDerivedProductDispenseStatus._(
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

  /// Factory constructor to create [BiologicallyDerivedProductDispenseStatus]
  /// from JSON.
  factory BiologicallyDerivedProductDispenseStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum =
        BiologicallyDerivedProductDispenseStatusEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return BiologicallyDerivedProductDispenseStatus._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'BiologicallyDerivedProductDispenseStatus cannot be constructed from JSON.',
      );
    }
    return BiologicallyDerivedProductDispenseStatus._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for BiologicallyDerivedProductDispenseStatus
  final BiologicallyDerivedProductDispenseStatusEnum? valueEnum;

  /// preparation
  static const BiologicallyDerivedProductDispenseStatus preparation =
      BiologicallyDerivedProductDispenseStatus._(
    valueString: 'preparation',
    valueEnum: BiologicallyDerivedProductDispenseStatusEnum.preparation,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/biologicallyderivedproductdispense-status',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Preparation',
    ),
  );

  /// in_progress
  static const BiologicallyDerivedProductDispenseStatus inProgress =
      BiologicallyDerivedProductDispenseStatus._(
    valueString: 'in-progress',
    valueEnum: BiologicallyDerivedProductDispenseStatusEnum.inProgress,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/biologicallyderivedproductdispense-status',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'In Progress',
    ),
  );

  /// allocated
  static const BiologicallyDerivedProductDispenseStatus allocated =
      BiologicallyDerivedProductDispenseStatus._(
    valueString: 'allocated',
    valueEnum: BiologicallyDerivedProductDispenseStatusEnum.allocated,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/biologicallyderivedproductdispense-status',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Allocated',
    ),
  );

  /// issued
  static const BiologicallyDerivedProductDispenseStatus issued =
      BiologicallyDerivedProductDispenseStatus._(
    valueString: 'issued',
    valueEnum: BiologicallyDerivedProductDispenseStatusEnum.issued,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/biologicallyderivedproductdispense-status',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Issued',
    ),
  );

  /// unfulfilled
  static const BiologicallyDerivedProductDispenseStatus unfulfilled =
      BiologicallyDerivedProductDispenseStatus._(
    valueString: 'unfulfilled',
    valueEnum: BiologicallyDerivedProductDispenseStatusEnum.unfulfilled,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/biologicallyderivedproductdispense-status',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Unfulfilled',
    ),
  );

  /// returned
  static const BiologicallyDerivedProductDispenseStatus returned =
      BiologicallyDerivedProductDispenseStatus._(
    valueString: 'returned',
    valueEnum: BiologicallyDerivedProductDispenseStatusEnum.returned,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/biologicallyderivedproductdispense-status',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Returned',
    ),
  );

  /// entered_in_error
  static const BiologicallyDerivedProductDispenseStatus enteredInError =
      BiologicallyDerivedProductDispenseStatus._(
    valueString: 'entered-in-error',
    valueEnum: BiologicallyDerivedProductDispenseStatusEnum.enteredInError,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/biologicallyderivedproductdispense-status',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Entered in Error',
    ),
  );

  /// unknown
  static const BiologicallyDerivedProductDispenseStatus unknown =
      BiologicallyDerivedProductDispenseStatus._(
    valueString: 'unknown',
    valueEnum: BiologicallyDerivedProductDispenseStatusEnum.unknown,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/biologicallyderivedproductdispense-status',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Unknown',
    ),
  );

  /// List of all enum-like values
  static final List<BiologicallyDerivedProductDispenseStatus> values = [
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
  BiologicallyDerivedProductDispenseStatus withElement(Element? newElement) {
    return BiologicallyDerivedProductDispenseStatus._(
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
  BiologicallyDerivedProductDispenseStatus clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  BiologicallyDerivedProductDispenseStatusCopyWithImpl<
          BiologicallyDerivedProductDispenseStatus>
      get copyWith => BiologicallyDerivedProductDispenseStatusCopyWithImpl<
              BiologicallyDerivedProductDispenseStatus>(
            this,
            (v) => v as BiologicallyDerivedProductDispenseStatus,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class BiologicallyDerivedProductDispenseStatusCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  BiologicallyDerivedProductDispenseStatusCopyWithImpl(
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
      BiologicallyDerivedProductDispenseStatus(
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
