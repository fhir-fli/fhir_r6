// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'device_association.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $DeviceAssociationCopyWith<T>
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
    Reference? device,
    List<CodeableConcept>? category,
    CodeableConcept? status,
    List<CodeableConcept>? statusReason,
    Reference? subject,
    Reference? bodyStructure,
    Period? period,
    List<DeviceAssociationOperation>? operation,
    bool? disallowExtensions,
  });
}

class _$DeviceAssociationCopyWithImpl<T>
    implements $DeviceAssociationCopyWith<T> {
  final DeviceAssociation _value;
  final T Function(DeviceAssociation) _then;

  _$DeviceAssociationCopyWithImpl(this._value, this._then);

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
    Object? device = fhirSentinel,
    Object? category = fhirSentinel,
    Object? status = fhirSentinel,
    Object? statusReason = fhirSentinel,
    Object? subject = fhirSentinel,
    Object? bodyStructure = fhirSentinel,
    Object? period = fhirSentinel,
    Object? operation = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DeviceAssociation(
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
        device: identical(device, fhirSentinel)
            ? _value.device
            : (device as Reference?) ?? _value.device,
        category: identical(category, fhirSentinel)
            ? _value.category
            : category as List<CodeableConcept>?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as CodeableConcept?) ?? _value.status,
        statusReason: identical(statusReason, fhirSentinel)
            ? _value.statusReason
            : statusReason as List<CodeableConcept>?,
        subject: identical(subject, fhirSentinel)
            ? _value.subject
            : subject as Reference?,
        bodyStructure: identical(bodyStructure, fhirSentinel)
            ? _value.bodyStructure
            : bodyStructure as Reference?,
        period:
            identical(period, fhirSentinel) ? _value.period : period as Period?,
        operation: identical(operation, fhirSentinel)
            ? _value.operation
            : operation as List<DeviceAssociationOperation>?,
      ),
    );
  }
}

extension DeviceAssociationCopyWithExtension on DeviceAssociation {
  $DeviceAssociationCopyWith<DeviceAssociation> get copyWith =>
      _$DeviceAssociationCopyWithImpl<DeviceAssociation>(
        this,
        (value) => value,
      );
}

abstract class $DeviceAssociationOperationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? status,
    List<Reference>? operator_,
    Period? period,
    bool? disallowExtensions,
  });
}

class _$DeviceAssociationOperationCopyWithImpl<T>
    implements $DeviceAssociationOperationCopyWith<T> {
  final DeviceAssociationOperation _value;
  final T Function(DeviceAssociationOperation) _then;

  _$DeviceAssociationOperationCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? status = fhirSentinel,
    Object? operator_ = fhirSentinel,
    Object? period = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DeviceAssociationOperation(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as CodeableConcept?) ?? _value.status,
        operator_: identical(operator_, fhirSentinel)
            ? _value.operator_
            : operator_ as List<Reference>?,
        period:
            identical(period, fhirSentinel) ? _value.period : period as Period?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension DeviceAssociationOperationCopyWithExtension
    on DeviceAssociationOperation {
  $DeviceAssociationOperationCopyWith<DeviceAssociationOperation>
      get copyWith =>
          _$DeviceAssociationOperationCopyWithImpl<DeviceAssociationOperation>(
            this,
            (value) => value,
          );
}
