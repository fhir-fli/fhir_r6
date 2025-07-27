// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ValueFilterComparator
enum ValueFilterComparatorBuilderEnum {
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
      case ValueFilterComparatorBuilderEnum.eq:
        return 'eq';
      case ValueFilterComparatorBuilderEnum.ne:
        return 'ne';
      case ValueFilterComparatorBuilderEnum.gt:
        return 'gt';
      case ValueFilterComparatorBuilderEnum.lt:
        return 'lt';
      case ValueFilterComparatorBuilderEnum.ge:
        return 'ge';
      case ValueFilterComparatorBuilderEnum.le:
        return 'le';
      case ValueFilterComparatorBuilderEnum.sa:
        return 'sa';
      case ValueFilterComparatorBuilderEnum.eb:
        return 'eb';
      case ValueFilterComparatorBuilderEnum.ap:
        return 'ap';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ValueFilterComparatorBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return ValueFilterComparatorBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ValueFilterComparatorBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'eq':
        return ValueFilterComparatorBuilderEnum.eq;
      case 'ne':
        return ValueFilterComparatorBuilderEnum.ne;
      case 'gt':
        return ValueFilterComparatorBuilderEnum.gt;
      case 'lt':
        return ValueFilterComparatorBuilderEnum.lt;
      case 'ge':
        return ValueFilterComparatorBuilderEnum.ge;
      case 'le':
        return ValueFilterComparatorBuilderEnum.le;
      case 'sa':
        return ValueFilterComparatorBuilderEnum.sa;
      case 'eb':
        return ValueFilterComparatorBuilderEnum.eb;
      case 'ap':
        return ValueFilterComparatorBuilderEnum.ap;
    }
    return null;
  }
}

/// The type of comparator operator to use
class ValueFilterComparatorBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ValueFilterComparatorBuilder._({
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
  factory ValueFilterComparatorBuilder(
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
    final valueEnum = ValueFilterComparatorBuilderEnum.fromString(
      valueString,
    );
    return ValueFilterComparatorBuilder._(
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

  /// Create empty [ValueFilterComparatorBuilder]
  /// with element only
  factory ValueFilterComparatorBuilder.empty() =>
      ValueFilterComparatorBuilder._(valueString: null);

  /// Factory constructor to create
  /// [ValueFilterComparatorBuilder] from JSON.
  factory ValueFilterComparatorBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ValueFilterComparatorBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ValueFilterComparatorBuilder cannot be constructed from JSON.',
      );
    }
    return ValueFilterComparatorBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for ValueFilterComparatorBuilder
  final ValueFilterComparatorBuilderEnum? valueEnum;

  /// eq
  static ValueFilterComparatorBuilder eq = ValueFilterComparatorBuilder._(
    valueString: 'eq',
    valueEnum: ValueFilterComparatorBuilderEnum.eq,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/value-filter-comparator',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Equals',
    ),
  );

  /// ne
  static ValueFilterComparatorBuilder ne = ValueFilterComparatorBuilder._(
    valueString: 'ne',
    valueEnum: ValueFilterComparatorBuilderEnum.ne,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/value-filter-comparator',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Not Equals',
    ),
  );

  /// gt
  static ValueFilterComparatorBuilder gt = ValueFilterComparatorBuilder._(
    valueString: 'gt',
    valueEnum: ValueFilterComparatorBuilderEnum.gt,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/value-filter-comparator',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Greater Than',
    ),
  );

  /// lt
  static ValueFilterComparatorBuilder lt = ValueFilterComparatorBuilder._(
    valueString: 'lt',
    valueEnum: ValueFilterComparatorBuilderEnum.lt,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/value-filter-comparator',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Less Than',
    ),
  );

  /// ge
  static ValueFilterComparatorBuilder ge = ValueFilterComparatorBuilder._(
    valueString: 'ge',
    valueEnum: ValueFilterComparatorBuilderEnum.ge,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/value-filter-comparator',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Greater or Equals',
    ),
  );

  /// le
  static ValueFilterComparatorBuilder le = ValueFilterComparatorBuilder._(
    valueString: 'le',
    valueEnum: ValueFilterComparatorBuilderEnum.le,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/value-filter-comparator',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Less of Equal',
    ),
  );

  /// sa
  static ValueFilterComparatorBuilder sa = ValueFilterComparatorBuilder._(
    valueString: 'sa',
    valueEnum: ValueFilterComparatorBuilderEnum.sa,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/value-filter-comparator',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Starts After',
    ),
  );

  /// eb
  static ValueFilterComparatorBuilder eb = ValueFilterComparatorBuilder._(
    valueString: 'eb',
    valueEnum: ValueFilterComparatorBuilderEnum.eb,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/value-filter-comparator',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Ends Before',
    ),
  );

  /// ap
  static ValueFilterComparatorBuilder ap = ValueFilterComparatorBuilder._(
    valueString: 'ap',
    valueEnum: ValueFilterComparatorBuilderEnum.ap,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/value-filter-comparator',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Approximately',
    ),
  );

  /// For instances where an Element is present but not value
  static ValueFilterComparatorBuilder elementOnly =
      ValueFilterComparatorBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<ValueFilterComparatorBuilder> values = [
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
  ValueFilterComparatorBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ValueFilterComparatorBuilder._(
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
