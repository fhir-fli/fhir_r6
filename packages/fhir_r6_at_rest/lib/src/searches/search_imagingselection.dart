// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_at_rest/fhir_r6_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [ImagingSelection] resource.
class SearchImagingSelection extends SearchResource {
  /// a token search for [identifier] in the resource
  /// [ImagingSelection]
  SearchImagingSelection identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [patient] in the resource
  /// [ImagingSelection]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchImagingSelection patient(FhirString value) {
    addParameterValue('patient', value.toString());
    return this;
  }

  /// a token search for [code] in the resource
  /// [ImagingSelection]
  SearchImagingSelection code(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('code', paramValue);
    return this;
  }

  /// a reference search for [basedOn] in the resource
  /// [ImagingSelection]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchImagingSelection basedOn(FhirString value) {
    addParameterValue('based-on', value.toString());
    return this;
  }

  /// a token search for [bodySite] in the resource
  /// [ImagingSelection]
  SearchImagingSelection bodySite(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('body-site', paramValue);
    return this;
  }

  /// a reference search for [bodyStructure] in the resource
  /// [ImagingSelection]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchImagingSelection bodyStructure(FhirString value) {
    addParameterValue('body-structure', value.toString());
    return this;
  }

  /// a token search for [category] in the resource
  /// [ImagingSelection]
  SearchImagingSelection category(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('category', paramValue);
    return this;
  }

  /// a reference search for [derivedFrom] in the resource
  /// [ImagingSelection]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchImagingSelection derivedFrom(FhirString value) {
    addParameterValue('derived-from', value.toString());
    return this;
  }

  /// a date search for [issued] in the resource
  /// [ImagingSelection]
  SearchImagingSelection issued(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('issued', paramValue);
    return this;
  }

  /// a token search for [status] in the resource
  /// [ImagingSelection]
  SearchImagingSelection status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a token search for [studyUid] in the resource
  /// [ImagingSelection]
  SearchImagingSelection studyUid(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('study-uid', paramValue);
    return this;
  }

  /// a reference search for [subject] in the resource
  /// [ImagingSelection]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchImagingSelection subject(FhirString value) {
    addParameterValue('subject', value.toString());
    return this;
  }
}
