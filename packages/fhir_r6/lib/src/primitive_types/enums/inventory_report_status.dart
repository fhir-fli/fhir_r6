// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for InventoryReportStatus
enum InventoryReportStatusEnum {
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
      case InventoryReportStatusEnum.draft:
        return 'draft';
      case InventoryReportStatusEnum.requested:
        return 'requested';
      case InventoryReportStatusEnum.active:
        return 'active';
      case InventoryReportStatusEnum.enteredInError:
        return 'entered-in-error';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static InventoryReportStatusEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return InventoryReportStatusEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static InventoryReportStatusEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'draft':
        return InventoryReportStatusEnum.draft;
      case 'requested':
        return InventoryReportStatusEnum.requested;
      case 'active':
        return InventoryReportStatusEnum.active;
      case 'entered-in-error':
        return InventoryReportStatusEnum.enteredInError;
    }
    return null;
  }
}

/// The status of the InventoryReport.
class InventoryReportStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const InventoryReportStatus._({
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
  factory InventoryReportStatus(
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
    final valueEnum = InventoryReportStatusEnum.fromString(valueString);
    return InventoryReportStatus._(
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

  /// Factory constructor to create [InventoryReportStatus]
  /// from JSON.
  factory InventoryReportStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = InventoryReportStatusEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return InventoryReportStatus._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'InventoryReportStatus cannot be constructed from JSON.',
      );
    }
    return InventoryReportStatus._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for InventoryReportStatus
  final InventoryReportStatusEnum? valueEnum;

  /// draft
  static const InventoryReportStatus draft = InventoryReportStatus._(
    valueString: 'draft',
    valueEnum: InventoryReportStatusEnum.draft,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/inventoryreport-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Draft',
    ),
  );

  /// requested
  static const InventoryReportStatus requested = InventoryReportStatus._(
    valueString: 'requested',
    valueEnum: InventoryReportStatusEnum.requested,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/inventoryreport-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Requested',
    ),
  );

  /// active
  static const InventoryReportStatus active = InventoryReportStatus._(
    valueString: 'active',
    valueEnum: InventoryReportStatusEnum.active,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/inventoryreport-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Active',
    ),
  );

  /// entered_in_error
  static const InventoryReportStatus enteredInError = InventoryReportStatus._(
    valueString: 'entered-in-error',
    valueEnum: InventoryReportStatusEnum.enteredInError,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/inventoryreport-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Entered in Error',
    ),
  );

  /// List of all enum-like values
  static final List<InventoryReportStatus> values = [
    draft,
    requested,
    active,
    enteredInError,
  ];

  /// Returns the enum value with an element attached
  InventoryReportStatus withElement(Element? newElement) {
    return InventoryReportStatus._(
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
  InventoryReportStatus clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  InventoryReportStatusCopyWithImpl<InventoryReportStatus> get copyWith =>
      InventoryReportStatusCopyWithImpl<InventoryReportStatus>(
        this,
        (v) => v as InventoryReportStatus,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class InventoryReportStatusCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  InventoryReportStatusCopyWithImpl(super._value, super._then);

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
      InventoryReportStatus(
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
