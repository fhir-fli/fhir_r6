// ignore_for_file: prefer_single_quotes, always_specify_types,
// ignore_for_file: avoid_escaping_inner_quotes, file_names

import 'package:fhir_r5/fhir_r5.dart';

final structureDefinitionTRight5 = StructureDefinition.fromJson({
  "resourceType": "StructureDefinition",
  "id": "TRight",
  "extension": [
    {
      "url":
          "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
      "valueUri": "http://hl7.org/fhir/tutorial",
    }
  ],
  "url": "http://hl7.org/fhir/StructureDefinition/tutorial-right-5",
  "name": "TRight",
  "status": "draft",
  "fhirVersion": "4.0.1",
  "kind": "logical",
  "abstract": true,
  "type": "TRight",
  "baseDefinition": "http://hl7.org/fhir/StructureDefinition/Element",
  "derivation": "specialization",
  "differential": {
    "element": [
      {"id": "TRight", "path": "TRight", "min": 1, "max": "1"},
      {
        "id": "TRight.a22",
        "path": "TRight.a22",
        "min": 0,
        "max": "*",
        "type": [
          {"code": "string"},
        ],
      }
    ],
  },
});
