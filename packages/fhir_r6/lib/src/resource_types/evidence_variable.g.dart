// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'evidence_variable.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $EvidenceVariableCopyWith<T>
    extends $MetadataResourceCopyWith<T> {
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
    VersionAlgorithmXEvidenceVariable? versionAlgorithmX,
    FhirString? name,
    FhirString? title,
    FhirString? shortTitle,
    FhirMarkdown? citeAs,
    PublicationStatus? status,
    FhirBoolean? experimental,
    FhirDateTime? date,
    List<ContactDetail>? author,
    FhirString? publisher,
    List<ContactDetail>? contact,
    List<ContactDetail>? recorder,
    List<ContactDetail>? editor,
    List<ContactDetail>? reviewer,
    List<ContactDetail>? endorser,
    FhirMarkdown? description,
    List<Annotation>? note,
    List<UsageContext>? useContext,
    FhirMarkdown? purpose,
    FhirMarkdown? copyright,
    FhirString? copyrightLabel,
    FhirDate? approvalDate,
    FhirDate? lastReviewDate,
    Period? effectivePeriod,
    List<EvidenceVariableRelatesTo>? relatesTo,
    FhirBoolean? actual,
    CodeableReference? definition,
    List<EvidenceVariableDefinitionModifier>? definitionModifier,
    EvidenceVariableHandling? handling,
    List<EvidenceVariableCategory>? category,
    FhirExpression? conditional,
    List<CodeableConcept>? classifier,
    List<EvidenceVariableDataStorage>? dataStorage,
    RelativeTime? timing,
    Period? period,
    List<EvidenceVariableConstraint>? constraint,
    List<CodeableConcept>? missingDataMeaning,
    List<CodeableConcept>? unacceptableDataHandling,
    List<CodeableConcept>? jurisdiction,
    bool? disallowExtensions,
  });
}

