import 'package:fhir_node/fhir_node.dart';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6/fhir_r6.dart' as r6 show fromType;
import 'package:fhir_r6_path/fhir_r6_path.dart';
import 'package:fhir_r6_validation/src/for_primitives.dart';
import 'package:fhir_validation/fhir_validation.dart' as core;
import 'package:fhir_validation/fhir_validation.dart'
    show Node, ObjectNode, ValidationResults;
import 'package:http/http.dart';

/// FHIR R6 for the validator: the model's primitive rules, typed FHIRPath
/// contexts, and the R6 fhir_path binding.
class R6ValidationModel extends core.ValidationModel<Resource> {
  /// Creates the model.
  const R6ValidationModel();

  @override
  String get fhirVersion => '6.0.0';

  @override
  Set<String> get resourceTypeNames => _typeNames;
  static final Set<String> _typeNames =
      R6ResourceType.values.map((t) => t.toString()).toSet();

  @override
  Resource fromJson(Map<String, dynamic> json) => Resource.fromJson(json);

  @override
  Map<String, dynamic> toJson(Resource resource) => resource.toJson();

  @override
  FhirModelBinding get pathBinding => const R6ModelBinding();

  @override
  bool isValidPrimitive(String type, Object? value) =>
      isValueAValidPrimitive(type, value);

  @override
  FhirNode? fromType(Object? value, String type) => r6.fromType(value, type);
}

/// The R6 model, for the core's model-taking members.
const r6Validation = R6ValidationModel();

/// The ElementDefinitions of a typed map, as the core's element views.
Map<String, core.ElementNode> _views(Map<String, ElementDefinition> elements) =>
    elements.map((path, e) => MapEntry(path, core.ElementNode(e)));

/// A modular FHIR Validator over R6.
class FhirValidationEngine extends core.FhirValidationEngine {
  /// Creates the validator over [r6Validation].
  const FhirValidationEngine() : super(r6Validation);

  /// Validate a FHIR resource from a Dart FHIR class
  Future<ValidationResults> validateFhirResource({
    required Resource structureToValidate,
    StructureDefinition? structureDefinition,
    ResourceCache? resourceCache,
    Client? client,
  }) {
    return validateFhirMap(
      structureToValidate: structureToValidate.toJson(),
      structureDefinition: structureDefinition,
      resourceCache: resourceCache,
      client: client,
    );
  }
}

/// See [core.validateStructure].
Future<ValidationResults> validateStructure({
  required ObjectNode node,
  required Map<String, ElementDefinition> elements,
  required String type,
  String? url,
  required ResourceCache resourceCache,
}) =>
    core.validateStructure(
      model: r6Validation,
      node: node,
      elements: _views(elements),
      type: type,
      url: url,
      resourceCache: resourceCache,
    );

/// See [core.validateCardinality].
Future<ValidationResults> validateCardinality({
  required ObjectNode node,
  required Map<String, ElementDefinition> elements,
  String? url,
  required String originalPath,
  required String replacePath,
  required ValidationResults results,
  required ResourceCache resourceCache,
}) =>
    core.validateCardinality(
      node: node,
      elements: _views(elements),
      url: url,
      originalPath: originalPath,
      replacePath: replacePath,
      results: results,
      resourceCache: resourceCache,
    );

/// See [core.validateBindings].
Future<ValidationResults> validateBindings({
  required Node node,
  required Map<String, ElementDefinition> elements,
  required ValidationResults results,
  required ResourceCache resourceCache,
}) =>
    core.validateBindings(
      node: node,
      elements: _views(elements),
      results: results,
      resourceCache: resourceCache,
    );

/// See [core.validateExtensions].
Future<ValidationResults> validateExtensions({
  required Node node,
  required Map<String, ElementDefinition> elements,
  required ValidationResults results,
  required ResourceCache resourceCache,
}) =>
    core.validateExtensions(
      model: r6Validation,
      node: node,
      elements: _views(elements),
      results: results,
      resourceCache: resourceCache,
    );

/// See [core.validateInvariants].
Future<ValidationResults> validateInvariants({
  required Node node,
  required ElementDefinition element,
  required ValidationResults results,
  String? url,
  required ResourceCache resourceCache,
}) =>
    core.validateInvariants(
      model: r6Validation,
      node: node,
      element: core.ElementNode(element),
      results: results,
      url: url,
      resourceCache: resourceCache,
    );

/// See [core.validateQuestionnaireResponse].
Future<ValidationResults> validateQuestionnaireResponse({
  required QuestionnaireResponse questionnaireResponse,
  required ResourceCache resourceCache,
}) =>
    core.validateQuestionnaireResponse(
      questionnaireResponse: questionnaireResponse,
      resourceCache: resourceCache,
    );

/// The results as an R6 [OperationOutcome].
extension R6ValidationResults on ValidationResults {
  /// [ValidationResults.toOperationOutcomeJson] parsed as an
  /// [OperationOutcome].
  OperationOutcome toOperationOutcome() =>
      OperationOutcome.fromJson(toOperationOutcomeJson());
}
