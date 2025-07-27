// ignore_for_file: prefer_single_quotes, always_specify_types,
// ignore_for_file: avoid_escaping_inner_quotes, file_names

import 'package:fhir_r6/fhir_r6.dart';

final structureDefinitionTRight13 = StructureDefinition.fromJson({
  "resourceType": "StructureDefinition",
  "id": "TRight",
  "extension": [
    {
      "url":
          "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
      "valueUri": "http://hl7.org/fhir/tutorial",
    }
  ],
  "url": "http://hl7.org/fhir/StructureDefinition/tutorial-right-13",
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
      {
        "id": "TRight.ptr",
        "path": "TRight.ptr",
        "definition": "TRight definition",
        "min": 0,
        "max": "*",
        "type": [
          {"code": "string"},
        ],
      },
      {
        "id": "TRight.f2",
        "path": "TRight.f2",
        "definition": "TRight2 definition",
        "min": 0,
        "max": "*",
        "type": [
          {"code": "Basic"},
        ],
      }
    ],
  },
});