class _$EvidenceVariableCopyWithImpl<T>
    implements $EvidenceVariableCopyWith<T> {
  final EvidenceVariable _value;
  final T Function(EvidenceVariable) _then;

  _$EvidenceVariableCopyWithImpl(this._value, this._then);

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
    Object? shortTitle = fhirSentinel,
    Object? citeAs = fhirSentinel,
    Object? status = fhirSentinel,
    Object? experimental = fhirSentinel,
    Object? date = fhirSentinel,
    Object? author = fhirSentinel,
    Object? publisher = fhirSentinel,
    Object? contact = fhirSentinel,
    Object? recorder = fhirSentinel,
    Object? editor = fhirSentinel,
    Object? reviewer = fhirSentinel,
    Object? endorser = fhirSentinel,
    Object? description = fhirSentinel,
    Object? note = fhirSentinel,
    Object? useContext = fhirSentinel,
    Object? purpose = fhirSentinel,
    Object? copyright = fhirSentinel,
    Object? copyrightLabel = fhirSentinel,
    Object? approvalDate = fhirSentinel,
    Object? lastReviewDate = fhirSentinel,
    Object? effectivePeriod = fhirSentinel,
    Object? relatesTo = fhirSentinel,
    Object? actual = fhirSentinel,
    Object? definition = fhirSentinel,
    Object? definitionModifier = fhirSentinel,
    Object? handling = fhirSentinel,
    Object? category = fhirSentinel,
    Object? conditional = fhirSentinel,
    Object? classifier = fhirSentinel,
    Object? dataStorage = fhirSentinel,
    Object? timing = fhirSentinel,
    Object? period = fhirSentinel,
    Object? constraint = fhirSentinel,
    Object? missingDataMeaning = fhirSentinel,
    Object? unacceptableDataHandling = fhirSentinel,
    Object? jurisdiction = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      EvidenceVariable(
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
            : versionAlgorithmX as VersionAlgorithmXEvidenceVariable?,
        name: identical(name, fhirSentinel) ? _value.name : name as FhirString?,
        title: identical(title, fhirSentinel)
            ? _value.title
            : title as FhirString?,
        shortTitle: identical(shortTitle, fhirSentinel)
            ? _value.shortTitle
            : shortTitle as FhirString?,
        citeAs: identical(citeAs, fhirSentinel)
            ? _value.citeAs
            : citeAs as FhirMarkdown?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as PublicationStatus?) ?? _value.status,
        experimental: identical(experimental, fhirSentinel)
            ? _value.experimental
            : experimental as FhirBoolean?,
        date:
            identical(date, fhirSentinel) ? _value.date : date as FhirDateTime?,
        author: identical(author, fhirSentinel)
            ? _value.author
            : author as List<ContactDetail>?,
        publisher: identical(publisher, fhirSentinel)
            ? _value.publisher
            : publisher as FhirString?,
        contact: identical(contact, fhirSentinel)
            ? _value.contact
            : contact as List<ContactDetail>?,
        recorder: identical(recorder, fhirSentinel)
            ? _value.recorder
            : recorder as List<ContactDetail>?,
        editor: identical(editor, fhirSentinel)
            ? _value.editor
            : editor as List<ContactDetail>?,
        reviewer: identical(reviewer, fhirSentinel)
            ? _value.reviewer
            : reviewer as List<ContactDetail>?,
        endorser: identical(endorser, fhirSentinel)
            ? _value.endorser
            : endorser as List<ContactDetail>?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirMarkdown?,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
        useContext: identical(useContext, fhirSentinel)
            ? _value.useContext
            : useContext as List<UsageContext>?,
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
        relatesTo: identical(relatesTo, fhirSentinel)
            ? _value.relatesTo
            : relatesTo as List<EvidenceVariableRelatesTo>?,
        actual: identical(actual, fhirSentinel)
            ? _value.actual
            : actual as FhirBoolean?,
        definition: identical(definition, fhirSentinel)
            ? _value.definition
            : definition as CodeableReference?,
        definitionModifier: identical(definitionModifier, fhirSentinel)
            ? _value.definitionModifier
            : definitionModifier as List<EvidenceVariableDefinitionModifier>?,
        handling: identical(handling, fhirSentinel)
            ? _value.handling
            : handling as EvidenceVariableHandling?,
        category: identical(category, fhirSentinel)
            ? _value.category
            : category as List<EvidenceVariableCategory>?,
        conditional: identical(conditional, fhirSentinel)
            ? _value.conditional
            : conditional as FhirExpression?,
        classifier: identical(classifier, fhirSentinel)
            ? _value.classifier
            : classifier as List<CodeableConcept>?,
        dataStorage: identical(dataStorage, fhirSentinel)
            ? _value.dataStorage
            : dataStorage as List<EvidenceVariableDataStorage>?,
        timing: identical(timing, fhirSentinel)
            ? _value.timing
            : timing as RelativeTime?,
        period:
            identical(period, fhirSentinel) ? _value.period : period as Period?,
        constraint: identical(constraint, fhirSentinel)
            ? _value.constraint
            : constraint as List<EvidenceVariableConstraint>?,
        missingDataMeaning: identical(missingDataMeaning, fhirSentinel)
            ? _value.missingDataMeaning
            : missingDataMeaning as List<CodeableConcept>?,
        unacceptableDataHandling:
            identical(unacceptableDataHandling, fhirSentinel)
                ? _value.unacceptableDataHandling
                : unacceptableDataHandling as List<CodeableConcept>?,
      ),
    );
  }
}

extension EvidenceVariableCopyWithExtension on EvidenceVariable {
  $EvidenceVariableCopyWith<EvidenceVariable> get copyWith =>
      _$EvidenceVariableCopyWithImpl<EvidenceVariable>(
        this,
        (value) => value,
      );
}

abstract class $EvidenceVariableRelatesToCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ArtifactRelationshipType? type,
    TargetXEvidenceVariableRelatesTo? targetX,
    bool? disallowExtensions,
  });
}

