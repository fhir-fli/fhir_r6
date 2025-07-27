// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for TransportStatus
enum TransportStatusBuilderEnum {
  /// in-progress
  inProgress,

  /// completed
  completed,

  /// abandoned
  abandoned,

  /// cancelled
  cancelled,

  /// planned
  planned,

  /// entered-in-error
  enteredInError,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case TransportStatusBuilderEnum.inProgress:
        return 'in-progress';
      case TransportStatusBuilderEnum.completed:
        return 'completed';
      case TransportStatusBuilderEnum.abandoned:
        return 'abandoned';
      case TransportStatusBuilderEnum.cancelled:
        return 'cancelled';
      case TransportStatusBuilderEnum.planned:
        return 'planned';
      case TransportStatusBuilderEnum.enteredInError:
        return 'entered-in-error';
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
      case 'in-progress':
        return TransportStatusBuilderEnum.inProgress;
      case 'completed':
        return TransportStatusBuilderEnum.completed;
      case 'abandoned':
        return TransportStatusBuilderEnum.abandoned;
      case 'cancelled':
        return TransportStatusBuilderEnum.cancelled;
      case 'planned':
        return TransportStatusBuilderEnum.planned;
      case 'entered-in-error':
        return TransportStatusBuilderEnum.enteredInError;
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

  /// in_progress
  static TransportStatusBuilder inProgress = TransportStatusBuilder._(
    valueString: 'in-progress',
    valueEnum: TransportStatusBuilderEnum.inProgress,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/transport-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'In Progress',
    ),
  );

  /// completed
  static TransportStatusBuilder completed = TransportStatusBuilder._(
    valueString: 'completed',
    valueEnum: TransportStatusBuilderEnum.completed,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/transport-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Completed',
    ),
  );

  /// abandoned
  static TransportStatusBuilder abandoned = TransportStatusBuilder._(
    valueString: 'abandoned',
    valueEnum: TransportStatusBuilderEnum.abandoned,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/transport-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Abandoned',
    ),
  );

  /// cancelled
  static TransportStatusBuilder cancelled = TransportStatusBuilder._(
    valueString: 'cancelled',
    valueEnum: TransportStatusBuilderEnum.cancelled,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/transport-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Cancelled',
    ),
  );

  /// planned
  static TransportStatusBuilder planned = TransportStatusBuilder._(
    valueString: 'planned',
    valueEnum: TransportStatusBuilderEnum.planned,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/transport-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Planned',
    ),
  );

  /// entered_in_error
  static TransportStatusBuilder enteredInError = TransportStatusBuilder._(
    valueString: 'entered-in-error',
    valueEnum: TransportStatusBuilderEnum.enteredInError,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/transport-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Entered In Error',
    ),
  );

  /// For instances where an Element is present but not value
  static TransportStatusBuilder elementOnly = TransportStatusBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<TransportStatusBuilder> values = [
    inProgress,
    completed,
    abandoned,
    cancelled,
    planned,
    enteredInError,
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
