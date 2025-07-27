// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'condition_definition.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $ConditionDefinitionCopyWith<T>
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
    FhirString? subtitle,
    PublicationStatus? status,
    FhirBoolean? experimental,
    FhirDateTime? date,
    FhirString? publisher,
    List<ContactDetail>? contact,
    FhirMarkdown? description,
    List<UsageContext>? useContext,
    List<CodeableConcept>? jurisdiction,
    CodeableConcept? code,
    CodeableConcept? severity,
    CodeableConcept? bodySite,
    CodeableConcept? stage,
    FhirBoolean? hasSeverity,
    FhirBoolean? hasBodySite,
    FhirBoolean? hasStage,
    List<FhirUri>? definition,
    List<ConditionDefinitionObservation>? observation,
    List<ConditionDefinitionMedication>? medication,
    List<ConditionDefinitionPrecondition>? precondition,
    List<Reference>? team,
    List<ConditionDefinitionQuestionnaire>? questionnaire,
    List<ConditionDefinitionPlan>? plan,
    bool? disallowExtensions,
  });
}

class _$ConditionDefinitionCopyWithImpl<T>
    implements $ConditionDefinitionCopyWith<T> {
  final ConditionDefinition _value;
  final T Function(ConditionDefinition) _then;

  _$ConditionDefinitionCopyWithImpl(this._value, this._then);

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
    Object? date = fhirSentinel,
    Object? publisher = fhirSentinel,
    Object? contact = fhirSentinel,
    Object? description = fhirSentinel,
    Object? useContext = fhirSentinel,
    Object? jurisdiction = fhirSentinel,
    Object? code = fhirSentinel,
    Object? severity = fhirSentinel,
    Object? bodySite = fhirSentinel,
    Object? stage = fhirSentinel,
    Object? hasSeverity = fhirSentinel,
    Object? hasBodySite = fhirSentinel,
    Object? hasStage = fhirSentinel,
    Object? definition = fhirSentinel,
    Object? observation = fhirSentinel,
    Object? medication = fhirSentinel,
    Object? precondition = fhirSentinel,
    Object? team = fhirSentinel,
    Object? questionnaire = fhirSentinel,
    Object? plan = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ConditionDefinition(
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
        subtitle: identical(subtitle, fhirSentinel)
            ? _value.subtitle
            : subtitle as FhirString?,
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
        code: identical(code, fhirSentinel)
            ? _value.code
            : (code as CodeableConcept?) ?? _value.code,
        severity: identical(severity, fhirSentinel)
            ? _value.severity
            : severity as CodeableConcept?,
        bodySite: identical(bodySite, fhirSentinel)
            ? _value.bodySite
            : bodySite as CodeableConcept?,
        stage: identical(stage, fhirSentinel)
            ? _value.stage
            : stage as CodeableConcept?,
        hasSeverity: identical(hasSeverity, fhirSentinel)
            ? _value.hasSeverity
            : hasSeverity as FhirBoolean?,
        hasBodySite: identical(hasBodySite, fhirSentinel)
            ? _value.hasBodySite
            : hasBodySite as FhirBoolean?,
        hasStage: identical(hasStage, fhirSentinel)
            ? _value.hasStage
            : hasStage as FhirBoolean?,
        definition: identical(definition, fhirSentinel)
            ? _value.definition
            : definition as List<FhirUri>?,
        observation: identical(observation, fhirSentinel)
            ? _value.observation
            : observation as List<ConditionDefinitionObservation>?,
        medication: identical(medication, fhirSentinel)
            ? _value.medication
            : medication as List<ConditionDefinitionMedication>?,
        precondition: identical(precondition, fhirSentinel)
            ? _value.precondition
            : precondition as List<ConditionDefinitionPrecondition>?,
        team: identical(team, fhirSentinel)
            ? _value.team
            : team as List<Reference>?,
        questionnaire: identical(questionnaire, fhirSentinel)
            ? _value.questionnaire
            : questionnaire as List<ConditionDefinitionQuestionnaire>?,
        plan: identical(plan, fhirSentinel)
            ? _value.plan
            : plan as List<ConditionDefinitionPlan>?,
      ),
    );
  }
}

extension ConditionDefinitionCopyWithExtension on ConditionDefinition {
  $ConditionDefinitionCopyWith<ConditionDefinition> get copyWith =>
      _$ConditionDefinitionCopyWithImpl<ConditionDefinition>(
        this,
        (value) => value,
      );
}

abstract class $ConditionDefinitionObservationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? category,
    CodeableConcept? code,
    bool? disallowExtensions,
  });
}

