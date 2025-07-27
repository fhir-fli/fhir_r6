// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'appointment.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $AppointmentCopyWith<T> extends $DomainResourceCopyWith<T> {
  @override
  T call({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    AllLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    AppointmentStatus? status,
    CodeableConcept? cancellationReason,
    List<CodeableConcept>? class_,
    List<CodeableConcept>? serviceCategory,
    List<CodeableReference>? serviceType,
    List<CodeableConcept>? specialty,
    CodeableConcept? appointmentType,
    List<CodeableReference>? reason,
    CodeableConcept? priority,
    FhirString? description,
    List<Reference>? replaces,
    List<VirtualServiceDetail>? virtualService,
    List<Reference>? supportingInformation,
    Reference? previousAppointment,
    Reference? originatingAppointment,
    FhirInstant? start,
    FhirInstant? end,
    FhirPositiveInt? minutesDuration,
    List<Period>? requestedPeriod,
    List<Reference>? slot,
    List<Reference>? account,
    FhirDateTime? created,
    FhirDateTime? cancellationDate,
    List<Annotation>? note,
    List<CodeableReference>? patientInstruction,
    List<Reference>? basedOn,
    Reference? subject,
    List<AppointmentParticipant>? participant,
    FhirPositiveInt? recurrenceId,
    FhirBoolean? occurrenceChanged,
    List<AppointmentRecurrenceTemplate>? recurrenceTemplate,
    bool? disallowExtensions,
  });
}

class _$AppointmentCopyWithImpl<T> implements $AppointmentCopyWith<T> {
  final Appointment _value;
  final T Function(Appointment) _then;

