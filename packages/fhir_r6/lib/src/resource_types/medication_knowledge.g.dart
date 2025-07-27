// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'medication_knowledge.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $MedicationKnowledgeCopyWith<T>
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
    CodeableConcept? code,
    MedicationKnowledgeStatusCodes? status,
    Reference? author,
    List<CodeableConcept>? intendedJurisdiction,
    List<FhirString>? name,
    List<MedicationKnowledgeRelatedMedicationKnowledge>?
        relatedMedicationKnowledge,
    List<Reference>? associatedMedication,
    List<CodeableConcept>? productType,
    List<MedicationKnowledgeMonograph>? monograph,
    FhirMarkdown? preparationInstruction,
    List<MedicationKnowledgeCost>? cost,
    List<MedicationKnowledgeMonitoringProgram>? monitoringProgram,
    List<MedicationKnowledgeIndicationGuideline>? indicationGuideline,
    List<MedicationKnowledgeMedicineClassification>? medicineClassification,
    List<MedicationKnowledgePackaging>? packaging,
    List<Reference>? clinicalUseIssue,
    List<MedicationKnowledgeStorageGuideline>? storageGuideline,
    List<MedicationKnowledgeRegulatory>? regulatory,
    MedicationKnowledgeDefinitional? definitional,
    bool? disallowExtensions,
  });
}

class _$MedicationKnowledgeCopyWithImpl<T>
    implements $MedicationKnowledgeCopyWith<T> {
  final MedicationKnowledge _value;
  final T Function(MedicationKnowledge) _then;

  _$MedicationKnowledgeCopyWithImpl(this._value, this._then);

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
    Object? code = fhirSentinel,
    Object? status = fhirSentinel,
    Object? author = fhirSentinel,
    Object? intendedJurisdiction = fhirSentinel,
    Object? name = fhirSentinel,
    Object? relatedMedicationKnowledge = fhirSentinel,
    Object? associatedMedication = fhirSentinel,
    Object? productType = fhirSentinel,
    Object? monograph = fhirSentinel,
    Object? preparationInstruction = fhirSentinel,
    Object? cost = fhirSentinel,
    Object? monitoringProgram = fhirSentinel,
    Object? indicationGuideline = fhirSentinel,
    Object? medicineClassification = fhirSentinel,
    Object? packaging = fhirSentinel,
    Object? clinicalUseIssue = fhirSentinel,
    Object? storageGuideline = fhirSentinel,
    Object? regulatory = fhirSentinel,
    Object? definitional = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MedicationKnowledge(
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
        code: identical(code, fhirSentinel)
            ? _value.code
            : code as CodeableConcept?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : status as MedicationKnowledgeStatusCodes?,
        author: identical(author, fhirSentinel)
            ? _value.author
            : author as Reference?,
        intendedJurisdiction: identical(intendedJurisdiction, fhirSentinel)
            ? _value.intendedJurisdiction
            : intendedJurisdiction as List<CodeableConcept>?,
        name: identical(name, fhirSentinel)
            ? _value.name
            : name as List<FhirString>?,
        relatedMedicationKnowledge:
            identical(relatedMedicationKnowledge, fhirSentinel)
                ? _value.relatedMedicationKnowledge
                : relatedMedicationKnowledge
                    as List<MedicationKnowledgeRelatedMedicationKnowledge>?,
        associatedMedication: identical(associatedMedication, fhirSentinel)
            ? _value.associatedMedication
            : associatedMedication as List<Reference>?,
        productType: identical(productType, fhirSentinel)
            ? _value.productType
            : productType as List<CodeableConcept>?,
        monograph: identical(monograph, fhirSentinel)
            ? _value.monograph
            : monograph as List<MedicationKnowledgeMonograph>?,
        preparationInstruction: identical(preparationInstruction, fhirSentinel)
            ? _value.preparationInstruction
            : preparationInstruction as FhirMarkdown?,
        cost: identical(cost, fhirSentinel)
            ? _value.cost
            : cost as List<MedicationKnowledgeCost>?,
        monitoringProgram: identical(monitoringProgram, fhirSentinel)
            ? _value.monitoringProgram
            : monitoringProgram as List<MedicationKnowledgeMonitoringProgram>?,
        indicationGuideline: identical(indicationGuideline, fhirSentinel)
            ? _value.indicationGuideline
            : indicationGuideline
                as List<MedicationKnowledgeIndicationGuideline>?,
        medicineClassification: identical(medicineClassification, fhirSentinel)
            ? _value.medicineClassification
            : medicineClassification
                as List<MedicationKnowledgeMedicineClassification>?,
        packaging: identical(packaging, fhirSentinel)
            ? _value.packaging
            : packaging as List<MedicationKnowledgePackaging>?,
        clinicalUseIssue: identical(clinicalUseIssue, fhirSentinel)
            ? _value.clinicalUseIssue
            : clinicalUseIssue as List<Reference>?,
        storageGuideline: identical(storageGuideline, fhirSentinel)
            ? _value.storageGuideline
            : storageGuideline as List<MedicationKnowledgeStorageGuideline>?,
        regulatory: identical(regulatory, fhirSentinel)
            ? _value.regulatory
            : regulatory as List<MedicationKnowledgeRegulatory>?,
        definitional: identical(definitional, fhirSentinel)
            ? _value.definitional
            : definitional as MedicationKnowledgeDefinitional?,
      ),
    );
  }
}

