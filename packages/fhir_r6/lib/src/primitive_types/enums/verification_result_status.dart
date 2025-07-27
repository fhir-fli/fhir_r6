// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for VerificationResultStatus
enum VerificationResultStatusEnum {
  /// attested
  attested,

  /// validated
  validated,

  /// in-process
  inProcess,

  /// req-revalid
  reqRevalid,

  /// val-fail
  valFail,

  /// reval-fail
  revalFail,

  /// entered-in-error
  enteredInError,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case VerificationResultStatusEnum.attested:
        return 'attested';
      case VerificationResultStatusEnum.validated:
        return 'validated';
      case VerificationResultStatusEnum.inProcess:
        return 'in-process';
      case VerificationResultStatusEnum.reqRevalid:
        return 'req-revalid';
      case VerificationResultStatusEnum.valFail:
        return 'val-fail';
      case VerificationResultStatusEnum.revalFail:
        return 'reval-fail';
      case VerificationResultStatusEnum.enteredInError:
        return 'entered-in-error';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static VerificationResultStatusEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return VerificationResultStatusEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static VerificationResultStatusEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'attested':
        return VerificationResultStatusEnum.attested;
      case 'validated':
        return VerificationResultStatusEnum.validated;
      case 'in-process':
        return VerificationResultStatusEnum.inProcess;
      case 'req-revalid':
        return VerificationResultStatusEnum.reqRevalid;
      case 'val-fail':
        return VerificationResultStatusEnum.valFail;
      case 'reval-fail':
        return VerificationResultStatusEnum.revalFail;
      case 'entered-in-error':
        return VerificationResultStatusEnum.enteredInError;
    }
    return null;
  }
}

/// The validation status of the target
class VerificationResultStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const VerificationResultStatus._({
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
  factory VerificationResultStatus(
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
    final valueEnum = VerificationResultStatusEnum.fromString(valueString);
    return VerificationResultStatus._(
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

  /// Factory constructor to create [VerificationResultStatus]
  /// from JSON.
  factory VerificationResultStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = VerificationResultStatusEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return VerificationResultStatus._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'VerificationResultStatus cannot be constructed from JSON.',
      );
    }
    return VerificationResultStatus._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for VerificationResultStatus
  final VerificationResultStatusEnum? valueEnum;

  /// attested
  static const VerificationResultStatus attested = VerificationResultStatus._(
    valueString: 'attested',
    valueEnum: VerificationResultStatusEnum.attested,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/verificationresult-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Attested',
    ),
  );

  /// validated
  static const VerificationResultStatus validated = VerificationResultStatus._(
    valueString: 'validated',
    valueEnum: VerificationResultStatusEnum.validated,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/verificationresult-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Validated',
    ),
  );

  /// in_process
  static const VerificationResultStatus inProcess = VerificationResultStatus._(
    valueString: 'in-process',
    valueEnum: VerificationResultStatusEnum.inProcess,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/verificationresult-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'In process',
    ),
  );

  /// req_revalid
  static const VerificationResultStatus reqRevalid = VerificationResultStatus._(
    valueString: 'req-revalid',
    valueEnum: VerificationResultStatusEnum.reqRevalid,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/verificationresult-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Requires revalidation',
    ),
  );

  /// val_fail
  static const VerificationResultStatus valFail = VerificationResultStatus._(
    valueString: 'val-fail',
    valueEnum: VerificationResultStatusEnum.valFail,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/verificationresult-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Validation failed',
    ),
  );

  /// reval_fail
  static const VerificationResultStatus revalFail = VerificationResultStatus._(
    valueString: 'reval-fail',
    valueEnum: VerificationResultStatusEnum.revalFail,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/verificationresult-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Re-Validation failed',
    ),
  );

  /// entered_in_error
  static const VerificationResultStatus enteredInError =
      VerificationResultStatus._(
    valueString: 'entered-in-error',
    valueEnum: VerificationResultStatusEnum.enteredInError,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/verificationresult-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Entered in Error',
    ),
  );

  /// List of all enum-like values
  static final List<VerificationResultStatus> values = [
    attested,
    validated,
    inProcess,
    reqRevalid,
    valFail,
    revalFail,
    enteredInError,
  ];

  /// Returns the enum value with an element attached
  VerificationResultStatus withElement(Element? newElement) {
    return VerificationResultStatus._(
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
  VerificationResultStatus clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  VerificationResultStatusCopyWithImpl<VerificationResultStatus> get copyWith =>
      VerificationResultStatusCopyWithImpl<VerificationResultStatus>(
        this,
        (v) => v as VerificationResultStatus,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class VerificationResultStatusCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  VerificationResultStatusCopyWithImpl(super._value, super._then);

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
      VerificationResultStatus(
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
