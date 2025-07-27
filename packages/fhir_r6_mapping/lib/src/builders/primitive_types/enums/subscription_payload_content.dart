// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for SubscriptionPayloadContent
enum SubscriptionPayloadContentBuilderEnum {
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
      case SubscriptionPayloadContentBuilderEnum.empty_:
        return 'empty';
      case SubscriptionPayloadContentBuilderEnum.idOnly:
        return 'id-only';
      case SubscriptionPayloadContentBuilderEnum.fullResource:
        return 'full-resource';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static SubscriptionPayloadContentBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return SubscriptionPayloadContentBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static SubscriptionPayloadContentBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'empty':
        return SubscriptionPayloadContentBuilderEnum.empty_;
      case 'id-only':
        return SubscriptionPayloadContentBuilderEnum.idOnly;
      case 'full-resource':
        return SubscriptionPayloadContentBuilderEnum.fullResource;
    }
    return null;
  }
}

/// Codes to represent how much resource content to send in the
/// notification payload.
class SubscriptionPayloadContentBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  SubscriptionPayloadContentBuilder._({
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
  factory SubscriptionPayloadContentBuilder(
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
    final valueEnum = SubscriptionPayloadContentBuilderEnum.fromString(
      valueString,
    );
    return SubscriptionPayloadContentBuilder._(
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

  /// Create empty [SubscriptionPayloadContentBuilder]
  /// with element only
  factory SubscriptionPayloadContentBuilder.empty() =>
      SubscriptionPayloadContentBuilder._(valueString: null);

  /// Factory constructor to create
  /// [SubscriptionPayloadContentBuilder] from JSON.
  factory SubscriptionPayloadContentBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubscriptionPayloadContentBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SubscriptionPayloadContentBuilder cannot be constructed from JSON.',
      );
    }
    return SubscriptionPayloadContentBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for SubscriptionPayloadContentBuilder
  final SubscriptionPayloadContentBuilderEnum? valueEnum;

  /// empty_
  static SubscriptionPayloadContentBuilder empty_ =
      SubscriptionPayloadContentBuilder._(
    valueString: 'empty',
    valueEnum: SubscriptionPayloadContentBuilderEnum.empty_,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/subscription-payload-content',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Empty',
    ),
  );

  /// id_only
  static SubscriptionPayloadContentBuilder idOnly =
      SubscriptionPayloadContentBuilder._(
    valueString: 'id-only',
    valueEnum: SubscriptionPayloadContentBuilderEnum.idOnly,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/subscription-payload-content',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Id-only',
    ),
  );

  /// full_resource
  static SubscriptionPayloadContentBuilder fullResource =
      SubscriptionPayloadContentBuilder._(
    valueString: 'full-resource',
    valueEnum: SubscriptionPayloadContentBuilderEnum.fullResource,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/subscription-payload-content',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Full-resource',
    ),
  );

  /// For instances where an Element is present but not value
  static SubscriptionPayloadContentBuilder elementOnly =
      SubscriptionPayloadContentBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<SubscriptionPayloadContentBuilder> values = [
    empty_,
    idOnly,
    fullResource,
  ];

  /// Returns the enum value with an element attached
  SubscriptionPayloadContentBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return SubscriptionPayloadContentBuilder._(
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
