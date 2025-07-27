// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r5/fhir_r5.dart';
import 'package:fhir_r5_at_rest/fhir_r5_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [ResearchSubject] resource.
class SearchResearchSubject extends SearchResource {
  /// a token search for [identifier] in the resource
  /// [ResearchSubject]
  SearchResearchSubject identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a date search for [date] in the resource
  /// [ResearchSubject]
  SearchResearchSubject date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}date'] = value.toString();
    return this;
  }

  /// a token search for [status] in the resource
  /// [ResearchSubject]
  SearchResearchSubject status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [subjectState] in the resource
  /// [ResearchSubject]
  SearchResearchSubject subjectState(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}subject_state'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }
}
