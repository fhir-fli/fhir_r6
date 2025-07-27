// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r5/fhir_r5.dart';
import 'package:fhir_r5_at_rest/fhir_r5_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [DeviceUsage] resource.
class SearchDeviceUsage extends SearchResource {
  /// a token search for [identifier] in the resource
  /// [DeviceUsage]
  SearchDeviceUsage identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [device] in the resource
  /// [DeviceUsage]
  SearchDeviceUsage device(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}device'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [status] in the resource
  /// [DeviceUsage]
  SearchDeviceUsage status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }
}
