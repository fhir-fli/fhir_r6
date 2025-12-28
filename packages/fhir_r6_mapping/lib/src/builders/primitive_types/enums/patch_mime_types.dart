// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for PatchMimeTypes
enum PatchMimeTypesBuilderEnum {
  /// application/fhir+xml
  applicationFhirXml,

  /// application/fhir+json
  applicationFhirJson,

  /// application/fhir+turtle
  applicationFhirTurtle,

  /// application/json-patch+json
  applicationJsonPatchJson,

  /// application/xml-patch+xml
  applicationXmlPatchXml,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case PatchMimeTypesBuilderEnum.applicationFhirXml:
        return 'application/fhir+xml';
      case PatchMimeTypesBuilderEnum.applicationFhirJson:
        return 'application/fhir+json';
      case PatchMimeTypesBuilderEnum.applicationFhirTurtle:
        return 'application/fhir+turtle';
      case PatchMimeTypesBuilderEnum.applicationJsonPatchJson:
        return 'application/json-patch+json';
      case PatchMimeTypesBuilderEnum.applicationXmlPatchXml:
        return 'application/xml-patch+xml';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static PatchMimeTypesBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return PatchMimeTypesBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static PatchMimeTypesBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'application/fhir+xml':
        return PatchMimeTypesBuilderEnum.applicationFhirXml;
      case 'application/fhir+json':
        return PatchMimeTypesBuilderEnum.applicationFhirJson;
      case 'application/fhir+turtle':
        return PatchMimeTypesBuilderEnum.applicationFhirTurtle;
      case 'application/json-patch+json':
        return PatchMimeTypesBuilderEnum.applicationJsonPatchJson;
      case 'application/xml-patch+xml':
        return PatchMimeTypesBuilderEnum.applicationXmlPatchXml;
    }
    return null;
  }
}

/// This value set includes the possible codes from
/// [BCP-13](http://tools.ietf.org/html/bcp13) that are valid for Patch
/// formats
class PatchMimeTypesBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  PatchMimeTypesBuilder._({
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
  factory PatchMimeTypesBuilder(
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
    final valueEnum = PatchMimeTypesBuilderEnum.fromString(
      valueString,
    );
    return PatchMimeTypesBuilder._(
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

  /// Create empty [PatchMimeTypesBuilder]
  /// with element only
  factory PatchMimeTypesBuilder.empty() =>
      PatchMimeTypesBuilder._(valueString: null);

  /// Factory constructor to create
  /// [PatchMimeTypesBuilder] from JSON.
  factory PatchMimeTypesBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PatchMimeTypesBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'PatchMimeTypesBuilder cannot be constructed from JSON.',
      );
    }
    return PatchMimeTypesBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for PatchMimeTypesBuilder
  final PatchMimeTypesBuilderEnum? valueEnum;

  /// application_fhir_xml
  static PatchMimeTypesBuilder applicationFhirXml = PatchMimeTypesBuilder._(
    valueString: 'application/fhir+xml',
    valueEnum: PatchMimeTypesBuilderEnum.applicationFhirXml,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/patchmimetypes',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: '',
    ),
  );

  /// application_fhir_json
  static PatchMimeTypesBuilder applicationFhirJson = PatchMimeTypesBuilder._(
    valueString: 'application/fhir+json',
    valueEnum: PatchMimeTypesBuilderEnum.applicationFhirJson,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/patchmimetypes',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: '',
    ),
  );

  /// application_fhir_turtle
  static PatchMimeTypesBuilder applicationFhirTurtle = PatchMimeTypesBuilder._(
    valueString: 'application/fhir+turtle',
    valueEnum: PatchMimeTypesBuilderEnum.applicationFhirTurtle,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/patchmimetypes',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: '',
    ),
  );

  /// application_json_patch_json
  static PatchMimeTypesBuilder applicationJsonPatchJson =
      PatchMimeTypesBuilder._(
    valueString: 'application/json-patch+json',
    valueEnum: PatchMimeTypesBuilderEnum.applicationJsonPatchJson,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/patchmimetypes',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: '',
    ),
  );

  /// application_xml_patch_xml
  static PatchMimeTypesBuilder applicationXmlPatchXml = PatchMimeTypesBuilder._(
    valueString: 'application/xml-patch+xml',
    valueEnum: PatchMimeTypesBuilderEnum.applicationXmlPatchXml,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/patchmimetypes',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: '',
    ),
  );

  /// For instances where an Element is present but not value
  static PatchMimeTypesBuilder elementOnly = PatchMimeTypesBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<PatchMimeTypesBuilder> values = [
    applicationFhirXml,
    applicationFhirJson,
    applicationFhirTurtle,
    applicationJsonPatchJson,
    applicationXmlPatchXml,
  ];

  /// Returns the enum value with an element attached
  PatchMimeTypesBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return PatchMimeTypesBuilder._(
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
