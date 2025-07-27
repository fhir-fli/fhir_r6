// ignore_for_file: unused_element_parameter, non_constant_identifier_names, lines_longer_than_80_chars
part of '../primitive_types.dart';

/// Actual enum for BiologicallyDerivedProductDispenseCodes
enum BiologicallyDerivedProductDispenseCodesBuilderEnum {
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
      case BiologicallyDerivedProductDispenseCodesBuilderEnum.preparation:
        return 'preparation';
      case BiologicallyDerivedProductDispenseCodesBuilderEnum.inProgress:
        return 'in-progress';
      case BiologicallyDerivedProductDispenseCodesBuilderEnum.allocated:
        return 'allocated';
      case BiologicallyDerivedProductDispenseCodesBuilderEnum.issued:
        return 'issued';
      case BiologicallyDerivedProductDispenseCodesBuilderEnum.unfulfilled:
        return 'unfulfilled';
      case BiologicallyDerivedProductDispenseCodesBuilderEnum.returned:
        return 'returned';
      case BiologicallyDerivedProductDispenseCodesBuilderEnum.enteredInError:
        return 'entered-in-error';
      case BiologicallyDerivedProductDispenseCodesBuilderEnum.unknown:
        return 'unknown';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static BiologicallyDerivedProductDispenseCodesBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return BiologicallyDerivedProductDispenseCodesBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static BiologicallyDerivedProductDispenseCodesBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'preparation':
        return BiologicallyDerivedProductDispenseCodesBuilderEnum.preparation;
      case 'in-progress':
        return BiologicallyDerivedProductDispenseCodesBuilderEnum.inProgress;
      case 'allocated':
        return BiologicallyDerivedProductDispenseCodesBuilderEnum.allocated;
      case 'issued':
        return BiologicallyDerivedProductDispenseCodesBuilderEnum.issued;
      case 'unfulfilled':
        return BiologicallyDerivedProductDispenseCodesBuilderEnum.unfulfilled;
      case 'returned':
        return BiologicallyDerivedProductDispenseCodesBuilderEnum.returned;
      case 'entered-in-error':
        return BiologicallyDerivedProductDispenseCodesBuilderEnum
            .enteredInError;
      case 'unknown':
        return BiologicallyDerivedProductDispenseCodesBuilderEnum.unknown;
    }
    return null;
  }
}

/// BiologicallyDerivedProductDispense Status Codes
class BiologicallyDerivedProductDispenseCodesBuilder
    extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  BiologicallyDerivedProductDispenseCodesBuilder._({
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
  factory BiologicallyDerivedProductDispenseCodesBuilder(
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
    final valueEnum =
        BiologicallyDerivedProductDispenseCodesBuilderEnum.fromString(
      valueString,
    );
    return BiologicallyDerivedProductDispenseCodesBuilder._(
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

  /// Create empty [BiologicallyDerivedProductDispenseCodesBuilder]
  /// with element only
  factory BiologicallyDerivedProductDispenseCodesBuilder.empty() =>
      BiologicallyDerivedProductDispenseCodesBuilder._(valueString: null);

  /// Factory constructor to create
  /// [BiologicallyDerivedProductDispenseCodesBuilder] from JSON.
  factory BiologicallyDerivedProductDispenseCodesBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return BiologicallyDerivedProductDispenseCodesBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'BiologicallyDerivedProductDispenseCodesBuilder cannot be constructed from JSON.',
      );
    }
    return BiologicallyDerivedProductDispenseCodesBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for BiologicallyDerivedProductDispenseCodesBuilder
  final BiologicallyDerivedProductDispenseCodesBuilderEnum? valueEnum;

  /// preparation
  static BiologicallyDerivedProductDispenseCodesBuilder preparation =
      BiologicallyDerivedProductDispenseCodesBuilder._(
    valueString: 'preparation',
    valueEnum: BiologicallyDerivedProductDispenseCodesBuilderEnum.preparation,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/biologicallyderivedproductdispense-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Preparation',
    ),
  );

  /// in_progress
  static BiologicallyDerivedProductDispenseCodesBuilder inProgress =
      BiologicallyDerivedProductDispenseCodesBuilder._(
    valueString: 'in-progress',
    valueEnum: BiologicallyDerivedProductDispenseCodesBuilderEnum.inProgress,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/biologicallyderivedproductdispense-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'In Progress',
    ),
  );

  /// allocated
  static BiologicallyDerivedProductDispenseCodesBuilder allocated =
      BiologicallyDerivedProductDispenseCodesBuilder._(
    valueString: 'allocated',
    valueEnum: BiologicallyDerivedProductDispenseCodesBuilderEnum.allocated,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/biologicallyderivedproductdispense-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Allocated',
    ),
  );

  /// issued
  static BiologicallyDerivedProductDispenseCodesBuilder issued =
      BiologicallyDerivedProductDispenseCodesBuilder._(
    valueString: 'issued',
    valueEnum: BiologicallyDerivedProductDispenseCodesBuilderEnum.issued,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/biologicallyderivedproductdispense-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Issued',
    ),
  );

  /// unfulfilled
  static BiologicallyDerivedProductDispenseCodesBuilder unfulfilled =
      BiologicallyDerivedProductDispenseCodesBuilder._(
    valueString: 'unfulfilled',
    valueEnum: BiologicallyDerivedProductDispenseCodesBuilderEnum.unfulfilled,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/biologicallyderivedproductdispense-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Unfulfilled',
    ),
  );

  /// returned
  static BiologicallyDerivedProductDispenseCodesBuilder returned =
      BiologicallyDerivedProductDispenseCodesBuilder._(
    valueString: 'returned',
    valueEnum: BiologicallyDerivedProductDispenseCodesBuilderEnum.returned,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/biologicallyderivedproductdispense-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Returned',
    ),
  );

  /// entered_in_error
  static BiologicallyDerivedProductDispenseCodesBuilder enteredInError =
      BiologicallyDerivedProductDispenseCodesBuilder._(
    valueString: 'entered-in-error',
    valueEnum:
        BiologicallyDerivedProductDispenseCodesBuilderEnum.enteredInError,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/biologicallyderivedproductdispense-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Entered in Error',
    ),
  );

  /// unknown
  static BiologicallyDerivedProductDispenseCodesBuilder unknown =
      BiologicallyDerivedProductDispenseCodesBuilder._(
    valueString: 'unknown',
    valueEnum: BiologicallyDerivedProductDispenseCodesBuilderEnum.unknown,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/biologicallyderivedproductdispense-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Unknown',
    ),
  );

  /// For instances where an Element is present but not value
  static BiologicallyDerivedProductDispenseCodesBuilder elementOnly =
      BiologicallyDerivedProductDispenseCodesBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<BiologicallyDerivedProductDispenseCodesBuilder> values = [
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
  BiologicallyDerivedProductDispenseCodesBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return BiologicallyDerivedProductDispenseCodesBuilder._(
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
