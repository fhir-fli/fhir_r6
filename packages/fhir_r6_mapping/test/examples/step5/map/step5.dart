// ignore_for_file: prefer_single_quotes, always_specify_types,
// ignore_for_file: avoid_escaping_inner_quotes

import 'package:fhir_r5/fhir_r5.dart';

final structureMapStep5 = StructureMap.fromJson({
  "resourceType": "StructureMap",
  "id": "tutorial-step5",
  "url": "http://hl7.org/fhir/StructureMap/tutorial-step5",
  "name": "tutorial-step5",
  "title": "Tutorial Step 5",
  "status": "draft",
  "description": "Tutorial Step 5",
  "structure": [
    {
      "url": "http://hl7.org/fhir/StructureDefinition/tutorial-left-5",
      "mode": "source",
      "alias": "TLeft",
    },
    {
      "url": "http://hl7.org/fhir/StructureDefinition/tutorial-right-5",
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
          "name": "rule_a22",
          "source": [
            {"context": "src", "element": "a22", "variable": "a"},
          ],
          "target": [
            {
              "context": "tgt",
              "contextType": "variable",
              "element": "a22",
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
