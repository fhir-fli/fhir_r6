import 'package:fhir_r6_cql/fhir_r6_cql.dart';

/// a physical place where services are provided and resources with which
/// a practitioner or organization may be associated

class Location {
  final LiteralCode? locationType;

  Location({
    this.locationType,
  });
}
