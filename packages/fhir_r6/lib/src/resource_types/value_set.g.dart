// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'value_set.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $ValueSetCopyWith<T> extends $MetadataResourceCopyWith<T> {
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
    PublicationStatus? status,
    FhirBoolean? experimental,
    FhirDateTime? date,
    FhirString? publisher,
    List<ContactDetail>? contact,
    FhirMarkdown? description,
    List<UsageContext>? useContext,
    List<CodeableConcept>? jurisdiction,
    FhirBoolean? immutable,
    FhirMarkdown? purpose,
    FhirMarkdown? copyright,
    FhirString? copyrightLabel,
    FhirDate? approvalDate,
    FhirDate? lastReviewDate,
    Period? effectivePeriod,
    List<CodeableConcept>? topic,
    List<ContactDetail>? author,
    List<ContactDetail>? editor,
    List<ContactDetail>? reviewer,
    List<ContactDetail>? endorser,
    List<RelatedArtifact>? relatedArtifact,
    ValueSetCompose? compose,
    ValueSetExpansion? expansion,
    ValueSetScope? scope,
    bool? disallowExtensions,
  });
}

class _$ValueSetCopyWithImpl<T> implements $ValueSetCopyWith<T> {
  final ValueSet _value;
  final T Function(ValueSet) _then;

  _$ValueSetCopyWithImpl(this._value, this._then);

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
    Object? status = fhirSentinel,
    Object? experimental = fhirSentinel,
    Object? date = fhirSentinel,
    Object? publisher = fhirSentinel,
    Object? contact = fhirSentinel,
    Object? description = fhirSentinel,
    Object? useContext = fhirSentinel,
    Object? jurisdiction = fhirSentinel,
    Object? immutable = fhirSentinel,
    Object? purpose = fhirSentinel,
    Object? copyright = fhirSentinel,
    Object? copyrightLabel = fhirSentinel,
    Object? approvalDate = fhirSentinel,
    Object? lastReviewDate = fhirSentinel,
    Object? effectivePeriod = fhirSentinel,
    Object? topic = fhirSentinel,
    Object? author = fhirSentinel,
    Object? editor = fhirSentinel,
    Object? reviewer = fhirSentinel,
    Object? endorser = fhirSentinel,
    Object? relatedArtifact = fhirSentinel,
    Object? compose = fhirSentinel,
    Object? expansion = fhirSentinel,
    Object? scope = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ValueSet(
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
        immutable: identical(immutable, fhirSentinel)
            ? _value.immutable
            : immutable as FhirBoolean?,
        purpose: identical(purpose, fhirSentinel)
            ? _value.purpose
            : purpose as FhirMarkdown?,
        copyright: identical(copyright, fhirSentinel)
            ? _value.copyright
            : copyright as FhirMarkdown?,
        copyrightLabel: identical(copyrightLabel, fhirSentinel)
            ? _value.copyrightLabel
            : copyrightLabel as FhirString?,
        approvalDate: identical(approvalDate, fhirSentinel)
            ? _value.approvalDate
            : approvalDate as FhirDate?,
        lastReviewDate: identical(lastReviewDate, fhirSentinel)
            ? _value.lastReviewDate
            : lastReviewDate as FhirDate?,
        effectivePeriod: identical(effectivePeriod, fhirSentinel)
            ? _value.effectivePeriod
            : effectivePeriod as Period?,
        topic: identical(topic, fhirSentinel)
            ? _value.topic
            : topic as List<CodeableConcept>?,
        author: identical(author, fhirSentinel)
            ? _value.author
            : author as List<ContactDetail>?,
        editor: identical(editor, fhirSentinel)
            ? _value.editor
            : editor as List<ContactDetail>?,
        reviewer: identical(reviewer, fhirSentinel)
            ? _value.reviewer
            : reviewer as List<ContactDetail>?,
        endorser: identical(endorser, fhirSentinel)
            ? _value.endorser
            : endorser as List<ContactDetail>?,
        relatedArtifact: identical(relatedArtifact, fhirSentinel)
            ? _value.relatedArtifact
            : relatedArtifact as List<RelatedArtifact>?,
        compose: identical(compose, fhirSentinel)
            ? _value.compose
            : compose as ValueSetCompose?,
        expansion: identical(expansion, fhirSentinel)
            ? _value.expansion
            : expansion as ValueSetExpansion?,
        scope: identical(scope, fhirSentinel)
            ? _value.scope
            : scope as ValueSetScope?,
      ),
    );
  }
}

