// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for AppointmentResponseStatus
enum AppointmentResponseStatusBuilderEnum {
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
      case AppointmentResponseStatusBuilderEnum.accepted:
        return 'accepted';
      case AppointmentResponseStatusBuilderEnum.declined:
        return 'declined';
      case AppointmentResponseStatusBuilderEnum.tentative:
        return 'tentative';
      case AppointmentResponseStatusBuilderEnum.needsAction:
        return 'needs-action';
      case AppointmentResponseStatusBuilderEnum.proposed:
        return 'proposed';
      case AppointmentResponseStatusBuilderEnum.pending:
        return 'pending';
      case AppointmentResponseStatusBuilderEnum.booked:
        return 'booked';
      case AppointmentResponseStatusBuilderEnum.arrived:
        return 'arrived';
      case AppointmentResponseStatusBuilderEnum.fulfilled:
        return 'fulfilled';
      case AppointmentResponseStatusBuilderEnum.cancelled:
        return 'cancelled';
      case AppointmentResponseStatusBuilderEnum.noshow:
        return 'noshow';
      case AppointmentResponseStatusBuilderEnum.enteredInError:
        return 'entered-in-error';
      case AppointmentResponseStatusBuilderEnum.checkedIn:
        return 'checked-in';
      case AppointmentResponseStatusBuilderEnum.waitlist:
        return 'waitlist';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static AppointmentResponseStatusBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return AppointmentResponseStatusBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static AppointmentResponseStatusBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'accepted':
        return AppointmentResponseStatusBuilderEnum.accepted;
      case 'declined':
        return AppointmentResponseStatusBuilderEnum.declined;
      case 'tentative':
        return AppointmentResponseStatusBuilderEnum.tentative;
      case 'needs-action':
        return AppointmentResponseStatusBuilderEnum.needsAction;
      case 'proposed':
        return AppointmentResponseStatusBuilderEnum.proposed;
      case 'pending':
        return AppointmentResponseStatusBuilderEnum.pending;
      case 'booked':
        return AppointmentResponseStatusBuilderEnum.booked;
      case 'arrived':
        return AppointmentResponseStatusBuilderEnum.arrived;
      case 'fulfilled':
        return AppointmentResponseStatusBuilderEnum.fulfilled;
      case 'cancelled':
        return AppointmentResponseStatusBuilderEnum.cancelled;
      case 'noshow':
        return AppointmentResponseStatusBuilderEnum.noshow;
      case 'entered-in-error':
        return AppointmentResponseStatusBuilderEnum.enteredInError;
      case 'checked-in':
        return AppointmentResponseStatusBuilderEnum.checkedIn;
      case 'waitlist':
        return AppointmentResponseStatusBuilderEnum.waitlist;
    }
    return null;
  }
}

