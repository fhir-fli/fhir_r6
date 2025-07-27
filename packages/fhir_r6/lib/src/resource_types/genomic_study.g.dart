// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'genomic_study.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $GenomicStudyCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    GenomicStudyStatus? status,
    List<CodeableConcept>? type,
    Reference? subject,
    Reference? encounter,
    FhirDateTime? startDate,
    List<Reference>? basedOn,
    Reference? referrer,
    List<Reference>? interpreter,
    List<CodeableReference>? reason,
    FhirCanonical? instantiatesCanonical,
    FhirUri? instantiatesUri,
    List<Annotation>? note,
    FhirMarkdown? description,
    List<GenomicStudyAnalysis>? analysis,
    bool? disallowExtensions,
  });
}

class _$GenomicStudyCopyWithImpl<T> implements $GenomicStudyCopyWith<T> {
  final GenomicStudy _value;
  final T Function(GenomicStudy) _then;

  _$GenomicStudyCopyWithImpl(this._value, this._then);

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
    Object? subject = fhirSentinel,
    Object? encounter = fhirSentinel,
    Object? startDate = fhirSentinel,
    Object? basedOn = fhirSentinel,
    Object? referrer = fhirSentinel,
    Object? interpreter = fhirSentinel,
    Object? reason = fhirSentinel,
    Object? instantiatesCanonical = fhirSentinel,
    Object? instantiatesUri = fhirSentinel,
    Object? note = fhirSentinel,
    Object? description = fhirSentinel,
    Object? analysis = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      GenomicStudy(
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
            : (status as GenomicStudyStatus?) ?? _value.status,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as List<CodeableConcept>?,
        subject: identical(subject, fhirSentinel)
            ? _value.subject
            : (subject as Reference?) ?? _value.subject,
        encounter: identical(encounter, fhirSentinel)
            ? _value.encounter
            : encounter as Reference?,
        startDate: identical(startDate, fhirSentinel)
            ? _value.startDate
            : startDate as FhirDateTime?,
        basedOn: identical(basedOn, fhirSentinel)
            ? _value.basedOn
            : basedOn as List<Reference>?,
        referrer: identical(referrer, fhirSentinel)
            ? _value.referrer
            : referrer as Reference?,
        interpreter: identical(interpreter, fhirSentinel)
            ? _value.interpreter
            : interpreter as List<Reference>?,
        reason: identical(reason, fhirSentinel)
            ? _value.reason
            : reason as List<CodeableReference>?,
        instantiatesCanonical: identical(instantiatesCanonical, fhirSentinel)
            ? _value.instantiatesCanonical
            : instantiatesCanonical as FhirCanonical?,
        instantiatesUri: identical(instantiatesUri, fhirSentinel)
            ? _value.instantiatesUri
            : instantiatesUri as FhirUri?,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirMarkdown?,
        analysis: identical(analysis, fhirSentinel)
            ? _value.analysis
            : analysis as List<GenomicStudyAnalysis>?,
      ),
    );
  }
}

extension GenomicStudyCopyWithExtension on GenomicStudy {
  $GenomicStudyCopyWith<GenomicStudy> get copyWith =>
      _$GenomicStudyCopyWithImpl<GenomicStudy>(
        this,
        (value) => value,
      );
}

abstract class $GenomicStudyAnalysisCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    List<CodeableConcept>? methodType,
    List<CodeableConcept>? changeType,
    CodeableConcept? genomeBuild,
    FhirCanonical? instantiatesCanonical,
    FhirUri? instantiatesUri,
    FhirString? title,
    List<Reference>? focus,
    List<Reference>? specimen,
    FhirDateTime? date,
    List<Annotation>? note,
    Reference? protocolPerformed,
    List<Reference>? regionsStudied,
    List<Reference>? regionsCalled,
    List<GenomicStudyInput>? input,
    List<GenomicStudyOutput>? output,
    List<GenomicStudyPerformer>? performer,
    List<GenomicStudyDevice>? device,
    bool? disallowExtensions,
  });
}

