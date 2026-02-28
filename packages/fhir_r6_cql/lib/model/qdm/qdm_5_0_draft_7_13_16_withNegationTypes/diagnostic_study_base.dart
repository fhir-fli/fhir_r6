import 'package:fhir_r6_cql/fhir_r6_cql.dart';

class DiagnosticStudyBase {
  final LiteralDateTime? authorTime;
  final LiteralCode? method;
  final LiteralCode? radiationDosage;
  final LiteralCode? radiationDuration;
  final LiteralCode? reason;

  DiagnosticStudyBase({
    this.authorTime,
    this.method,
    this.reason,
    this.radiationDosage,
    this.radiationDuration,
  });
}
