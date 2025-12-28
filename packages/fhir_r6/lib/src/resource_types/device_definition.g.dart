// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'device_definition.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $DeviceDefinitionCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    VersionAlgorithmXDeviceDefinition? versionAlgorithmX,
    FhirString? name,
    FhirString? title,
    PublicationStatus? status,
    FhirBoolean? experimental,
    FhirString? partNumber,
    Reference? manufacturer,
    FhirString? modelNumber,
    FhirDateTime? date,
    List<ContactDetail>? contact,
    FhirString? publisher,
    List<UsageContext>? useContext,
    List<CodeableConcept>? jurisdiction,
    FhirMarkdown? purpose,
    FhirMarkdown? copyright,
    FhirString? copyrightLabel,
    List<DeviceDefinitionUdiDeviceIdentifier>? udiDeviceIdentifier,
    List<DeviceDefinitionRegulatoryIdentifier>? regulatoryIdentifier,
    List<DeviceDefinitionDeviceName>? deviceName,
    List<DeviceDefinitionClassification>? classification,
    List<DeviceDefinitionConformsTo>? conformsTo,
    List<DeviceDefinitionHasPart>? hasPart,
    List<DeviceDefinitionPackaging>? packaging,
    List<DeviceDefinitionDeviceVersion>? deviceVersion,
    List<CodeableConcept>? safety,
    List<ProductShelfLife>? shelfLifeStorage,
    List<AllLanguages>? outputLanguage,
    List<DeviceDefinitionProperty>? property,
    List<DeviceDefinitionLink>? link,
    List<Annotation>? note,
    List<DeviceDefinitionMaterial>? material,
    List<CodeableConcept>? productionIdentifierInUDI,
    DeviceDefinitionGuideline? guideline,
    DeviceDefinitionCorrectiveAction? correctiveAction,
    List<DeviceDefinitionChargeItem>? chargeItem,
    bool? disallowExtensions,
  });
}

