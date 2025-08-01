// ignore_for_file: prefer_single_quotes, always_specify_types,
// ignore_for_file: avoid_escaping_inner_quotes

import 'package:fhir_r5/fhir_r5.dart';

final structureMapStep8 = StructureMap.fromJson({
  "resourceType": "StructureMap",
  "id": "tutorial",
  "contained": [
    {
      "resourceType": "ConceptMap",
      "id": "tutorialmap",
      "status": "draft",
      "group": [
        {
          "source": "http://hl7.org/fhir/tutorial8/codeleft",
          "target": "http://hl7.org/fhir/tutorial8/coderight",
          "element": [
            {
              "code": "vonhier",
              "target": [
                {"code": "nach-da", "equivalence": "equivalent"},
              ],
            },
            {
              "code": "test",
              "target": [
                {"code": "test", "equivalence": "equivalent"},
              ],
            }
          ],
        }
      ],
    }
  ],
  "url": "http://hl7.org/fhir/StructureMap/tutorial-step8",
  "name": "tutorial",
  "status": "draft",
  "structure": [
    {
      "url": "http://hl7.org/fhir/StructureDefinition/tutorial-left-8",
      "mode": "source",
      "alias": "TLeft",
    },
    {
      "url": "http://hl7.org/fhir/StructureDefinition/tutorial-right-8",
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
          "name": "rule_d",
          "source": [
            {"context": "src", "element": "d", "variable": "d"},
          ],
          "target": [
            {
              "context": "tgt",
              "contextType": "variable",
              "element": "d",
              "transform": "translate",
              "parameter": [
                {"valueId": "d"},
                {"valueString": "#tutorialmap"},
                {"valueString": "code"},
              ],
            }
          ],
        }
      ],
    }
  ],
});