extension MedicationKnowledgeCopyWithExtension on MedicationKnowledge {
  $MedicationKnowledgeCopyWith<MedicationKnowledge> get copyWith =>
      _$MedicationKnowledgeCopyWithImpl<MedicationKnowledge>(
        this,
        (value) => value,
      );
}

abstract class $MedicationKnowledgeRelatedMedicationKnowledgeCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    List<Reference>? reference,
    bool? disallowExtensions,
  });
}

class _$MedicationKnowledgeRelatedMedicationKnowledgeCopyWithImpl<T>
    implements $MedicationKnowledgeRelatedMedicationKnowledgeCopyWith<T> {
  final MedicationKnowledgeRelatedMedicationKnowledge _value;
  final T Function(MedicationKnowledgeRelatedMedicationKnowledge) _then;

  _$MedicationKnowledgeRelatedMedicationKnowledgeCopyWithImpl(
    this._value,
    this._then,
  );

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? reference = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MedicationKnowledgeRelatedMedicationKnowledge(
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
        reference: identical(reference, fhirSentinel)
            ? _value.reference
            : (reference as List<Reference>?) ?? _value.reference,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MedicationKnowledgeRelatedMedicationKnowledgeCopyWithExtension
    on MedicationKnowledgeRelatedMedicationKnowledge {
  $MedicationKnowledgeRelatedMedicationKnowledgeCopyWith<
          MedicationKnowledgeRelatedMedicationKnowledge>
      get copyWith =>
          _$MedicationKnowledgeRelatedMedicationKnowledgeCopyWithImpl<
              MedicationKnowledgeRelatedMedicationKnowledge>(
            this,
            (value) => value,
          );
}

abstract class $MedicationKnowledgeMonographCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    Reference? source,
    bool? disallowExtensions,
  });
}

class _$MedicationKnowledgeMonographCopyWithImpl<T>
    implements $MedicationKnowledgeMonographCopyWith<T> {
  final MedicationKnowledgeMonograph _value;
  final T Function(MedicationKnowledgeMonograph) _then;

  _$MedicationKnowledgeMonographCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? source = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MedicationKnowledgeMonograph(
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
        source: identical(source, fhirSentinel)
            ? _value.source
            : source as Reference?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MedicationKnowledgeMonographCopyWithExtension
    on MedicationKnowledgeMonograph {
  $MedicationKnowledgeMonographCopyWith<MedicationKnowledgeMonograph>
      get copyWith => _$MedicationKnowledgeMonographCopyWithImpl<
              MedicationKnowledgeMonograph>(
            this,
            (value) => value,
          );
}

abstract class $MedicationKnowledgeCostCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Period>? effectiveDate,
    CodeableConcept? type,
    FhirString? source,
    Money? costX,
    bool? disallowExtensions,
  });
}

