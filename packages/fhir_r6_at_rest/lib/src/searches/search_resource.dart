// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_at_rest/fhir_r6_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [Resource] resource.
class SearchResource extends RestfulParameters {
  /// a token search for [id] in the resource
  /// [Resource]
  SearchResource id(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['_id'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [language] in the resource
  /// [Resource]
  SearchResource language(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['_language'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a date search for [lastUpdated] in the resource
  /// [Resource]
  SearchResource lastUpdated(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['_lastUpdated'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [security] in the resource
  /// [Resource]
  SearchResource security(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['_security'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a uri search for [resourceSource] in the resource
  /// [Resource]
  SearchResource resourceSource(
    FhirUri value, {
    SearchModifier? modifier,
  }) {
    parameters['_source'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [tag] in the resource
  /// [Resource]
  SearchResource tag(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['_tag'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a date search for [date] in the resource
  /// [Resource]
  SearchResource date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['date'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [findingCode] in the resource
  /// [Resource]
  SearchResource findingCode(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['finding_code'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [Resource]
  SearchResource identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['identifier'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [Resource]
  SearchResource status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['status'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [annunciatorConcept] in the resource
  /// [Resource]
  SearchResource annunciatorConcept(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['annunciator_concept'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [code] in the resource
  /// [Resource]
  SearchResource code(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['code'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a date search for [indication] in the resource
  /// [Resource]
  SearchResource indication(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['indication'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [manifestation] in the resource
  /// [Resource]
  SearchResource manifestation(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['manifestation'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [presence] in the resource
  /// [Resource]
  SearchResource presence(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['presence'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [priority] in the resource
  /// [Resource]
  SearchResource priority(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['priority'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [signalPresence] in the resource
  /// [Resource]
  SearchResource signalPresence(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['signal_presence'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a date search for [timing] in the resource
  /// [Resource]
  SearchResource timing(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['timing'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [resourceType] in the resource
  /// [Resource]
  SearchResource resourceType(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['type'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a string search for [contactAddress] in the resource
  /// [Resource]
  SearchResource contactAddress(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['contact_address'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a string search for [contactAddressCity] in the resource
  /// [Resource]
  SearchResource contactAddressCity(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['contact_address_city'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a string search for [contactAddressCountry] in the resource
  /// [Resource]
  SearchResource contactAddressCountry(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['contact_address_country'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a string search for [contactAddressPostalcode] in the resource
  /// [Resource]
  SearchResource contactAddressPostalcode(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['contact_address_postalcode'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a string search for [contactAddressState] in the resource
  /// [Resource]
  SearchResource contactAddressState(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['contact_address_state'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [contactAddressUse] in the resource
  /// [Resource]
  SearchResource contactAddressUse(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['contact_address_use'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a string search for [name] in the resource
  /// [Resource]
  SearchResource name(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['name'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a string search for [phonetic] in the resource
  /// [Resource]
  SearchResource phonetic(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['phonetic'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [moleculetype] in the resource
  /// [Resource]
  SearchResource moleculetype(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['moleculetype'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [topology] in the resource
  /// [Resource]
  SearchResource topology(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['topology'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [relationship] in the resource
  /// [Resource]
  SearchResource relationship(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['relationship'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }
}
