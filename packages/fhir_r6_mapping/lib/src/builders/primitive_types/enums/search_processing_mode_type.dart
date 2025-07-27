// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for SearchProcessingModeType
enum SearchProcessingModeTypeBuilderEnum {
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
      case SearchProcessingModeTypeBuilderEnum.normal:
        return 'normal';
      case SearchProcessingModeTypeBuilderEnum.phonetic:
        return 'phonetic';
      case SearchProcessingModeTypeBuilderEnum.other:
        return 'other';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static SearchProcessingModeTypeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return SearchProcessingModeTypeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static SearchProcessingModeTypeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'normal':
        return SearchProcessingModeTypeBuilderEnum.normal;
      case 'phonetic':
        return SearchProcessingModeTypeBuilderEnum.phonetic;
      case 'other':
        return SearchProcessingModeTypeBuilderEnum.other;
    }
    return null;
  }
}

/// How a search parameter relates to the set of elements returned by
/// evaluating its expression query.
class SearchProcessingModeTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  SearchProcessingModeTypeBuilder._({
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
  factory SearchProcessingModeTypeBuilder(
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
    final valueEnum = SearchProcessingModeTypeBuilderEnum.fromString(
      valueString,
    );
    return SearchProcessingModeTypeBuilder._(
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

  /// Create empty [SearchProcessingModeTypeBuilder]
  /// with element only
  factory SearchProcessingModeTypeBuilder.empty() =>
      SearchProcessingModeTypeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [SearchProcessingModeTypeBuilder] from JSON.
  factory SearchProcessingModeTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SearchProcessingModeTypeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SearchProcessingModeTypeBuilder cannot be constructed from JSON.',
      );
    }
    return SearchProcessingModeTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for SearchProcessingModeTypeBuilder
  final SearchProcessingModeTypeBuilderEnum? valueEnum;

  /// normal
  static SearchProcessingModeTypeBuilder normal =
      SearchProcessingModeTypeBuilder._(
    valueString: 'normal',
    valueEnum: SearchProcessingModeTypeBuilderEnum.normal,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-processingmode',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Normal',
    ),
  );

  /// phonetic
  static SearchProcessingModeTypeBuilder phonetic =
      SearchProcessingModeTypeBuilder._(
    valueString: 'phonetic',
    valueEnum: SearchProcessingModeTypeBuilderEnum.phonetic,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-processingmode',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Phonetic',
    ),
  );

  /// other
  static SearchProcessingModeTypeBuilder other =
      SearchProcessingModeTypeBuilder._(
    valueString: 'other',
    valueEnum: SearchProcessingModeTypeBuilderEnum.other,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-processingmode',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Other',
    ),
  );

  /// For instances where an Element is present but not value
  static SearchProcessingModeTypeBuilder elementOnly =
      SearchProcessingModeTypeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<SearchProcessingModeTypeBuilder> values = [
    normal,
    phonetic,
    other,
  ];

  /// Returns the enum value with an element attached
  SearchProcessingModeTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return SearchProcessingModeTypeBuilder._(
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