class _$MedicationKnowledgeCostCopyWithImpl<T>
    implements $MedicationKnowledgeCostCopyWith<T> {
  final MedicationKnowledgeCost _value;
  final T Function(MedicationKnowledgeCost) _then;

  _$MedicationKnowledgeCostCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? effectiveDate = fhirSentinel,
    Object? type = fhirSentinel,
    Object? source = fhirSentinel,
    Object? costX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MedicationKnowledgeCost(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        effectiveDate: identical(effectiveDate, fhirSentinel)
            ? _value.effectiveDate
            : effectiveDate as List<Period>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : (type as CodeableConcept?) ?? _value.type,
        source: identical(source, fhirSentinel)
            ? _value.source
            : source as FhirString?,
        costX: identical(costX, fhirSentinel)
            ? _value.costX
            : (costX as Money?) ?? _value.costX,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MedicationKnowledgeCostCopyWithExtension on MedicationKnowledgeCost {
  $MedicationKnowledgeCostCopyWith<MedicationKnowledgeCost> get copyWith =>
      _$MedicationKnowledgeCostCopyWithImpl<MedicationKnowledgeCost>(
        this,
        (value) => value,
      );
}

abstract class $MedicationKnowledgeMonitoringProgramCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    FhirString? name,
    bool? disallowExtensions,
  });
}

class _$MedicationKnowledgeMonitoringProgramCopyWithImpl<T>
    implements $MedicationKnowledgeMonitoringProgramCopyWith<T> {
  final MedicationKnowledgeMonitoringProgram _value;
  final T Function(MedicationKnowledgeMonitoringProgram) _then;

  _$MedicationKnowledgeMonitoringProgramCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? name = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MedicationKnowledgeMonitoringProgram(
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
        name: identical(name, fhirSentinel) ? _value.name : name as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MedicationKnowledgeMonitoringProgramCopyWithExtension
    on MedicationKnowledgeMonitoringProgram {
  $MedicationKnowledgeMonitoringProgramCopyWith<
          MedicationKnowledgeMonitoringProgram>
      get copyWith => _$MedicationKnowledgeMonitoringProgramCopyWithImpl<
              MedicationKnowledgeMonitoringProgram>(
            this,
            (value) => value,
          );
}

abstract class $MedicationKnowledgeIndicationGuidelineCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CodeableReference>? indication,
    List<MedicationKnowledgeDosingGuideline>? dosingGuideline,
    bool? disallowExtensions,
  });
}

class _$MedicationKnowledgeIndicationGuidelineCopyWithImpl<T>
    implements $MedicationKnowledgeIndicationGuidelineCopyWith<T> {
  final MedicationKnowledgeIndicationGuideline _value;
  final T Function(MedicationKnowledgeIndicationGuideline) _then;

  _$MedicationKnowledgeIndicationGuidelineCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? indication = fhirSentinel,
    Object? dosingGuideline = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MedicationKnowledgeIndicationGuideline(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        indication: identical(indication, fhirSentinel)
            ? _value.indication
            : indication as List<CodeableReference>?,
        dosingGuideline: identical(dosingGuideline, fhirSentinel)
            ? _value.dosingGuideline
            : dosingGuideline as List<MedicationKnowledgeDosingGuideline>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MedicationKnowledgeIndicationGuidelineCopyWithExtension
    on MedicationKnowledgeIndicationGuideline {
  $MedicationKnowledgeIndicationGuidelineCopyWith<
          MedicationKnowledgeIndicationGuideline>
      get copyWith => _$MedicationKnowledgeIndicationGuidelineCopyWithImpl<
              MedicationKnowledgeIndicationGuideline>(
            this,
            (value) => value,
          );
}

abstract class $MedicationKnowledgeDosingGuidelineCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? treatmentIntent,
    List<MedicationKnowledgeDosage>? dosage,
    CodeableConcept? administrationTreatment,
    List<MedicationKnowledgePatientCharacteristic>? patientCharacteristic,
    bool? disallowExtensions,
  });
}

