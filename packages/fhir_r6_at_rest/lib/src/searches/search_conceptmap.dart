// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r5/fhir_r5.dart';
import 'package:fhir_r5_at_rest/fhir_r5_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [ConceptMap] resource.
class SearchConceptMap extends SearchResource {
  /// a token search for [context] in the resource
  /// [ConceptMap]
  SearchConceptMap context(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}context'] =
        system != null ? '$system|$value' : '$value';
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
    if (modifier != null &&
        !['gt', 'lt', 'ge', 'le', 'ap'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for quantity type');
    }
    parameters['${modifier != null ? '$modifier' : ''}context_quantity'] =
        '$value|${system?.toString() ?? ''}|${unit?.toString() ?? ''}';
    return this;
  }

  /// a token search for [contextType] in the resource
  /// [ConceptMap]
  SearchConceptMap contextType(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}context_type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a date search for [date] in the resource
  /// [ConceptMap]
  SearchConceptMap date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}date'] = value.toString();
    return this;
  }

  /// a string search for [description] in the resource
  /// [ConceptMap]
  SearchConceptMap description(
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

  /// a date search for [effective] in the resource
  /// [ConceptMap]
  SearchConceptMap effective(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}effective'] =
        value.toString();
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [ConceptMap]
  SearchConceptMap identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [jurisdiction] in the resource
  /// [ConceptMap]
  SearchConceptMap jurisdiction(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}jurisdiction'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a string search for [name] in the resource
  /// [ConceptMap]
  SearchConceptMap name(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}name'] = value.toString();
    return this;
  }

  /// a string search for [publisher] in the resource
  /// [ConceptMap]
  SearchConceptMap publisher(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}publisher'] =
        value.toString();
    return this;
  }

  /// a token search for [status] in the resource
  /// [ConceptMap]
  SearchConceptMap status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a string search for [title] in the resource
  /// [ConceptMap]
  SearchConceptMap title(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}title'] =
        value.toString();
    return this;
  }

  /// a token search for [topic] in the resource
  /// [ConceptMap]
  SearchConceptMap topic(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}topic'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a uri search for [url] in the resource
  /// [ConceptMap]
  SearchConceptMap url(
    FhirUri value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}url'] = value.toString();
    return this;
  }

  /// a token search for [version] in the resource
  /// [ConceptMap]
  SearchConceptMap version(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}version'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a uri search for [mappingProperty] in the resource
  /// [ConceptMap]
  SearchConceptMap mappingProperty(
    FhirUri value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}mapping_property'] =
        value.toString();
    return this;
  }

  /// a token search for [sourceCode] in the resource
  /// [ConceptMap]
  SearchConceptMap sourceCode(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}source_code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a uri search for [sourceScopeUri] in the resource
  /// [ConceptMap]
  SearchConceptMap sourceScopeUri(
    FhirUri value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}source_scope_uri'] =
        value.toString();
    return this;
  }

  /// a token search for [targetCode] in the resource
  /// [ConceptMap]
  SearchConceptMap targetCode(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}target_code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a uri search for [targetScopeUri] in the resource
  /// [ConceptMap]
  SearchConceptMap targetScopeUri(
    FhirUri value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}target_scope_uri'] =
        value.toString();
    return this;
  }
}
