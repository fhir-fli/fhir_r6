// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'nutrition_intake.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $NutritionIntakeCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    List<Reference>? partOf,
    EventStatus? status,
    List<CodeableConcept>? statusReason,
    CodeableConcept? code,
    Reference? subject,
    Reference? encounter,
    OccurrenceXNutritionIntake? occurrenceX,
    FhirDateTime? recorded,
    ReportedXNutritionIntake? reportedX,
    List<NutritionIntakeNutritionItem>? nutritionItem,
    List<NutritionIntakePerformer>? performer,
    Reference? location,
    List<Reference>? derivedFrom,
    List<CodeableReference>? reason,
    List<Annotation>? note,
    bool? disallowExtensions,
  });
}

class _$NutritionIntakeCopyWithImpl<T> implements $NutritionIntakeCopyWith<T> {
  final NutritionIntake _value;
  final T Function(NutritionIntake) _then;

  _$NutritionIntakeCopyWithImpl(this._value, this._then);

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
    Object? partOf = fhirSentinel,
    Object? status = fhirSentinel,
    Object? statusReason = fhirSentinel,
    Object? code = fhirSentinel,
    Object? subject = fhirSentinel,
    Object? encounter = fhirSentinel,
    Object? occurrenceX = fhirSentinel,
    Object? recorded = fhirSentinel,
    Object? reportedX = fhirSentinel,
    Object? nutritionItem = fhirSentinel,
    Object? performer = fhirSentinel,
    Object? location = fhirSentinel,
    Object? derivedFrom = fhirSentinel,
    Object? reason = fhirSentinel,
    Object? note = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      NutritionIntake(
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
        partOf: identical(partOf, fhirSentinel)
            ? _value.partOf
            : partOf as List<Reference>?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as EventStatus?) ?? _value.status,
        statusReason: identical(statusReason, fhirSentinel)
            ? _value.statusReason
            : statusReason as List<CodeableConcept>?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : code as CodeableConcept?,
        subject: identical(subject, fhirSentinel)
            ? _value.subject
            : (subject as Reference?) ?? _value.subject,
        encounter: identical(encounter, fhirSentinel)
            ? _value.encounter
            : encounter as Reference?,
        occurrenceX: identical(occurrenceX, fhirSentinel)
            ? _value.occurrenceX
            : occurrenceX as OccurrenceXNutritionIntake?,
        recorded: identical(recorded, fhirSentinel)
            ? _value.recorded
            : recorded as FhirDateTime?,
        reportedX: identical(reportedX, fhirSentinel)
            ? _value.reportedX
            : reportedX as ReportedXNutritionIntake?,
        nutritionItem: identical(nutritionItem, fhirSentinel)
            ? _value.nutritionItem
            : nutritionItem as List<NutritionIntakeNutritionItem>?,
        performer: identical(performer, fhirSentinel)
            ? _value.performer
            : performer as List<NutritionIntakePerformer>?,
        location: identical(location, fhirSentinel)
            ? _value.location
            : location as Reference?,
        derivedFrom: identical(derivedFrom, fhirSentinel)
            ? _value.derivedFrom
            : derivedFrom as List<Reference>?,
        reason: identical(reason, fhirSentinel)
            ? _value.reason
            : reason as List<CodeableReference>?,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
      ),
    );
  }
}

extension NutritionIntakeCopyWithExtension on NutritionIntake {
  $NutritionIntakeCopyWith<NutritionIntake> get copyWith =>
      _$NutritionIntakeCopyWithImpl<NutritionIntake>(
        this,
        (value) => value,
      );
}

abstract class $NutritionIntakeNutritionItemCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    CodeableReference? nutritionProduct,
    List<NutritionIntakeConsumedItem>? consumedItem,
    List<NutritionIntakeNotConsumedItem>? notConsumedItem,
    bool? disallowExtensions,
  });
}

class _$NutritionIntakeNutritionItemCopyWithImpl<T>
    implements $NutritionIntakeNutritionItemCopyWith<T> {
  final NutritionIntakeNutritionItem _value;
  final T Function(NutritionIntakeNutritionItem) _then;

  _$NutritionIntakeNutritionItemCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? nutritionProduct = fhirSentinel,
    Object? consumedItem = fhirSentinel,
    Object? notConsumedItem = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      NutritionIntakeNutritionItem(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        nutritionProduct: identical(nutritionProduct, fhirSentinel)
            ? _value.nutritionProduct
            : nutritionProduct as CodeableReference?,
        consumedItem: identical(consumedItem, fhirSentinel)
            ? _value.consumedItem
            : consumedItem as List<NutritionIntakeConsumedItem>?,
        notConsumedItem: identical(notConsumedItem, fhirSentinel)
            ? _value.notConsumedItem
            : notConsumedItem as List<NutritionIntakeNotConsumedItem>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension NutritionIntakeNutritionItemCopyWithExtension
    on NutritionIntakeNutritionItem {
  $NutritionIntakeNutritionItemCopyWith<NutritionIntakeNutritionItem>
      get copyWith => _$NutritionIntakeNutritionItemCopyWithImpl<
              NutritionIntakeNutritionItem>(
            this,
            (value) => value,
          );
}

abstract class $NutritionIntakeConsumedItemCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Timing? schedule,
    Quantity? amount,
    RateXNutritionIntakeConsumedItem? rateX,
    List<NutritionIntakeTotalIntake>? totalIntake,
    bool? disallowExtensions,
  });
}

