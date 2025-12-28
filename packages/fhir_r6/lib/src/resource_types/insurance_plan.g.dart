// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'insurance_plan.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $InsurancePlanCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    Reference? product,
    List<Reference>? coverageArea,
    List<Reference>? network,
    List<InsurancePlanGeneralCost>? generalCost,
    List<InsurancePlanSpecificCost>? specificCost,
    bool? disallowExtensions,
  });
}

class _$InsurancePlanCopyWithImpl<T> implements $InsurancePlanCopyWith<T> {
  final InsurancePlan _value;
  final T Function(InsurancePlan) _then;

  _$InsurancePlanCopyWithImpl(this._value, this._then);

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
    Object? product = fhirSentinel,
    Object? coverageArea = fhirSentinel,
    Object? network = fhirSentinel,
    Object? generalCost = fhirSentinel,
    Object? specificCost = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      InsurancePlan(
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
            : type as CodeableConcept?,
        product: identical(product, fhirSentinel)
            ? _value.product
            : product as Reference?,
        coverageArea: identical(coverageArea, fhirSentinel)
            ? _value.coverageArea
            : coverageArea as List<Reference>?,
        network: identical(network, fhirSentinel)
            ? _value.network
            : network as List<Reference>?,
        generalCost: identical(generalCost, fhirSentinel)
            ? _value.generalCost
            : generalCost as List<InsurancePlanGeneralCost>?,
        specificCost: identical(specificCost, fhirSentinel)
            ? _value.specificCost
            : specificCost as List<InsurancePlanSpecificCost>?,
      ),
    );
  }
}

extension InsurancePlanCopyWithExtension on InsurancePlan {
  $InsurancePlanCopyWith<InsurancePlan> get copyWith =>
      _$InsurancePlanCopyWithImpl<InsurancePlan>(
        this,
        (value) => value,
      );
}

abstract class $InsurancePlanGeneralCostCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    FhirPositiveInt? groupSize,
    Money? cost,
    FhirString? comment,
    bool? disallowExtensions,
  });
}

class _$InsurancePlanGeneralCostCopyWithImpl<T>
    implements $InsurancePlanGeneralCostCopyWith<T> {
  final InsurancePlanGeneralCost _value;
  final T Function(InsurancePlanGeneralCost) _then;

  _$InsurancePlanGeneralCostCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? groupSize = fhirSentinel,
    Object? cost = fhirSentinel,
    Object? comment = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      InsurancePlanGeneralCost(
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
        groupSize: identical(groupSize, fhirSentinel)
            ? _value.groupSize
            : groupSize as FhirPositiveInt?,
        cost: identical(cost, fhirSentinel) ? _value.cost : cost as Money?,
        comment: identical(comment, fhirSentinel)
            ? _value.comment
            : comment as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension InsurancePlanGeneralCostCopyWithExtension
    on InsurancePlanGeneralCost {
  $InsurancePlanGeneralCostCopyWith<InsurancePlanGeneralCost> get copyWith =>
      _$InsurancePlanGeneralCostCopyWithImpl<InsurancePlanGeneralCost>(
        this,
        (value) => value,
      );
}

abstract class $InsurancePlanSpecificCostCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? category,
    List<InsurancePlanBenefit>? benefit,
    bool? disallowExtensions,
  });
}

class _$InsurancePlanSpecificCostCopyWithImpl<T>
    implements $InsurancePlanSpecificCostCopyWith<T> {
  final InsurancePlanSpecificCost _value;
  final T Function(InsurancePlanSpecificCost) _then;

  _$InsurancePlanSpecificCostCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? category = fhirSentinel,
    Object? benefit = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      InsurancePlanSpecificCost(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        category: identical(category, fhirSentinel)
            ? _value.category
            : (category as CodeableConcept?) ?? _value.category,
        benefit: identical(benefit, fhirSentinel)
            ? _value.benefit
            : benefit as List<InsurancePlanBenefit>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension InsurancePlanSpecificCostCopyWithExtension
    on InsurancePlanSpecificCost {
  $InsurancePlanSpecificCostCopyWith<InsurancePlanSpecificCost> get copyWith =>
      _$InsurancePlanSpecificCostCopyWithImpl<InsurancePlanSpecificCost>(
        this,
        (value) => value,
      );
}

abstract class $InsurancePlanBenefitCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    List<InsurancePlanCost>? cost,
    bool? disallowExtensions,
  });
}

class _$InsurancePlanBenefitCopyWithImpl<T>
    implements $InsurancePlanBenefitCopyWith<T> {
  final InsurancePlanBenefit _value;
  final T Function(InsurancePlanBenefit) _then;

  _$InsurancePlanBenefitCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? cost = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      InsurancePlanBenefit(
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
        cost: identical(cost, fhirSentinel)
            ? _value.cost
            : cost as List<InsurancePlanCost>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension InsurancePlanBenefitCopyWithExtension on InsurancePlanBenefit {
  $InsurancePlanBenefitCopyWith<InsurancePlanBenefit> get copyWith =>
      _$InsurancePlanBenefitCopyWithImpl<InsurancePlanBenefit>(
        this,
        (value) => value,
      );
}

abstract class $InsurancePlanCostCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    CodeableConcept? applicability,
    List<CodeableConcept>? qualifier,
    Quantity? value,
    bool? disallowExtensions,
  });
}

class _$InsurancePlanCostCopyWithImpl<T>
    implements $InsurancePlanCostCopyWith<T> {
  final InsurancePlanCost _value;
  final T Function(InsurancePlanCost) _then;

  _$InsurancePlanCostCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? applicability = fhirSentinel,
    Object? qualifier = fhirSentinel,
    Object? value = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      InsurancePlanCost(
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
        applicability: identical(applicability, fhirSentinel)
            ? _value.applicability
            : applicability as CodeableConcept?,
        qualifier: identical(qualifier, fhirSentinel)
            ? _value.qualifier
            : qualifier as List<CodeableConcept>?,
        value:
            identical(value, fhirSentinel) ? _value.value : value as Quantity?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension InsurancePlanCostCopyWithExtension on InsurancePlanCost {
  $InsurancePlanCostCopyWith<InsurancePlanCost> get copyWith =>
      _$InsurancePlanCostCopyWithImpl<InsurancePlanCost>(
        this,
        (value) => value,
      );
}
