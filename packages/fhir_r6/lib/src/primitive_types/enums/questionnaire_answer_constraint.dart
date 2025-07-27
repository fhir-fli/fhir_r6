// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for QuestionnaireAnswerConstraint
enum QuestionnaireAnswerConstraintEnum {
  /// optionsOnly
  optionsOnly,

  /// optionsOrType
  optionsOrType,

  /// optionsOrString
  optionsOrString,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case QuestionnaireAnswerConstraintEnum.optionsOnly:
        return 'optionsOnly';
      case QuestionnaireAnswerConstraintEnum.optionsOrType:
        return 'optionsOrType';
      case QuestionnaireAnswerConstraintEnum.optionsOrString:
        return 'optionsOrString';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static QuestionnaireAnswerConstraintEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return QuestionnaireAnswerConstraintEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static QuestionnaireAnswerConstraintEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'optionsOnly':
        return QuestionnaireAnswerConstraintEnum.optionsOnly;
      case 'optionsOrType':
        return QuestionnaireAnswerConstraintEnum.optionsOrType;
      case 'optionsOrString':
        return QuestionnaireAnswerConstraintEnum.optionsOrString;
    }
    return null;
  }
}

/// Codes that describe the types of constraints possible on a question
/// item that has a list of permitted answers
class QuestionnaireAnswerConstraint extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const QuestionnaireAnswerConstraint._({
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
  factory QuestionnaireAnswerConstraint(
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
    final valueEnum = QuestionnaireAnswerConstraintEnum.fromString(valueString);
    return QuestionnaireAnswerConstraint._(
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

  /// Factory constructor to create [QuestionnaireAnswerConstraint]
  /// from JSON.
  factory QuestionnaireAnswerConstraint.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = QuestionnaireAnswerConstraintEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return QuestionnaireAnswerConstraint._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'QuestionnaireAnswerConstraint cannot be constructed from JSON.',
      );
    }
    return QuestionnaireAnswerConstraint._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for QuestionnaireAnswerConstraint
  final QuestionnaireAnswerConstraintEnum? valueEnum;

  /// optionsOnly
  static const QuestionnaireAnswerConstraint optionsOnly =
      QuestionnaireAnswerConstraint._(
    valueString: 'optionsOnly',
    valueEnum: QuestionnaireAnswerConstraintEnum.optionsOnly,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/questionnaire-answer-constraint',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Options only',
    ),
  );

  /// optionsOrType
  static const QuestionnaireAnswerConstraint optionsOrType =
      QuestionnaireAnswerConstraint._(
    valueString: 'optionsOrType',
    valueEnum: QuestionnaireAnswerConstraintEnum.optionsOrType,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/questionnaire-answer-constraint',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: "Options or 'type'",
    ),
  );

  /// optionsOrString
  static const QuestionnaireAnswerConstraint optionsOrString =
      QuestionnaireAnswerConstraint._(
    valueString: 'optionsOrString',
    valueEnum: QuestionnaireAnswerConstraintEnum.optionsOrString,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/questionnaire-answer-constraint',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Options or string',
    ),
  );

  /// List of all enum-like values
  static final List<QuestionnaireAnswerConstraint> values = [
    optionsOnly,
    optionsOrType,
    optionsOrString,
  ];

  /// Returns the enum value with an element attached
  QuestionnaireAnswerConstraint withElement(Element? newElement) {
    return QuestionnaireAnswerConstraint._(
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
  QuestionnaireAnswerConstraint clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  QuestionnaireAnswerConstraintCopyWithImpl<QuestionnaireAnswerConstraint>
      get copyWith => QuestionnaireAnswerConstraintCopyWithImpl<
              QuestionnaireAnswerConstraint>(
            this,
            (v) => v as QuestionnaireAnswerConstraint,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class QuestionnaireAnswerConstraintCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  QuestionnaireAnswerConstraintCopyWithImpl(super._value, super._then);

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
      QuestionnaireAnswerConstraint(
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
