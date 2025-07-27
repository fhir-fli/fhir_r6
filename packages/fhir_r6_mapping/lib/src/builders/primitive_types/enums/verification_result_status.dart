// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for VerificationResultStatus
enum VerificationResultStatusBuilderEnum {
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
      case VerificationResultStatusBuilderEnum.attested:
        return 'attested';
      case VerificationResultStatusBuilderEnum.validated:
        return 'validated';
      case VerificationResultStatusBuilderEnum.inProcess:
        return 'in-process';
      case VerificationResultStatusBuilderEnum.reqRevalid:
        return 'req-revalid';
      case VerificationResultStatusBuilderEnum.valFail:
        return 'val-fail';
      case VerificationResultStatusBuilderEnum.revalFail:
        return 'reval-fail';
      case VerificationResultStatusBuilderEnum.enteredInError:
        return 'entered-in-error';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static VerificationResultStatusBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return VerificationResultStatusBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static VerificationResultStatusBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'attested':
        return VerificationResultStatusBuilderEnum.attested;
      case 'validated':
        return VerificationResultStatusBuilderEnum.validated;
      case 'in-process':
        return VerificationResultStatusBuilderEnum.inProcess;
      case 'req-revalid':
        return VerificationResultStatusBuilderEnum.reqRevalid;
      case 'val-fail':
        return VerificationResultStatusBuilderEnum.valFail;
      case 'reval-fail':
        return VerificationResultStatusBuilderEnum.revalFail;
      case 'entered-in-error':
        return VerificationResultStatusBuilderEnum.enteredInError;
    }
    return null;
  }
}

/// The validation status of the target
class VerificationResultStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  VerificationResultStatusBuilder._({
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
  factory VerificationResultStatusBuilder(
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
    final valueEnum = VerificationResultStatusBuilderEnum.fromString(
      valueString,
    );
    return VerificationResultStatusBuilder._(
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

  /// Create empty [VerificationResultStatusBuilder]
  /// with element only
  factory VerificationResultStatusBuilder.empty() =>
      VerificationResultStatusBuilder._(valueString: null);

  /// Factory constructor to create
  /// [VerificationResultStatusBuilder] from JSON.
  factory VerificationResultStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return VerificationResultStatusBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'VerificationResultStatusBuilder cannot be constructed from JSON.',
      );
    }
    return VerificationResultStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for VerificationResultStatusBuilder
  final VerificationResultStatusBuilderEnum? valueEnum;

  /// attested
  static VerificationResultStatusBuilder attested =
      VerificationResultStatusBuilder._(
    valueString: 'attested',
    valueEnum: VerificationResultStatusBuilderEnum.attested,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/verificationresult-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Attested',
    ),
  );

  /// validated
  static VerificationResultStatusBuilder validated =
      VerificationResultStatusBuilder._(
    valueString: 'validated',
    valueEnum: VerificationResultStatusBuilderEnum.validated,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/verificationresult-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Validated',
    ),
  );

  /// in_process
  static VerificationResultStatusBuilder inProcess =
      VerificationResultStatusBuilder._(
    valueString: 'in-process',
    valueEnum: VerificationResultStatusBuilderEnum.inProcess,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/verificationresult-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'In process',
    ),
  );

  /// req_revalid
  static VerificationResultStatusBuilder reqRevalid =
      VerificationResultStatusBuilder._(
    valueString: 'req-revalid',
    valueEnum: VerificationResultStatusBuilderEnum.reqRevalid,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/verificationresult-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Requires revalidation',
    ),
  );

  /// val_fail
  static VerificationResultStatusBuilder valFail =
      VerificationResultStatusBuilder._(
    valueString: 'val-fail',
    valueEnum: VerificationResultStatusBuilderEnum.valFail,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/verificationresult-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Validation failed',
    ),
  );

  /// reval_fail
  static VerificationResultStatusBuilder revalFail =
      VerificationResultStatusBuilder._(
    valueString: 'reval-fail',
    valueEnum: VerificationResultStatusBuilderEnum.revalFail,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/verificationresult-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Re-Validation failed',
    ),
  );

  /// entered_in_error
  static VerificationResultStatusBuilder enteredInError =
      VerificationResultStatusBuilder._(
    valueString: 'entered-in-error',
    valueEnum: VerificationResultStatusBuilderEnum.enteredInError,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/verificationresult-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Entered in Error',
    ),
  );

  /// For instances where an Element is present but not value
  static VerificationResultStatusBuilder elementOnly =
      VerificationResultStatusBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<VerificationResultStatusBuilder> values = [
    attested,
    validated,
    inProcess,
    reqRevalid,
    valFail,
    revalFail,
    enteredInError,
  ];

  /// Returns the enum value with an element attached
  VerificationResultStatusBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return VerificationResultStatusBuilder._(
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
