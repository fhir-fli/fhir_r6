// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for AppointmentResponseStatus
enum AppointmentResponseStatusEnum {
  /// accepted
  accepted,

  /// declined
  declined,

  /// tentative
  tentative,

  /// needs-action
  needsAction,

  /// proposed
  proposed,

  /// pending
  pending,

  /// booked
  booked,

  /// arrived
  arrived,

  /// fulfilled
  fulfilled,

  /// cancelled
  cancelled,

  /// noshow
  noshow,

  /// entered-in-error
  enteredInError,

  /// checked-in
  checkedIn,

  /// waitlist
  waitlist,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case AppointmentResponseStatusEnum.accepted:
        return 'accepted';
      case AppointmentResponseStatusEnum.declined:
        return 'declined';
      case AppointmentResponseStatusEnum.tentative:
        return 'tentative';
      case AppointmentResponseStatusEnum.needsAction:
        return 'needs-action';
      case AppointmentResponseStatusEnum.proposed:
        return 'proposed';
      case AppointmentResponseStatusEnum.pending:
        return 'pending';
      case AppointmentResponseStatusEnum.booked:
        return 'booked';
      case AppointmentResponseStatusEnum.arrived:
        return 'arrived';
      case AppointmentResponseStatusEnum.fulfilled:
        return 'fulfilled';
      case AppointmentResponseStatusEnum.cancelled:
        return 'cancelled';
      case AppointmentResponseStatusEnum.noshow:
        return 'noshow';
      case AppointmentResponseStatusEnum.enteredInError:
        return 'entered-in-error';
      case AppointmentResponseStatusEnum.checkedIn:
        return 'checked-in';
      case AppointmentResponseStatusEnum.waitlist:
        return 'waitlist';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static AppointmentResponseStatusEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return AppointmentResponseStatusEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static AppointmentResponseStatusEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'accepted':
        return AppointmentResponseStatusEnum.accepted;
      case 'declined':
        return AppointmentResponseStatusEnum.declined;
      case 'tentative':
        return AppointmentResponseStatusEnum.tentative;
      case 'needs-action':
        return AppointmentResponseStatusEnum.needsAction;
      case 'proposed':
        return AppointmentResponseStatusEnum.proposed;
      case 'pending':
        return AppointmentResponseStatusEnum.pending;
      case 'booked':
        return AppointmentResponseStatusEnum.booked;
      case 'arrived':
        return AppointmentResponseStatusEnum.arrived;
      case 'fulfilled':
        return AppointmentResponseStatusEnum.fulfilled;
      case 'cancelled':
        return AppointmentResponseStatusEnum.cancelled;
      case 'noshow':
        return AppointmentResponseStatusEnum.noshow;
      case 'entered-in-error':
        return AppointmentResponseStatusEnum.enteredInError;
      case 'checked-in':
        return AppointmentResponseStatusEnum.checkedIn;
      case 'waitlist':
        return AppointmentResponseStatusEnum.waitlist;
    }
    return null;
  }
}

