// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for PermissionRuleCombining
enum PermissionRuleCombiningEnum {
  /// deny-overrides
  denyOverrides,

  /// permit-overrides
  permitOverrides,

  /// ordered-deny-overrides
  orderedDenyOverrides,

  /// ordered-permit-overrides
  orderedPermitOverrides,

  /// deny-unless-permit
  denyUnlessPermit,

  /// permit-unless-deny
  permitUnlessDeny,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case PermissionRuleCombiningEnum.denyOverrides:
        return 'deny-overrides';
      case PermissionRuleCombiningEnum.permitOverrides:
        return 'permit-overrides';
      case PermissionRuleCombiningEnum.orderedDenyOverrides:
        return 'ordered-deny-overrides';
      case PermissionRuleCombiningEnum.orderedPermitOverrides:
        return 'ordered-permit-overrides';
      case PermissionRuleCombiningEnum.denyUnlessPermit:
        return 'deny-unless-permit';
      case PermissionRuleCombiningEnum.permitUnlessDeny:
        return 'permit-unless-deny';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static PermissionRuleCombiningEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return PermissionRuleCombiningEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static PermissionRuleCombiningEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'deny-overrides':
        return PermissionRuleCombiningEnum.denyOverrides;
      case 'permit-overrides':
        return PermissionRuleCombiningEnum.permitOverrides;
      case 'ordered-deny-overrides':
        return PermissionRuleCombiningEnum.orderedDenyOverrides;
      case 'ordered-permit-overrides':
        return PermissionRuleCombiningEnum.orderedPermitOverrides;
      case 'deny-unless-permit':
        return PermissionRuleCombiningEnum.denyUnlessPermit;
      case 'permit-unless-deny':
        return PermissionRuleCombiningEnum.permitUnlessDeny;
    }
    return null;
  }
}

/// Codes identifying rule combining algorithm.
class PermissionRuleCombining extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const PermissionRuleCombining._({
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
  factory PermissionRuleCombining(
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
    final valueEnum = PermissionRuleCombiningEnum.fromString(valueString);
    return PermissionRuleCombining._(
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

  /// Factory constructor to create [PermissionRuleCombining]
  /// from JSON.
  factory PermissionRuleCombining.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = PermissionRuleCombiningEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PermissionRuleCombining._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'PermissionRuleCombining cannot be constructed from JSON.',
      );
    }
    return PermissionRuleCombining._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for PermissionRuleCombining
  final PermissionRuleCombiningEnum? valueEnum;

  /// deny_overrides
  static const PermissionRuleCombining denyOverrides =
      PermissionRuleCombining._(
    valueString: 'deny-overrides',
    valueEnum: PermissionRuleCombiningEnum.denyOverrides,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/permission-rule-combining',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Deny-overrides',
    ),
  );

  /// permit_overrides
  static const PermissionRuleCombining permitOverrides =
      PermissionRuleCombining._(
    valueString: 'permit-overrides',
    valueEnum: PermissionRuleCombiningEnum.permitOverrides,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/permission-rule-combining',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Permit-overrides',
    ),
  );

  /// ordered_deny_overrides
  static const PermissionRuleCombining orderedDenyOverrides =
      PermissionRuleCombining._(
    valueString: 'ordered-deny-overrides',
    valueEnum: PermissionRuleCombiningEnum.orderedDenyOverrides,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/permission-rule-combining',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Ordered-deny-overrides',
    ),
  );

  /// ordered_permit_overrides
  static const PermissionRuleCombining orderedPermitOverrides =
      PermissionRuleCombining._(
    valueString: 'ordered-permit-overrides',
    valueEnum: PermissionRuleCombiningEnum.orderedPermitOverrides,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/permission-rule-combining',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Ordered-permit-overrides',
    ),
  );

  /// deny_unless_permit
  static const PermissionRuleCombining denyUnlessPermit =
      PermissionRuleCombining._(
    valueString: 'deny-unless-permit',
    valueEnum: PermissionRuleCombiningEnum.denyUnlessPermit,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/permission-rule-combining',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Deny-unless-permit',
    ),
  );

  /// permit_unless_deny
  static const PermissionRuleCombining permitUnlessDeny =
      PermissionRuleCombining._(
    valueString: 'permit-unless-deny',
    valueEnum: PermissionRuleCombiningEnum.permitUnlessDeny,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/permission-rule-combining',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Permit-unless-deny',
    ),
  );

  /// List of all enum-like values
  static final List<PermissionRuleCombining> values = [
    denyOverrides,
    permitOverrides,
    orderedDenyOverrides,
    orderedPermitOverrides,
    denyUnlessPermit,
    permitUnlessDeny,
  ];

  /// Returns the enum value with an element attached
  PermissionRuleCombining withElement(Element? newElement) {
    return PermissionRuleCombining._(
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
  PermissionRuleCombining clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  PermissionRuleCombiningCopyWithImpl<PermissionRuleCombining> get copyWith =>
      PermissionRuleCombiningCopyWithImpl<PermissionRuleCombining>(
        this,
        (v) => v as PermissionRuleCombining,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class PermissionRuleCombiningCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  PermissionRuleCombiningCopyWithImpl(super._value, super._then);

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
      PermissionRuleCombining(
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
