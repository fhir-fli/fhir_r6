part of '../primitive_types.dart';

/// Actual enum for TransportStatus
enum TransportStatusBuilderEnum {
  /// preparation
  preparation,

  /// in-progress
  inProgress,

  /// not-done
  notDone,

  /// suspended
  suspended,

  /// stopped
  stopped,

  /// on-hold
  onHold,

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
      case TransportStatusBuilderEnum.preparation:
        return 'preparation';
      case TransportStatusBuilderEnum.inProgress:
        return 'in-progress';
      case TransportStatusBuilderEnum.notDone:
        return 'not-done';
      case TransportStatusBuilderEnum.suspended:
        return 'suspended';
      case TransportStatusBuilderEnum.stopped:
        return 'stopped';
      case TransportStatusBuilderEnum.onHold:
        return 'on-hold';
      case TransportStatusBuilderEnum.completed:
        return 'completed';
      case TransportStatusBuilderEnum.enteredInError:
        return 'entered-in-error';
      case TransportStatusBuilderEnum.unknown:
        return 'unknown';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static TransportStatusBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return TransportStatusBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static TransportStatusBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'preparation':
        return TransportStatusBuilderEnum.preparation;
      case 'in-progress':
        return TransportStatusBuilderEnum.inProgress;
      case 'not-done':
        return TransportStatusBuilderEnum.notDone;
      case 'suspended':
        return TransportStatusBuilderEnum.suspended;
      case 'stopped':
        return TransportStatusBuilderEnum.stopped;
      case 'on-hold':
        return TransportStatusBuilderEnum.onHold;
      case 'completed':
        return TransportStatusBuilderEnum.completed;
      case 'entered-in-error':
        return TransportStatusBuilderEnum.enteredInError;
      case 'unknown':
        return TransportStatusBuilderEnum.unknown;
    }
    return null;
  }
}

/// Status of the transport
class TransportStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  TransportStatusBuilder._({
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
  factory TransportStatusBuilder(
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
    final valueEnum = TransportStatusBuilderEnum.fromString(
      valueString,
    );
    return TransportStatusBuilder._(
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

  /// Create empty [TransportStatusBuilder]
  /// with element only
  factory TransportStatusBuilder.empty() =>
      TransportStatusBuilder._(valueString: null);

  /// Factory constructor to create
  /// [TransportStatusBuilder] from JSON.
  factory TransportStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TransportStatusBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'TransportStatusBuilder cannot be constructed from JSON.',
      );
    }
    return TransportStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for TransportStatusBuilder
  final TransportStatusBuilderEnum? valueEnum;

  /// preparation
  static TransportStatusBuilder preparation = TransportStatusBuilder._(
    valueString: 'preparation',
    valueEnum: TransportStatusBuilderEnum.preparation,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/transport-status',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Preparation',
    ),
  );

  /// in_progress
  static TransportStatusBuilder inProgress = TransportStatusBuilder._(
    valueString: 'in-progress',
    valueEnum: TransportStatusBuilderEnum.inProgress,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/transport-status',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'In Progress',
    ),
  );

  /// not_done
  static TransportStatusBuilder notDone = TransportStatusBuilder._(
    valueString: 'not-done',
    valueEnum: TransportStatusBuilderEnum.notDone,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/transport-status',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Not Done',
    ),
  );

  /// suspended
  static TransportStatusBuilder suspended = TransportStatusBuilder._(
    valueString: 'suspended',
    valueEnum: TransportStatusBuilderEnum.suspended,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/transport-status',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Suspended',
    ),
  );

  /// stopped
  static TransportStatusBuilder stopped = TransportStatusBuilder._(
    valueString: 'stopped',
    valueEnum: TransportStatusBuilderEnum.stopped,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/transport-status',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Stopped',
    ),
  );

  /// on_hold
  static TransportStatusBuilder onHold = TransportStatusBuilder._(
    valueString: 'on-hold',
    valueEnum: TransportStatusBuilderEnum.onHold,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/transport-status',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'On Hold',
    ),
  );

  /// completed
  static TransportStatusBuilder completed = TransportStatusBuilder._(
    valueString: 'completed',
    valueEnum: TransportStatusBuilderEnum.completed,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/transport-status',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Completed',
    ),
  );

  /// entered_in_error
  static TransportStatusBuilder enteredInError = TransportStatusBuilder._(
    valueString: 'entered-in-error',
    valueEnum: TransportStatusBuilderEnum.enteredInError,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/transport-status',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Entered In Error',
    ),
  );

  /// unknown
  static TransportStatusBuilder unknown = TransportStatusBuilder._(
    valueString: 'unknown',
    valueEnum: TransportStatusBuilderEnum.unknown,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/transport-status',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Unknown',
    ),
  );

  /// For instances where an Element is present but not value
  static TransportStatusBuilder elementOnly = TransportStatusBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<TransportStatusBuilder> values = [
    preparation,
    inProgress,
    notDone,
    suspended,
    stopped,
    onHold,
    completed,
    enteredInError,
    unknown,
  ];

  /// Returns the enum value with an element attached
  TransportStatusBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return TransportStatusBuilder._(
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
