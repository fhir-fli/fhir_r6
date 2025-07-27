// ignore_for_file: unused_element_parameter, non_constant_identifier_names, lines_longer_than_80_chars
part of '../primitive_types.dart';

/// Actual enum for DeviceDefinitionRegulatoryIdentifierType
enum DeviceDefinitionRegulatoryIdentifierTypeBuilderEnum {
  /// basic
  basic,

  /// master
  master,

  /// license
  license,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case DeviceDefinitionRegulatoryIdentifierTypeBuilderEnum.basic:
        return 'basic';
      case DeviceDefinitionRegulatoryIdentifierTypeBuilderEnum.master:
        return 'master';
      case DeviceDefinitionRegulatoryIdentifierTypeBuilderEnum.license:
        return 'license';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static DeviceDefinitionRegulatoryIdentifierTypeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return DeviceDefinitionRegulatoryIdentifierTypeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static DeviceDefinitionRegulatoryIdentifierTypeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'basic':
        return DeviceDefinitionRegulatoryIdentifierTypeBuilderEnum.basic;
      case 'master':
        return DeviceDefinitionRegulatoryIdentifierTypeBuilderEnum.master;
      case 'license':
        return DeviceDefinitionRegulatoryIdentifierTypeBuilderEnum.license;
    }
    return null;
  }
}

/// Regulatory Identifier type
class DeviceDefinitionRegulatoryIdentifierTypeBuilder
    extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  DeviceDefinitionRegulatoryIdentifierTypeBuilder._({
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
  factory DeviceDefinitionRegulatoryIdentifierTypeBuilder(
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
        DeviceDefinitionRegulatoryIdentifierTypeBuilderEnum.fromString(
      valueString,
    );
    return DeviceDefinitionRegulatoryIdentifierTypeBuilder._(
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

  /// Create empty [DeviceDefinitionRegulatoryIdentifierTypeBuilder]
  /// with element only
  factory DeviceDefinitionRegulatoryIdentifierTypeBuilder.empty() =>
      DeviceDefinitionRegulatoryIdentifierTypeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [DeviceDefinitionRegulatoryIdentifierTypeBuilder] from JSON.
  factory DeviceDefinitionRegulatoryIdentifierTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceDefinitionRegulatoryIdentifierTypeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DeviceDefinitionRegulatoryIdentifierTypeBuilder cannot be constructed from JSON.',
      );
    }
    return DeviceDefinitionRegulatoryIdentifierTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for DeviceDefinitionRegulatoryIdentifierTypeBuilder
  final DeviceDefinitionRegulatoryIdentifierTypeBuilderEnum? valueEnum;

  /// basic
  static DeviceDefinitionRegulatoryIdentifierTypeBuilder basic =
      DeviceDefinitionRegulatoryIdentifierTypeBuilder._(
    valueString: 'basic',
    valueEnum: DeviceDefinitionRegulatoryIdentifierTypeBuilderEnum.basic,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/devicedefinition-regulatory-identifier-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Basic',
    ),
  );

  /// master
  static DeviceDefinitionRegulatoryIdentifierTypeBuilder master =
      DeviceDefinitionRegulatoryIdentifierTypeBuilder._(
    valueString: 'master',
    valueEnum: DeviceDefinitionRegulatoryIdentifierTypeBuilderEnum.master,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/devicedefinition-regulatory-identifier-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Master',
    ),
  );

  /// license
  static DeviceDefinitionRegulatoryIdentifierTypeBuilder license =
      DeviceDefinitionRegulatoryIdentifierTypeBuilder._(
    valueString: 'license',
    valueEnum: DeviceDefinitionRegulatoryIdentifierTypeBuilderEnum.license,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/devicedefinition-regulatory-identifier-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'License',
    ),
  );

  /// For instances where an Element is present but not value
  static DeviceDefinitionRegulatoryIdentifierTypeBuilder elementOnly =
      DeviceDefinitionRegulatoryIdentifierTypeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<DeviceDefinitionRegulatoryIdentifierTypeBuilder> values = [
    basic,
    master,
    license,
  ];

  /// Returns the enum value with an element attached
  DeviceDefinitionRegulatoryIdentifierTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return DeviceDefinitionRegulatoryIdentifierTypeBuilder._(
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
