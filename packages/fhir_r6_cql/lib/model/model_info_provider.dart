import 'package:fhir_r6_cql/fhir_r6_cql.dart';

abstract class ModelInfoProvider {
  /// Loads the model information for the given model identifier.
  ModelInfo? load(ModelIdentifier modelIdentifier);

  void setNamespaceManager(NamespaceManager namespaceManager);

  void setPath(String path);
}
