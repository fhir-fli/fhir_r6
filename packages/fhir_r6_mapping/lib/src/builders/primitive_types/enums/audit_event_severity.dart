// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for AuditEventSeverity
enum AuditEventSeverityBuilderEnum {
  /// emergency
  emergency,

  /// alert
  alert,

  /// critical
  critical,

  /// error
  error,

  /// warning
  warning,

  /// notice
  notice,

  /// informational
  informational,

  /// debug
  debug,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case AuditEventSeverityBuilderEnum.emergency:
        return 'emergency';
      case AuditEventSeverityBuilderEnum.alert:
        return 'alert';
      case AuditEventSeverityBuilderEnum.critical:
        return 'critical';
      case AuditEventSeverityBuilderEnum.error:
        return 'error';
      case AuditEventSeverityBuilderEnum.warning:
        return 'warning';
      case AuditEventSeverityBuilderEnum.notice:
        return 'notice';
      case AuditEventSeverityBuilderEnum.informational:
        return 'informational';
      case AuditEventSeverityBuilderEnum.debug:
        return 'debug';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static AuditEventSeverityBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return AuditEventSeverityBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static AuditEventSeverityBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'emergency':
        return AuditEventSeverityBuilderEnum.emergency;
      case 'alert':
        return AuditEventSeverityBuilderEnum.alert;
      case 'critical':
        return AuditEventSeverityBuilderEnum.critical;
      case 'error':
        return AuditEventSeverityBuilderEnum.error;
      case 'warning':
        return AuditEventSeverityBuilderEnum.warning;
      case 'notice':
        return AuditEventSeverityBuilderEnum.notice;
      case 'informational':
        return AuditEventSeverityBuilderEnum.informational;
      case 'debug':
        return AuditEventSeverityBuilderEnum.debug;
    }
    return null;
  }
}

/// The severity of the audit entry.
class AuditEventSeverityBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  AuditEventSeverityBuilder._({
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
  factory AuditEventSeverityBuilder(
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
    final valueEnum = AuditEventSeverityBuilderEnum.fromString(
      valueString,
    );
    return AuditEventSeverityBuilder._(
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

  /// Create empty [AuditEventSeverityBuilder]
  /// with element only
  factory AuditEventSeverityBuilder.empty() =>
      AuditEventSeverityBuilder._(valueString: null);

  /// Factory constructor to create
  /// [AuditEventSeverityBuilder] from JSON.
  factory AuditEventSeverityBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AuditEventSeverityBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AuditEventSeverityBuilder cannot be constructed from JSON.',
      );
    }
    return AuditEventSeverityBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for AuditEventSeverityBuilder
  final AuditEventSeverityBuilderEnum? valueEnum;

  /// emergency
  static AuditEventSeverityBuilder emergency = AuditEventSeverityBuilder._(
    valueString: 'emergency',
    valueEnum: AuditEventSeverityBuilderEnum.emergency,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/audit-event-severity',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Emergency',
    ),
  );

  /// alert
  static AuditEventSeverityBuilder alert = AuditEventSeverityBuilder._(
    valueString: 'alert',
    valueEnum: AuditEventSeverityBuilderEnum.alert,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/audit-event-severity',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Alert',
    ),
  );

  /// critical
  static AuditEventSeverityBuilder critical = AuditEventSeverityBuilder._(
    valueString: 'critical',
    valueEnum: AuditEventSeverityBuilderEnum.critical,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/audit-event-severity',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Critical',
    ),
  );

  /// error
  static AuditEventSeverityBuilder error = AuditEventSeverityBuilder._(
    valueString: 'error',
    valueEnum: AuditEventSeverityBuilderEnum.error,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/audit-event-severity',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Error',
    ),
  );

  /// warning
  static AuditEventSeverityBuilder warning = AuditEventSeverityBuilder._(
    valueString: 'warning',
    valueEnum: AuditEventSeverityBuilderEnum.warning,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/audit-event-severity',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Warning',
    ),
  );

  /// notice
  static AuditEventSeverityBuilder notice = AuditEventSeverityBuilder._(
    valueString: 'notice',
    valueEnum: AuditEventSeverityBuilderEnum.notice,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/audit-event-severity',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Notice',
    ),
  );

  /// informational
  static AuditEventSeverityBuilder informational = AuditEventSeverityBuilder._(
    valueString: 'informational',
    valueEnum: AuditEventSeverityBuilderEnum.informational,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/audit-event-severity',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Informational',
    ),
  );

  /// debug
  static AuditEventSeverityBuilder debug = AuditEventSeverityBuilder._(
    valueString: 'debug',
    valueEnum: AuditEventSeverityBuilderEnum.debug,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/audit-event-severity',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Debug',
    ),
  );

  /// For instances where an Element is present but not value
  static AuditEventSeverityBuilder elementOnly = AuditEventSeverityBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<AuditEventSeverityBuilder> values = [
    emergency,
    alert,
    critical,
    error,
    warning,
    notice,
    informational,
    debug,
  ];

  /// Returns the enum value with an element attached
  AuditEventSeverityBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return AuditEventSeverityBuilder._(
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
