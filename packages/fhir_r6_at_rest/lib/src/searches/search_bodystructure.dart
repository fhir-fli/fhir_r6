// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_at_rest/fhir_r6_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [BodyStructure] resource.
class SearchBodyStructure extends SearchResource {
  /// a token search for [identifier] in the resource
  /// [BodyStructure]
  SearchBodyStructure identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [patient] in the resource
  /// [BodyStructure]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchBodyStructure patient(FhirString value) {
    addParameterValue('patient', value.toString());
    return this;
  }

  /// a token search for [excludedStructure] in the resource
  /// [BodyStructure]
  SearchBodyStructure excludedStructure(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('excluded_structure', paramValue);
    return this;
  }

  /// a token search for [includedStructure] in the resource
  /// [BodyStructure]
  SearchBodyStructure includedStructure(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('included_structure', paramValue);
    return this;
  }

  /// a token search for [morphology] in the resource
  /// [BodyStructure]
  SearchBodyStructure morphology(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('morphology', paramValue);
    return this;
  }
}
