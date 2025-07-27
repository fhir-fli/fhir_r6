// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'service_request.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $ServiceRequestCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    List<FhirCanonical>? instantiatesCanonical,
    List<FhirUri>? instantiatesUri,
    List<Reference>? basedOn,
    List<Reference>? replaces,
    Identifier? requisition,
    RequestStatus? status,
    RequestIntent? intent,
    List<CodeableConcept>? category,
    RequestPriority? priority,
    FhirBoolean? doNotPerform,
    CodeableReference? code,
    List<ServiceRequestOrderDetail>? orderDetail,
    Quantity? quantityX,
    Reference? subject,
    List<Reference>? focus,
    Reference? encounter,
    FhirDateTime? occurrenceX,
    FhirBoolean? asNeededX,
    FhirDateTime? authoredOn,
    Reference? requester,
    CodeableConcept? performerType,
    List<Reference>? performer,
    List<CodeableReference>? location,
    List<CodeableReference>? reason,
    List<Reference>? insurance,
    List<CodeableReference>? supportingInfo,
    List<Reference>? specimen,
    List<CodeableConcept>? bodySite,
    Reference? bodyStructure,
    List<Annotation>? note,
    List<ServiceRequestPatientInstruction>? patientInstruction,
    List<Reference>? relevantHistory,
    bool? disallowExtensions,
  });
}

class _$ServiceRequestCopyWithImpl<T> implements $ServiceRequestCopyWith<T> {
  final ServiceRequest _value;
  final T Function(ServiceRequest) _then;

  _$ServiceRequestCopyWithImpl(this._value, this._then);

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
    Object? instantiatesCanonical = fhirSentinel,
    Object? instantiatesUri = fhirSentinel,
    Object? basedOn = fhirSentinel,
    Object? replaces = fhirSentinel,
    Object? requisition = fhirSentinel,
    Object? status = fhirSentinel,
    Object? intent = fhirSentinel,
    Object? category = fhirSentinel,
    Object? priority = fhirSentinel,
    Object? doNotPerform = fhirSentinel,
    Object? code = fhirSentinel,
    Object? orderDetail = fhirSentinel,
    Object? quantityX = fhirSentinel,
    Object? subject = fhirSentinel,
    Object? focus = fhirSentinel,
    Object? encounter = fhirSentinel,
    Object? occurrenceX = fhirSentinel,
    Object? asNeededX = fhirSentinel,
    Object? authoredOn = fhirSentinel,
    Object? requester = fhirSentinel,
    Object? performerType = fhirSentinel,
    Object? performer = fhirSentinel,
    Object? location = fhirSentinel,
    Object? reason = fhirSentinel,
    Object? insurance = fhirSentinel,
    Object? supportingInfo = fhirSentinel,
    Object? specimen = fhirSentinel,
    Object? bodySite = fhirSentinel,
    Object? bodyStructure = fhirSentinel,
    Object? note = fhirSentinel,
    Object? patientInstruction = fhirSentinel,
    Object? relevantHistory = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ServiceRequest(
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
        instantiatesCanonical: identical(instantiatesCanonical, fhirSentinel)
            ? _value.instantiatesCanonical
            : instantiatesCanonical as List<FhirCanonical>?,
        instantiatesUri: identical(instantiatesUri, fhirSentinel)
            ? _value.instantiatesUri
            : instantiatesUri as List<FhirUri>?,
        basedOn: identical(basedOn, fhirSentinel)
            ? _value.basedOn
            : basedOn as List<Reference>?,
        replaces: identical(replaces, fhirSentinel)
            ? _value.replaces
            : replaces as List<Reference>?,
        requisition: identical(requisition, fhirSentinel)
            ? _value.requisition
            : requisition as Identifier?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as RequestStatus?) ?? _value.status,
        intent: identical(intent, fhirSentinel)
            ? _value.intent
            : (intent as RequestIntent?) ?? _value.intent,
        category: identical(category, fhirSentinel)
            ? _value.category
            : category as List<CodeableConcept>?,
        priority: identical(priority, fhirSentinel)
            ? _value.priority
            : priority as RequestPriority?,
        doNotPerform: identical(doNotPerform, fhirSentinel)
            ? _value.doNotPerform
            : doNotPerform as FhirBoolean?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : code as CodeableReference?,
        orderDetail: identical(orderDetail, fhirSentinel)
            ? _value.orderDetail
            : orderDetail as List<ServiceRequestOrderDetail>?,
        quantityX: identical(quantityX, fhirSentinel)
            ? _value.quantityX
            : quantityX as Quantity?,
        subject: identical(subject, fhirSentinel)
            ? _value.subject
            : (subject as Reference?) ?? _value.subject,
        focus: identical(focus, fhirSentinel)
            ? _value.focus
            : focus as List<Reference>?,
        encounter: identical(encounter, fhirSentinel)
            ? _value.encounter
            : encounter as Reference?,
        occurrenceX: identical(occurrenceX, fhirSentinel)
            ? _value.occurrenceX
            : occurrenceX as FhirDateTime?,
        asNeededX: identical(asNeededX, fhirSentinel)
            ? _value.asNeededX
            : asNeededX as FhirBoolean?,
        authoredOn: identical(authoredOn, fhirSentinel)
            ? _value.authoredOn
            : authoredOn as FhirDateTime?,
        requester: identical(requester, fhirSentinel)
            ? _value.requester
            : requester as Reference?,
        performerType: identical(performerType, fhirSentinel)
            ? _value.performerType
            : performerType as CodeableConcept?,
        performer: identical(performer, fhirSentinel)
            ? _value.performer
            : performer as List<Reference>?,
        location: identical(location, fhirSentinel)
            ? _value.location
            : location as List<CodeableReference>?,
        reason: identical(reason, fhirSentinel)
            ? _value.reason
            : reason as List<CodeableReference>?,
        insurance: identical(insurance, fhirSentinel)
            ? _value.insurance
            : insurance as List<Reference>?,
        supportingInfo: identical(supportingInfo, fhirSentinel)
            ? _value.supportingInfo
            : supportingInfo as List<CodeableReference>?,
        specimen: identical(specimen, fhirSentinel)
            ? _value.specimen
            : specimen as List<Reference>?,
        bodySite: identical(bodySite, fhirSentinel)
            ? _value.bodySite
            : bodySite as List<CodeableConcept>?,
        bodyStructure: identical(bodyStructure, fhirSentinel)
            ? _value.bodyStructure
            : bodyStructure as Reference?,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
        patientInstruction: identical(patientInstruction, fhirSentinel)
            ? _value.patientInstruction
            : patientInstruction as List<ServiceRequestPatientInstruction>?,
        relevantHistory: identical(relevantHistory, fhirSentinel)
            ? _value.relevantHistory
            : relevantHistory as List<Reference>?,
      ),
    );
  }
}