class _$MedicationKnowledgeDosingGuidelineCopyWithImpl<T>
    implements $MedicationKnowledgeDosingGuidelineCopyWith<T> {
  final MedicationKnowledgeDosingGuideline _value;
  final T Function(MedicationKnowledgeDosingGuideline) _then;

  _$MedicationKnowledgeDosingGuidelineCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? treatmentIntent = fhirSentinel,
    Object? dosage = fhirSentinel,
    Object? administrationTreatment = fhirSentinel,
    Object? patientCharacteristic = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MedicationKnowledgeDosingGuideline(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        treatmentIntent: identical(treatmentIntent, fhirSentinel)
            ? _value.treatmentIntent
            : treatmentIntent as CodeableConcept?,
        dosage: identical(dosage, fhirSentinel)
            ? _value.dosage
            : dosage as List<MedicationKnowledgeDosage>?,
        administrationTreatment:
            identical(administrationTreatment, fhirSentinel)
                ? _value.administrationTreatment
                : administrationTreatment as CodeableConcept?,
        patientCharacteristic: identical(patientCharacteristic, fhirSentinel)
            ? _value.patientCharacteristic
            : patientCharacteristic
                as List<MedicationKnowledgePatientCharacteristic>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MedicationKnowledgeDosingGuidelineCopyWithExtension
    on MedicationKnowledgeDosingGuideline {
  $MedicationKnowledgeDosingGuidelineCopyWith<
          MedicationKnowledgeDosingGuideline>
      get copyWith => _$MedicationKnowledgeDosingGuidelineCopyWithImpl<
              MedicationKnowledgeDosingGuideline>(
            this,
            (value) => value,
          );
}

abstract class $MedicationKnowledgeDosageCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    List<Dosage>? dosage,
    bool? disallowExtensions,
  });
}

class _$MedicationKnowledgeDosageCopyWithImpl<T>
    implements $MedicationKnowledgeDosageCopyWith<T> {
  final MedicationKnowledgeDosage _value;
  final T Function(MedicationKnowledgeDosage) _then;

  _$MedicationKnowledgeDosageCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? dosage = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MedicationKnowledgeDosage(
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
        dosage: identical(dosage, fhirSentinel)
            ? _value.dosage
            : (dosage as List<Dosage>?) ?? _value.dosage,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MedicationKnowledgeDosageCopyWithExtension
    on MedicationKnowledgeDosage {
  $MedicationKnowledgeDosageCopyWith<MedicationKnowledgeDosage> get copyWith =>
      _$MedicationKnowledgeDosageCopyWithImpl<MedicationKnowledgeDosage>(
        this,
        (value) => value,
      );
}

abstract class $MedicationKnowledgePatientCharacteristicCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    CodeableConcept? valueX,
    bool? disallowExtensions,
  });
}

class _$MedicationKnowledgePatientCharacteristicCopyWithImpl<T>
    implements $MedicationKnowledgePatientCharacteristicCopyWith<T> {
  final MedicationKnowledgePatientCharacteristic _value;
  final T Function(MedicationKnowledgePatientCharacteristic) _then;

  _$MedicationKnowledgePatientCharacteristicCopyWithImpl(
    this._value,
    this._then,
  );

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
      MedicationKnowledgePatientCharacteristic(
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
            : valueX as CodeableConcept?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MedicationKnowledgePatientCharacteristicCopyWithExtension
    on MedicationKnowledgePatientCharacteristic {
  $MedicationKnowledgePatientCharacteristicCopyWith<
          MedicationKnowledgePatientCharacteristic>
      get copyWith => _$MedicationKnowledgePatientCharacteristicCopyWithImpl<
              MedicationKnowledgePatientCharacteristic>(
            this,
            (value) => value,
          );
}

abstract class $MedicationKnowledgeMedicineClassificationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    FhirString? sourceX,
    List<CodeableConcept>? classification,
    bool? disallowExtensions,
  });
}

class _$MedicationKnowledgeMedicineClassificationCopyWithImpl<T>
    implements $MedicationKnowledgeMedicineClassificationCopyWith<T> {
  final MedicationKnowledgeMedicineClassification _value;
  final T Function(MedicationKnowledgeMedicineClassification) _then;

  _$MedicationKnowledgeMedicineClassificationCopyWithImpl(
    this._value,
    this._then,
  );

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? sourceX = fhirSentinel,
    Object? classification = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MedicationKnowledgeMedicineClassification(
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
        sourceX: identical(sourceX, fhirSentinel)
            ? _value.sourceX
            : sourceX as FhirString?,
        classification: identical(classification, fhirSentinel)
            ? _value.classification
            : classification as List<CodeableConcept>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MedicationKnowledgeMedicineClassificationCopyWithExtension
    on MedicationKnowledgeMedicineClassification {
  $MedicationKnowledgeMedicineClassificationCopyWith<
          MedicationKnowledgeMedicineClassification>
      get copyWith => _$MedicationKnowledgeMedicineClassificationCopyWithImpl<
              MedicationKnowledgeMedicineClassification>(
            this,
            (value) => value,
          );
}

abstract class $MedicationKnowledgePackagingCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<MedicationKnowledgeCost>? cost,
    Reference? packagedProduct,
    bool? disallowExtensions,
  });
}

