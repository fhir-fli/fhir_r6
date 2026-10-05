import 'package:fhir_bulk/fhir_bulk.dart';
import 'package:fhir_r6/fhir_r6.dart';

/// FHIR R6 for the bulk-data code: how `fhir_r6` resources are parsed and
/// written, and which names are resource types.
class R6BulkModel extends BulkModel<Resource> {
  /// Creates the model.
  const R6BulkModel();

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
const r6Bulk = R6BulkModel();