class _$DeviceDefinitionCopyWithImpl<T>
    implements $DeviceDefinitionCopyWith<T> {
  final DeviceDefinition _value;
  final T Function(DeviceDefinition) _then;

  _$DeviceDefinitionCopyWithImpl(this._value, this._then);

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
    Object? status = fhirSentinel,
    Object? experimental = fhirSentinel,
    Object? partNumber = fhirSentinel,
    Object? manufacturer = fhirSentinel,
    Object? modelNumber = fhirSentinel,
    Object? date = fhirSentinel,
    Object? contact = fhirSentinel,
    Object? publisher = fhirSentinel,
    Object? useContext = fhirSentinel,
    Object? jurisdiction = fhirSentinel,
    Object? purpose = fhirSentinel,
    Object? copyright = fhirSentinel,
    Object? copyrightLabel = fhirSentinel,
    Object? udiDeviceIdentifier = fhirSentinel,
    Object? regulatoryIdentifier = fhirSentinel,
    Object? deviceName = fhirSentinel,
    Object? classification = fhirSentinel,
    Object? conformsTo = fhirSentinel,
    Object? hasPart = fhirSentinel,
    Object? packaging = fhirSentinel,
    Object? deviceVersion = fhirSentinel,
    Object? safety = fhirSentinel,
    Object? shelfLifeStorage = fhirSentinel,
    Object? outputLanguage = fhirSentinel,
    Object? property = fhirSentinel,
    Object? link = fhirSentinel,
    Object? note = fhirSentinel,
    Object? material = fhirSentinel,
    Object? productionIdentifierInUDI = fhirSentinel,
    Object? guideline = fhirSentinel,
    Object? correctiveAction = fhirSentinel,
    Object? chargeItem = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DeviceDefinition(
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
            : versionAlgorithmX as VersionAlgorithmXDeviceDefinition?,
        name: identical(name, fhirSentinel) ? _value.name : name as FhirString?,
        title: identical(title, fhirSentinel)
            ? _value.title
            : title as FhirString?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as PublicationStatus?) ?? _value.status,
        experimental: identical(experimental, fhirSentinel)
            ? _value.experimental
            : experimental as FhirBoolean?,
        partNumber: identical(partNumber, fhirSentinel)
            ? _value.partNumber
            : partNumber as FhirString?,
        manufacturer: identical(manufacturer, fhirSentinel)
            ? _value.manufacturer
            : manufacturer as Reference?,
        modelNumber: identical(modelNumber, fhirSentinel)
            ? _value.modelNumber
            : modelNumber as FhirString?,
        date:
            identical(date, fhirSentinel) ? _value.date : date as FhirDateTime?,
        contact: identical(contact, fhirSentinel)
            ? _value.contact
            : contact as List<ContactDetail>?,
        publisher: identical(publisher, fhirSentinel)
            ? _value.publisher
            : publisher as FhirString?,
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
        udiDeviceIdentifier: identical(udiDeviceIdentifier, fhirSentinel)
            ? _value.udiDeviceIdentifier
            : udiDeviceIdentifier as List<DeviceDefinitionUdiDeviceIdentifier>?,
        regulatoryIdentifier: identical(regulatoryIdentifier, fhirSentinel)
            ? _value.regulatoryIdentifier
            : regulatoryIdentifier
                as List<DeviceDefinitionRegulatoryIdentifier>?,
        deviceName: identical(deviceName, fhirSentinel)
            ? _value.deviceName
            : deviceName as List<DeviceDefinitionDeviceName>?,
        classification: identical(classification, fhirSentinel)
            ? _value.classification
            : classification as List<DeviceDefinitionClassification>?,
        conformsTo: identical(conformsTo, fhirSentinel)
            ? _value.conformsTo
            : conformsTo as List<DeviceDefinitionConformsTo>?,
        hasPart: identical(hasPart, fhirSentinel)
            ? _value.hasPart
            : hasPart as List<DeviceDefinitionHasPart>?,
        packaging: identical(packaging, fhirSentinel)
            ? _value.packaging
            : packaging as List<DeviceDefinitionPackaging>?,
        deviceVersion: identical(deviceVersion, fhirSentinel)
            ? _value.deviceVersion
            : deviceVersion as List<DeviceDefinitionDeviceVersion>?,
        safety: identical(safety, fhirSentinel)
            ? _value.safety
            : safety as List<CodeableConcept>?,
        shelfLifeStorage: identical(shelfLifeStorage, fhirSentinel)
            ? _value.shelfLifeStorage
            : shelfLifeStorage as List<ProductShelfLife>?,
        outputLanguage: identical(outputLanguage, fhirSentinel)
            ? _value.outputLanguage
            : outputLanguage as List<AllLanguages>?,
        property: identical(property, fhirSentinel)
            ? _value.property
            : property as List<DeviceDefinitionProperty>?,
        link: identical(link, fhirSentinel)
            ? _value.link
            : link as List<DeviceDefinitionLink>?,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
        material: identical(material, fhirSentinel)
            ? _value.material
            : material as List<DeviceDefinitionMaterial>?,
        productionIdentifierInUDI:
            identical(productionIdentifierInUDI, fhirSentinel)
                ? _value.productionIdentifierInUDI
                : productionIdentifierInUDI as List<CodeableConcept>?,
        guideline: identical(guideline, fhirSentinel)
            ? _value.guideline
            : guideline as DeviceDefinitionGuideline?,
        correctiveAction: identical(correctiveAction, fhirSentinel)
            ? _value.correctiveAction
            : correctiveAction as DeviceDefinitionCorrectiveAction?,
        chargeItem: identical(chargeItem, fhirSentinel)
            ? _value.chargeItem
            : chargeItem as List<DeviceDefinitionChargeItem>?,
      ),
    );
  }
}