class _$MedicationKnowledgePackagingCopyWithImpl<T>
    implements $MedicationKnowledgePackagingCopyWith<T> {
  final MedicationKnowledgePackaging _value;
  final T Function(MedicationKnowledgePackaging) _then;

  _$MedicationKnowledgePackagingCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? cost = fhirSentinel,
    Object? packagedProduct = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MedicationKnowledgePackaging(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        cost: identical(cost, fhirSentinel)
            ? _value.cost
            : cost as List<MedicationKnowledgeCost>?,
        packagedProduct: identical(packagedProduct, fhirSentinel)
            ? _value.packagedProduct
            : packagedProduct as Reference?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MedicationKnowledgePackagingCopyWithExtension
    on MedicationKnowledgePackaging {
  $MedicationKnowledgePackagingCopyWith<MedicationKnowledgePackaging>
      get copyWith => _$MedicationKnowledgePackagingCopyWithImpl<
              MedicationKnowledgePackaging>(
            this,
            (value) => value,
          );
}

abstract class $MedicationKnowledgeStorageGuidelineCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUri? reference,
    List<Annotation>? note,
    FhirDuration? stabilityDuration,
    List<MedicationKnowledgeEnvironmentalSetting>? environmentalSetting,
    bool? disallowExtensions,
  });
}

class _$MedicationKnowledgeStorageGuidelineCopyWithImpl<T>
    implements $MedicationKnowledgeStorageGuidelineCopyWith<T> {
  final MedicationKnowledgeStorageGuideline _value;
  final T Function(MedicationKnowledgeStorageGuideline) _then;

  _$MedicationKnowledgeStorageGuidelineCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? reference = fhirSentinel,
    Object? note = fhirSentinel,
    Object? stabilityDuration = fhirSentinel,
    Object? environmentalSetting = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MedicationKnowledgeStorageGuideline(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        reference: identical(reference, fhirSentinel)
            ? _value.reference
            : reference as FhirUri?,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
        stabilityDuration: identical(stabilityDuration, fhirSentinel)
            ? _value.stabilityDuration
            : stabilityDuration as FhirDuration?,
        environmentalSetting: identical(environmentalSetting, fhirSentinel)
            ? _value.environmentalSetting
            : environmentalSetting
                as List<MedicationKnowledgeEnvironmentalSetting>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MedicationKnowledgeStorageGuidelineCopyWithExtension
    on MedicationKnowledgeStorageGuideline {
  $MedicationKnowledgeStorageGuidelineCopyWith<
          MedicationKnowledgeStorageGuideline>
      get copyWith => _$MedicationKnowledgeStorageGuidelineCopyWithImpl<
              MedicationKnowledgeStorageGuideline>(
            this,
            (value) => value,
          );
}

abstract class $MedicationKnowledgeEnvironmentalSettingCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    Quantity? valueX,
    bool? disallowExtensions,
  });
}

class _$MedicationKnowledgeEnvironmentalSettingCopyWithImpl<T>
    implements $MedicationKnowledgeEnvironmentalSettingCopyWith<T> {
  final MedicationKnowledgeEnvironmentalSetting _value;
  final T Function(MedicationKnowledgeEnvironmentalSetting) _then;

  _$MedicationKnowledgeEnvironmentalSettingCopyWithImpl(
    this._value,
    this._then,
  );

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
      MedicationKnowledgeEnvironmentalSetting(
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
            : (valueX as Quantity?) ?? _value.valueX,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MedicationKnowledgeEnvironmentalSettingCopyWithExtension
    on MedicationKnowledgeEnvironmentalSetting {
  $MedicationKnowledgeEnvironmentalSettingCopyWith<
          MedicationKnowledgeEnvironmentalSetting>
      get copyWith => _$MedicationKnowledgeEnvironmentalSettingCopyWithImpl<
              MedicationKnowledgeEnvironmentalSetting>(
            this,
            (value) => value,
          );
}

abstract class $MedicationKnowledgeRegulatoryCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? regulatoryAuthority,
    List<MedicationKnowledgeSubstitution>? substitution,
    List<CodeableConcept>? schedule,
    MedicationKnowledgeMaxDispense? maxDispense,
    bool? disallowExtensions,
  });
}

