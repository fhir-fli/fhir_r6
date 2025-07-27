// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for OperationParameterScope
enum OperationParameterScopeBuilderEnum {
  /// instance
  instance,

  /// type
  type,

  /// system
  system_,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case OperationParameterScopeBuilderEnum.instance:
        return 'instance';
      case OperationParameterScopeBuilderEnum.type:
        return 'type';
      case OperationParameterScopeBuilderEnum.system_:
        return 'system';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static OperationParameterScopeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return OperationParameterScopeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static OperationParameterScopeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'instance':
        return OperationParameterScopeBuilderEnum.instance;
      case 'type':
        return OperationParameterScopeBuilderEnum.type;
      case 'system':
        return OperationParameterScopeBuilderEnum.system_;
    }
    return null;
  }
}

/// Indicates that a parameter applies when the operation is being invoked
/// at the specified level
class OperationParameterScopeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  OperationParameterScopeBuilder._({
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
  factory OperationParameterScopeBuilder(
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
    final valueEnum = OperationParameterScopeBuilderEnum.fromString(
      valueString,
    );
    return OperationParameterScopeBuilder._(
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

  /// Create empty [OperationParameterScopeBuilder]
  /// with element only
  factory OperationParameterScopeBuilder.empty() =>
      OperationParameterScopeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [OperationParameterScopeBuilder] from JSON.
  factory OperationParameterScopeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return OperationParameterScopeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'OperationParameterScopeBuilder cannot be constructed from JSON.',
      );
    }
    return OperationParameterScopeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for OperationParameterScopeBuilder
  final OperationParameterScopeBuilderEnum? valueEnum;

  /// instance
  static OperationParameterScopeBuilder instance =
      OperationParameterScopeBuilder._(
    valueString: 'instance',
    valueEnum: OperationParameterScopeBuilderEnum.instance,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/operation-parameter-scope',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Instance',
    ),
  );

  /// type
  static OperationParameterScopeBuilder type = OperationParameterScopeBuilder._(
    valueString: 'type',
    valueEnum: OperationParameterScopeBuilderEnum.type,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/operation-parameter-scope',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Type',
    ),
  );

  /// system_
  static OperationParameterScopeBuilder system_ =
      OperationParameterScopeBuilder._(
    valueString: 'system',
    valueEnum: OperationParameterScopeBuilderEnum.system_,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/operation-parameter-scope',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'System',
    ),
  );

  /// For instances where an Element is present but not value
  static OperationParameterScopeBuilder elementOnly =
      OperationParameterScopeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<OperationParameterScopeBuilder> values = [
    instance,
    type,
    system_,
  ];

  /// Returns the enum value with an element attached
  OperationParameterScopeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return OperationParameterScopeBuilder._(
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
