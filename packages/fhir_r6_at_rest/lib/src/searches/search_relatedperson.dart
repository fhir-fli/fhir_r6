// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_at_rest/fhir_r6_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [RelatedPerson] resource.
class SearchRelatedPerson extends SearchResource {
  /// a token search for [identifier] in the resource
  /// [RelatedPerson]
  @override
  SearchRelatedPerson identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['identifier'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a string search for [address] in the resource
  /// [RelatedPerson]
  SearchRelatedPerson address(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['address'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a string search for [addressCity] in the resource
  /// [RelatedPerson]
  SearchRelatedPerson addressCity(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['address_city'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a string search for [addressCountry] in the resource
  /// [RelatedPerson]
  SearchRelatedPerson addressCountry(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['address_country'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a string search for [addressPostalcode] in the resource
  /// [RelatedPerson]
  SearchRelatedPerson addressPostalcode(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['address_postalcode'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a string search for [addressState] in the resource
  /// [RelatedPerson]
  SearchRelatedPerson addressState(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['address_state'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [addressUse] in the resource
  /// [RelatedPerson]
  SearchRelatedPerson addressUse(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['address_use'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a date search for [birthdate] in the resource
  /// [RelatedPerson]
  SearchRelatedPerson birthdate(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['birthdate'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [email] in the resource
  /// [RelatedPerson]
  SearchRelatedPerson email(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['email'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [gender] in the resource
  /// [RelatedPerson]
  SearchRelatedPerson gender(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['gender'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [phone] in the resource
  /// [RelatedPerson]
  SearchRelatedPerson phone(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['phone'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a string search for [phonetic] in the resource
  /// [RelatedPerson]
  @override
  SearchRelatedPerson phonetic(
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

  /// a token search for [telecom] in the resource
  /// [RelatedPerson]
  SearchRelatedPerson telecom(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['telecom'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [active] in the resource
  /// [RelatedPerson]
  SearchRelatedPerson active(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['active'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a string search for [family] in the resource
  /// [RelatedPerson]
  SearchRelatedPerson family(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['family'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a string search for [given] in the resource
  /// [RelatedPerson]
  SearchRelatedPerson given(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['given'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a string search for [name] in the resource
  /// [RelatedPerson]
  @override
  SearchRelatedPerson name(
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

  /// a token search for [relationship] in the resource
  /// [RelatedPerson]
  @override
  SearchRelatedPerson relationship(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['relationship'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [role] in the resource
  /// [RelatedPerson]
  SearchRelatedPerson role(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['role'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }
}
