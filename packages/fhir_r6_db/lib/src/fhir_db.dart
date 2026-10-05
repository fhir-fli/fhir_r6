import 'package:fhir_db/fhir_db.dart' as core;
import 'package:fhir_r6/fhir_r6.dart';

import 'package:fhir_r6_db/src/r6_model.dart';

/// The R6B store: `fhir_db`'s [core.FhirDb] over [R6Model].
///
/// Everything an application calls is the core's, typed for this version:
/// [fhirDao] is a [FhirDao] whose resources are `fhir_r6` [Resource]s and
/// whose type tokens are [R6ResourceType].
class FhirDb extends core.FhirDb<Resource, R6ResourceType> {
  /// Creates the database over the executor [e] (a `NativeDatabase`, a
  /// `LazyDatabase`, an encrypted one from `cipherFromKey`, ...).
  FhirDb(super.e) : super(model: r6Model);

  // Static members are not inherited through a subclass name; the two the
  // tests and tools read are re-exposed here.

  /// See [core.FhirDb.analysisLimit].
  static const int analysisLimit = core.FhirDb.analysisLimit;

  /// See [core.FhirDb.searchTableNames].
  static const List<String> searchTableNames = core.FhirDb.searchTableNames;
}

/// The R6B data-access object: [core.FhirDao] over `fhir_r6` resources.
typedef FhirDao = core.FhirDao<Resource, R6ResourceType>;

/// One version of an R6B resource in its history, or a tombstone.
typedef HistoryEntry = core.HistoryEntry<Resource>;

/// The definition of [code] on [resourceType], or null when there is none;
/// this version's SearchParameter data through the core's lookup.
core.SearchParameterDefinition? searchParameterFor(
  String resourceType,
  String code,
) =>
    r6Model.searchParameters.lookup(resourceType, code);
