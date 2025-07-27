// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for PermissionRuleCombining
enum PermissionRuleCombiningBuilderEnum {
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
      case PermissionRuleCombiningBuilderEnum.denyOverrides:
        return 'deny-overrides';
      case PermissionRuleCombiningBuilderEnum.permitOverrides:
        return 'permit-overrides';
      case PermissionRuleCombiningBuilderEnum.orderedDenyOverrides:
        return 'ordered-deny-overrides';
      case PermissionRuleCombiningBuilderEnum.orderedPermitOverrides:
        return 'ordered-permit-overrides';
      case PermissionRuleCombiningBuilderEnum.denyUnlessPermit:
        return 'deny-unless-permit';
      case PermissionRuleCombiningBuilderEnum.permitUnlessDeny:
        return 'permit-unless-deny';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static PermissionRuleCombiningBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return PermissionRuleCombiningBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static PermissionRuleCombiningBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'deny-overrides':
        return PermissionRuleCombiningBuilderEnum.denyOverrides;
      case 'permit-overrides':
        return PermissionRuleCombiningBuilderEnum.permitOverrides;
      case 'ordered-deny-overrides':
        return PermissionRuleCombiningBuilderEnum.orderedDenyOverrides;
      case 'ordered-permit-overrides':
        return PermissionRuleCombiningBuilderEnum.orderedPermitOverrides;
      case 'deny-unless-permit':
        return PermissionRuleCombiningBuilderEnum.denyUnlessPermit;
      case 'permit-unless-deny':
        return PermissionRuleCombiningBuilderEnum.permitUnlessDeny;
    }
    return null;
  }
}

/// Codes identifying rule combining algorithm.
class PermissionRuleCombiningBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  PermissionRuleCombiningBuilder._({
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
  factory PermissionRuleCombiningBuilder(
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
    final valueEnum = PermissionRuleCombiningBuilderEnum.fromString(
      valueString,
    );
    return PermissionRuleCombiningBuilder._(
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

  /// Create empty [PermissionRuleCombiningBuilder]
  /// with element only
  factory PermissionRuleCombiningBuilder.empty() =>
      PermissionRuleCombiningBuilder._(valueString: null);

  /// Factory constructor to create
  /// [PermissionRuleCombiningBuilder] from JSON.
  factory PermissionRuleCombiningBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PermissionRuleCombiningBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'PermissionRuleCombiningBuilder cannot be constructed from JSON.',
      );
    }
    return PermissionRuleCombiningBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for PermissionRuleCombiningBuilder
  final PermissionRuleCombiningBuilderEnum? valueEnum;

  /// deny_overrides
  static PermissionRuleCombiningBuilder denyOverrides =
      PermissionRuleCombiningBuilder._(
    valueString: 'deny-overrides',
    valueEnum: PermissionRuleCombiningBuilderEnum.denyOverrides,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/permission-rule-combining',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Deny-overrides',
    ),
  );

  /// permit_overrides
  static PermissionRuleCombiningBuilder permitOverrides =
      PermissionRuleCombiningBuilder._(
    valueString: 'permit-overrides',
    valueEnum: PermissionRuleCombiningBuilderEnum.permitOverrides,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/permission-rule-combining',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Permit-overrides',
    ),
  );

  /// ordered_deny_overrides
  static PermissionRuleCombiningBuilder orderedDenyOverrides =
      PermissionRuleCombiningBuilder._(
    valueString: 'ordered-deny-overrides',
    valueEnum: PermissionRuleCombiningBuilderEnum.orderedDenyOverrides,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/permission-rule-combining',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Ordered-deny-overrides',
    ),
  );

  /// ordered_permit_overrides
  static PermissionRuleCombiningBuilder orderedPermitOverrides =
      PermissionRuleCombiningBuilder._(
    valueString: 'ordered-permit-overrides',
    valueEnum: PermissionRuleCombiningBuilderEnum.orderedPermitOverrides,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/permission-rule-combining',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Ordered-permit-overrides',
    ),
  );

  /// deny_unless_permit
  static PermissionRuleCombiningBuilder denyUnlessPermit =
      PermissionRuleCombiningBuilder._(
    valueString: 'deny-unless-permit',
    valueEnum: PermissionRuleCombiningBuilderEnum.denyUnlessPermit,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/permission-rule-combining',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Deny-unless-permit',
    ),
  );

  /// permit_unless_deny
  static PermissionRuleCombiningBuilder permitUnlessDeny =
      PermissionRuleCombiningBuilder._(
    valueString: 'permit-unless-deny',
    valueEnum: PermissionRuleCombiningBuilderEnum.permitUnlessDeny,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/permission-rule-combining',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Permit-unless-deny',
    ),
  );

  /// For instances where an Element is present but not value
  static PermissionRuleCombiningBuilder elementOnly =
      PermissionRuleCombiningBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<PermissionRuleCombiningBuilder> values = [
    denyOverrides,
    permitOverrides,
    orderedDenyOverrides,
    orderedPermitOverrides,
    denyUnlessPermit,
    permitUnlessDeny,
  ];

  /// Returns the enum value with an element attached
  PermissionRuleCombiningBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return PermissionRuleCombiningBuilder._(
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
