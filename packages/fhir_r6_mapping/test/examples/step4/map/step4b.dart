// ignore_for_file: prefer_single_quotes, always_specify_types,
// ignore_for_file: avoid_escaping_inner_quotes

import 'package:fhir_r5/fhir_r5.dart';

final structureMapStep4b = StructureMap.fromJson({
  "resourceType": "StructureMap",
  "id": "tutorial-step4b",
  "url": "http://hl7.org/fhir/StructureMap/tutorial-step4b",
  "name": "tutorial-step4b",
  "title": "Tutorial Step 4b",
  "status": "draft",
  "description": "Tutorial Step 4b",
  "structure": [
    {
      "url": "http://hl7.org/fhir/StructureDefinition/tutorial-left-4",
      "mode": "source",
      "alias": "TLeft",
    },
    {
      "url": "http://hl7.org/fhir/StructureDefinition/tutorial-right-4",
      "mode": "target",
      "alias": "TRight",
    }
  ],
  "group": [
    {
      "name": "tutorial",
      "typeMode": "none",
      "input": [
        {"name": "src", "type": "TLeft", "mode": "source"},
        {"name": "tgt", "type": "TRight", "mode": "target"},
      ],
      "rule": [
        {
          "name": "rule_a21b",
          "source": [
            {
              "context": "src",
              "element": "a21",
              "variable": "a",
              "condition": "a21.isInteger()",
            }
          ],
          "target": [
            {
              "context": "tgt",
              "contextType": "variable",
              "element": "a21",
              "transform": "copy",
              "parameter": [
                {"valueId": "a"},
              ],
            }
          ],
        }
      ],
    }
  ],
});
