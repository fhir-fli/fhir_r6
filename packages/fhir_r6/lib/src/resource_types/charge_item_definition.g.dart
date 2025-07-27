// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'charge_item_definition.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $ChargeItemDefinitionCopyWith<T>
    extends $MetadataResourceCopyWith<T> {
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
    FhirUri? url,
    List<Identifier>? identifier,
    FhirString? version,
    FhirString? versionAlgorithmX,
    FhirString? name,
    FhirString? title,
    List<FhirUri>? derivedFromUri,
    List<FhirCanonical>? partOf,
    List<FhirCanonical>? replaces,
    PublicationStatus? status,
    FhirBoolean? experimental,
    FhirDateTime? date,
    FhirString? publisher,
    List<ContactDetail>? contact,
    FhirMarkdown? description,
    List<UsageContext>? useContext,
    List<CodeableConcept>? jurisdiction,
    FhirMarkdown? purpose,
    FhirMarkdown? copyright,
    FhirString? copyrightLabel,
    FhirDate? approvalDate,
    FhirDate? lastReviewDate,
    CodeableConcept? code,
    List<Reference>? instance,
    List<ChargeItemDefinitionApplicability>? applicability,
    List<ChargeItemDefinitionPropertyGroup>? propertyGroup,
    bool? disallowExtensions,
  });
}

class _$ChargeItemDefinitionCopyWithImpl<T>
    implements $ChargeItemDefinitionCopyWith<T> {
  final ChargeItemDefinition _value;
  final T Function(ChargeItemDefinition) _then;

  _$ChargeItemDefinitionCopyWithImpl(this._value, this._then);

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
    Object? url = fhirSentinel,
    Object? identifier = fhirSentinel,
    Object? version = fhirSentinel,
    Object? versionAlgorithmX = fhirSentinel,
    Object? name = fhirSentinel,
    Object? title = fhirSentinel,
    Object? derivedFromUri = fhirSentinel,
    Object? partOf = fhirSentinel,
    Object? replaces = fhirSentinel,
    Object? status = fhirSentinel,
    Object? experimental = fhirSentinel,
    Object? date = fhirSentinel,
    Object? publisher = fhirSentinel,
    Object? contact = fhirSentinel,
    Object? description = fhirSentinel,
    Object? useContext = fhirSentinel,
    Object? jurisdiction = fhirSentinel,
    Object? purpose = fhirSentinel,
    Object? copyright = fhirSentinel,
    Object? copyrightLabel = fhirSentinel,
    Object? approvalDate = fhirSentinel,
    Object? lastReviewDate = fhirSentinel,
    Object? code = fhirSentinel,
    Object? instance = fhirSentinel,
    Object? applicability = fhirSentinel,
    Object? propertyGroup = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ChargeItemDefinition(
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
        url: identical(url, fhirSentinel) ? _value.url : url as FhirUri?,
        identifier: identical(identifier, fhirSentinel)
            ? _value.identifier
            : identifier as List<Identifier>?,
        version: identical(version, fhirSentinel)
            ? _value.version
            : version as FhirString?,
        versionAlgorithmX: identical(versionAlgorithmX, fhirSentinel)
            ? _value.versionAlgorithmX
            : versionAlgorithmX as FhirString?,
        name: identical(name, fhirSentinel) ? _value.name : name as FhirString?,
        title: identical(title, fhirSentinel)
            ? _value.title
            : title as FhirString?,
        derivedFromUri: identical(derivedFromUri, fhirSentinel)
            ? _value.derivedFromUri
            : derivedFromUri as List<FhirUri>?,
        partOf: identical(partOf, fhirSentinel)
            ? _value.partOf
            : partOf as List<FhirCanonical>?,
        replaces: identical(replaces, fhirSentinel)
            ? _value.replaces
            : replaces as List<FhirCanonical>?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as PublicationStatus?) ?? _value.status,
        experimental: identical(experimental, fhirSentinel)
            ? _value.experimental
            : experimental as FhirBoolean?,
        date:
            identical(date, fhirSentinel) ? _value.date : date as FhirDateTime?,
        publisher: identical(publisher, fhirSentinel)
            ? _value.publisher
            : publisher as FhirString?,
        contact: identical(contact, fhirSentinel)
            ? _value.contact
            : contact as List<ContactDetail>?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirMarkdown?,
        useContext: identical(useContext, fhirSentinel)
            ? _value.useContext
            : useContext as List<UsageContext>?,
        jurisdiction: identical(jurisdiction, fhirSentinel)
            ? _value.jurisdiction
            : jurisdiction as List<CodeableConcept>?,
        purpose: identical(purpose, fhirSentinel)
            ? _value.purpose
            : purpose as FhirMarkdown?,
        copyright: identical(copyright, fhirSentinel)
            ? _value.copyright
            : copyright as FhirMarkdown?,
        copyrightLabel: identical(copyrightLabel, fhirSentinel)
            ? _value.copyrightLabel
            : copyrightLabel as FhirString?,
        approvalDate: identical(approvalDate, fhirSentinel)
            ? _value.approvalDate
            : approvalDate as FhirDate?,
        lastReviewDate: identical(lastReviewDate, fhirSentinel)
            ? _value.lastReviewDate
            : lastReviewDate as FhirDate?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : code as CodeableConcept?,
        instance: identical(instance, fhirSentinel)
            ? _value.instance
            : instance as List<Reference>?,
        applicability: identical(applicability, fhirSentinel)
            ? _value.applicability
            : applicability as List<ChargeItemDefinitionApplicability>?,
        propertyGroup: identical(propertyGroup, fhirSentinel)
            ? _value.propertyGroup
            : propertyGroup as List<ChargeItemDefinitionPropertyGroup>?,
      ),
    );
  }
}

