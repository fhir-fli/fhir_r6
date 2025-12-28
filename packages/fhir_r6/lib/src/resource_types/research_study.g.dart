// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'research_study.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $ResearchStudyCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    FhirString? name,
    FhirString? title,
    List<ResearchStudyLabel>? label,
    List<Reference>? protocol,
    List<Reference>? partOf,
    FhirMarkdown? citeAs,
    List<ResearchStudyRelatesTo>? relatesTo,
    FhirDateTime? date,
    PublicationStatus? status,
    CodeableConcept? primaryPurposeType,
    CodeableConcept? phase,
    List<CodeableConcept>? studyDesign,
    List<CodeableReference>? focus,
    List<CodeableConcept>? condition,
    List<CodeableConcept>? keyword,
    List<CodeableConcept>? region,
    FhirMarkdown? descriptionSummary,
    FhirMarkdown? description,
    Period? period,
    List<Reference>? site,
    List<Annotation>? note,
    List<CodeableConcept>? classifier,
    List<ResearchStudyAssociatedParty>? associatedParty,
    List<ResearchStudyProgressStatus>? progressStatus,
    CodeableConcept? whyStopped,
    ResearchStudyRecruitment? recruitment,
    List<ResearchStudyComparisonGroup>? comparisonGroup,
    List<ResearchStudyObjective>? objective,
    List<Reference>? result,
    bool? disallowExtensions,
  });
}

class _$ResearchStudyCopyWithImpl<T> implements $ResearchStudyCopyWith<T> {
  final ResearchStudy _value;
  final T Function(ResearchStudy) _then;

