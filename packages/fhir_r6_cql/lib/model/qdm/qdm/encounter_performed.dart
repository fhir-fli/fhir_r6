import 'package:fhir_r6_cql/fhir_r6_cql.dart';

import 'qdm.dart';

class EncounterPerformed {
  final LiteralDateTime admissionDatetime;
  final LiteralDateTime dischargeDatetime;
  final CodeableConcept? dischargeStatus;
  final CodeableConcept? facilityLocation;
  final LiteralDateTime? facilityLocationArrivalDatetime;
  final LiteralDateTime? facilityLocationDepartureDatetime;
  final LiteralQuantity? lengthOfStay;
  final CodeableConcept? reason;

  EncounterPerformed({
    required this.admissionDatetime,
    required this.dischargeDatetime,
    this.dischargeStatus,
    this.facilityLocation,
    this.facilityLocationArrivalDatetime,
    this.facilityLocationDepartureDatetime,
    this.lengthOfStay,
    this.reason,
  });
}