class _$MedicationKnowledgeRegulatoryCopyWithImpl<T>
    implements $MedicationKnowledgeRegulatoryCopyWith<T> {
  final MedicationKnowledgeRegulatory _value;
  final T Function(MedicationKnowledgeRegulatory) _then;

  _$MedicationKnowledgeRegulatoryCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? regulatoryAuthority = fhirSentinel,
    Object? substitution = fhirSentinel,
    Object? schedule = fhirSentinel,
    Object? maxDispense = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MedicationKnowledgeRegulatory(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        regulatoryAuthority: identical(regulatoryAuthority, fhirSentinel)
            ? _value.regulatoryAuthority
            : (regulatoryAuthority as Reference?) ?? _value.regulatoryAuthority,
        substitution: identical(substitution, fhirSentinel)
            ? _value.substitution
            : substitution as List<MedicationKnowledgeSubstitution>?,
        schedule: identical(schedule, fhirSentinel)
            ? _value.schedule
            : schedule as List<CodeableConcept>?,
        maxDispense: identical(maxDispense, fhirSentinel)
            ? _value.maxDispense
            : maxDispense as MedicationKnowledgeMaxDispense?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MedicationKnowledgeRegulatoryCopyWithExtension
    on MedicationKnowledgeRegulatory {
  $MedicationKnowledgeRegulatoryCopyWith<MedicationKnowledgeRegulatory>
      get copyWith => _$MedicationKnowledgeRegulatoryCopyWithImpl<
              MedicationKnowledgeRegulatory>(
            this,
            (value) => value,
          );
}

abstract class $MedicationKnowledgeSubstitutionCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    FhirBoolean? allowed,
    bool? disallowExtensions,
  });
}

class _$MedicationKnowledgeSubstitutionCopyWithImpl<T>
    implements $MedicationKnowledgeSubstitutionCopyWith<T> {
  final MedicationKnowledgeSubstitution _value;
  final T Function(MedicationKnowledgeSubstitution) _then;

  _$MedicationKnowledgeSubstitutionCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? allowed = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MedicationKnowledgeSubstitution(
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
        allowed: identical(allowed, fhirSentinel)
            ? _value.allowed
            : (allowed as FhirBoolean?) ?? _value.allowed,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MedicationKnowledgeSubstitutionCopyWithExtension
    on MedicationKnowledgeSubstitution {
  $MedicationKnowledgeSubstitutionCopyWith<MedicationKnowledgeSubstitution>
      get copyWith => _$MedicationKnowledgeSubstitutionCopyWithImpl<
              MedicationKnowledgeSubstitution>(
            this,
            (value) => value,
          );
}

abstract class $MedicationKnowledgeMaxDispenseCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Quantity? quantity,
    FhirDuration? period,
    bool? disallowExtensions,
  });
}

class _$MedicationKnowledgeMaxDispenseCopyWithImpl<T>
    implements $MedicationKnowledgeMaxDispenseCopyWith<T> {
  final MedicationKnowledgeMaxDispense _value;
  final T Function(MedicationKnowledgeMaxDispense) _then;

  _$MedicationKnowledgeMaxDispenseCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? quantity = fhirSentinel,
    Object? period = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MedicationKnowledgeMaxDispense(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        quantity: identical(quantity, fhirSentinel)
            ? _value.quantity
            : (quantity as Quantity?) ?? _value.quantity,
        period: identical(period, fhirSentinel)
            ? _value.period
            : period as FhirDuration?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MedicationKnowledgeMaxDispenseCopyWithExtension
    on MedicationKnowledgeMaxDispense {
  $MedicationKnowledgeMaxDispenseCopyWith<MedicationKnowledgeMaxDispense>
      get copyWith => _$MedicationKnowledgeMaxDispenseCopyWithImpl<
              MedicationKnowledgeMaxDispense>(
            this,
            (value) => value,
          );
}

abstract class $MedicationKnowledgeDefinitionalCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Reference>? definition,
    CodeableConcept? doseForm,
    List<CodeableConcept>? intendedRoute,
    List<MedicationKnowledgeIngredient>? ingredient,
    List<MedicationKnowledgeDrugCharacteristic>? drugCharacteristic,
    bool? disallowExtensions,
  });
}

