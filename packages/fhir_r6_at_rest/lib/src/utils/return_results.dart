import 'package:fhir_r5/fhir_r5.dart';

/// A class to hold the results of a RESTful operation.
class ReturnResults<T> {
  /// Constructor for a [ReturnResults] object.
  ReturnResults({
    List<T>? resources,
    List<Resource>? otherResources,
    List<OperationOutcome>? informationOperationOutcomes,
    List<OperationOutcome>? errorOperationOutcomes,
  }) {
    this.resources = resources ?? <T>[];
    this.otherResources = otherResources ?? <Resource>[];
    this.informationOperationOutcomes =
        informationOperationOutcomes ?? <OperationOutcome>[];
    this.errorOperationOutcomes =
        errorOperationOutcomes ?? <OperationOutcome>[];
  }

  /// The resources that were returned from the operation.
  late final List<T> resources;

  /// Other resources that were returned from the operation.
  late final List<Resource> otherResources;

  /// Informational OperationOutcomes that were returned from the operation.
  late final List<OperationOutcome> informationOperationOutcomes;

  /// Error OperationOutcomes that were returned from the operation.
  late final List<OperationOutcome> errorOperationOutcomes;
}
