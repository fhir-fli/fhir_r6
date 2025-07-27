// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for CodeSearchSupport
enum CodeSearchSupportEnum {
  /// in-compose
  inCompose,

  /// in-expansion
  inExpansion,

  /// in-compose-or-expansion
  inComposeOrExpansion,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case CodeSearchSupportEnum.inCompose:
        return 'in-compose';
      case CodeSearchSupportEnum.inExpansion:
        return 'in-expansion';
      case CodeSearchSupportEnum.inComposeOrExpansion:
        return 'in-compose-or-expansion';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static CodeSearchSupportEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return CodeSearchSupportEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static CodeSearchSupportEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'in-compose':
        return CodeSearchSupportEnum.inCompose;
      case 'in-expansion':
        return CodeSearchSupportEnum.inExpansion;
      case 'in-compose-or-expansion':
        return CodeSearchSupportEnum.inComposeOrExpansion;
    }
    return null;
  }
}

/// The degree to which the server supports the code search parameter on
/// ValueSet, if it is supported.
class CodeSearchSupport extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const CodeSearchSupport._({
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
  factory CodeSearchSupport(
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
    final valueEnum = CodeSearchSupportEnum.fromString(valueString);
    return CodeSearchSupport._(
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

  /// Factory constructor to create [CodeSearchSupport]
  /// from JSON.
  factory CodeSearchSupport.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = CodeSearchSupportEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CodeSearchSupport._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CodeSearchSupport cannot be constructed from JSON.',
      );
    }
    return CodeSearchSupport._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for CodeSearchSupport
  final CodeSearchSupportEnum? valueEnum;

  /// in_compose
  static const CodeSearchSupport inCompose = CodeSearchSupport._(
    valueString: 'in-compose',
    valueEnum: CodeSearchSupportEnum.inCompose,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/code-search-support',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'In Compose',
    ),
  );

  /// in_expansion
  static const CodeSearchSupport inExpansion = CodeSearchSupport._(
    valueString: 'in-expansion',
    valueEnum: CodeSearchSupportEnum.inExpansion,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/code-search-support',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'In Expansion',
    ),
  );

  /// in_compose_or_expansion
  static const CodeSearchSupport inComposeOrExpansion = CodeSearchSupport._(
    valueString: 'in-compose-or-expansion',
    valueEnum: CodeSearchSupportEnum.inComposeOrExpansion,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/code-search-support',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'In Compose Or Expansion',
    ),
  );

  /// List of all enum-like values
  static final List<CodeSearchSupport> values = [
    inCompose,
    inExpansion,
    inComposeOrExpansion,
  ];

  /// Returns the enum value with an element attached
  CodeSearchSupport withElement(Element? newElement) {
    return CodeSearchSupport._(
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
  CodeSearchSupport clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  CodeSearchSupportCopyWithImpl<CodeSearchSupport> get copyWith =>
      CodeSearchSupportCopyWithImpl<CodeSearchSupport>(
        this,
        (v) => v as CodeSearchSupport,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class CodeSearchSupportCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  CodeSearchSupportCopyWithImpl(super._value, super._then);

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
      CodeSearchSupport(
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
