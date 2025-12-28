// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'measure_report.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $MeasureReportCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    CodeableConcept? category,
    Reference? messages,
    MeasureReportStatus? status,
    MeasureReportType? type,
    SubmitDataUpdateType? dataUpdateType,
    FhirCanonical? measure,
    Reference? subject,
    FhirDateTime? date,
    Reference? reporter,
    Reference? reportingVendor,
    List<Reference>? location,
    Period? period,
    Reference? inputParameters,
    CodeableConcept? scoring,
    CodeableConcept? improvementNotation,
    List<MeasureReportGroup>? group,
    List<Reference>? supplementalData,
    List<Reference>? evaluatedResource,
    bool? disallowExtensions,
  });
}

class _$MeasureReportCopyWithImpl<T> implements $MeasureReportCopyWith<T> {
  final MeasureReport _value;
  final T Function(MeasureReport) _then;

  _$MeasureReportCopyWithImpl(this._value, this._then);

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
    Object? category = fhirSentinel,
    Object? messages = fhirSentinel,
    Object? status = fhirSentinel,
    Object? type = fhirSentinel,
    Object? dataUpdateType = fhirSentinel,
    Object? measure = fhirSentinel,
    Object? subject = fhirSentinel,
    Object? date = fhirSentinel,
    Object? reporter = fhirSentinel,
    Object? reportingVendor = fhirSentinel,
    Object? location = fhirSentinel,
    Object? period = fhirSentinel,
    Object? inputParameters = fhirSentinel,
    Object? scoring = fhirSentinel,
    Object? improvementNotation = fhirSentinel,
    Object? group = fhirSentinel,
    Object? supplementalData = fhirSentinel,
    Object? evaluatedResource = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MeasureReport(
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
        category: identical(category, fhirSentinel)
            ? _value.category
            : category as CodeableConcept?,
        messages: identical(messages, fhirSentinel)
            ? _value.messages
            : messages as Reference?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as MeasureReportStatus?) ?? _value.status,
        type: identical(type, fhirSentinel)
            ? _value.type
            : (type as MeasureReportType?) ?? _value.type,
        dataUpdateType: identical(dataUpdateType, fhirSentinel)
            ? _value.dataUpdateType
            : dataUpdateType as SubmitDataUpdateType?,
        measure: identical(measure, fhirSentinel)
            ? _value.measure
            : measure as FhirCanonical?,
        subject: identical(subject, fhirSentinel)
            ? _value.subject
            : subject as Reference?,
        date:
            identical(date, fhirSentinel) ? _value.date : date as FhirDateTime?,
        reporter: identical(reporter, fhirSentinel)
            ? _value.reporter
            : reporter as Reference?,
        reportingVendor: identical(reportingVendor, fhirSentinel)
            ? _value.reportingVendor
            : reportingVendor as Reference?,
        location: identical(location, fhirSentinel)
            ? _value.location
            : location as List<Reference>?,
        period: identical(period, fhirSentinel)
            ? _value.period
            : (period as Period?) ?? _value.period,
        inputParameters: identical(inputParameters, fhirSentinel)
            ? _value.inputParameters
            : inputParameters as Reference?,
        scoring: identical(scoring, fhirSentinel)
            ? _value.scoring
            : scoring as CodeableConcept?,
        improvementNotation: identical(improvementNotation, fhirSentinel)
            ? _value.improvementNotation
            : improvementNotation as CodeableConcept?,
        group: identical(group, fhirSentinel)
            ? _value.group
            : group as List<MeasureReportGroup>?,
        supplementalData: identical(supplementalData, fhirSentinel)
            ? _value.supplementalData
            : supplementalData as List<Reference>?,
        evaluatedResource: identical(evaluatedResource, fhirSentinel)
            ? _value.evaluatedResource
            : evaluatedResource as List<Reference>?,
      ),
    );
  }
}

extension MeasureReportCopyWithExtension on MeasureReport {
  $MeasureReportCopyWith<MeasureReport> get copyWith =>
      _$MeasureReportCopyWithImpl<MeasureReport>(
        this,
        (value) => value,
      );
}

abstract class $MeasureReportGroupCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? linkId,
    FhirDateTime? calculatedDate,
    CodeableConcept? code,
    FhirMarkdown? description,
    Reference? subject,
    CodeableConcept? scoring,
    CodeableConcept? improvementNotation,
    FhirMarkdown? improvementNotationGuidance,
    List<MeasureReportPopulation>? population,
    MeasureScoreXMeasureReportGroup? measureScoreX,
    List<MeasureReportStratifier>? stratifier,
    bool? disallowExtensions,
  });
}

