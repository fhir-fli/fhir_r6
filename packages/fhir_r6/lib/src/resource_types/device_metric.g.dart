// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'device_metric.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $DeviceMetricCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    CodeableConcept? type,
    CodeableConcept? unit,
    Reference? device,
    DeviceMetricOperationalStatus? operationalStatus,
    ColorCodesOrRGB? color,
    DeviceMetricCategory? category,
    Quantity? measurementFrequency,
    List<DeviceMetricCalibration>? calibration,
    bool? disallowExtensions,
  });
}

class _$DeviceMetricCopyWithImpl<T> implements $DeviceMetricCopyWith<T> {
  final DeviceMetric _value;
  final T Function(DeviceMetric) _then;

  _$DeviceMetricCopyWithImpl(this._value, this._then);

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
    Object? type = fhirSentinel,
    Object? unit = fhirSentinel,
    Object? device = fhirSentinel,
    Object? operationalStatus = fhirSentinel,
    Object? color = fhirSentinel,
    Object? category = fhirSentinel,
    Object? measurementFrequency = fhirSentinel,
    Object? calibration = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DeviceMetric(
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
        type: identical(type, fhirSentinel)
            ? _value.type
            : (type as CodeableConcept?) ?? _value.type,
        unit: identical(unit, fhirSentinel)
            ? _value.unit
            : unit as CodeableConcept?,
        device: identical(device, fhirSentinel)
            ? _value.device
            : (device as Reference?) ?? _value.device,
        operationalStatus: identical(operationalStatus, fhirSentinel)
            ? _value.operationalStatus
            : operationalStatus as DeviceMetricOperationalStatus?,
        color: identical(color, fhirSentinel)
            ? _value.color
            : color as ColorCodesOrRGB?,
        category: identical(category, fhirSentinel)
            ? _value.category
            : (category as DeviceMetricCategory?) ?? _value.category,
        measurementFrequency: identical(measurementFrequency, fhirSentinel)
            ? _value.measurementFrequency
            : measurementFrequency as Quantity?,
        calibration: identical(calibration, fhirSentinel)
            ? _value.calibration
            : calibration as List<DeviceMetricCalibration>?,
      ),
    );
  }
}

extension DeviceMetricCopyWithExtension on DeviceMetric {
  $DeviceMetricCopyWith<DeviceMetric> get copyWith =>
      _$DeviceMetricCopyWithImpl<DeviceMetric>(
        this,
        (value) => value,
      );
}

abstract class $DeviceMetricCalibrationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    DeviceMetricCalibrationType? type,
    DeviceMetricCalibrationState? state,
    FhirInstant? time,
    bool? disallowExtensions,
  });
}

class _$DeviceMetricCalibrationCopyWithImpl<T>
    implements $DeviceMetricCalibrationCopyWith<T> {
  final DeviceMetricCalibration _value;
  final T Function(DeviceMetricCalibration) _then;

  _$DeviceMetricCalibrationCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? state = fhirSentinel,
    Object? time = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DeviceMetricCalibration(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as DeviceMetricCalibrationType?,
        state: identical(state, fhirSentinel)
            ? _value.state
            : state as DeviceMetricCalibrationState?,
        time:
            identical(time, fhirSentinel) ? _value.time : time as FhirInstant?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension DeviceMetricCalibrationCopyWithExtension on DeviceMetricCalibration {
  $DeviceMetricCalibrationCopyWith<DeviceMetricCalibration> get copyWith =>
      _$DeviceMetricCalibrationCopyWithImpl<DeviceMetricCalibration>(
        this,
        (value) => value,
      );
}
