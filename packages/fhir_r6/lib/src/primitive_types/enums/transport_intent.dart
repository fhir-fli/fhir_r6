// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for TransportIntent
enum TransportIntentEnum {
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
      case TransportIntentEnum.unknown:
        return 'unknown';
      case TransportIntentEnum.proposal:
        return 'proposal';
      case TransportIntentEnum.plan:
        return 'plan';
      case TransportIntentEnum.directive:
        return 'directive';
      case TransportIntentEnum.order:
        return 'order';
      case TransportIntentEnum.originalOrder:
        return 'original-order';
      case TransportIntentEnum.reflexOrder:
        return 'reflex-order';
      case TransportIntentEnum.fillerOrder:
        return 'filler-order';
      case TransportIntentEnum.instanceOrder:
        return 'instance-order';
      case TransportIntentEnum.option:
        return 'option';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static TransportIntentEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return TransportIntentEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static TransportIntentEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'unknown':
        return TransportIntentEnum.unknown;
      case 'proposal':
        return TransportIntentEnum.proposal;
      case 'plan':
        return TransportIntentEnum.plan;
      case 'directive':
        return TransportIntentEnum.directive;
      case 'order':
        return TransportIntentEnum.order;
      case 'original-order':
        return TransportIntentEnum.originalOrder;
      case 'reflex-order':
        return TransportIntentEnum.reflexOrder;
      case 'filler-order':
        return TransportIntentEnum.fillerOrder;
      case 'instance-order':
        return TransportIntentEnum.instanceOrder;
      case 'option':
        return TransportIntentEnum.option;
    }
    return null;
  }
}

/// Distinguishes whether the transport is a proposal, plan or full order.
class TransportIntent extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const TransportIntent._({
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
  factory TransportIntent(
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
    final valueEnum = TransportIntentEnum.fromString(valueString);
    return TransportIntent._(
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

  /// Factory constructor to create [TransportIntent]
  /// from JSON.
  factory TransportIntent.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = TransportIntentEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TransportIntent._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'TransportIntent cannot be constructed from JSON.',
      );
    }
    return TransportIntent._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for TransportIntent
  final TransportIntentEnum? valueEnum;

  /// unknown
  static const TransportIntent unknown = TransportIntent._(
    valueString: 'unknown',
    valueEnum: TransportIntentEnum.unknown,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/transport-intent',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Unknown',
    ),
  );

  /// proposal
  static const TransportIntent proposal = TransportIntent._(
    valueString: 'proposal',
    valueEnum: TransportIntentEnum.proposal,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/transport-intent',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Proposal',
    ),
  );

  /// plan
  static const TransportIntent plan = TransportIntent._(
    valueString: 'plan',
    valueEnum: TransportIntentEnum.plan,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/transport-intent',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Plan',
    ),
  );

  /// directive
  static const TransportIntent directive = TransportIntent._(
    valueString: 'directive',
    valueEnum: TransportIntentEnum.directive,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/transport-intent',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Directive',
    ),
  );

  /// order
  static const TransportIntent order = TransportIntent._(
    valueString: 'order',
    valueEnum: TransportIntentEnum.order,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/transport-intent',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Order',
    ),
  );

  /// original_order
  static const TransportIntent originalOrder = TransportIntent._(
    valueString: 'original-order',
    valueEnum: TransportIntentEnum.originalOrder,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/transport-intent',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Original Order',
    ),
  );

  /// reflex_order
  static const TransportIntent reflexOrder = TransportIntent._(
    valueString: 'reflex-order',
    valueEnum: TransportIntentEnum.reflexOrder,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/transport-intent',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Reflex Order',
    ),
  );

  /// filler_order
  static const TransportIntent fillerOrder = TransportIntent._(
    valueString: 'filler-order',
    valueEnum: TransportIntentEnum.fillerOrder,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/transport-intent',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Filler Order',
    ),
  );

  /// instance_order
  static const TransportIntent instanceOrder = TransportIntent._(
    valueString: 'instance-order',
    valueEnum: TransportIntentEnum.instanceOrder,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/transport-intent',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Instance Order',
    ),
  );

  /// option
  static const TransportIntent option = TransportIntent._(
    valueString: 'option',
    valueEnum: TransportIntentEnum.option,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/transport-intent',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Option',
    ),
  );

  /// List of all enum-like values
  static final List<TransportIntent> values = [
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
  TransportIntent withElement(Element? newElement) {
    return TransportIntent._(
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
  TransportIntent clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  TransportIntentCopyWithImpl<TransportIntent> get copyWith =>
      TransportIntentCopyWithImpl<TransportIntent>(
        this,
        (v) => v as TransportIntent,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class TransportIntentCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  TransportIntentCopyWithImpl(super._value, super._then);

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
      TransportIntent(
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