extension DeviceDefinitionCopyWithExtension on DeviceDefinition {
  $DeviceDefinitionCopyWith<DeviceDefinition> get copyWith =>
      _$DeviceDefinitionCopyWithImpl<DeviceDefinition>(
        this,
        (value) => value,
      );
}

abstract class $DeviceDefinitionUdiDeviceIdentifierCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? deviceIdentifier,
    FhirUri? issuer,
    FhirUri? jurisdiction,
    List<DeviceDefinitionMarketDistribution>? marketDistribution,
    bool? disallowExtensions,
  });
}

class _$DeviceDefinitionUdiDeviceIdentifierCopyWithImpl<T>
    implements $DeviceDefinitionUdiDeviceIdentifierCopyWith<T> {
  final DeviceDefinitionUdiDeviceIdentifier _value;
  final T Function(DeviceDefinitionUdiDeviceIdentifier) _then;

  _$DeviceDefinitionUdiDeviceIdentifierCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? deviceIdentifier = fhirSentinel,
    Object? issuer = fhirSentinel,
    Object? jurisdiction = fhirSentinel,
    Object? marketDistribution = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DeviceDefinitionUdiDeviceIdentifier(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        deviceIdentifier: identical(deviceIdentifier, fhirSentinel)
            ? _value.deviceIdentifier
            : (deviceIdentifier as FhirString?) ?? _value.deviceIdentifier,
        issuer: identical(issuer, fhirSentinel)
            ? _value.issuer
            : (issuer as FhirUri?) ?? _value.issuer,
        jurisdiction: identical(jurisdiction, fhirSentinel)
            ? _value.jurisdiction
            : (jurisdiction as FhirUri?) ?? _value.jurisdiction,
        marketDistribution: identical(marketDistribution, fhirSentinel)
            ? _value.marketDistribution
            : marketDistribution as List<DeviceDefinitionMarketDistribution>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension DeviceDefinitionUdiDeviceIdentifierCopyWithExtension
    on DeviceDefinitionUdiDeviceIdentifier {
  $DeviceDefinitionUdiDeviceIdentifierCopyWith<
          DeviceDefinitionUdiDeviceIdentifier>
      get copyWith => _$DeviceDefinitionUdiDeviceIdentifierCopyWithImpl<
              DeviceDefinitionUdiDeviceIdentifier>(
            this,
            (value) => value,
          );
}

abstract class $DeviceDefinitionMarketDistributionCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Period? marketPeriod,
    FhirUri? subJurisdiction,
    bool? disallowExtensions,
  });
}

class _$DeviceDefinitionMarketDistributionCopyWithImpl<T>
    implements $DeviceDefinitionMarketDistributionCopyWith<T> {
  final DeviceDefinitionMarketDistribution _value;
  final T Function(DeviceDefinitionMarketDistribution) _then;

  _$DeviceDefinitionMarketDistributionCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? marketPeriod = fhirSentinel,
    Object? subJurisdiction = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DeviceDefinitionMarketDistribution(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        marketPeriod: identical(marketPeriod, fhirSentinel)
            ? _value.marketPeriod
            : (marketPeriod as Period?) ?? _value.marketPeriod,
        subJurisdiction: identical(subJurisdiction, fhirSentinel)
            ? _value.subJurisdiction
            : (subJurisdiction as FhirUri?) ?? _value.subJurisdiction,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension DeviceDefinitionMarketDistributionCopyWithExtension
    on DeviceDefinitionMarketDistribution {
  $DeviceDefinitionMarketDistributionCopyWith<
          DeviceDefinitionMarketDistribution>
      get copyWith => _$DeviceDefinitionMarketDistributionCopyWithImpl<
              DeviceDefinitionMarketDistribution>(
            this,
            (value) => value,
          );
}

abstract class $DeviceDefinitionRegulatoryIdentifierCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    DeviceDefinitionRegulatoryIdentifierType? type,
    FhirString? deviceIdentifier,
    FhirUri? issuer,
    FhirUri? jurisdiction,
    bool? disallowExtensions,
  });
}

