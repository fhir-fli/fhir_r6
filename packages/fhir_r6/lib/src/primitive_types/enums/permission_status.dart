// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for PermissionStatus
enum PermissionStatusEnum {
  /// active
  active,

  /// entered-in-error
  enteredInError,

  /// draft
  draft,

  /// rejected
  rejected,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case PermissionStatusEnum.active:
        return 'active';
      case PermissionStatusEnum.enteredInError:
        return 'entered-in-error';
      case PermissionStatusEnum.draft:
        return 'draft';
      case PermissionStatusEnum.rejected:
        return 'rejected';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static PermissionStatusEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return PermissionStatusEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static PermissionStatusEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'active':
        return PermissionStatusEnum.active;
      case 'entered-in-error':
        return PermissionStatusEnum.enteredInError;
      case 'draft':
        return PermissionStatusEnum.draft;
      case 'rejected':
        return PermissionStatusEnum.rejected;
    }
    return null;
  }
}

/// Codes identifying the lifecycle stage of a product.
class PermissionStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const PermissionStatus._({
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
  factory PermissionStatus(
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
    final valueEnum = PermissionStatusEnum.fromString(valueString);
    return PermissionStatus._(
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

  /// Factory constructor to create [PermissionStatus]
  /// from JSON.
  factory PermissionStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = PermissionStatusEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PermissionStatus._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'PermissionStatus cannot be constructed from JSON.',
      );
    }
    return PermissionStatus._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for PermissionStatus
  final PermissionStatusEnum? valueEnum;

  /// active
  static const PermissionStatus active = PermissionStatus._(
    valueString: 'active',
    valueEnum: PermissionStatusEnum.active,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/permission-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Active',
    ),
  );

  /// entered_in_error
  static const PermissionStatus enteredInError = PermissionStatus._(
    valueString: 'entered-in-error',
    valueEnum: PermissionStatusEnum.enteredInError,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/permission-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Entered in Error',
    ),
  );

  /// draft
  static const PermissionStatus draft = PermissionStatus._(
    valueString: 'draft',
    valueEnum: PermissionStatusEnum.draft,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/permission-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Draft',
    ),
  );

  /// rejected
  static const PermissionStatus rejected = PermissionStatus._(
    valueString: 'rejected',
    valueEnum: PermissionStatusEnum.rejected,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/permission-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Rejected',
    ),
  );

  /// List of all enum-like values
  static final List<PermissionStatus> values = [
    active,
    enteredInError,
    draft,
    rejected,
  ];

  /// Returns the enum value with an element attached
  PermissionStatus withElement(Element? newElement) {
    return PermissionStatus._(
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
  PermissionStatus clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  PermissionStatusCopyWithImpl<PermissionStatus> get copyWith =>
      PermissionStatusCopyWithImpl<PermissionStatus>(
        this,
        (v) => v as PermissionStatus,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class PermissionStatusCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  PermissionStatusCopyWithImpl(super._value, super._then);

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
      PermissionStatus(
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