class _$EvidenceVariableRelatesToCopyWithImpl<T>
    implements $EvidenceVariableRelatesToCopyWith<T> {
  final EvidenceVariableRelatesTo _value;
  final T Function(EvidenceVariableRelatesTo) _then;

  _$EvidenceVariableRelatesToCopyWithImpl(this._value, this._then);

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
      EvidenceVariableRelatesTo(
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
            : (targetX as TargetXEvidenceVariableRelatesTo?) ?? _value.targetX,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension EvidenceVariableRelatesToCopyWithExtension
    on EvidenceVariableRelatesTo {
  $EvidenceVariableRelatesToCopyWith<EvidenceVariableRelatesTo> get copyWith =>
      _$EvidenceVariableRelatesToCopyWithImpl<EvidenceVariableRelatesTo>(
        this,
        (value) => value,
      );
}

abstract class $EvidenceVariableDefinitionModifierCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    ValueXEvidenceVariableDefinitionModifier? valueX,
    bool? disallowExtensions,
  });
}

class _$EvidenceVariableDefinitionModifierCopyWithImpl<T>
    implements $EvidenceVariableDefinitionModifierCopyWith<T> {
  final EvidenceVariableDefinitionModifier _value;
  final T Function(EvidenceVariableDefinitionModifier) _then;

  _$EvidenceVariableDefinitionModifierCopyWithImpl(this._value, this._then);

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
      EvidenceVariableDefinitionModifier(
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
        valueX: identical(valueX, fhirSentinel)
            ? _value.valueX
            : (valueX as ValueXEvidenceVariableDefinitionModifier?) ??
                _value.valueX,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension EvidenceVariableDefinitionModifierCopyWithExtension
    on EvidenceVariableDefinitionModifier {
  $EvidenceVariableDefinitionModifierCopyWith<
          EvidenceVariableDefinitionModifier>
      get copyWith => _$EvidenceVariableDefinitionModifierCopyWithImpl<
              EvidenceVariableDefinitionModifier>(
            this,
            (value) => value,
          );
}

abstract class $EvidenceVariableCategoryCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    ValueXEvidenceVariableCategory? valueX,
    bool? disallowExtensions,
  });
}

class _$EvidenceVariableCategoryCopyWithImpl<T>
    implements $EvidenceVariableCategoryCopyWith<T> {
  final EvidenceVariableCategory _value;
  final T Function(EvidenceVariableCategory) _then;

  _$EvidenceVariableCategoryCopyWithImpl(this._value, this._then);

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
      EvidenceVariableCategory(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        name: identical(name, fhirSentinel) ? _value.name : name as FhirString?,
        valueX: identical(valueX, fhirSentinel)
            ? _value.valueX
            : valueX as ValueXEvidenceVariableCategory?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension EvidenceVariableCategoryCopyWithExtension
    on EvidenceVariableCategory {
  $EvidenceVariableCategoryCopyWith<EvidenceVariableCategory> get copyWith =>
      _$EvidenceVariableCategoryCopyWithImpl<EvidenceVariableCategory>(
        this,
        (value) => value,
      );
}

abstract class $EvidenceVariableDataStorageCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? datatype,
    FhirString? path,
    FhirString? delimiter,
    List<EvidenceVariableDataStorage>? component,
    bool? disallowExtensions,
  });
}

