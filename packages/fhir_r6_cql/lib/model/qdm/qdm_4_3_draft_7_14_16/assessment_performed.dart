import 'package:fhir_r6_cql/fhir_r6_cql.dart';

/// Data elements that meet criteria using this datatype should document
/// completion of the assessment indicated by the QDM category and its corresponding
/// value set.

class AssessmentPerformed {
  final LiteralCode? method;
  final LiteralCode? negationRationale;
  final LiteralCode? reason;
  final dynamic result;
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;

  AssessmentPerformed({
    this.startDatetime,
    this.stopDatetime,
    this.negationRationale,
    this.reason,
    this.method,
    this.result,
  });
}
