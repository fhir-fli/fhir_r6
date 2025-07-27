// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r5/fhir_r5.dart';
import 'package:fhir_r5_at_rest/fhir_r5_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [DeviceDefinition] resource.
class SearchDeviceDefinition extends SearchResource {
  /// a string search for [deviceName] in the resource
  /// [DeviceDefinition]
  SearchDeviceDefinition deviceName(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}device_name'] =
        value.toString();
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [DeviceDefinition]
  SearchDeviceDefinition identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [specification] in the resource
  /// [DeviceDefinition]
  SearchDeviceDefinition specification(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}specification'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [type] in the resource
  /// [DeviceDefinition]
  SearchDeviceDefinition type(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }
}
