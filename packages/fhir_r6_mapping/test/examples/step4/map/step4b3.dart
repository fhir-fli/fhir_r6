// ignore_for_file: prefer_single_quotes, always_specify_types,
// ignore_for_file: avoid_escaping_inner_quotes

import 'package:fhir_r5/fhir_r5.dart';

final structureMapStep4b3 = StructureMap.fromJson({
  "resourceType": "StructureMap",
  "id": "tutorial-step4b3",
  "url": "http://hl7.org/fhir/StructureMap/tutorial-step4b3",
  "name": "tutorial-step4b3",
  "title": "Tutorial Step 4b3",
  "status": "draft",
  "description": "Tutorial Step 4b3",
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
              "condition": r"a21.matches('\\d+')",
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
