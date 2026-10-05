/// FHIR R6 bulk data: `fhir_bulk` bound to `fhir_r6`.
///
/// Since 0.13.0 the bulk-data code lives in `fhir_bulk`, which serves every
/// FHIR version and reads resources through `fhir_node`. This package
/// re-exports it with the R6 model filled in: [FhirBulk] and
/// [NdjsonStream] give and take `fhir_r6` [Resource]s, the export and
/// import requests take [R6ResourceType], [FhirId] and [FhirDateTime] where
/// they did before, and [r6Bulk] is the model itself for the core's
/// model-taking members (`BulkExportKickoff.unknownTypes(r6Bulk)`).
library;

export 'package:fhir_bulk/fhir_bulk.dart'
    hide
        BulkImportRequest,
        BulkRequest,
        BulkRequestGroup,
        BulkRequestPatient,
        BulkRequestSystem,
        FhirBulk,
        ImportFile,
        NdjsonStream,
        WhichResource;

export 'src/r6_bulk.dart';
export 'src/r6_bulk_model.dart';
