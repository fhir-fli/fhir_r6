import 'package:fhir_r6_cql/fhir_r6_cql.dart';

class AssessmentBase {
  final LiteralDateTime? authorTime;
  final LiteralCode? method;
  final LiteralCode? reason;

  AssessmentBase({
    this.authorTime,
    this.reason,
    this.method,
  });
}
