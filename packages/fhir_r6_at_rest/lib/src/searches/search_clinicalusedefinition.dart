// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_at_rest/fhir_r6_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [ClinicalUseDefinition] resource.
class SearchClinicalUseDefinition extends SearchResource {
  /// a token search for [contraindication] in the resource
  /// [ClinicalUseDefinition]
  SearchClinicalUseDefinition contraindication(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}contraindication'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [effect] in the resource
  /// [ClinicalUseDefinition]
  SearchClinicalUseDefinition effect(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}effect'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [ClinicalUseDefinition]
  SearchClinicalUseDefinition identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [indication] in the resource
  /// [ClinicalUseDefinition]
  SearchClinicalUseDefinition indication(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}indication'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [interaction] in the resource
  /// [ClinicalUseDefinition]
  SearchClinicalUseDefinition interaction(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}interaction'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [status] in the resource
  /// [ClinicalUseDefinition]
  SearchClinicalUseDefinition status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [type] in the resource
  /// [ClinicalUseDefinition]
  SearchClinicalUseDefinition type(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }
}
