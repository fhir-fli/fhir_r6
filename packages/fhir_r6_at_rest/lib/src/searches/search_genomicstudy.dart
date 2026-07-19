// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_at_rest/fhir_r6_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [GenomicStudy] resource.
class SearchGenomicStudy extends SearchResource {
  /// a reference search for [focus] in the resource
  /// [GenomicStudy]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchGenomicStudy focus(FhirString value) {
    addParameterValue('focus', value.toString());
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [GenomicStudy]
  SearchGenomicStudy identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [patient] in the resource
  /// [GenomicStudy]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchGenomicStudy patient(FhirString value) {
    addParameterValue('patient', value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [GenomicStudy]
  SearchGenomicStudy status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a reference search for [subject] in the resource
  /// [GenomicStudy]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchGenomicStudy subject(FhirString value) {
    addParameterValue('subject', value.toString());
    return this;
  }
}
