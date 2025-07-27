// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ConditionQuestionnairePurpose
enum ConditionQuestionnairePurposeEnum {
  /// preadmit
  preadmit,

  /// diff-diagnosis
  diffDiagnosis,

  /// outcome
  outcome,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ConditionQuestionnairePurposeEnum.preadmit:
        return 'preadmit';
      case ConditionQuestionnairePurposeEnum.diffDiagnosis:
        return 'diff-diagnosis';
      case ConditionQuestionnairePurposeEnum.outcome:
        return 'outcome';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ConditionQuestionnairePurposeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return ConditionQuestionnairePurposeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ConditionQuestionnairePurposeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'preadmit':
        return ConditionQuestionnairePurposeEnum.preadmit;
      case 'diff-diagnosis':
        return ConditionQuestionnairePurposeEnum.diffDiagnosis;
      case 'outcome':
        return ConditionQuestionnairePurposeEnum.outcome;
    }
    return null;
  }
}

/// The use of a questionnaire.
class ConditionQuestionnairePurpose extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const ConditionQuestionnairePurpose._({
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
  factory ConditionQuestionnairePurpose(
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
    final valueEnum = ConditionQuestionnairePurposeEnum.fromString(valueString);
    return ConditionQuestionnairePurpose._(
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

  /// Factory constructor to create [ConditionQuestionnairePurpose]
  /// from JSON.
  factory ConditionQuestionnairePurpose.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = ConditionQuestionnairePurposeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConditionQuestionnairePurpose._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ConditionQuestionnairePurpose cannot be constructed from JSON.',
      );
    }
    return ConditionQuestionnairePurpose._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for ConditionQuestionnairePurpose
  final ConditionQuestionnairePurposeEnum? valueEnum;

  /// preadmit
  static const ConditionQuestionnairePurpose preadmit =
      ConditionQuestionnairePurpose._(
    valueString: 'preadmit',
    valueEnum: ConditionQuestionnairePurposeEnum.preadmit,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/condition-questionnaire-purpose',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Pre-admit',
    ),
  );

  /// diff_diagnosis
  static const ConditionQuestionnairePurpose diffDiagnosis =
      ConditionQuestionnairePurpose._(
    valueString: 'diff-diagnosis',
    valueEnum: ConditionQuestionnairePurposeEnum.diffDiagnosis,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/condition-questionnaire-purpose',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Diff Diagnosis',
    ),
  );

  /// outcome
  static const ConditionQuestionnairePurpose outcome =
      ConditionQuestionnairePurpose._(
    valueString: 'outcome',
    valueEnum: ConditionQuestionnairePurposeEnum.outcome,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/condition-questionnaire-purpose',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Outcome',
    ),
  );

  /// List of all enum-like values
  static final List<ConditionQuestionnairePurpose> values = [
    preadmit,
    diffDiagnosis,
    outcome,
  ];

  /// Returns the enum value with an element attached
  ConditionQuestionnairePurpose withElement(Element? newElement) {
    return ConditionQuestionnairePurpose._(
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
  ConditionQuestionnairePurpose clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  ConditionQuestionnairePurposeCopyWithImpl<ConditionQuestionnairePurpose>
      get copyWith => ConditionQuestionnairePurposeCopyWithImpl<
              ConditionQuestionnairePurpose>(
            this,
            (v) => v as ConditionQuestionnairePurpose,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class ConditionQuestionnairePurposeCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  ConditionQuestionnairePurposeCopyWithImpl(super._value, super._then);

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
      ConditionQuestionnairePurpose(
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
