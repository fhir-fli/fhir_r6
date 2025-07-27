// ignore_for_file: prefer_single_quotes, always_specify_types,
// ignore_for_file: avoid_escaping_inner_quotes, file_names

import 'package:fhir_r6/fhir_r6.dart';

final structureDefinitionTRight12 = StructureDefinition.fromJson({
  "resourceType": "StructureDefinition",
  "id": "TRight",
  "extension": [
    {
      "url":
          "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
      "valueUri": "http://hl7.org/fhir/tutorial",
    }
  ],
  "url": "http://hl7.org/fhir/StructureDefinition/tutorial-right-12",
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
        "id": "TRight",
        "path": "TRight",
        "definition": "TRight definition",
        "min": 1,
        "max": "1",
      },
      {
        "id": "TRight.az1",
        "path": "TRight.az1",
        "min": 0,
        "max": "*",
        "type": [
          {"code": "BackboneElement"},
        ],
      },
      {
        "id": "TRight.az1.az2",
        "path": "TRight.az1.az2",
        "min": 1,
        "max": "1",
        "type": [
          {"code": "string"},
        ],
      },
      {
        "id": "TRight.az1.az3",
        "path": "TRight.az1.az3",
        "min": 0,
        "max": "1",
        "type": [
          {"code": "string"},
        ],
      }
    ],
  },
});
