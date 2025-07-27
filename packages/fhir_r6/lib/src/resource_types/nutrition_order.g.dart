// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'nutrition_order.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $NutritionOrderCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    List<FhirUri>? instantiates,
    List<Reference>? basedOn,
    Identifier? groupIdentifier,
    RequestStatus? status,
    RequestIntent? intent,
    RequestPriority? priority,
    Reference? subject,
    Reference? encounter,
    List<Reference>? supportingInformation,
    FhirDateTime? dateTime,
    Reference? orderer,
    List<CodeableReference>? performer,
    List<Reference>? allergyIntolerance,
    List<CodeableConcept>? foodPreferenceModifier,
    List<CodeableConcept>? excludeFoodModifier,
    FhirBoolean? outsideFoodAllowed,
    NutritionOrderOralDiet? oralDiet,
    List<NutritionOrderSupplement>? supplement,
    NutritionOrderEnteralFormula? enteralFormula,
    List<Annotation>? note,
    bool? disallowExtensions,
  });
}

class _$NutritionOrderCopyWithImpl<T> implements $NutritionOrderCopyWith<T> {
  final NutritionOrder _value;
  final T Function(NutritionOrder) _then;

  _$NutritionOrderCopyWithImpl(this._value, this._then);

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
    Object? instantiates = fhirSentinel,
    Object? basedOn = fhirSentinel,
    Object? groupIdentifier = fhirSentinel,
    Object? status = fhirSentinel,
    Object? intent = fhirSentinel,
    Object? priority = fhirSentinel,
    Object? subject = fhirSentinel,
    Object? encounter = fhirSentinel,
    Object? supportingInformation = fhirSentinel,
    Object? dateTime = fhirSentinel,
    Object? orderer = fhirSentinel,
    Object? performer = fhirSentinel,
    Object? allergyIntolerance = fhirSentinel,
    Object? foodPreferenceModifier = fhirSentinel,
    Object? excludeFoodModifier = fhirSentinel,
    Object? outsideFoodAllowed = fhirSentinel,
    Object? oralDiet = fhirSentinel,
    Object? supplement = fhirSentinel,
    Object? enteralFormula = fhirSentinel,
    Object? note = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      NutritionOrder(
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
        instantiates: identical(instantiates, fhirSentinel)
            ? _value.instantiates
            : instantiates as List<FhirUri>?,
        basedOn: identical(basedOn, fhirSentinel)
            ? _value.basedOn
            : basedOn as List<Reference>?,
        groupIdentifier: identical(groupIdentifier, fhirSentinel)
            ? _value.groupIdentifier
            : groupIdentifier as Identifier?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as RequestStatus?) ?? _value.status,
        intent: identical(intent, fhirSentinel)
            ? _value.intent
            : (intent as RequestIntent?) ?? _value.intent,
        priority: identical(priority, fhirSentinel)
            ? _value.priority
            : priority as RequestPriority?,
        subject: identical(subject, fhirSentinel)
            ? _value.subject
            : (subject as Reference?) ?? _value.subject,
        encounter: identical(encounter, fhirSentinel)
            ? _value.encounter
            : encounter as Reference?,
        supportingInformation: identical(supportingInformation, fhirSentinel)
            ? _value.supportingInformation
            : supportingInformation as List<Reference>?,
        dateTime: identical(dateTime, fhirSentinel)
            ? _value.dateTime
            : (dateTime as FhirDateTime?) ?? _value.dateTime,
        orderer: identical(orderer, fhirSentinel)
            ? _value.orderer
            : orderer as Reference?,
        performer: identical(performer, fhirSentinel)
            ? _value.performer
            : performer as List<CodeableReference>?,
        allergyIntolerance: identical(allergyIntolerance, fhirSentinel)
            ? _value.allergyIntolerance
            : allergyIntolerance as List<Reference>?,
        foodPreferenceModifier: identical(foodPreferenceModifier, fhirSentinel)
            ? _value.foodPreferenceModifier
            : foodPreferenceModifier as List<CodeableConcept>?,
        excludeFoodModifier: identical(excludeFoodModifier, fhirSentinel)
            ? _value.excludeFoodModifier
            : excludeFoodModifier as List<CodeableConcept>?,
        outsideFoodAllowed: identical(outsideFoodAllowed, fhirSentinel)
            ? _value.outsideFoodAllowed
            : outsideFoodAllowed as FhirBoolean?,
        oralDiet: identical(oralDiet, fhirSentinel)
            ? _value.oralDiet
            : oralDiet as NutritionOrderOralDiet?,
        supplement: identical(supplement, fhirSentinel)
            ? _value.supplement
            : supplement as List<NutritionOrderSupplement>?,
        enteralFormula: identical(enteralFormula, fhirSentinel)
            ? _value.enteralFormula
            : enteralFormula as NutritionOrderEnteralFormula?,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
      ),
    );
  }
}