  _$AppointmentCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? meta = fhirSentinel,
    Object? implicitRules = fhirSentinel,
    Object? language = fhirSentinel,
    Object? text = fhirSentinel,
    Object? contained = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? identifier = fhirSentinel,
    Object? status = fhirSentinel,
    Object? cancellationReason = fhirSentinel,
    Object? class_ = fhirSentinel,
    Object? serviceCategory = fhirSentinel,
    Object? serviceType = fhirSentinel,
    Object? specialty = fhirSentinel,
    Object? appointmentType = fhirSentinel,
    Object? reason = fhirSentinel,
    Object? priority = fhirSentinel,
    Object? description = fhirSentinel,
    Object? replaces = fhirSentinel,
    Object? virtualService = fhirSentinel,
    Object? supportingInformation = fhirSentinel,
    Object? previousAppointment = fhirSentinel,
    Object? originatingAppointment = fhirSentinel,
    Object? start = fhirSentinel,
    Object? end = fhirSentinel,
    Object? minutesDuration = fhirSentinel,
    Object? requestedPeriod = fhirSentinel,
    Object? slot = fhirSentinel,
    Object? account = fhirSentinel,
    Object? created = fhirSentinel,
    Object? cancellationDate = fhirSentinel,
    Object? note = fhirSentinel,
    Object? patientInstruction = fhirSentinel,
    Object? basedOn = fhirSentinel,
    Object? subject = fhirSentinel,
    Object? participant = fhirSentinel,
    Object? recurrenceId = fhirSentinel,
    Object? occurrenceChanged = fhirSentinel,
    Object? recurrenceTemplate = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Appointment(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        meta: identical(meta, fhirSentinel) ? _value.meta : meta as FhirMeta?,
        implicitRules: identical(implicitRules, fhirSentinel)
            ? _value.implicitRules
            : implicitRules as FhirUri?,
        language: identical(language, fhirSentinel)
            ? _value.language
            : language as AllLanguages?,
        text: identical(text, fhirSentinel) ? _value.text : text as Narrative?,
        contained: identical(contained, fhirSentinel)
            ? _value.contained
            : contained as List<Resource>?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        identifier: identical(identifier, fhirSentinel)
            ? _value.identifier
            : identifier as List<Identifier>?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as AppointmentStatus?) ?? _value.status,
        cancellationReason: identical(cancellationReason, fhirSentinel)
            ? _value.cancellationReason
            : cancellationReason as CodeableConcept?,
        class_: identical(class_, fhirSentinel)
            ? _value.class_
            : class_ as List<CodeableConcept>?,
        serviceCategory: identical(serviceCategory, fhirSentinel)
            ? _value.serviceCategory
            : serviceCategory as List<CodeableConcept>?,
        serviceType: identical(serviceType, fhirSentinel)
            ? _value.serviceType
            : serviceType as List<CodeableReference>?,
        specialty: identical(specialty, fhirSentinel)
            ? _value.specialty
            : specialty as List<CodeableConcept>?,
        appointmentType: identical(appointmentType, fhirSentinel)
            ? _value.appointmentType
            : appointmentType as CodeableConcept?,
        reason: identical(reason, fhirSentinel)
            ? _value.reason
            : reason as List<CodeableReference>?,
        priority: identical(priority, fhirSentinel)
            ? _value.priority
            : priority as CodeableConcept?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirString?,
        replaces: identical(replaces, fhirSentinel)
            ? _value.replaces
            : replaces as List<Reference>?,
        virtualService: identical(virtualService, fhirSentinel)
            ? _value.virtualService
            : virtualService as List<VirtualServiceDetail>?,
        supportingInformation: identical(supportingInformation, fhirSentinel)
            ? _value.supportingInformation
            : supportingInformation as List<Reference>?,
        previousAppointment: identical(previousAppointment, fhirSentinel)
            ? _value.previousAppointment
            : previousAppointment as Reference?,
        originatingAppointment: identical(originatingAppointment, fhirSentinel)
            ? _value.originatingAppointment
            : originatingAppointment as Reference?,
        start: identical(start, fhirSentinel)
            ? _value.start
            : start as FhirInstant?,
        end: identical(end, fhirSentinel) ? _value.end : end as FhirInstant?,
        minutesDuration: identical(minutesDuration, fhirSentinel)
            ? _value.minutesDuration
            : minutesDuration as FhirPositiveInt?,
        requestedPeriod: identical(requestedPeriod, fhirSentinel)
            ? _value.requestedPeriod
            : requestedPeriod as List<Period>?,
        slot: identical(slot, fhirSentinel)
            ? _value.slot
            : slot as List<Reference>?,
        account: identical(account, fhirSentinel)
            ? _value.account
            : account as List<Reference>?,
        created: identical(created, fhirSentinel)
            ? _value.created
            : created as FhirDateTime?,
        cancellationDate: identical(cancellationDate, fhirSentinel)
            ? _value.cancellationDate
            : cancellationDate as FhirDateTime?,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
        patientInstruction: identical(patientInstruction, fhirSentinel)
            ? _value.patientInstruction
            : patientInstruction as List<CodeableReference>?,
        basedOn: identical(basedOn, fhirSentinel)
            ? _value.basedOn
            : basedOn as List<Reference>?,
        subject: identical(subject, fhirSentinel)
            ? _value.subject
            : subject as Reference?,
        participant: identical(participant, fhirSentinel)
            ? _value.participant
            : (participant as List<AppointmentParticipant>?) ??
                _value.participant,
        recurrenceId: identical(recurrenceId, fhirSentinel)
            ? _value.recurrenceId
            : recurrenceId as FhirPositiveInt?,
        occurrenceChanged: identical(occurrenceChanged, fhirSentinel)
            ? _value.occurrenceChanged
            : occurrenceChanged as FhirBoolean?,
        recurrenceTemplate: identical(recurrenceTemplate, fhirSentinel)
            ? _value.recurrenceTemplate
            : recurrenceTemplate as List<AppointmentRecurrenceTemplate>?,
      ),
    );
  }
}

extension AppointmentCopyWithExtension on Appointment {
  $AppointmentCopyWith<Appointment> get copyWith =>
      _$AppointmentCopyWithImpl<Appointment>(
        this,
        (value) => value,
      );
}

abstract class $AppointmentParticipantCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CodeableConcept>? type,
    Period? period,
    Reference? actor,
    FhirBoolean? required_,
    ParticipationStatus? status,
    bool? disallowExtensions,
  });
}

class _$AppointmentParticipantCopyWithImpl<T>
    implements $AppointmentParticipantCopyWith<T> {
  final AppointmentParticipant _value;
  final T Function(AppointmentParticipant) _then;

  _$AppointmentParticipantCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? period = fhirSentinel,
    Object? actor = fhirSentinel,
    Object? required_ = fhirSentinel,
    Object? status = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      AppointmentParticipant(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as List<CodeableConcept>?,
        period:
            identical(period, fhirSentinel) ? _value.period : period as Period?,
        actor:
            identical(actor, fhirSentinel) ? _value.actor : actor as Reference?,
        required_: identical(required_, fhirSentinel)
            ? _value.required_
            : required_ as FhirBoolean?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as ParticipationStatus?) ?? _value.status,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension AppointmentParticipantCopyWithExtension on AppointmentParticipant {
  $AppointmentParticipantCopyWith<AppointmentParticipant> get copyWith =>
      _$AppointmentParticipantCopyWithImpl<AppointmentParticipant>(
        this,
        (value) => value,
      );
}

abstract class $AppointmentRecurrenceTemplateCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? timezone,
    CodeableConcept? recurrenceType,
    FhirDate? lastOccurrenceDate,
    FhirPositiveInt? occurrenceCount,
    List<FhirDate>? occurrenceDate,
    AppointmentWeeklyTemplate? weeklyTemplate,
    AppointmentMonthlyTemplate? monthlyTemplate,
    AppointmentYearlyTemplate? yearlyTemplate,
    List<FhirDate>? excludingDate,
    List<FhirPositiveInt>? excludingRecurrenceId,
    bool? disallowExtensions,
  });
}

