// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_at_rest/fhir_r6_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [Device] resource.
class SearchDevice extends SearchResource {
  /// a token search for [biologicalSourceEvent] in the resource
  /// [Device]
  SearchDevice biologicalSourceEvent(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['biological_source_event'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [code] in the resource
  /// [Device]
  @override
  SearchDevice code(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['code'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a string search for [deviceName] in the resource
  /// [Device]
  SearchDevice deviceName(
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

  /// a date search for [expirationDate] in the resource
  /// [Device]
  SearchDevice expirationDate(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['expiration_date'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [Device]
  @override
  SearchDevice identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['identifier'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a string search for [lotNumber] in the resource
  /// [Device]
  SearchDevice lotNumber(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['lot_number'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a date search for [manufactureDate] in the resource
  /// [Device]
  SearchDevice manufactureDate(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['manufacture_date'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a string search for [manufacturer] in the resource
  /// [Device]
  SearchDevice manufacturer(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['manufacturer'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a string search for [model] in the resource
  /// [Device]
  SearchDevice model(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['model'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a string search for [serialNumber] in the resource
  /// [Device]
  SearchDevice serialNumber(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['serial_number'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [specification] in the resource
  /// [Device]
  SearchDevice specification(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['specification'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [Device]
  @override
  SearchDevice status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['status'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [type] in the resource
  /// [Device]
  SearchDevice type(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['type'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a string search for [udiCarrierHrf] in the resource
  /// [Device]
  SearchDevice udiCarrierHrf(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['udi_carrier_hrf'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a string search for [udiDi] in the resource
  /// [Device]
  SearchDevice udiDi(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['udi_di'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a string search for [version] in the resource
  /// [Device]
  SearchDevice version(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['version'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }
}
