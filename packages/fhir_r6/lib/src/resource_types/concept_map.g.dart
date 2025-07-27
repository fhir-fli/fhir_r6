// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'concept_map.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $ConceptMapCopyWith<T> extends $MetadataResourceCopyWith<T> {
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
    List<ConceptMapProperty>? property,
    List<ConceptMapAdditionalAttribute>? additionalAttribute,
    FhirUri? sourceScopeX,
    FhirUri? targetScopeX,
    List<ConceptMapGroup>? group,
    bool? disallowExtensions,
  });
}

class _$ConceptMapCopyWithImpl<T> implements $ConceptMapCopyWith<T> {
  final ConceptMap _value;
  final T Function(ConceptMap) _then;

  _$ConceptMapCopyWithImpl(this._value, this._then);

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
    Object? property = fhirSentinel,
    Object? additionalAttribute = fhirSentinel,
    Object? sourceScopeX = fhirSentinel,
    Object? targetScopeX = fhirSentinel,
    Object? group = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ConceptMap(
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
        property: identical(property, fhirSentinel)
            ? _value.property
            : property as List<ConceptMapProperty>?,
        additionalAttribute: identical(additionalAttribute, fhirSentinel)
            ? _value.additionalAttribute
            : additionalAttribute as List<ConceptMapAdditionalAttribute>?,
        sourceScopeX: identical(sourceScopeX, fhirSentinel)
            ? _value.sourceScopeX
            : sourceScopeX as FhirUri?,
        targetScopeX: identical(targetScopeX, fhirSentinel)
            ? _value.targetScopeX
            : targetScopeX as FhirUri?,
        group: identical(group, fhirSentinel)
            ? _value.group
            : group as List<ConceptMapGroup>?,
      ),
    );
  }
}

extension ConceptMapCopyWithExtension on ConceptMap {
  $ConceptMapCopyWith<ConceptMap> get copyWith =>
      _$ConceptMapCopyWithImpl<ConceptMap>(
        this,
        (value) => value,
      );
}

abstract class $ConceptMapPropertyCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? code,
    FhirUri? uri,
    FhirString? description,
    ConceptMapPropertyType? type,
    FhirCanonical? system,
    bool? disallowExtensions,
  });
}

class _$ConceptMapPropertyCopyWithImpl<T>
    implements $ConceptMapPropertyCopyWith<T> {
  final ConceptMapProperty _value;
  final T Function(ConceptMapProperty) _then;

  _$ConceptMapPropertyCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? uri = fhirSentinel,
    Object? description = fhirSentinel,
    Object? type = fhirSentinel,
    Object? system = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ConceptMapProperty(
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
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirString?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : (type as ConceptMapPropertyType?) ?? _value.type,
        system: identical(system, fhirSentinel)
            ? _value.system
            : system as FhirCanonical?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ConceptMapPropertyCopyWithExtension on ConceptMapProperty {
  $ConceptMapPropertyCopyWith<ConceptMapProperty> get copyWith =>
      _$ConceptMapPropertyCopyWithImpl<ConceptMapProperty>(
        this,
        (value) => value,
      );
}

abstract class $ConceptMapAdditionalAttributeCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? code,
    FhirUri? uri,
    FhirString? description,
    ConceptMapAttributeType? type,
    bool? disallowExtensions,
  });
}

class _$ConceptMapAdditionalAttributeCopyWithImpl<T>
    implements $ConceptMapAdditionalAttributeCopyWith<T> {
  final ConceptMapAdditionalAttribute _value;
  final T Function(ConceptMapAdditionalAttribute) _then;

  _$ConceptMapAdditionalAttributeCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? uri = fhirSentinel,
    Object? description = fhirSentinel,
    Object? type = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ConceptMapAdditionalAttribute(
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
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirString?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : (type as ConceptMapAttributeType?) ?? _value.type,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ConceptMapAdditionalAttributeCopyWithExtension
    on ConceptMapAdditionalAttribute {
  $ConceptMapAdditionalAttributeCopyWith<ConceptMapAdditionalAttribute>
      get copyWith => _$ConceptMapAdditionalAttributeCopyWithImpl<
              ConceptMapAdditionalAttribute>(
            this,
            (value) => value,
          );
}

abstract class $ConceptMapGroupCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCanonical? source,
    FhirCanonical? target,
    List<ConceptMapElement>? element,
    ConceptMapUnmapped? unmapped,
    bool? disallowExtensions,
  });
}

