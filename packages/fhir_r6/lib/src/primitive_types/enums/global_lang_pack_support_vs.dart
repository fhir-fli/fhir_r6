// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for GlobalLangPackSupportVS
enum GlobalLangPackSupportVSEnum {
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
      case GlobalLangPackSupportVSEnum.notSupported:
        return 'not-supported';
      case GlobalLangPackSupportVSEnum.explicit:
        return 'explicit';
      case GlobalLangPackSupportVSEnum.implicit:
        return 'implicit';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static GlobalLangPackSupportVSEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return GlobalLangPackSupportVSEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static GlobalLangPackSupportVSEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'not-supported':
        return GlobalLangPackSupportVSEnum.notSupported;
      case 'explicit':
        return GlobalLangPackSupportVSEnum.explicit;
      case 'implicit':
        return GlobalLangPackSupportVSEnum.implicit;
    }
    return null;
  }
}

/// How a server supports global language packs
class GlobalLangPackSupportVS extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const GlobalLangPackSupportVS._({
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
  factory GlobalLangPackSupportVS(
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
    final valueEnum = GlobalLangPackSupportVSEnum.fromString(valueString);
    return GlobalLangPackSupportVS._(
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

  /// Factory constructor to create [GlobalLangPackSupportVS]
  /// from JSON.
  factory GlobalLangPackSupportVS.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = GlobalLangPackSupportVSEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GlobalLangPackSupportVS._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'GlobalLangPackSupportVS cannot be constructed from JSON.',
      );
    }
    return GlobalLangPackSupportVS._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for GlobalLangPackSupportVS
  final GlobalLangPackSupportVSEnum? valueEnum;

  /// not_supported
  static const GlobalLangPackSupportVS notSupported = GlobalLangPackSupportVS._(
    valueString: 'not-supported',
    valueEnum: GlobalLangPackSupportVSEnum.notSupported,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/global-langpack-support',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Not Supported',
    ),
  );

  /// explicit
  static const GlobalLangPackSupportVS explicit = GlobalLangPackSupportVS._(
    valueString: 'explicit',
    valueEnum: GlobalLangPackSupportVSEnum.explicit,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/global-langpack-support',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Language Packs Supported by request',
    ),
  );

  /// implicit
  static const GlobalLangPackSupportVS implicit = GlobalLangPackSupportVS._(
    valueString: 'implicit',
    valueEnum: GlobalLangPackSupportVSEnum.implicit,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/global-langpack-support',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Global Language Packs Supported',
    ),
  );

  /// List of all enum-like values
  static final List<GlobalLangPackSupportVS> values = [
    notSupported,
    explicit,
    implicit,
  ];

  /// Returns the enum value with an element attached
  GlobalLangPackSupportVS withElement(Element? newElement) {
    return GlobalLangPackSupportVS._(
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
  GlobalLangPackSupportVS clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  GlobalLangPackSupportVSCopyWithImpl<GlobalLangPackSupportVS> get copyWith =>
      GlobalLangPackSupportVSCopyWithImpl<GlobalLangPackSupportVS>(
        this,
        (v) => v as GlobalLangPackSupportVS,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class GlobalLangPackSupportVSCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  GlobalLangPackSupportVSCopyWithImpl(super._value, super._then);

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
      GlobalLangPackSupportVS(
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
