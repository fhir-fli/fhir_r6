import 'package:fhir_r6_cql/fhir_r6_cql.dart';

abstract class ModelInfoReaderProvider {
  bool isSupported();

  ModelInfoReader create(String contentType);
}
