// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_at_rest/fhir_r6_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [DeviceAlert] resource.
class SearchDeviceAlert extends SearchResource {
  /// a token search for [annunciatorConcept] in the resource
  /// [DeviceAlert]
  SearchDeviceAlert annunciatorConcept(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('annunciator-concept', paramValue);
    return this;
  }

  /// a token search for [code] in the resource
  /// [DeviceAlert]
  SearchDeviceAlert code(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('code', paramValue);
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [DeviceAlert]
  SearchDeviceAlert identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a date search for [indication] in the resource
  /// [DeviceAlert]
  SearchDeviceAlert indication(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('indication', paramValue);
    return this;
  }

  /// a token search for [manifestation] in the resource
  /// [DeviceAlert]
  SearchDeviceAlert manifestation(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('manifestation', paramValue);
    return this;
  }

  /// a token search for [presence] in the resource
  /// [DeviceAlert]
  SearchDeviceAlert presence(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('presence', paramValue);
    return this;
  }

  /// a token search for [priority] in the resource
  /// [DeviceAlert]
  SearchDeviceAlert priority(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('priority', paramValue);
    return this;
  }

  /// a token search for [signalPresence] in the resource
  /// [DeviceAlert]
  SearchDeviceAlert signalPresence(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('signal-presence', paramValue);
    return this;
  }

  /// a token search for [status] in the resource
  /// [DeviceAlert]
  SearchDeviceAlert status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a date search for [timing] in the resource
  /// [DeviceAlert]
  SearchDeviceAlert timing(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('timing', paramValue);
    return this;
  }

  /// a token search for [type] in the resource
  /// [DeviceAlert]
  SearchDeviceAlert type(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('type', paramValue);
    return this;
  }
}
