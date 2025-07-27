// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'document_reference.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $DocumentReferenceCopyWith<T>
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
    FhirString? version,
    List<Reference>? basedOn,
    DocumentReferenceStatus? status,
    CompositionStatus? docStatus,
    List<CodeableConcept>? modality,
    CodeableConcept? type,
    List<CodeableConcept>? category,
    Reference? subject,
    List<Reference>? context,
    List<CodeableReference>? event,
    List<CodeableReference>? bodySite,
    CodeableConcept? facilityType,
    CodeableConcept? practiceSetting,
    Period? period,
    FhirInstant? date,
    List<Reference>? author,
    List<DocumentReferenceAttester>? attester,
    Reference? custodian,
    List<DocumentReferenceRelatesTo>? relatesTo,
    FhirMarkdown? description,
    List<CodeableConcept>? securityLabel,
    List<DocumentReferenceContent>? content,
    bool? disallowExtensions,
  });
}

class _$DocumentReferenceCopyWithImpl<T>
    implements $DocumentReferenceCopyWith<T> {
  final DocumentReference _value;
  final T Function(DocumentReference) _then;

  _$DocumentReferenceCopyWithImpl(this._value, this._then);

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
    Object? version = fhirSentinel,
    Object? basedOn = fhirSentinel,
    Object? status = fhirSentinel,
    Object? docStatus = fhirSentinel,
    Object? modality = fhirSentinel,
    Object? type = fhirSentinel,
    Object? category = fhirSentinel,
    Object? subject = fhirSentinel,
    Object? context = fhirSentinel,
    Object? event = fhirSentinel,
    Object? bodySite = fhirSentinel,
    Object? facilityType = fhirSentinel,
    Object? practiceSetting = fhirSentinel,
    Object? period = fhirSentinel,
    Object? date = fhirSentinel,
    Object? author = fhirSentinel,
    Object? attester = fhirSentinel,
    Object? custodian = fhirSentinel,
    Object? relatesTo = fhirSentinel,
    Object? description = fhirSentinel,
    Object? securityLabel = fhirSentinel,
    Object? content = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DocumentReference(
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
        version: identical(version, fhirSentinel)
            ? _value.version
            : version as FhirString?,
        basedOn: identical(basedOn, fhirSentinel)
            ? _value.basedOn
            : basedOn as List<Reference>?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as DocumentReferenceStatus?) ?? _value.status,
        docStatus: identical(docStatus, fhirSentinel)
            ? _value.docStatus
            : docStatus as CompositionStatus?,
        modality: identical(modality, fhirSentinel)
            ? _value.modality
            : modality as List<CodeableConcept>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        category: identical(category, fhirSentinel)
            ? _value.category
            : category as List<CodeableConcept>?,
        subject: identical(subject, fhirSentinel)
            ? _value.subject
            : subject as Reference?,
        context: identical(context, fhirSentinel)
            ? _value.context
            : context as List<Reference>?,
        event: identical(event, fhirSentinel)
            ? _value.event
            : event as List<CodeableReference>?,
        bodySite: identical(bodySite, fhirSentinel)
            ? _value.bodySite
            : bodySite as List<CodeableReference>?,
        facilityType: identical(facilityType, fhirSentinel)
            ? _value.facilityType
            : facilityType as CodeableConcept?,
        practiceSetting: identical(practiceSetting, fhirSentinel)
            ? _value.practiceSetting
            : practiceSetting as CodeableConcept?,
        period:
            identical(period, fhirSentinel) ? _value.period : period as Period?,
        date:
            identical(date, fhirSentinel) ? _value.date : date as FhirInstant?,
        author: identical(author, fhirSentinel)
            ? _value.author
            : author as List<Reference>?,
        attester: identical(attester, fhirSentinel)
            ? _value.attester
            : attester as List<DocumentReferenceAttester>?,
        custodian: identical(custodian, fhirSentinel)
            ? _value.custodian
            : custodian as Reference?,
        relatesTo: identical(relatesTo, fhirSentinel)
            ? _value.relatesTo
            : relatesTo as List<DocumentReferenceRelatesTo>?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirMarkdown?,
        securityLabel: identical(securityLabel, fhirSentinel)
            ? _value.securityLabel
            : securityLabel as List<CodeableConcept>?,
        content: identical(content, fhirSentinel)
            ? _value.content
            : (content as List<DocumentReferenceContent>?) ?? _value.content,
      ),
    );
  }
}

