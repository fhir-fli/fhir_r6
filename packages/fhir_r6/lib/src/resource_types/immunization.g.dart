// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'immunization.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $ImmunizationCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    List<Reference>? basedOn,
    ImmunizationStatusCodes? status,
    CodeableConcept? statusReason,
    CodeableConcept? vaccineCode,
    CodeableReference? administeredProduct,
    CodeableReference? manufacturer,
    FhirString? lotNumber,
    FhirDate? expirationDate,
    Reference? patient,
    Reference? encounter,
    List<Reference>? supportingInformation,
    FhirDateTime? occurrenceX,
    FhirBoolean? primarySource,
    CodeableReference? informationSource,
    Reference? location,
    CodeableConcept? site,
    CodeableConcept? route,
    Quantity? doseQuantity,
    List<ImmunizationPerformer>? performer,
    List<Annotation>? note,
    List<CodeableReference>? reason,
    FhirBoolean? isSubpotent,
    List<CodeableConcept>? subpotentReason,
    List<ImmunizationProgramEligibility>? programEligibility,
    CodeableConcept? fundingSource,
    List<ImmunizationReaction>? reaction,
    List<ImmunizationProtocolApplied>? protocolApplied,
    bool? disallowExtensions,
  });
}

class _$ImmunizationCopyWithImpl<T> implements $ImmunizationCopyWith<T> {
  final Immunization _value;
  final T Function(Immunization) _then;

  _$ImmunizationCopyWithImpl(this._value, this._then);

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
    Object? basedOn = fhirSentinel,
    Object? status = fhirSentinel,
    Object? statusReason = fhirSentinel,
    Object? vaccineCode = fhirSentinel,
    Object? administeredProduct = fhirSentinel,
    Object? manufacturer = fhirSentinel,
    Object? lotNumber = fhirSentinel,
    Object? expirationDate = fhirSentinel,
    Object? patient = fhirSentinel,
    Object? encounter = fhirSentinel,
    Object? supportingInformation = fhirSentinel,
    Object? occurrenceX = fhirSentinel,
    Object? primarySource = fhirSentinel,
    Object? informationSource = fhirSentinel,
    Object? location = fhirSentinel,
    Object? site = fhirSentinel,
    Object? route = fhirSentinel,
    Object? doseQuantity = fhirSentinel,
    Object? performer = fhirSentinel,
    Object? note = fhirSentinel,
    Object? reason = fhirSentinel,
    Object? isSubpotent = fhirSentinel,
    Object? subpotentReason = fhirSentinel,
    Object? programEligibility = fhirSentinel,
    Object? fundingSource = fhirSentinel,
    Object? reaction = fhirSentinel,
    Object? protocolApplied = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Immunization(
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
        basedOn: identical(basedOn, fhirSentinel)
            ? _value.basedOn
            : basedOn as List<Reference>?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as ImmunizationStatusCodes?) ?? _value.status,
        statusReason: identical(statusReason, fhirSentinel)
            ? _value.statusReason
            : statusReason as CodeableConcept?,
        vaccineCode: identical(vaccineCode, fhirSentinel)
            ? _value.vaccineCode
            : (vaccineCode as CodeableConcept?) ?? _value.vaccineCode,
        administeredProduct: identical(administeredProduct, fhirSentinel)
            ? _value.administeredProduct
            : administeredProduct as CodeableReference?,
        manufacturer: identical(manufacturer, fhirSentinel)
            ? _value.manufacturer
            : manufacturer as CodeableReference?,
        lotNumber: identical(lotNumber, fhirSentinel)
            ? _value.lotNumber
            : lotNumber as FhirString?,
        expirationDate: identical(expirationDate, fhirSentinel)
            ? _value.expirationDate
            : expirationDate as FhirDate?,
        patient: identical(patient, fhirSentinel)
            ? _value.patient
            : (patient as Reference?) ?? _value.patient,
        encounter: identical(encounter, fhirSentinel)
            ? _value.encounter
            : encounter as Reference?,
        supportingInformation: identical(supportingInformation, fhirSentinel)
            ? _value.supportingInformation
            : supportingInformation as List<Reference>?,
        occurrenceX: identical(occurrenceX, fhirSentinel)
            ? _value.occurrenceX
            : (occurrenceX as FhirDateTime?) ?? _value.occurrenceX,
        primarySource: identical(primarySource, fhirSentinel)
            ? _value.primarySource
            : primarySource as FhirBoolean?,
        informationSource: identical(informationSource, fhirSentinel)
            ? _value.informationSource
            : informationSource as CodeableReference?,
        location: identical(location, fhirSentinel)
            ? _value.location
            : location as Reference?,
        site: identical(site, fhirSentinel)
            ? _value.site
            : site as CodeableConcept?,
        route: identical(route, fhirSentinel)
            ? _value.route
            : route as CodeableConcept?,
        doseQuantity: identical(doseQuantity, fhirSentinel)
            ? _value.doseQuantity
            : doseQuantity as Quantity?,
        performer: identical(performer, fhirSentinel)
            ? _value.performer
            : performer as List<ImmunizationPerformer>?,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
        reason: identical(reason, fhirSentinel)
            ? _value.reason
            : reason as List<CodeableReference>?,
        isSubpotent: identical(isSubpotent, fhirSentinel)
            ? _value.isSubpotent
            : isSubpotent as FhirBoolean?,
        subpotentReason: identical(subpotentReason, fhirSentinel)
            ? _value.subpotentReason
            : subpotentReason as List<CodeableConcept>?,
        programEligibility: identical(programEligibility, fhirSentinel)
            ? _value.programEligibility
            : programEligibility as List<ImmunizationProgramEligibility>?,
        fundingSource: identical(fundingSource, fhirSentinel)
            ? _value.fundingSource
            : fundingSource as CodeableConcept?,
        reaction: identical(reaction, fhirSentinel)
            ? _value.reaction
            : reaction as List<ImmunizationReaction>?,
        protocolApplied: identical(protocolApplied, fhirSentinel)
            ? _value.protocolApplied
            : protocolApplied as List<ImmunizationProtocolApplied>?,
      ),
    );
  }
}

