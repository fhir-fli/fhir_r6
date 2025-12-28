// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for BiologicallyDerivedProductDispenseStatus
enum BiologicallyDerivedProductDispenseStatusBuilderEnum {
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
      case BiologicallyDerivedProductDispenseStatusBuilderEnum.preparation:
        return 'preparation';
      case BiologicallyDerivedProductDispenseStatusBuilderEnum.inProgress:
        return 'in-progress';
      case BiologicallyDerivedProductDispenseStatusBuilderEnum.allocated:
        return 'allocated';
      case BiologicallyDerivedProductDispenseStatusBuilderEnum.issued:
        return 'issued';
      case BiologicallyDerivedProductDispenseStatusBuilderEnum.unfulfilled:
        return 'unfulfilled';
      case BiologicallyDerivedProductDispenseStatusBuilderEnum.returned:
        return 'returned';
      case BiologicallyDerivedProductDispenseStatusBuilderEnum.enteredInError:
        return 'entered-in-error';
      case BiologicallyDerivedProductDispenseStatusBuilderEnum.unknown:
        return 'unknown';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static BiologicallyDerivedProductDispenseStatusBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return BiologicallyDerivedProductDispenseStatusBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static BiologicallyDerivedProductDispenseStatusBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'preparation':
        return BiologicallyDerivedProductDispenseStatusBuilderEnum.preparation;
      case 'in-progress':
        return BiologicallyDerivedProductDispenseStatusBuilderEnum.inProgress;
      case 'allocated':
        return BiologicallyDerivedProductDispenseStatusBuilderEnum.allocated;
      case 'issued':
        return BiologicallyDerivedProductDispenseStatusBuilderEnum.issued;
      case 'unfulfilled':
        return BiologicallyDerivedProductDispenseStatusBuilderEnum.unfulfilled;
      case 'returned':
        return BiologicallyDerivedProductDispenseStatusBuilderEnum.returned;
      case 'entered-in-error':
        return BiologicallyDerivedProductDispenseStatusBuilderEnum
            .enteredInError;
      case 'unknown':
        return BiologicallyDerivedProductDispenseStatusBuilderEnum.unknown;
    }
    return null;
  }
}

/// Biologically Derived Product Dispense Status Codes.
class BiologicallyDerivedProductDispenseStatusBuilder
    extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  BiologicallyDerivedProductDispenseStatusBuilder._({
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
  factory BiologicallyDerivedProductDispenseStatusBuilder(
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
        BiologicallyDerivedProductDispenseStatusBuilderEnum.fromString(
      valueString,
    );
    return BiologicallyDerivedProductDispenseStatusBuilder._(
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

  /// Create empty [BiologicallyDerivedProductDispenseStatusBuilder]
  /// with element only
  factory BiologicallyDerivedProductDispenseStatusBuilder.empty() =>
      BiologicallyDerivedProductDispenseStatusBuilder._(valueString: null);

  /// Factory constructor to create
  /// [BiologicallyDerivedProductDispenseStatusBuilder] from JSON.
  factory BiologicallyDerivedProductDispenseStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return BiologicallyDerivedProductDispenseStatusBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'BiologicallyDerivedProductDispenseStatusBuilder cannot be constructed from JSON.',
      );
    }
    return BiologicallyDerivedProductDispenseStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for BiologicallyDerivedProductDispenseStatusBuilder
  final BiologicallyDerivedProductDispenseStatusBuilderEnum? valueEnum;

  /// preparation
  static BiologicallyDerivedProductDispenseStatusBuilder preparation =
      BiologicallyDerivedProductDispenseStatusBuilder._(
    valueString: 'preparation',
    valueEnum: BiologicallyDerivedProductDispenseStatusBuilderEnum.preparation,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/biologicallyderivedproductdispense-status',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Preparation',
    ),
  );

  /// in_progress
  static BiologicallyDerivedProductDispenseStatusBuilder inProgress =
      BiologicallyDerivedProductDispenseStatusBuilder._(
    valueString: 'in-progress',
    valueEnum: BiologicallyDerivedProductDispenseStatusBuilderEnum.inProgress,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/biologicallyderivedproductdispense-status',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'In Progress',
    ),
  );

  /// allocated
  static BiologicallyDerivedProductDispenseStatusBuilder allocated =
      BiologicallyDerivedProductDispenseStatusBuilder._(
    valueString: 'allocated',
    valueEnum: BiologicallyDerivedProductDispenseStatusBuilderEnum.allocated,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/biologicallyderivedproductdispense-status',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Allocated',
    ),
  );

  /// issued
  static BiologicallyDerivedProductDispenseStatusBuilder issued =
      BiologicallyDerivedProductDispenseStatusBuilder._(
    valueString: 'issued',
    valueEnum: BiologicallyDerivedProductDispenseStatusBuilderEnum.issued,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/biologicallyderivedproductdispense-status',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Issued',
    ),
  );

  /// unfulfilled
  static BiologicallyDerivedProductDispenseStatusBuilder unfulfilled =
      BiologicallyDerivedProductDispenseStatusBuilder._(
    valueString: 'unfulfilled',
    valueEnum: BiologicallyDerivedProductDispenseStatusBuilderEnum.unfulfilled,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/biologicallyderivedproductdispense-status',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Unfulfilled',
    ),
  );

  /// returned
  static BiologicallyDerivedProductDispenseStatusBuilder returned =
      BiologicallyDerivedProductDispenseStatusBuilder._(
    valueString: 'returned',
    valueEnum: BiologicallyDerivedProductDispenseStatusBuilderEnum.returned,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/biologicallyderivedproductdispense-status',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Returned',
    ),
  );

  /// entered_in_error
  static BiologicallyDerivedProductDispenseStatusBuilder enteredInError =
      BiologicallyDerivedProductDispenseStatusBuilder._(
    valueString: 'entered-in-error',
    valueEnum:
        BiologicallyDerivedProductDispenseStatusBuilderEnum.enteredInError,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/biologicallyderivedproductdispense-status',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Entered in Error',
    ),
  );

  /// unknown
  static BiologicallyDerivedProductDispenseStatusBuilder unknown =
      BiologicallyDerivedProductDispenseStatusBuilder._(
    valueString: 'unknown',
    valueEnum: BiologicallyDerivedProductDispenseStatusBuilderEnum.unknown,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/biologicallyderivedproductdispense-status',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Unknown',
    ),
  );

  /// For instances where an Element is present but not value
  static BiologicallyDerivedProductDispenseStatusBuilder elementOnly =
      BiologicallyDerivedProductDispenseStatusBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<BiologicallyDerivedProductDispenseStatusBuilder> values = [
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
  BiologicallyDerivedProductDispenseStatusBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return BiologicallyDerivedProductDispenseStatusBuilder._(
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
