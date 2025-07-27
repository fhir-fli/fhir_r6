// ignore_for_file: prefer_single_quotes, always_specify_types,
// ignore_for_file: avoid_escaping_inner_quotes

import 'package:fhir_r5/fhir_r5.dart';

final structureMapStep3a = StructureMap.fromJson({
  "resourceType": "StructureMap",
  "id": "tutorial-step3a",
  "url": "http://hl7.org/fhir/StructureMap/tutorial-step3a",
  "name": "tutorial-step3a",
  "title": "Tutorial Step 3s",
  "status": "draft",
  "description": "Tutorial Step 3s",
  "structure": [
    {
      "url": "http://hl7.org/fhir/StructureDefinition/tutorial-left-3",
      "mode": "source",
      "alias": "TLeft",
    },
    {
      "url": "http://hl7.org/fhir/StructureDefinition/tutorial-right-3",
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
          "name": "rule_a20a",
          "source": [
            {"context": "src", "element": "a2", "variable": "a"},
          ],
          "target": [
            {
              "context": "tgt",
              "contextType": "variable",
              "element": "a2",
              "transform": "truncate",
              "parameter": [
                {"valueId": "a"},
                {"valueInteger": 20},
              ],
            }
          ],
        }
      ],
    }
  ],
});
