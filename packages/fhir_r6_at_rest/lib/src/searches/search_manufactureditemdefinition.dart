// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_at_rest/fhir_r6_at_rest.dart';

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
    parameters['dose_form'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [ManufacturedItemDefinition]
  @override
  SearchManufacturedItemDefinition identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['identifier'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [ingredient] in the resource
  /// [ManufacturedItemDefinition]
  SearchManufacturedItemDefinition ingredient(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['ingredient'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [name] in the resource
  /// [ManufacturedItemDefinition]
  @override
  SearchManufacturedItemDefinition name(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['name'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [ManufacturedItemDefinition]
  @override
  SearchManufacturedItemDefinition status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['status'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }
}
