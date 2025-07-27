// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for OperationParameterScope
enum OperationParameterScopeEnum {
  /// instance
  instance,

  /// type
  type,

  /// system
  system_,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case OperationParameterScopeEnum.instance:
        return 'instance';
      case OperationParameterScopeEnum.type:
        return 'type';
      case OperationParameterScopeEnum.system_:
        return 'system';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static OperationParameterScopeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return OperationParameterScopeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static OperationParameterScopeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'instance':
        return OperationParameterScopeEnum.instance;
      case 'type':
        return OperationParameterScopeEnum.type;
      case 'system':
        return OperationParameterScopeEnum.system_;
    }
    return null;
  }
}

/// Indicates that a parameter applies when the operation is being invoked
/// at the specified level
class OperationParameterScope extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const OperationParameterScope._({
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
  factory OperationParameterScope(
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
    final valueEnum = OperationParameterScopeEnum.fromString(valueString);
    return OperationParameterScope._(
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

  /// Factory constructor to create [OperationParameterScope]
  /// from JSON.
  factory OperationParameterScope.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = OperationParameterScopeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return OperationParameterScope._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'OperationParameterScope cannot be constructed from JSON.',
      );
    }
    return OperationParameterScope._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for OperationParameterScope
  final OperationParameterScopeEnum? valueEnum;

  /// instance
  static const OperationParameterScope instance = OperationParameterScope._(
    valueString: 'instance',
    valueEnum: OperationParameterScopeEnum.instance,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/operation-parameter-scope',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Instance',
    ),
  );

  /// type
  static const OperationParameterScope type = OperationParameterScope._(
    valueString: 'type',
    valueEnum: OperationParameterScopeEnum.type,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/operation-parameter-scope',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Type',
    ),
  );

  /// system_
  static const OperationParameterScope system_ = OperationParameterScope._(
    valueString: 'system',
    valueEnum: OperationParameterScopeEnum.system_,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/operation-parameter-scope',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'System',
    ),
  );

  /// List of all enum-like values
  static final List<OperationParameterScope> values = [
    instance,
    type,
    system_,
  ];

  /// Returns the enum value with an element attached
  OperationParameterScope withElement(Element? newElement) {
    return OperationParameterScope._(
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
  OperationParameterScope clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  OperationParameterScopeCopyWithImpl<OperationParameterScope> get copyWith =>
      OperationParameterScopeCopyWithImpl<OperationParameterScope>(
        this,
        (v) => v as OperationParameterScope,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class OperationParameterScopeCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  OperationParameterScopeCopyWithImpl(super._value, super._then);

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
      OperationParameterScope(
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
