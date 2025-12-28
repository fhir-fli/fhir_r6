// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for GlobalLangPackSupportVS
enum GlobalLangPackSupportVSBuilderEnum {
  /// not-supported
  notSupported,

  /// explicit
  explicit,

  /// implicit
  implicit,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case GlobalLangPackSupportVSBuilderEnum.notSupported:
        return 'not-supported';
      case GlobalLangPackSupportVSBuilderEnum.explicit:
        return 'explicit';
      case GlobalLangPackSupportVSBuilderEnum.implicit:
        return 'implicit';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static GlobalLangPackSupportVSBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return GlobalLangPackSupportVSBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static GlobalLangPackSupportVSBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'not-supported':
        return GlobalLangPackSupportVSBuilderEnum.notSupported;
      case 'explicit':
        return GlobalLangPackSupportVSBuilderEnum.explicit;
      case 'implicit':
        return GlobalLangPackSupportVSBuilderEnum.implicit;
    }
    return null;
  }
}

/// How a server supports global language packs
class GlobalLangPackSupportVSBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  GlobalLangPackSupportVSBuilder._({
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
  factory GlobalLangPackSupportVSBuilder(
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
    final valueEnum = GlobalLangPackSupportVSBuilderEnum.fromString(
      valueString,
    );
    return GlobalLangPackSupportVSBuilder._(
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

  /// Create empty [GlobalLangPackSupportVSBuilder]
  /// with element only
  factory GlobalLangPackSupportVSBuilder.empty() =>
      GlobalLangPackSupportVSBuilder._(valueString: null);

  /// Factory constructor to create
  /// [GlobalLangPackSupportVSBuilder] from JSON.
  factory GlobalLangPackSupportVSBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GlobalLangPackSupportVSBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'GlobalLangPackSupportVSBuilder cannot be constructed from JSON.',
      );
    }
    return GlobalLangPackSupportVSBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for GlobalLangPackSupportVSBuilder
  final GlobalLangPackSupportVSBuilderEnum? valueEnum;

  /// not_supported
  static GlobalLangPackSupportVSBuilder notSupported =
      GlobalLangPackSupportVSBuilder._(
    valueString: 'not-supported',
    valueEnum: GlobalLangPackSupportVSBuilderEnum.notSupported,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/global-langpack-support',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Not Supported',
    ),
  );

  /// explicit
  static GlobalLangPackSupportVSBuilder explicit =
      GlobalLangPackSupportVSBuilder._(
    valueString: 'explicit',
    valueEnum: GlobalLangPackSupportVSBuilderEnum.explicit,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/global-langpack-support',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Language Packs Supported by request',
    ),
  );

  /// implicit
  static GlobalLangPackSupportVSBuilder implicit =
      GlobalLangPackSupportVSBuilder._(
    valueString: 'implicit',
    valueEnum: GlobalLangPackSupportVSBuilderEnum.implicit,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/global-langpack-support',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Global Language Packs Supported',
    ),
  );

  /// For instances where an Element is present but not value
  static GlobalLangPackSupportVSBuilder elementOnly =
      GlobalLangPackSupportVSBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<GlobalLangPackSupportVSBuilder> values = [
    notSupported,
    explicit,
    implicit,
  ];

  /// Returns the enum value with an element attached
  GlobalLangPackSupportVSBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return GlobalLangPackSupportVSBuilder._(
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
