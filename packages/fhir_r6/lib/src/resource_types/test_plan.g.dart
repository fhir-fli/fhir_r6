// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'test_plan.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $TestPlanCopyWith<T> extends $CanonicalResourceCopyWith<T> {
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
    List<CodeableConcept>? category,
    List<Reference>? scope,
    FhirMarkdown? testTools,
    List<TestPlanDependency>? dependency,
    FhirMarkdown? exitCriteria,
    List<TestPlanTestCase>? testCase,
    bool? disallowExtensions,
  });
}

class _$TestPlanCopyWithImpl<T> implements $TestPlanCopyWith<T> {
  final TestPlan _value;
  final T Function(TestPlan) _then;

  _$TestPlanCopyWithImpl(this._value, this._then);

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
    Object? category = fhirSentinel,
    Object? scope = fhirSentinel,
    Object? testTools = fhirSentinel,
    Object? dependency = fhirSentinel,
    Object? exitCriteria = fhirSentinel,
    Object? testCase = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      TestPlan(
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
        category: identical(category, fhirSentinel)
            ? _value.category
            : category as List<CodeableConcept>?,
        scope: identical(scope, fhirSentinel)
            ? _value.scope
            : scope as List<Reference>?,
        testTools: identical(testTools, fhirSentinel)
            ? _value.testTools
            : testTools as FhirMarkdown?,
        dependency: identical(dependency, fhirSentinel)
            ? _value.dependency
            : dependency as List<TestPlanDependency>?,
        exitCriteria: identical(exitCriteria, fhirSentinel)
            ? _value.exitCriteria
            : exitCriteria as FhirMarkdown?,
        testCase: identical(testCase, fhirSentinel)
            ? _value.testCase
            : testCase as List<TestPlanTestCase>?,
      ),
    );
  }
}

extension TestPlanCopyWithExtension on TestPlan {
  $TestPlanCopyWith<TestPlan> get copyWith => _$TestPlanCopyWithImpl<TestPlan>(
        this,
        (value) => value,
      );
}

abstract class $TestPlanDependencyCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirMarkdown? description,
    Reference? predecessor,
    bool? disallowExtensions,
  });
}

class _$TestPlanDependencyCopyWithImpl<T>
    implements $TestPlanDependencyCopyWith<T> {
  final TestPlanDependency _value;
  final T Function(TestPlanDependency) _then;

  _$TestPlanDependencyCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? description = fhirSentinel,
    Object? predecessor = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      TestPlanDependency(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirMarkdown?,
        predecessor: identical(predecessor, fhirSentinel)
            ? _value.predecessor
            : predecessor as Reference?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension TestPlanDependencyCopyWithExtension on TestPlanDependency {
  $TestPlanDependencyCopyWith<TestPlanDependency> get copyWith =>
      _$TestPlanDependencyCopyWithImpl<TestPlanDependency>(
        this,
        (value) => value,
      );
}

abstract class $TestPlanTestCaseCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirInteger? sequence,
    List<Reference>? scope,
    List<TestPlanDependency>? dependency,
    List<TestPlanTestRun>? testRun,
    List<TestPlanTestData>? testData,
    List<TestPlanAssertion>? assertion,
    bool? disallowExtensions,
  });
}

class _$TestPlanTestCaseCopyWithImpl<T>
    implements $TestPlanTestCaseCopyWith<T> {
  final TestPlanTestCase _value;
  final T Function(TestPlanTestCase) _then;

  _$TestPlanTestCaseCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? sequence = fhirSentinel,
    Object? scope = fhirSentinel,
    Object? dependency = fhirSentinel,
    Object? testRun = fhirSentinel,
    Object? testData = fhirSentinel,
    Object? assertion = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      TestPlanTestCase(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        sequence: identical(sequence, fhirSentinel)
            ? _value.sequence
            : sequence as FhirInteger?,
        scope: identical(scope, fhirSentinel)
            ? _value.scope
            : scope as List<Reference>?,
        dependency: identical(dependency, fhirSentinel)
            ? _value.dependency
            : dependency as List<TestPlanDependency>?,
        testRun: identical(testRun, fhirSentinel)
            ? _value.testRun
            : testRun as List<TestPlanTestRun>?,
        testData: identical(testData, fhirSentinel)
            ? _value.testData
            : testData as List<TestPlanTestData>?,
        assertion: identical(assertion, fhirSentinel)
            ? _value.assertion
            : assertion as List<TestPlanAssertion>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension TestPlanTestCaseCopyWithExtension on TestPlanTestCase {
  $TestPlanTestCaseCopyWith<TestPlanTestCase> get copyWith =>
      _$TestPlanTestCaseCopyWithImpl<TestPlanTestCase>(
        this,
        (value) => value,
      );
}

abstract class $TestPlanDependency1CopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirMarkdown? description,
    Reference? predecessor,
    bool? disallowExtensions,
  });
}

