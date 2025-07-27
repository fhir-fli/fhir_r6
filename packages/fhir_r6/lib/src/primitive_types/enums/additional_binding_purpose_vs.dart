// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for AdditionalBindingPurposeVS
enum AdditionalBindingPurposeVSEnum {
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
      case AdditionalBindingPurposeVSEnum.maximum:
        return 'maximum';
      case AdditionalBindingPurposeVSEnum.minimum:
        return 'minimum';
      case AdditionalBindingPurposeVSEnum.required_:
        return 'required';
      case AdditionalBindingPurposeVSEnum.extensible:
        return 'extensible';
      case AdditionalBindingPurposeVSEnum.candidate:
        return 'candidate';
      case AdditionalBindingPurposeVSEnum.current:
        return 'current';
      case AdditionalBindingPurposeVSEnum.preferred:
        return 'preferred';
      case AdditionalBindingPurposeVSEnum.ui:
        return 'ui';
      case AdditionalBindingPurposeVSEnum.starter:
        return 'starter';
      case AdditionalBindingPurposeVSEnum.component:
        return 'component';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static AdditionalBindingPurposeVSEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return AdditionalBindingPurposeVSEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static AdditionalBindingPurposeVSEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'maximum':
        return AdditionalBindingPurposeVSEnum.maximum;
      case 'minimum':
        return AdditionalBindingPurposeVSEnum.minimum;
      case 'required':
        return AdditionalBindingPurposeVSEnum.required_;
      case 'extensible':
        return AdditionalBindingPurposeVSEnum.extensible;
      case 'candidate':
        return AdditionalBindingPurposeVSEnum.candidate;
      case 'current':
        return AdditionalBindingPurposeVSEnum.current;
      case 'preferred':
        return AdditionalBindingPurposeVSEnum.preferred;
      case 'ui':
        return AdditionalBindingPurposeVSEnum.ui;
      case 'starter':
        return AdditionalBindingPurposeVSEnum.starter;
      case 'component':
        return AdditionalBindingPurposeVSEnum.component;
    }
    return null;
  }
}

/// Additional Binding Purpose
class AdditionalBindingPurposeVS extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const AdditionalBindingPurposeVS._({
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
  factory AdditionalBindingPurposeVS(
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
    final valueEnum = AdditionalBindingPurposeVSEnum.fromString(valueString);
    return AdditionalBindingPurposeVS._(
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

  /// Factory constructor to create [AdditionalBindingPurposeVS]
  /// from JSON.
  factory AdditionalBindingPurposeVS.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = AdditionalBindingPurposeVSEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdditionalBindingPurposeVS._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AdditionalBindingPurposeVS cannot be constructed from JSON.',
      );
    }
    return AdditionalBindingPurposeVS._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for AdditionalBindingPurposeVS
  final AdditionalBindingPurposeVSEnum? valueEnum;

  /// maximum
  static const AdditionalBindingPurposeVS maximum =
      AdditionalBindingPurposeVS._(
    valueString: 'maximum',
    valueEnum: AdditionalBindingPurposeVSEnum.maximum,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/additional-binding-purpose',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Maximum Binding',
    ),
  );

  /// minimum
  static const AdditionalBindingPurposeVS minimum =
      AdditionalBindingPurposeVS._(
    valueString: 'minimum',
    valueEnum: AdditionalBindingPurposeVSEnum.minimum,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/additional-binding-purpose',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Minimum Binding',
    ),
  );

  /// required_
  static const AdditionalBindingPurposeVS required_ =
      AdditionalBindingPurposeVS._(
    valueString: 'required',
    valueEnum: AdditionalBindingPurposeVSEnum.required_,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/additional-binding-purpose',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Required Binding',
    ),
  );

  /// extensible
  static const AdditionalBindingPurposeVS extensible =
      AdditionalBindingPurposeVS._(
    valueString: 'extensible',
    valueEnum: AdditionalBindingPurposeVSEnum.extensible,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/additional-binding-purpose',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Conformance Binding',
    ),
  );

  /// candidate
  static const AdditionalBindingPurposeVS candidate =
      AdditionalBindingPurposeVS._(
    valueString: 'candidate',
    valueEnum: AdditionalBindingPurposeVSEnum.candidate,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/additional-binding-purpose',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Candidate Binding',
    ),
  );

  /// current
  static const AdditionalBindingPurposeVS current =
      AdditionalBindingPurposeVS._(
    valueString: 'current',
    valueEnum: AdditionalBindingPurposeVSEnum.current,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/additional-binding-purpose',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Current Binding',
    ),
  );

  /// preferred
  static const AdditionalBindingPurposeVS preferred =
      AdditionalBindingPurposeVS._(
    valueString: 'preferred',
    valueEnum: AdditionalBindingPurposeVSEnum.preferred,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/additional-binding-purpose',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Preferred Binding',
    ),
  );

  /// ui
  static const AdditionalBindingPurposeVS ui = AdditionalBindingPurposeVS._(
    valueString: 'ui',
    valueEnum: AdditionalBindingPurposeVSEnum.ui,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/additional-binding-purpose',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'UI Suggested Binding',
    ),
  );

  /// starter
  static const AdditionalBindingPurposeVS starter =
      AdditionalBindingPurposeVS._(
    valueString: 'starter',
    valueEnum: AdditionalBindingPurposeVSEnum.starter,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/additional-binding-purpose',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Starter Binding',
    ),
  );

  /// component
  static const AdditionalBindingPurposeVS component =
      AdditionalBindingPurposeVS._(
    valueString: 'component',
    valueEnum: AdditionalBindingPurposeVSEnum.component,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/additional-binding-purpose',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Component Binding',
    ),
  );

  /// List of all enum-like values
  static final List<AdditionalBindingPurposeVS> values = [
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
  AdditionalBindingPurposeVS withElement(Element? newElement) {
    return AdditionalBindingPurposeVS._(
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
  AdditionalBindingPurposeVS clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  AdditionalBindingPurposeVSCopyWithImpl<AdditionalBindingPurposeVS>
      get copyWith =>
          AdditionalBindingPurposeVSCopyWithImpl<AdditionalBindingPurposeVS>(
            this,
            (v) => v as AdditionalBindingPurposeVS,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class AdditionalBindingPurposeVSCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  AdditionalBindingPurposeVSCopyWithImpl(super._value, super._then);

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
      AdditionalBindingPurposeVS(
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