extension ChargeItemDefinitionCopyWithExtension on ChargeItemDefinition {
  $ChargeItemDefinitionCopyWith<ChargeItemDefinition> get copyWith =>
      _$ChargeItemDefinitionCopyWithImpl<ChargeItemDefinition>(
        this,
        (value) => value,
      );
}

abstract class $ChargeItemDefinitionApplicabilityCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirExpression? condition,
    Period? effectivePeriod,
    RelatedArtifact? relatedArtifact,
    bool? disallowExtensions,
  });
}

class _$ChargeItemDefinitionApplicabilityCopyWithImpl<T>
    implements $ChargeItemDefinitionApplicabilityCopyWith<T> {
  final ChargeItemDefinitionApplicability _value;
  final T Function(ChargeItemDefinitionApplicability) _then;

  _$ChargeItemDefinitionApplicabilityCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? condition = fhirSentinel,
    Object? effectivePeriod = fhirSentinel,
    Object? relatedArtifact = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ChargeItemDefinitionApplicability(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        condition: identical(condition, fhirSentinel)
            ? _value.condition
            : condition as FhirExpression?,
        effectivePeriod: identical(effectivePeriod, fhirSentinel)
            ? _value.effectivePeriod
            : effectivePeriod as Period?,
        relatedArtifact: identical(relatedArtifact, fhirSentinel)
            ? _value.relatedArtifact
            : relatedArtifact as RelatedArtifact?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ChargeItemDefinitionApplicabilityCopyWithExtension
    on ChargeItemDefinitionApplicability {
  $ChargeItemDefinitionApplicabilityCopyWith<ChargeItemDefinitionApplicability>
      get copyWith => _$ChargeItemDefinitionApplicabilityCopyWithImpl<
              ChargeItemDefinitionApplicability>(
            this,
            (value) => value,
          );
}

abstract class $ChargeItemDefinitionPropertyGroupCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<ChargeItemDefinitionApplicability>? applicability,
    List<MonetaryComponent>? priceComponent,
    bool? disallowExtensions,
  });
}

class _$ChargeItemDefinitionPropertyGroupCopyWithImpl<T>
    implements $ChargeItemDefinitionPropertyGroupCopyWith<T> {
  final ChargeItemDefinitionPropertyGroup _value;
  final T Function(ChargeItemDefinitionPropertyGroup) _then;

  _$ChargeItemDefinitionPropertyGroupCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? applicability = fhirSentinel,
    Object? priceComponent = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ChargeItemDefinitionPropertyGroup(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        applicability: identical(applicability, fhirSentinel)
            ? _value.applicability
            : applicability as List<ChargeItemDefinitionApplicability>?,
        priceComponent: identical(priceComponent, fhirSentinel)
            ? _value.priceComponent
            : priceComponent as List<MonetaryComponent>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ChargeItemDefinitionPropertyGroupCopyWithExtension
    on ChargeItemDefinitionPropertyGroup {
  $ChargeItemDefinitionPropertyGroupCopyWith<ChargeItemDefinitionPropertyGroup>
      get copyWith => _$ChargeItemDefinitionPropertyGroupCopyWithImpl<
              ChargeItemDefinitionPropertyGroup>(
            this,
            (value) => value,
          );
}
