import 'package:fhir_r6_cql/fhir_r6_cql.dart';

/// a grouping of people or organizations with a common purpose

class Organization {
  final LiteralCode? organizationType;

  Organization({
    this.organizationType,
  });
}
