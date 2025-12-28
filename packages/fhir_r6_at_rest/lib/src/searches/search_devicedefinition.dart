// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_at_rest/fhir_r6_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [DeviceDefinition] resource.
class SearchDeviceDefinition extends SearchResource {
  /// a token search for [identifier] in the resource
  /// [DeviceDefinition]
  @override
  SearchDeviceDefinition identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['identifier'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a string search for [publisher] in the resource
  /// [DeviceDefinition]
  SearchDeviceDefinition publisher(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['publisher'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a uri search for [url] in the resource
  /// [DeviceDefinition]
  SearchDeviceDefinition url(
    FhirUri value, {
    SearchModifier? modifier,
  }) {
    parameters['url'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [version] in the resource
  /// [DeviceDefinition]
  SearchDeviceDefinition version(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['version'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a string search for [deviceName] in the resource
  /// [DeviceDefinition]
  SearchDeviceDefinition deviceName(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['device_name'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [modelNumber] in the resource
  /// [DeviceDefinition]
  SearchDeviceDefinition modelNumber(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['model_number'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a string search for [partNumber] in the resource
  /// [DeviceDefinition]
  SearchDeviceDefinition partNumber(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['part_number'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [specification] in the resource
  /// [DeviceDefinition]
  SearchDeviceDefinition specification(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['specification'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [type] in the resource
  /// [DeviceDefinition]
  SearchDeviceDefinition type(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['type'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }
}
