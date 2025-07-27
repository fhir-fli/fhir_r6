// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for PermissionStatus
enum PermissionStatusBuilderEnum {
  /// active
  active,

  /// entered-in-error
  enteredInError,

  /// draft
  draft,

  /// rejected
  rejected,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case PermissionStatusBuilderEnum.active:
        return 'active';
      case PermissionStatusBuilderEnum.enteredInError:
        return 'entered-in-error';
      case PermissionStatusBuilderEnum.draft:
        return 'draft';
      case PermissionStatusBuilderEnum.rejected:
        return 'rejected';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static PermissionStatusBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return PermissionStatusBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static PermissionStatusBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'active':
        return PermissionStatusBuilderEnum.active;
      case 'entered-in-error':
        return PermissionStatusBuilderEnum.enteredInError;
      case 'draft':
        return PermissionStatusBuilderEnum.draft;
      case 'rejected':
        return PermissionStatusBuilderEnum.rejected;
    }
    return null;
  }
}

/// Codes identifying the lifecycle stage of a product.
class PermissionStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  PermissionStatusBuilder._({
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
  factory PermissionStatusBuilder(
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
    final valueEnum = PermissionStatusBuilderEnum.fromString(
      valueString,
    );
    return PermissionStatusBuilder._(
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

  /// Create empty [PermissionStatusBuilder]
  /// with element only
  factory PermissionStatusBuilder.empty() =>
      PermissionStatusBuilder._(valueString: null);

  /// Factory constructor to create
  /// [PermissionStatusBuilder] from JSON.
  factory PermissionStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PermissionStatusBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'PermissionStatusBuilder cannot be constructed from JSON.',
      );
    }
    return PermissionStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for PermissionStatusBuilder
  final PermissionStatusBuilderEnum? valueEnum;

  /// active
  static PermissionStatusBuilder active = PermissionStatusBuilder._(
    valueString: 'active',
    valueEnum: PermissionStatusBuilderEnum.active,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/permission-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Active',
    ),
  );

  /// entered_in_error
  static PermissionStatusBuilder enteredInError = PermissionStatusBuilder._(
    valueString: 'entered-in-error',
    valueEnum: PermissionStatusBuilderEnum.enteredInError,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/permission-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Entered in Error',
    ),
  );

  /// draft
  static PermissionStatusBuilder draft = PermissionStatusBuilder._(
    valueString: 'draft',
    valueEnum: PermissionStatusBuilderEnum.draft,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/permission-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Draft',
    ),
  );

  /// rejected
  static PermissionStatusBuilder rejected = PermissionStatusBuilder._(
    valueString: 'rejected',
    valueEnum: PermissionStatusBuilderEnum.rejected,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/permission-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Rejected',
    ),
  );

  /// For instances where an Element is present but not value
  static PermissionStatusBuilder elementOnly = PermissionStatusBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<PermissionStatusBuilder> values = [
    active,
    enteredInError,
    draft,
    rejected,
  ];

  /// Returns the enum value with an element attached
  PermissionStatusBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return PermissionStatusBuilder._(
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
