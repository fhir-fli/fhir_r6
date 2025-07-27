// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r5/fhir_r5.dart';
import 'package:fhir_r5_at_rest/fhir_r5_at_rest.dart';

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
    parameters[
            '${modifier != null ? '$modifier' : ''}biological_source_event'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [code] in the resource
  /// [Device]
  SearchDevice code(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}code'] =
        system != null ? '$system|$value' : '$value';
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
    parameters['${modifier != null ? '$modifier' : ''}device_name'] =
        value.toString();
    return this;
  }

  /// a date search for [expirationDate] in the resource
  /// [Device]
  SearchDevice expirationDate(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}expiration_date'] =
        value.toString();
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [Device]
  SearchDevice identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
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
    parameters['${modifier != null ? '$modifier' : ''}lot_number'] =
        value.toString();
    return this;
  }

  /// a date search for [manufactureDate] in the resource
  /// [Device]
  SearchDevice manufactureDate(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}manufacture_date'] =
        value.toString();
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
    parameters['${modifier != null ? '$modifier' : ''}manufacturer'] =
        value.toString();
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
    parameters['${modifier != null ? '$modifier' : ''}model'] =
        value.toString();
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
    parameters['${modifier != null ? '$modifier' : ''}serial_number'] =
        value.toString();
    return this;
  }

  /// a token search for [specification] in the resource
  /// [Device]
  SearchDevice specification(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}specification'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [status] in the resource
  /// [Device]
  SearchDevice status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [type] in the resource
  /// [Device]
  SearchDevice type(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a string search for [udiCarrier] in the resource
  /// [Device]
  SearchDevice udiCarrier(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}udi_carrier'] =
        value.toString();
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
    parameters['${modifier != null ? '$modifier' : ''}udi_di'] =
        value.toString();
    return this;
  }

  /// a uri search for [url] in the resource
  /// [Device]
  SearchDevice url(
    FhirUri value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}url'] = value.toString();
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
    parameters['${modifier != null ? '$modifier' : ''}version'] =
        value.toString();
    return this;
  }
}
