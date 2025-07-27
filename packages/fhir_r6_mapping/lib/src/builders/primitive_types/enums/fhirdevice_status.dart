// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for FHIRDeviceStatus
enum FHIRDeviceStatusBuilderEnum {
  /// active
  active,

  /// inactive
  inactive,

  /// entered-in-error
  enteredInError,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case FHIRDeviceStatusBuilderEnum.active:
        return 'active';
      case FHIRDeviceStatusBuilderEnum.inactive:
        return 'inactive';
      case FHIRDeviceStatusBuilderEnum.enteredInError:
        return 'entered-in-error';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static FHIRDeviceStatusBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return FHIRDeviceStatusBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static FHIRDeviceStatusBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'active':
        return FHIRDeviceStatusBuilderEnum.active;
      case 'inactive':
        return FHIRDeviceStatusBuilderEnum.inactive;
      case 'entered-in-error':
        return FHIRDeviceStatusBuilderEnum.enteredInError;
    }
    return null;
  }
}

/// The status of the Device record.
class FHIRDeviceStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  FHIRDeviceStatusBuilder._({
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
  factory FHIRDeviceStatusBuilder(
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
    final valueEnum = FHIRDeviceStatusBuilderEnum.fromString(
      valueString,
    );
    return FHIRDeviceStatusBuilder._(
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

  /// Create empty [FHIRDeviceStatusBuilder]
  /// with element only
  factory FHIRDeviceStatusBuilder.empty() =>
      FHIRDeviceStatusBuilder._(valueString: null);

  /// Factory constructor to create
  /// [FHIRDeviceStatusBuilder] from JSON.
  factory FHIRDeviceStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FHIRDeviceStatusBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'FHIRDeviceStatusBuilder cannot be constructed from JSON.',
      );
    }
    return FHIRDeviceStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for FHIRDeviceStatusBuilder
  final FHIRDeviceStatusBuilderEnum? valueEnum;

  /// active
  static FHIRDeviceStatusBuilder active = FHIRDeviceStatusBuilder._(
    valueString: 'active',
    valueEnum: FHIRDeviceStatusBuilderEnum.active,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/device-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Active',
    ),
  );

  /// inactive
  static FHIRDeviceStatusBuilder inactive = FHIRDeviceStatusBuilder._(
    valueString: 'inactive',
    valueEnum: FHIRDeviceStatusBuilderEnum.inactive,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/device-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Inactive',
    ),
  );

  /// entered_in_error
  static FHIRDeviceStatusBuilder enteredInError = FHIRDeviceStatusBuilder._(
    valueString: 'entered-in-error',
    valueEnum: FHIRDeviceStatusBuilderEnum.enteredInError,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/device-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Entered in Error',
    ),
  );

  /// For instances where an Element is present but not value
  static FHIRDeviceStatusBuilder elementOnly = FHIRDeviceStatusBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<FHIRDeviceStatusBuilder> values = [
    active,
    inactive,
    enteredInError,
  ];

  /// Returns the enum value with an element attached
  FHIRDeviceStatusBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return FHIRDeviceStatusBuilder._(
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