  _$ResearchStudyCopyWithImpl(this._value, this._then);

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
    Object? name = fhirSentinel,
    Object? title = fhirSentinel,
    Object? label = fhirSentinel,
    Object? protocol = fhirSentinel,
    Object? partOf = fhirSentinel,
    Object? citeAs = fhirSentinel,
    Object? relatesTo = fhirSentinel,
    Object? date = fhirSentinel,
    Object? status = fhirSentinel,
    Object? primaryPurposeType = fhirSentinel,
    Object? phase = fhirSentinel,
    Object? studyDesign = fhirSentinel,
    Object? focus = fhirSentinel,
    Object? condition = fhirSentinel,
    Object? keyword = fhirSentinel,
    Object? region = fhirSentinel,
    Object? descriptionSummary = fhirSentinel,
    Object? description = fhirSentinel,
    Object? period = fhirSentinel,
    Object? site = fhirSentinel,
    Object? note = fhirSentinel,
    Object? classifier = fhirSentinel,
    Object? associatedParty = fhirSentinel,
    Object? progressStatus = fhirSentinel,
    Object? whyStopped = fhirSentinel,
    Object? recruitment = fhirSentinel,
    Object? comparisonGroup = fhirSentinel,
    Object? objective = fhirSentinel,
    Object? result = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ResearchStudy(
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
        name: identical(name, fhirSentinel) ? _value.name : name as FhirString?,
        title: identical(title, fhirSentinel)
            ? _value.title
            : title as FhirString?,
        label: identical(label, fhirSentinel)
            ? _value.label
            : label as List<ResearchStudyLabel>?,
        protocol: identical(protocol, fhirSentinel)
            ? _value.protocol
            : protocol as List<Reference>?,
        partOf: identical(partOf, fhirSentinel)
            ? _value.partOf
            : partOf as List<Reference>?,
        citeAs: identical(citeAs, fhirSentinel)
            ? _value.citeAs
            : citeAs as FhirMarkdown?,
        relatesTo: identical(relatesTo, fhirSentinel)
            ? _value.relatesTo
            : relatesTo as List<ResearchStudyRelatesTo>?,
        date:
            identical(date, fhirSentinel) ? _value.date : date as FhirDateTime?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as PublicationStatus?) ?? _value.status,
        primaryPurposeType: identical(primaryPurposeType, fhirSentinel)
            ? _value.primaryPurposeType
            : primaryPurposeType as CodeableConcept?,
        phase: identical(phase, fhirSentinel)
            ? _value.phase
            : phase as CodeableConcept?,
        studyDesign: identical(studyDesign, fhirSentinel)
            ? _value.studyDesign
            : studyDesign as List<CodeableConcept>?,
        focus: identical(focus, fhirSentinel)
            ? _value.focus
            : focus as List<CodeableReference>?,
        condition: identical(condition, fhirSentinel)
            ? _value.condition
            : condition as List<CodeableConcept>?,
        keyword: identical(keyword, fhirSentinel)
            ? _value.keyword
            : keyword as List<CodeableConcept>?,
        region: identical(region, fhirSentinel)
            ? _value.region
            : region as List<CodeableConcept>?,
        descriptionSummary: identical(descriptionSummary, fhirSentinel)
            ? _value.descriptionSummary
            : descriptionSummary as FhirMarkdown?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirMarkdown?,
        period:
            identical(period, fhirSentinel) ? _value.period : period as Period?,
        site: identical(site, fhirSentinel)
            ? _value.site
            : site as List<Reference>?,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
        classifier: identical(classifier, fhirSentinel)
            ? _value.classifier
            : classifier as List<CodeableConcept>?,
        associatedParty: identical(associatedParty, fhirSentinel)
            ? _value.associatedParty
            : associatedParty as List<ResearchStudyAssociatedParty>?,
        progressStatus: identical(progressStatus, fhirSentinel)
            ? _value.progressStatus
            : progressStatus as List<ResearchStudyProgressStatus>?,
        whyStopped: identical(whyStopped, fhirSentinel)
            ? _value.whyStopped
            : whyStopped as CodeableConcept?,
        recruitment: identical(recruitment, fhirSentinel)
            ? _value.recruitment
            : recruitment as ResearchStudyRecruitment?,
        comparisonGroup: identical(comparisonGroup, fhirSentinel)
            ? _value.comparisonGroup
            : comparisonGroup as List<ResearchStudyComparisonGroup>?,
        objective: identical(objective, fhirSentinel)
            ? _value.objective
            : objective as List<ResearchStudyObjective>?,
        result: identical(result, fhirSentinel)
            ? _value.result
            : result as List<Reference>?,
      ),
    );
  }
}

extension ResearchStudyCopyWithExtension on ResearchStudy {
  $ResearchStudyCopyWith<ResearchStudy> get copyWith =>
      _$ResearchStudyCopyWithImpl<ResearchStudy>(
        this,
        (value) => value,
      );
}

abstract class $ResearchStudyLabelCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    FhirString? value,
    bool? disallowExtensions,
  });
}

class _$ResearchStudyLabelCopyWithImpl<T>
    implements $ResearchStudyLabelCopyWith<T> {
  final ResearchStudyLabel _value;
  final T Function(ResearchStudyLabel) _then;

  _$ResearchStudyLabelCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? value = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ResearchStudyLabel(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        value: identical(value, fhirSentinel)
            ? _value.value
            : value as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ResearchStudyLabelCopyWithExtension on ResearchStudyLabel {
  $ResearchStudyLabelCopyWith<ResearchStudyLabel> get copyWith =>
      _$ResearchStudyLabelCopyWithImpl<ResearchStudyLabel>(
        this,
        (value) => value,
      );
}

abstract class $ResearchStudyRelatesToCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ArtifactRelationshipType? type,
    TargetXResearchStudyRelatesTo? targetX,
    bool? disallowExtensions,
  });
}

