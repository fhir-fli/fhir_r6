// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_at_rest/fhir_r6_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [ResearchSubject] resource.
class SearchResearchSubject extends SearchResource {
  /// a token search for [identifier] in the resource
  /// [ResearchSubject]
  SearchResearchSubject identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [patient] in the resource
  /// [ResearchSubject]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchResearchSubject patient(FhirString value) {
    addParameterValue('patient', value.toString());
    return this;
  }

  /// a date search for [date] in the resource
  /// [ResearchSubject]
  SearchResearchSubject date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('date', paramValue);
    return this;
  }

  /// a token search for [status] in the resource
  /// [ResearchSubject]
  SearchResearchSubject status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a reference search for [study] in the resource
  /// [ResearchSubject]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchResearchSubject study(FhirString value) {
    addParameterValue('study', value.toString());
    return this;
  }

  /// a reference search for [subject] in the resource
  /// [ResearchSubject]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchResearchSubject subject(FhirString value) {
    addParameterValue('subject', value.toString());
    return this;
  }

  /// a token search for [subjectState] in the resource
  /// [ResearchSubject]
  SearchResearchSubject subjectState(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('subject_state', paramValue);
    return this;
  }
}
