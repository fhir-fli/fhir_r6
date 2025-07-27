// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'device_usage.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $DeviceUsageCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    List<Reference>? basedOn,
    DeviceUsageStatus? status,
    List<CodeableConcept>? category,
    Reference? patient,
    List<Reference>? derivedFrom,
    Reference? context,
    Timing? timingX,
    FhirDateTime? dateAsserted,
    CodeableConcept? usageStatus,
    List<CodeableConcept>? usageReason,
    DeviceUsageAdherence? adherence,
    Reference? informationSource,
    CodeableReference? device,
    List<CodeableReference>? reason,
    CodeableReference? bodySite,
    List<Annotation>? note,
    bool? disallowExtensions,
  });
}

class _$DeviceUsageCopyWithImpl<T> implements $DeviceUsageCopyWith<T> {
  final DeviceUsage _value;
  final T Function(DeviceUsage) _then;

  _$DeviceUsageCopyWithImpl(this._value, this._then);

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
    Object? basedOn = fhirSentinel,
    Object? status = fhirSentinel,
    Object? category = fhirSentinel,
    Object? patient = fhirSentinel,
    Object? derivedFrom = fhirSentinel,
    Object? context = fhirSentinel,
    Object? timingX = fhirSentinel,
    Object? dateAsserted = fhirSentinel,
    Object? usageStatus = fhirSentinel,
    Object? usageReason = fhirSentinel,
    Object? adherence = fhirSentinel,
    Object? informationSource = fhirSentinel,
    Object? device = fhirSentinel,
    Object? reason = fhirSentinel,
    Object? bodySite = fhirSentinel,
    Object? note = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DeviceUsage(
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
        basedOn: identical(basedOn, fhirSentinel)
            ? _value.basedOn
            : basedOn as List<Reference>?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as DeviceUsageStatus?) ?? _value.status,
        category: identical(category, fhirSentinel)
            ? _value.category
            : category as List<CodeableConcept>?,
        patient: identical(patient, fhirSentinel)
            ? _value.patient
            : (patient as Reference?) ?? _value.patient,
        derivedFrom: identical(derivedFrom, fhirSentinel)
            ? _value.derivedFrom
            : derivedFrom as List<Reference>?,
        context: identical(context, fhirSentinel)
            ? _value.context
            : context as Reference?,
        timingX: identical(timingX, fhirSentinel)
            ? _value.timingX
            : timingX as Timing?,
        dateAsserted: identical(dateAsserted, fhirSentinel)
            ? _value.dateAsserted
            : dateAsserted as FhirDateTime?,
        usageStatus: identical(usageStatus, fhirSentinel)
            ? _value.usageStatus
            : usageStatus as CodeableConcept?,
        usageReason: identical(usageReason, fhirSentinel)
            ? _value.usageReason
            : usageReason as List<CodeableConcept>?,
        adherence: identical(adherence, fhirSentinel)
            ? _value.adherence
            : adherence as DeviceUsageAdherence?,
        informationSource: identical(informationSource, fhirSentinel)
            ? _value.informationSource
            : informationSource as Reference?,
        device: identical(device, fhirSentinel)
            ? _value.device
            : (device as CodeableReference?) ?? _value.device,
        reason: identical(reason, fhirSentinel)
            ? _value.reason
            : reason as List<CodeableReference>?,
        bodySite: identical(bodySite, fhirSentinel)
            ? _value.bodySite
            : bodySite as CodeableReference?,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
      ),
    );
  }
}

extension DeviceUsageCopyWithExtension on DeviceUsage {
  $DeviceUsageCopyWith<DeviceUsage> get copyWith =>
      _$DeviceUsageCopyWithImpl<DeviceUsage>(
        this,
        (value) => value,
      );
}

abstract class $DeviceUsageAdherenceCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    List<CodeableConcept>? reason,
    bool? disallowExtensions,
  });
}

class _$DeviceUsageAdherenceCopyWithImpl<T>
    implements $DeviceUsageAdherenceCopyWith<T> {
  final DeviceUsageAdherence _value;
  final T Function(DeviceUsageAdherence) _then;

  _$DeviceUsageAdherenceCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? reason = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DeviceUsageAdherence(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : (code as CodeableConcept?) ?? _value.code,
        reason: identical(reason, fhirSentinel)
            ? _value.reason
            : (reason as List<CodeableConcept>?) ?? _value.reason,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension DeviceUsageAdherenceCopyWithExtension on DeviceUsageAdherence {
  $DeviceUsageAdherenceCopyWith<DeviceUsageAdherence> get copyWith =>
      _$DeviceUsageAdherenceCopyWithImpl<DeviceUsageAdherence>(
        this,
        (value) => value,
      );
}
