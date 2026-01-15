// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'measure.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $MeasureCopyWith<T> extends $MetadataResourceCopyWith<T> {
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
    VersionAlgorithmXMeasure? versionAlgorithmX,
    FhirString? name,
    FhirString? title,
    FhirString? subtitle,
    PublicationStatus? status,
    FhirBoolean? experimental,
    SubjectXMeasure? subjectX,
    FHIRTypes? basis,
    FhirDateTime? date,
    FhirString? publisher,
    List<ContactDetail>? contact,
    FhirMarkdown? description,
    List<UsageContext>? useContext,
    List<CodeableConcept>? jurisdiction,
    FhirMarkdown? purpose,
    FhirMarkdown? usage,
    FhirMarkdown? copyright,
    FhirString? copyrightLabel,
    FhirDate? approvalDate,
    FhirDate? lastReviewDate,
    Period? effectivePeriod,
    Quantity? reportingFrequency,
    List<CodeableConcept>? topic,
    List<ContactDetail>? author,
    List<ContactDetail>? editor,
    List<ContactDetail>? reviewer,
    List<ContactDetail>? endorser,
    List<RelatedArtifact>? relatedArtifact,
    List<FhirCanonical>? library_,
    FhirMarkdown? disclaimer,
    CodeableConcept? scoring,
    CodeableConcept? scoringUnit,
    FhirPositiveInt? scoringPrecision,
    CodeableConcept? compositeScoring,
    List<CodeableConcept>? type,
    FhirMarkdown? riskAdjustment,
    FhirMarkdown? rateAggregation,
    FhirMarkdown? rationale,
    FhirMarkdown? clinicalRecommendationStatement,
    CodeableConcept? improvementNotation,
    FhirMarkdown? improvementNotationGuidance,
    List<MeasureTerm>? term,
    FhirMarkdown? guidance,
    List<MeasureGroup>? group,
    List<MeasureSupplementalData>? supplementalData,
    bool? disallowExtensions,
  });
}

class _$MeasureCopyWithImpl<T> implements $MeasureCopyWith<T> {
  final Measure _value;
  final T Function(Measure) _then;

