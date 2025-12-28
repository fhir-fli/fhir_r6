// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'personal_relationship.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $PersonalRelationshipCopyWith<T>
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
    Reference? source,
    CodeableConcept? relationshipType,
    Reference? target,
    List<Period>? period,
    CodeableConcept? confidence,
    Reference? asserter,
    List<Reference>? group,
    bool? disallowExtensions,
  });
}

class _$PersonalRelationshipCopyWithImpl<T>
    implements $PersonalRelationshipCopyWith<T> {
  final PersonalRelationship _value;
  final T Function(PersonalRelationship) _then;

  _$PersonalRelationshipCopyWithImpl(this._value, this._then);

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
    Object? source = fhirSentinel,
    Object? relationshipType = fhirSentinel,
    Object? target = fhirSentinel,
    Object? period = fhirSentinel,
    Object? confidence = fhirSentinel,
    Object? asserter = fhirSentinel,
    Object? group = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      PersonalRelationship(
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
        source: identical(source, fhirSentinel)
            ? _value.source
            : (source as Reference?) ?? _value.source,
        relationshipType: identical(relationshipType, fhirSentinel)
            ? _value.relationshipType
            : (relationshipType as CodeableConcept?) ?? _value.relationshipType,
        target: identical(target, fhirSentinel)
            ? _value.target
            : (target as Reference?) ?? _value.target,
        period: identical(period, fhirSentinel)
            ? _value.period
            : period as List<Period>?,
        confidence: identical(confidence, fhirSentinel)
            ? _value.confidence
            : confidence as CodeableConcept?,
        asserter: identical(asserter, fhirSentinel)
            ? _value.asserter
            : asserter as Reference?,
        group: identical(group, fhirSentinel)
            ? _value.group
            : group as List<Reference>?,
      ),
    );
  }
}

extension PersonalRelationshipCopyWithExtension on PersonalRelationship {
  $PersonalRelationshipCopyWith<PersonalRelationship> get copyWith =>
      _$PersonalRelationshipCopyWithImpl<PersonalRelationship>(
        this,
        (value) => value,
      );
}
