// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'care_plan.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $CarePlanCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    List<FhirCanonical>? instantiatesCanonical,
    List<FhirUri>? instantiatesUri,
    List<Reference>? basedOn,
    List<Reference>? replaces,
    List<Reference>? partOf,
    RequestStatus? status,
    CarePlanIntent? intent,
    List<CodeableConcept>? category,
    FhirString? title,
    FhirString? description,
    Reference? subject,
    Reference? encounter,
    Period? period,
    FhirDateTime? created,
    Reference? custodian,
    List<Reference>? contributor,
    List<Reference>? careTeam,
    List<CodeableReference>? addresses,
    List<Reference>? supportingInfo,
    List<Reference>? goal,
    List<CarePlanActivity>? activity,
    List<Annotation>? note,
    bool? disallowExtensions,
  });
}

class _$CarePlanCopyWithImpl<T> implements $CarePlanCopyWith<T> {
  final CarePlan _value;
  final T Function(CarePlan) _then;

  _$CarePlanCopyWithImpl(this._value, this._then);

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
    Object? instantiatesCanonical = fhirSentinel,
    Object? instantiatesUri = fhirSentinel,
    Object? basedOn = fhirSentinel,
    Object? replaces = fhirSentinel,
    Object? partOf = fhirSentinel,
    Object? status = fhirSentinel,
    Object? intent = fhirSentinel,
    Object? category = fhirSentinel,
    Object? title = fhirSentinel,
    Object? description = fhirSentinel,
    Object? subject = fhirSentinel,
    Object? encounter = fhirSentinel,
    Object? period = fhirSentinel,
    Object? created = fhirSentinel,
    Object? custodian = fhirSentinel,
    Object? contributor = fhirSentinel,
    Object? careTeam = fhirSentinel,
    Object? addresses = fhirSentinel,
    Object? supportingInfo = fhirSentinel,
    Object? goal = fhirSentinel,
    Object? activity = fhirSentinel,
    Object? note = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CarePlan(
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
        instantiatesCanonical: identical(instantiatesCanonical, fhirSentinel)
            ? _value.instantiatesCanonical
            : instantiatesCanonical as List<FhirCanonical>?,
        instantiatesUri: identical(instantiatesUri, fhirSentinel)
            ? _value.instantiatesUri
            : instantiatesUri as List<FhirUri>?,
        basedOn: identical(basedOn, fhirSentinel)
            ? _value.basedOn
            : basedOn as List<Reference>?,
        replaces: identical(replaces, fhirSentinel)
            ? _value.replaces
            : replaces as List<Reference>?,
        partOf: identical(partOf, fhirSentinel)
            ? _value.partOf
            : partOf as List<Reference>?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as RequestStatus?) ?? _value.status,
        intent: identical(intent, fhirSentinel)
            ? _value.intent
            : (intent as CarePlanIntent?) ?? _value.intent,
        category: identical(category, fhirSentinel)
            ? _value.category
            : category as List<CodeableConcept>?,
        title: identical(title, fhirSentinel)
            ? _value.title
            : title as FhirString?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirString?,
        subject: identical(subject, fhirSentinel)
            ? _value.subject
            : (subject as Reference?) ?? _value.subject,
        encounter: identical(encounter, fhirSentinel)
            ? _value.encounter
            : encounter as Reference?,
        period:
            identical(period, fhirSentinel) ? _value.period : period as Period?,
        created: identical(created, fhirSentinel)
            ? _value.created
            : created as FhirDateTime?,
        custodian: identical(custodian, fhirSentinel)
            ? _value.custodian
            : custodian as Reference?,
        contributor: identical(contributor, fhirSentinel)
            ? _value.contributor
            : contributor as List<Reference>?,
        careTeam: identical(careTeam, fhirSentinel)
            ? _value.careTeam
            : careTeam as List<Reference>?,
        addresses: identical(addresses, fhirSentinel)
            ? _value.addresses
            : addresses as List<CodeableReference>?,
        supportingInfo: identical(supportingInfo, fhirSentinel)
            ? _value.supportingInfo
            : supportingInfo as List<Reference>?,
        goal: identical(goal, fhirSentinel)
            ? _value.goal
            : goal as List<Reference>?,
        activity: identical(activity, fhirSentinel)
            ? _value.activity
            : activity as List<CarePlanActivity>?,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
      ),
    );
  }
}

extension CarePlanCopyWithExtension on CarePlan {
  $CarePlanCopyWith<CarePlan> get copyWith => _$CarePlanCopyWithImpl<CarePlan>(
        this,
        (value) => value,
      );
}

abstract class $CarePlanActivityCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CodeableReference>? performedActivity,
    List<Annotation>? progress,
    Reference? plannedActivityReference,
    bool? disallowExtensions,
  });
}

class _$CarePlanActivityCopyWithImpl<T>
    implements $CarePlanActivityCopyWith<T> {
  final CarePlanActivity _value;
  final T Function(CarePlanActivity) _then;

  _$CarePlanActivityCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? performedActivity = fhirSentinel,
    Object? progress = fhirSentinel,
    Object? plannedActivityReference = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CarePlanActivity(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        performedActivity: identical(performedActivity, fhirSentinel)
            ? _value.performedActivity
            : performedActivity as List<CodeableReference>?,
        progress: identical(progress, fhirSentinel)
            ? _value.progress
            : progress as List<Annotation>?,
        plannedActivityReference:
            identical(plannedActivityReference, fhirSentinel)
                ? _value.plannedActivityReference
                : plannedActivityReference as Reference?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension CarePlanActivityCopyWithExtension on CarePlanActivity {
  $CarePlanActivityCopyWith<CarePlanActivity> get copyWith =>
      _$CarePlanActivityCopyWithImpl<CarePlanActivity>(
        this,
        (value) => value,
      );
}
