// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_at_rest/fhir_r6_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [Specimen] resource.
class SearchSpecimen extends SearchResource {
  /// a token search for [identifier] in the resource
  /// [Specimen]
  SearchSpecimen identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [patient] in the resource
  /// [Specimen]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchSpecimen patient(FhirString value) {
    addParameterValue('patient', value.toString());
    return this;
  }

  /// a token search for [type] in the resource
  /// [Specimen]
  SearchSpecimen type(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('type', paramValue);
    return this;
  }

  /// a token search for [accession] in the resource
  /// [Specimen]
  SearchSpecimen accession(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('accession', paramValue);
    return this;
  }

  /// a reference search for [bodysite] in the resource
  /// [Specimen]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchSpecimen bodysite(FhirString value) {
    addParameterValue('bodysite', value.toString());
    return this;
  }

  /// a date search for [collected] in the resource
  /// [Specimen]
  SearchSpecimen collected(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('collected', paramValue);
    return this;
  }

  /// a reference search for [collector] in the resource
  /// [Specimen]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchSpecimen collector(FhirString value) {
    addParameterValue('collector', value.toString());
    return this;
  }

  /// a reference search for [containerDevice] in the resource
  /// [Specimen]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchSpecimen containerDevice(FhirString value) {
    addParameterValue('container-device', value.toString());
    return this;
  }

  /// a reference search for [containerLocation] in the resource
  /// [Specimen]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchSpecimen containerLocation(FhirString value) {
    addParameterValue('container-location', value.toString());
    return this;
  }

  /// a reference search for [organization] in the resource
  /// [Specimen]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchSpecimen organization(FhirString value) {
    addParameterValue('organization', value.toString());
    return this;
  }

  /// a reference search for [parent] in the resource
  /// [Specimen]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchSpecimen parent(FhirString value) {
    addParameterValue('parent', value.toString());
    return this;
  }

  /// a reference search for [procedure] in the resource
  /// [Specimen]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchSpecimen procedure(FhirString value) {
    addParameterValue('procedure', value.toString());
    return this;
  }

  /// a reference search for [request] in the resource
  /// [Specimen]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchSpecimen request(FhirString value) {
    addParameterValue('request', value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [Specimen]
  SearchSpecimen status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a reference search for [subject] in the resource
  /// [Specimen]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchSpecimen subject(FhirString value) {
    addParameterValue('subject', value.toString());
    return this;
  }
}