class _$NutritionIntakeConsumedItemCopyWithImpl<T>
    implements $NutritionIntakeConsumedItemCopyWith<T> {
  final NutritionIntakeConsumedItem _value;
  final T Function(NutritionIntakeConsumedItem) _then;

  _$NutritionIntakeConsumedItemCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? schedule = fhirSentinel,
    Object? amount = fhirSentinel,
    Object? rateX = fhirSentinel,
    Object? totalIntake = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      NutritionIntakeConsumedItem(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        schedule: identical(schedule, fhirSentinel)
            ? _value.schedule
            : schedule as Timing?,
        amount: identical(amount, fhirSentinel)
            ? _value.amount
            : amount as Quantity?,
        rateX: identical(rateX, fhirSentinel)
            ? _value.rateX
            : rateX as RateXNutritionIntakeConsumedItem?,
        totalIntake: identical(totalIntake, fhirSentinel)
            ? _value.totalIntake
            : totalIntake as List<NutritionIntakeTotalIntake>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension NutritionIntakeConsumedItemCopyWithExtension
    on NutritionIntakeConsumedItem {
  $NutritionIntakeConsumedItemCopyWith<NutritionIntakeConsumedItem>
      get copyWith => _$NutritionIntakeConsumedItemCopyWithImpl<
              NutritionIntakeConsumedItem>(
            this,
            (value) => value,
          );
}

abstract class $NutritionIntakeTotalIntakeCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableReference? nutrient,
    Quantity? amount,
    Quantity? energy,
    bool? disallowExtensions,
  });
}

class _$NutritionIntakeTotalIntakeCopyWithImpl<T>
    implements $NutritionIntakeTotalIntakeCopyWith<T> {
  final NutritionIntakeTotalIntake _value;
  final T Function(NutritionIntakeTotalIntake) _then;

  _$NutritionIntakeTotalIntakeCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? nutrient = fhirSentinel,
    Object? amount = fhirSentinel,
    Object? energy = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      NutritionIntakeTotalIntake(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        nutrient: identical(nutrient, fhirSentinel)
            ? _value.nutrient
            : (nutrient as CodeableReference?) ?? _value.nutrient,
        amount: identical(amount, fhirSentinel)
            ? _value.amount
            : (amount as Quantity?) ?? _value.amount,
        energy: identical(energy, fhirSentinel)
            ? _value.energy
            : energy as Quantity?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension NutritionIntakeTotalIntakeCopyWithExtension
    on NutritionIntakeTotalIntake {
  $NutritionIntakeTotalIntakeCopyWith<NutritionIntakeTotalIntake>
      get copyWith =>
          _$NutritionIntakeTotalIntakeCopyWithImpl<NutritionIntakeTotalIntake>(
            this,
            (value) => value,
          );
}

abstract class $NutritionIntakeNotConsumedItemCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? reason,
    Timing? schedule,
    Quantity? amount,
    bool? disallowExtensions,
  });
}

class _$NutritionIntakeNotConsumedItemCopyWithImpl<T>
    implements $NutritionIntakeNotConsumedItemCopyWith<T> {
  final NutritionIntakeNotConsumedItem _value;
  final T Function(NutritionIntakeNotConsumedItem) _then;

  _$NutritionIntakeNotConsumedItemCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? reason = fhirSentinel,
    Object? schedule = fhirSentinel,
    Object? amount = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      NutritionIntakeNotConsumedItem(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        reason: identical(reason, fhirSentinel)
            ? _value.reason
            : reason as CodeableConcept?,
        schedule: identical(schedule, fhirSentinel)
            ? _value.schedule
            : schedule as Timing?,
        amount: identical(amount, fhirSentinel)
            ? _value.amount
            : amount as Quantity?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension NutritionIntakeNotConsumedItemCopyWithExtension
    on NutritionIntakeNotConsumedItem {
  $NutritionIntakeNotConsumedItemCopyWith<NutritionIntakeNotConsumedItem>
      get copyWith => _$NutritionIntakeNotConsumedItemCopyWithImpl<
              NutritionIntakeNotConsumedItem>(
            this,
            (value) => value,
          );
}

abstract class $NutritionIntakePerformerCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? function_,
    Reference? actor,
    bool? disallowExtensions,
  });
}

class _$NutritionIntakePerformerCopyWithImpl<T>
    implements $NutritionIntakePerformerCopyWith<T> {
  final NutritionIntakePerformer _value;
  final T Function(NutritionIntakePerformer) _then;

  _$NutritionIntakePerformerCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? function_ = fhirSentinel,
    Object? actor = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      NutritionIntakePerformer(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        function_: identical(function_, fhirSentinel)
            ? _value.function_
            : function_ as CodeableConcept?,
        actor: identical(actor, fhirSentinel)
            ? _value.actor
            : (actor as Reference?) ?? _value.actor,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension NutritionIntakePerformerCopyWithExtension
    on NutritionIntakePerformer {
  $NutritionIntakePerformerCopyWith<NutritionIntakePerformer> get copyWith =>
      _$NutritionIntakePerformerCopyWithImpl<NutritionIntakePerformer>(
        this,
        (value) => value,
      );
}
