// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for SubscriptionPayloadContent
enum SubscriptionPayloadContentEnum {
  /// empty
  empty_,

  /// id-only
  idOnly,

  /// full-resource
  fullResource,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case SubscriptionPayloadContentEnum.empty_:
        return 'empty';
      case SubscriptionPayloadContentEnum.idOnly:
        return 'id-only';
      case SubscriptionPayloadContentEnum.fullResource:
        return 'full-resource';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static SubscriptionPayloadContentEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return SubscriptionPayloadContentEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static SubscriptionPayloadContentEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'empty':
        return SubscriptionPayloadContentEnum.empty_;
      case 'id-only':
        return SubscriptionPayloadContentEnum.idOnly;
      case 'full-resource':
        return SubscriptionPayloadContentEnum.fullResource;
    }
    return null;
  }
}

/// Codes to represent how much resource content to send in the
/// notification payload.
class SubscriptionPayloadContent extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const SubscriptionPayloadContent._({
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
  factory SubscriptionPayloadContent(
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
    final valueEnum = SubscriptionPayloadContentEnum.fromString(valueString);
    return SubscriptionPayloadContent._(
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

  /// Factory constructor to create [SubscriptionPayloadContent]
  /// from JSON.
  factory SubscriptionPayloadContent.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = SubscriptionPayloadContentEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubscriptionPayloadContent._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SubscriptionPayloadContent cannot be constructed from JSON.',
      );
    }
    return SubscriptionPayloadContent._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for SubscriptionPayloadContent
  final SubscriptionPayloadContentEnum? valueEnum;

  /// empty_
  static const SubscriptionPayloadContent empty_ = SubscriptionPayloadContent._(
    valueString: 'empty',
    valueEnum: SubscriptionPayloadContentEnum.empty_,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/subscription-payload-content',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Empty',
    ),
  );

  /// id_only
  static const SubscriptionPayloadContent idOnly = SubscriptionPayloadContent._(
    valueString: 'id-only',
    valueEnum: SubscriptionPayloadContentEnum.idOnly,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/subscription-payload-content',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Id-only',
    ),
  );

  /// full_resource
  static const SubscriptionPayloadContent fullResource =
      SubscriptionPayloadContent._(
    valueString: 'full-resource',
    valueEnum: SubscriptionPayloadContentEnum.fullResource,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/subscription-payload-content',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Full-resource',
    ),
  );

  /// List of all enum-like values
  static final List<SubscriptionPayloadContent> values = [
    empty_,
    idOnly,
    fullResource,
  ];

  /// Returns the enum value with an element attached
  SubscriptionPayloadContent withElement(Element? newElement) {
    return SubscriptionPayloadContent._(
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
  SubscriptionPayloadContent clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  SubscriptionPayloadContentCopyWithImpl<SubscriptionPayloadContent>
      get copyWith =>
          SubscriptionPayloadContentCopyWithImpl<SubscriptionPayloadContent>(
            this,
            (v) => v as SubscriptionPayloadContent,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class SubscriptionPayloadContentCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  SubscriptionPayloadContentCopyWithImpl(super._value, super._then);

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
      SubscriptionPayloadContent(
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