  _$MeasureCopyWithImpl(this._value, this._then);

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
    Object? subtitle = fhirSentinel,
    Object? status = fhirSentinel,
    Object? experimental = fhirSentinel,
    Object? subjectX = fhirSentinel,
    Object? basis = fhirSentinel,
    Object? date = fhirSentinel,
    Object? publisher = fhirSentinel,
    Object? contact = fhirSentinel,
    Object? description = fhirSentinel,
    Object? useContext = fhirSentinel,
    Object? jurisdiction = fhirSentinel,
    Object? purpose = fhirSentinel,
    Object? usage = fhirSentinel,
    Object? copyright = fhirSentinel,
    Object? copyrightLabel = fhirSentinel,
    Object? approvalDate = fhirSentinel,
    Object? lastReviewDate = fhirSentinel,
    Object? effectivePeriod = fhirSentinel,
    Object? reportingFrequency = fhirSentinel,
    Object? topic = fhirSentinel,
    Object? author = fhirSentinel,
    Object? editor = fhirSentinel,
    Object? reviewer = fhirSentinel,
    Object? endorser = fhirSentinel,
    Object? relatedArtifact = fhirSentinel,
    Object? library_ = fhirSentinel,
    Object? disclaimer = fhirSentinel,
    Object? scoring = fhirSentinel,
    Object? scoringUnit = fhirSentinel,
    Object? scoringPrecision = fhirSentinel,
    Object? compositeScoring = fhirSentinel,
    Object? type = fhirSentinel,
    Object? riskAdjustment = fhirSentinel,
    Object? rateAggregation = fhirSentinel,
    Object? rationale = fhirSentinel,
    Object? clinicalRecommendationStatement = fhirSentinel,
    Object? improvementNotation = fhirSentinel,
    Object? improvementNotationGuidance = fhirSentinel,
    Object? term = fhirSentinel,
    Object? guidance = fhirSentinel,
    Object? group = fhirSentinel,
    Object? supplementalData = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Measure(
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
            : versionAlgorithmX as VersionAlgorithmXMeasure?,
        name: identical(name, fhirSentinel) ? _value.name : name as FhirString?,
        title: identical(title, fhirSentinel)
            ? _value.title
            : title as FhirString?,
        subtitle: identical(subtitle, fhirSentinel)
            ? _value.subtitle
            : subtitle as FhirString?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as PublicationStatus?) ?? _value.status,
        experimental: identical(experimental, fhirSentinel)
            ? _value.experimental
            : experimental as FhirBoolean?,
        subjectX: identical(subjectX, fhirSentinel)
            ? _value.subjectX
            : subjectX as SubjectXMeasure?,
        basis:
            identical(basis, fhirSentinel) ? _value.basis : basis as FHIRTypes?,
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
        usage: identical(usage, fhirSentinel)
            ? _value.usage
            : usage as FhirMarkdown?,
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
        reportingFrequency: identical(reportingFrequency, fhirSentinel)
            ? _value.reportingFrequency
            : reportingFrequency as Quantity?,
        topic: identical(topic, fhirSentinel)
            ? _value.topic
            : topic as List<CodeableConcept>?,
        author: identical(author, fhirSentinel)
            ? _value.author
            : author as List<ContactDetail>?,
        editor: identical(editor, fhirSentinel)
            ? _value.editor
            : editor as List<ContactDetail>?,
        reviewer: identical(reviewer, fhirSentinel)
            ? _value.reviewer
            : reviewer as List<ContactDetail>?,
        endorser: identical(endorser, fhirSentinel)
            ? _value.endorser
            : endorser as List<ContactDetail>?,
        relatedArtifact: identical(relatedArtifact, fhirSentinel)
            ? _value.relatedArtifact
            : relatedArtifact as List<RelatedArtifact>?,
        library_: identical(library_, fhirSentinel)
            ? _value.library_
            : library_ as List<FhirCanonical>?,
        disclaimer: identical(disclaimer, fhirSentinel)
            ? _value.disclaimer
            : disclaimer as FhirMarkdown?,
        scoring: identical(scoring, fhirSentinel)
            ? _value.scoring
            : scoring as CodeableConcept?,
        scoringUnit: identical(scoringUnit, fhirSentinel)
            ? _value.scoringUnit
            : scoringUnit as CodeableConcept?,
        scoringPrecision: identical(scoringPrecision, fhirSentinel)
            ? _value.scoringPrecision
            : scoringPrecision as FhirPositiveInt?,
        compositeScoring: identical(compositeScoring, fhirSentinel)
            ? _value.compositeScoring
            : compositeScoring as CodeableConcept?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as List<CodeableConcept>?,
        riskAdjustment: identical(riskAdjustment, fhirSentinel)
            ? _value.riskAdjustment
            : riskAdjustment as FhirMarkdown?,
        rateAggregation: identical(rateAggregation, fhirSentinel)
            ? _value.rateAggregation
            : rateAggregation as FhirMarkdown?,
        rationale: identical(rationale, fhirSentinel)
            ? _value.rationale
            : rationale as FhirMarkdown?,
        clinicalRecommendationStatement:
            identical(clinicalRecommendationStatement, fhirSentinel)
                ? _value.clinicalRecommendationStatement
                : clinicalRecommendationStatement as FhirMarkdown?,
        improvementNotation: identical(improvementNotation, fhirSentinel)
            ? _value.improvementNotation
            : improvementNotation as CodeableConcept?,
        improvementNotationGuidance:
            identical(improvementNotationGuidance, fhirSentinel)
                ? _value.improvementNotationGuidance
                : improvementNotationGuidance as FhirMarkdown?,
        term: identical(term, fhirSentinel)
            ? _value.term
            : term as List<MeasureTerm>?,
        guidance: identical(guidance, fhirSentinel)
            ? _value.guidance
            : guidance as FhirMarkdown?,
        group: identical(group, fhirSentinel)
            ? _value.group
            : group as List<MeasureGroup>?,
        supplementalData: identical(supplementalData, fhirSentinel)
            ? _value.supplementalData
            : supplementalData as List<MeasureSupplementalData>?,
      ),
    );
  }
}

extension MeasureCopyWithExtension on Measure {
  $MeasureCopyWith<Measure> get copyWith => _$MeasureCopyWithImpl<Measure>(
        this,
        (value) => value,
      );
}

abstract class $MeasureTermCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    FhirMarkdown? definition,
    bool? disallowExtensions,
  });
}