extension ServiceRequestCopyWithExtension on ServiceRequest {
  $ServiceRequestCopyWith<ServiceRequest> get copyWith =>
      _$ServiceRequestCopyWithImpl<ServiceRequest>(
        this,
        (value) => value,
      );
}

abstract class $ServiceRequestOrderDetailCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableReference? parameterFocus,
    List<ServiceRequestParameter>? parameter,
    bool? disallowExtensions,
  });
}

class _$ServiceRequestOrderDetailCopyWithImpl<T>
    implements $ServiceRequestOrderDetailCopyWith<T> {
  final ServiceRequestOrderDetail _value;
  final T Function(ServiceRequestOrderDetail) _then;

  _$ServiceRequestOrderDetailCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? parameterFocus = fhirSentinel,
    Object? parameter = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ServiceRequestOrderDetail(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        parameterFocus: identical(parameterFocus, fhirSentinel)
            ? _value.parameterFocus
            : parameterFocus as CodeableReference?,
        parameter: identical(parameter, fhirSentinel)
            ? _value.parameter
            : (parameter as List<ServiceRequestParameter>?) ?? _value.parameter,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ServiceRequestOrderDetailCopyWithExtension
    on ServiceRequestOrderDetail {
  $ServiceRequestOrderDetailCopyWith<ServiceRequestOrderDetail> get copyWith =>
      _$ServiceRequestOrderDetailCopyWithImpl<ServiceRequestOrderDetail>(
        this,
        (value) => value,
      );
}

abstract class $ServiceRequestParameterCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    Quantity? valueX,
    bool? disallowExtensions,
  });
}

class _$ServiceRequestParameterCopyWithImpl<T>
    implements $ServiceRequestParameterCopyWith<T> {
  final ServiceRequestParameter _value;
  final T Function(ServiceRequestParameter) _then;

  _$ServiceRequestParameterCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? valueX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ServiceRequestParameter(
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

extension ServiceRequestParameterCopyWithExtension on ServiceRequestParameter {
  $ServiceRequestParameterCopyWith<ServiceRequestParameter> get copyWith =>
      _$ServiceRequestParameterCopyWithImpl<ServiceRequestParameter>(
        this,
        (value) => value,
      );
}

abstract class $ServiceRequestPatientInstructionCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirMarkdown? instructionX,
    bool? disallowExtensions,
  });
}

class _$ServiceRequestPatientInstructionCopyWithImpl<T>
    implements $ServiceRequestPatientInstructionCopyWith<T> {
  final ServiceRequestPatientInstruction _value;
  final T Function(ServiceRequestPatientInstruction) _then;

  _$ServiceRequestPatientInstructionCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? instructionX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ServiceRequestPatientInstruction(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        instructionX: identical(instructionX, fhirSentinel)
            ? _value.instructionX
            : instructionX as FhirMarkdown?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ServiceRequestPatientInstructionCopyWithExtension
    on ServiceRequestPatientInstruction {
  $ServiceRequestPatientInstructionCopyWith<ServiceRequestPatientInstruction>
      get copyWith => _$ServiceRequestPatientInstructionCopyWithImpl<
              ServiceRequestPatientInstruction>(
            this,
            (value) => value,
          );
}
