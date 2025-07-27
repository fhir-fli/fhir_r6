import 'package:fhir_r5/fhir_r5.dart';

/// Exception thrown when there is an error parsing FHIR data.
class FhirParserException extends FHIRException {
  /// Constructs a new [FhirParserException].
  FhirParserException({
    super.message,
    super.cause,
    super.stackTrace,
  });
}
