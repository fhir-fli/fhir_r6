// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'medication.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $MedicationCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    CodeableConcept? code,
    MedicationStatusCodes? status,
    Reference? marketingAuthorizationHolder,
    CodeableConcept? doseForm,
    Quantity? totalVolume,
    List<MedicationIngredient>? ingredient,
    MedicationBatch? batch,
    Reference? definition,
    bool? disallowExtensions,
  });
}

class _$MedicationCopyWithImpl<T> implements $MedicationCopyWith<T> {
  final Medication _value;
  final T Function(Medication) _then;

  _$MedicationCopyWithImpl(this._value, this._then);

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
    Object? code = fhirSentinel,
    Object? status = fhirSentinel,
    Object? marketingAuthorizationHolder = fhirSentinel,
    Object? doseForm = fhirSentinel,
    Object? totalVolume = fhirSentinel,
    Object? ingredient = fhirSentinel,
    Object? batch = fhirSentinel,
    Object? definition = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Medication(
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
        code: identical(code, fhirSentinel)
            ? _value.code
            : code as CodeableConcept?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : status as MedicationStatusCodes?,
        marketingAuthorizationHolder:
            identical(marketingAuthorizationHolder, fhirSentinel)
                ? _value.marketingAuthorizationHolder
                : marketingAuthorizationHolder as Reference?,
        doseForm: identical(doseForm, fhirSentinel)
            ? _value.doseForm
            : doseForm as CodeableConcept?,
        totalVolume: identical(totalVolume, fhirSentinel)
            ? _value.totalVolume
            : totalVolume as Quantity?,
        ingredient: identical(ingredient, fhirSentinel)
            ? _value.ingredient
            : ingredient as List<MedicationIngredient>?,
        batch: identical(batch, fhirSentinel)
            ? _value.batch
            : batch as MedicationBatch?,
        definition: identical(definition, fhirSentinel)
            ? _value.definition
            : definition as Reference?,
      ),
    );
  }
}

extension MedicationCopyWithExtension on Medication {
  $MedicationCopyWith<Medication> get copyWith =>
      _$MedicationCopyWithImpl<Medication>(
        this,
        (value) => value,
      );
}

abstract class $MedicationIngredientCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableReference? item,
    FhirBoolean? isActive,
    Ratio? strengthX,
    bool? disallowExtensions,
  });
}

class _$MedicationIngredientCopyWithImpl<T>
    implements $MedicationIngredientCopyWith<T> {
  final MedicationIngredient _value;
  final T Function(MedicationIngredient) _then;

  _$MedicationIngredientCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? item = fhirSentinel,
    Object? isActive = fhirSentinel,
    Object? strengthX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MedicationIngredient(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        item: identical(item, fhirSentinel)
            ? _value.item
            : (item as CodeableReference?) ?? _value.item,
        isActive: identical(isActive, fhirSentinel)
            ? _value.isActive
            : isActive as FhirBoolean?,
        strengthX: identical(strengthX, fhirSentinel)
            ? _value.strengthX
            : strengthX as Ratio?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MedicationIngredientCopyWithExtension on MedicationIngredient {
  $MedicationIngredientCopyWith<MedicationIngredient> get copyWith =>
      _$MedicationIngredientCopyWithImpl<MedicationIngredient>(
        this,
        (value) => value,
      );
}

abstract class $MedicationBatchCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? lotNumber,
    FhirDateTime? expirationDate,
    bool? disallowExtensions,
  });
}

class _$MedicationBatchCopyWithImpl<T> implements $MedicationBatchCopyWith<T> {
  final MedicationBatch _value;
  final T Function(MedicationBatch) _then;

  _$MedicationBatchCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? lotNumber = fhirSentinel,
    Object? expirationDate = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MedicationBatch(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        lotNumber: identical(lotNumber, fhirSentinel)
            ? _value.lotNumber
            : lotNumber as FhirString?,
        expirationDate: identical(expirationDate, fhirSentinel)
            ? _value.expirationDate
            : expirationDate as FhirDateTime?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MedicationBatchCopyWithExtension on MedicationBatch {
  $MedicationBatchCopyWith<MedicationBatch> get copyWith =>
      _$MedicationBatchCopyWithImpl<MedicationBatch>(
        this,
        (value) => value,
      );
}