class _$TestPlanDependency1CopyWithImpl<T>
    implements $TestPlanDependency1CopyWith<T> {
  final TestPlanDependency1 _value;
  final T Function(TestPlanDependency1) _then;

  _$TestPlanDependency1CopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? description = fhirSentinel,
    Object? predecessor = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      TestPlanDependency1(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirMarkdown?,
        predecessor: identical(predecessor, fhirSentinel)
            ? _value.predecessor
            : predecessor as Reference?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension TestPlanDependency1CopyWithExtension on TestPlanDependency1 {
  $TestPlanDependency1CopyWith<TestPlanDependency1> get copyWith =>
      _$TestPlanDependency1CopyWithImpl<TestPlanDependency1>(
        this,
        (value) => value,
      );
}

abstract class $TestPlanTestRunCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirMarkdown? narrative,
    TestPlanScript? script,
    bool? disallowExtensions,
  });
}

class _$TestPlanTestRunCopyWithImpl<T> implements $TestPlanTestRunCopyWith<T> {
  final TestPlanTestRun _value;
  final T Function(TestPlanTestRun) _then;

  _$TestPlanTestRunCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? narrative = fhirSentinel,
    Object? script = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      TestPlanTestRun(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        narrative: identical(narrative, fhirSentinel)
            ? _value.narrative
            : narrative as FhirMarkdown?,
        script: identical(script, fhirSentinel)
            ? _value.script
            : script as TestPlanScript?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension TestPlanTestRunCopyWithExtension on TestPlanTestRun {
  $TestPlanTestRunCopyWith<TestPlanTestRun> get copyWith =>
      _$TestPlanTestRunCopyWithImpl<TestPlanTestRun>(
        this,
        (value) => value,
      );
}

abstract class $TestPlanScriptCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? language,
    FhirString? sourceX,
    bool? disallowExtensions,
  });
}

class _$TestPlanScriptCopyWithImpl<T> implements $TestPlanScriptCopyWith<T> {
  final TestPlanScript _value;
  final T Function(TestPlanScript) _then;

  _$TestPlanScriptCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? language = fhirSentinel,
    Object? sourceX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      TestPlanScript(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        language: identical(language, fhirSentinel)
            ? _value.language
            : language as CodeableConcept?,
        sourceX: identical(sourceX, fhirSentinel)
            ? _value.sourceX
            : sourceX as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension TestPlanScriptCopyWithExtension on TestPlanScript {
  $TestPlanScriptCopyWith<TestPlanScript> get copyWith =>
      _$TestPlanScriptCopyWithImpl<TestPlanScript>(
        this,
        (value) => value,
      );
}

abstract class $TestPlanTestDataCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Coding? type,
    Reference? content,
    FhirString? sourceX,
    bool? disallowExtensions,
  });
}

class _$TestPlanTestDataCopyWithImpl<T>
    implements $TestPlanTestDataCopyWith<T> {
  final TestPlanTestData _value;
  final T Function(TestPlanTestData) _then;

  _$TestPlanTestDataCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? content = fhirSentinel,
    Object? sourceX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      TestPlanTestData(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : (type as Coding?) ?? _value.type,
        content: identical(content, fhirSentinel)
            ? _value.content
            : content as Reference?,
        sourceX: identical(sourceX, fhirSentinel)
            ? _value.sourceX
            : sourceX as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension TestPlanTestDataCopyWithExtension on TestPlanTestData {
  $TestPlanTestDataCopyWith<TestPlanTestData> get copyWith =>
      _$TestPlanTestDataCopyWithImpl<TestPlanTestData>(
        this,
        (value) => value,
      );
}

abstract class $TestPlanAssertionCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CodeableConcept>? type,
    List<CodeableReference>? object,
    List<CodeableReference>? result,
    bool? disallowExtensions,
  });
}

class _$TestPlanAssertionCopyWithImpl<T>
    implements $TestPlanAssertionCopyWith<T> {
  final TestPlanAssertion _value;
  final T Function(TestPlanAssertion) _then;

  _$TestPlanAssertionCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? object = fhirSentinel,
    Object? result = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      TestPlanAssertion(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as List<CodeableConcept>?,
        object: identical(object, fhirSentinel)
            ? _value.object
            : object as List<CodeableReference>?,
        result: identical(result, fhirSentinel)
            ? _value.result
            : result as List<CodeableReference>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension TestPlanAssertionCopyWithExtension on TestPlanAssertion {
  $TestPlanAssertionCopyWith<TestPlanAssertion> get copyWith =>
      _$TestPlanAssertionCopyWithImpl<TestPlanAssertion>(
        this,
        (value) => value,
      );
}