extension ValueSetCopyWithExtension on ValueSet {
  $ValueSetCopyWith<ValueSet> get copyWith => _$ValueSetCopyWithImpl<ValueSet>(
        this,
        (value) => value,
      );
}

abstract class $ValueSetComposeCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirDate? lockedDate,
    FhirBoolean? inactive,
    List<ValueSetInclude>? include,
    List<ValueSetInclude>? exclude,
    List<FhirString>? property,
    bool? disallowExtensions,
  });
}

class _$ValueSetComposeCopyWithImpl<T> implements $ValueSetComposeCopyWith<T> {
  final ValueSetCompose _value;
  final T Function(ValueSetCompose) _then;

  _$ValueSetComposeCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? lockedDate = fhirSentinel,
    Object? inactive = fhirSentinel,
    Object? include = fhirSentinel,
    Object? exclude = fhirSentinel,
    Object? property = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ValueSetCompose(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        lockedDate: identical(lockedDate, fhirSentinel)
            ? _value.lockedDate
            : lockedDate as FhirDate?,
        inactive: identical(inactive, fhirSentinel)
            ? _value.inactive
            : inactive as FhirBoolean?,
        include: identical(include, fhirSentinel)
            ? _value.include
            : (include as List<ValueSetInclude>?) ?? _value.include,
        exclude: identical(exclude, fhirSentinel)
            ? _value.exclude
            : exclude as List<ValueSetInclude>?,
        property: identical(property, fhirSentinel)
            ? _value.property
            : property as List<FhirString>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ValueSetComposeCopyWithExtension on ValueSetCompose {
  $ValueSetComposeCopyWith<ValueSetCompose> get copyWith =>
      _$ValueSetComposeCopyWithImpl<ValueSetCompose>(
        this,
        (value) => value,
      );
}

abstract class $ValueSetIncludeCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUri? system,
    FhirString? version,
    List<ValueSetConcept>? concept,
    List<ValueSetFilter>? filter,
    List<FhirCanonical>? valueSet,
    FhirString? copyright,
    bool? disallowExtensions,
  });
}

class _$ValueSetIncludeCopyWithImpl<T> implements $ValueSetIncludeCopyWith<T> {
  final ValueSetInclude _value;
  final T Function(ValueSetInclude) _then;

  _$ValueSetIncludeCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? system = fhirSentinel,
    Object? version = fhirSentinel,
    Object? concept = fhirSentinel,
    Object? filter = fhirSentinel,
    Object? valueSet = fhirSentinel,
    Object? copyright = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ValueSetInclude(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        system: identical(system, fhirSentinel)
            ? _value.system
            : system as FhirUri?,
        version: identical(version, fhirSentinel)
            ? _value.version
            : version as FhirString?,
        concept: identical(concept, fhirSentinel)
            ? _value.concept
            : concept as List<ValueSetConcept>?,
        filter: identical(filter, fhirSentinel)
            ? _value.filter
            : filter as List<ValueSetFilter>?,
        valueSet: identical(valueSet, fhirSentinel)
            ? _value.valueSet
            : valueSet as List<FhirCanonical>?,
        copyright: identical(copyright, fhirSentinel)
            ? _value.copyright
            : copyright as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ValueSetIncludeCopyWithExtension on ValueSetInclude {
  $ValueSetIncludeCopyWith<ValueSetInclude> get copyWith =>
      _$ValueSetIncludeCopyWithImpl<ValueSetInclude>(
        this,
        (value) => value,
      );
}

abstract class $ValueSetConceptCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? code,
    FhirString? display,
    List<ValueSetDesignation>? designation,
    bool? disallowExtensions,
  });
}

