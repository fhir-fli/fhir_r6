import 'package:drift/drift.dart';
import 'package:fhir_r6/fhir_r6.dart' as fhir;
import 'package:fhir_r6_db/fhir_r6_db.dart'
    show SpecialSearchParametersCompanion;

/// Special Search Parameter Table
class SpecialSearchParameters extends Table {
  /// FHIR resource type name
  TextColumn get resourceType => text()();

  /// Resource logical id
  TextColumn get id => text()();

  /// When the resource was last updated
  IntColumn get lastUpdated => integer()();

  /// FHIRPath expression identifying the source field
  TextColumn get searchPath => text()();

  /// HTTP search parameter name (e.g., 'monitoring-program-name')
  TextColumn get searchName => text().withDefault(const Constant(''))();

  /// Index for multiple values from the same path
  IntColumn get paramIndex => integer()();

  /// A generic storage column for special search parameters
  TextColumn get specialValue => text()();

  @override

  /// searchName is part of the key: one FHIR path can back more than one
  /// search parameter — Observation.code serves both `code` and
  /// `combo-code` — and without it the second one collides with the first
  /// on insert, so only one of them could ever be indexed.
  @override
  Set<Column> get primaryKey =>
      {resourceType, id, searchPath, searchName, paramIndex};
}

/// Extension on [fhir.FhirBase] to extract special search parameters.
extension SpecialSearchParametersExtension on fhir.FhirBase {
  /// Extracts special search-index rows from this element for FHIR
  /// special-type parameters (such as positional/`near` searches),
  /// producing [SpecialSearchParametersCompanion] entries.
  List<SpecialSearchParametersCompanion> toSpecialSearchParameter(
    String resourceType,
    String id,
    int lastUpdated,
    String searchPath,
    int? paramIndex, {
    String searchName = '',
  }) {
    return <SpecialSearchParametersCompanion>[];
  }
}
