// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for TriggeredBytype
enum TriggeredBytypeEnum {
  /// reflex
  reflex,

  /// repeat
  repeat,

  /// re-run
  reRun,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case TriggeredBytypeEnum.reflex:
        return 'reflex';
      case TriggeredBytypeEnum.repeat:
        return 'repeat';
      case TriggeredBytypeEnum.reRun:
        return 're-run';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static TriggeredBytypeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return TriggeredBytypeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static TriggeredBytypeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'reflex':
        return TriggeredBytypeEnum.reflex;
      case 'repeat':
        return TriggeredBytypeEnum.repeat;
      case 're-run':
        return TriggeredBytypeEnum.reRun;
    }
    return null;
  }
}

/// Codes providing the type of triggeredBy observation.
class TriggeredBytype extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const TriggeredBytype._({
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
  factory TriggeredBytype(
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
    final valueEnum = TriggeredBytypeEnum.fromString(valueString);
    return TriggeredBytype._(
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

  /// Factory constructor to create [TriggeredBytype]
  /// from JSON.
  factory TriggeredBytype.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = TriggeredBytypeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TriggeredBytype._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'TriggeredBytype cannot be constructed from JSON.',
      );
    }
    return TriggeredBytype._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for TriggeredBytype
  final TriggeredBytypeEnum? valueEnum;

  /// reflex
  static const TriggeredBytype reflex = TriggeredBytype._(
    valueString: 'reflex',
    valueEnum: TriggeredBytypeEnum.reflex,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/observation-triggeredbytype',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Reflex',
    ),
  );

  /// repeat
  static const TriggeredBytype repeat = TriggeredBytype._(
    valueString: 'repeat',
    valueEnum: TriggeredBytypeEnum.repeat,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/observation-triggeredbytype',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Repeat (per policy)',
    ),
  );

  /// re_run
  static const TriggeredBytype reRun = TriggeredBytype._(
    valueString: 're-run',
    valueEnum: TriggeredBytypeEnum.reRun,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/observation-triggeredbytype',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Re-run (per policy)',
    ),
  );

  /// List of all enum-like values
  static final List<TriggeredBytype> values = [
    reflex,
    repeat,
    reRun,
  ];

  /// Returns the enum value with an element attached
  TriggeredBytype withElement(Element? newElement) {
    return TriggeredBytype._(
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
  TriggeredBytype clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  TriggeredBytypeCopyWithImpl<TriggeredBytype> get copyWith =>
      TriggeredBytypeCopyWithImpl<TriggeredBytype>(
        this,
        (v) => v as TriggeredBytype,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class TriggeredBytypeCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  TriggeredBytypeCopyWithImpl(super._value, super._then);

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
      TriggeredBytype(
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
