// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for MedicationStatementStatusCodes
enum MedicationStatementStatusCodesEnum {
  /// recorded
  recorded,

  /// entered-in-error
  enteredInError,

  /// draft
  draft,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case MedicationStatementStatusCodesEnum.recorded:
        return 'recorded';
      case MedicationStatementStatusCodesEnum.enteredInError:
        return 'entered-in-error';
      case MedicationStatementStatusCodesEnum.draft:
        return 'draft';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static MedicationStatementStatusCodesEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return MedicationStatementStatusCodesEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static MedicationStatementStatusCodesEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'recorded':
        return MedicationStatementStatusCodesEnum.recorded;
      case 'entered-in-error':
        return MedicationStatementStatusCodesEnum.enteredInError;
      case 'draft':
        return MedicationStatementStatusCodesEnum.draft;
    }
    return null;
  }
}

/// MedicationStatement Status Codes
class MedicationStatementStatusCodes extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const MedicationStatementStatusCodes._({
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
  factory MedicationStatementStatusCodes(
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
    final valueEnum =
        MedicationStatementStatusCodesEnum.fromString(valueString);
    return MedicationStatementStatusCodes._(
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

  /// Factory constructor to create [MedicationStatementStatusCodes]
  /// from JSON.
  factory MedicationStatementStatusCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = MedicationStatementStatusCodesEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationStatementStatusCodes._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'MedicationStatementStatusCodes cannot be constructed from JSON.',
      );
    }
    return MedicationStatementStatusCodes._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for MedicationStatementStatusCodes
  final MedicationStatementStatusCodesEnum? valueEnum;

  /// recorded
  static const MedicationStatementStatusCodes recorded =
      MedicationStatementStatusCodes._(
    valueString: 'recorded',
    valueEnum: MedicationStatementStatusCodesEnum.recorded,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/medication-statement-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Recorded',
    ),
  );

  /// entered_in_error
  static const MedicationStatementStatusCodes enteredInError =
      MedicationStatementStatusCodes._(
    valueString: 'entered-in-error',
    valueEnum: MedicationStatementStatusCodesEnum.enteredInError,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/medication-statement-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Entered in Error',
    ),
  );

  /// draft
  static const MedicationStatementStatusCodes draft =
      MedicationStatementStatusCodes._(
    valueString: 'draft',
    valueEnum: MedicationStatementStatusCodesEnum.draft,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/medication-statement-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Draft',
    ),
  );

  /// List of all enum-like values
  static final List<MedicationStatementStatusCodes> values = [
    recorded,
    enteredInError,
    draft,
  ];

  /// Returns the enum value with an element attached
  MedicationStatementStatusCodes withElement(Element? newElement) {
    return MedicationStatementStatusCodes._(
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
  MedicationStatementStatusCodes clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  MedicationStatementStatusCodesCopyWithImpl<MedicationStatementStatusCodes>
      get copyWith => MedicationStatementStatusCodesCopyWithImpl<
              MedicationStatementStatusCodes>(
            this,
            (v) => v as MedicationStatementStatusCodes,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class MedicationStatementStatusCodesCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  MedicationStatementStatusCodesCopyWithImpl(super._value, super._then);

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
      MedicationStatementStatusCodes(
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
