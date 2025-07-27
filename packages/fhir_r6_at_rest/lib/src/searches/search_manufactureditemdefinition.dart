// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r5/fhir_r5.dart';
import 'package:fhir_r5_at_rest/fhir_r5_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [ManufacturedItemDefinition] resource.
class SearchManufacturedItemDefinition extends SearchResource {
  /// a token search for [doseForm] in the resource
  /// [ManufacturedItemDefinition]
  SearchManufacturedItemDefinition doseForm(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}dose_form'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [ManufacturedItemDefinition]
  SearchManufacturedItemDefinition identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [ingredient] in the resource
  /// [ManufacturedItemDefinition]
  SearchManufacturedItemDefinition ingredient(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}ingredient'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [name] in the resource
  /// [ManufacturedItemDefinition]
  SearchManufacturedItemDefinition name(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}name'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [status] in the resource
  /// [ManufacturedItemDefinition]
  SearchManufacturedItemDefinition status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }
}