class _$ResearchStudyRelatesToCopyWithImpl<T>
    implements $ResearchStudyRelatesToCopyWith<T> {
  final ResearchStudyRelatesTo _value;
  final T Function(ResearchStudyRelatesTo) _then;

  _$ResearchStudyRelatesToCopyWithImpl(this._value, this._then);

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
      ResearchStudyRelatesTo(
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
            : (targetX as TargetXResearchStudyRelatesTo?) ?? _value.targetX,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ResearchStudyRelatesToCopyWithExtension on ResearchStudyRelatesTo {
  $ResearchStudyRelatesToCopyWith<ResearchStudyRelatesTo> get copyWith =>
      _$ResearchStudyRelatesToCopyWithImpl<ResearchStudyRelatesTo>(
        this,
        (value) => value,
      );
}

abstract class $ResearchStudyAssociatedPartyCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    CodeableConcept? role,
    List<Period>? period,
    List<CodeableConcept>? classifier,
    Reference? party,
    bool? disallowExtensions,
  });
}

class _$ResearchStudyAssociatedPartyCopyWithImpl<T>
    implements $ResearchStudyAssociatedPartyCopyWith<T> {
  final ResearchStudyAssociatedParty _value;
  final T Function(ResearchStudyAssociatedParty) _then;

  _$ResearchStudyAssociatedPartyCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? name = fhirSentinel,
    Object? role = fhirSentinel,
    Object? period = fhirSentinel,
    Object? classifier = fhirSentinel,
    Object? party = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ResearchStudyAssociatedParty(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        name: identical(name, fhirSentinel) ? _value.name : name as FhirString?,
        role: identical(role, fhirSentinel)
            ? _value.role
            : (role as CodeableConcept?) ?? _value.role,
        period: identical(period, fhirSentinel)
            ? _value.period
            : period as List<Period>?,
        classifier: identical(classifier, fhirSentinel)
            ? _value.classifier
            : classifier as List<CodeableConcept>?,
        party:
            identical(party, fhirSentinel) ? _value.party : party as Reference?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ResearchStudyAssociatedPartyCopyWithExtension
    on ResearchStudyAssociatedParty {
  $ResearchStudyAssociatedPartyCopyWith<ResearchStudyAssociatedParty>
      get copyWith => _$ResearchStudyAssociatedPartyCopyWithImpl<
              ResearchStudyAssociatedParty>(
            this,
            (value) => value,
          );
}

abstract class $ResearchStudyProgressStatusCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? state,
    FhirBoolean? actual,
    Period? period,
    bool? disallowExtensions,
  });
}

class _$ResearchStudyProgressStatusCopyWithImpl<T>
    implements $ResearchStudyProgressStatusCopyWith<T> {
  final ResearchStudyProgressStatus _value;
  final T Function(ResearchStudyProgressStatus) _then;

  _$ResearchStudyProgressStatusCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? state = fhirSentinel,
    Object? actual = fhirSentinel,
    Object? period = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ResearchStudyProgressStatus(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        state: identical(state, fhirSentinel)
            ? _value.state
            : (state as CodeableConcept?) ?? _value.state,
        actual: identical(actual, fhirSentinel)
            ? _value.actual
            : actual as FhirBoolean?,
        period:
            identical(period, fhirSentinel) ? _value.period : period as Period?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ResearchStudyProgressStatusCopyWithExtension
    on ResearchStudyProgressStatus {
  $ResearchStudyProgressStatusCopyWith<ResearchStudyProgressStatus>
      get copyWith => _$ResearchStudyProgressStatusCopyWithImpl<
              ResearchStudyProgressStatus>(
            this,
            (value) => value,
          );
}

abstract class $ResearchStudyRecruitmentCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUnsignedInt? targetNumber,
    FhirUnsignedInt? actualNumber,
    Reference? eligibility,
    Reference? actualGroup,
    bool? disallowExtensions,
  });
}

