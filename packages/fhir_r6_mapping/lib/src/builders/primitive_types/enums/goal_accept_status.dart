// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for GoalAcceptStatus
enum GoalAcceptStatusBuilderEnum {
  /// agree
  agree,

  /// disagree
  disagree,

  /// pending
  pending,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case GoalAcceptStatusBuilderEnum.agree:
        return 'agree';
      case GoalAcceptStatusBuilderEnum.disagree:
        return 'disagree';
      case GoalAcceptStatusBuilderEnum.pending:
        return 'pending';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static GoalAcceptStatusBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return GoalAcceptStatusBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static GoalAcceptStatusBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'agree':
        return GoalAcceptStatusBuilderEnum.agree;
      case 'disagree':
        return GoalAcceptStatusBuilderEnum.disagree;
      case 'pending':
        return GoalAcceptStatusBuilderEnum.pending;
    }
    return null;
  }
}

/// Codes that identify whether the goal has been accepted or not.
class GoalAcceptStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  GoalAcceptStatusBuilder._({
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
  factory GoalAcceptStatusBuilder(
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
    final valueEnum = GoalAcceptStatusBuilderEnum.fromString(
      valueString,
    );
    return GoalAcceptStatusBuilder._(
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

  /// Create empty [GoalAcceptStatusBuilder]
  /// with element only
  factory GoalAcceptStatusBuilder.empty() =>
      GoalAcceptStatusBuilder._(valueString: null);

  /// Factory constructor to create
  /// [GoalAcceptStatusBuilder] from JSON.
  factory GoalAcceptStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GoalAcceptStatusBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'GoalAcceptStatusBuilder cannot be constructed from JSON.',
      );
    }
    return GoalAcceptStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for GoalAcceptStatusBuilder
  final GoalAcceptStatusBuilderEnum? valueEnum;

  /// agree
  static GoalAcceptStatusBuilder agree = GoalAcceptStatusBuilder._(
    valueString: 'agree',
    valueEnum: GoalAcceptStatusBuilderEnum.agree,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/goal-accept-status',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Agree',
    ),
  );

  /// disagree
  static GoalAcceptStatusBuilder disagree = GoalAcceptStatusBuilder._(
    valueString: 'disagree',
    valueEnum: GoalAcceptStatusBuilderEnum.disagree,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/goal-accept-status',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Disagree',
    ),
  );

  /// pending
  static GoalAcceptStatusBuilder pending = GoalAcceptStatusBuilder._(
    valueString: 'pending',
    valueEnum: GoalAcceptStatusBuilderEnum.pending,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/goal-accept-status',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Pending',
    ),
  );

  /// For instances where an Element is present but not value
  static GoalAcceptStatusBuilder elementOnly = GoalAcceptStatusBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<GoalAcceptStatusBuilder> values = [
    agree,
    disagree,
    pending,
  ];

  /// Returns the enum value with an element attached
  GoalAcceptStatusBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return GoalAcceptStatusBuilder._(
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
