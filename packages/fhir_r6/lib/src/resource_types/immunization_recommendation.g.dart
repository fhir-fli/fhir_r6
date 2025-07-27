// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'immunization_recommendation.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $ImmunizationRecommendationCopyWith<T>
    extends $DomainResourceCopyWith<T> {
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
    Reference? patient,
    FhirDateTime? date,
    Reference? authority,
    List<ImmunizationRecommendationRecommendation>? recommendation,
    bool? disallowExtensions,
  });
}

class _$ImmunizationRecommendationCopyWithImpl<T>
    implements $ImmunizationRecommendationCopyWith<T> {
  final ImmunizationRecommendation _value;
  final T Function(ImmunizationRecommendation) _then;

  _$ImmunizationRecommendationCopyWithImpl(this._value, this._then);

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
    Object? patient = fhirSentinel,
    Object? date = fhirSentinel,
    Object? authority = fhirSentinel,
    Object? recommendation = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ImmunizationRecommendation(
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
        patient: identical(patient, fhirSentinel)
            ? _value.patient
            : (patient as Reference?) ?? _value.patient,
        date: identical(date, fhirSentinel)
            ? _value.date
            : (date as FhirDateTime?) ?? _value.date,
        authority: identical(authority, fhirSentinel)
            ? _value.authority
            : authority as Reference?,
        recommendation: identical(recommendation, fhirSentinel)
            ? _value.recommendation
            : (recommendation
                    as List<ImmunizationRecommendationRecommendation>?) ??
                _value.recommendation,
      ),
    );
  }
}

extension ImmunizationRecommendationCopyWithExtension
    on ImmunizationRecommendation {
  $ImmunizationRecommendationCopyWith<ImmunizationRecommendation>
      get copyWith =>
          _$ImmunizationRecommendationCopyWithImpl<ImmunizationRecommendation>(
            this,
            (value) => value,
          );
}

abstract class $ImmunizationRecommendationRecommendationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CodeableConcept>? vaccineCode,
    List<CodeableConcept>? targetDisease,
    List<CodeableConcept>? contraindicatedVaccineCode,
    CodeableConcept? forecastStatus,
    List<CodeableConcept>? forecastReason,
    List<ImmunizationRecommendationDateCriterion>? dateCriterion,
    FhirMarkdown? description,
    FhirString? series,
    FhirString? doseNumber,
    FhirString? seriesDoses,
    List<Reference>? supportingImmunization,
    List<Reference>? supportingPatientInformation,
    bool? disallowExtensions,
  });
}

class _$ImmunizationRecommendationRecommendationCopyWithImpl<T>
    implements $ImmunizationRecommendationRecommendationCopyWith<T> {
  final ImmunizationRecommendationRecommendation _value;
  final T Function(ImmunizationRecommendationRecommendation) _then;

  _$ImmunizationRecommendationRecommendationCopyWithImpl(
    this._value,
    this._then,
  );

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? vaccineCode = fhirSentinel,
    Object? targetDisease = fhirSentinel,
    Object? contraindicatedVaccineCode = fhirSentinel,
    Object? forecastStatus = fhirSentinel,
    Object? forecastReason = fhirSentinel,
    Object? dateCriterion = fhirSentinel,
    Object? description = fhirSentinel,
    Object? series = fhirSentinel,
    Object? doseNumber = fhirSentinel,
    Object? seriesDoses = fhirSentinel,
    Object? supportingImmunization = fhirSentinel,
    Object? supportingPatientInformation = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ImmunizationRecommendationRecommendation(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        vaccineCode: identical(vaccineCode, fhirSentinel)
            ? _value.vaccineCode
            : vaccineCode as List<CodeableConcept>?,
        targetDisease: identical(targetDisease, fhirSentinel)
            ? _value.targetDisease
            : targetDisease as List<CodeableConcept>?,
        contraindicatedVaccineCode:
            identical(contraindicatedVaccineCode, fhirSentinel)
                ? _value.contraindicatedVaccineCode
                : contraindicatedVaccineCode as List<CodeableConcept>?,
        forecastStatus: identical(forecastStatus, fhirSentinel)
            ? _value.forecastStatus
            : (forecastStatus as CodeableConcept?) ?? _value.forecastStatus,
        forecastReason: identical(forecastReason, fhirSentinel)
            ? _value.forecastReason
            : forecastReason as List<CodeableConcept>?,
        dateCriterion: identical(dateCriterion, fhirSentinel)
            ? _value.dateCriterion
            : dateCriterion as List<ImmunizationRecommendationDateCriterion>?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirMarkdown?,
        series: identical(series, fhirSentinel)
            ? _value.series
            : series as FhirString?,
        doseNumber: identical(doseNumber, fhirSentinel)
            ? _value.doseNumber
            : doseNumber as FhirString?,
        seriesDoses: identical(seriesDoses, fhirSentinel)
            ? _value.seriesDoses
            : seriesDoses as FhirString?,
        supportingImmunization: identical(supportingImmunization, fhirSentinel)
            ? _value.supportingImmunization
            : supportingImmunization as List<Reference>?,
        supportingPatientInformation:
            identical(supportingPatientInformation, fhirSentinel)
                ? _value.supportingPatientInformation
                : supportingPatientInformation as List<Reference>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ImmunizationRecommendationRecommendationCopyWithExtension
    on ImmunizationRecommendationRecommendation {
  $ImmunizationRecommendationRecommendationCopyWith<
          ImmunizationRecommendationRecommendation>
      get copyWith => _$ImmunizationRecommendationRecommendationCopyWithImpl<
              ImmunizationRecommendationRecommendation>(
            this,
            (value) => value,
          );
}

abstract class $ImmunizationRecommendationDateCriterionCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    FhirDateTime? value,
    bool? disallowExtensions,
  });
}

class _$ImmunizationRecommendationDateCriterionCopyWithImpl<T>
    implements $ImmunizationRecommendationDateCriterionCopyWith<T> {
  final ImmunizationRecommendationDateCriterion _value;
  final T Function(ImmunizationRecommendationDateCriterion) _then;

  _$ImmunizationRecommendationDateCriterionCopyWithImpl(
    this._value,
    this._then,
  );

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? value = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ImmunizationRecommendationDateCriterion(
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
        value: identical(value, fhirSentinel)
            ? _value.value
            : (value as FhirDateTime?) ?? _value.value,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ImmunizationRecommendationDateCriterionCopyWithExtension
    on ImmunizationRecommendationDateCriterion {
  $ImmunizationRecommendationDateCriterionCopyWith<
          ImmunizationRecommendationDateCriterion>
      get copyWith => _$ImmunizationRecommendationDateCriterionCopyWithImpl<
              ImmunizationRecommendationDateCriterion>(
            this,
            (value) => value,
          );
}