/// The Participation status for a participant in response to a request for
/// an appointment.
class AppointmentResponseStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  AppointmentResponseStatusBuilder._({
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
  factory AppointmentResponseStatusBuilder(
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
    final valueEnum = AppointmentResponseStatusBuilderEnum.fromString(
      valueString,
    );
    return AppointmentResponseStatusBuilder._(
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

  /// Create empty [AppointmentResponseStatusBuilder]
  /// with element only
  factory AppointmentResponseStatusBuilder.empty() =>
      AppointmentResponseStatusBuilder._(valueString: null);

  /// Factory constructor to create
  /// [AppointmentResponseStatusBuilder] from JSON.
  factory AppointmentResponseStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AppointmentResponseStatusBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AppointmentResponseStatusBuilder cannot be constructed from JSON.',
      );
    }
    return AppointmentResponseStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for AppointmentResponseStatusBuilder
  final AppointmentResponseStatusBuilderEnum? valueEnum;

  /// accepted
  static AppointmentResponseStatusBuilder accepted =
      AppointmentResponseStatusBuilder._(
    valueString: 'accepted',
    valueEnum: AppointmentResponseStatusBuilderEnum.accepted,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/appointmentresponse-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Accepted',
    ),
  );

  /// declined
  static AppointmentResponseStatusBuilder declined =
      AppointmentResponseStatusBuilder._(
    valueString: 'declined',
    valueEnum: AppointmentResponseStatusBuilderEnum.declined,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/appointmentresponse-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Declined',
    ),
  );

  /// tentative
  static AppointmentResponseStatusBuilder tentative =
      AppointmentResponseStatusBuilder._(
    valueString: 'tentative',
    valueEnum: AppointmentResponseStatusBuilderEnum.tentative,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/appointmentresponse-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Tentative',
    ),
  );

  /// needs_action
  static AppointmentResponseStatusBuilder needsAction =
      AppointmentResponseStatusBuilder._(
    valueString: 'needs-action',
    valueEnum: AppointmentResponseStatusBuilderEnum.needsAction,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/appointmentresponse-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Needs Action',
    ),
  );

  /// proposed
  static AppointmentResponseStatusBuilder proposed =
      AppointmentResponseStatusBuilder._(
    valueString: 'proposed',
    valueEnum: AppointmentResponseStatusBuilderEnum.proposed,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/appointmentresponse-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Proposed',
    ),
  );

  /// pending
  static AppointmentResponseStatusBuilder pending =
      AppointmentResponseStatusBuilder._(
    valueString: 'pending',
    valueEnum: AppointmentResponseStatusBuilderEnum.pending,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/appointmentresponse-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Pending',
    ),
  );

  /// booked
  static AppointmentResponseStatusBuilder booked =
      AppointmentResponseStatusBuilder._(
    valueString: 'booked',
    valueEnum: AppointmentResponseStatusBuilderEnum.booked,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/appointmentresponse-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Booked',
    ),
  );

  /// arrived
  static AppointmentResponseStatusBuilder arrived =
      AppointmentResponseStatusBuilder._(
    valueString: 'arrived',
    valueEnum: AppointmentResponseStatusBuilderEnum.arrived,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/appointmentresponse-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Arrived',
    ),
  );

  /// fulfilled
  static AppointmentResponseStatusBuilder fulfilled =
      AppointmentResponseStatusBuilder._(
    valueString: 'fulfilled',
    valueEnum: AppointmentResponseStatusBuilderEnum.fulfilled,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/appointmentresponse-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Fulfilled',
    ),
  );

  /// cancelled
  static AppointmentResponseStatusBuilder cancelled =
      AppointmentResponseStatusBuilder._(
    valueString: 'cancelled',
    valueEnum: AppointmentResponseStatusBuilderEnum.cancelled,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/appointmentresponse-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Cancelled',
    ),
  );

  /// noshow
  static AppointmentResponseStatusBuilder noshow =
      AppointmentResponseStatusBuilder._(
    valueString: 'noshow',
    valueEnum: AppointmentResponseStatusBuilderEnum.noshow,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/appointmentresponse-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'No Show',
    ),
  );

  /// entered_in_error
  static AppointmentResponseStatusBuilder enteredInError =
      AppointmentResponseStatusBuilder._(
    valueString: 'entered-in-error',
    valueEnum: AppointmentResponseStatusBuilderEnum.enteredInError,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/appointmentresponse-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Entered in error',
    ),
  );

  /// checked_in
  static AppointmentResponseStatusBuilder checkedIn =
      AppointmentResponseStatusBuilder._(
    valueString: 'checked-in',
    valueEnum: AppointmentResponseStatusBuilderEnum.checkedIn,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/appointmentresponse-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Checked In',
    ),
  );

  /// waitlist
  static AppointmentResponseStatusBuilder waitlist =
      AppointmentResponseStatusBuilder._(
    valueString: 'waitlist',
    valueEnum: AppointmentResponseStatusBuilderEnum.waitlist,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/appointmentresponse-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Waitlisted',
    ),
  );

  /// For instances where an Element is present but not value
  static AppointmentResponseStatusBuilder elementOnly =
      AppointmentResponseStatusBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<AppointmentResponseStatusBuilder> values = [
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
  AppointmentResponseStatusBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return AppointmentResponseStatusBuilder._(
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