class _$DeviceDefinitionRegulatoryIdentifierCopyWithImpl<T>
    implements $DeviceDefinitionRegulatoryIdentifierCopyWith<T> {
  final DeviceDefinitionRegulatoryIdentifier _value;
  final T Function(DeviceDefinitionRegulatoryIdentifier) _then;

  _$DeviceDefinitionRegulatoryIdentifierCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? deviceIdentifier = fhirSentinel,
    Object? issuer = fhirSentinel,
    Object? jurisdiction = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DeviceDefinitionRegulatoryIdentifier(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : (type as DeviceDefinitionRegulatoryIdentifierType?) ??
                _value.type,
        deviceIdentifier: identical(deviceIdentifier, fhirSentinel)
            ? _value.deviceIdentifier
            : (deviceIdentifier as FhirString?) ?? _value.deviceIdentifier,
        issuer: identical(issuer, fhirSentinel)
            ? _value.issuer
            : (issuer as FhirUri?) ?? _value.issuer,
        jurisdiction: identical(jurisdiction, fhirSentinel)
            ? _value.jurisdiction
            : (jurisdiction as FhirUri?) ?? _value.jurisdiction,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension DeviceDefinitionRegulatoryIdentifierCopyWithExtension
    on DeviceDefinitionRegulatoryIdentifier {
  $DeviceDefinitionRegulatoryIdentifierCopyWith<
          DeviceDefinitionRegulatoryIdentifier>
      get copyWith => _$DeviceDefinitionRegulatoryIdentifierCopyWithImpl<
              DeviceDefinitionRegulatoryIdentifier>(
            this,
            (value) => value,
          );
}

abstract class $DeviceDefinitionDeviceNameCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    CodeableConcept? type,
    bool? disallowExtensions,
  });
}

class _$DeviceDefinitionDeviceNameCopyWithImpl<T>
    implements $DeviceDefinitionDeviceNameCopyWith<T> {
  final DeviceDefinitionDeviceName _value;
  final T Function(DeviceDefinitionDeviceName) _then;

  _$DeviceDefinitionDeviceNameCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? name = fhirSentinel,
    Object? type = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DeviceDefinitionDeviceName(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        name: identical(name, fhirSentinel)
            ? _value.name
            : (name as FhirString?) ?? _value.name,
        type: identical(type, fhirSentinel)
            ? _value.type
            : (type as CodeableConcept?) ?? _value.type,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension DeviceDefinitionDeviceNameCopyWithExtension
    on DeviceDefinitionDeviceName {
  $DeviceDefinitionDeviceNameCopyWith<DeviceDefinitionDeviceName>
      get copyWith =>
          _$DeviceDefinitionDeviceNameCopyWithImpl<DeviceDefinitionDeviceName>(
            this,
            (value) => value,
          );
}

abstract class $DeviceDefinitionClassificationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    List<RelatedArtifact>? justification,
    bool? disallowExtensions,
  });
}

class _$DeviceDefinitionClassificationCopyWithImpl<T>
    implements $DeviceDefinitionClassificationCopyWith<T> {
  final DeviceDefinitionClassification _value;
  final T Function(DeviceDefinitionClassification) _then;

  _$DeviceDefinitionClassificationCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? justification = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DeviceDefinitionClassification(
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
        justification: identical(justification, fhirSentinel)
            ? _value.justification
            : justification as List<RelatedArtifact>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension DeviceDefinitionClassificationCopyWithExtension
    on DeviceDefinitionClassification {
  $DeviceDefinitionClassificationCopyWith<DeviceDefinitionClassification>
      get copyWith => _$DeviceDefinitionClassificationCopyWithImpl<
              DeviceDefinitionClassification>(
            this,
            (value) => value,
          );
}

abstract class $DeviceDefinitionConformsToCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? category,
    CodeableConcept? specification,
    List<FhirString>? version,
    List<RelatedArtifact>? source,
    bool? disallowExtensions,
  });
}

