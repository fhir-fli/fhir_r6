// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for AssertionManualCompletionType
enum AssertionManualCompletionTypeBuilderEnum {
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
      case AssertionManualCompletionTypeBuilderEnum.fail:
        return 'fail';
      case AssertionManualCompletionTypeBuilderEnum.pass:
        return 'pass';
      case AssertionManualCompletionTypeBuilderEnum.skip:
        return 'skip';
      case AssertionManualCompletionTypeBuilderEnum.stop:
        return 'stop';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static AssertionManualCompletionTypeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return AssertionManualCompletionTypeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static AssertionManualCompletionTypeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'fail':
        return AssertionManualCompletionTypeBuilderEnum.fail;
      case 'pass':
        return AssertionManualCompletionTypeBuilderEnum.pass;
      case 'skip':
        return AssertionManualCompletionTypeBuilderEnum.skip;
      case 'stop':
        return AssertionManualCompletionTypeBuilderEnum.stop;
    }
    return null;
  }
}

/// The type of manual completion to use for assertion.
class AssertionManualCompletionTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  AssertionManualCompletionTypeBuilder._({
    required super.valueString,
    this.valueEnum,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory AssertionManualCompletionTypeBuilder(
    String? rawValue, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCodeBuilder._validateCode(rawValue) : null;
    final valueEnum = AssertionManualCompletionTypeBuilderEnum.fromString(
      valueString,
    );
    return AssertionManualCompletionTypeBuilder._(
      valueString: valueString,
      valueEnum: valueEnum,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Create empty [AssertionManualCompletionTypeBuilder]
  /// with element only
  factory AssertionManualCompletionTypeBuilder.empty() =>
      AssertionManualCompletionTypeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [AssertionManualCompletionTypeBuilder] from JSON.
  factory AssertionManualCompletionTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AssertionManualCompletionTypeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AssertionManualCompletionTypeBuilder cannot be constructed from JSON.',
      );
    }
    return AssertionManualCompletionTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for AssertionManualCompletionTypeBuilder
  final AssertionManualCompletionTypeBuilderEnum? valueEnum;

  /// fail
  static AssertionManualCompletionTypeBuilder fail =
      AssertionManualCompletionTypeBuilder._(
    valueString: 'fail',
    valueEnum: AssertionManualCompletionTypeBuilderEnum.fail,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/assert-manual-completion-codes',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Fail',
    ),
  );

  /// pass
  static AssertionManualCompletionTypeBuilder pass =
      AssertionManualCompletionTypeBuilder._(
    valueString: 'pass',
    valueEnum: AssertionManualCompletionTypeBuilderEnum.pass,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/assert-manual-completion-codes',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Pass',
    ),
  );

  /// skip
  static AssertionManualCompletionTypeBuilder skip =
      AssertionManualCompletionTypeBuilder._(
    valueString: 'skip',
    valueEnum: AssertionManualCompletionTypeBuilderEnum.skip,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/assert-manual-completion-codes',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Skip',
    ),
  );

  /// stop
  static AssertionManualCompletionTypeBuilder stop =
      AssertionManualCompletionTypeBuilder._(
    valueString: 'stop',
    valueEnum: AssertionManualCompletionTypeBuilderEnum.stop,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/assert-manual-completion-codes',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Stop',
    ),
  );

  /// For instances where an Element is present but not value
  static AssertionManualCompletionTypeBuilder elementOnly =
      AssertionManualCompletionTypeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<AssertionManualCompletionTypeBuilder> values = [
    fail,
    pass,
    skip,
    stop,
  ];

  /// Returns the enum value with an element attached
  AssertionManualCompletionTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return AssertionManualCompletionTypeBuilder._(
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
}