class _$MeasureReportGroupCopyWithImpl<T>
    implements $MeasureReportGroupCopyWith<T> {
  final MeasureReportGroup _value;
  final T Function(MeasureReportGroup) _then;

  _$MeasureReportGroupCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? linkId = fhirSentinel,
    Object? calculatedDate = fhirSentinel,
    Object? code = fhirSentinel,
    Object? description = fhirSentinel,
    Object? subject = fhirSentinel,
    Object? scoring = fhirSentinel,
    Object? improvementNotation = fhirSentinel,
    Object? improvementNotationGuidance = fhirSentinel,
    Object? population = fhirSentinel,
    Object? measureScoreX = fhirSentinel,
    Object? stratifier = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MeasureReportGroup(
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
        calculatedDate: identical(calculatedDate, fhirSentinel)
            ? _value.calculatedDate
            : calculatedDate as FhirDateTime?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : code as CodeableConcept?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirMarkdown?,
        subject: identical(subject, fhirSentinel)
            ? _value.subject
            : subject as Reference?,
        scoring: identical(scoring, fhirSentinel)
            ? _value.scoring
            : scoring as CodeableConcept?,
        improvementNotation: identical(improvementNotation, fhirSentinel)
            ? _value.improvementNotation
            : improvementNotation as CodeableConcept?,
        improvementNotationGuidance:
            identical(improvementNotationGuidance, fhirSentinel)
                ? _value.improvementNotationGuidance
                : improvementNotationGuidance as FhirMarkdown?,
        population: identical(population, fhirSentinel)
            ? _value.population
            : population as List<MeasureReportPopulation>?,
        measureScoreX: identical(measureScoreX, fhirSentinel)
            ? _value.measureScoreX
            : measureScoreX as MeasureScoreXMeasureReportGroup?,
        stratifier: identical(stratifier, fhirSentinel)
            ? _value.stratifier
            : stratifier as List<MeasureReportStratifier>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MeasureReportGroupCopyWithExtension on MeasureReportGroup {
  $MeasureReportGroupCopyWith<MeasureReportGroup> get copyWith =>
      _$MeasureReportGroupCopyWithImpl<MeasureReportGroup>(
        this,
        (value) => value,
      );
}

abstract class $MeasureReportPopulationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? linkId,
    CodeableConcept? code,
    FhirMarkdown? description,
    FhirInteger? count,
    Quantity? countQuantity,
    Reference? subjectResults,
    List<Reference>? subjectReport,
    Reference? subjects,
    bool? disallowExtensions,
  });
}

class _$MeasureReportPopulationCopyWithImpl<T>
    implements $MeasureReportPopulationCopyWith<T> {
  final MeasureReportPopulation _value;
  final T Function(MeasureReportPopulation) _then;

  _$MeasureReportPopulationCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? linkId = fhirSentinel,
    Object? code = fhirSentinel,
    Object? description = fhirSentinel,
    Object? count = fhirSentinel,
    Object? countQuantity = fhirSentinel,
    Object? subjectResults = fhirSentinel,
    Object? subjectReport = fhirSentinel,
    Object? subjects = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MeasureReportPopulation(
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
        count: identical(count, fhirSentinel)
            ? _value.count
            : count as FhirInteger?,
        countQuantity: identical(countQuantity, fhirSentinel)
            ? _value.countQuantity
            : countQuantity as Quantity?,
        subjectResults: identical(subjectResults, fhirSentinel)
            ? _value.subjectResults
            : subjectResults as Reference?,
        subjectReport: identical(subjectReport, fhirSentinel)
            ? _value.subjectReport
            : subjectReport as List<Reference>?,
        subjects: identical(subjects, fhirSentinel)
            ? _value.subjects
            : subjects as Reference?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MeasureReportPopulationCopyWithExtension on MeasureReportPopulation {
  $MeasureReportPopulationCopyWith<MeasureReportPopulation> get copyWith =>
      _$MeasureReportPopulationCopyWithImpl<MeasureReportPopulation>(
        this,
        (value) => value,
      );
}

abstract class $MeasureReportStratifierCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? linkId,
    CodeableConcept? code,
    FhirMarkdown? description,
    List<MeasureReportStratum>? stratum,
    bool? disallowExtensions,
  });
}

class _$MeasureReportStratifierCopyWithImpl<T>
    implements $MeasureReportStratifierCopyWith<T> {
  final MeasureReportStratifier _value;
  final T Function(MeasureReportStratifier) _then;

  _$MeasureReportStratifierCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? linkId = fhirSentinel,
    Object? code = fhirSentinel,
    Object? description = fhirSentinel,
    Object? stratum = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MeasureReportStratifier(
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
        stratum: identical(stratum, fhirSentinel)
            ? _value.stratum
            : stratum as List<MeasureReportStratum>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MeasureReportStratifierCopyWithExtension on MeasureReportStratifier {
  $MeasureReportStratifierCopyWith<MeasureReportStratifier> get copyWith =>
      _$MeasureReportStratifierCopyWithImpl<MeasureReportStratifier>(
        this,
        (value) => value,
      );
}

abstract class $MeasureReportStratumCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ValueXMeasureReportStratum? valueX,
    List<MeasureReportComponent>? component,
    List<MeasureReportPopulation>? population,
    MeasureScoreXMeasureReportStratum? measureScoreX,
    bool? disallowExtensions,
  });
}

