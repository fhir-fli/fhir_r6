import 'package:fhir_r6_cql/fhir_r6_cql.dart';

///
/// Data elements that meet criteria using this
/// datatype should document a
/// request to perform the intervention
/// indicated by the QDM category
/// and its corresponding value set.
///

class InterventionOrder {
  final LiteralDateTime? authorDatetime;
  final LiteralCode? negationRationale;
  final LiteralCode? reason;

  InterventionOrder({
    this.authorDatetime,
    this.reason,
    this.negationRationale,
  });
}