class _$DeviceDefinitionConformsToCopyWithImpl<T>
    implements $DeviceDefinitionConformsToCopyWith<T> {
  final DeviceDefinitionConformsTo _value;
  final T Function(DeviceDefinitionConformsTo) _then;

  _$DeviceDefinitionConformsToCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? category = fhirSentinel,
    Object? specification = fhirSentinel,
    Object? version = fhirSentinel,
    Object? source = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DeviceDefinitionConformsTo(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        category: identical(category, fhirSentinel)
            ? _value.category
            : category as CodeableConcept?,
        specification: identical(specification, fhirSentinel)
            ? _value.specification
            : (specification as CodeableConcept?) ?? _value.specification,
        version: identical(version, fhirSentinel)
            ? _value.version
            : version as List<FhirString>?,
        source: identical(source, fhirSentinel)
            ? _value.source
            : source as List<RelatedArtifact>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension DeviceDefinitionConformsToCopyWithExtension
    on DeviceDefinitionConformsTo {
  $DeviceDefinitionConformsToCopyWith<DeviceDefinitionConformsTo>
      get copyWith =>
          _$DeviceDefinitionConformsToCopyWithImpl<DeviceDefinitionConformsTo>(
            this,
            (value) => value,
          );
}

abstract class $DeviceDefinitionHasPartCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? reference,
    FhirInteger? count,
    bool? disallowExtensions,
  });
}

class _$DeviceDefinitionHasPartCopyWithImpl<T>
    implements $DeviceDefinitionHasPartCopyWith<T> {
  final DeviceDefinitionHasPart _value;
  final T Function(DeviceDefinitionHasPart) _then;

  _$DeviceDefinitionHasPartCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? reference = fhirSentinel,
    Object? count = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DeviceDefinitionHasPart(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        reference: identical(reference, fhirSentinel)
            ? _value.reference
            : (reference as Reference?) ?? _value.reference,
        count: identical(count, fhirSentinel)
            ? _value.count
            : count as FhirInteger?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension DeviceDefinitionHasPartCopyWithExtension on DeviceDefinitionHasPart {
  $DeviceDefinitionHasPartCopyWith<DeviceDefinitionHasPart> get copyWith =>
      _$DeviceDefinitionHasPartCopyWithImpl<DeviceDefinitionHasPart>(
        this,
        (value) => value,
      );
}

abstract class $DeviceDefinitionPackagingCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Identifier? identifier,
    CodeableConcept? type,
    FhirInteger? count,
    List<DeviceDefinitionDistributor>? distributor,
    List<DeviceDefinitionUdiDeviceIdentifier>? udiDeviceIdentifier,
    List<DeviceDefinitionPackaging>? packaging,
    bool? disallowExtensions,
  });
}

class _$DeviceDefinitionPackagingCopyWithImpl<T>
    implements $DeviceDefinitionPackagingCopyWith<T> {
  final DeviceDefinitionPackaging _value;
  final T Function(DeviceDefinitionPackaging) _then;

  _$DeviceDefinitionPackagingCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? identifier = fhirSentinel,
    Object? type = fhirSentinel,
    Object? count = fhirSentinel,
    Object? distributor = fhirSentinel,
    Object? udiDeviceIdentifier = fhirSentinel,
    Object? packaging = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DeviceDefinitionPackaging(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        identifier: identical(identifier, fhirSentinel)
            ? _value.identifier
            : identifier as Identifier?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        count: identical(count, fhirSentinel)
            ? _value.count
            : count as FhirInteger?,
        distributor: identical(distributor, fhirSentinel)
            ? _value.distributor
            : distributor as List<DeviceDefinitionDistributor>?,
        udiDeviceIdentifier: identical(udiDeviceIdentifier, fhirSentinel)
            ? _value.udiDeviceIdentifier
            : udiDeviceIdentifier as List<DeviceDefinitionUdiDeviceIdentifier>?,
        packaging: identical(packaging, fhirSentinel)
            ? _value.packaging
            : packaging as List<DeviceDefinitionPackaging>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension DeviceDefinitionPackagingCopyWithExtension
    on DeviceDefinitionPackaging {
  $DeviceDefinitionPackagingCopyWith<DeviceDefinitionPackaging> get copyWith =>
      _$DeviceDefinitionPackagingCopyWithImpl<DeviceDefinitionPackaging>(
        this,
        (value) => value,
      );
}

abstract class $DeviceDefinitionDistributorCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    List<Reference>? organizationReference,
    bool? disallowExtensions,
  });
}