extension DocumentReferenceCopyWithExtension on DocumentReference {
  $DocumentReferenceCopyWith<DocumentReference> get copyWith =>
      _$DocumentReferenceCopyWithImpl<DocumentReference>(
        this,
        (value) => value,
      );
}

abstract class $DocumentReferenceAttesterCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? mode,
    FhirDateTime? time,
    Reference? party,
    bool? disallowExtensions,
  });
}

class _$DocumentReferenceAttesterCopyWithImpl<T>
    implements $DocumentReferenceAttesterCopyWith<T> {
  final DocumentReferenceAttester _value;
  final T Function(DocumentReferenceAttester) _then;

  _$DocumentReferenceAttesterCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? mode = fhirSentinel,
    Object? time = fhirSentinel,
    Object? party = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DocumentReferenceAttester(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        mode: identical(mode, fhirSentinel)
            ? _value.mode
            : (mode as CodeableConcept?) ?? _value.mode,
        time:
            identical(time, fhirSentinel) ? _value.time : time as FhirDateTime?,
        party:
            identical(party, fhirSentinel) ? _value.party : party as Reference?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension DocumentReferenceAttesterCopyWithExtension
    on DocumentReferenceAttester {
  $DocumentReferenceAttesterCopyWith<DocumentReferenceAttester> get copyWith =>
      _$DocumentReferenceAttesterCopyWithImpl<DocumentReferenceAttester>(
        this,
        (value) => value,
      );
}

abstract class $DocumentReferenceRelatesToCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    Reference? target,
    bool? disallowExtensions,
  });
}

class _$DocumentReferenceRelatesToCopyWithImpl<T>
    implements $DocumentReferenceRelatesToCopyWith<T> {
  final DocumentReferenceRelatesTo _value;
  final T Function(DocumentReferenceRelatesTo) _then;

  _$DocumentReferenceRelatesToCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? target = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DocumentReferenceRelatesTo(
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
        target: identical(target, fhirSentinel)
            ? _value.target
            : (target as Reference?) ?? _value.target,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension DocumentReferenceRelatesToCopyWithExtension
    on DocumentReferenceRelatesTo {
  $DocumentReferenceRelatesToCopyWith<DocumentReferenceRelatesTo>
      get copyWith =>
          _$DocumentReferenceRelatesToCopyWithImpl<DocumentReferenceRelatesTo>(
            this,
            (value) => value,
          );
}

abstract class $DocumentReferenceContentCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Attachment? attachment,
    List<DocumentReferenceProfile>? profile,
    bool? disallowExtensions,
  });
}

class _$DocumentReferenceContentCopyWithImpl<T>
    implements $DocumentReferenceContentCopyWith<T> {
  final DocumentReferenceContent _value;
  final T Function(DocumentReferenceContent) _then;

  _$DocumentReferenceContentCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? attachment = fhirSentinel,
    Object? profile = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DocumentReferenceContent(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        attachment: identical(attachment, fhirSentinel)
            ? _value.attachment
            : (attachment as Attachment?) ?? _value.attachment,
        profile: identical(profile, fhirSentinel)
            ? _value.profile
            : profile as List<DocumentReferenceProfile>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension DocumentReferenceContentCopyWithExtension
    on DocumentReferenceContent {
  $DocumentReferenceContentCopyWith<DocumentReferenceContent> get copyWith =>
      _$DocumentReferenceContentCopyWithImpl<DocumentReferenceContent>(
        this,
        (value) => value,
      );
}

abstract class $DocumentReferenceProfileCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Coding? valueX,
    bool? disallowExtensions,
  });
}

class _$DocumentReferenceProfileCopyWithImpl<T>
    implements $DocumentReferenceProfileCopyWith<T> {
  final DocumentReferenceProfile _value;
  final T Function(DocumentReferenceProfile) _then;

  _$DocumentReferenceProfileCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? valueX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DocumentReferenceProfile(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        valueX: identical(valueX, fhirSentinel)
            ? _value.valueX
            : (valueX as Coding?) ?? _value.valueX,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension DocumentReferenceProfileCopyWithExtension
    on DocumentReferenceProfile {
  $DocumentReferenceProfileCopyWith<DocumentReferenceProfile> get copyWith =>
      _$DocumentReferenceProfileCopyWithImpl<DocumentReferenceProfile>(
        this,
        (value) => value,
      );
}
