import 'package:fhir_r6_cql/fhir_r6_cql.dart';

/// Coded diagnoses/problems addressed during the encounter.

class DiagnosisComponent {
  final LiteralCode code;
  final LiteralCode? presentOnAdmissionIndicator;
  final LiteralInteger? rank;

  DiagnosisComponent({
    required this.code,
    this.presentOnAdmissionIndicator,
    this.rank,
  });
}
