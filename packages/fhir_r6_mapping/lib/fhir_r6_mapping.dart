/// FHIR R6 binding for the model-independent `fhir_mapping` engine: the
/// generated builders (`PatientBuilder`, `CodingBuilder`, ...) the engine
/// writes through, the [R6MappingModel], and typed [FhirMapEngine] and
/// [StructureMapParser] over the shared ones. Everything else (variables,
/// views, exceptions, caches) is re-exported from `package:fhir_mapping`.
library;

export 'package:fhir_mapping/fhir_mapping.dart'
    hide FhirMapEngine, StructureMapParser, fhirMappingEngine;

export 'src/builders.dart';
export 'src/extensions.dart';
export 'src/mapping.dart';
