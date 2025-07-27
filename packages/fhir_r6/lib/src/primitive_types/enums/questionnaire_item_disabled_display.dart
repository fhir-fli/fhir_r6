// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for QuestionnaireItemDisabledDisplay
enum QuestionnaireItemDisabledDisplayEnum {
  /// hidden
  hidden,

  /// protected
  protected,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case QuestionnaireItemDisabledDisplayEnum.hidden:
        return 'hidden';
      case QuestionnaireItemDisabledDisplayEnum.protected:
        return 'protected';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static QuestionnaireItemDisabledDisplayEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return QuestionnaireItemDisabledDisplayEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static QuestionnaireItemDisabledDisplayEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'hidden':
        return QuestionnaireItemDisabledDisplayEnum.hidden;
      case 'protected':
        return QuestionnaireItemDisabledDisplayEnum.protected;
    }
    return null;
  }
}

/// Codes that guide the display of disabled questionnaire items
class QuestionnaireItemDisabledDisplay extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const QuestionnaireItemDisabledDisplay._({
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
  factory QuestionnaireItemDisabledDisplay(
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
        QuestionnaireItemDisabledDisplayEnum.fromString(valueString);
    return QuestionnaireItemDisabledDisplay._(
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

  /// Factory constructor to create [QuestionnaireItemDisabledDisplay]
  /// from JSON.
  factory QuestionnaireItemDisabledDisplay.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = QuestionnaireItemDisabledDisplayEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return QuestionnaireItemDisabledDisplay._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'QuestionnaireItemDisabledDisplay cannot be constructed from JSON.',
      );
    }
    return QuestionnaireItemDisabledDisplay._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for QuestionnaireItemDisabledDisplay
  final QuestionnaireItemDisabledDisplayEnum? valueEnum;

  /// hidden
  static const QuestionnaireItemDisabledDisplay hidden =
      QuestionnaireItemDisabledDisplay._(
    valueString: 'hidden',
    valueEnum: QuestionnaireItemDisabledDisplayEnum.hidden,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/questionnaire-disabled-display',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Hidden',
    ),
  );

  /// protected
  static const QuestionnaireItemDisabledDisplay protected =
      QuestionnaireItemDisabledDisplay._(
    valueString: 'protected',
    valueEnum: QuestionnaireItemDisabledDisplayEnum.protected,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/questionnaire-disabled-display',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Protected',
    ),
  );

  /// List of all enum-like values
  static final List<QuestionnaireItemDisabledDisplay> values = [
    hidden,
    protected,
  ];

  /// Returns the enum value with an element attached
  QuestionnaireItemDisabledDisplay withElement(Element? newElement) {
    return QuestionnaireItemDisabledDisplay._(
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
  QuestionnaireItemDisabledDisplay clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  QuestionnaireItemDisabledDisplayCopyWithImpl<QuestionnaireItemDisabledDisplay>
      get copyWith => QuestionnaireItemDisabledDisplayCopyWithImpl<
              QuestionnaireItemDisabledDisplay>(
            this,
            (v) => v as QuestionnaireItemDisabledDisplay,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class QuestionnaireItemDisabledDisplayCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  QuestionnaireItemDisabledDisplayCopyWithImpl(super._value, super._then);

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
      QuestionnaireItemDisabledDisplay(
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
