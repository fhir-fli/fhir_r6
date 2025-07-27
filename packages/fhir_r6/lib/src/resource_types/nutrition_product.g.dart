// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'nutrition_product.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $NutritionProductCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    CodeableConcept? code,
    NutritionProductStatus? status,
    List<CodeableConcept>? category,
    List<Reference>? manufacturer,
    List<NutritionProductNutrient>? nutrient,
    List<NutritionProductIngredient>? ingredient,
    List<CodeableReference>? knownAllergen,
    List<NutritionProductCharacteristic>? characteristic,
    List<NutritionProductInstance>? instance,
    List<Annotation>? note,
    bool? disallowExtensions,
  });
}

class _$NutritionProductCopyWithImpl<T>
    implements $NutritionProductCopyWith<T> {
  final NutritionProduct _value;
  final T Function(NutritionProduct) _then;

  _$NutritionProductCopyWithImpl(this._value, this._then);

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
    Object? code = fhirSentinel,
    Object? status = fhirSentinel,
    Object? category = fhirSentinel,
    Object? manufacturer = fhirSentinel,
    Object? nutrient = fhirSentinel,
    Object? ingredient = fhirSentinel,
    Object? knownAllergen = fhirSentinel,
    Object? characteristic = fhirSentinel,
    Object? instance = fhirSentinel,
    Object? note = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      NutritionProduct(
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
        code: identical(code, fhirSentinel)
            ? _value.code
            : code as CodeableConcept?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as NutritionProductStatus?) ?? _value.status,
        category: identical(category, fhirSentinel)
            ? _value.category
            : category as List<CodeableConcept>?,
        manufacturer: identical(manufacturer, fhirSentinel)
            ? _value.manufacturer
            : manufacturer as List<Reference>?,
        nutrient: identical(nutrient, fhirSentinel)
            ? _value.nutrient
            : nutrient as List<NutritionProductNutrient>?,
        ingredient: identical(ingredient, fhirSentinel)
            ? _value.ingredient
            : ingredient as List<NutritionProductIngredient>?,
        knownAllergen: identical(knownAllergen, fhirSentinel)
            ? _value.knownAllergen
            : knownAllergen as List<CodeableReference>?,
        characteristic: identical(characteristic, fhirSentinel)
            ? _value.characteristic
            : characteristic as List<NutritionProductCharacteristic>?,
        instance: identical(instance, fhirSentinel)
            ? _value.instance
            : instance as List<NutritionProductInstance>?,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
      ),
    );
  }
}

extension NutritionProductCopyWithExtension on NutritionProduct {
  $NutritionProductCopyWith<NutritionProduct> get copyWith =>
      _$NutritionProductCopyWithImpl<NutritionProduct>(
        this,
        (value) => value,
      );
}

abstract class $NutritionProductNutrientCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableReference? item,
    List<Ratio>? amount,
    bool? disallowExtensions,
  });
}

class _$NutritionProductNutrientCopyWithImpl<T>
    implements $NutritionProductNutrientCopyWith<T> {
  final NutritionProductNutrient _value;
  final T Function(NutritionProductNutrient) _then;

  _$NutritionProductNutrientCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? item = fhirSentinel,
    Object? amount = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      NutritionProductNutrient(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        item: identical(item, fhirSentinel)
            ? _value.item
            : item as CodeableReference?,
        amount: identical(amount, fhirSentinel)
            ? _value.amount
            : amount as List<Ratio>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension NutritionProductNutrientCopyWithExtension
    on NutritionProductNutrient {
  $NutritionProductNutrientCopyWith<NutritionProductNutrient> get copyWith =>
      _$NutritionProductNutrientCopyWithImpl<NutritionProductNutrient>(
        this,
        (value) => value,
      );
}

abstract class $NutritionProductIngredientCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableReference? item,
    List<Ratio>? amount,
    bool? disallowExtensions,
  });
}

class _$NutritionProductIngredientCopyWithImpl<T>
    implements $NutritionProductIngredientCopyWith<T> {
  final NutritionProductIngredient _value;
  final T Function(NutritionProductIngredient) _then;

  _$NutritionProductIngredientCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? item = fhirSentinel,
    Object? amount = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      NutritionProductIngredient(
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
        amount: identical(amount, fhirSentinel)
            ? _value.amount
            : amount as List<Ratio>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension NutritionProductIngredientCopyWithExtension
    on NutritionProductIngredient {
  $NutritionProductIngredientCopyWith<NutritionProductIngredient>
      get copyWith =>
          _$NutritionProductIngredientCopyWithImpl<NutritionProductIngredient>(
            this,
            (value) => value,
          );
}

abstract class $NutritionProductCharacteristicCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    CodeableConcept? valueX,
    bool? disallowExtensions,
  });
}

class _$NutritionProductCharacteristicCopyWithImpl<T>
    implements $NutritionProductCharacteristicCopyWith<T> {
  final NutritionProductCharacteristic _value;
  final T Function(NutritionProductCharacteristic) _then;

  _$NutritionProductCharacteristicCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? valueX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      NutritionProductCharacteristic(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : (type as CodeableConcept?) ?? _value.type,
        valueX: identical(valueX, fhirSentinel)
            ? _value.valueX
            : (valueX as CodeableConcept?) ?? _value.valueX,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension NutritionProductCharacteristicCopyWithExtension
    on NutritionProductCharacteristic {
  $NutritionProductCharacteristicCopyWith<NutritionProductCharacteristic>
      get copyWith => _$NutritionProductCharacteristicCopyWithImpl<
              NutritionProductCharacteristic>(
            this,
            (value) => value,
          );
}

abstract class $NutritionProductInstanceCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Quantity? quantity,
    List<Identifier>? identifier,
    FhirString? name,
    FhirString? lotNumber,
    FhirDateTime? expiry,
    FhirDateTime? useBy,
    Identifier? biologicalSourceEvent,
    bool? disallowExtensions,
  });
}

class _$NutritionProductInstanceCopyWithImpl<T>
    implements $NutritionProductInstanceCopyWith<T> {
  final NutritionProductInstance _value;
  final T Function(NutritionProductInstance) _then;

  _$NutritionProductInstanceCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? quantity = fhirSentinel,
    Object? identifier = fhirSentinel,
    Object? name = fhirSentinel,
    Object? lotNumber = fhirSentinel,
    Object? expiry = fhirSentinel,
    Object? useBy = fhirSentinel,
    Object? biologicalSourceEvent = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      NutritionProductInstance(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        quantity: identical(quantity, fhirSentinel)
            ? _value.quantity
            : quantity as Quantity?,
        identifier: identical(identifier, fhirSentinel)
            ? _value.identifier
            : identifier as List<Identifier>?,
        name: identical(name, fhirSentinel) ? _value.name : name as FhirString?,
        lotNumber: identical(lotNumber, fhirSentinel)
            ? _value.lotNumber
            : lotNumber as FhirString?,
        expiry: identical(expiry, fhirSentinel)
            ? _value.expiry
            : expiry as FhirDateTime?,
        useBy: identical(useBy, fhirSentinel)
            ? _value.useBy
            : useBy as FhirDateTime?,
        biologicalSourceEvent: identical(biologicalSourceEvent, fhirSentinel)
            ? _value.biologicalSourceEvent
            : biologicalSourceEvent as Identifier?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension NutritionProductInstanceCopyWithExtension
    on NutritionProductInstance {
  $NutritionProductInstanceCopyWith<NutritionProductInstance> get copyWith =>
      _$NutritionProductInstanceCopyWithImpl<NutritionProductInstance>(
        this,
        (value) => value,
      );
}
