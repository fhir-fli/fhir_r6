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
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [patient] in the resource
  /// [MedicationAdministration]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchMedicationAdministration patient(FhirString value) {
    addParameterValue('patient', value.toString());
    return this;
  }

  /// a token search for [code] in the resource
  /// [MedicationAdministration]
  SearchMedicationAdministration code(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('code', paramValue);
    return this;
  }

  /// a date search for [date] in the resource
  /// [MedicationAdministration]
  SearchMedicationAdministration date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('date', paramValue);
    return this;
  }

  /// a reference search for [device] in the resource
  /// [MedicationAdministration]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchMedicationAdministration device(FhirString value) {
    addParameterValue('device', value.toString());
    return this;
  }

  /// a reference search for [encounter] in the resource
  /// [MedicationAdministration]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchMedicationAdministration encounter(FhirString value) {
    addParameterValue('encounter', value.toString());
    return this;
  }

  /// a reference search for [medication] in the resource
  /// [MedicationAdministration]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchMedicationAdministration medication(FhirString value) {
    addParameterValue('medication', value.toString());
    return this;
  }

  /// a reference search for [performer] in the resource
  /// [MedicationAdministration]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchMedicationAdministration performer(FhirString value) {
    addParameterValue('performer', value.toString());
    return this;
  }

  /// a token search for [performerDeviceCode] in the resource
  /// [MedicationAdministration]
  SearchMedicationAdministration performerDeviceCode(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('performer-device-code', paramValue);
    return this;
  }

  /// a reference search for [reasonGiven] in the resource
  /// [MedicationAdministration]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchMedicationAdministration reasonGiven(FhirString value) {
    addParameterValue('reason-given', value.toString());
    return this;
  }

  /// a token search for [reasonGivenCode] in the resource
  /// [MedicationAdministration]
  SearchMedicationAdministration reasonGivenCode(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('reason-given-code', paramValue);
    return this;
  }

  /// a token search for [reasonNotGiven] in the resource
  /// [MedicationAdministration]
  SearchMedicationAdministration reasonNotGiven(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('reason-not-given', paramValue);
    return this;
  }

  /// a reference search for [request] in the resource
  /// [MedicationAdministration]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchMedicationAdministration request(FhirString value) {
    addParameterValue('request', value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [MedicationAdministration]
  SearchMedicationAdministration status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a reference search for [subject] in the resource
  /// [MedicationAdministration]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchMedicationAdministration subject(FhirString value) {
    addParameterValue('subject', value.toString());
    return this;
  }
}
