// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'requirements.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $RequirementsCopyWith<T> extends $CanonicalResourceCopyWith<T> {
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
    List<FhirCanonical>? derivedFrom,
    List<FhirUrl>? reference,
    List<FhirCanonical>? actor,
    List<RequirementsStatement>? statement,
    bool? disallowExtensions,
  });
}

class _$RequirementsCopyWithImpl<T> implements $RequirementsCopyWith<T> {
  final Requirements _value;
  final T Function(Requirements) _then;

  _$RequirementsCopyWithImpl(this._value, this._then);

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
    Object? derivedFrom = fhirSentinel,
    Object? reference = fhirSentinel,
    Object? actor = fhirSentinel,
    Object? statement = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Requirements(
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
        derivedFrom: identical(derivedFrom, fhirSentinel)
            ? _value.derivedFrom
            : derivedFrom as List<FhirCanonical>?,
        reference: identical(reference, fhirSentinel)
            ? _value.reference
            : reference as List<FhirUrl>?,
        actor: identical(actor, fhirSentinel)
            ? _value.actor
            : actor as List<FhirCanonical>?,
        statement: identical(statement, fhirSentinel)
            ? _value.statement
            : statement as List<RequirementsStatement>?,
      ),
    );
  }
}

extension RequirementsCopyWithExtension on Requirements {
  $RequirementsCopyWith<Requirements> get copyWith =>
      _$RequirementsCopyWithImpl<Requirements>(
        this,
        (value) => value,
      );
}

abstract class $RequirementsStatementCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? key,
    FhirString? label,
    List<ConformanceExpectation>? conformance,
    FhirBoolean? conditionality,
    FhirMarkdown? requirement,
    FhirString? derivedFrom,
    FhirString? parent,
    List<FhirUrl>? satisfiedBy,
    List<FhirUrl>? reference,
    List<Reference>? source,
    bool? disallowExtensions,
  });
}

class _$RequirementsStatementCopyWithImpl<T>
    implements $RequirementsStatementCopyWith<T> {
  final RequirementsStatement _value;
  final T Function(RequirementsStatement) _then;

  _$RequirementsStatementCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? key = fhirSentinel,
    Object? label = fhirSentinel,
    Object? conformance = fhirSentinel,
    Object? conditionality = fhirSentinel,
    Object? requirement = fhirSentinel,
    Object? derivedFrom = fhirSentinel,
    Object? parent = fhirSentinel,
    Object? satisfiedBy = fhirSentinel,
    Object? reference = fhirSentinel,
    Object? source = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      RequirementsStatement(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        key: identical(key, fhirSentinel)
            ? _value.key
            : (key as FhirId?) ?? _value.key,
        label: identical(label, fhirSentinel)
            ? _value.label
            : label as FhirString?,
        conformance: identical(conformance, fhirSentinel)
            ? _value.conformance
            : conformance as List<ConformanceExpectation>?,
        conditionality: identical(conditionality, fhirSentinel)
            ? _value.conditionality
            : conditionality as FhirBoolean?,
        requirement: identical(requirement, fhirSentinel)
            ? _value.requirement
            : (requirement as FhirMarkdown?) ?? _value.requirement,
        derivedFrom: identical(derivedFrom, fhirSentinel)
            ? _value.derivedFrom
            : derivedFrom as FhirString?,
        parent: identical(parent, fhirSentinel)
            ? _value.parent
            : parent as FhirString?,
        satisfiedBy: identical(satisfiedBy, fhirSentinel)
            ? _value.satisfiedBy
            : satisfiedBy as List<FhirUrl>?,
        reference: identical(reference, fhirSentinel)
            ? _value.reference
            : reference as List<FhirUrl>?,
        source: identical(source, fhirSentinel)
            ? _value.source
            : source as List<Reference>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension RequirementsStatementCopyWithExtension on RequirementsStatement {
  $RequirementsStatementCopyWith<RequirementsStatement> get copyWith =>
      _$RequirementsStatementCopyWithImpl<RequirementsStatement>(
        this,
        (value) => value,
      );
}