class _$AppointmentRecurrenceTemplateCopyWithImpl<T>
    implements $AppointmentRecurrenceTemplateCopyWith<T> {
  final AppointmentRecurrenceTemplate _value;
  final T Function(AppointmentRecurrenceTemplate) _then;

  _$AppointmentRecurrenceTemplateCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? timezone = fhirSentinel,
    Object? recurrenceType = fhirSentinel,
    Object? lastOccurrenceDate = fhirSentinel,
    Object? occurrenceCount = fhirSentinel,
    Object? occurrenceDate = fhirSentinel,
    Object? weeklyTemplate = fhirSentinel,
    Object? monthlyTemplate = fhirSentinel,
    Object? yearlyTemplate = fhirSentinel,
    Object? excludingDate = fhirSentinel,
    Object? excludingRecurrenceId = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      AppointmentRecurrenceTemplate(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        timezone: identical(timezone, fhirSentinel)
            ? _value.timezone
            : timezone as CodeableConcept?,
        recurrenceType: identical(recurrenceType, fhirSentinel)
            ? _value.recurrenceType
            : (recurrenceType as CodeableConcept?) ?? _value.recurrenceType,
        lastOccurrenceDate: identical(lastOccurrenceDate, fhirSentinel)
            ? _value.lastOccurrenceDate
            : lastOccurrenceDate as FhirDate?,
        occurrenceCount: identical(occurrenceCount, fhirSentinel)
            ? _value.occurrenceCount
            : occurrenceCount as FhirPositiveInt?,
        occurrenceDate: identical(occurrenceDate, fhirSentinel)
            ? _value.occurrenceDate
            : occurrenceDate as List<FhirDate>?,
        weeklyTemplate: identical(weeklyTemplate, fhirSentinel)
            ? _value.weeklyTemplate
            : weeklyTemplate as AppointmentWeeklyTemplate?,
        monthlyTemplate: identical(monthlyTemplate, fhirSentinel)
            ? _value.monthlyTemplate
            : monthlyTemplate as AppointmentMonthlyTemplate?,
        yearlyTemplate: identical(yearlyTemplate, fhirSentinel)
            ? _value.yearlyTemplate
            : yearlyTemplate as AppointmentYearlyTemplate?,
        excludingDate: identical(excludingDate, fhirSentinel)
            ? _value.excludingDate
            : excludingDate as List<FhirDate>?,
        excludingRecurrenceId: identical(excludingRecurrenceId, fhirSentinel)
            ? _value.excludingRecurrenceId
            : excludingRecurrenceId as List<FhirPositiveInt>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension AppointmentRecurrenceTemplateCopyWithExtension
    on AppointmentRecurrenceTemplate {
  $AppointmentRecurrenceTemplateCopyWith<AppointmentRecurrenceTemplate>
      get copyWith => _$AppointmentRecurrenceTemplateCopyWithImpl<
              AppointmentRecurrenceTemplate>(
            this,
            (value) => value,
          );
}

abstract class $AppointmentWeeklyTemplateCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? monday,
    FhirBoolean? tuesday,
    FhirBoolean? wednesday,
    FhirBoolean? thursday,
    FhirBoolean? friday,
    FhirBoolean? saturday,
    FhirBoolean? sunday,
    FhirPositiveInt? weekInterval,
    bool? disallowExtensions,
  });
}