class _$MeasureTermCopyWithImpl<T> implements $MeasureTermCopyWith<T> {
  final MeasureTerm _value;
  final T Function(MeasureTerm) _then;

  _$MeasureTermCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? definition = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MeasureTerm(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : code as CodeableConcept?,
        definition: identical(definition, fhirSentinel)
            ? _value.definition
            : definition as FhirMarkdown?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MeasureTermCopyWithExtension on MeasureTerm {
  $MeasureTermCopyWith<MeasureTerm> get copyWith =>
      _$MeasureTermCopyWithImpl<MeasureTerm>(
        this,
        (value) => value,
      );
}

abstract class $MeasureGroupCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? linkId,
    CodeableConcept? code,
    FhirMarkdown? description,
    List<CodeableConcept>? type,
    SubjectXMeasureGroup? subjectX,
    FHIRTypes? basis,
    CodeableConcept? scoring,
    CodeableConcept? scoringUnit,
    FhirPositiveInt? scoringPrecision,
    CodeableConcept? compositeScoring,
    List<MeasureComponent>? component,
    FhirMarkdown? rateAggregation,
    CodeableConcept? improvementNotation,
    FhirMarkdown? improvementNotationGuidance,
    List<FhirCanonical>? library_,
    List<MeasurePopulation>? population,
    List<MeasureStratifier>? stratifier,
    bool? disallowExtensions,
  });
}

class _$MeasureGroupCopyWithImpl<T> implements $MeasureGroupCopyWith<T> {
  final MeasureGroup _value;
  final T Function(MeasureGroup) _then;

  _$MeasureGroupCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? linkId = fhirSentinel,
    Object? code = fhirSentinel,
    Object? description = fhirSentinel,
    Object? type = fhirSentinel,
    Object? subjectX = fhirSentinel,
    Object? basis = fhirSentinel,
    Object? scoring = fhirSentinel,
    Object? scoringUnit = fhirSentinel,
    Object? scoringPrecision = fhirSentinel,
    Object? compositeScoring = fhirSentinel,
    Object? component = fhirSentinel,
    Object? rateAggregation = fhirSentinel,
    Object? improvementNotation = fhirSentinel,
    Object? improvementNotationGuidance = fhirSentinel,
    Object? library_ = fhirSentinel,
    Object? population = fhirSentinel,
    Object? stratifier = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MeasureGroup(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        linkId: identical(linkId, fhirSentinel)
            ? _value.linkId
            : linkId as FhirString?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : code as CodeableConcept?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirMarkdown?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as List<CodeableConcept>?,
        subjectX: identical(subjectX, fhirSentinel)
            ? _value.subjectX
            : subjectX as SubjectXMeasureGroup?,
        basis:
            identical(basis, fhirSentinel) ? _value.basis : basis as FHIRTypes?,
        scoring: identical(scoring, fhirSentinel)
            ? _value.scoring
            : scoring as CodeableConcept?,
        scoringUnit: identical(scoringUnit, fhirSentinel)
            ? _value.scoringUnit
            : scoringUnit as CodeableConcept?,
        scoringPrecision: identical(scoringPrecision, fhirSentinel)
            ? _value.scoringPrecision
            : scoringPrecision as FhirPositiveInt?,
        compositeScoring: identical(compositeScoring, fhirSentinel)
            ? _value.compositeScoring
            : compositeScoring as CodeableConcept?,
        component: identical(component, fhirSentinel)
            ? _value.component
            : component as List<MeasureComponent>?,
        rateAggregation: identical(rateAggregation, fhirSentinel)
            ? _value.rateAggregation
            : rateAggregation as FhirMarkdown?,
        improvementNotation: identical(improvementNotation, fhirSentinel)
            ? _value.improvementNotation
            : improvementNotation as CodeableConcept?,
        improvementNotationGuidance:
            identical(improvementNotationGuidance, fhirSentinel)
                ? _value.improvementNotationGuidance
                : improvementNotationGuidance as FhirMarkdown?,
        library_: identical(library_, fhirSentinel)
            ? _value.library_
            : library_ as List<FhirCanonical>?,
        population: identical(population, fhirSentinel)
            ? _value.population
            : population as List<MeasurePopulation>?,
        stratifier: identical(stratifier, fhirSentinel)
            ? _value.stratifier
            : stratifier as List<MeasureStratifier>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MeasureGroupCopyWithExtension on MeasureGroup {
  $MeasureGroupCopyWith<MeasureGroup> get copyWith =>
      _$MeasureGroupCopyWithImpl<MeasureGroup>(
        this,
        (value) => value,
      );
}

abstract class $MeasureComponentCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCanonical? measure,
    FhirString? groupId,
    FhirDecimal? weight,
    bool? disallowExtensions,
  });
}

