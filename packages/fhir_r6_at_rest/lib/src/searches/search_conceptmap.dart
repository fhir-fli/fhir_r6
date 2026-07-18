// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_at_rest/fhir_r6_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [ConceptMap] resource.
class SearchConceptMap extends SearchResource {
  /// a token search for [context] in the resource
  /// [ConceptMap]
  SearchConceptMap context(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('context', paramValue);
    return this;
  }

  /// a quantity search for [contextQuantity] in the resource
  /// [ConceptMap]
  SearchConceptMap contextQuantity(
    FhirDecimal value, {
    FhirString? unit,
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final numberPart = modifier != null ? '$modifier$value' : value.toString();
    final paramValue = (system == null && unit == null)
        ? numberPart
        : '$numberPart|${system?.toString() ?? ''}|'
            '${unit?.toString() ?? ''}';
    addParameterValue('context-quantity', paramValue);
    return this;
  }

  /// a token search for [contextType] in the resource
  /// [ConceptMap]
  SearchConceptMap contextType(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('context-type', paramValue);
    return this;
  }

  /// a date search for [date] in the resource
  /// [ConceptMap]
  SearchConceptMap date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('date', paramValue);
    return this;
  }

  /// a string search for [description] in the resource
  /// [ConceptMap]
  SearchConceptMap description(FhirString value) {
    addParameterValue('description', value.toString());
    return this;
  }

  /// a date search for [effective] in the resource
  /// [ConceptMap]
  SearchConceptMap effective(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('effective', paramValue);
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [ConceptMap]
  SearchConceptMap identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a token search for [jurisdiction] in the resource
  /// [ConceptMap]
  SearchConceptMap jurisdiction(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('jurisdiction', paramValue);
    return this;
  }

  /// a string search for [name] in the resource
  /// [ConceptMap]
  SearchConceptMap name(FhirString value) {
    addParameterValue('name', value.toString());
    return this;
  }

  /// a string search for [publisher] in the resource
  /// [ConceptMap]
  SearchConceptMap publisher(FhirString value) {
    addParameterValue('publisher', value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [ConceptMap]
  SearchConceptMap status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a string search for [title] in the resource
  /// [ConceptMap]
  SearchConceptMap title(FhirString value) {
    addParameterValue('title', value.toString());
    return this;
  }

  /// a token search for [topic] in the resource
  /// [ConceptMap]
  SearchConceptMap topic(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('topic', paramValue);
    return this;
  }

  /// a uri search for [url] in the resource
  /// [ConceptMap]
  SearchConceptMap url(FhirUri value) {
    addParameterValue('url', value.toString());
    return this;
  }

  /// a token search for [version] in the resource
  /// [ConceptMap]
  SearchConceptMap version(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('version', paramValue);
    return this;
  }

  /// a uri search for [mappingProperty] in the resource
  /// [ConceptMap]
  SearchConceptMap mappingProperty(FhirUri value) {
    addParameterValue('mapping-property', value.toString());
    return this;
  }

  /// a token search for [sourceCode] in the resource
  /// [ConceptMap]
  SearchConceptMap sourceCode(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('source-code', paramValue);
    return this;
  }

  /// a uri search for [sourceScopeUri] in the resource
  /// [ConceptMap]
  SearchConceptMap sourceScopeUri(FhirUri value) {
    addParameterValue('source-scope-uri', value.toString());
    return this;
  }

  /// a token search for [targetCode] in the resource
  /// [ConceptMap]
  SearchConceptMap targetCode(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('target-code', paramValue);
    return this;
  }

  /// a uri search for [targetScopeUri] in the resource
  /// [ConceptMap]
  SearchConceptMap targetScopeUri(FhirUri value) {
    addParameterValue('target-scope-uri', value.toString());
    return this;
  }
}