class _$DeviceDefinitionDistributorCopyWithImpl<T>
    implements $DeviceDefinitionDistributorCopyWith<T> {
  final DeviceDefinitionDistributor _value;
  final T Function(DeviceDefinitionDistributor) _then;

  _$DeviceDefinitionDistributorCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? name = fhirSentinel,
    Object? organizationReference = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DeviceDefinitionDistributor(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        name: identical(name, fhirSentinel) ? _value.name : name as FhirString?,
        organizationReference: identical(organizationReference, fhirSentinel)
            ? _value.organizationReference
            : organizationReference as List<Reference>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension DeviceDefinitionDistributorCopyWithExtension
    on DeviceDefinitionDistributor {
  $DeviceDefinitionDistributorCopyWith<DeviceDefinitionDistributor>
      get copyWith => _$DeviceDefinitionDistributorCopyWithImpl<
              DeviceDefinitionDistributor>(
            this,
            (value) => value,
          );
}

abstract class $DeviceDefinitionDeviceVersionCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    Identifier? component,
    FhirString? value,
    bool? disallowExtensions,
  });
}

class _$DeviceDefinitionDeviceVersionCopyWithImpl<T>
    implements $DeviceDefinitionDeviceVersionCopyWith<T> {
  final DeviceDefinitionDeviceVersion _value;
  final T Function(DeviceDefinitionDeviceVersion) _then;

  _$DeviceDefinitionDeviceVersionCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? component = fhirSentinel,
    Object? value = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DeviceDefinitionDeviceVersion(
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
        component: identical(component, fhirSentinel)
            ? _value.component
            : component as Identifier?,
        value: identical(value, fhirSentinel)
            ? _value.value
            : (value as FhirString?) ?? _value.value,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension DeviceDefinitionDeviceVersionCopyWithExtension
    on DeviceDefinitionDeviceVersion {
  $DeviceDefinitionDeviceVersionCopyWith<DeviceDefinitionDeviceVersion>
      get copyWith => _$DeviceDefinitionDeviceVersionCopyWithImpl<
              DeviceDefinitionDeviceVersion>(
            this,
            (value) => value,
          );
}

abstract class $DeviceDefinitionPropertyCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    ValueXDeviceDefinitionProperty? valueX,
    bool? disallowExtensions,
  });
}

class _$DeviceDefinitionPropertyCopyWithImpl<T>
    implements $DeviceDefinitionPropertyCopyWith<T> {
  final DeviceDefinitionProperty _value;
  final T Function(DeviceDefinitionProperty) _then;

  _$DeviceDefinitionPropertyCopyWithImpl(this._value, this._then);

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
      DeviceDefinitionProperty(
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
            : (valueX as ValueXDeviceDefinitionProperty?) ?? _value.valueX,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension DeviceDefinitionPropertyCopyWithExtension
    on DeviceDefinitionProperty {
  $DeviceDefinitionPropertyCopyWith<DeviceDefinitionProperty> get copyWith =>
      _$DeviceDefinitionPropertyCopyWithImpl<DeviceDefinitionProperty>(
        this,
        (value) => value,
      );
}

abstract class $DeviceDefinitionLinkCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Coding? relation,
    CodeableReference? relatedDevice,
    bool? disallowExtensions,
  });
}

