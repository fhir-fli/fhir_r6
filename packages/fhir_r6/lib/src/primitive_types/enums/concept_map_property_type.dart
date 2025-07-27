// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ConceptMapPropertyType
enum ConceptMapPropertyTypeEnum {
  /// Coding
  coding,

  /// string
  string,

  /// integer
  integer,

  /// boolean
  boolean,

  /// dateTime
  dateTime,

  /// decimal
  decimal,

  /// code
  code,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ConceptMapPropertyTypeEnum.coding:
        return 'Coding';
      case ConceptMapPropertyTypeEnum.string:
        return 'string';
      case ConceptMapPropertyTypeEnum.integer:
        return 'integer';
      case ConceptMapPropertyTypeEnum.boolean:
        return 'boolean';
      case ConceptMapPropertyTypeEnum.dateTime:
        return 'dateTime';
      case ConceptMapPropertyTypeEnum.decimal:
        return 'decimal';
      case ConceptMapPropertyTypeEnum.code:
        return 'code';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ConceptMapPropertyTypeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return ConceptMapPropertyTypeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ConceptMapPropertyTypeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'Coding':
        return ConceptMapPropertyTypeEnum.coding;
      case 'string':
        return ConceptMapPropertyTypeEnum.string;
      case 'integer':
        return ConceptMapPropertyTypeEnum.integer;
      case 'boolean':
        return ConceptMapPropertyTypeEnum.boolean;
      case 'dateTime':
        return ConceptMapPropertyTypeEnum.dateTime;
      case 'decimal':
        return ConceptMapPropertyTypeEnum.decimal;
      case 'code':
        return ConceptMapPropertyTypeEnum.code;
    }
    return null;
  }
}

/// The type of a ConceptMap mapping property value.
class ConceptMapPropertyType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const ConceptMapPropertyType._({
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
  factory ConceptMapPropertyType(
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
    final valueEnum = ConceptMapPropertyTypeEnum.fromString(valueString);
    return ConceptMapPropertyType._(
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

  /// Factory constructor to create [ConceptMapPropertyType]
  /// from JSON.
  factory ConceptMapPropertyType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = ConceptMapPropertyTypeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConceptMapPropertyType._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ConceptMapPropertyType cannot be constructed from JSON.',
      );
    }
    return ConceptMapPropertyType._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for ConceptMapPropertyType
  final ConceptMapPropertyTypeEnum? valueEnum;

  /// Coding
  static const ConceptMapPropertyType coding = ConceptMapPropertyType._(
    valueString: 'Coding',
    valueEnum: ConceptMapPropertyTypeEnum.coding,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/conceptmap-property-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Coding (external reference)',
    ),
  );

  /// string
  static const ConceptMapPropertyType string = ConceptMapPropertyType._(
    valueString: 'string',
    valueEnum: ConceptMapPropertyTypeEnum.string,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/conceptmap-property-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'string',
    ),
  );

  /// integer
  static const ConceptMapPropertyType integer = ConceptMapPropertyType._(
    valueString: 'integer',
    valueEnum: ConceptMapPropertyTypeEnum.integer,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/conceptmap-property-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'integer',
    ),
  );

  /// boolean
  static const ConceptMapPropertyType boolean = ConceptMapPropertyType._(
    valueString: 'boolean',
    valueEnum: ConceptMapPropertyTypeEnum.boolean,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/conceptmap-property-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'boolean',
    ),
  );

  /// dateTime
  static const ConceptMapPropertyType dateTime = ConceptMapPropertyType._(
    valueString: 'dateTime',
    valueEnum: ConceptMapPropertyTypeEnum.dateTime,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/conceptmap-property-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'dateTime',
    ),
  );

  /// decimal
  static const ConceptMapPropertyType decimal = ConceptMapPropertyType._(
    valueString: 'decimal',
    valueEnum: ConceptMapPropertyTypeEnum.decimal,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/conceptmap-property-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'decimal',
    ),
  );

  /// code
  static const ConceptMapPropertyType code = ConceptMapPropertyType._(
    valueString: 'code',
    valueEnum: ConceptMapPropertyTypeEnum.code,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/conceptmap-property-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'code',
    ),
  );

  /// List of all enum-like values
  static final List<ConceptMapPropertyType> values = [
    coding,
    string,
    integer,
    boolean,
    dateTime,
    decimal,
    code,
  ];

  /// Returns the enum value with an element attached
  ConceptMapPropertyType withElement(Element? newElement) {
    return ConceptMapPropertyType._(
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
  ConceptMapPropertyType clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  ConceptMapPropertyTypeCopyWithImpl<ConceptMapPropertyType> get copyWith =>
      ConceptMapPropertyTypeCopyWithImpl<ConceptMapPropertyType>(
        this,
        (v) => v as ConceptMapPropertyType,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class ConceptMapPropertyTypeCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  ConceptMapPropertyTypeCopyWithImpl(super._value, super._then);

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
      ConceptMapPropertyType(
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
