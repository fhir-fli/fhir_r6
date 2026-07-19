// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_at_rest/fhir_r6_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [DeviceDispense] resource.
class SearchDeviceDispense extends SearchResource {
  /// a token search for [code] in the resource
  /// [DeviceDispense]
  SearchDeviceDispense code(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('code', paramValue);
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [DeviceDispense]
  SearchDeviceDispense identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [patient] in the resource
  /// [DeviceDispense]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchDeviceDispense patient(FhirString value) {
    addParameterValue('patient', value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [DeviceDispense]
  SearchDeviceDispense status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a reference search for [subject] in the resource
  /// [DeviceDispense]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchDeviceDispense subject(FhirString value) {
    addParameterValue('subject', value.toString());
    return this;
  }
}
