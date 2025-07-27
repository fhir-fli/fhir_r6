// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for AdditionalBindingPurposeVS
enum AdditionalBindingPurposeVSBuilderEnum {
  /// maximum
  maximum,

  /// minimum
  minimum,

  /// required
  required_,

  /// extensible
  extensible,

  /// candidate
  candidate,

  /// current
  current,

  /// preferred
  preferred,

  /// ui
  ui,

  /// starter
  starter,

  /// component
  component,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case AdditionalBindingPurposeVSBuilderEnum.maximum:
        return 'maximum';
      case AdditionalBindingPurposeVSBuilderEnum.minimum:
        return 'minimum';
      case AdditionalBindingPurposeVSBuilderEnum.required_:
        return 'required';
      case AdditionalBindingPurposeVSBuilderEnum.extensible:
        return 'extensible';
      case AdditionalBindingPurposeVSBuilderEnum.candidate:
        return 'candidate';
      case AdditionalBindingPurposeVSBuilderEnum.current:
        return 'current';
      case AdditionalBindingPurposeVSBuilderEnum.preferred:
        return 'preferred';
      case AdditionalBindingPurposeVSBuilderEnum.ui:
        return 'ui';
      case AdditionalBindingPurposeVSBuilderEnum.starter:
        return 'starter';
      case AdditionalBindingPurposeVSBuilderEnum.component:
        return 'component';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static AdditionalBindingPurposeVSBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return AdditionalBindingPurposeVSBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static AdditionalBindingPurposeVSBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'maximum':
        return AdditionalBindingPurposeVSBuilderEnum.maximum;
      case 'minimum':
        return AdditionalBindingPurposeVSBuilderEnum.minimum;
      case 'required':
        return AdditionalBindingPurposeVSBuilderEnum.required_;
      case 'extensible':
        return AdditionalBindingPurposeVSBuilderEnum.extensible;
      case 'candidate':
        return AdditionalBindingPurposeVSBuilderEnum.candidate;
      case 'current':
        return AdditionalBindingPurposeVSBuilderEnum.current;
      case 'preferred':
        return AdditionalBindingPurposeVSBuilderEnum.preferred;
      case 'ui':
        return AdditionalBindingPurposeVSBuilderEnum.ui;
      case 'starter':
        return AdditionalBindingPurposeVSBuilderEnum.starter;
      case 'component':
        return AdditionalBindingPurposeVSBuilderEnum.component;
    }
    return null;
  }
}

/// Additional Binding Purpose
class AdditionalBindingPurposeVSBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  AdditionalBindingPurposeVSBuilder._({
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
  factory AdditionalBindingPurposeVSBuilder(
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
    final valueEnum = AdditionalBindingPurposeVSBuilderEnum.fromString(
      valueString,
    );
    return AdditionalBindingPurposeVSBuilder._(
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

  /// Create empty [AdditionalBindingPurposeVSBuilder]
  /// with element only
  factory AdditionalBindingPurposeVSBuilder.empty() =>
      AdditionalBindingPurposeVSBuilder._(valueString: null);

  /// Factory constructor to create
  /// [AdditionalBindingPurposeVSBuilder] from JSON.
  factory AdditionalBindingPurposeVSBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdditionalBindingPurposeVSBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AdditionalBindingPurposeVSBuilder cannot be constructed from JSON.',
      );
    }
    return AdditionalBindingPurposeVSBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for AdditionalBindingPurposeVSBuilder
  final AdditionalBindingPurposeVSBuilderEnum? valueEnum;

  /// maximum
  static AdditionalBindingPurposeVSBuilder maximum =
      AdditionalBindingPurposeVSBuilder._(
    valueString: 'maximum',
    valueEnum: AdditionalBindingPurposeVSBuilderEnum.maximum,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/additional-binding-purpose',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Maximum Binding',
    ),
  );

  /// minimum
  static AdditionalBindingPurposeVSBuilder minimum =
      AdditionalBindingPurposeVSBuilder._(
    valueString: 'minimum',
    valueEnum: AdditionalBindingPurposeVSBuilderEnum.minimum,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/additional-binding-purpose',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Minimum Binding',
    ),
  );

  /// required_
  static AdditionalBindingPurposeVSBuilder required_ =
      AdditionalBindingPurposeVSBuilder._(
    valueString: 'required',
    valueEnum: AdditionalBindingPurposeVSBuilderEnum.required_,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/additional-binding-purpose',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Required Binding',
    ),
  );

  /// extensible
  static AdditionalBindingPurposeVSBuilder extensible =
      AdditionalBindingPurposeVSBuilder._(
    valueString: 'extensible',
    valueEnum: AdditionalBindingPurposeVSBuilderEnum.extensible,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/additional-binding-purpose',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Conformance Binding',
    ),
  );

  /// candidate
  static AdditionalBindingPurposeVSBuilder candidate =
      AdditionalBindingPurposeVSBuilder._(
    valueString: 'candidate',
    valueEnum: AdditionalBindingPurposeVSBuilderEnum.candidate,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/additional-binding-purpose',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Candidate Binding',
    ),
  );

  /// current
  static AdditionalBindingPurposeVSBuilder current =
      AdditionalBindingPurposeVSBuilder._(
    valueString: 'current',
    valueEnum: AdditionalBindingPurposeVSBuilderEnum.current,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/additional-binding-purpose',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Current Binding',
    ),
  );

  /// preferred
  static AdditionalBindingPurposeVSBuilder preferred =
      AdditionalBindingPurposeVSBuilder._(
    valueString: 'preferred',
    valueEnum: AdditionalBindingPurposeVSBuilderEnum.preferred,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/additional-binding-purpose',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Preferred Binding',
    ),
  );

  /// ui
  static AdditionalBindingPurposeVSBuilder ui =
      AdditionalBindingPurposeVSBuilder._(
    valueString: 'ui',
    valueEnum: AdditionalBindingPurposeVSBuilderEnum.ui,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/additional-binding-purpose',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'UI Suggested Binding',
    ),
  );

  /// starter
  static AdditionalBindingPurposeVSBuilder starter =
      AdditionalBindingPurposeVSBuilder._(
    valueString: 'starter',
    valueEnum: AdditionalBindingPurposeVSBuilderEnum.starter,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/additional-binding-purpose',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Starter Binding',
    ),
  );

  /// component
  static AdditionalBindingPurposeVSBuilder component =
      AdditionalBindingPurposeVSBuilder._(
    valueString: 'component',
    valueEnum: AdditionalBindingPurposeVSBuilderEnum.component,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/additional-binding-purpose',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Component Binding',
    ),
  );

  /// For instances where an Element is present but not value
  static AdditionalBindingPurposeVSBuilder elementOnly =
      AdditionalBindingPurposeVSBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<AdditionalBindingPurposeVSBuilder> values = [
    maximum,
    minimum,
    required_,
    extensible,
    candidate,
    current,
    preferred,
    ui,
    starter,
    component,
  ];

  /// Returns the enum value with an element attached
  AdditionalBindingPurposeVSBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return AdditionalBindingPurposeVSBuilder._(
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
