// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r5/fhir_r5.dart';
import 'package:fhir_r5_at_rest/fhir_r5_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [ImagingStudy] resource.
class SearchImagingStudy extends SearchResource {
  /// a token search for [identifier] in the resource
  /// [ImagingStudy]
  SearchImagingStudy identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [bodySite] in the resource
  /// [ImagingStudy]
  SearchImagingStudy bodySite(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}body_site'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [dicomClass] in the resource
  /// [ImagingStudy]
  SearchImagingStudy dicomClass(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}dicom_class'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [instance] in the resource
  /// [ImagingStudy]
  SearchImagingStudy instance(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}instance'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [modality] in the resource
  /// [ImagingStudy]
  SearchImagingStudy modality(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}modality'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [reason] in the resource
  /// [ImagingStudy]
  SearchImagingStudy reason(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}reason'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [series] in the resource
  /// [ImagingStudy]
  SearchImagingStudy series(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}series'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a date search for [started] in the resource
  /// [ImagingStudy]
  SearchImagingStudy started(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}started'] =
        value.toString();
    return this;
  }

  /// a token search for [status] in the resource
  /// [ImagingStudy]
  SearchImagingStudy status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }
}
