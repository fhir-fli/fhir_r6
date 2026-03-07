import 'package:fhir_r6_cql/fhir_r6_cql.dart';

class StandardModelInfoReaderProvider implements ModelInfoReaderProvider {
  @override
  ModelInfoReader create(String contentType) {
    return StandardModelInfoReader();
  }

  @override
  bool isSupported() => true;
}
