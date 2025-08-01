// ignore_for_file: prefer_single_quotes, always_specify_types,
// ignore_for_file: avoid_escaping_inner_quotes

import 'package:fhir_r5/fhir_r5.dart';

final structureMapStep10 = StructureMap.fromJson({
  "resourceType": "StructureMap",
  "id": "tutorial-step10",
  "url": "http://hl7.org/fhir/StructureMap/tutorial-step10",
  "name": "tutorial-step10",
  "status": "draft",
  "structure": [
    {
      "url": "http://hl7.org/fhir/StructureDefinition/tutorial-left-10",
      "mode": "source",
      "alias": "TLeft",
    },
    {
      "url": "http://hl7.org/fhir/StructureDefinition/tutorial-leftinner-10",
      "mode": "source",
      "alias": "TLeftInner",
    },
    {
      "url": "http://hl7.org/fhir/StructureDefinition/tutorial-right-10",
      "mode": "target",
      "alias": "TRight",
    },
    {
      "url": "http://hl7.org/fhir/StructureDefinition/tutorial-rightinner-10",
      "mode": "target",
      "alias": "TRightInner",
    }
  ],
  "group": [
    {
      "name": "tutorial",
      "typeMode": "types",
      "input": [
        {"name": "src", "type": "TLeft", "mode": "source"},
        {"name": "tgt", "type": "TRight", "mode": "target"},
      ],
      "rule": [
        {
          "name": "aa",
          "source": [
            {"context": "src", "element": "aa", "variable": "a"},
          ],
          "target": [
            {"context": "tgt", "element": "aa"},
          ],
        }
      ],
    },
    {
      "name": "ab_content",
      "typeMode": "types",
      "input": [
        {"name": "src", "type": "TLeftInner", "mode": "source"},
        {"name": "tgt", "type": "TRightInner", "mode": "target"},
      ],
      "rule": [
        {
          "name": "ab",
          "source": [
            {"context": "src", "element": "ab", "variable": "b"},
          ],
          "target": [
            {
              "context": "tgt",
              "contextType": "variable",
              "element": "ab",
              "transform": "copy",
              "parameter": [
                {"valueId": "b"},
              ],
            }
          ],
        }
      ],
    }
  ],
});
