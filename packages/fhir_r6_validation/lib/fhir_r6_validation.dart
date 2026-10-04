/// FHIR R6 validation: `fhir_validation` bound to `fhir_r6`.
///
/// Since 0.13.0 the validator lives in `fhir_validation`, which serves
/// every FHIR version and reads definitions through `fhir_node`. This
/// package re-exports it with the R6 model filled in ([r6Validation]):
/// [FhirValidationEngine] needs no argument and validates a typed
/// [Resource] too, the step functions take `fhir_r6` [ElementDefinition]s,
/// [validateQuestionnaireResponse] takes a typed [QuestionnaireResponse],
/// and [ValidationResults] gives a typed [OperationOutcome].
library;

export 'package:fhir_validation/fhir_validation.dart'
    hide
        FhirValidationEngine,
        validateBindings,
        validateCardinality,
        validateExtensions,
        validateInvariants,
        validateQuestionnaireResponse,
        validateStructure;

export 'src/for_primitives.dart';
export 'src/r6_validation.dart';