class _$ValueSetConceptCopyWithImpl<T> implements $ValueSetConceptCopyWith<T> {
  final ValueSetConcept _value;
  final T Function(ValueSetConcept) _then;

  _$ValueSetConceptCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? display = fhirSentinel,
    Object? designation = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ValueSetConcept(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : (code as FhirCode?) ?? _value.code,
        display: identical(display, fhirSentinel)
            ? _value.display
            : display as FhirString?,
        designation: identical(designation, fhirSentinel)
            ? _value.designation
            : designation as List<ValueSetDesignation>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ValueSetConceptCopyWithExtension on ValueSetConcept {
  $ValueSetConceptCopyWith<ValueSetConcept> get copyWith =>
      _$ValueSetConceptCopyWithImpl<ValueSetConcept>(
        this,
        (value) => value,
      );
}

abstract class $ValueSetDesignationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    AllLanguages? language,
    Coding? use,
    List<Coding>? additionalUse,
    FhirString? value,
    bool? disallowExtensions,
  });
}

class _$ValueSetDesignationCopyWithImpl<T>
    implements $ValueSetDesignationCopyWith<T> {
  final ValueSetDesignation _value;
  final T Function(ValueSetDesignation) _then;

  _$ValueSetDesignationCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? language = fhirSentinel,
    Object? use = fhirSentinel,
    Object? additionalUse = fhirSentinel,
    Object? value = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ValueSetDesignation(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        language: identical(language, fhirSentinel)
            ? _value.language
            : language as AllLanguages?,
        use: identical(use, fhirSentinel) ? _value.use : use as Coding?,
        additionalUse: identical(additionalUse, fhirSentinel)
            ? _value.additionalUse
            : additionalUse as List<Coding>?,
        value: identical(value, fhirSentinel)
            ? _value.value
            : (value as FhirString?) ?? _value.value,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ValueSetDesignationCopyWithExtension on ValueSetDesignation {
  $ValueSetDesignationCopyWith<ValueSetDesignation> get copyWith =>
      _$ValueSetDesignationCopyWithImpl<ValueSetDesignation>(
        this,
        (value) => value,
      );
}

abstract class $ValueSetFilterCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? property,
    FilterOperator? op,
    FhirString? value,
    bool? disallowExtensions,
  });
}

class _$ValueSetFilterCopyWithImpl<T> implements $ValueSetFilterCopyWith<T> {
  final ValueSetFilter _value;
  final T Function(ValueSetFilter) _then;

  _$ValueSetFilterCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? property = fhirSentinel,
    Object? op = fhirSentinel,
    Object? value = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ValueSetFilter(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        property: identical(property, fhirSentinel)
            ? _value.property
            : (property as FhirCode?) ?? _value.property,
        op: identical(op, fhirSentinel)
            ? _value.op
            : (op as FilterOperator?) ?? _value.op,
        value: identical(value, fhirSentinel)
            ? _value.value
            : (value as FhirString?) ?? _value.value,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ValueSetFilterCopyWithExtension on ValueSetFilter {
  $ValueSetFilterCopyWith<ValueSetFilter> get copyWith =>
      _$ValueSetFilterCopyWithImpl<ValueSetFilter>(
        this,
        (value) => value,
      );
}

abstract class $ValueSetExpansionCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUri? identifier,
    FhirUri? next,
    FhirDateTime? timestamp,
    FhirInteger? total,
    FhirInteger? offset,
    List<ValueSetParameter>? parameter,
    List<ValueSetProperty>? property,
    List<ValueSetContains>? contains,
    bool? disallowExtensions,
  });
}

