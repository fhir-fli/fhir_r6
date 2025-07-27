// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for TransportIntent
enum TransportIntentBuilderEnum {
  /// unknown
  unknown,

  /// proposal
  proposal,

  /// plan
  plan,

  /// directive
  directive,

  /// order
  order,

  /// original-order
  originalOrder,

  /// reflex-order
  reflexOrder,

  /// filler-order
  fillerOrder,

  /// instance-order
  instanceOrder,

  /// option
  option,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case TransportIntentBuilderEnum.unknown:
        return 'unknown';
      case TransportIntentBuilderEnum.proposal:
        return 'proposal';
      case TransportIntentBuilderEnum.plan:
        return 'plan';
      case TransportIntentBuilderEnum.directive:
        return 'directive';
      case TransportIntentBuilderEnum.order:
        return 'order';
      case TransportIntentBuilderEnum.originalOrder:
        return 'original-order';
      case TransportIntentBuilderEnum.reflexOrder:
        return 'reflex-order';
      case TransportIntentBuilderEnum.fillerOrder:
        return 'filler-order';
      case TransportIntentBuilderEnum.instanceOrder:
        return 'instance-order';
      case TransportIntentBuilderEnum.option:
        return 'option';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static TransportIntentBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return TransportIntentBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static TransportIntentBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'unknown':
        return TransportIntentBuilderEnum.unknown;
      case 'proposal':
        return TransportIntentBuilderEnum.proposal;
      case 'plan':
        return TransportIntentBuilderEnum.plan;
      case 'directive':
        return TransportIntentBuilderEnum.directive;
      case 'order':
        return TransportIntentBuilderEnum.order;
      case 'original-order':
        return TransportIntentBuilderEnum.originalOrder;
      case 'reflex-order':
        return TransportIntentBuilderEnum.reflexOrder;
      case 'filler-order':
        return TransportIntentBuilderEnum.fillerOrder;
      case 'instance-order':
        return TransportIntentBuilderEnum.instanceOrder;
      case 'option':
        return TransportIntentBuilderEnum.option;
    }
    return null;
  }
}

/// Distinguishes whether the transport is a proposal, plan or full order.
class TransportIntentBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  TransportIntentBuilder._({
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
  factory TransportIntentBuilder(
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
    final valueEnum = TransportIntentBuilderEnum.fromString(
      valueString,
    );
    return TransportIntentBuilder._(
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

  /// Create empty [TransportIntentBuilder]
  /// with element only
  factory TransportIntentBuilder.empty() =>
      TransportIntentBuilder._(valueString: null);

  /// Factory constructor to create
  /// [TransportIntentBuilder] from JSON.
  factory TransportIntentBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TransportIntentBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'TransportIntentBuilder cannot be constructed from JSON.',
      );
    }
    return TransportIntentBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for TransportIntentBuilder
  final TransportIntentBuilderEnum? valueEnum;

  /// unknown
  static TransportIntentBuilder unknown = TransportIntentBuilder._(
    valueString: 'unknown',
    valueEnum: TransportIntentBuilderEnum.unknown,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/transport-intent',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Unknown',
    ),
  );

  /// proposal
  static TransportIntentBuilder proposal = TransportIntentBuilder._(
    valueString: 'proposal',
    valueEnum: TransportIntentBuilderEnum.proposal,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/transport-intent',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Proposal',
    ),
  );

  /// plan
  static TransportIntentBuilder plan = TransportIntentBuilder._(
    valueString: 'plan',
    valueEnum: TransportIntentBuilderEnum.plan,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/transport-intent',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Plan',
    ),
  );

  /// directive
  static TransportIntentBuilder directive = TransportIntentBuilder._(
    valueString: 'directive',
    valueEnum: TransportIntentBuilderEnum.directive,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/transport-intent',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Directive',
    ),
  );

  /// order
  static TransportIntentBuilder order = TransportIntentBuilder._(
    valueString: 'order',
    valueEnum: TransportIntentBuilderEnum.order,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/transport-intent',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Order',
    ),
  );

  /// original_order
  static TransportIntentBuilder originalOrder = TransportIntentBuilder._(
    valueString: 'original-order',
    valueEnum: TransportIntentBuilderEnum.originalOrder,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/transport-intent',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Original Order',
    ),
  );

  /// reflex_order
  static TransportIntentBuilder reflexOrder = TransportIntentBuilder._(
    valueString: 'reflex-order',
    valueEnum: TransportIntentBuilderEnum.reflexOrder,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/transport-intent',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Reflex Order',
    ),
  );

  /// filler_order
  static TransportIntentBuilder fillerOrder = TransportIntentBuilder._(
    valueString: 'filler-order',
    valueEnum: TransportIntentBuilderEnum.fillerOrder,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/transport-intent',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Filler Order',
    ),
  );

  /// instance_order
  static TransportIntentBuilder instanceOrder = TransportIntentBuilder._(
    valueString: 'instance-order',
    valueEnum: TransportIntentBuilderEnum.instanceOrder,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/transport-intent',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Instance Order',
    ),
  );

  /// option
  static TransportIntentBuilder option = TransportIntentBuilder._(
    valueString: 'option',
    valueEnum: TransportIntentBuilderEnum.option,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/transport-intent',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Option',
    ),
  );

  /// For instances where an Element is present but not value
  static TransportIntentBuilder elementOnly = TransportIntentBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<TransportIntentBuilder> values = [
    unknown,
    proposal,
    plan,
    directive,
    order,
    originalOrder,
    reflexOrder,
    fillerOrder,
    instanceOrder,
    option,
  ];

  /// Returns the enum value with an element attached
  TransportIntentBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return TransportIntentBuilder._(
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