class _$DeviceDefinitionLinkCopyWithImpl<T>
    implements $DeviceDefinitionLinkCopyWith<T> {
  final DeviceDefinitionLink _value;
  final T Function(DeviceDefinitionLink) _then;

  _$DeviceDefinitionLinkCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? relation = fhirSentinel,
    Object? relatedDevice = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DeviceDefinitionLink(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        relation: identical(relation, fhirSentinel)
            ? _value.relation
            : (relation as Coding?) ?? _value.relation,
        relatedDevice: identical(relatedDevice, fhirSentinel)
            ? _value.relatedDevice
            : (relatedDevice as CodeableReference?) ?? _value.relatedDevice,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension DeviceDefinitionLinkCopyWithExtension on DeviceDefinitionLink {
  $DeviceDefinitionLinkCopyWith<DeviceDefinitionLink> get copyWith =>
      _$DeviceDefinitionLinkCopyWithImpl<DeviceDefinitionLink>(
        this,
        (value) => value,
      );
}

abstract class $DeviceDefinitionMaterialCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? substance,
    FhirBoolean? alternate,
    FhirBoolean? allergenicIndicator,
    bool? disallowExtensions,
  });
}

class _$DeviceDefinitionMaterialCopyWithImpl<T>
    implements $DeviceDefinitionMaterialCopyWith<T> {
  final DeviceDefinitionMaterial _value;
  final T Function(DeviceDefinitionMaterial) _then;

  _$DeviceDefinitionMaterialCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? substance = fhirSentinel,
    Object? alternate = fhirSentinel,
    Object? allergenicIndicator = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DeviceDefinitionMaterial(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        substance: identical(substance, fhirSentinel)
            ? _value.substance
            : (substance as CodeableConcept?) ?? _value.substance,
        alternate: identical(alternate, fhirSentinel)
            ? _value.alternate
            : alternate as FhirBoolean?,
        allergenicIndicator: identical(allergenicIndicator, fhirSentinel)
            ? _value.allergenicIndicator
            : allergenicIndicator as FhirBoolean?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension DeviceDefinitionMaterialCopyWithExtension
    on DeviceDefinitionMaterial {
  $DeviceDefinitionMaterialCopyWith<DeviceDefinitionMaterial> get copyWith =>
      _$DeviceDefinitionMaterialCopyWithImpl<DeviceDefinitionMaterial>(
        this,
        (value) => value,
      );
}

abstract class $DeviceDefinitionGuidelineCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<UsageContext>? useContext,
    FhirMarkdown? usageInstruction,
    List<RelatedArtifact>? relatedArtifact,
    List<CodeableConcept>? indication,
    List<CodeableConcept>? contraindication,
    List<CodeableConcept>? warning,
    FhirString? intendedUse,
    bool? disallowExtensions,
  });
}

class _$DeviceDefinitionGuidelineCopyWithImpl<T>
    implements $DeviceDefinitionGuidelineCopyWith<T> {
  final DeviceDefinitionGuideline _value;
  final T Function(DeviceDefinitionGuideline) _then;

  _$DeviceDefinitionGuidelineCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? useContext = fhirSentinel,
    Object? usageInstruction = fhirSentinel,
    Object? relatedArtifact = fhirSentinel,
    Object? indication = fhirSentinel,
    Object? contraindication = fhirSentinel,
    Object? warning = fhirSentinel,
    Object? intendedUse = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DeviceDefinitionGuideline(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        useContext: identical(useContext, fhirSentinel)
            ? _value.useContext
            : useContext as List<UsageContext>?,
        usageInstruction: identical(usageInstruction, fhirSentinel)
            ? _value.usageInstruction
            : usageInstruction as FhirMarkdown?,
        relatedArtifact: identical(relatedArtifact, fhirSentinel)
            ? _value.relatedArtifact
            : relatedArtifact as List<RelatedArtifact>?,
        indication: identical(indication, fhirSentinel)
            ? _value.indication
            : indication as List<CodeableConcept>?,
        contraindication: identical(contraindication, fhirSentinel)
            ? _value.contraindication
            : contraindication as List<CodeableConcept>?,
        warning: identical(warning, fhirSentinel)
            ? _value.warning
            : warning as List<CodeableConcept>?,
        intendedUse: identical(intendedUse, fhirSentinel)
            ? _value.intendedUse
            : intendedUse as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension DeviceDefinitionGuidelineCopyWithExtension
    on DeviceDefinitionGuideline {
  $DeviceDefinitionGuidelineCopyWith<DeviceDefinitionGuideline> get copyWith =>
      _$DeviceDefinitionGuidelineCopyWithImpl<DeviceDefinitionGuideline>(
        this,
        (value) => value,
      );
}

abstract class $DeviceDefinitionCorrectiveActionCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? recall,
    DeviceCorrectiveActionScope? scope,
    Period? period,
    bool? disallowExtensions,
  });
}

