import 'package:fhir_r6_cql/fhir_r6_cql.dart';

class Identifier {
  final LiteralString? namingSystem;
  final LiteralString value;

  Identifier({
    this.namingSystem,
    required this.value,
  });
}
