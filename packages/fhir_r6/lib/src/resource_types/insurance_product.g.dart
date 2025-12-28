// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'insurance_product.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $InsuranceProductCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    PublicationStatus? status,
    List<CodeableConcept>? type,
    FhirString? name,
    List<FhirString>? alias,
    Period? period,
    Reference? ownedBy,
    Reference? administeredBy,
    List<Reference>? coverageArea,
    List<ExtendedContactDetail>? contact,
    List<Reference>? endpoint,
    List<Reference>? network,
    List<InsuranceProductCoverage>? coverage,
    List<InsuranceProductRelated>? related,
    bool? disallowExtensions,
  });
}

class _$InsuranceProductCopyWithImpl<T>
    implements $InsuranceProductCopyWith<T> {
  final InsuranceProduct _value;
  final T Function(InsuranceProduct) _then;

  _$InsuranceProductCopyWithImpl(this._value, this._then);

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
    Object? type = fhirSentinel,
    Object? name = fhirSentinel,
    Object? alias = fhirSentinel,
    Object? period = fhirSentinel,
    Object? ownedBy = fhirSentinel,
    Object? administeredBy = fhirSentinel,
    Object? coverageArea = fhirSentinel,
    Object? contact = fhirSentinel,
    Object? endpoint = fhirSentinel,
    Object? network = fhirSentinel,
    Object? coverage = fhirSentinel,
    Object? related = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      InsuranceProduct(
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
            : status as PublicationStatus?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as List<CodeableConcept>?,
        name: identical(name, fhirSentinel) ? _value.name : name as FhirString?,
        alias: identical(alias, fhirSentinel)
            ? _value.alias
            : alias as List<FhirString>?,
        period:
            identical(period, fhirSentinel) ? _value.period : period as Period?,
        ownedBy: identical(ownedBy, fhirSentinel)
            ? _value.ownedBy
            : ownedBy as Reference?,
        administeredBy: identical(administeredBy, fhirSentinel)
            ? _value.administeredBy
            : administeredBy as Reference?,
        coverageArea: identical(coverageArea, fhirSentinel)
            ? _value.coverageArea
            : coverageArea as List<Reference>?,
        contact: identical(contact, fhirSentinel)
            ? _value.contact
            : contact as List<ExtendedContactDetail>?,
        endpoint: identical(endpoint, fhirSentinel)
            ? _value.endpoint
            : endpoint as List<Reference>?,
        network: identical(network, fhirSentinel)
            ? _value.network
            : network as List<Reference>?,
        coverage: identical(coverage, fhirSentinel)
            ? _value.coverage
            : coverage as List<InsuranceProductCoverage>?,
        related: identical(related, fhirSentinel)
            ? _value.related
            : related as List<InsuranceProductRelated>?,
      ),
    );
  }
}

extension InsuranceProductCopyWithExtension on InsuranceProduct {
  $InsuranceProductCopyWith<InsuranceProduct> get copyWith =>
      _$InsuranceProductCopyWithImpl<InsuranceProduct>(
        this,
        (value) => value,
      );
}

abstract class $InsuranceProductCoverageCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    List<Reference>? network,
    List<InsuranceProductBenefit>? benefit,
    bool? disallowExtensions,
  });
}

class _$InsuranceProductCoverageCopyWithImpl<T>
    implements $InsuranceProductCoverageCopyWith<T> {
  final InsuranceProductCoverage _value;
  final T Function(InsuranceProductCoverage) _then;

  _$InsuranceProductCoverageCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? network = fhirSentinel,
    Object? benefit = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      InsuranceProductCoverage(
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
        network: identical(network, fhirSentinel)
            ? _value.network
            : network as List<Reference>?,
        benefit: identical(benefit, fhirSentinel)
            ? _value.benefit
            : (benefit as List<InsuranceProductBenefit>?) ?? _value.benefit,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension InsuranceProductCoverageCopyWithExtension
    on InsuranceProductCoverage {
  $InsuranceProductCoverageCopyWith<InsuranceProductCoverage> get copyWith =>
      _$InsuranceProductCoverageCopyWithImpl<InsuranceProductCoverage>(
        this,
        (value) => value,
      );
}

abstract class $InsuranceProductBenefitCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    FhirString? requirement,
    List<InsuranceProductLimit>? limit,
    bool? disallowExtensions,
  });
}

class _$InsuranceProductBenefitCopyWithImpl<T>
    implements $InsuranceProductBenefitCopyWith<T> {
  final InsuranceProductBenefit _value;
  final T Function(InsuranceProductBenefit) _then;

  _$InsuranceProductBenefitCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? requirement = fhirSentinel,
    Object? limit = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      InsuranceProductBenefit(
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
        requirement: identical(requirement, fhirSentinel)
            ? _value.requirement
            : requirement as FhirString?,
        limit: identical(limit, fhirSentinel)
            ? _value.limit
            : limit as List<InsuranceProductLimit>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension InsuranceProductBenefitCopyWithExtension on InsuranceProductBenefit {
  $InsuranceProductBenefitCopyWith<InsuranceProductBenefit> get copyWith =>
      _$InsuranceProductBenefitCopyWithImpl<InsuranceProductBenefit>(
        this,
        (value) => value,
      );
}

abstract class $InsuranceProductLimitCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Quantity? value,
    CodeableConcept? code,
    bool? disallowExtensions,
  });
}

class _$InsuranceProductLimitCopyWithImpl<T>
    implements $InsuranceProductLimitCopyWith<T> {
  final InsuranceProductLimit _value;
  final T Function(InsuranceProductLimit) _then;

  _$InsuranceProductLimitCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? value = fhirSentinel,
    Object? code = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      InsuranceProductLimit(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        value:
            identical(value, fhirSentinel) ? _value.value : value as Quantity?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : code as CodeableConcept?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension InsuranceProductLimitCopyWithExtension on InsuranceProductLimit {
  $InsuranceProductLimitCopyWith<InsuranceProductLimit> get copyWith =>
      _$InsuranceProductLimitCopyWithImpl<InsuranceProductLimit>(
        this,
        (value) => value,
      );
}

abstract class $InsuranceProductRelatedCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? product,
    CodeableConcept? relationship,
    Period? period,
    bool? disallowExtensions,
  });
}

class _$InsuranceProductRelatedCopyWithImpl<T>
    implements $InsuranceProductRelatedCopyWith<T> {
  final InsuranceProductRelated _value;
  final T Function(InsuranceProductRelated) _then;

  _$InsuranceProductRelatedCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? product = fhirSentinel,
    Object? relationship = fhirSentinel,
    Object? period = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      InsuranceProductRelated(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        product: identical(product, fhirSentinel)
            ? _value.product
            : product as Reference?,
        relationship: identical(relationship, fhirSentinel)
            ? _value.relationship
            : relationship as CodeableConcept?,
        period:
            identical(period, fhirSentinel) ? _value.period : period as Period?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension InsuranceProductRelatedCopyWithExtension on InsuranceProductRelated {
  $InsuranceProductRelatedCopyWith<InsuranceProductRelated> get copyWith =>
      _$InsuranceProductRelatedCopyWithImpl<InsuranceProductRelated>(
        this,
        (value) => value,
      );
}