class _$ValueSetExpansionCopyWithImpl<T>
    implements $ValueSetExpansionCopyWith<T> {
  final ValueSetExpansion _value;
  final T Function(ValueSetExpansion) _then;

  _$ValueSetExpansionCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? identifier = fhirSentinel,
    Object? next = fhirSentinel,
    Object? timestamp = fhirSentinel,
    Object? total = fhirSentinel,
    Object? offset = fhirSentinel,
    Object? parameter = fhirSentinel,
    Object? property = fhirSentinel,
    Object? contains = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ValueSetExpansion(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        identifier: identical(identifier, fhirSentinel)
            ? _value.identifier
            : identifier as FhirUri?,
        next: identical(next, fhirSentinel) ? _value.next : next as FhirUri?,
        timestamp: identical(timestamp, fhirSentinel)
            ? _value.timestamp
            : (timestamp as FhirDateTime?) ?? _value.timestamp,
        total: identical(total, fhirSentinel)
            ? _value.total
            : total as FhirInteger?,
        offset: identical(offset, fhirSentinel)
            ? _value.offset
            : offset as FhirInteger?,
        parameter: identical(parameter, fhirSentinel)
            ? _value.parameter
            : parameter as List<ValueSetParameter>?,
        property: identical(property, fhirSentinel)
            ? _value.property
            : property as List<ValueSetProperty>?,
        contains: identical(contains, fhirSentinel)
            ? _value.contains
            : contains as List<ValueSetContains>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ValueSetExpansionCopyWithExtension on ValueSetExpansion {
  $ValueSetExpansionCopyWith<ValueSetExpansion> get copyWith =>
      _$ValueSetExpansionCopyWithImpl<ValueSetExpansion>(
        this,
        (value) => value,
      );
}

abstract class $ValueSetParameterCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    FhirString? valueX,
    bool? disallowExtensions,
  });
}

class _$ValueSetParameterCopyWithImpl<T>
    implements $ValueSetParameterCopyWith<T> {
  final ValueSetParameter _value;
  final T Function(ValueSetParameter) _then;

  _$ValueSetParameterCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? name = fhirSentinel,
    Object? valueX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ValueSetParameter(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        name: identical(name, fhirSentinel)
            ? _value.name
            : (name as FhirString?) ?? _value.name,
        valueX: identical(valueX, fhirSentinel)
            ? _value.valueX
            : valueX as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ValueSetParameterCopyWithExtension on ValueSetParameter {
  $ValueSetParameterCopyWith<ValueSetParameter> get copyWith =>
      _$ValueSetParameterCopyWithImpl<ValueSetParameter>(
        this,
        (value) => value,
      );
}

abstract class $ValueSetPropertyCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? code,
    FhirUri? uri,
    bool? disallowExtensions,
  });
}

class _$ValueSetPropertyCopyWithImpl<T>
    implements $ValueSetPropertyCopyWith<T> {
  final ValueSetProperty _value;
  final T Function(ValueSetProperty) _then;

  _$ValueSetPropertyCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? uri = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ValueSetProperty(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : (code as FhirCode?) ?? _value.code,
        uri: identical(uri, fhirSentinel) ? _value.uri : uri as FhirUri?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ValueSetPropertyCopyWithExtension on ValueSetProperty {
  $ValueSetPropertyCopyWith<ValueSetProperty> get copyWith =>
      _$ValueSetPropertyCopyWithImpl<ValueSetProperty>(
        this,
        (value) => value,
      );
}

abstract class $ValueSetContainsCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUri? system,
    FhirBoolean? abstract_,
    FhirBoolean? inactive,
    FhirString? version,
    FhirCode? code,
    FhirString? display,
    List<ValueSetDesignation>? designation,
    List<ValueSetProperty1>? property,
    List<ValueSetContains>? contains,
    bool? disallowExtensions,
  });
}