extension NutritionOrderCopyWithExtension on NutritionOrder {
  $NutritionOrderCopyWith<NutritionOrder> get copyWith =>
      _$NutritionOrderCopyWithImpl<NutritionOrder>(
        this,
        (value) => value,
      );
}

abstract class $NutritionOrderOralDietCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CodeableConcept>? type,
    NutritionOrderSchedule? schedule,
    List<NutritionOrderNutrient>? nutrient,
    List<NutritionOrderTexture>? texture,
    List<CodeableConcept>? fluidConsistencyType,
    FhirString? instruction,
    bool? disallowExtensions,
  });
}

class _$NutritionOrderOralDietCopyWithImpl<T>
    implements $NutritionOrderOralDietCopyWith<T> {
  final NutritionOrderOralDiet _value;
  final T Function(NutritionOrderOralDiet) _then;

  _$NutritionOrderOralDietCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? schedule = fhirSentinel,
    Object? nutrient = fhirSentinel,
    Object? texture = fhirSentinel,
    Object? fluidConsistencyType = fhirSentinel,
    Object? instruction = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      NutritionOrderOralDiet(
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
        schedule: identical(schedule, fhirSentinel)
            ? _value.schedule
            : schedule as NutritionOrderSchedule?,
        nutrient: identical(nutrient, fhirSentinel)
            ? _value.nutrient
            : nutrient as List<NutritionOrderNutrient>?,
        texture: identical(texture, fhirSentinel)
            ? _value.texture
            : texture as List<NutritionOrderTexture>?,
        fluidConsistencyType: identical(fluidConsistencyType, fhirSentinel)
            ? _value.fluidConsistencyType
            : fluidConsistencyType as List<CodeableConcept>?,
        instruction: identical(instruction, fhirSentinel)
            ? _value.instruction
            : instruction as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension NutritionOrderOralDietCopyWithExtension on NutritionOrderOralDiet {
  $NutritionOrderOralDietCopyWith<NutritionOrderOralDiet> get copyWith =>
      _$NutritionOrderOralDietCopyWithImpl<NutritionOrderOralDiet>(
        this,
        (value) => value,
      );
}

abstract class $NutritionOrderScheduleCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Timing>? timing,
    FhirBoolean? asNeeded,
    CodeableConcept? asNeededFor,
    bool? disallowExtensions,
  });
}

class _$NutritionOrderScheduleCopyWithImpl<T>
    implements $NutritionOrderScheduleCopyWith<T> {
  final NutritionOrderSchedule _value;
  final T Function(NutritionOrderSchedule) _then;

  _$NutritionOrderScheduleCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? timing = fhirSentinel,
    Object? asNeeded = fhirSentinel,
    Object? asNeededFor = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      NutritionOrderSchedule(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        timing: identical(timing, fhirSentinel)
            ? _value.timing
            : timing as List<Timing>?,
        asNeeded: identical(asNeeded, fhirSentinel)
            ? _value.asNeeded
            : asNeeded as FhirBoolean?,
        asNeededFor: identical(asNeededFor, fhirSentinel)
            ? _value.asNeededFor
            : asNeededFor as CodeableConcept?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension NutritionOrderScheduleCopyWithExtension on NutritionOrderSchedule {
  $NutritionOrderScheduleCopyWith<NutritionOrderSchedule> get copyWith =>
      _$NutritionOrderScheduleCopyWithImpl<NutritionOrderSchedule>(
        this,
        (value) => value,
      );
}

abstract class $NutritionOrderNutrientCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? modifier,
    Quantity? amount,
    bool? disallowExtensions,
  });
}