class _$MeasureReportStratumCopyWithImpl<T>
    implements $MeasureReportStratumCopyWith<T> {
  final MeasureReportStratum _value;
  final T Function(MeasureReportStratum) _then;

  _$MeasureReportStratumCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? valueX = fhirSentinel,
    Object? component = fhirSentinel,
    Object? population = fhirSentinel,
    Object? measureScoreX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MeasureReportStratum(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        valueX: identical(valueX, fhirSentinel)
            ? _value.valueX
            : valueX as ValueXMeasureReportStratum?,
        component: identical(component, fhirSentinel)
            ? _value.component
            : component as List<MeasureReportComponent>?,
        population: identical(population, fhirSentinel)
            ? _value.population
            : population as List<MeasureReportPopulation>?,
        measureScoreX: identical(measureScoreX, fhirSentinel)
            ? _value.measureScoreX
            : measureScoreX as MeasureScoreXMeasureReportStratum?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MeasureReportStratumCopyWithExtension on MeasureReportStratum {
  $MeasureReportStratumCopyWith<MeasureReportStratum> get copyWith =>
      _$MeasureReportStratumCopyWithImpl<MeasureReportStratum>(
        this,
        (value) => value,
      );
}

abstract class $MeasureReportComponentCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? linkId,
    CodeableConcept? code,
    FhirMarkdown? description,
    ValueXMeasureReportComponent? valueX,
    bool? disallowExtensions,
  });
}

class _$MeasureReportComponentCopyWithImpl<T>
    implements $MeasureReportComponentCopyWith<T> {
  final MeasureReportComponent _value;
  final T Function(MeasureReportComponent) _then;

  _$MeasureReportComponentCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? linkId = fhirSentinel,
    Object? code = fhirSentinel,
    Object? description = fhirSentinel,
    Object? valueX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MeasureReportComponent(
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
            : (code as CodeableConcept?) ?? _value.code,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirMarkdown?,
        valueX: identical(valueX, fhirSentinel)
            ? _value.valueX
            : (valueX as ValueXMeasureReportComponent?) ?? _value.valueX,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MeasureReportComponentCopyWithExtension on MeasureReportComponent {
  $MeasureReportComponentCopyWith<MeasureReportComponent> get copyWith =>
      _$MeasureReportComponentCopyWithImpl<MeasureReportComponent>(
        this,
        (value) => value,
      );
}

abstract class $MeasureReportPopulation1CopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? linkId,
    CodeableConcept? code,
    FhirInteger? count,
    Quantity? countQuantity,
    Reference? subjectResults,
    List<Reference>? subjectReport,
    Reference? subjects,
    bool? disallowExtensions,
  });
}

class _$MeasureReportPopulation1CopyWithImpl<T>
    implements $MeasureReportPopulation1CopyWith<T> {
  final MeasureReportPopulation1 _value;
  final T Function(MeasureReportPopulation1) _then;

  _$MeasureReportPopulation1CopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? linkId = fhirSentinel,
    Object? code = fhirSentinel,
    Object? count = fhirSentinel,
    Object? countQuantity = fhirSentinel,
    Object? subjectResults = fhirSentinel,
    Object? subjectReport = fhirSentinel,
    Object? subjects = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MeasureReportPopulation1(
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
        count: identical(count, fhirSentinel)
            ? _value.count
            : count as FhirInteger?,
        countQuantity: identical(countQuantity, fhirSentinel)
            ? _value.countQuantity
            : countQuantity as Quantity?,
        subjectResults: identical(subjectResults, fhirSentinel)
            ? _value.subjectResults
            : subjectResults as Reference?,
        subjectReport: identical(subjectReport, fhirSentinel)
            ? _value.subjectReport
            : subjectReport as List<Reference>?,
        subjects: identical(subjects, fhirSentinel)
            ? _value.subjects
            : subjects as Reference?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MeasureReportPopulation1CopyWithExtension
    on MeasureReportPopulation1 {
  $MeasureReportPopulation1CopyWith<MeasureReportPopulation1> get copyWith =>
      _$MeasureReportPopulation1CopyWithImpl<MeasureReportPopulation1>(
        this,
        (value) => value,
      );
}
