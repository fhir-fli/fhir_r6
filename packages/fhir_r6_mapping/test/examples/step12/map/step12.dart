// ignore_for_file: prefer_single_quotes, always_specify_types,
// ignore_for_file: avoid_escaping_inner_quotes

import 'package:fhir_r6/fhir_r6.dart';

final structureMapStep12 = StructureMap.fromJson({
  "resourceType": "StructureMap",
  "id": "tutorial",
  "url": "http://hl7.org/fhir/StructureMap/tutorial-step12",
  "name": "tutorial",
  "status": "draft",
  "structure": [
    {
      "url": "http://hl7.org/fhir/StructureDefinition/tutorial-left-12",
      "mode": "source",
      "alias": "TLeft",
    },
    {
      "url": "http://hl7.org/fhir/StructureDefinition/tutorial-right-12",
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
          "name": "rule_saz1",
          "source": [
            {"context": "src", "element": "az1", "variable": "s_az1"},
          ],
          "rule": [
            {
              "name": "rule_taz1",
              "source": [
                {"context": "s_az1", "element": "az3", "variable": "s_az3"},
              ],
              "target": [
                {
                  "context": "tgt",
                  "contextType": "variable",
                  "element": "az1",
                  "variable": "t_az1",
                }
              ],
              "rule": [
                {
                  "name": "rule_az2",
                  "source": [
                    {"context": "s_az1", "element": "az2", "variable": "az2"},
                  ],
                  "target": [
                    {
                      "context": "t_az1",
                      "contextType": "variable",
                      "element": "az2",
                      "transform": "copy",
                      "parameter": [
                        {"valueId": "az2"},
                      ],
                    }
                  ],
                  "documentation":
                      // ignore: lines_longer_than_80_chars
                      "value for az2. Note that this refers to a previous context in the source\nvalue for az3",
                },
                {
                  "name": "rule_az3",
                  "source": [
                    {"context": "s_az3"},
                  ],
                  "target": [
                    {
                      "context": "t_az1",
                      "contextType": "variable",
                      "element": "az3",
                      "transform": "copy",
                      "parameter": [
                        {"valueId": "s_az3"},
                      ],
                    }
                  ],
                }
              ],
              "documentation": "one tgt.az1 for each az3",
            }
          ],
          "documentation": "setting up a variable for the parent",
        }
      ],
    }
  ],
});