class _$ValueSetContainsCopyWithImpl<T>
    implements $ValueSetContainsCopyWith<T> {
  final ValueSetContains _value;
  final T Function(ValueSetContains) _then;

  _$ValueSetContainsCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? system = fhirSentinel,
    Object? abstract_ = fhirSentinel,
    Object? inactive = fhirSentinel,
    Object? version = fhirSentinel,
    Object? code = fhirSentinel,
    Object? display = fhirSentinel,
    Object? designation = fhirSentinel,
    Object? property = fhirSentinel,
    Object? contains = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ValueSetContains(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        system: identical(system, fhirSentinel)
            ? _value.system
            : system as FhirUri?,
        abstract_: identical(abstract_, fhirSentinel)
            ? _value.abstract_
            : abstract_ as FhirBoolean?,
        inactive: identical(inactive, fhirSentinel)
            ? _value.inactive
            : inactive as FhirBoolean?,
        version: identical(version, fhirSentinel)
            ? _value.version
            : version as FhirString?,
        code: identical(code, fhirSentinel) ? _value.code : code as FhirCode?,
        display: identical(display, fhirSentinel)
            ? _value.display
            : display as FhirString?,
        designation: identical(designation, fhirSentinel)
            ? _value.designation
            : designation as List<ValueSetDesignation>?,
        property: identical(property, fhirSentinel)
            ? _value.property
            : property as List<ValueSetProperty1>?,
        contains: identical(contains, fhirSentinel)
            ? _value.contains
            : contains as List<ValueSetContains>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ValueSetContainsCopyWithExtension on ValueSetContains {
  $ValueSetContainsCopyWith<ValueSetContains> get copyWith =>
      _$ValueSetContainsCopyWithImpl<ValueSetContains>(
        this,
        (value) => value,
      );
}

abstract class $ValueSetProperty1CopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? code,
    FhirCode? valueX,
    List<ValueSetSubProperty>? subProperty,
    bool? disallowExtensions,
  });
}

class _$ValueSetProperty1CopyWithImpl<T>
    implements $ValueSetProperty1CopyWith<T> {
  final ValueSetProperty1 _value;
  final T Function(ValueSetProperty1) _then;

  _$ValueSetProperty1CopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? valueX = fhirSentinel,
    Object? subProperty = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ValueSetProperty1(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : (code as FhirCode?) ?? _value.code,
        valueX: identical(valueX, fhirSentinel)
            ? _value.valueX
            : (valueX as FhirCode?) ?? _value.valueX,
        subProperty: identical(subProperty, fhirSentinel)
            ? _value.subProperty
            : subProperty as List<ValueSetSubProperty>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ValueSetProperty1CopyWithExtension on ValueSetProperty1 {
  $ValueSetProperty1CopyWith<ValueSetProperty1> get copyWith =>
      _$ValueSetProperty1CopyWithImpl<ValueSetProperty1>(
        this,
        (value) => value,
      );
}

abstract class $ValueSetSubPropertyCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? code,
    FhirCode? valueX,
    bool? disallowExtensions,
  });
}

class _$ValueSetSubPropertyCopyWithImpl<T>
    implements $ValueSetSubPropertyCopyWith<T> {
  final ValueSetSubProperty _value;
  final T Function(ValueSetSubProperty) _then;

  _$ValueSetSubPropertyCopyWithImpl(this._value, this._then);

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
      ValueSetSubProperty(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : (code as FhirCode?) ?? _value.code,
        valueX: identical(valueX, fhirSentinel)
            ? _value.valueX
            : (valueX as FhirCode?) ?? _value.valueX,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ValueSetSubPropertyCopyWithExtension on ValueSetSubProperty {
  $ValueSetSubPropertyCopyWith<ValueSetSubProperty> get copyWith =>
      _$ValueSetSubPropertyCopyWithImpl<ValueSetSubProperty>(
        this,
        (value) => value,
      );
}

abstract class $ValueSetScopeCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? inclusionCriteria,
    FhirString? exclusionCriteria,
    bool? disallowExtensions,
  });
}

class _$ValueSetScopeCopyWithImpl<T> implements $ValueSetScopeCopyWith<T> {
  final ValueSetScope _value;
  final T Function(ValueSetScope) _then;

  _$ValueSetScopeCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? inclusionCriteria = fhirSentinel,
    Object? exclusionCriteria = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ValueSetScope(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        inclusionCriteria: identical(inclusionCriteria, fhirSentinel)
            ? _value.inclusionCriteria
            : inclusionCriteria as FhirString?,
        exclusionCriteria: identical(exclusionCriteria, fhirSentinel)
            ? _value.exclusionCriteria
            : exclusionCriteria as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ValueSetScopeCopyWithExtension on ValueSetScope {
  $ValueSetScopeCopyWith<ValueSetScope> get copyWith =>
      _$ValueSetScopeCopyWithImpl<ValueSetScope>(
        this,
        (value) => value,
      );
}
