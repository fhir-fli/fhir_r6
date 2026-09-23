/// SMART on FHIR authentication for R6 applications.
///
/// Since 0.13.0 this package is a re-export of `fhir_auth`, which serves
/// every FHIR version; the code here was byte-identical to the other
/// versions' and nothing in it depends on the R6 model:
/// `AuthConfig.fhirBaseUrl` is a `Uri`.
library;

export 'package:fhir_auth/fhir_auth.dart';
