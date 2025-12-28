// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_at_rest/fhir_r6_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [ImagingStudy] resource.
class SearchImagingStudy extends SearchResource {
  /// a token search for [identifier] in the resource
  /// [ImagingStudy]
  @override
  SearchImagingStudy identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['identifier'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [bodySite] in the resource
  /// [ImagingStudy]
  SearchImagingStudy bodySite(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['body_site'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a uri search for [dicomClass] in the resource
  /// [ImagingStudy]
  SearchImagingStudy dicomClass(
    FhirUri value, {
    SearchModifier? modifier,
  }) {
    parameters['dicom_class'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [instance] in the resource
  /// [ImagingStudy]
  SearchImagingStudy instance(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['instance'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [modality] in the resource
  /// [ImagingStudy]
  SearchImagingStudy modality(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['modality'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [reasonConcept] in the resource
  /// [ImagingStudy]
  SearchImagingStudy reasonConcept(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['reason_concept'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [series] in the resource
  /// [ImagingStudy]
  SearchImagingStudy series(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['series'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a date search for [started] in the resource
  /// [ImagingStudy]
  SearchImagingStudy started(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['started'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [ImagingStudy]
  @override
  SearchImagingStudy status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['status'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }
}
