// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_at_rest/fhir_r6_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [EncounterHistory] resource.
class SearchEncounterHistory extends SearchResource {
  /// a reference search for [encounter] in the resource
  /// [EncounterHistory]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchEncounterHistory encounter(FhirString value) {
    addParameterValue('encounter', value.toString());
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [EncounterHistory]
  SearchEncounterHistory identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [patient] in the resource
  /// [EncounterHistory]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchEncounterHistory patient(FhirString value) {
    addParameterValue('patient', value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [EncounterHistory]
  SearchEncounterHistory status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a reference search for [subject] in the resource
  /// [EncounterHistory]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchEncounterHistory subject(FhirString value) {
    addParameterValue('subject', value.toString());
    return this;
  }
}
