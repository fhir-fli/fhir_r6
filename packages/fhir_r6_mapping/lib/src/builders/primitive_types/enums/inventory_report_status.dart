// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for InventoryReportStatus
enum InventoryReportStatusBuilderEnum {
  /// draft
  draft,

  /// requested
  requested,

  /// active
  active,

  /// entered-in-error
  enteredInError,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case InventoryReportStatusBuilderEnum.draft:
        return 'draft';
      case InventoryReportStatusBuilderEnum.requested:
        return 'requested';
      case InventoryReportStatusBuilderEnum.active:
        return 'active';
      case InventoryReportStatusBuilderEnum.enteredInError:
        return 'entered-in-error';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static InventoryReportStatusBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return InventoryReportStatusBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static InventoryReportStatusBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'draft':
        return InventoryReportStatusBuilderEnum.draft;
      case 'requested':
        return InventoryReportStatusBuilderEnum.requested;
      case 'active':
        return InventoryReportStatusBuilderEnum.active;
      case 'entered-in-error':
        return InventoryReportStatusBuilderEnum.enteredInError;
    }
    return null;
  }
}

/// The status of the InventoryReport.
class InventoryReportStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  InventoryReportStatusBuilder._({
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
  factory InventoryReportStatusBuilder(
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
    final valueEnum = InventoryReportStatusBuilderEnum.fromString(
      valueString,
    );
    return InventoryReportStatusBuilder._(
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

  /// Create empty [InventoryReportStatusBuilder]
  /// with element only
  factory InventoryReportStatusBuilder.empty() =>
      InventoryReportStatusBuilder._(valueString: null);

  /// Factory constructor to create
  /// [InventoryReportStatusBuilder] from JSON.
  factory InventoryReportStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return InventoryReportStatusBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'InventoryReportStatusBuilder cannot be constructed from JSON.',
      );
    }
    return InventoryReportStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for InventoryReportStatusBuilder
  final InventoryReportStatusBuilderEnum? valueEnum;

  /// draft
  static InventoryReportStatusBuilder draft = InventoryReportStatusBuilder._(
    valueString: 'draft',
    valueEnum: InventoryReportStatusBuilderEnum.draft,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/inventoryreport-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Draft',
    ),
  );

  /// requested
  static InventoryReportStatusBuilder requested =
      InventoryReportStatusBuilder._(
    valueString: 'requested',
    valueEnum: InventoryReportStatusBuilderEnum.requested,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/inventoryreport-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Requested',
    ),
  );

  /// active
  static InventoryReportStatusBuilder active = InventoryReportStatusBuilder._(
    valueString: 'active',
    valueEnum: InventoryReportStatusBuilderEnum.active,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/inventoryreport-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Active',
    ),
  );

  /// entered_in_error
  static InventoryReportStatusBuilder enteredInError =
      InventoryReportStatusBuilder._(
    valueString: 'entered-in-error',
    valueEnum: InventoryReportStatusBuilderEnum.enteredInError,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/inventoryreport-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Entered in Error',
    ),
  );

  /// For instances where an Element is present but not value
  static InventoryReportStatusBuilder elementOnly =
      InventoryReportStatusBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<InventoryReportStatusBuilder> values = [
    draft,
    requested,
    active,
    enteredInError,
  ];

  /// Returns the enum value with an element attached
  InventoryReportStatusBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return InventoryReportStatusBuilder._(
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