class _$GenomicStudyAnalysisCopyWithImpl<T>
    implements $GenomicStudyAnalysisCopyWith<T> {
  final GenomicStudyAnalysis _value;
  final T Function(GenomicStudyAnalysis) _then;

  _$GenomicStudyAnalysisCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? identifier = fhirSentinel,
    Object? methodType = fhirSentinel,
    Object? changeType = fhirSentinel,
    Object? genomeBuild = fhirSentinel,
    Object? instantiatesCanonical = fhirSentinel,
    Object? instantiatesUri = fhirSentinel,
    Object? title = fhirSentinel,
    Object? focus = fhirSentinel,
    Object? specimen = fhirSentinel,
    Object? date = fhirSentinel,
    Object? note = fhirSentinel,
    Object? protocolPerformed = fhirSentinel,
    Object? regionsStudied = fhirSentinel,
    Object? regionsCalled = fhirSentinel,
    Object? input = fhirSentinel,
    Object? output = fhirSentinel,
    Object? performer = fhirSentinel,
    Object? device = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      GenomicStudyAnalysis(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        identifier: identical(identifier, fhirSentinel)
            ? _value.identifier
            : identifier as List<Identifier>?,
        methodType: identical(methodType, fhirSentinel)
            ? _value.methodType
            : methodType as List<CodeableConcept>?,
        changeType: identical(changeType, fhirSentinel)
            ? _value.changeType
            : changeType as List<CodeableConcept>?,
        genomeBuild: identical(genomeBuild, fhirSentinel)
            ? _value.genomeBuild
            : genomeBuild as CodeableConcept?,
        instantiatesCanonical: identical(instantiatesCanonical, fhirSentinel)
            ? _value.instantiatesCanonical
            : instantiatesCanonical as FhirCanonical?,
        instantiatesUri: identical(instantiatesUri, fhirSentinel)
            ? _value.instantiatesUri
            : instantiatesUri as FhirUri?,
        title: identical(title, fhirSentinel)
            ? _value.title
            : title as FhirString?,
        focus: identical(focus, fhirSentinel)
            ? _value.focus
            : focus as List<Reference>?,
        specimen: identical(specimen, fhirSentinel)
            ? _value.specimen
            : specimen as List<Reference>?,
        date:
            identical(date, fhirSentinel) ? _value.date : date as FhirDateTime?,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
        protocolPerformed: identical(protocolPerformed, fhirSentinel)
            ? _value.protocolPerformed
            : protocolPerformed as Reference?,
        regionsStudied: identical(regionsStudied, fhirSentinel)
            ? _value.regionsStudied
            : regionsStudied as List<Reference>?,
        regionsCalled: identical(regionsCalled, fhirSentinel)
            ? _value.regionsCalled
            : regionsCalled as List<Reference>?,
        input: identical(input, fhirSentinel)
            ? _value.input
            : input as List<GenomicStudyInput>?,
        output: identical(output, fhirSentinel)
            ? _value.output
            : output as List<GenomicStudyOutput>?,
        performer: identical(performer, fhirSentinel)
            ? _value.performer
            : performer as List<GenomicStudyPerformer>?,
        device: identical(device, fhirSentinel)
            ? _value.device
            : device as List<GenomicStudyDevice>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension GenomicStudyAnalysisCopyWithExtension on GenomicStudyAnalysis {
  $GenomicStudyAnalysisCopyWith<GenomicStudyAnalysis> get copyWith =>
      _$GenomicStudyAnalysisCopyWithImpl<GenomicStudyAnalysis>(
        this,
        (value) => value,
      );
}

abstract class $GenomicStudyInputCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? file,
    CodeableConcept? type,
    Identifier? generatedByX,
    bool? disallowExtensions,
  });
}

class _$GenomicStudyInputCopyWithImpl<T>
    implements $GenomicStudyInputCopyWith<T> {
  final GenomicStudyInput _value;
  final T Function(GenomicStudyInput) _then;

  _$GenomicStudyInputCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? file = fhirSentinel,
    Object? type = fhirSentinel,
    Object? generatedByX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      GenomicStudyInput(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        file: identical(file, fhirSentinel) ? _value.file : file as Reference?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        generatedByX: identical(generatedByX, fhirSentinel)
            ? _value.generatedByX
            : generatedByX as Identifier?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension GenomicStudyInputCopyWithExtension on GenomicStudyInput {
  $GenomicStudyInputCopyWith<GenomicStudyInput> get copyWith =>
      _$GenomicStudyInputCopyWithImpl<GenomicStudyInput>(
        this,
        (value) => value,
      );
}

abstract class $GenomicStudyOutputCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? file,
    CodeableConcept? type,
    bool? disallowExtensions,
  });
}

class _$GenomicStudyOutputCopyWithImpl<T>
    implements $GenomicStudyOutputCopyWith<T> {
  final GenomicStudyOutput _value;
  final T Function(GenomicStudyOutput) _then;

  _$GenomicStudyOutputCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? file = fhirSentinel,
    Object? type = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      GenomicStudyOutput(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        file: identical(file, fhirSentinel) ? _value.file : file as Reference?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension GenomicStudyOutputCopyWithExtension on GenomicStudyOutput {
  $GenomicStudyOutputCopyWith<GenomicStudyOutput> get copyWith =>
      _$GenomicStudyOutputCopyWithImpl<GenomicStudyOutput>(
        this,
        (value) => value,
      );
}

abstract class $GenomicStudyPerformerCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? actor,
    CodeableConcept? role,
    bool? disallowExtensions,
  });
}

class _$GenomicStudyPerformerCopyWithImpl<T>
    implements $GenomicStudyPerformerCopyWith<T> {
  final GenomicStudyPerformer _value;
  final T Function(GenomicStudyPerformer) _then;

  _$GenomicStudyPerformerCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? actor = fhirSentinel,
    Object? role = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      GenomicStudyPerformer(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        actor:
            identical(actor, fhirSentinel) ? _value.actor : actor as Reference?,
        role: identical(role, fhirSentinel)
            ? _value.role
            : role as CodeableConcept?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension GenomicStudyPerformerCopyWithExtension on GenomicStudyPerformer {
  $GenomicStudyPerformerCopyWith<GenomicStudyPerformer> get copyWith =>
      _$GenomicStudyPerformerCopyWithImpl<GenomicStudyPerformer>(
        this,
        (value) => value,
      );
}

abstract class $GenomicStudyDeviceCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? device,
    CodeableConcept? function_,
    bool? disallowExtensions,
  });
}

class _$GenomicStudyDeviceCopyWithImpl<T>
    implements $GenomicStudyDeviceCopyWith<T> {
  final GenomicStudyDevice _value;
  final T Function(GenomicStudyDevice) _then;

  _$GenomicStudyDeviceCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? device = fhirSentinel,
    Object? function_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      GenomicStudyDevice(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        device: identical(device, fhirSentinel)
            ? _value.device
            : device as Reference?,
        function_: identical(function_, fhirSentinel)
            ? _value.function_
            : function_ as CodeableConcept?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension GenomicStudyDeviceCopyWithExtension on GenomicStudyDevice {
  $GenomicStudyDeviceCopyWith<GenomicStudyDevice> get copyWith =>
      _$GenomicStudyDeviceCopyWithImpl<GenomicStudyDevice>(
        this,
        (value) => value,
      );
}
