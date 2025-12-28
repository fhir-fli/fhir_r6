// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_at_rest/fhir_r6_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [Encounter] resource.
class SearchEncounter extends SearchResource {
  /// a token search for [identifier] in the resource
  /// [Encounter]
  @override
  SearchEncounter identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['identifier'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [type] in the resource
  /// [Encounter]
  SearchEncounter type(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['type'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a date search for [date] in the resource
  /// [Encounter]
  @override
  SearchEncounter date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['date'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [class_] in the resource
  /// [Encounter]
  SearchEncounter class_(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['class'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a date search for [dateStart] in the resource
  /// [Encounter]
  SearchEncounter dateStart(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['date_start'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [diagnosisCode] in the resource
  /// [Encounter]
  SearchEncounter diagnosisCode(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['diagnosis_code'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a date search for [endDate] in the resource
  /// [Encounter]
  SearchEncounter endDate(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['end_date'] =
        (modifier != null ? '$modifier:$value' : value.toString());
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
    parameters['length'] = (modifier != null
        ? '$modifier:$value|${system?.toString() ?? ''}|${unit?.toString() ?? ''}'
        : '$value|${system?.toString() ?? ''}|${unit?.toString() ?? ''}');
    return this;
  }

  /// a date search for [locationPeriod] in the resource
  /// [Encounter]
  SearchEncounter locationPeriod(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['location_period'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [participantType] in the resource
  /// [Encounter]
  SearchEncounter participantType(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['participant_type'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [reasonCode] in the resource
  /// [Encounter]
  SearchEncounter reasonCode(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['reason_code'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [specialArrangement] in the resource
  /// [Encounter]
  SearchEncounter specialArrangement(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['special_arrangement'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [Encounter]
  @override
  SearchEncounter status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['status'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [subjectStatus] in the resource
  /// [Encounter]
  SearchEncounter subjectStatus(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['subject_status'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }
}
