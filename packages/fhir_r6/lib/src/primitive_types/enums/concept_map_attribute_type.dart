// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ConceptMapAttributeType
enum ConceptMapAttributeTypeEnum {
  /// code
  code,

  /// Coding
  coding,

  /// string
  string,

  /// boolean
  boolean,

  /// Quantity
  quantity,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ConceptMapAttributeTypeEnum.code:
        return 'code';
      case ConceptMapAttributeTypeEnum.coding:
        return 'Coding';
      case ConceptMapAttributeTypeEnum.string:
        return 'string';
      case ConceptMapAttributeTypeEnum.boolean:
        return 'boolean';
      case ConceptMapAttributeTypeEnum.quantity:
        return 'Quantity';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ConceptMapAttributeTypeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return ConceptMapAttributeTypeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ConceptMapAttributeTypeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'code':
        return ConceptMapAttributeTypeEnum.code;
      case 'Coding':
        return ConceptMapAttributeTypeEnum.coding;
      case 'string':
        return ConceptMapAttributeTypeEnum.string;
      case 'boolean':
        return ConceptMapAttributeTypeEnum.boolean;
      case 'Quantity':
        return ConceptMapAttributeTypeEnum.quantity;
    }
    return null;
  }
}

/// The type of a ConceptMap mapping attribute value.
class ConceptMapAttributeType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const ConceptMapAttributeType._({
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
  factory ConceptMapAttributeType(
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
    final valueEnum = ConceptMapAttributeTypeEnum.fromString(valueString);
    return ConceptMapAttributeType._(
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

  /// Factory constructor to create [ConceptMapAttributeType]
  /// from JSON.
  factory ConceptMapAttributeType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = ConceptMapAttributeTypeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConceptMapAttributeType._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ConceptMapAttributeType cannot be constructed from JSON.',
      );
    }
    return ConceptMapAttributeType._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for ConceptMapAttributeType
  final ConceptMapAttributeTypeEnum? valueEnum;

  /// code
  static const ConceptMapAttributeType code = ConceptMapAttributeType._(
    valueString: 'code',
    valueEnum: ConceptMapAttributeTypeEnum.code,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/conceptmap-attribute-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'code',
    ),
  );

  /// Coding
  static const ConceptMapAttributeType coding = ConceptMapAttributeType._(
    valueString: 'Coding',
    valueEnum: ConceptMapAttributeTypeEnum.coding,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/conceptmap-attribute-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Coding',
    ),
  );

  /// string
  static const ConceptMapAttributeType string = ConceptMapAttributeType._(
    valueString: 'string',
    valueEnum: ConceptMapAttributeTypeEnum.string,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/conceptmap-attribute-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'string',
    ),
  );

  /// boolean
  static const ConceptMapAttributeType boolean = ConceptMapAttributeType._(
    valueString: 'boolean',
    valueEnum: ConceptMapAttributeTypeEnum.boolean,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/conceptmap-attribute-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'boolean',
    ),
  );

  /// Quantity
  static const ConceptMapAttributeType quantity = ConceptMapAttributeType._(
    valueString: 'Quantity',
    valueEnum: ConceptMapAttributeTypeEnum.quantity,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/conceptmap-attribute-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Quantity',
    ),
  );

  /// List of all enum-like values
  static final List<ConceptMapAttributeType> values = [
    code,
    coding,
    string,
    boolean,
    quantity,
  ];

  /// Returns the enum value with an element attached
  ConceptMapAttributeType withElement(Element? newElement) {
    return ConceptMapAttributeType._(
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
  ConceptMapAttributeType clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  ConceptMapAttributeTypeCopyWithImpl<ConceptMapAttributeType> get copyWith =>
      ConceptMapAttributeTypeCopyWithImpl<ConceptMapAttributeType>(
        this,
        (v) => v as ConceptMapAttributeType,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class ConceptMapAttributeTypeCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  ConceptMapAttributeTypeCopyWithImpl(super._value, super._then);

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
      ConceptMapAttributeType(
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
