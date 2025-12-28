// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for PatchMimeTypes
enum PatchMimeTypesEnum {
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
      case PatchMimeTypesEnum.applicationFhirXml:
        return 'application/fhir+xml';
      case PatchMimeTypesEnum.applicationFhirJson:
        return 'application/fhir+json';
      case PatchMimeTypesEnum.applicationFhirTurtle:
        return 'application/fhir+turtle';
      case PatchMimeTypesEnum.applicationJsonPatchJson:
        return 'application/json-patch+json';
      case PatchMimeTypesEnum.applicationXmlPatchXml:
        return 'application/xml-patch+xml';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static PatchMimeTypesEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return PatchMimeTypesEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static PatchMimeTypesEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'application/fhir+xml':
        return PatchMimeTypesEnum.applicationFhirXml;
      case 'application/fhir+json':
        return PatchMimeTypesEnum.applicationFhirJson;
      case 'application/fhir+turtle':
        return PatchMimeTypesEnum.applicationFhirTurtle;
      case 'application/json-patch+json':
        return PatchMimeTypesEnum.applicationJsonPatchJson;
      case 'application/xml-patch+xml':
        return PatchMimeTypesEnum.applicationXmlPatchXml;
    }
    return null;
  }
}

/// This value set includes the possible codes from
/// [BCP-13](http://tools.ietf.org/html/bcp13) that are valid for Patch
/// formats
class PatchMimeTypes extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const PatchMimeTypes._({
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
  factory PatchMimeTypes(
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
    final valueEnum = PatchMimeTypesEnum.fromString(valueString);
    return PatchMimeTypes._(
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

  /// Factory constructor to create [PatchMimeTypes]
  /// from JSON.
  factory PatchMimeTypes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = PatchMimeTypesEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PatchMimeTypes._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'PatchMimeTypes cannot be constructed from JSON.',
      );
    }
    return PatchMimeTypes._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for PatchMimeTypes
  final PatchMimeTypesEnum? valueEnum;

  /// application_fhir_xml
  static const PatchMimeTypes applicationFhirXml = PatchMimeTypes._(
    valueString: 'application/fhir+xml',
    valueEnum: PatchMimeTypesEnum.applicationFhirXml,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/patchmimetypes',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: '',
    ),
  );

  /// application_fhir_json
  static const PatchMimeTypes applicationFhirJson = PatchMimeTypes._(
    valueString: 'application/fhir+json',
    valueEnum: PatchMimeTypesEnum.applicationFhirJson,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/patchmimetypes',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: '',
    ),
  );

  /// application_fhir_turtle
  static const PatchMimeTypes applicationFhirTurtle = PatchMimeTypes._(
    valueString: 'application/fhir+turtle',
    valueEnum: PatchMimeTypesEnum.applicationFhirTurtle,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/patchmimetypes',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: '',
    ),
  );

  /// application_json_patch_json
  static const PatchMimeTypes applicationJsonPatchJson = PatchMimeTypes._(
    valueString: 'application/json-patch+json',
    valueEnum: PatchMimeTypesEnum.applicationJsonPatchJson,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/patchmimetypes',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: '',
    ),
  );

  /// application_xml_patch_xml
  static const PatchMimeTypes applicationXmlPatchXml = PatchMimeTypes._(
    valueString: 'application/xml-patch+xml',
    valueEnum: PatchMimeTypesEnum.applicationXmlPatchXml,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/patchmimetypes',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: '',
    ),
  );

  /// List of all enum-like values
  static final List<PatchMimeTypes> values = [
    applicationFhirXml,
    applicationFhirJson,
    applicationFhirTurtle,
    applicationJsonPatchJson,
    applicationXmlPatchXml,
  ];

  /// Returns the enum value with an element attached
  PatchMimeTypes withElement(Element? newElement) {
    return PatchMimeTypes._(
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
  PatchMimeTypes clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  PatchMimeTypesCopyWithImpl<PatchMimeTypes> get copyWith =>
      PatchMimeTypesCopyWithImpl<PatchMimeTypes>(
        this,
        (v) => v as PatchMimeTypes,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class PatchMimeTypesCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  PatchMimeTypesCopyWithImpl(super._value, super._then);

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
      PatchMimeTypes(
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
