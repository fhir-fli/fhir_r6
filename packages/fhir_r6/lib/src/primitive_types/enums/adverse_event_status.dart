// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for AdverseEventStatus
enum AdverseEventStatusEnum {
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
      case AdverseEventStatusEnum.preparation:
        return 'preparation';
      case AdverseEventStatusEnum.inProgress:
        return 'in-progress';
      case AdverseEventStatusEnum.notDone:
        return 'not-done';
      case AdverseEventStatusEnum.onHold:
        return 'on-hold';
      case AdverseEventStatusEnum.stopped:
        return 'stopped';
      case AdverseEventStatusEnum.completed:
        return 'completed';
      case AdverseEventStatusEnum.enteredInError:
        return 'entered-in-error';
      case AdverseEventStatusEnum.unknown:
        return 'unknown';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static AdverseEventStatusEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return AdverseEventStatusEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static AdverseEventStatusEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'preparation':
        return AdverseEventStatusEnum.preparation;
      case 'in-progress':
        return AdverseEventStatusEnum.inProgress;
      case 'not-done':
        return AdverseEventStatusEnum.notDone;
      case 'on-hold':
        return AdverseEventStatusEnum.onHold;
      case 'stopped':
        return AdverseEventStatusEnum.stopped;
      case 'completed':
        return AdverseEventStatusEnum.completed;
      case 'entered-in-error':
        return AdverseEventStatusEnum.enteredInError;
      case 'unknown':
        return AdverseEventStatusEnum.unknown;
    }
    return null;
  }
}

/// Codes identifying the lifecycle stage of an adverse event.
class AdverseEventStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const AdverseEventStatus._({
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
  factory AdverseEventStatus(
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
    final valueEnum = AdverseEventStatusEnum.fromString(valueString);
    return AdverseEventStatus._(
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

  /// Factory constructor to create [AdverseEventStatus]
  /// from JSON.
  factory AdverseEventStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = AdverseEventStatusEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdverseEventStatus._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AdverseEventStatus cannot be constructed from JSON.',
      );
    }
    return AdverseEventStatus._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for AdverseEventStatus
  final AdverseEventStatusEnum? valueEnum;

  /// preparation
  static const AdverseEventStatus preparation = AdverseEventStatus._(
    valueString: 'preparation',
    valueEnum: AdverseEventStatusEnum.preparation,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/adverse-event-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Preparation',
    ),
  );

  /// in_progress
  static const AdverseEventStatus inProgress = AdverseEventStatus._(
    valueString: 'in-progress',
    valueEnum: AdverseEventStatusEnum.inProgress,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/adverse-event-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'In Progress',
    ),
  );

  /// not_done
  static const AdverseEventStatus notDone = AdverseEventStatus._(
    valueString: 'not-done',
    valueEnum: AdverseEventStatusEnum.notDone,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/adverse-event-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Not Done',
    ),
  );

  /// on_hold
  static const AdverseEventStatus onHold = AdverseEventStatus._(
    valueString: 'on-hold',
    valueEnum: AdverseEventStatusEnum.onHold,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/adverse-event-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'On Hold',
    ),
  );

  /// stopped
  static const AdverseEventStatus stopped = AdverseEventStatus._(
    valueString: 'stopped',
    valueEnum: AdverseEventStatusEnum.stopped,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/adverse-event-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Stopped',
    ),
  );

  /// completed
  static const AdverseEventStatus completed = AdverseEventStatus._(
    valueString: 'completed',
    valueEnum: AdverseEventStatusEnum.completed,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/adverse-event-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Completed',
    ),
  );

  /// entered_in_error
  static const AdverseEventStatus enteredInError = AdverseEventStatus._(
    valueString: 'entered-in-error',
    valueEnum: AdverseEventStatusEnum.enteredInError,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/adverse-event-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Entered in Error',
    ),
  );

  /// unknown
  static const AdverseEventStatus unknown = AdverseEventStatus._(
    valueString: 'unknown',
    valueEnum: AdverseEventStatusEnum.unknown,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/adverse-event-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Unknown',
    ),
  );

  /// List of all enum-like values
  static final List<AdverseEventStatus> values = [
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
  AdverseEventStatus withElement(Element? newElement) {
    return AdverseEventStatus._(
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
  AdverseEventStatus clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  AdverseEventStatusCopyWithImpl<AdverseEventStatus> get copyWith =>
      AdverseEventStatusCopyWithImpl<AdverseEventStatus>(
        this,
        (v) => v as AdverseEventStatus,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class AdverseEventStatusCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  AdverseEventStatusCopyWithImpl(super._value, super._then);

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
      AdverseEventStatus(
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
