// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_at_rest/fhir_r6_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [MedicationAdministration] resource.
class SearchMedicationAdministration extends SearchResource {
  /// a token search for [identifier] in the resource
  /// [MedicationAdministration]
  SearchMedicationAdministration identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [code] in the resource
  /// [MedicationAdministration]
  SearchMedicationAdministration code(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a date search for [date] in the resource
  /// [MedicationAdministration]
  SearchMedicationAdministration date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}date'] = value.toString();
    return this;
  }

  /// a token search for [performerDeviceCode] in the resource
  /// [MedicationAdministration]
  SearchMedicationAdministration performerDeviceCode(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}performer_device_code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [reasonGivenCode] in the resource
  /// [MedicationAdministration]
  SearchMedicationAdministration reasonGivenCode(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}reason_given_code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [reasonNotGiven] in the resource
  /// [MedicationAdministration]
  SearchMedicationAdministration reasonNotGiven(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}reason_not_given'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [status] in the resource
  /// [MedicationAdministration]
  SearchMedicationAdministration status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }
}
