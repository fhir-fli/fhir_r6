// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for SearchProcessingModeType
enum SearchProcessingModeTypeEnum {
  /// normal
  normal,

  /// phonetic
  phonetic,

  /// other
  other,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case SearchProcessingModeTypeEnum.normal:
        return 'normal';
      case SearchProcessingModeTypeEnum.phonetic:
        return 'phonetic';
      case SearchProcessingModeTypeEnum.other:
        return 'other';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static SearchProcessingModeTypeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return SearchProcessingModeTypeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static SearchProcessingModeTypeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'normal':
        return SearchProcessingModeTypeEnum.normal;
      case 'phonetic':
        return SearchProcessingModeTypeEnum.phonetic;
      case 'other':
        return SearchProcessingModeTypeEnum.other;
    }
    return null;
  }
}

/// How a search parameter relates to the set of elements returned by
/// evaluating its expression query.
class SearchProcessingModeType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const SearchProcessingModeType._({
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
  factory SearchProcessingModeType(
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
    final valueEnum = SearchProcessingModeTypeEnum.fromString(valueString);
    return SearchProcessingModeType._(
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

  /// Factory constructor to create [SearchProcessingModeType]
  /// from JSON.
  factory SearchProcessingModeType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = SearchProcessingModeTypeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SearchProcessingModeType._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SearchProcessingModeType cannot be constructed from JSON.',
      );
    }
    return SearchProcessingModeType._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for SearchProcessingModeType
  final SearchProcessingModeTypeEnum? valueEnum;

  /// normal
  static const SearchProcessingModeType normal = SearchProcessingModeType._(
    valueString: 'normal',
    valueEnum: SearchProcessingModeTypeEnum.normal,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-processingmode',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Normal',
    ),
  );

  /// phonetic
  static const SearchProcessingModeType phonetic = SearchProcessingModeType._(
    valueString: 'phonetic',
    valueEnum: SearchProcessingModeTypeEnum.phonetic,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-processingmode',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Phonetic',
    ),
  );

  /// other
  static const SearchProcessingModeType other = SearchProcessingModeType._(
    valueString: 'other',
    valueEnum: SearchProcessingModeTypeEnum.other,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-processingmode',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Other',
    ),
  );

  /// List of all enum-like values
  static final List<SearchProcessingModeType> values = [
    normal,
    phonetic,
    other,
  ];

  /// Returns the enum value with an element attached
  SearchProcessingModeType withElement(Element? newElement) {
    return SearchProcessingModeType._(
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
  SearchProcessingModeType clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  SearchProcessingModeTypeCopyWithImpl<SearchProcessingModeType> get copyWith =>
      SearchProcessingModeTypeCopyWithImpl<SearchProcessingModeType>(
        this,
        (v) => v as SearchProcessingModeType,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class SearchProcessingModeTypeCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  SearchProcessingModeTypeCopyWithImpl(super._value, super._then);

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
      SearchProcessingModeType(
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
