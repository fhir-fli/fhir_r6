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
    parameters['contraindication'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [effect] in the resource
  /// [ClinicalUseDefinition]
  SearchClinicalUseDefinition effect(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['effect'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [ClinicalUseDefinition]
  @override
  SearchClinicalUseDefinition identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['identifier'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [indication] in the resource
  /// [ClinicalUseDefinition]
  // SearchClinicalUseDefinition indication(
  //   FhirString value, {
  //   FhirUri? system,
  //   SearchModifier? modifier,
  // }) {
  //   parameters['indication'] = system != null
  //       ? (modifier != null
  //           ? '${modifier.toString()}:${system.toString()}|${value.toString()}'
  //           : '${system.toString()}|${value.toString()}')
  //       : (modifier != null
  //           ? '${modifier.toString()}:${value.toString()}'
  //           : value.toString());
  //   return this;
  // }

  /// a token search for [interaction] in the resource
  /// [ClinicalUseDefinition]
  SearchClinicalUseDefinition interaction(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['interaction'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [ClinicalUseDefinition]
  @override
  SearchClinicalUseDefinition status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['status'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [type] in the resource
  /// [ClinicalUseDefinition]
  SearchClinicalUseDefinition type(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['type'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }
}
