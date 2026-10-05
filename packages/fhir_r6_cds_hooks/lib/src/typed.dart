import 'package:fhir_cds_hooks/fhir_cds_hooks.dart';
import 'package:fhir_r6/fhir_r6.dart';

/// R6-typed views of a request's prefetched resources.
extension R6CdsRequestResources on CdsRequest {
  /// [CdsRequest.prefetch] parsed through the R6 model; a null value stays
  /// null (the server declined that prefetch).
  Map<String, Resource?>? get prefetchResources => prefetch?.map(
        (key, value) =>
            MapEntry(key, value == null ? null : Resource.fromJson(value)),
      );
}

/// R6-typed view of an action's resource.
extension R6CdsActionResource on CdsAction {
  /// [CdsAction.resource] parsed through the R6 model.
  Resource? get typedResource =>
      resource == null ? null : Resource.fromJson(resource!);
}

/// The draft orders as an R6 [Bundle].
extension R6OrderSignContext on OrderSignContext {
  /// [OrderSignContext.draftOrders] parsed through the R6 model.
  Bundle get draftOrdersBundle => Bundle.fromJson(draftOrders);
}

/// The draft orders as an R6 [Bundle].
extension R6OrderSelectContext on OrderSelectContext {
  /// [OrderSelectContext.draftOrders] parsed through the R6 model.
  Bundle get draftOrdersBundle => Bundle.fromJson(draftOrders);
}

/// The fulfillment tasks as an R6 [Bundle].
extension R6OrderDispatchContext on OrderDispatchContext {
  /// [OrderDispatchContext.fulfillmentTasks] parsed through the R6 model.
  Bundle? get fulfillmentTasksBundle =>
      fulfillmentTasks == null ? null : Bundle.fromJson(fulfillmentTasks!);
}

/// The appointments as an R6 [Bundle].
extension R6AppointmentBookContext on AppointmentBookContext {
  /// [AppointmentBookContext.appointments] parsed through the R6 model.
  Bundle get appointmentsBundle => Bundle.fromJson(appointments);
}

/// The medications as an R6 [Bundle].
extension R6MedicationRefillContext on MedicationRefillContext {
  /// [MedicationRefillContext.medications] parsed through the R6 model.
  Bundle get medicationsBundle => Bundle.fromJson(medications);
}

/// The conditions as an R6 [Bundle].
extension R6ProblemListItemCreateContext on ProblemListItemCreateContext {
  /// [ProblemListItemCreateContext.conditions] parsed through the R6 model.
  Bundle get conditionsBundle => Bundle.fromJson(conditions);
}

/// The allergy being created as an R6 [AllergyIntolerance].
extension R6AllergyintoleranceCreateContext on AllergyintoleranceCreateContext {
  /// [AllergyintoleranceCreateContext.allergyIntolerance] parsed through the
  /// R6 model.
  AllergyIntolerance get allergyIntoleranceResource =>
      AllergyIntolerance.fromJson(allergyIntolerance);
}