class _$NutritionOrderNutrientCopyWithImpl<T>
    implements $NutritionOrderNutrientCopyWith<T> {
  final NutritionOrderNutrient _value;
  final T Function(NutritionOrderNutrient) _then;

  _$NutritionOrderNutrientCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? modifier = fhirSentinel,
    Object? amount = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      NutritionOrderNutrient(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        modifier: identical(modifier, fhirSentinel)
            ? _value.modifier
            : modifier as CodeableConcept?,
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

extension NutritionOrderNutrientCopyWithExtension on NutritionOrderNutrient {
  $NutritionOrderNutrientCopyWith<NutritionOrderNutrient> get copyWith =>
      _$NutritionOrderNutrientCopyWithImpl<NutritionOrderNutrient>(
        this,
        (value) => value,
      );
}

abstract class $NutritionOrderTextureCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? modifier,
    CodeableConcept? foodType,
    bool? disallowExtensions,
  });
}

class _$NutritionOrderTextureCopyWithImpl<T>
    implements $NutritionOrderTextureCopyWith<T> {
  final NutritionOrderTexture _value;
  final T Function(NutritionOrderTexture) _then;

  _$NutritionOrderTextureCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? modifier = fhirSentinel,
    Object? foodType = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      NutritionOrderTexture(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        modifier: identical(modifier, fhirSentinel)
            ? _value.modifier
            : modifier as CodeableConcept?,
        foodType: identical(foodType, fhirSentinel)
            ? _value.foodType
            : foodType as CodeableConcept?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension NutritionOrderTextureCopyWithExtension on NutritionOrderTexture {
  $NutritionOrderTextureCopyWith<NutritionOrderTexture> get copyWith =>
      _$NutritionOrderTextureCopyWithImpl<NutritionOrderTexture>(
        this,
        (value) => value,
      );
}

abstract class $NutritionOrderSupplementCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableReference? type,
    FhirString? productName,
    NutritionOrderSchedule? schedule,
    Quantity? quantity,
    FhirString? instruction,
    bool? disallowExtensions,
  });
}

class _$NutritionOrderSupplementCopyWithImpl<T>
    implements $NutritionOrderSupplementCopyWith<T> {
  final NutritionOrderSupplement _value;
  final T Function(NutritionOrderSupplement) _then;

  _$NutritionOrderSupplementCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? productName = fhirSentinel,
    Object? schedule = fhirSentinel,
    Object? quantity = fhirSentinel,
    Object? instruction = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      NutritionOrderSupplement(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableReference?,
        productName: identical(productName, fhirSentinel)
            ? _value.productName
            : productName as FhirString?,
        schedule: identical(schedule, fhirSentinel)
            ? _value.schedule
            : schedule as NutritionOrderSchedule?,
        quantity: identical(quantity, fhirSentinel)
            ? _value.quantity
            : quantity as Quantity?,
        instruction: identical(instruction, fhirSentinel)
            ? _value.instruction
            : instruction as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension NutritionOrderSupplementCopyWithExtension
    on NutritionOrderSupplement {
  $NutritionOrderSupplementCopyWith<NutritionOrderSupplement> get copyWith =>
      _$NutritionOrderSupplementCopyWithImpl<NutritionOrderSupplement>(
        this,
        (value) => value,
      );
}

abstract class $NutritionOrderSchedule1CopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Timing>? timing,
    FhirBoolean? asNeeded,
    CodeableConcept? asNeededFor,
    bool? disallowExtensions,
  });
}

