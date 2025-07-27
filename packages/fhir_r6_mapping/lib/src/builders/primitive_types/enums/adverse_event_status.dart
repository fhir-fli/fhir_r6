// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for AdverseEventStatus
enum AdverseEventStatusBuilderEnum {
  /// preparation
  preparation,

  /// in-progress
  inProgress,

  /// not-done
  notDone,

  /// on-hold
  onHold,

  /// stopped
  stopped,

  /// completed
  completed,

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
      case AdverseEventStatusBuilderEnum.preparation:
        return 'preparation';
      case AdverseEventStatusBuilderEnum.inProgress:
        return 'in-progress';
      case AdverseEventStatusBuilderEnum.notDone:
        return 'not-done';
      case AdverseEventStatusBuilderEnum.onHold:
        return 'on-hold';
      case AdverseEventStatusBuilderEnum.stopped:
        return 'stopped';
      case AdverseEventStatusBuilderEnum.completed:
        return 'completed';
      case AdverseEventStatusBuilderEnum.enteredInError:
        return 'entered-in-error';
      case AdverseEventStatusBuilderEnum.unknown:
        return 'unknown';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static AdverseEventStatusBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return AdverseEventStatusBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static AdverseEventStatusBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'preparation':
        return AdverseEventStatusBuilderEnum.preparation;
      case 'in-progress':
        return AdverseEventStatusBuilderEnum.inProgress;
      case 'not-done':
        return AdverseEventStatusBuilderEnum.notDone;
      case 'on-hold':
        return AdverseEventStatusBuilderEnum.onHold;
      case 'stopped':
        return AdverseEventStatusBuilderEnum.stopped;
      case 'completed':
        return AdverseEventStatusBuilderEnum.completed;
      case 'entered-in-error':
        return AdverseEventStatusBuilderEnum.enteredInError;
      case 'unknown':
        return AdverseEventStatusBuilderEnum.unknown;
    }
    return null;
  }
}

/// Codes identifying the lifecycle stage of an adverse event.
class AdverseEventStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  AdverseEventStatusBuilder._({
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
  factory AdverseEventStatusBuilder(
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
    final valueEnum = AdverseEventStatusBuilderEnum.fromString(
      valueString,
    );
    return AdverseEventStatusBuilder._(
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

  /// Create empty [AdverseEventStatusBuilder]
  /// with element only
  factory AdverseEventStatusBuilder.empty() =>
      AdverseEventStatusBuilder._(valueString: null);

  /// Factory constructor to create
  /// [AdverseEventStatusBuilder] from JSON.
  factory AdverseEventStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdverseEventStatusBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AdverseEventStatusBuilder cannot be constructed from JSON.',
      );
    }
    return AdverseEventStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for AdverseEventStatusBuilder
  final AdverseEventStatusBuilderEnum? valueEnum;

  /// preparation
  static AdverseEventStatusBuilder preparation = AdverseEventStatusBuilder._(
    valueString: 'preparation',
    valueEnum: AdverseEventStatusBuilderEnum.preparation,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/adverse-event-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Preparation',
    ),
  );

  /// in_progress
  static AdverseEventStatusBuilder inProgress = AdverseEventStatusBuilder._(
    valueString: 'in-progress',
    valueEnum: AdverseEventStatusBuilderEnum.inProgress,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/adverse-event-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'In Progress',
    ),
  );

  /// not_done
  static AdverseEventStatusBuilder notDone = AdverseEventStatusBuilder._(
    valueString: 'not-done',
    valueEnum: AdverseEventStatusBuilderEnum.notDone,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/adverse-event-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Not Done',
    ),
  );

  /// on_hold
  static AdverseEventStatusBuilder onHold = AdverseEventStatusBuilder._(
    valueString: 'on-hold',
    valueEnum: AdverseEventStatusBuilderEnum.onHold,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/adverse-event-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'On Hold',
    ),
  );

  /// stopped
  static AdverseEventStatusBuilder stopped = AdverseEventStatusBuilder._(
    valueString: 'stopped',
    valueEnum: AdverseEventStatusBuilderEnum.stopped,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/adverse-event-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Stopped',
    ),
  );

  /// completed
  static AdverseEventStatusBuilder completed = AdverseEventStatusBuilder._(
    valueString: 'completed',
    valueEnum: AdverseEventStatusBuilderEnum.completed,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/adverse-event-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Completed',
    ),
  );

  /// entered_in_error
  static AdverseEventStatusBuilder enteredInError = AdverseEventStatusBuilder._(
    valueString: 'entered-in-error',
    valueEnum: AdverseEventStatusBuilderEnum.enteredInError,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/adverse-event-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Entered in Error',
    ),
  );

  /// unknown
  static AdverseEventStatusBuilder unknown = AdverseEventStatusBuilder._(
    valueString: 'unknown',
    valueEnum: AdverseEventStatusBuilderEnum.unknown,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/adverse-event-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Unknown',
    ),
  );

  /// For instances where an Element is present but not value
  static AdverseEventStatusBuilder elementOnly = AdverseEventStatusBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<AdverseEventStatusBuilder> values = [
    preparation,
    inProgress,
    notDone,
    onHold,
    stopped,
    completed,
    enteredInError,
    unknown,
  ];

  /// Returns the enum value with an element attached
  AdverseEventStatusBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return AdverseEventStatusBuilder._(
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
