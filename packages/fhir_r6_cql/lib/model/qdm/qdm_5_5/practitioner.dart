import 'package:fhir_r6_cql/fhir_r6_cql.dart';

/// a person with a formal responsibility in the provisioning of
/// healthcare or related services

class Practitioner {
  final LiteralCode? qualification;
  final LiteralCode? role;
  final LiteralCode? specialty;

  Practitioner({
    this.role,
    this.specialty,
    this.qualification,
  });
}
