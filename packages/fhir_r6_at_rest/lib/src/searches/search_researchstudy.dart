// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_at_rest/fhir_r6_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [ResearchStudy] resource.
class SearchResearchStudy extends SearchResource {
  /// a token search for [classifier] in the resource
  /// [ResearchStudy]
  SearchResearchStudy classifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['classifier'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [condition] in the resource
  /// [ResearchStudy]
  SearchResearchStudy condition(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['condition'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a date search for [date] in the resource
  /// [ResearchStudy]
  @override
  SearchResearchStudy date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['date'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a string search for [description] in the resource
  /// [ResearchStudy]
  SearchResearchStudy description(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['description'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [focusCode] in the resource
  /// [ResearchStudy]
  SearchResearchStudy focusCode(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['focus_code'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [ResearchStudy]
  @override
  SearchResearchStudy identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['identifier'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [keyword] in the resource
  /// [ResearchStudy]
  SearchResearchStudy keyword(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['keyword'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a string search for [name] in the resource
  /// [ResearchStudy]
  @override
  SearchResearchStudy name(
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

  /// a string search for [objectiveDescription] in the resource
  /// [ResearchStudy]
  SearchResearchStudy objectiveDescription(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['objective_description'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [objectiveType] in the resource
  /// [ResearchStudy]
  SearchResearchStudy objectiveType(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['objective_type'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [phase] in the resource
  /// [ResearchStudy]
  SearchResearchStudy phase(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['phase'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [progressActual] in the resource
  /// [ResearchStudy]
  SearchResearchStudy progressActual(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['progress_actual'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a date search for [progressPeriod] in the resource
  /// [ResearchStudy]
  SearchResearchStudy progressPeriod(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['progress_period'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [progressState] in the resource
  /// [ResearchStudy]
  SearchResearchStudy progressState(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['progress_state'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a numerical search for [recruitmentActual] in the resource
  /// [ResearchStudy]
  SearchResearchStudy recruitmentActual(
    FhirDecimal value, {
    FhirString? unit,
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    if (modifier != null &&
        !['gt', 'lt', 'ge', 'le', 'ap'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for number type');
    }
    parameters['recruitment_actual'] = (modifier != null
        ? '$modifier:$value|${system?.toString() ?? ''}|${unit?.toString() ?? ''}'
        : '$value|${system?.toString() ?? ''}|${unit?.toString() ?? ''}');
    return this;
  }

  /// a numerical search for [recruitmentTarget] in the resource
  /// [ResearchStudy]
  SearchResearchStudy recruitmentTarget(
    FhirDecimal value, {
    FhirString? unit,
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    if (modifier != null &&
        !['gt', 'lt', 'ge', 'le', 'ap'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for number type');
    }
    parameters['recruitment_target'] = (modifier != null
        ? '$modifier:$value|${system?.toString() ?? ''}|${unit?.toString() ?? ''}'
        : '$value|${system?.toString() ?? ''}|${unit?.toString() ?? ''}');
    return this;
  }

  /// a token search for [region] in the resource
  /// [ResearchStudy]
  SearchResearchStudy region(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['region'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [ResearchStudy]
  @override
  SearchResearchStudy status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['status'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [studyDesign] in the resource
  /// [ResearchStudy]
  SearchResearchStudy studyDesign(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['study_design'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a string search for [title] in the resource
  /// [ResearchStudy]
  SearchResearchStudy title(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['title'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }
}