class _$DeviceDefinitionCorrectiveActionCopyWithImpl<T>
    implements $DeviceDefinitionCorrectiveActionCopyWith<T> {
  final DeviceDefinitionCorrectiveAction _value;
  final T Function(DeviceDefinitionCorrectiveAction) _then;

  _$DeviceDefinitionCorrectiveActionCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? recall = fhirSentinel,
    Object? scope = fhirSentinel,
    Object? period = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DeviceDefinitionCorrectiveAction(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        recall: identical(recall, fhirSentinel)
            ? _value.recall
            : (recall as FhirBoolean?) ?? _value.recall,
        scope: identical(scope, fhirSentinel)
            ? _value.scope
            : scope as DeviceCorrectiveActionScope?,
        period: identical(period, fhirSentinel)
            ? _value.period
            : (period as Period?) ?? _value.period,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension DeviceDefinitionCorrectiveActionCopyWithExtension
    on DeviceDefinitionCorrectiveAction {
  $DeviceDefinitionCorrectiveActionCopyWith<DeviceDefinitionCorrectiveAction>
      get copyWith => _$DeviceDefinitionCorrectiveActionCopyWithImpl<
              DeviceDefinitionCorrectiveAction>(
            this,
            (value) => value,
          );
}

abstract class $DeviceDefinitionChargeItemCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableReference? chargeItemCode,
    Quantity? count,
    Period? effectivePeriod,
    List<UsageContext>? useContext,
    bool? disallowExtensions,
  });
}

class _$DeviceDefinitionChargeItemCopyWithImpl<T>
    implements $DeviceDefinitionChargeItemCopyWith<T> {
  final DeviceDefinitionChargeItem _value;
  final T Function(DeviceDefinitionChargeItem) _then;

  _$DeviceDefinitionChargeItemCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? chargeItemCode = fhirSentinel,
    Object? count = fhirSentinel,
    Object? effectivePeriod = fhirSentinel,
    Object? useContext = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DeviceDefinitionChargeItem(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        chargeItemCode: identical(chargeItemCode, fhirSentinel)
            ? _value.chargeItemCode
            : (chargeItemCode as CodeableReference?) ?? _value.chargeItemCode,
        count: identical(count, fhirSentinel)
            ? _value.count
            : (count as Quantity?) ?? _value.count,
        effectivePeriod: identical(effectivePeriod, fhirSentinel)
            ? _value.effectivePeriod
            : effectivePeriod as Period?,
        useContext: identical(useContext, fhirSentinel)
            ? _value.useContext
            : useContext as List<UsageContext>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension DeviceDefinitionChargeItemCopyWithExtension
    on DeviceDefinitionChargeItem {
  $DeviceDefinitionChargeItemCopyWith<DeviceDefinitionChargeItem>
      get copyWith =>
          _$DeviceDefinitionChargeItemCopyWithImpl<DeviceDefinitionChargeItem>(
            this,
            (value) => value,
          );
}
