/// FHIR R6 RESTful client: `fhir_at_rest` bound to `fhir_r6`.
///
/// Since 0.13.0 the request builders, parameters, patch body and response
/// parsing live in `fhir_at_rest`, which serves every FHIR version and
/// reads resources through `fhir_node`. This package re-exports it with
/// the R6 model filled in ([r6Rest]): the parse functions take and return
/// `fhir_r6` [Resource]s, and the generated per-resource search builders
/// of this version ([SearchPatient], ...) extend the core's
/// [RestfulParameters].
library;

export 'package:fhir_at_rest/fhir_at_rest.dart'
    hide
        ReturnResults,
        incorrectResultType,
        parseBundle,
        parseBundleForType,
        parseRequestResult,
        parseRequestResultForType,
        parseResponse;

export 'src/r6_rest.dart';
export 'src/searches.dart';
