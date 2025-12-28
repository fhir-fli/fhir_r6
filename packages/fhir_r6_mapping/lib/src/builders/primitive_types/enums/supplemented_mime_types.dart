part of '../primitive_types.dart';

/// Actual enum for SupplementedMimeTypes
enum SupplementedMimeTypesBuilderEnum {
  /// xml
  xml,

  /// json
  json,

  /// ttl
  ttl,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case SupplementedMimeTypesBuilderEnum.xml:
        return 'xml';
      case SupplementedMimeTypesBuilderEnum.json:
        return 'json';
      case SupplementedMimeTypesBuilderEnum.ttl:
        return 'ttl';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static SupplementedMimeTypesBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return SupplementedMimeTypesBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static SupplementedMimeTypesBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'xml':
        return SupplementedMimeTypesBuilderEnum.xml;
      case 'json':
        return SupplementedMimeTypesBuilderEnum.json;
      case 'ttl':
        return SupplementedMimeTypesBuilderEnum.ttl;
    }
    return null;
  }
}

/// This value set includes all possible codes from BCP-13 (see
/// http://tools.ietf.org/html/bcp13), and xml, json, and ttl
class SupplementedMimeTypesBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  SupplementedMimeTypesBuilder._({
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
  factory SupplementedMimeTypesBuilder(
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
    final valueEnum = SupplementedMimeTypesBuilderEnum.fromString(
      valueString,
    );
    return SupplementedMimeTypesBuilder._(
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

  /// Create empty [SupplementedMimeTypesBuilder]
  /// with element only
  factory SupplementedMimeTypesBuilder.empty() =>
      SupplementedMimeTypesBuilder._(valueString: null);

  /// Factory constructor to create
  /// [SupplementedMimeTypesBuilder] from JSON.
  factory SupplementedMimeTypesBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SupplementedMimeTypesBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SupplementedMimeTypesBuilder cannot be constructed from JSON.',
      );
    }
    return SupplementedMimeTypesBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for SupplementedMimeTypesBuilder
  final SupplementedMimeTypesBuilderEnum? valueEnum;

  /// xml
  static SupplementedMimeTypesBuilder xml = SupplementedMimeTypesBuilder._(
    valueString: 'xml',
    valueEnum: SupplementedMimeTypesBuilderEnum.xml,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/supplemented-mimetypes',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'xml',
    ),
  );

  /// json
  static SupplementedMimeTypesBuilder json = SupplementedMimeTypesBuilder._(
    valueString: 'json',
    valueEnum: SupplementedMimeTypesBuilderEnum.json,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/supplemented-mimetypes',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'json',
    ),
  );

  /// ttl
  static SupplementedMimeTypesBuilder ttl = SupplementedMimeTypesBuilder._(
    valueString: 'ttl',
    valueEnum: SupplementedMimeTypesBuilderEnum.ttl,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/supplemented-mimetypes',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'ttl',
    ),
  );

  /// For instances where an Element is present but not value
  static SupplementedMimeTypesBuilder elementOnly =
      SupplementedMimeTypesBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<SupplementedMimeTypesBuilder> values = [
    xml,
    json,
    ttl,
  ];

  /// Returns the enum value with an element attached
  SupplementedMimeTypesBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return SupplementedMimeTypesBuilder._(
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
