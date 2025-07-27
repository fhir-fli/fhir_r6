// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ConsentState
enum ConsentStateEnum {
  /// draft
  draft,

  /// active
  active,

  /// inactive
  inactive,

  /// not-done
  notDone,

  /// entered-in-error
  enteredInError,

  /// unknown
  unknown,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ConsentStateEnum.draft:
        return 'draft';
      case ConsentStateEnum.active:
        return 'active';
      case ConsentStateEnum.inactive:
        return 'inactive';
      case ConsentStateEnum.notDone:
        return 'not-done';
      case ConsentStateEnum.enteredInError:
        return 'entered-in-error';
      case ConsentStateEnum.unknown:
        return 'unknown';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ConsentStateEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return ConsentStateEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ConsentStateEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'draft':
        return ConsentStateEnum.draft;
      case 'active':
        return ConsentStateEnum.active;
      case 'inactive':
        return ConsentStateEnum.inactive;
      case 'not-done':
        return ConsentStateEnum.notDone;
      case 'entered-in-error':
        return ConsentStateEnum.enteredInError;
      case 'unknown':
        return ConsentStateEnum.unknown;
    }
    return null;
  }
}

/// Indicates the state of the consent.
class ConsentState extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const ConsentState._({
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
  factory ConsentState(
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
    final valueEnum = ConsentStateEnum.fromString(valueString);
    return ConsentState._(
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

  /// Factory constructor to create [ConsentState]
  /// from JSON.
  factory ConsentState.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = ConsentStateEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConsentState._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ConsentState cannot be constructed from JSON.',
      );
    }
    return ConsentState._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for ConsentState
  final ConsentStateEnum? valueEnum;

  /// draft
  static const ConsentState draft = ConsentState._(
    valueString: 'draft',
    valueEnum: ConsentStateEnum.draft,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/consent-state-codes',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Pending',
    ),
  );

  /// active
  static const ConsentState active = ConsentState._(
    valueString: 'active',
    valueEnum: ConsentStateEnum.active,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/consent-state-codes',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Active',
    ),
  );

  /// inactive
  static const ConsentState inactive = ConsentState._(
    valueString: 'inactive',
    valueEnum: ConsentStateEnum.inactive,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/consent-state-codes',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Inactive',
    ),
  );

  /// not_done
  static const ConsentState notDone = ConsentState._(
    valueString: 'not-done',
    valueEnum: ConsentStateEnum.notDone,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/consent-state-codes',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Abandoned',
    ),
  );

  /// entered_in_error
  static const ConsentState enteredInError = ConsentState._(
    valueString: 'entered-in-error',
    valueEnum: ConsentStateEnum.enteredInError,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/consent-state-codes',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Entered in Error',
    ),
  );

  /// unknown
  static const ConsentState unknown = ConsentState._(
    valueString: 'unknown',
    valueEnum: ConsentStateEnum.unknown,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/consent-state-codes',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Unknown',
    ),
  );

  /// List of all enum-like values
  static final List<ConsentState> values = [
    draft,
    active,
    inactive,
    notDone,
    enteredInError,
    unknown,
  ];

  /// Returns the enum value with an element attached
  ConsentState withElement(Element? newElement) {
    return ConsentState._(
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
  ConsentState clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  ConsentStateCopyWithImpl<ConsentState> get copyWith =>
      ConsentStateCopyWithImpl<ConsentState>(
        this,
        (v) => v as ConsentState,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class ConsentStateCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  ConsentStateCopyWithImpl(super._value, super._then);

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
      ConsentState(
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
