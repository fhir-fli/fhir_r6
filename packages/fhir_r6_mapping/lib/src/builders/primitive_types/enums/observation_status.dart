part of '../primitive_types.dart';

/// Actual enum for ObservationStatus
enum ObservationStatusBuilderEnum {
  /// registered
  registered,

  /// specimen-in-process
  specimenInProcess,

  /// preliminary
  preliminary,

  /// final
  final_,

  /// amended
  amended,

  /// corrected
  corrected,

  /// appended
  appended,

  /// cancelled
  cancelled,

  /// entered-in-error
  enteredInError,

  /// unknown
  unknown,

  /// cannot-be-obtained
  cannotBeObtained,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ObservationStatusBuilderEnum.registered:
        return 'registered';
      case ObservationStatusBuilderEnum.specimenInProcess:
        return 'specimen-in-process';
      case ObservationStatusBuilderEnum.preliminary:
        return 'preliminary';
      case ObservationStatusBuilderEnum.final_:
        return 'final';
      case ObservationStatusBuilderEnum.amended:
        return 'amended';
      case ObservationStatusBuilderEnum.corrected:
        return 'corrected';
      case ObservationStatusBuilderEnum.appended:
        return 'appended';
      case ObservationStatusBuilderEnum.cancelled:
        return 'cancelled';
      case ObservationStatusBuilderEnum.enteredInError:
        return 'entered-in-error';
      case ObservationStatusBuilderEnum.unknown:
        return 'unknown';
      case ObservationStatusBuilderEnum.cannotBeObtained:
        return 'cannot-be-obtained';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ObservationStatusBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return ObservationStatusBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ObservationStatusBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'registered':
        return ObservationStatusBuilderEnum.registered;
      case 'specimen-in-process':
        return ObservationStatusBuilderEnum.specimenInProcess;
      case 'preliminary':
        return ObservationStatusBuilderEnum.preliminary;
      case 'final':
        return ObservationStatusBuilderEnum.final_;
      case 'amended':
        return ObservationStatusBuilderEnum.amended;
      case 'corrected':
        return ObservationStatusBuilderEnum.corrected;
      case 'appended':
        return ObservationStatusBuilderEnum.appended;
      case 'cancelled':
        return ObservationStatusBuilderEnum.cancelled;
      case 'entered-in-error':
        return ObservationStatusBuilderEnum.enteredInError;
      case 'unknown':
        return ObservationStatusBuilderEnum.unknown;
      case 'cannot-be-obtained':
        return ObservationStatusBuilderEnum.cannotBeObtained;
    }
    return null;
  }
}

/// Codes providing the status of an observation.
class ObservationStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ObservationStatusBuilder._({
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
  factory ObservationStatusBuilder(
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
    final valueEnum = ObservationStatusBuilderEnum.fromString(
      valueString,
    );
    return ObservationStatusBuilder._(
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

  /// Create empty [ObservationStatusBuilder]
  /// with element only
  factory ObservationStatusBuilder.empty() =>
      ObservationStatusBuilder._(valueString: null);

  /// Factory constructor to create
  /// [ObservationStatusBuilder] from JSON.
  factory ObservationStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ObservationStatusBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ObservationStatusBuilder cannot be constructed from JSON.',
      );
    }
    return ObservationStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for ObservationStatusBuilder
  final ObservationStatusBuilderEnum? valueEnum;

  /// registered
  static ObservationStatusBuilder registered = ObservationStatusBuilder._(
    valueString: 'registered',
    valueEnum: ObservationStatusBuilderEnum.registered,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/observation-status',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Registered',
    ),
  );

  /// specimen_in_process
  static ObservationStatusBuilder specimenInProcess =
      ObservationStatusBuilder._(
    valueString: 'specimen-in-process',
    valueEnum: ObservationStatusBuilderEnum.specimenInProcess,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/observation-status',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Specimen-in-Process',
    ),
  );

  /// preliminary
  static ObservationStatusBuilder preliminary = ObservationStatusBuilder._(
    valueString: 'preliminary',
    valueEnum: ObservationStatusBuilderEnum.preliminary,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/observation-status',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Preliminary',
    ),
  );

  /// final_
  static ObservationStatusBuilder final_ = ObservationStatusBuilder._(
    valueString: 'final',
    valueEnum: ObservationStatusBuilderEnum.final_,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/observation-status',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Final',
    ),
  );

  /// amended
  static ObservationStatusBuilder amended = ObservationStatusBuilder._(
    valueString: 'amended',
    valueEnum: ObservationStatusBuilderEnum.amended,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/observation-status',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Amended',
    ),
  );

  /// corrected
  static ObservationStatusBuilder corrected = ObservationStatusBuilder._(
    valueString: 'corrected',
    valueEnum: ObservationStatusBuilderEnum.corrected,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/observation-status',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Corrected',
    ),
  );

  /// appended
  static ObservationStatusBuilder appended = ObservationStatusBuilder._(
    valueString: 'appended',
    valueEnum: ObservationStatusBuilderEnum.appended,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/observation-status',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Appended',
    ),
  );

  /// cancelled
  static ObservationStatusBuilder cancelled = ObservationStatusBuilder._(
    valueString: 'cancelled',
    valueEnum: ObservationStatusBuilderEnum.cancelled,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/observation-status',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Cancelled',
    ),
  );

  /// entered_in_error
  static ObservationStatusBuilder enteredInError = ObservationStatusBuilder._(
    valueString: 'entered-in-error',
    valueEnum: ObservationStatusBuilderEnum.enteredInError,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/observation-status',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Entered in Error',
    ),
  );

  /// unknown
  static ObservationStatusBuilder unknown = ObservationStatusBuilder._(
    valueString: 'unknown',
    valueEnum: ObservationStatusBuilderEnum.unknown,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/observation-status',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Unknown',
    ),
  );

  /// cannot_be_obtained
  static ObservationStatusBuilder cannotBeObtained = ObservationStatusBuilder._(
    valueString: 'cannot-be-obtained',
    valueEnum: ObservationStatusBuilderEnum.cannotBeObtained,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/observation-status',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Cannot be obtained',
    ),
  );

  /// For instances where an Element is present but not value
  static ObservationStatusBuilder elementOnly = ObservationStatusBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<ObservationStatusBuilder> values = [
    registered,
    specimenInProcess,
    preliminary,
    final_,
    amended,
    corrected,
    appended,
    cancelled,
    enteredInError,
    unknown,
    cannotBeObtained,
  ];

  /// Returns the enum value with an element attached
  ObservationStatusBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ObservationStatusBuilder._(
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
