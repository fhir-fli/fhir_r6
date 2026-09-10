import 'dart:convert';

import 'package:fhir_db/fhir_db.dart' as core;
import 'package:fhir_node/fhir_node.dart';
import 'package:fhir_r6/fhir_r6.dart';

import 'package:fhir_r6_db/src/search/compartment_definitions.dart'
    as generated;
import 'package:fhir_r6_db/src/search/search_parameter_types.dart';
import 'package:fhir_r6_db/src/search/search_parameters.dart';

/// FHIR R6B for the store: how `fhir_r6` resources are parsed, written and
/// stamped, and this version's generated search and compartment data.
class R6Model extends core.FhirModel<Resource, R6ResourceType> {
  /// Creates the model.
  R6Model();

  /// The row builders over this model, for the generated extractor.
  late final core.SearchIndexer indexer = core.SearchIndexer(this);

  @override
  String get fhirVersion => '6.0.0';

  @override
  Set<String> get resourceTypeNames => _typeNames;
  static final Set<String> _typeNames =
      R6ResourceType.values.map((t) => t.toString()).toSet();

  @override
  R6ResourceType? typeFromName(String name) => R6ResourceType.fromString(name);

  @override
  Resource fromJson(String json) => Resource.fromJsonString(json);

  @override
  String toJson(Resource resource) => resource.toJsonString();

  @override
  Map<String, dynamic> jsonOf(FhirNode element) =>
      (element as FhirBase).toJson();

  @override
  String jsonText(FhirNode element) => jsonEncode(jsonOf(element));

  @override
  Resource withId(Resource resource, String id) =>
      resource.copyWith(id: FhirString(id));

  @override
  Resource withMeta(Resource resource, Map<String, dynamic> meta) =>
      resource.copyWith(meta: FhirMeta.fromJson(meta));

  @override
  core.SearchParameterLists extract(Resource resource) =>
      updateSearchParameters(indexer, resource);

  @override
  core.SearchDefinitions get searchParameters => _definitions;
  static const _definitions = core.SearchDefinitions(searchParameterTypes);

  @override
  Map<String, Map<String, List<String>>> get compartmentDefinitions =>
      generated.compartmentDefinitions;

  /// A bound code carries its system and display on the enum value
  /// (`FhirCodeEnum`); a [FhirNode] exposes neither as a child.
  @override
  String? enumSystem(FhirNode value) =>
      value is FhirCodeEnum ? value.system?.valueString : null;

  @override
  String? enumDisplay(FhirNode value) =>
      value is FhirCodeEnum ? value.display?.valueString : null;

  /// R5 search.html 3.2.1.6.4 (read whole 2026-09-09), quoted verbatim:
  /// "the below modifier can be applied to the first segment only:
  /// `contenttype:below=image` will match all image/ content types".
  @override
  bool get mimeTypeBelowMatchesFirstSegment => true;

  /// The modifiers R6 allows per search parameter type, and the ones it
  /// defines that this store does not implement. From the modifier table in
  /// the R6 search page (build.fhir.org, the continuous build; the
  /// definitions here are 6.0.0-ballot3), which differs from R5 in one row:
  /// `contains` applies to reference as well as string and uri. `:below` on
  /// a reference is a version comparison the store does not make, as in R5.
  @override
  core.ModifierRules get modifierRules => _modifierRules;
  static const _modifierRules = core.ModifierRules(
    allowed: <String, Set<String>>{
      // From the modifier table in R5 search.html, which lists each modifier
      // against the parameter types it applies to. R5 adds `code-text` and
      // `text-advanced` over R4, gives `contains` to uri, and gives reference
      // `not-in` and `text`.
      'string': {'missing', 'exact', 'contains', 'text'},
      'token': {'missing', 'text', 'not', 'in', 'not-in', 'of-type', 'below'},
      // A reference also takes ":[ResourceType]", which is not a fixed word
      // and is checked separately.
      'reference': {'missing', 'identifier', 'type'},
      'uri': {'missing', 'above', 'below'},
      'date': {'missing'},
      'number': {'missing'},
      'quantity': {'missing'},
      // "The definition for any search parameter of type 'special' SHALL
      // explicitly list any allowed modifiers", so none by default.
      'special': <String>{},
      // "Note that search modifiers are NOT allowed on composite parameters."
      'composite': <String>{},
    },
    unsupported: <String, Set<String>>{
      'token': {'above', 'text-advanced', 'code-text'},
      'reference': {
        'above',
        'below',
        'not-in',
        'text',
        'text-advanced',
        'code-text',
        'contains',
      },
      'uri': {'contains'},
    },
  );
}

/// The one model instance the binding's database uses.
final R6Model r6Model = R6Model();