/// The Participation status for a participant in response to a request for
/// an appointment.
class AppointmentResponseStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const AppointmentResponseStatus._({
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
  factory AppointmentResponseStatus(
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
    final valueEnum = AppointmentResponseStatusEnum.fromString(valueString);
    return AppointmentResponseStatus._(
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

  /// Factory constructor to create [AppointmentResponseStatus]
  /// from JSON.
  factory AppointmentResponseStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = AppointmentResponseStatusEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AppointmentResponseStatus._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AppointmentResponseStatus cannot be constructed from JSON.',
      );
    }
    return AppointmentResponseStatus._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for AppointmentResponseStatus
  final AppointmentResponseStatusEnum? valueEnum;

  /// accepted
  static const AppointmentResponseStatus accepted = AppointmentResponseStatus._(
    valueString: 'accepted',
    valueEnum: AppointmentResponseStatusEnum.accepted,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/appointmentresponse-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Accepted',
    ),
  );

  /// declined
  static const AppointmentResponseStatus declined = AppointmentResponseStatus._(
    valueString: 'declined',
    valueEnum: AppointmentResponseStatusEnum.declined,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/appointmentresponse-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Declined',
    ),
  );

  /// tentative
  static const AppointmentResponseStatus tentative =
      AppointmentResponseStatus._(
    valueString: 'tentative',
    valueEnum: AppointmentResponseStatusEnum.tentative,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/appointmentresponse-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Tentative',
    ),
  );

  /// needs_action
  static const AppointmentResponseStatus needsAction =
      AppointmentResponseStatus._(
    valueString: 'needs-action',
    valueEnum: AppointmentResponseStatusEnum.needsAction,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/appointmentresponse-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Needs Action',
    ),
  );

  /// proposed
  static const AppointmentResponseStatus proposed = AppointmentResponseStatus._(
    valueString: 'proposed',
    valueEnum: AppointmentResponseStatusEnum.proposed,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/appointmentresponse-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Proposed',
    ),
  );

  /// pending
  static const AppointmentResponseStatus pending = AppointmentResponseStatus._(
    valueString: 'pending',
    valueEnum: AppointmentResponseStatusEnum.pending,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/appointmentresponse-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Pending',
    ),
  );

  /// booked
  static const AppointmentResponseStatus booked = AppointmentResponseStatus._(
    valueString: 'booked',
    valueEnum: AppointmentResponseStatusEnum.booked,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/appointmentresponse-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Booked',
    ),
  );

  /// arrived
  static const AppointmentResponseStatus arrived = AppointmentResponseStatus._(
    valueString: 'arrived',
    valueEnum: AppointmentResponseStatusEnum.arrived,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/appointmentresponse-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Arrived',
    ),
  );

  /// fulfilled
  static const AppointmentResponseStatus fulfilled =
      AppointmentResponseStatus._(
    valueString: 'fulfilled',
    valueEnum: AppointmentResponseStatusEnum.fulfilled,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/appointmentresponse-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Fulfilled',
    ),
  );

  /// cancelled
  static const AppointmentResponseStatus cancelled =
      AppointmentResponseStatus._(
    valueString: 'cancelled',
    valueEnum: AppointmentResponseStatusEnum.cancelled,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/appointmentresponse-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Cancelled',
    ),
  );

  /// noshow
  static const AppointmentResponseStatus noshow = AppointmentResponseStatus._(
    valueString: 'noshow',
    valueEnum: AppointmentResponseStatusEnum.noshow,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/appointmentresponse-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'No Show',
    ),
  );

  /// entered_in_error
  static const AppointmentResponseStatus enteredInError =
      AppointmentResponseStatus._(
    valueString: 'entered-in-error',
    valueEnum: AppointmentResponseStatusEnum.enteredInError,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/appointmentresponse-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Entered in error',
    ),
  );

  /// checked_in
  static const AppointmentResponseStatus checkedIn =
      AppointmentResponseStatus._(
    valueString: 'checked-in',
    valueEnum: AppointmentResponseStatusEnum.checkedIn,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/appointmentresponse-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Checked In',
    ),
  );

  /// waitlist
  static const AppointmentResponseStatus waitlist = AppointmentResponseStatus._(
    valueString: 'waitlist',
    valueEnum: AppointmentResponseStatusEnum.waitlist,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/appointmentresponse-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Waitlisted',
    ),
  );

  /// List of all enum-like values
  static final List<AppointmentResponseStatus> values = [
    accepted,
    declined,
    tentative,
    needsAction,
    proposed,
    pending,
    booked,
    arrived,
    fulfilled,
    cancelled,
    noshow,
    enteredInError,
    checkedIn,
    waitlist,
  ];

  /// Returns the enum value with an element attached
  AppointmentResponseStatus withElement(Element? newElement) {
    return AppointmentResponseStatus._(
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
  AppointmentResponseStatus clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  AppointmentResponseStatusCopyWithImpl<AppointmentResponseStatus>
      get copyWith =>
          AppointmentResponseStatusCopyWithImpl<AppointmentResponseStatus>(
            this,
            (v) => v as AppointmentResponseStatus,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class AppointmentResponseStatusCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  AppointmentResponseStatusCopyWithImpl(super._value, super._then);

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
      AppointmentResponseStatus(
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
