// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_at_rest/fhir_r6_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [Observation] resource.
class SearchObservation extends SearchResource {
  /// a token search for [identifier] in the resource
  /// [Observation]
  @override
  SearchObservation identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a token search for [code] in the resource
  /// [Observation]
  @override
  SearchObservation code(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('code', paramValue);
    return this;
  }

  /// a date search for [date] in the resource
  /// [Observation]
  @override
  SearchObservation date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('date', paramValue);
    return this;
  }

  /// a token search for [category] in the resource
  /// [Observation]
  SearchObservation category(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('category', paramValue);
    return this;
  }

  /// a token search for [comboCode] in the resource
  /// [Observation]
  SearchObservation comboCode(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('combo_code', paramValue);
    return this;
  }

  /// a token search for [comboDataAbsentReason] in the resource
  /// [Observation]
  SearchObservation comboDataAbsentReason(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('combo_data_absent_reason', paramValue);
    return this;
  }

  /// a token search for [comboInterpretation] in the resource
  /// [Observation]
  SearchObservation comboInterpretation(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('combo_interpretation', paramValue);
    return this;
  }

  /// a token search for [comboValueConcept] in the resource
  /// [Observation]
  SearchObservation comboValueConcept(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('combo_value_concept', paramValue);
    return this;
  }

  /// a quantity search for [comboValueQuantity] in the resource
  /// [Observation]
  SearchObservation comboValueQuantity(
    FhirDecimal value, {
    FhirString? unit,
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    if (modifier != null &&
        !['gt', 'lt', 'ge', 'le', 'ap'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for quantity type');
    }
    final systemStr = system?.toString() ?? '';
    final unitStr = unit?.toString() ?? '';
    final paramValue = modifier != null
        ? '$modifier$value|$systemStr|$unitStr'
        : '$value|$systemStr|$unitStr';
    addParameterValue('combo_value_quantity', paramValue);
    return this;
  }

  /// a token search for [componentCode] in the resource
  /// [Observation]
  SearchObservation componentCode(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('component_code', paramValue);
    return this;
  }

  /// a token search for [componentDataAbsentReason] in the resource
  /// [Observation]
  SearchObservation componentDataAbsentReason(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('component_data_absent_reason', paramValue);
    return this;
  }

  /// a token search for [componentInterpretation] in the resource
  /// [Observation]
  SearchObservation componentInterpretation(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('component_interpretation', paramValue);
    return this;
  }

  /// a token search for [componentValueConcept] in the resource
  /// [Observation]
  SearchObservation componentValueConcept(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('component_value_concept', paramValue);
    return this;
  }

  /// a quantity search for [componentValueQuantity] in the resource
  /// [Observation]
  SearchObservation componentValueQuantity(
    FhirDecimal value, {
    FhirString? unit,
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    if (modifier != null &&
        !['gt', 'lt', 'ge', 'le', 'ap'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for quantity type');
    }
    final systemStr = system?.toString() ?? '';
    final unitStr = unit?.toString() ?? '';
    final paramValue = modifier != null
        ? '$modifier$value|$systemStr|$unitStr'
        : '$value|$systemStr|$unitStr';
    addParameterValue('component_value_quantity', paramValue);
    return this;
  }

  /// a token search for [dataAbsentReason] in the resource
  /// [Observation]
  SearchObservation dataAbsentReason(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('data_absent_reason', paramValue);
    return this;
  }

  /// a uri search for [instantiatesCanonical] in the resource
  /// [Observation]
  SearchObservation instantiatesCanonical(
    FhirUri value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('instantiates_canonical', paramValue);
    return this;
  }

  /// a token search for [interpretation] in the resource
  /// [Observation]
  SearchObservation interpretation(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('interpretation', paramValue);
    return this;
  }

  /// a token search for [method] in the resource
  /// [Observation]
  SearchObservation method(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('method', paramValue);
    return this;
  }

  /// a token search for [status] in the resource
  /// [Observation]
  @override
  SearchObservation status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('status', paramValue);
    return this;
  }

  /// a uri search for [valueCanonical] in the resource
  /// [Observation]
  SearchObservation valueCanonical(
    FhirUri value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('value_canonical', paramValue);
    return this;
  }

  /// a token search for [valueConcept] in the resource
  /// [Observation]
  SearchObservation valueConcept(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('value_concept', paramValue);
    return this;
  }

  /// a date search for [valueDate] in the resource
  /// [Observation]
  SearchObservation valueDate(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('value_date', paramValue);
    return this;
  }

  /// a quantity search for [valueQuantity] in the resource
  /// [Observation]
  SearchObservation valueQuantity(
    FhirDecimal value, {
    FhirString? unit,
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    if (modifier != null &&
        !['gt', 'lt', 'ge', 'le', 'ap'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for quantity type');
    }
    final systemStr = system?.toString() ?? '';
    final unitStr = unit?.toString() ?? '';
    final paramValue = modifier != null
        ? '$modifier$value|$systemStr|$unitStr'
        : '$value|$systemStr|$unitStr';
    addParameterValue('value_quantity', paramValue);
    return this;
  }

  /// a string search for [valueString] in the resource
  /// [Observation]
  SearchObservation valueString(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('value_string', paramValue);
    return this;
  }
}
