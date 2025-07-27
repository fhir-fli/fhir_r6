// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_at_rest/fhir_r6_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [DocumentReference] resource.
class SearchDocumentReference extends SearchResource {
  /// a token search for [identifier] in the resource
  /// [DocumentReference]
  SearchDocumentReference identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [type] in the resource
  /// [DocumentReference]
  SearchDocumentReference type(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a date search for [date] in the resource
  /// [DocumentReference]
  SearchDocumentReference date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}date'] = value.toString();
    return this;
  }

  /// a token search for [bodysite] in the resource
  /// [DocumentReference]
  SearchDocumentReference bodysite(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}bodysite'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [category] in the resource
  /// [DocumentReference]
  SearchDocumentReference category(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}category'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [contenttype] in the resource
  /// [DocumentReference]
  SearchDocumentReference contenttype(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}contenttype'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a date search for [creation] in the resource
  /// [DocumentReference]
  SearchDocumentReference creation(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}creation'] =
        value.toString();
    return this;
  }

  /// a string search for [description] in the resource
  /// [DocumentReference]
  SearchDocumentReference description(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}description'] =
        value.toString();
    return this;
  }

  /// a token search for [docStatus] in the resource
  /// [DocumentReference]
  SearchDocumentReference docStatus(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}doc_status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [eventCode] in the resource
  /// [DocumentReference]
  SearchDocumentReference eventCode(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}event_code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [facility] in the resource
  /// [DocumentReference]
  SearchDocumentReference facility(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}facility'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [formatCode] in the resource
  /// [DocumentReference]
  SearchDocumentReference formatCode(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}format_code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a uri search for [formatUri] in the resource
  /// [DocumentReference]
  SearchDocumentReference formatUri(
    FhirUri value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}format_uri'] =
        value.toString();
    return this;
  }

  /// a token search for [language] in the resource
  /// [DocumentReference]
  @override
  SearchDocumentReference language(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}language'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a uri search for [location] in the resource
  /// [DocumentReference]
  SearchDocumentReference location(
    FhirUri value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}location'] =
        value.toString();
    return this;
  }

  /// a token search for [modality] in the resource
  /// [DocumentReference]
  SearchDocumentReference modality(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}modality'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a date search for [period] in the resource
  /// [DocumentReference]
  SearchDocumentReference period(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}period'] =
        value.toString();
    return this;
  }

  /// a token search for [relation] in the resource
  /// [DocumentReference]
  SearchDocumentReference relation(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}relation'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [securityLabel] in the resource
  /// [DocumentReference]
  SearchDocumentReference securityLabel(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}security_label'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [setting] in the resource
  /// [DocumentReference]
  SearchDocumentReference setting(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}setting'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [status] in the resource
  /// [DocumentReference]
  SearchDocumentReference status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a string search for [version] in the resource
  /// [DocumentReference]
  SearchDocumentReference version(
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