class _$ResearchStudyRecruitmentCopyWithImpl<T>
    implements $ResearchStudyRecruitmentCopyWith<T> {
  final ResearchStudyRecruitment _value;
  final T Function(ResearchStudyRecruitment) _then;

  _$ResearchStudyRecruitmentCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? targetNumber = fhirSentinel,
    Object? actualNumber = fhirSentinel,
    Object? eligibility = fhirSentinel,
    Object? actualGroup = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ResearchStudyRecruitment(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        targetNumber: identical(targetNumber, fhirSentinel)
            ? _value.targetNumber
            : targetNumber as FhirUnsignedInt?,
        actualNumber: identical(actualNumber, fhirSentinel)
            ? _value.actualNumber
            : actualNumber as FhirUnsignedInt?,
        eligibility: identical(eligibility, fhirSentinel)
            ? _value.eligibility
            : eligibility as Reference?,
        actualGroup: identical(actualGroup, fhirSentinel)
            ? _value.actualGroup
            : actualGroup as Reference?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ResearchStudyRecruitmentCopyWithExtension
    on ResearchStudyRecruitment {
  $ResearchStudyRecruitmentCopyWith<ResearchStudyRecruitment> get copyWith =>
      _$ResearchStudyRecruitmentCopyWithImpl<ResearchStudyRecruitment>(
        this,
        (value) => value,
      );
}

abstract class $ResearchStudyComparisonGroupCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUnsignedInt? targetNumber,
    FhirUnsignedInt? actualNumber,
    Reference? eligibility,
    Reference? observedGroup,
    bool? disallowExtensions,
  });
}

class _$ResearchStudyComparisonGroupCopyWithImpl<T>
    implements $ResearchStudyComparisonGroupCopyWith<T> {
  final ResearchStudyComparisonGroup _value;
  final T Function(ResearchStudyComparisonGroup) _then;

  _$ResearchStudyComparisonGroupCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? targetNumber = fhirSentinel,
    Object? actualNumber = fhirSentinel,
    Object? eligibility = fhirSentinel,
    Object? observedGroup = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ResearchStudyComparisonGroup(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        targetNumber: identical(targetNumber, fhirSentinel)
            ? _value.targetNumber
            : targetNumber as FhirUnsignedInt?,
        actualNumber: identical(actualNumber, fhirSentinel)
            ? _value.actualNumber
            : actualNumber as FhirUnsignedInt?,
        eligibility: identical(eligibility, fhirSentinel)
            ? _value.eligibility
            : eligibility as Reference?,
        observedGroup: identical(observedGroup, fhirSentinel)
            ? _value.observedGroup
            : observedGroup as Reference?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ResearchStudyComparisonGroupCopyWithExtension
    on ResearchStudyComparisonGroup {
  $ResearchStudyComparisonGroupCopyWith<ResearchStudyComparisonGroup>
      get copyWith => _$ResearchStudyComparisonGroupCopyWithImpl<
              ResearchStudyComparisonGroup>(
            this,
            (value) => value,
          );
}

abstract class $ResearchStudyObjectiveCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    CodeableConcept? type,
    FhirMarkdown? description,
    List<ResearchStudyOutcomeMeasure>? outcomeMeasure,
    bool? disallowExtensions,
  });
}

class _$ResearchStudyObjectiveCopyWithImpl<T>
    implements $ResearchStudyObjectiveCopyWith<T> {
  final ResearchStudyObjective _value;
  final T Function(ResearchStudyObjective) _then;

  _$ResearchStudyObjectiveCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? name = fhirSentinel,
    Object? type = fhirSentinel,
    Object? description = fhirSentinel,
    Object? outcomeMeasure = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ResearchStudyObjective(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        name: identical(name, fhirSentinel) ? _value.name : name as FhirString?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirMarkdown?,
        outcomeMeasure: identical(outcomeMeasure, fhirSentinel)
            ? _value.outcomeMeasure
            : outcomeMeasure as List<ResearchStudyOutcomeMeasure>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ResearchStudyObjectiveCopyWithExtension on ResearchStudyObjective {
  $ResearchStudyObjectiveCopyWith<ResearchStudyObjective> get copyWith =>
      _$ResearchStudyObjectiveCopyWithImpl<ResearchStudyObjective>(
        this,
        (value) => value,
      );
}

abstract class $ResearchStudyOutcomeMeasureCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    CodeableConcept? type,
    FhirMarkdown? description,
    Reference? endpoint,
    Reference? population,
    Reference? intervention,
    Reference? comparator,
    CodeableConcept? summaryMeasure,
    List<ResearchStudyEventHandling>? eventHandling,
    bool? disallowExtensions,
  });
}

