// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_at_rest/fhir_r6_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [ImagingStudy] resource.
class SearchImagingStudy extends SearchResource {
  /// a token search for [identifier] in the resource
  /// [ImagingStudy]
  SearchImagingStudy identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [patient] in the resource
  /// [ImagingStudy]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchImagingStudy patient(FhirString value) {
    addParameterValue('patient', value.toString());
    return this;
  }

  /// a reference search for [encounter] in the resource
  /// [ImagingStudy]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchImagingStudy encounter(FhirString value) {
    addParameterValue('encounter', value.toString());
    return this;
  }

  /// a reference search for [basedOn] in the resource
  /// [ImagingStudy]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchImagingStudy basedOn(FhirString value) {
    addParameterValue('based-on', value.toString());
    return this;
  }

  /// a token search for [bodySite] in the resource
  /// [ImagingStudy]
  SearchImagingStudy bodySite(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('body-site', paramValue);
    return this;
  }

  /// a reference search for [bodyStructure] in the resource
  /// [ImagingStudy]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchImagingStudy bodyStructure(FhirString value) {
    addParameterValue('body-structure', value.toString());
    return this;
  }

  /// a uri search for [dicomClass] in the resource
  /// [ImagingStudy]
  SearchImagingStudy dicomClass(FhirUri value) {
    addParameterValue('dicom-class', value.toString());
    return this;
  }

  /// a reference search for [endpoint] in the resource
  /// [ImagingStudy]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchImagingStudy endpoint(FhirString value) {
    addParameterValue('endpoint', value.toString());
    return this;
  }

  /// a token search for [instance] in the resource
  /// [ImagingStudy]
  SearchImagingStudy instance(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('instance', paramValue);
    return this;
  }

  /// a token search for [modality] in the resource
  /// [ImagingStudy]
  SearchImagingStudy modality(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('modality', paramValue);
    return this;
  }

  /// a reference search for [performer] in the resource
  /// [ImagingStudy]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchImagingStudy performer(FhirString value) {
    addParameterValue('performer', value.toString());
    return this;
  }

  /// a token search for [reasonConcept] in the resource
  /// [ImagingStudy]
  SearchImagingStudy reasonConcept(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('reason-concept', paramValue);
    return this;
  }

  /// a reference search for [reasonReference] in the resource
  /// [ImagingStudy]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchImagingStudy reasonReference(FhirString value) {
    addParameterValue('reason-reference', value.toString());
    return this;
  }

  /// a reference search for [referrer] in the resource
  /// [ImagingStudy]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchImagingStudy referrer(FhirString value) {
    addParameterValue('referrer', value.toString());
    return this;
  }

  /// a token search for [series] in the resource
  /// [ImagingStudy]
  SearchImagingStudy series(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('series', paramValue);
    return this;
  }

  /// a date search for [started] in the resource
  /// [ImagingStudy]
  SearchImagingStudy started(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('started', paramValue);
    return this;
  }

  /// a token search for [status] in the resource
  /// [ImagingStudy]
  SearchImagingStudy status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a reference search for [subject] in the resource
  /// [ImagingStudy]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchImagingStudy subject(FhirString value) {
    addParameterValue('subject', value.toString());
    return this;
  }
}
