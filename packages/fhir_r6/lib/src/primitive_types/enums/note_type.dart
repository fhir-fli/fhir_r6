// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for NoteType
enum NoteTypeEnum {
  /// display
  display_,

  /// print
  print,

  /// printoper
  printoper,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case NoteTypeEnum.display_:
        return 'display';
      case NoteTypeEnum.print:
        return 'print';
      case NoteTypeEnum.printoper:
        return 'printoper';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static NoteTypeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return NoteTypeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static NoteTypeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'display':
        return NoteTypeEnum.display_;
      case 'print':
        return NoteTypeEnum.print;
      case 'printoper':
        return NoteTypeEnum.printoper;
    }
    return null;
  }
}

/// The presentation types of notes.
class NoteType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const NoteType._({
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
  factory NoteType(
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
    final valueEnum = NoteTypeEnum.fromString(valueString);
    return NoteType._(
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

  /// Factory constructor to create [NoteType]
  /// from JSON.
  factory NoteType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = NoteTypeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NoteType._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'NoteType cannot be constructed from JSON.',
      );
    }
    return NoteType._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for NoteType
  final NoteTypeEnum? valueEnum;

  /// display_
  static const NoteType display_ = NoteType._(
    valueString: 'display',
    valueEnum: NoteTypeEnum.display_,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/note-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Display',
    ),
  );

  /// print
  static const NoteType print = NoteType._(
    valueString: 'print',
    valueEnum: NoteTypeEnum.print,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/note-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Print (Form)',
    ),
  );

  /// printoper
  static const NoteType printoper = NoteType._(
    valueString: 'printoper',
    valueEnum: NoteTypeEnum.printoper,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/note-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Print (Operator)',
    ),
  );

  /// List of all enum-like values
  static final List<NoteType> values = [
    display_,
    print,
    printoper,
  ];

  /// Returns the enum value with an element attached
  NoteType withElement(Element? newElement) {
    return NoteType._(
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
  NoteType clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  NoteTypeCopyWithImpl<NoteType> get copyWith => NoteTypeCopyWithImpl<NoteType>(
        this,
        (v) => v as NoteType,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class NoteTypeCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  NoteTypeCopyWithImpl(super._value, super._then);

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
      NoteType(
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