class _$NutritionOrderSchedule1CopyWithImpl<T>
    implements $NutritionOrderSchedule1CopyWith<T> {
  final NutritionOrderSchedule1 _value;
  final T Function(NutritionOrderSchedule1) _then;

  _$NutritionOrderSchedule1CopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? timing = fhirSentinel,
    Object? asNeeded = fhirSentinel,
    Object? asNeededFor = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      NutritionOrderSchedule1(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        timing: identical(timing, fhirSentinel)
            ? _value.timing
            : timing as List<Timing>?,
        asNeeded: identical(asNeeded, fhirSentinel)
            ? _value.asNeeded
            : asNeeded as FhirBoolean?,
        asNeededFor: identical(asNeededFor, fhirSentinel)
            ? _value.asNeededFor
            : asNeededFor as CodeableConcept?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension NutritionOrderSchedule1CopyWithExtension on NutritionOrderSchedule1 {
  $NutritionOrderSchedule1CopyWith<NutritionOrderSchedule1> get copyWith =>
      _$NutritionOrderSchedule1CopyWithImpl<NutritionOrderSchedule1>(
        this,
        (value) => value,
      );
}

abstract class $NutritionOrderEnteralFormulaCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableReference? baseFormulaType,
    FhirString? baseFormulaProductName,
    List<CodeableReference>? deliveryDevice,
    List<NutritionOrderAdditive>? additive,
    Quantity? caloricDensity,
    CodeableConcept? routeOfAdministration,
    List<NutritionOrderAdministration>? administration,
    Quantity? maxVolumeToDeliver,
    FhirMarkdown? administrationInstruction,
    bool? disallowExtensions,
  });
}

class _$NutritionOrderEnteralFormulaCopyWithImpl<T>
    implements $NutritionOrderEnteralFormulaCopyWith<T> {
  final NutritionOrderEnteralFormula _value;
  final T Function(NutritionOrderEnteralFormula) _then;

  _$NutritionOrderEnteralFormulaCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? baseFormulaType = fhirSentinel,
    Object? baseFormulaProductName = fhirSentinel,
    Object? deliveryDevice = fhirSentinel,
    Object? additive = fhirSentinel,
    Object? caloricDensity = fhirSentinel,
    Object? routeOfAdministration = fhirSentinel,
    Object? administration = fhirSentinel,
    Object? maxVolumeToDeliver = fhirSentinel,
    Object? administrationInstruction = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      NutritionOrderEnteralFormula(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        baseFormulaType: identical(baseFormulaType, fhirSentinel)
            ? _value.baseFormulaType
            : baseFormulaType as CodeableReference?,
        baseFormulaProductName: identical(baseFormulaProductName, fhirSentinel)
            ? _value.baseFormulaProductName
            : baseFormulaProductName as FhirString?,
        deliveryDevice: identical(deliveryDevice, fhirSentinel)
            ? _value.deliveryDevice
            : deliveryDevice as List<CodeableReference>?,
        additive: identical(additive, fhirSentinel)
            ? _value.additive
            : additive as List<NutritionOrderAdditive>?,
        caloricDensity: identical(caloricDensity, fhirSentinel)
            ? _value.caloricDensity
            : caloricDensity as Quantity?,
        routeOfAdministration: identical(routeOfAdministration, fhirSentinel)
            ? _value.routeOfAdministration
            : routeOfAdministration as CodeableConcept?,
        administration: identical(administration, fhirSentinel)
            ? _value.administration
            : administration as List<NutritionOrderAdministration>?,
        maxVolumeToDeliver: identical(maxVolumeToDeliver, fhirSentinel)
            ? _value.maxVolumeToDeliver
            : maxVolumeToDeliver as Quantity?,
        administrationInstruction:
            identical(administrationInstruction, fhirSentinel)
                ? _value.administrationInstruction
                : administrationInstruction as FhirMarkdown?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension NutritionOrderEnteralFormulaCopyWithExtension
    on NutritionOrderEnteralFormula {
  $NutritionOrderEnteralFormulaCopyWith<NutritionOrderEnteralFormula>
      get copyWith => _$NutritionOrderEnteralFormulaCopyWithImpl<
              NutritionOrderEnteralFormula>(
            this,
            (value) => value,
          );
}

abstract class $NutritionOrderAdditiveCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableReference? type,
    FhirString? productName,
    Quantity? quantity,
    bool? disallowExtensions,
  });
}