class _$ResearchStudyOutcomeMeasureCopyWithImpl<T>
    implements $ResearchStudyOutcomeMeasureCopyWith<T> {
  final ResearchStudyOutcomeMeasure _value;
  final T Function(ResearchStudyOutcomeMeasure) _then;

  _$ResearchStudyOutcomeMeasureCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? name = fhirSentinel,
    Object? type = fhirSentinel,
    Object? description = fhirSentinel,
    Object? endpoint = fhirSentinel,
    Object? population = fhirSentinel,
    Object? intervention = fhirSentinel,
    Object? comparator = fhirSentinel,
    Object? summaryMeasure = fhirSentinel,
    Object? eventHandling = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ResearchStudyOutcomeMeasure(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        name: identical(name, fhirSentinel) ? _value.name : name as FhirString?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirMarkdown?,
        endpoint: identical(endpoint, fhirSentinel)
            ? _value.endpoint
            : (endpoint as Reference?) ?? _value.endpoint,
        population: identical(population, fhirSentinel)
            ? _value.population
            : population as Reference?,
        intervention: identical(intervention, fhirSentinel)
            ? _value.intervention
            : intervention as Reference?,
        comparator: identical(comparator, fhirSentinel)
            ? _value.comparator
            : comparator as Reference?,
        summaryMeasure: identical(summaryMeasure, fhirSentinel)
            ? _value.summaryMeasure
            : summaryMeasure as CodeableConcept?,
        eventHandling: identical(eventHandling, fhirSentinel)
            ? _value.eventHandling
            : eventHandling as List<ResearchStudyEventHandling>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ResearchStudyOutcomeMeasureCopyWithExtension
    on ResearchStudyOutcomeMeasure {
  $ResearchStudyOutcomeMeasureCopyWith<ResearchStudyOutcomeMeasure>
      get copyWith => _$ResearchStudyOutcomeMeasureCopyWithImpl<
              ResearchStudyOutcomeMeasure>(
            this,
            (value) => value,
          );
}

abstract class $ResearchStudyEventHandlingCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? event,
    CodeableConcept? group,
    CodeableConcept? handling,
    FhirMarkdown? description,
    bool? disallowExtensions,
  });
}

class _$ResearchStudyEventHandlingCopyWithImpl<T>
    implements $ResearchStudyEventHandlingCopyWith<T> {
  final ResearchStudyEventHandling _value;
  final T Function(ResearchStudyEventHandling) _then;

  _$ResearchStudyEventHandlingCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? event = fhirSentinel,
    Object? group = fhirSentinel,
    Object? handling = fhirSentinel,
    Object? description = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ResearchStudyEventHandling(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        event: identical(event, fhirSentinel)
            ? _value.event
            : event as CodeableConcept?,
        group: identical(group, fhirSentinel)
            ? _value.group
            : group as CodeableConcept?,
        handling: identical(handling, fhirSentinel)
            ? _value.handling
            : handling as CodeableConcept?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirMarkdown?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ResearchStudyEventHandlingCopyWithExtension
    on ResearchStudyEventHandling {
  $ResearchStudyEventHandlingCopyWith<ResearchStudyEventHandling>
      get copyWith =>
          _$ResearchStudyEventHandlingCopyWithImpl<ResearchStudyEventHandling>(
            this,
            (value) => value,
          );
}
