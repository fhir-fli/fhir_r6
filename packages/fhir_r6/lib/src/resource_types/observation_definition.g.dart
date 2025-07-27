// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'observation_definition.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $ObservationDefinitionCopyWith<T>
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
    Identifier? identifier,
    FhirString? version,
    FhirString? versionAlgorithmX,
    FhirString? name,
    FhirString? title,
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
    Period? effectivePeriod,
    List<FhirCanonical>? derivedFromCanonical,
    List<FhirUri>? derivedFromUri,
    List<CodeableConcept>? subject,
    CodeableConcept? performerType,
    List<CodeableConcept>? category,
    CodeableConcept? code,
    List<ObservationDataType>? permittedDataType,
    FhirBoolean? multipleResultsAllowed,
    CodeableConcept? bodySite,
    CodeableConcept? method,
    List<Reference>? specimen,
    List<Reference>? device,
    FhirString? preferredReportName,
    List<Coding>? permittedUnit,
    List<ObservationDefinitionQualifiedValue>? qualifiedValue,
    List<Reference>? hasMember,
    List<ObservationDefinitionComponent>? component,
    bool? disallowExtensions,
  });
}

class _$ObservationDefinitionCopyWithImpl<T>
    implements $ObservationDefinitionCopyWith<T> {
  final ObservationDefinition _value;
  final T Function(ObservationDefinition) _then;

  _$ObservationDefinitionCopyWithImpl(this._value, this._then);

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
    Object? effectivePeriod = fhirSentinel,
    Object? derivedFromCanonical = fhirSentinel,
    Object? derivedFromUri = fhirSentinel,
    Object? subject = fhirSentinel,
    Object? performerType = fhirSentinel,
    Object? category = fhirSentinel,
    Object? code = fhirSentinel,
    Object? permittedDataType = fhirSentinel,
    Object? multipleResultsAllowed = fhirSentinel,
    Object? bodySite = fhirSentinel,
    Object? method = fhirSentinel,
    Object? specimen = fhirSentinel,
    Object? device = fhirSentinel,
    Object? preferredReportName = fhirSentinel,
    Object? permittedUnit = fhirSentinel,
    Object? qualifiedValue = fhirSentinel,
    Object? hasMember = fhirSentinel,
    Object? component = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ObservationDefinition(
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
            : identifier as Identifier?,
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
        effectivePeriod: identical(effectivePeriod, fhirSentinel)
            ? _value.effectivePeriod
            : effectivePeriod as Period?,
        derivedFromCanonical: identical(derivedFromCanonical, fhirSentinel)
            ? _value.derivedFromCanonical
            : derivedFromCanonical as List<FhirCanonical>?,
        derivedFromUri: identical(derivedFromUri, fhirSentinel)
            ? _value.derivedFromUri
            : derivedFromUri as List<FhirUri>?,
        subject: identical(subject, fhirSentinel)
            ? _value.subject
            : subject as List<CodeableConcept>?,
        performerType: identical(performerType, fhirSentinel)
            ? _value.performerType
            : performerType as CodeableConcept?,
        category: identical(category, fhirSentinel)
            ? _value.category
            : category as List<CodeableConcept>?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : (code as CodeableConcept?) ?? _value.code,
        permittedDataType: identical(permittedDataType, fhirSentinel)
            ? _value.permittedDataType
            : permittedDataType as List<ObservationDataType>?,
        multipleResultsAllowed: identical(multipleResultsAllowed, fhirSentinel)
            ? _value.multipleResultsAllowed
            : multipleResultsAllowed as FhirBoolean?,
        bodySite: identical(bodySite, fhirSentinel)
            ? _value.bodySite
            : bodySite as CodeableConcept?,
        method: identical(method, fhirSentinel)
            ? _value.method
            : method as CodeableConcept?,
        specimen: identical(specimen, fhirSentinel)
            ? _value.specimen
            : specimen as List<Reference>?,
        device: identical(device, fhirSentinel)
            ? _value.device
            : device as List<Reference>?,
        preferredReportName: identical(preferredReportName, fhirSentinel)
            ? _value.preferredReportName
            : preferredReportName as FhirString?,
        permittedUnit: identical(permittedUnit, fhirSentinel)
            ? _value.permittedUnit
            : permittedUnit as List<Coding>?,
        qualifiedValue: identical(qualifiedValue, fhirSentinel)
            ? _value.qualifiedValue
            : qualifiedValue as List<ObservationDefinitionQualifiedValue>?,
        hasMember: identical(hasMember, fhirSentinel)
            ? _value.hasMember
            : hasMember as List<Reference>?,
        component: identical(component, fhirSentinel)
            ? _value.component
            : component as List<ObservationDefinitionComponent>?,
      ),
    );
  }
}

extension ObservationDefinitionCopyWithExtension on ObservationDefinition {
  $ObservationDefinitionCopyWith<ObservationDefinition> get copyWith =>
      _$ObservationDefinitionCopyWithImpl<ObservationDefinition>(
        this,
        (value) => value,
      );
}