class _$ConditionDefinitionObservationCopyWithImpl<T>
    implements $ConditionDefinitionObservationCopyWith<T> {
  final ConditionDefinitionObservation _value;
  final T Function(ConditionDefinitionObservation) _then;

  _$ConditionDefinitionObservationCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? category = fhirSentinel,
    Object? code = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ConditionDefinitionObservation(
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

extension ConditionDefinitionObservationCopyWithExtension
    on ConditionDefinitionObservation {
  $ConditionDefinitionObservationCopyWith<ConditionDefinitionObservation>
      get copyWith => _$ConditionDefinitionObservationCopyWithImpl<
              ConditionDefinitionObservation>(
            this,
            (value) => value,
          );
}

abstract class $ConditionDefinitionMedicationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? category,
    CodeableConcept? code,
    bool? disallowExtensions,
  });
}

class _$ConditionDefinitionMedicationCopyWithImpl<T>
    implements $ConditionDefinitionMedicationCopyWith<T> {
  final ConditionDefinitionMedication _value;
  final T Function(ConditionDefinitionMedication) _then;

  _$ConditionDefinitionMedicationCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? category = fhirSentinel,
    Object? code = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ConditionDefinitionMedication(
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

extension ConditionDefinitionMedicationCopyWithExtension
    on ConditionDefinitionMedication {
  $ConditionDefinitionMedicationCopyWith<ConditionDefinitionMedication>
      get copyWith => _$ConditionDefinitionMedicationCopyWithImpl<
              ConditionDefinitionMedication>(
            this,
            (value) => value,
          );
}

abstract class $ConditionDefinitionPreconditionCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ConditionPreconditionType? type,
    CodeableConcept? code,
    CodeableConcept? valueX,
    bool? disallowExtensions,
  });
}

class _$ConditionDefinitionPreconditionCopyWithImpl<T>
    implements $ConditionDefinitionPreconditionCopyWith<T> {
  final ConditionDefinitionPrecondition _value;
  final T Function(ConditionDefinitionPrecondition) _then;

  _$ConditionDefinitionPreconditionCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? code = fhirSentinel,
    Object? valueX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ConditionDefinitionPrecondition(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : (type as ConditionPreconditionType?) ?? _value.type,
        code: identical(code, fhirSentinel)
            ? _value.code
            : (code as CodeableConcept?) ?? _value.code,
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

extension ConditionDefinitionPreconditionCopyWithExtension
    on ConditionDefinitionPrecondition {
  $ConditionDefinitionPreconditionCopyWith<ConditionDefinitionPrecondition>
      get copyWith => _$ConditionDefinitionPreconditionCopyWithImpl<
              ConditionDefinitionPrecondition>(
            this,
            (value) => value,
          );
}

abstract class $ConditionDefinitionQuestionnaireCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ConditionQuestionnairePurpose? purpose,
    Reference? reference,
    bool? disallowExtensions,
  });
}

class _$ConditionDefinitionQuestionnaireCopyWithImpl<T>
    implements $ConditionDefinitionQuestionnaireCopyWith<T> {
  final ConditionDefinitionQuestionnaire _value;
  final T Function(ConditionDefinitionQuestionnaire) _then;

  _$ConditionDefinitionQuestionnaireCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? purpose = fhirSentinel,
    Object? reference = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ConditionDefinitionQuestionnaire(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        purpose: identical(purpose, fhirSentinel)
            ? _value.purpose
            : (purpose as ConditionQuestionnairePurpose?) ?? _value.purpose,
        reference: identical(reference, fhirSentinel)
            ? _value.reference
            : (reference as Reference?) ?? _value.reference,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ConditionDefinitionQuestionnaireCopyWithExtension
    on ConditionDefinitionQuestionnaire {
  $ConditionDefinitionQuestionnaireCopyWith<ConditionDefinitionQuestionnaire>
      get copyWith => _$ConditionDefinitionQuestionnaireCopyWithImpl<
              ConditionDefinitionQuestionnaire>(
            this,
            (value) => value,
          );
}

abstract class $ConditionDefinitionPlanCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? role,
    Reference? reference,
    bool? disallowExtensions,
  });
}

class _$ConditionDefinitionPlanCopyWithImpl<T>
    implements $ConditionDefinitionPlanCopyWith<T> {
  final ConditionDefinitionPlan _value;
  final T Function(ConditionDefinitionPlan) _then;

  _$ConditionDefinitionPlanCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? role = fhirSentinel,
    Object? reference = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ConditionDefinitionPlan(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        role: identical(role, fhirSentinel)
            ? _value.role
            : role as CodeableConcept?,
        reference: identical(reference, fhirSentinel)
            ? _value.reference
            : (reference as Reference?) ?? _value.reference,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ConditionDefinitionPlanCopyWithExtension on ConditionDefinitionPlan {
  $ConditionDefinitionPlanCopyWith<ConditionDefinitionPlan> get copyWith =>
      _$ConditionDefinitionPlanCopyWithImpl<ConditionDefinitionPlan>(
        this,
        (value) => value,
      );
}
