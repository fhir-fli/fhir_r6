// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_at_rest/fhir_r6_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [ClinicalAssessment] resource.
class SearchClinicalAssessment extends SearchResource {
  /// a date search for [date] in the resource
  /// [ClinicalAssessment]
  SearchClinicalAssessment date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('date', paramValue);
    return this;
  }

  /// a reference search for [encounter] in the resource
  /// [ClinicalAssessment]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchClinicalAssessment encounter(FhirString value) {
    addParameterValue('encounter', value.toString());
    return this;
  }

  /// a token search for [findingCode] in the resource
  /// [ClinicalAssessment]
  SearchClinicalAssessment findingCode(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('finding-code', paramValue);
    return this;
  }

  /// a reference search for [findingRef] in the resource
  /// [ClinicalAssessment]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchClinicalAssessment findingRef(FhirString value) {
    addParameterValue('finding-ref', value.toString());
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [ClinicalAssessment]
  SearchClinicalAssessment identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [patient] in the resource
  /// [ClinicalAssessment]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchClinicalAssessment patient(FhirString value) {
    addParameterValue('patient', value.toString());
    return this;
  }

  /// a reference search for [performer] in the resource
  /// [ClinicalAssessment]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchClinicalAssessment performer(FhirString value) {
    addParameterValue('performer', value.toString());
    return this;
  }

  /// a reference search for [previous] in the resource
  /// [ClinicalAssessment]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchClinicalAssessment previous(FhirString value) {
    addParameterValue('previous', value.toString());
    return this;
  }

  /// a reference search for [problem] in the resource
  /// [ClinicalAssessment]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchClinicalAssessment problem(FhirString value) {
    addParameterValue('problem', value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [ClinicalAssessment]
  SearchClinicalAssessment status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a reference search for [subject] in the resource
  /// [ClinicalAssessment]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchClinicalAssessment subject(FhirString value) {
    addParameterValue('subject', value.toString());
    return this;
  }

  /// a reference search for [supportingInfo] in the resource
  /// [ClinicalAssessment]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchClinicalAssessment supportingInfo(FhirString value) {
    addParameterValue('supporting-info', value.toString());
    return this;
  }
}
