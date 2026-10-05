import 'package:fhir_node/fhir_node.dart';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_mapping/fhir_r6_mapping.dart';
import 'package:fhir_r6_path/fhir_r6_path.dart';

/// R6 for the shared mapping engine: its generated builders, its fhir_path
/// binding, and the R6 spellings of StructureMap and ConceptMap: no
/// `contextType`, `dependent.parameter`, `defaultValue`, `relationship`,
/// `unmapped.mode` `use-source-code`, no default `typeMode`; a quoted rule
/// name loses its hyphens (the R5 reference parser's `fixName`).
class R6MappingModel extends MappingModel<Resource> {
  /// The model.
  const R6MappingModel();

  @override
  String get fhirVersion => '6.0.0';

  @override
  Set<String> get resourceTypeNames => R6ResourceType.typesAsStrings.toSet();

  @override
  Resource fromJson(Map<String, dynamic> json) => Resource.fromJson(json);

  @override
  Map<String, dynamic> toJson(Resource resource) => resource.toJson();

  @override
  FhirModelBinding get pathBinding => const R6ModelBinding();

  @override
  FhirBaseBuilder? createBuilder(String typeName) => emptyFromType(typeName);

  @override
  FhirBaseBuilder toBuilder(FhirNode node) => (node as FhirBase).toBuilder;

  @override
  String? get groupTypeModeDefault => null;

  @override
  bool get targetHasContextType => false;

  @override
  Map<String, dynamic> dependentArguments(
    List<Map<String, dynamic>> arguments,
  ) =>
      {'parameter': arguments};

  @override
  String get sourceDefaultValueKey => 'defaultValue';

  @override
  String get conceptMapRelationshipElement => 'relationship';

  /// The R5 reference parser's `readRelationship`
  /// (StructureMapUtilities): five tokens.
  @override
  String? conceptMapRelationship(String token) => switch (token) {
        '-' => 'related-to',
        '==' => 'equivalent',
        '!=' => 'not-related-to',
        '<=' => 'source-is-narrower-than-target',
        '>=' => 'source-is-broader-than-target',
        _ => null,
      };

  @override
  Set<String> get matchingRelationships => const {
        'related-to',
        'equivalent',
        'source-is-narrower-than-target',
      };

  @override
  String get unmappedProvidedMode => 'use-source-code';

  @override
  String ruleName(String quoted) => quoted.replaceAll('-', '');

  @override
  FhirBaseBuilder primitive(String typeName, Object value) {
    // `string`, `FhirString`, `FhirStringBuilder`, `fhirstring`: the
    // spellings typeByElementName and the map language use.
    var t = typeName.toLowerCase();
    if (t.endsWith('builder')) t = t.substring(0, t.length - 'builder'.length);
    if (t.startsWith('fhir')) t = t.substring('fhir'.length);
    return switch (t) {
      'base64binary' => FhirBase64BinaryBuilder(value),
      'boolean' => FhirBooleanBuilder(value),
      'canonical' => FhirCanonicalBuilder(value),
      'code' => FhirCodeBuilder(value),
      'date' => FhirDateBuilder.fromString(value.toString()),
      'datetime' => FhirDateTimeBuilder.fromString(value.toString()),
      'decimal' => FhirDecimalBuilder(value),
      'id' => FhirIdBuilder(value),
      'instant' => FhirInstantBuilder.fromString(value.toString()),
      'integer' => FhirIntegerBuilder(value),
      'markdown' => FhirMarkdownBuilder(value),
      'oid' => FhirOidBuilder(value),
      'positiveint' => FhirPositiveIntBuilder(value),
      'string' => FhirStringBuilder(value),
      'time' => FhirTimeBuilder(value),
      'unsignedint' => FhirUnsignedIntBuilder(value),
      'uri' => FhirUriBuilder(value),
      'url' => FhirUrlBuilder(value),
      'uuid' => FhirUuidBuilder(value),
      _ => throw ArgumentError.value(typeName, 'typeName', 'not a primitive'),
    };
  }
}
