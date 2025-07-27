// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for TriggeredBytype
enum TriggeredBytypeBuilderEnum {
  /// reflex
  reflex,

  /// repeat
  repeat,

  /// re-run
  reRun,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case TriggeredBytypeBuilderEnum.reflex:
        return 'reflex';
      case TriggeredBytypeBuilderEnum.repeat:
        return 'repeat';
      case TriggeredBytypeBuilderEnum.reRun:
        return 're-run';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static TriggeredBytypeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return TriggeredBytypeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static TriggeredBytypeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'reflex':
        return TriggeredBytypeBuilderEnum.reflex;
      case 'repeat':
        return TriggeredBytypeBuilderEnum.repeat;
      case 're-run':
        return TriggeredBytypeBuilderEnum.reRun;
    }
    return null;
  }
}

/// Codes providing the type of triggeredBy observation.
class TriggeredBytypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  TriggeredBytypeBuilder._({
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
  factory TriggeredBytypeBuilder(
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
    final valueEnum = TriggeredBytypeBuilderEnum.fromString(
      valueString,
    );
    return TriggeredBytypeBuilder._(
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

  /// Create empty [TriggeredBytypeBuilder]
  /// with element only
  factory TriggeredBytypeBuilder.empty() =>
      TriggeredBytypeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [TriggeredBytypeBuilder] from JSON.
  factory TriggeredBytypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TriggeredBytypeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'TriggeredBytypeBuilder cannot be constructed from JSON.',
      );
    }
    return TriggeredBytypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for TriggeredBytypeBuilder
  final TriggeredBytypeBuilderEnum? valueEnum;

  /// reflex
  static TriggeredBytypeBuilder reflex = TriggeredBytypeBuilder._(
    valueString: 'reflex',
    valueEnum: TriggeredBytypeBuilderEnum.reflex,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/observation-triggeredbytype',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Reflex',
    ),
  );

  /// repeat
  static TriggeredBytypeBuilder repeat = TriggeredBytypeBuilder._(
    valueString: 'repeat',
    valueEnum: TriggeredBytypeBuilderEnum.repeat,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/observation-triggeredbytype',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Repeat (per policy)',
    ),
  );

  /// re_run
  static TriggeredBytypeBuilder reRun = TriggeredBytypeBuilder._(
    valueString: 're-run',
    valueEnum: TriggeredBytypeBuilderEnum.reRun,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/observation-triggeredbytype',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Re-run (per policy)',
    ),
  );

  /// For instances where an Element is present but not value
  static TriggeredBytypeBuilder elementOnly = TriggeredBytypeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<TriggeredBytypeBuilder> values = [
    reflex,
    repeat,
    reRun,
  ];

  /// Returns the enum value with an element attached
  TriggeredBytypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return TriggeredBytypeBuilder._(
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
