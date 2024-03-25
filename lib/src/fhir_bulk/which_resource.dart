// Package imports:

import 'package:fhir_primitives/fhir_primitives.dart';

import '../../fhir_r6.dart';

/// Simple class defining the resourceType and the ID of the resource being requested
class WhichResource {
  WhichResource(this.resourceType, this.id);

  final R6ResourceType? resourceType;
  final FhirId? id;
}
