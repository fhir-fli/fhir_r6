// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_at_rest/fhir_r6_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [BiologicallyDerivedProductDispense] resource.
class SearchBiologicallyDerivedProductDispense extends SearchResource {
  /// a token search for [identifier] in the resource
  /// [BiologicallyDerivedProductDispense]
  SearchBiologicallyDerivedProductDispense identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [patient] in the resource
  /// [BiologicallyDerivedProductDispense]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchBiologicallyDerivedProductDispense patient(FhirString value) {
    addParameterValue('patient', value.toString());
    return this;
  }

  /// a reference search for [performer] in the resource
  /// [BiologicallyDerivedProductDispense]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchBiologicallyDerivedProductDispense performer(FhirString value) {
    addParameterValue('performer', value.toString());
    return this;
  }

  /// a reference search for [product] in the resource
  /// [BiologicallyDerivedProductDispense]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchBiologicallyDerivedProductDispense product(FhirString value) {
    addParameterValue('product', value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [BiologicallyDerivedProductDispense]
  SearchBiologicallyDerivedProductDispense status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }
}