class _$MeasureComponentCopyWithImpl<T>
    implements $MeasureComponentCopyWith<T> {
  final MeasureComponent _value;
  final T Function(MeasureComponent) _then;

  _$MeasureComponentCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? measure = fhirSentinel,
    Object? groupId = fhirSentinel,
    Object? weight = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MeasureComponent(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        measure: identical(measure, fhirSentinel)
            ? _value.measure
            : measure as FhirCanonical?,
        groupId: identical(groupId, fhirSentinel)
            ? _value.groupId
            : groupId as FhirString?,
        weight: identical(weight, fhirSentinel)
            ? _value.weight
            : weight as FhirDecimal?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MeasureComponentCopyWithExtension on MeasureComponent {
  $MeasureComponentCopyWith<MeasureComponent> get copyWith =>
      _$MeasureComponentCopyWithImpl<MeasureComponent>(
        this,
        (value) => value,
      );
}

abstract class $MeasurePopulationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? linkId,
    CodeableConcept? code,
    FhirMarkdown? description,
    FhirExpression? criteria,
    Reference? groupDefinition,
    FhirString? inputPopulationId,
    CodeableConcept? aggregateMethod,
    bool? disallowExtensions,
  });
}

class _$MeasurePopulationCopyWithImpl<T>
    implements $MeasurePopulationCopyWith<T> {
  final MeasurePopulation _value;
  final T Function(MeasurePopulation) _then;

  _$MeasurePopulationCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? linkId = fhirSentinel,
    Object? code = fhirSentinel,
    Object? description = fhirSentinel,
    Object? criteria = fhirSentinel,
    Object? groupDefinition = fhirSentinel,
    Object? inputPopulationId = fhirSentinel,
    Object? aggregateMethod = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MeasurePopulation(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        linkId: identical(linkId, fhirSentinel)
            ? _value.linkId
            : linkId as FhirString?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : code as CodeableConcept?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirMarkdown?,
        criteria: identical(criteria, fhirSentinel)
            ? _value.criteria
            : criteria as FhirExpression?,
        groupDefinition: identical(groupDefinition, fhirSentinel)
            ? _value.groupDefinition
            : groupDefinition as Reference?,
        inputPopulationId: identical(inputPopulationId, fhirSentinel)
            ? _value.inputPopulationId
            : inputPopulationId as FhirString?,
        aggregateMethod: identical(aggregateMethod, fhirSentinel)
            ? _value.aggregateMethod
            : aggregateMethod as CodeableConcept?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MeasurePopulationCopyWithExtension on MeasurePopulation {
  $MeasurePopulationCopyWith<MeasurePopulation> get copyWith =>
      _$MeasurePopulationCopyWithImpl<MeasurePopulation>(
        this,
        (value) => value,
      );
}

abstract class $MeasureStratifierCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? linkId,
    CodeableConcept? code,
    FhirMarkdown? description,
    FhirExpression? criteria,
    Reference? groupDefinition,
    FhirCanonical? valueSet,
    FhirString? unit,
    List<MeasureComponent1>? component,
    bool? disallowExtensions,
  });
}

