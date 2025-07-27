// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for AssertionManualCompletionType
enum AssertionManualCompletionTypeEnum {
  /// fail
  fail,

  /// pass
  pass,

  /// skip
  skip,

  /// stop
  stop,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case AssertionManualCompletionTypeEnum.fail:
        return 'fail';
      case AssertionManualCompletionTypeEnum.pass:
        return 'pass';
      case AssertionManualCompletionTypeEnum.skip:
        return 'skip';
      case AssertionManualCompletionTypeEnum.stop:
        return 'stop';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static AssertionManualCompletionTypeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return AssertionManualCompletionTypeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static AssertionManualCompletionTypeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'fail':
        return AssertionManualCompletionTypeEnum.fail;
      case 'pass':
        return AssertionManualCompletionTypeEnum.pass;
      case 'skip':
        return AssertionManualCompletionTypeEnum.skip;
      case 'stop':
        return AssertionManualCompletionTypeEnum.stop;
    }
    return null;
  }
}

/// The type of manual completion to use for assertion.
class AssertionManualCompletionType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const AssertionManualCompletionType._({
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
  factory AssertionManualCompletionType(
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
    final valueEnum = AssertionManualCompletionTypeEnum.fromString(valueString);
    return AssertionManualCompletionType._(
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

  /// Factory constructor to create [AssertionManualCompletionType]
  /// from JSON.
  factory AssertionManualCompletionType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = AssertionManualCompletionTypeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AssertionManualCompletionType._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AssertionManualCompletionType cannot be constructed from JSON.',
      );
    }
    return AssertionManualCompletionType._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for AssertionManualCompletionType
  final AssertionManualCompletionTypeEnum? valueEnum;

  /// fail
  static const AssertionManualCompletionType fail =
      AssertionManualCompletionType._(
    valueString: 'fail',
    valueEnum: AssertionManualCompletionTypeEnum.fail,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/assert-manual-completion-codes',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Fail',
    ),
  );

  /// pass
  static const AssertionManualCompletionType pass =
      AssertionManualCompletionType._(
    valueString: 'pass',
    valueEnum: AssertionManualCompletionTypeEnum.pass,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/assert-manual-completion-codes',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Pass',
    ),
  );

  /// skip
  static const AssertionManualCompletionType skip =
      AssertionManualCompletionType._(
    valueString: 'skip',
    valueEnum: AssertionManualCompletionTypeEnum.skip,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/assert-manual-completion-codes',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Skip',
    ),
  );

  /// stop
  static const AssertionManualCompletionType stop =
      AssertionManualCompletionType._(
    valueString: 'stop',
    valueEnum: AssertionManualCompletionTypeEnum.stop,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/assert-manual-completion-codes',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Stop',
    ),
  );

  /// List of all enum-like values
  static final List<AssertionManualCompletionType> values = [
    fail,
    pass,
    skip,
    stop,
  ];

  /// Returns the enum value with an element attached
  AssertionManualCompletionType withElement(Element? newElement) {
    return AssertionManualCompletionType._(
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
  AssertionManualCompletionType clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  AssertionManualCompletionTypeCopyWithImpl<AssertionManualCompletionType>
      get copyWith => AssertionManualCompletionTypeCopyWithImpl<
              AssertionManualCompletionType>(
            this,
            (v) => v as AssertionManualCompletionType,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class AssertionManualCompletionTypeCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  AssertionManualCompletionTypeCopyWithImpl(super._value, super._then);

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
      AssertionManualCompletionType(
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
