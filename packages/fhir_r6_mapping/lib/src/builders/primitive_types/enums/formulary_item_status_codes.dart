// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for FormularyItemStatusCodes
enum FormularyItemStatusCodesBuilderEnum {
  /// active
  active,

  /// entered-in-error
  enteredInError,

  /// inactive
  inactive,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case FormularyItemStatusCodesBuilderEnum.active:
        return 'active';
      case FormularyItemStatusCodesBuilderEnum.enteredInError:
        return 'entered-in-error';
      case FormularyItemStatusCodesBuilderEnum.inactive:
        return 'inactive';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static FormularyItemStatusCodesBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return FormularyItemStatusCodesBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static FormularyItemStatusCodesBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'active':
        return FormularyItemStatusCodesBuilderEnum.active;
      case 'entered-in-error':
        return FormularyItemStatusCodesBuilderEnum.enteredInError;
      case 'inactive':
        return FormularyItemStatusCodesBuilderEnum.inactive;
    }
    return null;
  }
}

/// FormularyItem Status Codes
class FormularyItemStatusCodesBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  FormularyItemStatusCodesBuilder._({
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
  factory FormularyItemStatusCodesBuilder(
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
    final valueEnum = FormularyItemStatusCodesBuilderEnum.fromString(
      valueString,
    );
    return FormularyItemStatusCodesBuilder._(
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

  /// Create empty [FormularyItemStatusCodesBuilder]
  /// with element only
  factory FormularyItemStatusCodesBuilder.empty() =>
      FormularyItemStatusCodesBuilder._(valueString: null);

  /// Factory constructor to create
  /// [FormularyItemStatusCodesBuilder] from JSON.
  factory FormularyItemStatusCodesBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FormularyItemStatusCodesBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'FormularyItemStatusCodesBuilder cannot be constructed from JSON.',
      );
    }
    return FormularyItemStatusCodesBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for FormularyItemStatusCodesBuilder
  final FormularyItemStatusCodesBuilderEnum? valueEnum;

  /// active
  static FormularyItemStatusCodesBuilder active =
      FormularyItemStatusCodesBuilder._(
    valueString: 'active',
    valueEnum: FormularyItemStatusCodesBuilderEnum.active,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/formularyitem-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Active',
    ),
  );

  /// entered_in_error
  static FormularyItemStatusCodesBuilder enteredInError =
      FormularyItemStatusCodesBuilder._(
    valueString: 'entered-in-error',
    valueEnum: FormularyItemStatusCodesBuilderEnum.enteredInError,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/formularyitem-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Entered in Error',
    ),
  );

  /// inactive
  static FormularyItemStatusCodesBuilder inactive =
      FormularyItemStatusCodesBuilder._(
    valueString: 'inactive',
    valueEnum: FormularyItemStatusCodesBuilderEnum.inactive,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/formularyitem-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Inactive',
    ),
  );

  /// For instances where an Element is present but not value
  static FormularyItemStatusCodesBuilder elementOnly =
      FormularyItemStatusCodesBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<FormularyItemStatusCodesBuilder> values = [
    active,
    enteredInError,
    inactive,
  ];

  /// Returns the enum value with an element attached
  FormularyItemStatusCodesBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return FormularyItemStatusCodesBuilder._(
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