class _$ConceptMapGroupCopyWithImpl<T> implements $ConceptMapGroupCopyWith<T> {
  final ConceptMapGroup _value;
  final T Function(ConceptMapGroup) _then;

  _$ConceptMapGroupCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? source = fhirSentinel,
    Object? target = fhirSentinel,
    Object? element = fhirSentinel,
    Object? unmapped = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ConceptMapGroup(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        source: identical(source, fhirSentinel)
            ? _value.source
            : source as FhirCanonical?,
        target: identical(target, fhirSentinel)
            ? _value.target
            : target as FhirCanonical?,
        element: identical(element, fhirSentinel)
            ? _value.element
            : (element as List<ConceptMapElement>?) ?? _value.element,
        unmapped: identical(unmapped, fhirSentinel)
            ? _value.unmapped
            : unmapped as ConceptMapUnmapped?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ConceptMapGroupCopyWithExtension on ConceptMapGroup {
  $ConceptMapGroupCopyWith<ConceptMapGroup> get copyWith =>
      _$ConceptMapGroupCopyWithImpl<ConceptMapGroup>(
        this,
        (value) => value,
      );
}

abstract class $ConceptMapElementCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? code,
    FhirString? display,
    FhirCanonical? valueSet,
    FhirBoolean? noMap,
    List<ConceptMapTarget>? target,
    bool? disallowExtensions,
  });
}

class _$ConceptMapElementCopyWithImpl<T>
    implements $ConceptMapElementCopyWith<T> {
  final ConceptMapElement _value;
  final T Function(ConceptMapElement) _then;

  _$ConceptMapElementCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? display = fhirSentinel,
    Object? valueSet = fhirSentinel,
    Object? noMap = fhirSentinel,
    Object? target = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ConceptMapElement(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        code: identical(code, fhirSentinel) ? _value.code : code as FhirCode?,
        display: identical(display, fhirSentinel)
            ? _value.display
            : display as FhirString?,
        valueSet: identical(valueSet, fhirSentinel)
            ? _value.valueSet
            : valueSet as FhirCanonical?,
        noMap: identical(noMap, fhirSentinel)
            ? _value.noMap
            : noMap as FhirBoolean?,
        target: identical(target, fhirSentinel)
            ? _value.target
            : target as List<ConceptMapTarget>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ConceptMapElementCopyWithExtension on ConceptMapElement {
  $ConceptMapElementCopyWith<ConceptMapElement> get copyWith =>
      _$ConceptMapElementCopyWithImpl<ConceptMapElement>(
        this,
        (value) => value,
      );
}

abstract class $ConceptMapTargetCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? code,
    FhirString? display,
    FhirCanonical? valueSet,
    ConceptMapRelationship? relationship,
    FhirString? comment,
    List<ConceptMapProperty>? property,
    List<ConceptMapDependsOn>? dependsOn,
    List<ConceptMapDependsOn>? product,
    bool? disallowExtensions,
  });
}

class _$ConceptMapTargetCopyWithImpl<T>
    implements $ConceptMapTargetCopyWith<T> {
  final ConceptMapTarget _value;
  final T Function(ConceptMapTarget) _then;

  _$ConceptMapTargetCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? display = fhirSentinel,
    Object? valueSet = fhirSentinel,
    Object? relationship = fhirSentinel,
    Object? comment = fhirSentinel,
    Object? property = fhirSentinel,
    Object? dependsOn = fhirSentinel,
    Object? product = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ConceptMapTarget(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        code: identical(code, fhirSentinel) ? _value.code : code as FhirCode?,
        display: identical(display, fhirSentinel)
            ? _value.display
            : display as FhirString?,
        valueSet: identical(valueSet, fhirSentinel)
            ? _value.valueSet
            : valueSet as FhirCanonical?,
        relationship: identical(relationship, fhirSentinel)
            ? _value.relationship
            : (relationship as ConceptMapRelationship?) ?? _value.relationship,
        comment: identical(comment, fhirSentinel)
            ? _value.comment
            : comment as FhirString?,
        property: identical(property, fhirSentinel)
            ? _value.property
            : property as List<ConceptMapProperty1>?,
        dependsOn: identical(dependsOn, fhirSentinel)
            ? _value.dependsOn
            : dependsOn as List<ConceptMapDependsOn>?,
        product: identical(product, fhirSentinel)
            ? _value.product
            : product as List<ConceptMapDependsOn>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ConceptMapTargetCopyWithExtension on ConceptMapTarget {
  $ConceptMapTargetCopyWith<ConceptMapTarget> get copyWith =>
      _$ConceptMapTargetCopyWithImpl<ConceptMapTarget>(
        this,
        (value) => value,
      );
}

abstract class $ConceptMapProperty1CopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? code,
    Coding? valueX,
    bool? disallowExtensions,
  });
}