class _$MeasureStratifierCopyWithImpl<T>
    implements $MeasureStratifierCopyWith<T> {
  final MeasureStratifier _value;
  final T Function(MeasureStratifier) _then;

  _$MeasureStratifierCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? linkId = fhirSentinel,
    Object? code = fhirSentinel,
    Object? description = fhirSentinel,
    Object? criteria = fhirSentinel,
    Object? groupDefinition = fhirSentinel,
    Object? valueSet = fhirSentinel,
    Object? unit = fhirSentinel,
    Object? component = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MeasureStratifier(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        linkId: identical(linkId, fhirSentinel)
            ? _value.linkId
            : linkId as FhirString?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : code as CodeableConcept?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirMarkdown?,
        criteria: identical(criteria, fhirSentinel)
            ? _value.criteria
            : criteria as FhirExpression?,
        groupDefinition: identical(groupDefinition, fhirSentinel)
            ? _value.groupDefinition
            : groupDefinition as Reference?,
        valueSet: identical(valueSet, fhirSentinel)
            ? _value.valueSet
            : valueSet as FhirCanonical?,
        unit: identical(unit, fhirSentinel) ? _value.unit : unit as FhirString?,
        component: identical(component, fhirSentinel)
            ? _value.component
            : component as List<MeasureComponent1>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MeasureStratifierCopyWithExtension on MeasureStratifier {
  $MeasureStratifierCopyWith<MeasureStratifier> get copyWith =>
      _$MeasureStratifierCopyWithImpl<MeasureStratifier>(
        this,
        (value) => value,
      );
}

abstract class $MeasureComponent1CopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? linkId,
    CodeableConcept? code,
    FhirMarkdown? description,
    FhirExpression? criteria,
    Reference? groupDefinition,
    FhirCanonical? valueSet,
    FhirString? unit,
    bool? disallowExtensions,
  });
}

class _$MeasureComponent1CopyWithImpl<T>
    implements $MeasureComponent1CopyWith<T> {
  final MeasureComponent1 _value;
  final T Function(MeasureComponent1) _then;

  _$MeasureComponent1CopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? linkId = fhirSentinel,
    Object? code = fhirSentinel,
    Object? description = fhirSentinel,
    Object? criteria = fhirSentinel,
    Object? groupDefinition = fhirSentinel,
    Object? valueSet = fhirSentinel,
    Object? unit = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MeasureComponent1(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        linkId: identical(linkId, fhirSentinel)
            ? _value.linkId
            : linkId as FhirString?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : code as CodeableConcept?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirMarkdown?,
        criteria: identical(criteria, fhirSentinel)
            ? _value.criteria
            : criteria as FhirExpression?,
        groupDefinition: identical(groupDefinition, fhirSentinel)
            ? _value.groupDefinition
            : groupDefinition as Reference?,
        valueSet: identical(valueSet, fhirSentinel)
            ? _value.valueSet
            : valueSet as FhirCanonical?,
        unit: identical(unit, fhirSentinel) ? _value.unit : unit as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MeasureComponent1CopyWithExtension on MeasureComponent1 {
  $MeasureComponent1CopyWith<MeasureComponent1> get copyWith =>
      _$MeasureComponent1CopyWithImpl<MeasureComponent1>(
        this,
        (value) => value,
      );
}

abstract class $MeasureSupplementalDataCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? linkId,
    CodeableConcept? code,
    List<CodeableConcept>? usage,
    FhirMarkdown? description,
    FhirExpression? criteria,
    FhirCanonical? valueSet,
    FhirString? unit,
    bool? disallowExtensions,
  });
}

class _$MeasureSupplementalDataCopyWithImpl<T>
    implements $MeasureSupplementalDataCopyWith<T> {
  final MeasureSupplementalData _value;
  final T Function(MeasureSupplementalData) _then;

  _$MeasureSupplementalDataCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? linkId = fhirSentinel,
    Object? code = fhirSentinel,
    Object? usage = fhirSentinel,
    Object? description = fhirSentinel,
    Object? criteria = fhirSentinel,
    Object? valueSet = fhirSentinel,
    Object? unit = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MeasureSupplementalData(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        linkId: identical(linkId, fhirSentinel)
            ? _value.linkId
            : linkId as FhirString?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : code as CodeableConcept?,
        usage: identical(usage, fhirSentinel)
            ? _value.usage
            : usage as List<CodeableConcept>?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirMarkdown?,
        criteria: identical(criteria, fhirSentinel)
            ? _value.criteria
            : (criteria as FhirExpression?) ?? _value.criteria,
        valueSet: identical(valueSet, fhirSentinel)
            ? _value.valueSet
            : valueSet as FhirCanonical?,
        unit: identical(unit, fhirSentinel) ? _value.unit : unit as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MeasureSupplementalDataCopyWithExtension on MeasureSupplementalData {
  $MeasureSupplementalDataCopyWith<MeasureSupplementalData> get copyWith =>
      _$MeasureSupplementalDataCopyWithImpl<MeasureSupplementalData>(
        this,
        (value) => value,
      );
}