class _$EvidenceVariableDataStorageCopyWithImpl<T>
    implements $EvidenceVariableDataStorageCopyWith<T> {
  final EvidenceVariableDataStorage _value;
  final T Function(EvidenceVariableDataStorage) _then;

  _$EvidenceVariableDataStorageCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? datatype = fhirSentinel,
    Object? path = fhirSentinel,
    Object? delimiter = fhirSentinel,
    Object? component = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      EvidenceVariableDataStorage(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        datatype: identical(datatype, fhirSentinel)
            ? _value.datatype
            : datatype as CodeableConcept?,
        path: identical(path, fhirSentinel) ? _value.path : path as FhirString?,
        delimiter: identical(delimiter, fhirSentinel)
            ? _value.delimiter
            : delimiter as FhirString?,
        component: identical(component, fhirSentinel)
            ? _value.component
            : component as List<EvidenceVariableDataStorage>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension EvidenceVariableDataStorageCopyWithExtension
    on EvidenceVariableDataStorage {
  $EvidenceVariableDataStorageCopyWith<EvidenceVariableDataStorage>
      get copyWith => _$EvidenceVariableDataStorageCopyWithImpl<
              EvidenceVariableDataStorage>(
            this,
            (value) => value,
          );
}

abstract class $EvidenceVariableConstraintCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? conditional,
    Quantity? minimumQuantity,
    Quantity? maximumQuantity,
    FhirDateTime? earliestDateTime,
    FhirDateTime? latestDateTime,
    FhirUnsignedInt? minimumStringLength,
    FhirPositiveInt? maximumStringLength,
    CodeableConcept? code,
    FhirExpression? expression,
    Reference? expectedValueSet,
    Reference? expectedUnitsValueSet,
    FhirBoolean? anyValueAllowed,
    bool? disallowExtensions,
  });
}

class _$EvidenceVariableConstraintCopyWithImpl<T>
    implements $EvidenceVariableConstraintCopyWith<T> {
  final EvidenceVariableConstraint _value;
  final T Function(EvidenceVariableConstraint) _then;

  _$EvidenceVariableConstraintCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? conditional = fhirSentinel,
    Object? minimumQuantity = fhirSentinel,
    Object? maximumQuantity = fhirSentinel,
    Object? earliestDateTime = fhirSentinel,
    Object? latestDateTime = fhirSentinel,
    Object? minimumStringLength = fhirSentinel,
    Object? maximumStringLength = fhirSentinel,
    Object? code = fhirSentinel,
    Object? expression = fhirSentinel,
    Object? expectedValueSet = fhirSentinel,
    Object? expectedUnitsValueSet = fhirSentinel,
    Object? anyValueAllowed = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      EvidenceVariableConstraint(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        conditional: identical(conditional, fhirSentinel)
            ? _value.conditional
            : conditional as CodeableConcept?,
        minimumQuantity: identical(minimumQuantity, fhirSentinel)
            ? _value.minimumQuantity
            : minimumQuantity as Quantity?,
        maximumQuantity: identical(maximumQuantity, fhirSentinel)
            ? _value.maximumQuantity
            : maximumQuantity as Quantity?,
        earliestDateTime: identical(earliestDateTime, fhirSentinel)
            ? _value.earliestDateTime
            : earliestDateTime as FhirDateTime?,
        latestDateTime: identical(latestDateTime, fhirSentinel)
            ? _value.latestDateTime
            : latestDateTime as FhirDateTime?,
        minimumStringLength: identical(minimumStringLength, fhirSentinel)
            ? _value.minimumStringLength
            : minimumStringLength as FhirUnsignedInt?,
        maximumStringLength: identical(maximumStringLength, fhirSentinel)
            ? _value.maximumStringLength
            : maximumStringLength as FhirPositiveInt?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : code as CodeableConcept?,
        expression: identical(expression, fhirSentinel)
            ? _value.expression
            : expression as FhirExpression?,
        expectedValueSet: identical(expectedValueSet, fhirSentinel)
            ? _value.expectedValueSet
            : expectedValueSet as Reference?,
        expectedUnitsValueSet: identical(expectedUnitsValueSet, fhirSentinel)
            ? _value.expectedUnitsValueSet
            : expectedUnitsValueSet as Reference?,
        anyValueAllowed: identical(anyValueAllowed, fhirSentinel)
            ? _value.anyValueAllowed
            : anyValueAllowed as FhirBoolean?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension EvidenceVariableConstraintCopyWithExtension
    on EvidenceVariableConstraint {
  $EvidenceVariableConstraintCopyWith<EvidenceVariableConstraint>
      get copyWith =>
          _$EvidenceVariableConstraintCopyWithImpl<EvidenceVariableConstraint>(
            this,
            (value) => value,
          );
}
