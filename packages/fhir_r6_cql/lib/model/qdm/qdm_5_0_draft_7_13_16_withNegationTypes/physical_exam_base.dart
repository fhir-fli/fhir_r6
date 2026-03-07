import 'package:fhir_r6_cql/fhir_r6_cql.dart';

class PhysicalExamBase {
  final LiteralCode? anatomicalLocationSite;
  final LiteralCode? method;
  final LiteralCode? reason;

  PhysicalExamBase({
    this.anatomicalLocationSite,
    this.method,
    this.reason,
  });
}
