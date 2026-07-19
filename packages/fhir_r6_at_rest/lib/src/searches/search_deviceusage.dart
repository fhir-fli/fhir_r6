// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_at_rest/fhir_r6_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [DeviceUsage] resource.
class SearchDeviceUsage extends SearchResource {
  /// a token search for [identifier] in the resource
  /// [DeviceUsage]
  SearchDeviceUsage identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [patient] in the resource
  /// [DeviceUsage]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchDeviceUsage patient(FhirString value) {
    addParameterValue('patient', value.toString());
    return this;
  }

  /// a token search for [device] in the resource
  /// [DeviceUsage]
  SearchDeviceUsage device(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('device', paramValue);
    return this;
  }

  /// a token search for [status] in the resource
  /// [DeviceUsage]
  SearchDeviceUsage status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }
}
