import 'package:fhir_r6_cql/fhir_r6_cql.dart';

///
/// Data elements that meet criteria using this
/// datatype should document a
/// recommendation regarding the functional
/// status assessment indicated
/// by the QDM category and that its
/// corresponding value set has been
/// completed.
///

class FunctionalStatusRecommended {
  final LiteralConcept? method;
  final LiteralConcept? negationRationale;
  final LiteralConcept? reason;
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;

  FunctionalStatusRecommended({
    this.startDatetime,
    this.stopDatetime,
    this.negationRationale,
    this.reason,
    this.method,
  });
}
