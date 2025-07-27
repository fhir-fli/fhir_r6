// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r5/fhir_r5.dart';
import 'package:fhir_r5_at_rest/fhir_r5_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [ImagingSelection] resource.
class SearchImagingSelection extends SearchResource {
  /// a token search for [identifier] in the resource
  /// [ImagingSelection]
  SearchImagingSelection identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [code] in the resource
  /// [ImagingSelection]
  SearchImagingSelection code(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [bodySite] in the resource
  /// [ImagingSelection]
  SearchImagingSelection bodySite(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}body_site'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a date search for [issued] in the resource
  /// [ImagingSelection]
  SearchImagingSelection issued(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}issued'] =
        value.toString();
    return this;
  }

  /// a token search for [status] in the resource
  /// [ImagingSelection]
  SearchImagingSelection status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [studyUid] in the resource
  /// [ImagingSelection]
  SearchImagingSelection studyUid(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}study_uid'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }
}
