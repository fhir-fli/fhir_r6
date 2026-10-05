import 'package:fhir_r6_path/fhir_r6_path.dart';

/// fhir_path's worker context over the fhir_r6 model. Everything it does
/// lives in [FhirWorkerContext]; this class only binds the model.
class WorkerContext extends FhirWorkerContext {
  /// A worker over fhir_r6, with an in-memory resource cache unless one is
  /// given.
  WorkerContext({super.txClient, super.resourceCache})
      : super(binding: const R6ModelBinding());
}
