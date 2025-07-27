// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'composition.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $CompositionCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    CompositionStatus? status,
    CodeableConcept? type,
    List<CodeableConcept>? category,
    List<Reference>? subject,
    Reference? encounter,
    FhirDateTime? date,
    List<UsageContext>? useContext,
    List<Reference>? author,
    FhirString? name,
    FhirString? title,
    List<Annotation>? note,
    List<CompositionAttester>? attester,
    Reference? custodian,
    List<RelatedArtifact>? relatesTo,
    List<CompositionEvent>? event,
    List<CompositionSection>? section,
    bool? disallowExtensions,
  });
}

class _$CompositionCopyWithImpl<T> implements $CompositionCopyWith<T> {
  final Composition _value;
  final T Function(Composition) _then;

  _$CompositionCopyWithImpl(this._value, this._then);

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
    Object? status = fhirSentinel,
    Object? type = fhirSentinel,
    Object? category = fhirSentinel,
    Object? subject = fhirSentinel,
    Object? encounter = fhirSentinel,
    Object? date = fhirSentinel,
    Object? useContext = fhirSentinel,
    Object? author = fhirSentinel,
    Object? name = fhirSentinel,
    Object? title = fhirSentinel,
    Object? note = fhirSentinel,
    Object? attester = fhirSentinel,
    Object? custodian = fhirSentinel,
    Object? relatesTo = fhirSentinel,
    Object? event = fhirSentinel,
    Object? section = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Composition(
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
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as CompositionStatus?) ?? _value.status,
        type: identical(type, fhirSentinel)
            ? _value.type
            : (type as CodeableConcept?) ?? _value.type,
        category: identical(category, fhirSentinel)
            ? _value.category
            : category as List<CodeableConcept>?,
        subject: identical(subject, fhirSentinel)
            ? _value.subject
            : subject as List<Reference>?,
        encounter: identical(encounter, fhirSentinel)
            ? _value.encounter
            : encounter as Reference?,
        date: identical(date, fhirSentinel)
            ? _value.date
            : (date as FhirDateTime?) ?? _value.date,
        useContext: identical(useContext, fhirSentinel)
            ? _value.useContext
            : useContext as List<UsageContext>?,
        author: identical(author, fhirSentinel)
            ? _value.author
            : (author as List<Reference>?) ?? _value.author,
        name: identical(name, fhirSentinel) ? _value.name : name as FhirString?,
        title: identical(title, fhirSentinel)
            ? _value.title
            : (title as FhirString?) ?? _value.title,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
        attester: identical(attester, fhirSentinel)
            ? _value.attester
            : attester as List<CompositionAttester>?,
        custodian: identical(custodian, fhirSentinel)
            ? _value.custodian
            : custodian as Reference?,
        relatesTo: identical(relatesTo, fhirSentinel)
            ? _value.relatesTo
            : relatesTo as List<RelatedArtifact>?,
        event: identical(event, fhirSentinel)
            ? _value.event
            : event as List<CompositionEvent>?,
        section: identical(section, fhirSentinel)
            ? _value.section
            : section as List<CompositionSection>?,
      ),
    );
  }
}

extension CompositionCopyWithExtension on Composition {
  $CompositionCopyWith<Composition> get copyWith =>
      _$CompositionCopyWithImpl<Composition>(
        this,
        (value) => value,
      );
}

abstract class $CompositionAttesterCopyWith<T>
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

class _$CompositionAttesterCopyWithImpl<T>
    implements $CompositionAttesterCopyWith<T> {
  final CompositionAttester _value;
  final T Function(CompositionAttester) _then;

  _$CompositionAttesterCopyWithImpl(this._value, this._then);

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
      CompositionAttester(
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

extension CompositionAttesterCopyWithExtension on CompositionAttester {
  $CompositionAttesterCopyWith<CompositionAttester> get copyWith =>
      _$CompositionAttesterCopyWithImpl<CompositionAttester>(
        this,
        (value) => value,
      );
}

abstract class $CompositionEventCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Period? period,
    List<CodeableReference>? detail,
    bool? disallowExtensions,
  });
}

class _$CompositionEventCopyWithImpl<T>
    implements $CompositionEventCopyWith<T> {
  final CompositionEvent _value;
  final T Function(CompositionEvent) _then;

  _$CompositionEventCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? period = fhirSentinel,
    Object? detail = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CompositionEvent(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        period:
            identical(period, fhirSentinel) ? _value.period : period as Period?,
        detail: identical(detail, fhirSentinel)
            ? _value.detail
            : detail as List<CodeableReference>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension CompositionEventCopyWithExtension on CompositionEvent {
  $CompositionEventCopyWith<CompositionEvent> get copyWith =>
      _$CompositionEventCopyWithImpl<CompositionEvent>(
        this,
        (value) => value,
      );
}

abstract class $CompositionSectionCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? title,
    CodeableConcept? code,
    List<Reference>? author,
    Reference? focus,
    Narrative? text,
    CodeableConcept? orderedBy,
    List<Reference>? entry,
    CodeableConcept? emptyReason,
    List<CompositionSection>? section,
    bool? disallowExtensions,
  });
}

class _$CompositionSectionCopyWithImpl<T>
    implements $CompositionSectionCopyWith<T> {
  final CompositionSection _value;
  final T Function(CompositionSection) _then;

  _$CompositionSectionCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? title = fhirSentinel,
    Object? code = fhirSentinel,
    Object? author = fhirSentinel,
    Object? focus = fhirSentinel,
    Object? text = fhirSentinel,
    Object? orderedBy = fhirSentinel,
    Object? entry = fhirSentinel,
    Object? emptyReason = fhirSentinel,
    Object? section = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CompositionSection(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        title: identical(title, fhirSentinel)
            ? _value.title
            : title as FhirString?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : code as CodeableConcept?,
        author: identical(author, fhirSentinel)
            ? _value.author
            : author as List<Reference>?,
        focus:
            identical(focus, fhirSentinel) ? _value.focus : focus as Reference?,
        text: identical(text, fhirSentinel) ? _value.text : text as Narrative?,
        orderedBy: identical(orderedBy, fhirSentinel)
            ? _value.orderedBy
            : orderedBy as CodeableConcept?,
        entry: identical(entry, fhirSentinel)
            ? _value.entry
            : entry as List<Reference>?,
        emptyReason: identical(emptyReason, fhirSentinel)
            ? _value.emptyReason
            : emptyReason as CodeableConcept?,
        section: identical(section, fhirSentinel)
            ? _value.section
            : section as List<CompositionSection>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension CompositionSectionCopyWithExtension on CompositionSection {
  $CompositionSectionCopyWith<CompositionSection> get copyWith =>
      _$CompositionSectionCopyWithImpl<CompositionSection>(
        this,
        (value) => value,
      );
}