class _$MedicationKnowledgeDefinitionalCopyWithImpl<T>
    implements $MedicationKnowledgeDefinitionalCopyWith<T> {
  final MedicationKnowledgeDefinitional _value;
  final T Function(MedicationKnowledgeDefinitional) _then;

  _$MedicationKnowledgeDefinitionalCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? definition = fhirSentinel,
    Object? doseForm = fhirSentinel,
    Object? intendedRoute = fhirSentinel,
    Object? ingredient = fhirSentinel,
    Object? drugCharacteristic = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MedicationKnowledgeDefinitional(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        definition: identical(definition, fhirSentinel)
            ? _value.definition
            : definition as List<Reference>?,
        doseForm: identical(doseForm, fhirSentinel)
            ? _value.doseForm
            : doseForm as CodeableConcept?,
        intendedRoute: identical(intendedRoute, fhirSentinel)
            ? _value.intendedRoute
            : intendedRoute as List<CodeableConcept>?,
        ingredient: identical(ingredient, fhirSentinel)
            ? _value.ingredient
            : ingredient as List<MedicationKnowledgeIngredient>?,
        drugCharacteristic: identical(drugCharacteristic, fhirSentinel)
            ? _value.drugCharacteristic
            : drugCharacteristic
                as List<MedicationKnowledgeDrugCharacteristic>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MedicationKnowledgeDefinitionalCopyWithExtension
    on MedicationKnowledgeDefinitional {
  $MedicationKnowledgeDefinitionalCopyWith<MedicationKnowledgeDefinitional>
      get copyWith => _$MedicationKnowledgeDefinitionalCopyWithImpl<
              MedicationKnowledgeDefinitional>(
            this,
            (value) => value,
          );
}

abstract class $MedicationKnowledgeIngredientCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableReference? item,
    CodeableConcept? type,
    Ratio? strengthX,
    bool? disallowExtensions,
  });
}

class _$MedicationKnowledgeIngredientCopyWithImpl<T>
    implements $MedicationKnowledgeIngredientCopyWith<T> {
  final MedicationKnowledgeIngredient _value;
  final T Function(MedicationKnowledgeIngredient) _then;

  _$MedicationKnowledgeIngredientCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? item = fhirSentinel,
    Object? type = fhirSentinel,
    Object? strengthX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MedicationKnowledgeIngredient(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        item: identical(item, fhirSentinel)
            ? _value.item
            : (item as CodeableReference?) ?? _value.item,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        strengthX: identical(strengthX, fhirSentinel)
            ? _value.strengthX
            : strengthX as Ratio?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MedicationKnowledgeIngredientCopyWithExtension
    on MedicationKnowledgeIngredient {
  $MedicationKnowledgeIngredientCopyWith<MedicationKnowledgeIngredient>
      get copyWith => _$MedicationKnowledgeIngredientCopyWithImpl<
              MedicationKnowledgeIngredient>(
            this,
            (value) => value,
          );
}

abstract class $MedicationKnowledgeDrugCharacteristicCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    CodeableConcept? valueX,
    bool? disallowExtensions,
  });
}

class _$MedicationKnowledgeDrugCharacteristicCopyWithImpl<T>
    implements $MedicationKnowledgeDrugCharacteristicCopyWith<T> {
  final MedicationKnowledgeDrugCharacteristic _value;
  final T Function(MedicationKnowledgeDrugCharacteristic) _then;

  _$MedicationKnowledgeDrugCharacteristicCopyWithImpl(this._value, this._then);

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
      MedicationKnowledgeDrugCharacteristic(
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
        valueX: identical(valueX, fhirSentinel)
            ? _value.valueX
            : valueX as CodeableConcept?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MedicationKnowledgeDrugCharacteristicCopyWithExtension
    on MedicationKnowledgeDrugCharacteristic {
  $MedicationKnowledgeDrugCharacteristicCopyWith<
          MedicationKnowledgeDrugCharacteristic>
      get copyWith => _$MedicationKnowledgeDrugCharacteristicCopyWithImpl<
              MedicationKnowledgeDrugCharacteristic>(
            this,
            (value) => value,
          );
}
