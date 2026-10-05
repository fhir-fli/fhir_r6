/// CDS Hooks 2.0 client and service support for FHIR R6.
///
/// Since 0.13.0 the CDS Hooks code lives in `fhir_cds_hooks`, which serves
/// every FHIR version and carries resources as the JSON the specification
/// defines. This package re-exports it and adds the R6-typed views in
/// [R6CdsRequestResources], [R6CdsActionResource] and the hook-context
/// extensions.
library;

export 'package:fhir_cds_hooks/fhir_cds_hooks.dart';

export 'src/typed.dart';
