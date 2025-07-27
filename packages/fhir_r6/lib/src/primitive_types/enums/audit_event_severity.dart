// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for AuditEventSeverity
enum AuditEventSeverityEnum {
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
      case AuditEventSeverityEnum.emergency:
        return 'emergency';
      case AuditEventSeverityEnum.alert:
        return 'alert';
      case AuditEventSeverityEnum.critical:
        return 'critical';
      case AuditEventSeverityEnum.error:
        return 'error';
      case AuditEventSeverityEnum.warning:
        return 'warning';
      case AuditEventSeverityEnum.notice:
        return 'notice';
      case AuditEventSeverityEnum.informational:
        return 'informational';
      case AuditEventSeverityEnum.debug:
        return 'debug';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static AuditEventSeverityEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return AuditEventSeverityEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static AuditEventSeverityEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'emergency':
        return AuditEventSeverityEnum.emergency;
      case 'alert':
        return AuditEventSeverityEnum.alert;
      case 'critical':
        return AuditEventSeverityEnum.critical;
      case 'error':
        return AuditEventSeverityEnum.error;
      case 'warning':
        return AuditEventSeverityEnum.warning;
      case 'notice':
        return AuditEventSeverityEnum.notice;
      case 'informational':
        return AuditEventSeverityEnum.informational;
      case 'debug':
        return AuditEventSeverityEnum.debug;
    }
    return null;
  }
}

/// The severity of the audit entry.
class AuditEventSeverity extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const AuditEventSeverity._({
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
  factory AuditEventSeverity(
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
    final valueEnum = AuditEventSeverityEnum.fromString(valueString);
    return AuditEventSeverity._(
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

  /// Factory constructor to create [AuditEventSeverity]
  /// from JSON.
  factory AuditEventSeverity.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = AuditEventSeverityEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AuditEventSeverity._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AuditEventSeverity cannot be constructed from JSON.',
      );
    }
    return AuditEventSeverity._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for AuditEventSeverity
  final AuditEventSeverityEnum? valueEnum;

  /// emergency
  static const AuditEventSeverity emergency = AuditEventSeverity._(
    valueString: 'emergency',
    valueEnum: AuditEventSeverityEnum.emergency,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/audit-event-severity',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Emergency',
    ),
  );

  /// alert
  static const AuditEventSeverity alert = AuditEventSeverity._(
    valueString: 'alert',
    valueEnum: AuditEventSeverityEnum.alert,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/audit-event-severity',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Alert',
    ),
  );

  /// critical
  static const AuditEventSeverity critical = AuditEventSeverity._(
    valueString: 'critical',
    valueEnum: AuditEventSeverityEnum.critical,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/audit-event-severity',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Critical',
    ),
  );

  /// error
  static const AuditEventSeverity error = AuditEventSeverity._(
    valueString: 'error',
    valueEnum: AuditEventSeverityEnum.error,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/audit-event-severity',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Error',
    ),
  );

  /// warning
  static const AuditEventSeverity warning = AuditEventSeverity._(
    valueString: 'warning',
    valueEnum: AuditEventSeverityEnum.warning,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/audit-event-severity',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Warning',
    ),
  );

  /// notice
  static const AuditEventSeverity notice = AuditEventSeverity._(
    valueString: 'notice',
    valueEnum: AuditEventSeverityEnum.notice,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/audit-event-severity',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Notice',
    ),
  );

  /// informational
  static const AuditEventSeverity informational = AuditEventSeverity._(
    valueString: 'informational',
    valueEnum: AuditEventSeverityEnum.informational,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/audit-event-severity',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Informational',
    ),
  );

  /// debug
  static const AuditEventSeverity debug = AuditEventSeverity._(
    valueString: 'debug',
    valueEnum: AuditEventSeverityEnum.debug,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/audit-event-severity',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Debug',
    ),
  );

  /// List of all enum-like values
  static final List<AuditEventSeverity> values = [
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
  AuditEventSeverity withElement(Element? newElement) {
    return AuditEventSeverity._(
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
  AuditEventSeverity clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  AuditEventSeverityCopyWithImpl<AuditEventSeverity> get copyWith =>
      AuditEventSeverityCopyWithImpl<AuditEventSeverity>(
        this,
        (v) => v as AuditEventSeverity,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class AuditEventSeverityCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  AuditEventSeverityCopyWithImpl(super._value, super._then);

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
      AuditEventSeverity(
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
