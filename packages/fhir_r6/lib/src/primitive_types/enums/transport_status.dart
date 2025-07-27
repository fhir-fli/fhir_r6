// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for TransportStatus
enum TransportStatusEnum {
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
      case TransportStatusEnum.inProgress:
        return 'in-progress';
      case TransportStatusEnum.completed:
        return 'completed';
      case TransportStatusEnum.abandoned:
        return 'abandoned';
      case TransportStatusEnum.cancelled:
        return 'cancelled';
      case TransportStatusEnum.planned:
        return 'planned';
      case TransportStatusEnum.enteredInError:
        return 'entered-in-error';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static TransportStatusEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return TransportStatusEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static TransportStatusEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'in-progress':
        return TransportStatusEnum.inProgress;
      case 'completed':
        return TransportStatusEnum.completed;
      case 'abandoned':
        return TransportStatusEnum.abandoned;
      case 'cancelled':
        return TransportStatusEnum.cancelled;
      case 'planned':
        return TransportStatusEnum.planned;
      case 'entered-in-error':
        return TransportStatusEnum.enteredInError;
    }
    return null;
  }
}

/// Status of the transport
class TransportStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const TransportStatus._({
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
  factory TransportStatus(
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
    final valueEnum = TransportStatusEnum.fromString(valueString);
    return TransportStatus._(
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

  /// Factory constructor to create [TransportStatus]
  /// from JSON.
  factory TransportStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = TransportStatusEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TransportStatus._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'TransportStatus cannot be constructed from JSON.',
      );
    }
    return TransportStatus._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for TransportStatus
  final TransportStatusEnum? valueEnum;

  /// in_progress
  static const TransportStatus inProgress = TransportStatus._(
    valueString: 'in-progress',
    valueEnum: TransportStatusEnum.inProgress,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/transport-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'In Progress',
    ),
  );

  /// completed
  static const TransportStatus completed = TransportStatus._(
    valueString: 'completed',
    valueEnum: TransportStatusEnum.completed,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/transport-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Completed',
    ),
  );

  /// abandoned
  static const TransportStatus abandoned = TransportStatus._(
    valueString: 'abandoned',
    valueEnum: TransportStatusEnum.abandoned,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/transport-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Abandoned',
    ),
  );

  /// cancelled
  static const TransportStatus cancelled = TransportStatus._(
    valueString: 'cancelled',
    valueEnum: TransportStatusEnum.cancelled,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/transport-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Cancelled',
    ),
  );

  /// planned
  static const TransportStatus planned = TransportStatus._(
    valueString: 'planned',
    valueEnum: TransportStatusEnum.planned,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/transport-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Planned',
    ),
  );

  /// entered_in_error
  static const TransportStatus enteredInError = TransportStatus._(
    valueString: 'entered-in-error',
    valueEnum: TransportStatusEnum.enteredInError,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/transport-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Entered In Error',
    ),
  );

  /// List of all enum-like values
  static final List<TransportStatus> values = [
    inProgress,
    completed,
    abandoned,
    cancelled,
    planned,
    enteredInError,
  ];

  /// Returns the enum value with an element attached
  TransportStatus withElement(Element? newElement) {
    return TransportStatus._(
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
  TransportStatus clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  TransportStatusCopyWithImpl<TransportStatus> get copyWith =>
      TransportStatusCopyWithImpl<TransportStatus>(
        this,
        (v) => v as TransportStatus,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class TransportStatusCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  TransportStatusCopyWithImpl(super._value, super._then);

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
      TransportStatus(
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