extension ImmunizationCopyWithExtension on Immunization {
  $ImmunizationCopyWith<Immunization> get copyWith =>
      _$ImmunizationCopyWithImpl<Immunization>(
        this,
        (value) => value,
      );
}

abstract class $ImmunizationPerformerCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? function_,
    Reference? actor,
    bool? disallowExtensions,
  });
}

class _$ImmunizationPerformerCopyWithImpl<T>
    implements $ImmunizationPerformerCopyWith<T> {
  final ImmunizationPerformer _value;
  final T Function(ImmunizationPerformer) _then;

  _$ImmunizationPerformerCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? function_ = fhirSentinel,
    Object? actor = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ImmunizationPerformer(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        function_: identical(function_, fhirSentinel)
            ? _value.function_
            : function_ as CodeableConcept?,
        actor: identical(actor, fhirSentinel)
            ? _value.actor
            : (actor as Reference?) ?? _value.actor,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ImmunizationPerformerCopyWithExtension on ImmunizationPerformer {
  $ImmunizationPerformerCopyWith<ImmunizationPerformer> get copyWith =>
      _$ImmunizationPerformerCopyWithImpl<ImmunizationPerformer>(
        this,
        (value) => value,
      );
}

abstract class $ImmunizationProgramEligibilityCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? program,
    CodeableConcept? programStatus,
    bool? disallowExtensions,
  });
}

class _$ImmunizationProgramEligibilityCopyWithImpl<T>
    implements $ImmunizationProgramEligibilityCopyWith<T> {
  final ImmunizationProgramEligibility _value;
  final T Function(ImmunizationProgramEligibility) _then;

  _$ImmunizationProgramEligibilityCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? program = fhirSentinel,
    Object? programStatus = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ImmunizationProgramEligibility(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        program: identical(program, fhirSentinel)
            ? _value.program
            : (program as CodeableConcept?) ?? _value.program,
        programStatus: identical(programStatus, fhirSentinel)
            ? _value.programStatus
            : (programStatus as CodeableConcept?) ?? _value.programStatus,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ImmunizationProgramEligibilityCopyWithExtension
    on ImmunizationProgramEligibility {
  $ImmunizationProgramEligibilityCopyWith<ImmunizationProgramEligibility>
      get copyWith => _$ImmunizationProgramEligibilityCopyWithImpl<
              ImmunizationProgramEligibility>(
            this,
            (value) => value,
          );
}

abstract class $ImmunizationReactionCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirDateTime? date,
    CodeableReference? manifestation,
    FhirBoolean? reported,
    bool? disallowExtensions,
  });
}

class _$ImmunizationReactionCopyWithImpl<T>
    implements $ImmunizationReactionCopyWith<T> {
  final ImmunizationReaction _value;
  final T Function(ImmunizationReaction) _then;

  _$ImmunizationReactionCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? date = fhirSentinel,
    Object? manifestation = fhirSentinel,
    Object? reported = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ImmunizationReaction(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        date:
            identical(date, fhirSentinel) ? _value.date : date as FhirDateTime?,
        manifestation: identical(manifestation, fhirSentinel)
            ? _value.manifestation
            : manifestation as CodeableReference?,
        reported: identical(reported, fhirSentinel)
            ? _value.reported
            : reported as FhirBoolean?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ImmunizationReactionCopyWithExtension on ImmunizationReaction {
  $ImmunizationReactionCopyWith<ImmunizationReaction> get copyWith =>
      _$ImmunizationReactionCopyWithImpl<ImmunizationReaction>(
        this,
        (value) => value,
      );
}

abstract class $ImmunizationProtocolAppliedCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? series,
    Reference? authority,
    List<CodeableConcept>? targetDisease,
    FhirString? doseNumber,
    FhirString? seriesDoses,
    bool? disallowExtensions,
  });
}

class _$ImmunizationProtocolAppliedCopyWithImpl<T>
    implements $ImmunizationProtocolAppliedCopyWith<T> {
  final ImmunizationProtocolApplied _value;
  final T Function(ImmunizationProtocolApplied) _then;

  _$ImmunizationProtocolAppliedCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? series = fhirSentinel,
    Object? authority = fhirSentinel,
    Object? targetDisease = fhirSentinel,
    Object? doseNumber = fhirSentinel,
    Object? seriesDoses = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ImmunizationProtocolApplied(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        series: identical(series, fhirSentinel)
            ? _value.series
            : series as FhirString?,
        authority: identical(authority, fhirSentinel)
            ? _value.authority
            : authority as Reference?,
        targetDisease: identical(targetDisease, fhirSentinel)
            ? _value.targetDisease
            : targetDisease as List<CodeableConcept>?,
        doseNumber: identical(doseNumber, fhirSentinel)
            ? _value.doseNumber
            : (doseNumber as FhirString?) ?? _value.doseNumber,
        seriesDoses: identical(seriesDoses, fhirSentinel)
            ? _value.seriesDoses
            : seriesDoses as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ImmunizationProtocolAppliedCopyWithExtension
    on ImmunizationProtocolApplied {
  $ImmunizationProtocolAppliedCopyWith<ImmunizationProtocolApplied>
      get copyWith => _$ImmunizationProtocolAppliedCopyWithImpl<
              ImmunizationProtocolApplied>(
            this,
            (value) => value,
          );
}
