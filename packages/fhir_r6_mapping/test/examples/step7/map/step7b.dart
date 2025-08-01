// ignore_for_file: prefer_single_quotes, always_specify_types,
// ignore_for_file: avoid_escaping_inner_quotes

import 'package:fhir_r5/fhir_r5.dart';

final structureMapStep7b = StructureMap.fromJson({
  "resourceType": "StructureMap",
  "id": "tutorial",
  "url": "http://hl7.org/fhir/StructureMap/tutorial-step7b",
  "name": "tutorial",
  "status": "draft",
  "structure": [
    {
      "url": "http://hl7.org/fhir/StructureDefinition/tutorial-left-7",
      "mode": "source",
      "alias": "TLeft",
    },
    {
      "url": "http://hl7.org/fhir/StructureDefinition/tutorial-right-7",
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
          "name": "rule_aa",
          "source": [
            {"context": "src", "element": "aa", "variable": "s_aa"},
          ],
          "target": [
            {
              "context": "tgt",
              "contextType": "variable",
              "element": "aa",
              "variable": "t_aa",
            }
          ],
          "dependent": [
            {
              "name": "ab_content",
              "variable": ["s_aa", "t_aa"],
            }
          ],
        }
      ],
    },
    {
      "name": "ab_content",
      "typeMode": "none",
      "input": [
        {"name": "src", "mode": "source"},
        {"name": "tgt", "mode": "target"},
      ],
      "rule": [
        {
          "name": "rule_ab",
          "source": [
            {"context": "src", "element": "ab", "variable": "ab"},
          ],
          "target": [
            {
              "context": "tgt",
              "contextType": "variable",
              "element": "ab",
              "transform": "copy",
              "parameter": [
                {"valueId": "ab"},
              ],
            }
          ],
          "documentation": "copy ab inside aa",
        }
      ],
    }
  ],
});
