// ignore_for_file: prefer_single_quotes, always_specify_types,
// ignore_for_file: avoid_escaping_inner_quotes

import 'package:fhir_r5/fhir_r5.dart';

final structureMapStep14 = StructureMap.fromJson({
  "resourceType": "StructureMap",
  "id": "SDOHCC-StructureMapHungerVitalSign",
  "extension": [
    {
      "url": "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg",
      "valueCode": "pc",
    }
  ],
  "url":
      "http://hl7.org/fhir/us/sdoh-clinicalcare/StructureMap/SDOHCC-StructureMapHungerVitalSign",
  "version": "2.2.0",
  "name": "SDOHCCHungerVitalSignMap",
  "status": "draft",
  "date": "2024-09-06T13:58:27+00:00",
  "publisher": "HL7 International / Patient Care",
  "contact": [
    {
      "name": "HL7 International / Patient Care",
      "telecom": [
        {
          "system": "url",
          "value": "http://www.hl7.org/Special/committees/patientcare",
        },
        {"system": "email", "value": "patientcare@lists.hl7.org"},
      ],
    }
  ],
  "description":
      // ignore: lines_longer_than_80_chars
      "A StructureMap instance that represents the resource that transforms a specific question and answer from the LOINC Hunger Vital Sign [HVS] questionnaire (LOINC code 88121-9) into a corresponding Observation (SDOHCC Observation response Hunger Vital Sign Q3 Example) and derived Condition (SDOHCC Condition Food Insecurity Example)",
  "jurisdiction": [
    {
      "coding": [
        {
          "system": "urn:iso:std:iso:3166",
          "code": "US",
          "display": "United States of America",
        }
      ],
    }
  ],
  "structure": [
    {
      "url": "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse",
      "mode": "source",
      "alias": "questionnaireResponse",
    },
    {
      "url": "http://hl7.org/fhir/StructureDefinition/Bundle",
      "mode": "target",
      "alias": "bundle",
    },
    {
      "url": "http://hl7.org/fhir/StructureDefinition/Observation",
      "mode": "target",
      "alias": "observation",
    },
    {
      "url": "http://hl7.org/fhir/StructureDefinition/Condition",
      "mode": "target",
      "alias": "sdohccCondition",
    },
    {
      "url": "http://hl7.org/fhir/StructureDefinition/Observation",
      "mode": "target",
      "alias": "sdohccObservation",
    }
  ],
  "group": [
    {
      "name": "sdohMapping",
      "typeMode": "none",
      "input": [
        {"name": "src", "type": "questionnaireResponse", "mode": "source"},
        {"name": "bundle", "type": "Bundle", "mode": "target"},
      ],
      "rule": [
        {
          "name": "bundleId",
          "source": [
            {"context": "src"},
          ],
          "target": [
            {
              "context": "bundle",
              "contextType": "variable",
              "element": "id",
              "transform": "copy",
              "parameter": [
                {"valueString": "SDOHCC-BundleHungerVitalSignExample"},
              ],
            }
          ],
        },
        {
          "name": "bundleType",
          "source": [
            {"context": "src"},
          ],
          "target": [
            {
              "context": "bundle",
              "contextType": "variable",
              "element": "type",
              "transform": "copy",
              "parameter": [
                {"valueString": "transaction"},
              ],
            }
          ],
        },
        {
          "name": "item",
          "source": [
            {
              "context": "src",
              "element": "item",
              "variable": "answerItem3",
              "condition": "linkId = '/88124-3'",
            }
          ],
          "target": [
            {
              "context": "bundle",
              "contextType": "variable",
              "element": "entry",
              "variable": "entry",
            },
            {
              "context": "entry",
              "contextType": "variable",
              "element": "resource",
              "variable": "observation3",
              "transform": "create",
              "parameter": [
                {"valueString": "Observation"},
              ],
            }
          ],
          "dependent": [
            {
              "name": "TransformObservation",
              "variable": ["src", "answerItem3", "observation3", "entry"],
            }
          ],
        },
        {
          "name": "item",
          "source": [
            {
              "context": "src",
              "element": "item",
              "variable": "answerItem4",
              "condition":
                  "(linkId = '/88124-3') and (answer.value.code = 'LA19952-3')",
            }
          ],
          "target": [
            {
              "context": "bundle",
              "contextType": "variable",
              "element": "entry",
              "variable": "entry",
            },
            {
              "context": "entry",
              "contextType": "variable",
              "element": "resource",
              "variable": "condition",
              "transform": "create",
              "parameter": [
                {"valueString": "Condition"},
              ],
            }
          ],
          "dependent": [
            {
              "name": "TransformCondition",
              "variable": ["src", "bundle", "condition", "entry"],
            }
          ],
        }
      ],
    },
    {
      "name": "TransformObservation",
      "typeMode": "none",
      "input": [
        {"name": "src", "type": "questionnaireResponse", "mode": "source"},
        {"name": "answerItem", "mode": "source"},
        {"name": "observation", "type": "Observation", "mode": "target"},
        {"name": "entry", "mode": "target"},
      ],
      "rule": [
        {
          "name": "obsnEntryRequest",
          "source": [
            {"context": "src"},
          ],
          "target": [
            {
              "context": "entry",
              "contextType": "variable",
              "element": "request",
              "variable": "request",
            }
          ],
          "rule": [
            {
              "name": "obsnRequestMethod",
              "source": [
                {"context": "src"},
              ],
              "target": [
                {
                  "context": "request",
                  "contextType": "variable",
                  "element": "method",
                  "transform": "copy",
                  "parameter": [
                    {"valueString": "POST"},
                  ],
                }
              ],
            },
            {
              "name": "obsnRequestUrl",
              "source": [
                {"context": "src"},
              ],
              "target": [
                {
                  "context": "request",
                  "contextType": "variable",
                  "element": "url",
                  "transform": "copy",
                  "parameter": [
                    {"valueString": "Observation"},
                  ],
                }
              ],
            }
          ],
        },
        {
          "name": "obsn3Id",
          "source": [
            {"context": "src"},
          ],
          "target": [
            {
              "context": "observation",
              "contextType": "variable",
              "element": "id",
              "transform": "copy",
              "parameter": [
                {
                  "valueString":
                      // ignore: lines_longer_than_80_chars
                      "SDOHCC-ObservationResponseHungerVitalSignQuestion3Example",
                }
              ],
            }
          ],
          "dependent": [
            {
              "name": "SetObservationFullUrl",
              "variable": ["observation", "entry"],
            }
          ],
        },
        {
          "name": "obsnMeta",
          "source": [
            {"context": "src"},
          ],
          "target": [
            {
              "context": "observation",
              "contextType": "variable",
              "element": "meta",
              "variable": "newMeta",
              "transform": "create",
              "parameter": [
                {"valueString": "Meta"},
              ],
            }
          ],
          "rule": [
            {
              "name": "obsnMetaProfile",
              "source": [
                {"context": "src"},
              ],
              "target": [
                {
                  "context": "newMeta",
                  "contextType": "variable",
                  "element": "profile",
                  "transform": "copy",
                  "parameter": [
                    {
                      "valueString":
                          "http://hl7.org/fhir/us/sdoh-clinicalcare/StructureDefinition/SDOHCC-ObservationScreeningResponse",
                    }
                  ],
                }
              ],
            }
          ],
        },
        {
          "name": "obsnStatus",
          "source": [
            {"context": "src"},
          ],
          "target": [
            {
              "context": "observation",
              "contextType": "variable",
              "element": "status",
              "transform": "copy",
              "parameter": [
                {"valueString": "final"},
              ],
            }
          ],
        },
        {
          "name": "obsnCatSocialHist",
          "source": [
            {"context": "src"},
          ],
          "target": [
            {
              "context": "observation",
              "contextType": "variable",
              "element": "category",
              "transform": "cc",
              "parameter": [
                {
                  "valueString":
                      "http://terminology.hl7.org/CodeSystem/observation-category",
                },
                {"valueString": "social-history"},
                {"valueString": "Social History"},
              ],
            }
          ],
        },
        {
          "name": "obsnCatSurvey",
          "source": [
            {"context": "src"},
          ],
          "target": [
            {
              "context": "observation",
              "contextType": "variable",
              "element": "category",
              "transform": "cc",
              "parameter": [
                {
                  "valueString":
                      "http://terminology.hl7.org/CodeSystem/observation-category",
                },
                {"valueString": "survey"},
                {"valueString": "Survey"},
              ],
            }
          ],
        },
        {
          "name": "obsnCatFoodInsecurity",
          "source": [
            {"context": "src"},
          ],
          "target": [
            {
              "context": "observation",
              "contextType": "variable",
              "element": "category",
              "transform": "cc",
              "parameter": [
                {
                  "valueString":
                      "http://hl7.org/fhir/us/sdoh-clinicalcare/CodeSystem/SDOHCC-CodeSystemTemporaryCodes",
                },
                {"valueString": "food-insecurity"},
                {"valueString": "Food Insecurity"},
              ],
            }
          ],
        },
        {
          "name": "obsn3Code",
          "source": [
            {"context": "answerItem", "variable": "i"},
          ],
          "target": [
            {
              "context": "observation",
              "contextType": "variable",
              "element": "code",
              "variable": "code",
              "transform": "cc",
              "parameter": [
                {"valueString": "http://loinc.org"},
                {"valueString": "88124-3"},
              ],
            }
          ],
        },
        {
          "name": "subject",
          "source": [
            {"context": "src", "element": "subject", "variable": "qSubject"},
          ],
          "target": [
            {
              "context": "observation",
              "contextType": "variable",
              "element": "subject",
              "variable": "newReference",
              "transform": "create",
              "parameter": [
                {"valueString": "Reference"},
              ],
            }
          ],
          "rule": [
            {
              "name": "reference",
              "source": [
                {
                  "context": "qSubject",
                  "element": "reference",
                  "variable": "qReference",
                }
              ],
              "target": [
                {
                  "context": "newReference",
                  "contextType": "variable",
                  "element": "reference",
                  "transform": "copy",
                  "parameter": [
                    {"valueId": "qReference"},
                  ],
                }
              ],
            },
            {
              "name": "display",
              "source": [
                {
                  "context": "qSubject",
                  "element": "display",
                  "variable": "qDisplay",
                }
              ],
              "target": [
                {
                  "context": "newReference",
                  "contextType": "variable",
                  "element": "display",
                  "transform": "copy",
                  "parameter": [
                    {"valueId": "qDisplay"},
                  ],
                }
              ],
            }
          ],
        },
        {
          "name": "authored",
          "source": [
            {"context": "src", "element": "authored", "variable": "authored"},
          ],
          "target": [
            {
              "context": "observation",
              "contextType": "variable",
              "element": "effective",
              "transform": "copy",
              "parameter": [
                {"valueId": "authored"},
              ],
            },
            {
              "context": "observation",
              "contextType": "variable",
              "element": "issued",
              "transform": "copy",
              "parameter": [
                {"valueId": "authored"},
              ],
            }
          ],
        },
        {
          "name": "answer",
          "source": [
            {
              "context": "answerItem",
              "element": "answer",
              "variable": "answer",
            },
          ],
          "target": [
            {
              "context": "observation",
              "contextType": "variable",
              "element": "value",
              "variable": "newCC",
              "transform": "create",
              "parameter": [
                {"valueString": "CodeableConcept"},
              ],
            }
          ],
          "rule": [
            {
              "name": "value",
              "source": [
                {"context": "answer", "element": "value", "variable": "coding"},
              ],
              "target": [
                {
                  "context": "newCC",
                  "contextType": "variable",
                  "element": "coding",
                  "variable": "newCoding",
                  "transform": "copy",
                  "parameter": [
                    {"valueId": "coding"},
                  ],
                }
              ],
            }
          ],
        },
        {
          "name": "obsnDerivation",
          "source": [
            {"context": "src"},
          ],
          "target": [
            {
              "context": "observation",
              "contextType": "variable",
              "element": "derivedFrom",
              "variable": "newReference",
              "transform": "create",
              "parameter": [
                {"valueString": "Reference"},
              ],
            }
          ],
          "rule": [
            {
              "name": "id",
              "source": [
                {"context": "src", "element": "id", "variable": "id"},
              ],
              "target": [
                {
                  "context": "newReference",
                  "contextType": "variable",
                  "element": "reference",
                  "transform": "append",
                  "parameter": [
                    {"valueString": "QuestionnaireResponse/"},
                    {"valueId": "id"},
                  ],
                }
              ],
            }
          ],
        }
      ],
    },
    {
      "name": "SetObservationFullUrl",
      "typeMode": "none",
      "input": [
        {"name": "observation", "type": "Observation", "mode": "source"},
        {"name": "entry", "mode": "target"},
      ],
      "rule": [
        {
          "name": "id",
          "source": [
            {"context": "observation", "element": "id", "variable": "id"},
          ],
          "target": [
            {
              "context": "entry",
              "contextType": "variable",
              "element": "fullUrl",
              "transform": "append",
              "parameter": [
                {
                  "valueString":
                      "http://hl7.org/fhir/us/sdoh-clinicalcare/Observation/",
                },
                {"valueId": "id"},
              ],
            }
          ],
        }
      ],
    },
    {
      "name": "TransformCondition",
      "typeMode": "none",
      "input": [
        {"name": "src", "type": "QuestionnaireResponse", "mode": "source"},
        {"name": "bundle", "type": "Bundle", "mode": "source"},
        {"name": "condition", "type": "Condition", "mode": "target"},
        {"name": "entry", "mode": "target"},
      ],
      "rule": [
        {
          "name": "conditionId",
          "source": [
            {"context": "src"},
          ],
          "target": [
            {
              "context": "condition",
              "contextType": "variable",
              "element": "id",
              "transform": "copy",
              "parameter": [
                {"valueString": "SDOHCC-ConditionFoodInsecurityExample"},
              ],
            }
          ],
          "dependent": [
            {
              "name": "SetConditionFullUrl",
              "variable": ["condition", "entry"],
            }
          ],
        },
        {
          "name": "conditionMeta",
          "source": [
            {"context": "src"},
          ],
          "target": [
            {
              "context": "condition",
              "contextType": "variable",
              "element": "meta",
              "variable": "newMeta",
              "transform": "create",
              "parameter": [
                {"valueString": "Meta"},
              ],
            }
          ],
          "rule": [
            {
              "name": "conditionMetaProfile",
              "source": [
                {"context": "src"},
              ],
              "target": [
                {
                  "context": "newMeta",
                  "contextType": "variable",
                  "element": "profile",
                  "transform": "copy",
                  "parameter": [
                    {
                      "valueString":
                          "http://hl7.org/fhir/us/sdoh-clinicalcare/StructureDefinition/SDOHCC-Condition",
                    }
                  ],
                }
              ],
            }
          ],
        },
        {
          "name": "conditionClinicalStatus",
          "source": [
            {"context": "src"},
          ],
          "target": [
            {
              "context": "condition",
              "contextType": "variable",
              "element": "clinicalStatus",
              "transform": "cc",
              "parameter": [
                {
                  "valueString":
                      "http://terminology.hl7.org/CodeSystem/condition-clinical",
                },
                {"valueString": "active"},
                {"valueString": "Active"},
              ],
            }
          ],
        },
        {
          "name": "conditionVeriStatus",
          "source": [
            {"context": "src"},
          ],
          "target": [
            {
              "context": "condition",
              "contextType": "variable",
              "element": "verificationStatus",
              "transform": "cc",
              "parameter": [
                {
                  "valueString":
                      "http://terminology.hl7.org/CodeSystem/condition-ver-status",
                },
                {"valueString": "unconfirmed"},
                {"valueString": "Unconfirmed"},
              ],
            }
          ],
        },
        {
          "name": "conditionCatHealthConcern",
          "source": [
            {"context": "src"},
          ],
          "target": [
            {
              "context": "condition",
              "contextType": "variable",
              "element": "category",
              "variable": "newCC",
              "transform": "create",
              "parameter": [
                {"valueString": "CodeableConcept"},
              ],
            }
          ],
          "rule": [
            {
              "name": "conditionCatCodingHealthConcern",
              "source": [
                {"context": "src"},
              ],
              "target": [
                {
                  "context": "newCC",
                  "contextType": "variable",
                  "element": "coding",
                  "variable": "newCoding",
                  "transform": "create",
                  "parameter": [
                    {"valueString": "Coding"},
                  ],
                }
              ],
              "rule": [
                {
                  "name": "conditionCatCodingSystemHealthConcern",
                  "source": [
                    {"context": "src"},
                  ],
                  "target": [
                    {
                      "context": "newCoding",
                      "contextType": "variable",
                      "element": "system",
                      "transform": "copy",
                      "parameter": [
                        {
                          "valueString":
                              "http://hl7.org/fhir/us/core/CodeSystem/condition-category",
                        }
                      ],
                    }
                  ],
                },
                {
                  "name": "conditionCatCodingCodeHealthConcern",
                  "source": [
                    {"context": "src"},
                  ],
                  "target": [
                    {
                      "context": "newCoding",
                      "contextType": "variable",
                      "element": "code",
                      "transform": "copy",
                      "parameter": [
                        {"valueString": "health-concern"},
                      ],
                    }
                  ],
                },
                {
                  "name": "conditionCatCodingDisplayHealthConcern",
                  "source": [
                    {"context": "src"},
                  ],
                  "target": [
                    {
                      "context": "newCoding",
                      "contextType": "variable",
                      "element": "display",
                      "transform": "copy",
                      "parameter": [
                        {"valueString": "Health Concern"},
                      ],
                    }
                  ],
                }
              ],
            }
          ],
        },
        {
          "name": "conditionCatFoodInsecurity",
          "source": [
            {"context": "src"},
          ],
          "target": [
            {
              "context": "condition",
              "contextType": "variable",
              "element": "category",
              "transform": "cc",
              "parameter": [
                {
                  "valueString":
                      "http://hl7.org/fhir/us/sdoh-clinicalcare/CodeSystem/SDOHCC-CodeSystemTemporaryCodes",
                },
                {"valueString": "food-insecurity"},
                {"valueString": "Food Insecurity"},
              ],
            }
          ],
        },
        {
          "name": "conditionCode",
          "source": [
            {"context": "src"},
          ],
          "target": [
            {
              "context": "condition",
              "contextType": "variable",
              "element": "code",
              "variable": "newCodeCC",
              "transform": "create",
              "parameter": [
                {"valueString": "CodeableConcept"},
              ],
            }
          ],
          "rule": [
            {
              "name": "conditionCodeCodingFoodInsecurity",
              "source": [
                {"context": "src"},
              ],
              "target": [
                {
                  "context": "newCodeCC",
                  "contextType": "variable",
                  "element": "coding",
                  "variable": "newCoding",
                  "transform": "create",
                  "parameter": [
                    {"valueString": "Coding"},
                  ],
                }
              ],
              "rule": [
                {
                  "name": "conditionCodeCodingSystemFoodInsecurity",
                  "source": [
                    {"context": "src"},
                  ],
                  "target": [
                    {
                      "context": "newCoding",
                      "contextType": "variable",
                      "element": "system",
                      "transform": "copy",
                      "parameter": [
                        {"valueString": "http://snomed.info/sct"},
                      ],
                    }
                  ],
                },
                {
                  "name": "conditionCodeCodingCodeFoodInsecurity",
                  "source": [
                    {"context": "src"},
                  ],
                  "target": [
                    {
                      "context": "newCoding",
                      "contextType": "variable",
                      "element": "code",
                      "transform": "copy",
                      "parameter": [
                        {"valueString": "733423003"},
                      ],
                    }
                  ],
                },
                {
                  "name": "conditionCodeCodingDisplayFoodInsecurity",
                  "source": [
                    {"context": "src"},
                  ],
                  "target": [
                    {
                      "context": "newCoding",
                      "contextType": "variable",
                      "element": "display",
                      "transform": "copy",
                      "parameter": [
                        {"valueString": "Food insecurity"},
                      ],
                    }
                  ],
                }
              ],
            },
            {
              "name": "conditionCodeCodingLackOfFood",
              "source": [
                {"context": "src"},
              ],
              "target": [
                {
                  "context": "newCodeCC",
                  "contextType": "variable",
                  "element": "coding",
                  "variable": "newCoding2",
                  "transform": "create",
                  "parameter": [
                    {"valueString": "Coding"},
                  ],
                }
              ],
              "rule": [
                {
                  "name": "conditionCodeCodingSystemLackOfFood",
                  "source": [
                    {"context": "src"},
                  ],
                  "target": [
                    {
                      "context": "newCoding2",
                      "contextType": "variable",
                      "element": "system",
                      "transform": "copy",
                      "parameter": [
                        {"valueString": "http://hl7.org/fhir/sid/icd-10-cm"},
                      ],
                    }
                  ],
                },
                {
                  "name": "conditionCodeCodingCodeLackOfFood",
                  "source": [
                    {"context": "src"},
                  ],
                  "target": [
                    {
                      "context": "newCoding2",
                      "contextType": "variable",
                      "element": "code",
                      "transform": "copy",
                      "parameter": [
                        {"valueString": "Z59.4"},
                      ],
                    }
                  ],
                },
                {
                  "name": "conditionCodeCodingDisplayLackOfFood",
                  "source": [
                    {"context": "src"},
                  ],
                  "target": [
                    {
                      "context": "newCoding2",
                      "contextType": "variable",
                      "element": "display",
                      "transform": "copy",
                      "parameter": [
                        {"valueString": "Lack of adequate food"},
                      ],
                    }
                  ],
                }
              ],
            }
          ],
        },
        {
          "name": "authored",
          "source": [
            {"context": "src", "element": "authored", "variable": "authored"},
          ],
          "target": [
            {
              "context": "condition",
              "contextType": "variable",
              "element": "onset",
              "variable": "period",
              "transform": "create",
              "parameter": [
                {"valueString": "Period"},
              ],
            },
            {
              "context": "period",
              "contextType": "variable",
              "element": "start",
              "transform": "copy",
              "parameter": [
                {"valueId": "authored"},
              ],
            }
          ],
        },
        {
          "name": "entry",
          "source": [
            {"context": "bundle", "element": "entry", "variable": "entries"},
          ],
          "target": [
            {
              "context": "condition",
              "contextType": "variable",
              "element": "evidence",
              "variable": "evidence",
            },
            {
              "context": "evidence",
              "contextType": "variable",
              "element": "detail",
              "variable": "detailReference",
              "transform": "create",
              "parameter": [
                {"valueString": "Reference"},
              ],
            }
          ],
          "rule": [
            {
              "name": "resource",
              "source": [
                {
                  "context": "entries",
                  "element": "resource",
                  "variable": "obs3",
                  "condition": "code.coding.code = '88124-3'",
                }
              ],
              "target": [
                {
                  "context": "detailReference",
                  "contextType": "variable",
                  "element": "reference",
                  "transform": "reference",
                  "parameter": [
                    {"valueId": "obs3"},
                  ],
                }
              ],
            }
          ],
        },
        {
          "name": "subject",
          "source": [
            {"context": "src", "element": "subject", "variable": "qSubject"},
          ],
          "target": [
            {
              "context": "condition",
              "contextType": "variable",
              "element": "subject",
              "variable": "newReference",
              "transform": "create",
              "parameter": [
                {"valueString": "Reference"},
              ],
            }
          ],
          "rule": [
            {
              "name": "reference",
              "source": [
                {
                  "context": "qSubject",
                  "element": "reference",
                  "variable": "qReference",
                }
              ],
              "target": [
                {
                  "context": "newReference",
                  "contextType": "variable",
                  "element": "reference",
                  "transform": "copy",
                  "parameter": [
                    {"valueId": "qReference"},
                  ],
                }
              ],
            },
            {
              "name": "display",
              "source": [
                {
                  "context": "qSubject",
                  "element": "display",
                  "variable": "qDisplay",
                }
              ],
              "target": [
                {
                  "context": "newReference",
                  "contextType": "variable",
                  "element": "display",
                  "transform": "copy",
                  "parameter": [
                    {"valueId": "qDisplay"},
                  ],
                }
              ],
            }
          ],
        },
        {
          "name": "conditionEntryRequest",
          "source": [
            {"context": "src"},
          ],
          "target": [
            {
              "context": "entry",
              "contextType": "variable",
              "element": "request",
              "variable": "request",
            }
          ],
          "rule": [
            {
              "name": "conditionRequestMethod",
              "source": [
                {"context": "src"},
              ],
              "target": [
                {
                  "context": "request",
                  "contextType": "variable",
                  "element": "method",
                  "transform": "copy",
                  "parameter": [
                    {"valueString": "POST"},
                  ],
                }
              ],
            },
            {
              "name": "conditionRequestUrl",
              "source": [
                {"context": "src"},
              ],
              "target": [
                {
                  "context": "request",
                  "contextType": "variable",
                  "element": "url",
                  "transform": "copy",
                  "parameter": [
                    {"valueString": "Condition"},
                  ],
                }
              ],
            }
          ],
        }
      ],
    },
    {
      "name": "SetConditionFullUrl",
      "typeMode": "none",
      "input": [
        {"name": "condition", "type": "Condition", "mode": "source"},
        {"name": "entry", "mode": "target"},
      ],
      "rule": [
        {
          "name": "id",
          "source": [
            {"context": "condition", "element": "id", "variable": "id"},
          ],
          "target": [
            {
              "context": "entry",
              "contextType": "variable",
              "element": "fullUrl",
              "transform": "append",
              "parameter": [
                {
                  "valueString":
                      "http://hl7.org/fhir/us/sdoh-clinicalcare/Condition/",
                },
                {"valueId": "id"},
              ],
            }
          ],
        }
      ],
    }
  ],
});
