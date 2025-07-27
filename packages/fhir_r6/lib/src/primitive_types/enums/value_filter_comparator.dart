// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ValueFilterComparator
enum ValueFilterComparatorEnum {
  /// eq
  eq,

  /// ne
  ne,

  /// gt
  gt,

  /// lt
  lt,

  /// ge
  ge,

  /// le
  le,

  /// sa
  sa,

  /// eb
  eb,

  /// ap
  ap,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ValueFilterComparatorEnum.eq:
        return 'eq';
      case ValueFilterComparatorEnum.ne:
        return 'ne';
      case ValueFilterComparatorEnum.gt:
        return 'gt';
      case ValueFilterComparatorEnum.lt:
        return 'lt';
      case ValueFilterComparatorEnum.ge:
        return 'ge';
      case ValueFilterComparatorEnum.le:
        return 'le';
      case ValueFilterComparatorEnum.sa:
        return 'sa';
      case ValueFilterComparatorEnum.eb:
        return 'eb';
      case ValueFilterComparatorEnum.ap:
        return 'ap';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ValueFilterComparatorEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return ValueFilterComparatorEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ValueFilterComparatorEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'eq':
        return ValueFilterComparatorEnum.eq;
      case 'ne':
        return ValueFilterComparatorEnum.ne;
      case 'gt':
        return ValueFilterComparatorEnum.gt;
      case 'lt':
        return ValueFilterComparatorEnum.lt;
      case 'ge':
        return ValueFilterComparatorEnum.ge;
      case 'le':
        return ValueFilterComparatorEnum.le;
      case 'sa':
        return ValueFilterComparatorEnum.sa;
      case 'eb':
        return ValueFilterComparatorEnum.eb;
      case 'ap':
        return ValueFilterComparatorEnum.ap;
    }
    return null;
  }
}

/// The type of comparator operator to use
class ValueFilterComparator extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const ValueFilterComparator._({
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
  factory ValueFilterComparator(
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
    final valueEnum = ValueFilterComparatorEnum.fromString(valueString);
    return ValueFilterComparator._(
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

  /// Factory constructor to create [ValueFilterComparator]
  /// from JSON.
  factory ValueFilterComparator.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = ValueFilterComparatorEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ValueFilterComparator._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ValueFilterComparator cannot be constructed from JSON.',
      );
    }
    return ValueFilterComparator._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for ValueFilterComparator
  final ValueFilterComparatorEnum? valueEnum;

  /// eq
  static const ValueFilterComparator eq = ValueFilterComparator._(
    valueString: 'eq',
    valueEnum: ValueFilterComparatorEnum.eq,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/value-filter-comparator',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Equals',
    ),
  );

  /// ne
  static const ValueFilterComparator ne = ValueFilterComparator._(
    valueString: 'ne',
    valueEnum: ValueFilterComparatorEnum.ne,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/value-filter-comparator',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Not Equals',
    ),
  );

  /// gt
  static const ValueFilterComparator gt = ValueFilterComparator._(
    valueString: 'gt',
    valueEnum: ValueFilterComparatorEnum.gt,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/value-filter-comparator',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Greater Than',
    ),
  );

  /// lt
  static const ValueFilterComparator lt = ValueFilterComparator._(
    valueString: 'lt',
    valueEnum: ValueFilterComparatorEnum.lt,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/value-filter-comparator',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Less Than',
    ),
  );

  /// ge
  static const ValueFilterComparator ge = ValueFilterComparator._(
    valueString: 'ge',
    valueEnum: ValueFilterComparatorEnum.ge,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/value-filter-comparator',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Greater or Equals',
    ),
  );

  /// le
  static const ValueFilterComparator le = ValueFilterComparator._(
    valueString: 'le',
    valueEnum: ValueFilterComparatorEnum.le,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/value-filter-comparator',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Less of Equal',
    ),
  );

  /// sa
  static const ValueFilterComparator sa = ValueFilterComparator._(
    valueString: 'sa',
    valueEnum: ValueFilterComparatorEnum.sa,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/value-filter-comparator',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Starts After',
    ),
  );

  /// eb
  static const ValueFilterComparator eb = ValueFilterComparator._(
    valueString: 'eb',
    valueEnum: ValueFilterComparatorEnum.eb,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/value-filter-comparator',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Ends Before',
    ),
  );

  /// ap
  static const ValueFilterComparator ap = ValueFilterComparator._(
    valueString: 'ap',
    valueEnum: ValueFilterComparatorEnum.ap,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/value-filter-comparator',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Approximately',
    ),
  );

  /// List of all enum-like values
  static final List<ValueFilterComparator> values = [
    eq,
    ne,
    gt,
    lt,
    ge,
    le,
    sa,
    eb,
    ap,
  ];

  /// Returns the enum value with an element attached
  ValueFilterComparator withElement(Element? newElement) {
    return ValueFilterComparator._(
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
  ValueFilterComparator clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  ValueFilterComparatorCopyWithImpl<ValueFilterComparator> get copyWith =>
      ValueFilterComparatorCopyWithImpl<ValueFilterComparator>(
        this,
        (v) => v as ValueFilterComparator,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class ValueFilterComparatorCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  ValueFilterComparatorCopyWithImpl(super._value, super._then);

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
      ValueFilterComparator(
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