abstract class $ObservationDefinitionQualifiedValueCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? context,
    List<CodeableConcept>? appliesTo,
    AdministrativeGender? gender,
    Range? age,
    Range? gestationalAge,
    FhirString? condition,
    ObservationRangeCategory? rangeCategory,
    Range? range,
    FhirCanonical? validCodedValueSet,
    FhirCanonical? normalCodedValueSet,
    FhirCanonical? abnormalCodedValueSet,
    FhirCanonical? criticalCodedValueSet,
    bool? disallowExtensions,
  });
}

class _$ObservationDefinitionQualifiedValueCopyWithImpl<T>
    implements $ObservationDefinitionQualifiedValueCopyWith<T> {
  final ObservationDefinitionQualifiedValue _value;
  final T Function(ObservationDefinitionQualifiedValue) _then;

  _$ObservationDefinitionQualifiedValueCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? context = fhirSentinel,
    Object? appliesTo = fhirSentinel,
    Object? gender = fhirSentinel,
    Object? age = fhirSentinel,
    Object? gestationalAge = fhirSentinel,
    Object? condition = fhirSentinel,
    Object? rangeCategory = fhirSentinel,
    Object? range = fhirSentinel,
    Object? validCodedValueSet = fhirSentinel,
    Object? normalCodedValueSet = fhirSentinel,
    Object? abnormalCodedValueSet = fhirSentinel,
    Object? criticalCodedValueSet = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ObservationDefinitionQualifiedValue(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        context: identical(context, fhirSentinel)
            ? _value.context
            : context as CodeableConcept?,
        appliesTo: identical(appliesTo, fhirSentinel)
            ? _value.appliesTo
            : appliesTo as List<CodeableConcept>?,
        gender: identical(gender, fhirSentinel)
            ? _value.gender
            : gender as AdministrativeGender?,
        age: identical(age, fhirSentinel) ? _value.age : age as Range?,
        gestationalAge: identical(gestationalAge, fhirSentinel)
            ? _value.gestationalAge
            : gestationalAge as Range?,
        condition: identical(condition, fhirSentinel)
            ? _value.condition
            : condition as FhirString?,
        rangeCategory: identical(rangeCategory, fhirSentinel)
            ? _value.rangeCategory
            : rangeCategory as ObservationRangeCategory?,
        range: identical(range, fhirSentinel) ? _value.range : range as Range?,
        validCodedValueSet: identical(validCodedValueSet, fhirSentinel)
            ? _value.validCodedValueSet
            : validCodedValueSet as FhirCanonical?,
        normalCodedValueSet: identical(normalCodedValueSet, fhirSentinel)
            ? _value.normalCodedValueSet
            : normalCodedValueSet as FhirCanonical?,
        abnormalCodedValueSet: identical(abnormalCodedValueSet, fhirSentinel)
            ? _value.abnormalCodedValueSet
            : abnormalCodedValueSet as FhirCanonical?,
        criticalCodedValueSet: identical(criticalCodedValueSet, fhirSentinel)
            ? _value.criticalCodedValueSet
            : criticalCodedValueSet as FhirCanonical?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ObservationDefinitionQualifiedValueCopyWithExtension
    on ObservationDefinitionQualifiedValue {
  $ObservationDefinitionQualifiedValueCopyWith<
          ObservationDefinitionQualifiedValue>
      get copyWith => _$ObservationDefinitionQualifiedValueCopyWithImpl<
              ObservationDefinitionQualifiedValue>(
            this,
            (value) => value,
          );
}

abstract class $ObservationDefinitionComponentCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    List<ObservationDataType>? permittedDataType,
    List<Coding>? permittedUnit,
    List<ObservationDefinitionQualifiedValue>? qualifiedValue,
    bool? disallowExtensions,
  });
}

class _$ObservationDefinitionComponentCopyWithImpl<T>
    implements $ObservationDefinitionComponentCopyWith<T> {
  final ObservationDefinitionComponent _value;
  final T Function(ObservationDefinitionComponent) _then;

  _$ObservationDefinitionComponentCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? permittedDataType = fhirSentinel,
    Object? permittedUnit = fhirSentinel,
    Object? qualifiedValue = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ObservationDefinitionComponent(
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
        permittedDataType: identical(permittedDataType, fhirSentinel)
            ? _value.permittedDataType
            : permittedDataType as List<ObservationDataType>?,
        permittedUnit: identical(permittedUnit, fhirSentinel)
            ? _value.permittedUnit
            : permittedUnit as List<Coding>?,
        qualifiedValue: identical(qualifiedValue, fhirSentinel)
            ? _value.qualifiedValue
            : qualifiedValue as List<ObservationDefinitionQualifiedValue>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ObservationDefinitionComponentCopyWithExtension
    on ObservationDefinitionComponent {
  $ObservationDefinitionComponentCopyWith<ObservationDefinitionComponent>
      get copyWith => _$ObservationDefinitionComponentCopyWithImpl<
              ObservationDefinitionComponent>(
            this,
            (value) => value,
          );
}
