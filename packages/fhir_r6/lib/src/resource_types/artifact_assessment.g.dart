// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'artifact_assessment.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $ArtifactAssessmentCopyWith<T>
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
    FhirString? title,
    FhirMarkdown? citeAs,
    ArtifactXArtifactAssessment? artifactX,
    List<ArtifactAssessmentRelatesTo>? relatesTo,
    FhirDateTime? date,
    FhirMarkdown? copyright,
    FhirDate? approvalDate,
    FhirDate? lastReviewDate,
    List<ArtifactAssessmentContent>? content,
    ArtifactAssessmentWorkflowStatus? workflowStatus,
    ArtifactAssessmentDisposition? disposition,
    bool? disallowExtensions,
  });
}

class _$ArtifactAssessmentCopyWithImpl<T>
    implements $ArtifactAssessmentCopyWith<T> {
  final ArtifactAssessment _value;
  final T Function(ArtifactAssessment) _then;

  _$ArtifactAssessmentCopyWithImpl(this._value, this._then);

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
    Object? title = fhirSentinel,
    Object? citeAs = fhirSentinel,
    Object? artifactX = fhirSentinel,
    Object? relatesTo = fhirSentinel,
    Object? date = fhirSentinel,
    Object? copyright = fhirSentinel,
    Object? approvalDate = fhirSentinel,
    Object? lastReviewDate = fhirSentinel,
    Object? content = fhirSentinel,
    Object? workflowStatus = fhirSentinel,
    Object? disposition = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ArtifactAssessment(
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
        title: identical(title, fhirSentinel)
            ? _value.title
            : title as FhirString?,
        citeAs: identical(citeAs, fhirSentinel)
            ? _value.citeAs
            : citeAs as FhirMarkdown?,
        artifactX: identical(artifactX, fhirSentinel)
            ? _value.artifactX
            : (artifactX as ArtifactXArtifactAssessment?) ?? _value.artifactX,
        relatesTo: identical(relatesTo, fhirSentinel)
            ? _value.relatesTo
            : relatesTo as List<ArtifactAssessmentRelatesTo>?,
        date:
            identical(date, fhirSentinel) ? _value.date : date as FhirDateTime?,
        copyright: identical(copyright, fhirSentinel)
            ? _value.copyright
            : copyright as FhirMarkdown?,
        approvalDate: identical(approvalDate, fhirSentinel)
            ? _value.approvalDate
            : approvalDate as FhirDate?,
        lastReviewDate: identical(lastReviewDate, fhirSentinel)
            ? _value.lastReviewDate
            : lastReviewDate as FhirDate?,
        content: identical(content, fhirSentinel)
            ? _value.content
            : content as List<ArtifactAssessmentContent>?,
        workflowStatus: identical(workflowStatus, fhirSentinel)
            ? _value.workflowStatus
            : workflowStatus as ArtifactAssessmentWorkflowStatus?,
        disposition: identical(disposition, fhirSentinel)
            ? _value.disposition
            : disposition as ArtifactAssessmentDisposition?,
      ),
    );
  }
}

extension ArtifactAssessmentCopyWithExtension on ArtifactAssessment {
  $ArtifactAssessmentCopyWith<ArtifactAssessment> get copyWith =>
      _$ArtifactAssessmentCopyWithImpl<ArtifactAssessment>(
        this,
        (value) => value,
      );
}

abstract class $ArtifactAssessmentRelatesToCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ArtifactRelationshipType? type,
    TargetXArtifactAssessmentRelatesTo? targetX,
    bool? disallowExtensions,
  });
}

class _$ArtifactAssessmentRelatesToCopyWithImpl<T>
    implements $ArtifactAssessmentRelatesToCopyWith<T> {
  final ArtifactAssessmentRelatesTo _value;
  final T Function(ArtifactAssessmentRelatesTo) _then;

  _$ArtifactAssessmentRelatesToCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? targetX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ArtifactAssessmentRelatesTo(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : (type as ArtifactRelationshipType?) ?? _value.type,
        targetX: identical(targetX, fhirSentinel)
            ? _value.targetX
            : (targetX as TargetXArtifactAssessmentRelatesTo?) ??
                _value.targetX,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ArtifactAssessmentRelatesToCopyWithExtension
    on ArtifactAssessmentRelatesTo {
  $ArtifactAssessmentRelatesToCopyWith<ArtifactAssessmentRelatesTo>
      get copyWith => _$ArtifactAssessmentRelatesToCopyWithImpl<
              ArtifactAssessmentRelatesTo>(
            this,
            (value) => value,
          );
}

abstract class $ArtifactAssessmentContentCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirMarkdown? summary,
    CodeableConcept? type,
    List<CodeableConcept>? classifier,
    Quantity? quantity,
    List<Reference>? author,
    List<FhirUri>? path,
    List<ArtifactAssessmentRelatesTo>? relatesTo,
    FhirBoolean? freeToShare,
    List<ArtifactAssessmentContent>? component,
    bool? disallowExtensions,
  });
}

class _$ArtifactAssessmentContentCopyWithImpl<T>
    implements $ArtifactAssessmentContentCopyWith<T> {
  final ArtifactAssessmentContent _value;
  final T Function(ArtifactAssessmentContent) _then;

  _$ArtifactAssessmentContentCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? summary = fhirSentinel,
    Object? type = fhirSentinel,
    Object? classifier = fhirSentinel,
    Object? quantity = fhirSentinel,
    Object? author = fhirSentinel,
    Object? path = fhirSentinel,
    Object? relatesTo = fhirSentinel,
    Object? freeToShare = fhirSentinel,
    Object? component = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ArtifactAssessmentContent(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        summary: identical(summary, fhirSentinel)
            ? _value.summary
            : summary as FhirMarkdown?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        classifier: identical(classifier, fhirSentinel)
            ? _value.classifier
            : classifier as List<CodeableConcept>?,
        quantity: identical(quantity, fhirSentinel)
            ? _value.quantity
            : quantity as Quantity?,
        author: identical(author, fhirSentinel)
            ? _value.author
            : author as List<Reference>?,
        path: identical(path, fhirSentinel)
            ? _value.path
            : path as List<FhirUri>?,
        relatesTo: identical(relatesTo, fhirSentinel)
            ? _value.relatesTo
            : relatesTo as List<ArtifactAssessmentRelatesTo>?,
        freeToShare: identical(freeToShare, fhirSentinel)
            ? _value.freeToShare
            : freeToShare as FhirBoolean?,
        component: identical(component, fhirSentinel)
            ? _value.component
            : component as List<ArtifactAssessmentContent>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ArtifactAssessmentContentCopyWithExtension
    on ArtifactAssessmentContent {
  $ArtifactAssessmentContentCopyWith<ArtifactAssessmentContent> get copyWith =>
      _$ArtifactAssessmentContentCopyWithImpl<ArtifactAssessmentContent>(
        this,
        (value) => value,
      );
}
