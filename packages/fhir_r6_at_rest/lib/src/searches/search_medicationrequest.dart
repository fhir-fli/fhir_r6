// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_at_rest/fhir_r6_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [MedicationRequest] resource.
class SearchMedicationRequest extends SearchResource {
  /// a token search for [identifier] in the resource
  /// [MedicationRequest]
  @override
  SearchMedicationRequest identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a token search for [code] in the resource
  /// [MedicationRequest]
  @override
  SearchMedicationRequest code(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('code', paramValue);
    return this;
  }

  /// a token search for [status] in the resource
  /// [MedicationRequest]
  @override
  SearchMedicationRequest status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('status', paramValue);
    return this;
  }

  /// a date search for [authoredon] in the resource
  /// [MedicationRequest]
  SearchMedicationRequest authoredon(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('authoredon', paramValue);
    return this;
  }

  /// a token search for [category] in the resource
  /// [MedicationRequest]
  SearchMedicationRequest category(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('category', paramValue);
    return this;
  }

  /// a date search for [comboDate] in the resource
  /// [MedicationRequest]
  SearchMedicationRequest comboDate(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('combo_date', paramValue);
    return this;
  }

  /// a token search for [groupIdentifier] in the resource
  /// [MedicationRequest]
  SearchMedicationRequest groupIdentifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('group_identifier', paramValue);
    return this;
  }

  /// a token search for [groupOrIdentifier] in the resource
  /// [MedicationRequest]
  SearchMedicationRequest groupOrIdentifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('group_or_identifier', paramValue);
    return this;
  }

  /// a token search for [intendedPerformertype] in the resource
  /// [MedicationRequest]
  SearchMedicationRequest intendedPerformertype(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('intended_performertype', paramValue);
    return this;
  }

  /// a token search for [intent] in the resource
  /// [MedicationRequest]
  SearchMedicationRequest intent(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('intent', paramValue);
    return this;
  }

  /// a token search for [priority] in the resource
  /// [MedicationRequest]
  @override
  SearchMedicationRequest priority(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('priority', paramValue);
    return this;
  }
}