class _$NutritionOrderAdditiveCopyWithImpl<T>
    implements $NutritionOrderAdditiveCopyWith<T> {
  final NutritionOrderAdditive _value;
  final T Function(NutritionOrderAdditive) _then;

  _$NutritionOrderAdditiveCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? productName = fhirSentinel,
    Object? quantity = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      NutritionOrderAdditive(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableReference?,
        productName: identical(productName, fhirSentinel)
            ? _value.productName
            : productName as FhirString?,
        quantity: identical(quantity, fhirSentinel)
            ? _value.quantity
            : quantity as Quantity?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension NutritionOrderAdditiveCopyWithExtension on NutritionOrderAdditive {
  $NutritionOrderAdditiveCopyWith<NutritionOrderAdditive> get copyWith =>
      _$NutritionOrderAdditiveCopyWithImpl<NutritionOrderAdditive>(
        this,
        (value) => value,
      );
}

abstract class $NutritionOrderAdministrationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    NutritionOrderSchedule? schedule,
    Quantity? quantity,
    Quantity? rateX,
    bool? disallowExtensions,
  });
}

class _$NutritionOrderAdministrationCopyWithImpl<T>
    implements $NutritionOrderAdministrationCopyWith<T> {
  final NutritionOrderAdministration _value;
  final T Function(NutritionOrderAdministration) _then;

  _$NutritionOrderAdministrationCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? schedule = fhirSentinel,
    Object? quantity = fhirSentinel,
    Object? rateX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      NutritionOrderAdministration(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        schedule: identical(schedule, fhirSentinel)
            ? _value.schedule
            : schedule as NutritionOrderSchedule?,
        quantity: identical(quantity, fhirSentinel)
            ? _value.quantity
            : quantity as Quantity?,
        rateX:
            identical(rateX, fhirSentinel) ? _value.rateX : rateX as Quantity?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension NutritionOrderAdministrationCopyWithExtension
    on NutritionOrderAdministration {
  $NutritionOrderAdministrationCopyWith<NutritionOrderAdministration>
      get copyWith => _$NutritionOrderAdministrationCopyWithImpl<
              NutritionOrderAdministration>(
            this,
            (value) => value,
          );
}

abstract class $NutritionOrderSchedule2CopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Timing>? timing,
    FhirBoolean? asNeeded,
    CodeableConcept? asNeededFor,
    bool? disallowExtensions,
  });
}

class _$NutritionOrderSchedule2CopyWithImpl<T>
    implements $NutritionOrderSchedule2CopyWith<T> {
  final NutritionOrderSchedule2 _value;
  final T Function(NutritionOrderSchedule2) _then;

  _$NutritionOrderSchedule2CopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? timing = fhirSentinel,
    Object? asNeeded = fhirSentinel,
    Object? asNeededFor = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      NutritionOrderSchedule2(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        timing: identical(timing, fhirSentinel)
            ? _value.timing
            : timing as List<Timing>?,
        asNeeded: identical(asNeeded, fhirSentinel)
            ? _value.asNeeded
            : asNeeded as FhirBoolean?,
        asNeededFor: identical(asNeededFor, fhirSentinel)
            ? _value.asNeededFor
            : asNeededFor as CodeableConcept?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension NutritionOrderSchedule2CopyWithExtension on NutritionOrderSchedule2 {
  $NutritionOrderSchedule2CopyWith<NutritionOrderSchedule2> get copyWith =>
      _$NutritionOrderSchedule2CopyWithImpl<NutritionOrderSchedule2>(
        this,
        (value) => value,
      );
}
