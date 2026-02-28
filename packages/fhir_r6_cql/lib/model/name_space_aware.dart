import 'package:fhir_r6_cql/fhir_r6_cql.dart';

abstract class NamespaceAware {
  /// Sets the namespace manager for this implementation.
  void setNamespaceManager(NamespaceManager namespaceManager);
}
