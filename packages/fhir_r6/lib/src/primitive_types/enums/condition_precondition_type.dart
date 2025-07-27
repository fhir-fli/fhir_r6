// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ConditionPreconditionType
enum ConditionPreconditionTypeEnum {
  /// sensitive
  sensitive,

  /// specific
  specific,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ConditionPreconditionTypeEnum.sensitive:
        return 'sensitive';
      case ConditionPreconditionTypeEnum.specific:
        return 'specific';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ConditionPreconditionTypeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return ConditionPreconditionTypeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ConditionPreconditionTypeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'sensitive':
        return ConditionPreconditionTypeEnum.sensitive;
      case 'specific':
        return ConditionPreconditionTypeEnum.specific;
    }
    return null;
  }
}

/// Kind of precondition for the condition.
class ConditionPreconditionType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const ConditionPreconditionType._({
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
  factory ConditionPreconditionType(
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
    final valueEnum = ConditionPreconditionTypeEnum.fromString(valueString);
    return ConditionPreconditionType._(
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

  /// Factory constructor to create [ConditionPreconditionType]
  /// from JSON.
  factory ConditionPreconditionType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = ConditionPreconditionTypeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConditionPreconditionType._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ConditionPreconditionType cannot be constructed from JSON.',
      );
    }
    return ConditionPreconditionType._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for ConditionPreconditionType
  final ConditionPreconditionTypeEnum? valueEnum;

  /// sensitive
  static const ConditionPreconditionType sensitive =
      ConditionPreconditionType._(
    valueString: 'sensitive',
    valueEnum: ConditionPreconditionTypeEnum.sensitive,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/condition-precondition-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Sensitive',
    ),
  );

  /// specific
  static const ConditionPreconditionType specific = ConditionPreconditionType._(
    valueString: 'specific',
    valueEnum: ConditionPreconditionTypeEnum.specific,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/condition-precondition-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Specific',
    ),
  );

  /// List of all enum-like values
  static final List<ConditionPreconditionType> values = [
    sensitive,
    specific,
  ];

  /// Returns the enum value with an element attached
  ConditionPreconditionType withElement(Element? newElement) {
    return ConditionPreconditionType._(
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
  ConditionPreconditionType clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  ConditionPreconditionTypeCopyWithImpl<ConditionPreconditionType>
      get copyWith =>
          ConditionPreconditionTypeCopyWithImpl<ConditionPreconditionType>(
            this,
            (v) => v as ConditionPreconditionType,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class ConditionPreconditionTypeCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  ConditionPreconditionTypeCopyWithImpl(super._value, super._then);

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
      ConditionPreconditionType(
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
