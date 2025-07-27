// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'graph_definition.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $GraphDefinitionCopyWith<T>
    extends $CanonicalResourceCopyWith<T> {
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
    FhirId? start,
    List<GraphDefinitionNode>? node,
    List<GraphDefinitionLink>? link,
    bool? disallowExtensions,
  });
}

class _$GraphDefinitionCopyWithImpl<T> implements $GraphDefinitionCopyWith<T> {
  final GraphDefinition _value;
  final T Function(GraphDefinition) _then;

  _$GraphDefinitionCopyWithImpl(this._value, this._then);

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
    Object? start = fhirSentinel,
    Object? node = fhirSentinel,
    Object? link = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      GraphDefinition(
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
        name: identical(name, fhirSentinel)
            ? _value.name
            : (name as FhirString?) ?? _value.name,
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
        start: identical(start, fhirSentinel) ? _value.start : start as FhirId?,
        node: identical(node, fhirSentinel)
            ? _value.node
            : node as List<GraphDefinitionNode>?,
        link: identical(link, fhirSentinel)
            ? _value.link
            : link as List<GraphDefinitionLink>?,
      ),
    );
  }
}

extension GraphDefinitionCopyWithExtension on GraphDefinition {
  $GraphDefinitionCopyWith<GraphDefinition> get copyWith =>
      _$GraphDefinitionCopyWithImpl<GraphDefinition>(
        this,
        (value) => value,
      );
}

abstract class $GraphDefinitionNodeCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? nodeId,
    FhirString? description,
    VersionIndependentResourceTypesAll? type,
    FhirCanonical? profile,
    bool? disallowExtensions,
  });
}

class _$GraphDefinitionNodeCopyWithImpl<T>
    implements $GraphDefinitionNodeCopyWith<T> {
  final GraphDefinitionNode _value;
  final T Function(GraphDefinitionNode) _then;

  _$GraphDefinitionNodeCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? nodeId = fhirSentinel,
    Object? description = fhirSentinel,
    Object? type = fhirSentinel,
    Object? profile = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      GraphDefinitionNode(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        nodeId: identical(nodeId, fhirSentinel)
            ? _value.nodeId
            : (nodeId as FhirId?) ?? _value.nodeId,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirString?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : (type as VersionIndependentResourceTypesAll?) ?? _value.type,
        profile: identical(profile, fhirSentinel)
            ? _value.profile
            : profile as FhirCanonical?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension GraphDefinitionNodeCopyWithExtension on GraphDefinitionNode {
  $GraphDefinitionNodeCopyWith<GraphDefinitionNode> get copyWith =>
      _$GraphDefinitionNodeCopyWithImpl<GraphDefinitionNode>(
        this,
        (value) => value,
      );
}

abstract class $GraphDefinitionLinkCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? description,
    FhirInteger? min,
    FhirString? max,
    FhirId? sourceId,
    FhirString? path,
    FhirString? sliceName,
    FhirId? targetId,
    FhirString? params,
    List<GraphDefinitionCompartment>? compartment,
    bool? disallowExtensions,
  });
}

class _$GraphDefinitionLinkCopyWithImpl<T>
    implements $GraphDefinitionLinkCopyWith<T> {
  final GraphDefinitionLink _value;
  final T Function(GraphDefinitionLink) _then;

  _$GraphDefinitionLinkCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? description = fhirSentinel,
    Object? min = fhirSentinel,
    Object? max = fhirSentinel,
    Object? sourceId = fhirSentinel,
    Object? path = fhirSentinel,
    Object? sliceName = fhirSentinel,
    Object? targetId = fhirSentinel,
    Object? params = fhirSentinel,
    Object? compartment = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      GraphDefinitionLink(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirString?,
        min: identical(min, fhirSentinel) ? _value.min : min as FhirInteger?,
        max: identical(max, fhirSentinel) ? _value.max : max as FhirString?,
        sourceId: identical(sourceId, fhirSentinel)
            ? _value.sourceId
            : (sourceId as FhirId?) ?? _value.sourceId,
        path: identical(path, fhirSentinel) ? _value.path : path as FhirString?,
        sliceName: identical(sliceName, fhirSentinel)
            ? _value.sliceName
            : sliceName as FhirString?,
        targetId: identical(targetId, fhirSentinel)
            ? _value.targetId
            : (targetId as FhirId?) ?? _value.targetId,
        params: identical(params, fhirSentinel)
            ? _value.params
            : params as FhirString?,
        compartment: identical(compartment, fhirSentinel)
            ? _value.compartment
            : compartment as List<GraphDefinitionCompartment>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension GraphDefinitionLinkCopyWithExtension on GraphDefinitionLink {
  $GraphDefinitionLinkCopyWith<GraphDefinitionLink> get copyWith =>
      _$GraphDefinitionLinkCopyWithImpl<GraphDefinitionLink>(
        this,
        (value) => value,
      );
}

abstract class $GraphDefinitionCompartmentCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    GraphCompartmentUse? use,
    GraphCompartmentRule? rule,
    CompartmentType? code,
    FhirString? expression,
    FhirString? description,
    bool? disallowExtensions,
  });
}

class _$GraphDefinitionCompartmentCopyWithImpl<T>
    implements $GraphDefinitionCompartmentCopyWith<T> {
  final GraphDefinitionCompartment _value;
  final T Function(GraphDefinitionCompartment) _then;

  _$GraphDefinitionCompartmentCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? use = fhirSentinel,
    Object? rule = fhirSentinel,
    Object? code = fhirSentinel,
    Object? expression = fhirSentinel,
    Object? description = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      GraphDefinitionCompartment(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        use: identical(use, fhirSentinel)
            ? _value.use
            : (use as GraphCompartmentUse?) ?? _value.use,
        rule: identical(rule, fhirSentinel)
            ? _value.rule
            : (rule as GraphCompartmentRule?) ?? _value.rule,
        code: identical(code, fhirSentinel)
            ? _value.code
            : (code as CompartmentType?) ?? _value.code,
        expression: identical(expression, fhirSentinel)
            ? _value.expression
            : expression as FhirString?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension GraphDefinitionCompartmentCopyWithExtension
    on GraphDefinitionCompartment {
  $GraphDefinitionCompartmentCopyWith<GraphDefinitionCompartment>
      get copyWith =>
          _$GraphDefinitionCompartmentCopyWithImpl<GraphDefinitionCompartment>(
            this,
            (value) => value,
          );
}