class _$ConceptMapProperty1CopyWithImpl<T>
    implements $ConceptMapProperty1CopyWith<T> {
  final ConceptMapProperty1 _value;
  final T Function(ConceptMapProperty1) _then;

  _$ConceptMapProperty1CopyWithImpl(this._value, this._then);

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
      ConceptMapProperty1(
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
            : (valueX as Coding?) ?? _value.valueX,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ConceptMapProperty1CopyWithExtension on ConceptMapProperty1 {
  $ConceptMapProperty1CopyWith<ConceptMapProperty1> get copyWith =>
      _$ConceptMapProperty1CopyWithImpl<ConceptMapProperty1>(
        this,
        (value) => value,
      );
}

abstract class $ConceptMapDependsOnCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? attribute,
    FhirCode? valueX,
    FhirCanonical? valueSet,
    bool? disallowExtensions,
  });
}

class _$ConceptMapDependsOnCopyWithImpl<T>
    implements $ConceptMapDependsOnCopyWith<T> {
  final ConceptMapDependsOn _value;
  final T Function(ConceptMapDependsOn) _then;

  _$ConceptMapDependsOnCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? attribute = fhirSentinel,
    Object? valueX = fhirSentinel,
    Object? valueSet = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ConceptMapDependsOn(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        attribute: identical(attribute, fhirSentinel)
            ? _value.attribute
            : (attribute as FhirCode?) ?? _value.attribute,
        valueX: identical(valueX, fhirSentinel)
            ? _value.valueX
            : valueX as FhirCode?,
        valueSet: identical(valueSet, fhirSentinel)
            ? _value.valueSet
            : valueSet as FhirCanonical?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ConceptMapDependsOnCopyWithExtension on ConceptMapDependsOn {
  $ConceptMapDependsOnCopyWith<ConceptMapDependsOn> get copyWith =>
      _$ConceptMapDependsOnCopyWithImpl<ConceptMapDependsOn>(
        this,
        (value) => value,
      );
}

abstract class $ConceptMapUnmappedCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ConceptMapGroupUnmappedMode? mode,
    FhirCode? code,
    FhirString? display,
    FhirCanonical? valueSet,
    ConceptMapRelationship? relationship,
    FhirCanonical? otherMap,
    bool? disallowExtensions,
  });
}

class _$ConceptMapUnmappedCopyWithImpl<T>
    implements $ConceptMapUnmappedCopyWith<T> {
  final ConceptMapUnmapped _value;
  final T Function(ConceptMapUnmapped) _then;

  _$ConceptMapUnmappedCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? mode = fhirSentinel,
    Object? code = fhirSentinel,
    Object? display = fhirSentinel,
    Object? valueSet = fhirSentinel,
    Object? relationship = fhirSentinel,
    Object? otherMap = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ConceptMapUnmapped(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        mode: identical(mode, fhirSentinel)
            ? _value.mode
            : (mode as ConceptMapGroupUnmappedMode?) ?? _value.mode,
        code: identical(code, fhirSentinel) ? _value.code : code as FhirCode?,
        display: identical(display, fhirSentinel)
            ? _value.display
            : display as FhirString?,
        valueSet: identical(valueSet, fhirSentinel)
            ? _value.valueSet
            : valueSet as FhirCanonical?,
        relationship: identical(relationship, fhirSentinel)
            ? _value.relationship
            : relationship as ConceptMapRelationship?,
        otherMap: identical(otherMap, fhirSentinel)
            ? _value.otherMap
            : otherMap as FhirCanonical?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ConceptMapUnmappedCopyWithExtension on ConceptMapUnmapped {
  $ConceptMapUnmappedCopyWith<ConceptMapUnmapped> get copyWith =>
      _$ConceptMapUnmappedCopyWithImpl<ConceptMapUnmapped>(
        this,
        (value) => value,
      );
}
