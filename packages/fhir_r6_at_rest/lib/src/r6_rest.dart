import 'package:fhir_at_rest/fhir_at_rest.dart' as core;
import 'package:fhir_r6/fhir_r6.dart';
import 'package:http/http.dart' as http;

/// FHIR R6 for the REST client: how `fhir_r6` resources are parsed and
/// written, and which names are resource types.
class R6RestModel extends core.ResourceModel<Resource> {
  /// Creates the model.
  const R6RestModel();

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
}

/// The R6 model, for the core's model-taking members.
const r6Rest = R6RestModel();

/// What a RESTful operation returned, over R6 resources: the resources
/// asked for (of [T]) and, as [Resource]s, the other resources and the
/// informational and error OperationOutcomes.
typedef ReturnResults<T> = core.ReturnResults<T, Resource>;

/// See [core.parseRequestResult].
ReturnResults<Resource> parseRequestResult(Resource result) =>
    core.parseRequestResult(r6Rest, result);

/// See [core.parseBundle].
ReturnResults<Resource> parseBundle(Bundle bundle) =>
    core.parseBundle(r6Rest, bundle);

/// See [core.parseRequestResultForType].
ReturnResults<T> parseRequestResultForType<T>(Resource result) =>
    core.parseRequestResultForType<T, Resource>(r6Rest, result);

/// See [core.parseBundleForType].
ReturnResults<T> parseBundleForType<T>(Bundle bundle) =>
    core.parseBundleForType<T, Resource>(r6Rest, bundle);

/// See [core.incorrectResultType].
OperationOutcome incorrectResultType<T>(Resource result) =>
    core.incorrectResultType<T, Resource>(r6Rest, result) as OperationOutcome;

/// See [core.parseResponse].
ReturnResults<Resource> parseResponse(http.Response response) =>
    core.parseResponse(r6Rest, response);
