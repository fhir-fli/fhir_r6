// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r5/fhir_r5.dart';
import 'package:fhir_r5_at_rest/fhir_r5_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [BodyStructure] resource.
class SearchBodyStructure extends SearchResource {
  /// a token search for [identifier] in the resource
  /// [BodyStructure]
  SearchBodyStructure identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [excludedStructure] in the resource
  /// [BodyStructure]
  SearchBodyStructure excludedStructure(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}excluded_structure'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [includedStructure] in the resource
  /// [BodyStructure]
  SearchBodyStructure includedStructure(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}included_structure'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [morphology] in the resource
  /// [BodyStructure]
  SearchBodyStructure morphology(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}morphology'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }
}