class _$AppointmentWeeklyTemplateCopyWithImpl<T>
    implements $AppointmentWeeklyTemplateCopyWith<T> {
  final AppointmentWeeklyTemplate _value;
  final T Function(AppointmentWeeklyTemplate) _then;

  _$AppointmentWeeklyTemplateCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? monday = fhirSentinel,
    Object? tuesday = fhirSentinel,
    Object? wednesday = fhirSentinel,
    Object? thursday = fhirSentinel,
    Object? friday = fhirSentinel,
    Object? saturday = fhirSentinel,
    Object? sunday = fhirSentinel,
    Object? weekInterval = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      AppointmentWeeklyTemplate(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        monday: identical(monday, fhirSentinel)
            ? _value.monday
            : monday as FhirBoolean?,
        tuesday: identical(tuesday, fhirSentinel)
            ? _value.tuesday
            : tuesday as FhirBoolean?,
        wednesday: identical(wednesday, fhirSentinel)
            ? _value.wednesday
            : wednesday as FhirBoolean?,
        thursday: identical(thursday, fhirSentinel)
            ? _value.thursday
            : thursday as FhirBoolean?,
        friday: identical(friday, fhirSentinel)
            ? _value.friday
            : friday as FhirBoolean?,
        saturday: identical(saturday, fhirSentinel)
            ? _value.saturday
            : saturday as FhirBoolean?,
        sunday: identical(sunday, fhirSentinel)
            ? _value.sunday
            : sunday as FhirBoolean?,
        weekInterval: identical(weekInterval, fhirSentinel)
            ? _value.weekInterval
            : weekInterval as FhirPositiveInt?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension AppointmentWeeklyTemplateCopyWithExtension
    on AppointmentWeeklyTemplate {
  $AppointmentWeeklyTemplateCopyWith<AppointmentWeeklyTemplate> get copyWith =>
      _$AppointmentWeeklyTemplateCopyWithImpl<AppointmentWeeklyTemplate>(
        this,
        (value) => value,
      );
}

abstract class $AppointmentMonthlyTemplateCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? dayOfMonth,
    Coding? nthWeekOfMonth,
    Coding? dayOfWeek,
    FhirPositiveInt? monthInterval,
    bool? disallowExtensions,
  });
}

class _$AppointmentMonthlyTemplateCopyWithImpl<T>
    implements $AppointmentMonthlyTemplateCopyWith<T> {
  final AppointmentMonthlyTemplate _value;
  final T Function(AppointmentMonthlyTemplate) _then;

  _$AppointmentMonthlyTemplateCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? dayOfMonth = fhirSentinel,
    Object? nthWeekOfMonth = fhirSentinel,
    Object? dayOfWeek = fhirSentinel,
    Object? monthInterval = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      AppointmentMonthlyTemplate(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        dayOfMonth: identical(dayOfMonth, fhirSentinel)
            ? _value.dayOfMonth
            : dayOfMonth as FhirPositiveInt?,
        nthWeekOfMonth: identical(nthWeekOfMonth, fhirSentinel)
            ? _value.nthWeekOfMonth
            : nthWeekOfMonth as Coding?,
        dayOfWeek: identical(dayOfWeek, fhirSentinel)
            ? _value.dayOfWeek
            : dayOfWeek as Coding?,
        monthInterval: identical(monthInterval, fhirSentinel)
            ? _value.monthInterval
            : (monthInterval as FhirPositiveInt?) ?? _value.monthInterval,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension AppointmentMonthlyTemplateCopyWithExtension
    on AppointmentMonthlyTemplate {
  $AppointmentMonthlyTemplateCopyWith<AppointmentMonthlyTemplate>
      get copyWith =>
          _$AppointmentMonthlyTemplateCopyWithImpl<AppointmentMonthlyTemplate>(
            this,
            (value) => value,
          );
}

abstract class $AppointmentYearlyTemplateCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? yearInterval,
    bool? disallowExtensions,
  });
}

class _$AppointmentYearlyTemplateCopyWithImpl<T>
    implements $AppointmentYearlyTemplateCopyWith<T> {
  final AppointmentYearlyTemplate _value;
  final T Function(AppointmentYearlyTemplate) _then;

  _$AppointmentYearlyTemplateCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? yearInterval = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      AppointmentYearlyTemplate(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        yearInterval: identical(yearInterval, fhirSentinel)
            ? _value.yearInterval
            : (yearInterval as FhirPositiveInt?) ?? _value.yearInterval,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension AppointmentYearlyTemplateCopyWithExtension
    on AppointmentYearlyTemplate {
  $AppointmentYearlyTemplateCopyWith<AppointmentYearlyTemplate> get copyWith =>
      _$AppointmentYearlyTemplateCopyWithImpl<AppointmentYearlyTemplate>(
        this,
        (value) => value,
      );
}
