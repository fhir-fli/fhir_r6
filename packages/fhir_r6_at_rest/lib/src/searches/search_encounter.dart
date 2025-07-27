// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_at_rest/fhir_r6_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [Encounter] resource.
class SearchEncounter extends SearchResource {
  /// a token search for [identifier] in the resource
  /// [Encounter]
  SearchEncounter identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [type] in the resource
  /// [Encounter]
  SearchEncounter type(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a date search for [date] in the resource
  /// [Encounter]
  SearchEncounter date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}date'] = value.toString();
    return this;
  }

  /// a token search for [class_] in the resource
  /// [Encounter]
  SearchEncounter class_(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}class'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a date search for [dateStart] in the resource
  /// [Encounter]
  SearchEncounter dateStart(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}date_start'] =
        value.toString();
    return this;
  }

  /// a token search for [diagnosisCode] in the resource
  /// [Encounter]
  SearchEncounter diagnosisCode(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}diagnosis_code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a date search for [endDate] in the resource
  /// [Encounter]
  SearchEncounter endDate(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}end_date'] =
        value.toString();
    return this;
  }

  /// a quantity search for [length] in the resource
  /// [Encounter]
  SearchEncounter length(
    FhirDecimal value, {
    FhirString? unit,
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    if (modifier != null &&
        !['gt', 'lt', 'ge', 'le', 'ap'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for quantity type');
    }
    parameters['${modifier != null ? '$modifier' : ''}length'] =
        '$value|${system?.toString() ?? ''}|${unit?.toString() ?? ''}';
    return this;
  }

  /// a token search for [participantType] in the resource
  /// [Encounter]
  SearchEncounter participantType(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}participant_type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [reasonCode] in the resource
  /// [Encounter]
  SearchEncounter reasonCode(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}reason_code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [specialArrangement] in the resource
  /// [Encounter]
  SearchEncounter specialArrangement(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}special_arrangement'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [status] in the resource
  /// [Encounter]
  SearchEncounter status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [subjectStatus] in the resource
  /// [Encounter]
  SearchEncounter subjectStatus(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}subject_status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }
}
