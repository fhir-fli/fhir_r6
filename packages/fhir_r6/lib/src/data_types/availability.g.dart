// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'availability.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $AvailabilityCopyWith<T> extends $DataTypeCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<AvailabilityAvailableTime>? availableTime,
    List<AvailabilityNotAvailableTime>? notAvailableTime,
    bool? disallowExtensions,
  });
}

class _$AvailabilityCopyWithImpl<T> implements $AvailabilityCopyWith<T> {
  final Availability _value;
  final T Function(Availability) _then;

  _$AvailabilityCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? availableTime = fhirSentinel,
    Object? notAvailableTime = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Availability(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        availableTime: identical(availableTime, fhirSentinel)
            ? _value.availableTime
            : availableTime as List<AvailabilityAvailableTime>?,
        notAvailableTime: identical(notAvailableTime, fhirSentinel)
            ? _value.notAvailableTime
            : notAvailableTime as List<AvailabilityNotAvailableTime>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension AvailabilityCopyWithExtension on Availability {
  $AvailabilityCopyWith<Availability> get copyWith =>
      _$AvailabilityCopyWithImpl<Availability>(
        this,
        (value) => value,
      );
}

abstract class $AvailabilityAvailableTimeCopyWith<T>
    extends $ElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<DaysOfWeek>? daysOfWeek,
    FhirBoolean? allDay,
    FhirTime? availableStartTime,
    FhirTime? availableEndTime,
    bool? disallowExtensions,
  });
}

class _$AvailabilityAvailableTimeCopyWithImpl<T>
    implements $AvailabilityAvailableTimeCopyWith<T> {
  final AvailabilityAvailableTime _value;
  final T Function(AvailabilityAvailableTime) _then;

  _$AvailabilityAvailableTimeCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? daysOfWeek = fhirSentinel,
    Object? allDay = fhirSentinel,
    Object? availableStartTime = fhirSentinel,
    Object? availableEndTime = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      AvailabilityAvailableTime(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        daysOfWeek: identical(daysOfWeek, fhirSentinel)
            ? _value.daysOfWeek
            : daysOfWeek as List<DaysOfWeek>?,
        allDay: identical(allDay, fhirSentinel)
            ? _value.allDay
            : allDay as FhirBoolean?,
        availableStartTime: identical(availableStartTime, fhirSentinel)
            ? _value.availableStartTime
            : availableStartTime as FhirTime?,
        availableEndTime: identical(availableEndTime, fhirSentinel)
            ? _value.availableEndTime
            : availableEndTime as FhirTime?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension AvailabilityAvailableTimeCopyWithExtension
    on AvailabilityAvailableTime {
  $AvailabilityAvailableTimeCopyWith<AvailabilityAvailableTime> get copyWith =>
      _$AvailabilityAvailableTimeCopyWithImpl<AvailabilityAvailableTime>(
        this,
        (value) => value,
      );
}

abstract class $AvailabilityNotAvailableTimeCopyWith<T>
    extends $ElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirString? description,
    Period? during,
    bool? disallowExtensions,
  });
}

class _$AvailabilityNotAvailableTimeCopyWithImpl<T>
    implements $AvailabilityNotAvailableTimeCopyWith<T> {
  final AvailabilityNotAvailableTime _value;
  final T Function(AvailabilityNotAvailableTime) _then;

  _$AvailabilityNotAvailableTimeCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? description = fhirSentinel,
    Object? during = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      AvailabilityNotAvailableTime(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirString?,
        during:
            identical(during, fhirSentinel) ? _value.during : during as Period?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension AvailabilityNotAvailableTimeCopyWithExtension
    on AvailabilityNotAvailableTime {
  $AvailabilityNotAvailableTimeCopyWith<AvailabilityNotAvailableTime>
      get copyWith => _$AvailabilityNotAvailableTimeCopyWithImpl<
              AvailabilityNotAvailableTime>(
            this,
            (value) => value,
          );
}
