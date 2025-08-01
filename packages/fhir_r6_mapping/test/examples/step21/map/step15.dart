// ignore_for_file: prefer_single_quotes, always_specify_types,
// ignore_for_file: avoid_escaping_inner_quotes

import 'package:fhir_r5/fhir_r5.dart';

final structureMapStep14 = StructureMap.fromJson({
  "resourceType": "StructureMap",
  "id": "SDOHCC-StructureMapPRAPARE",
  "extension": [
    {
      "url": "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg",
      "valueCode": "pc",
    }
  ],
  "url":
      "http://hl7.org/fhir/us/sdoh-clinicalcare/StructureMap/SDOHCC-StructureMapPRAPARE",
  "version": "2.2.0",
  "name": "SDOHCCPRAPAREMap",
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
      "A StructureMap instance that represents the resource that transforms specific questions and answers from the PRAPARE questionnaire represented in LOINC (code 93025-5) into their corresponding Observations and derived Conditions (health concerns)",
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
      "url":
          "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaireresponse",
      "mode": "source",
      "alias": "questionnaireResponse",
    },
    {"url": "http://hl7.org/fhir/StructureDefinition/Bundle", "mode": "target"},
    {
      "url": "http://hl7.org/fhir/StructureDefinition/Observation",
      "mode": "target",
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
                {"valueString": "SDOHCC-BundlePRAPAREExample"},
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
            {"context": "src", "element": "item", "variable": "rootItem"},
          ],
          "dependent": [
            {
              "name": "rootContent",
              "variable": ["src", "rootItem", "bundle"],
            }
          ],
        },
        {
          "name": "bundleGroupObsn",
          "source": [
            {"context": "src"},
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
              "variable": "groupObservation",
              "transform": "create",
              "parameter": [
                {"valueString": "sdohccObservation"},
              ],
            }
          ],
          "dependent": [
            {
              "name": "TransformGroupObservation",
              "variable": ["src", "bundle", "groupObservation", "entry"],
            }
          ],
        }
      ],
    },
    {
      "name": "rootContent",
      "typeMode": "none",
      "input": [
        {
          "name": "qResponse",
          "type": "questionnaireResponse",
          "mode": "source",
        },
        {"name": "rootItem", "mode": "source"},
        {"name": "bundle", "mode": "target"},
      ],
      "rule": [
        {
          "name": "item",
          "source": [
            {"context": "rootItem", "element": "item", "variable": "groupItem"},
          ],
          "dependent": [
            {
              "name": "groupContent",
              "variable": ["qResponse", "groupItem", "bundle"],
            }
          ],
        }
      ],
    },
    {
      "name": "groupContent",
      "typeMode": "none",
      "input": [
        {
          "name": "qResponse",
          "type": "questionnaireResponse",
          "mode": "source",
        },
        {"name": "groupItem", "mode": "source"},
        {"name": "bundle", "mode": "target"},
      ],
      "rule": [
        {
          "name": "item",
          "source": [
            {
              "context": "groupItem",
              "element": "item",
              "variable": "answerItem",
            }
          ],
          "dependent": [
            {
              "name": "itemContent",
              "variable": ["qResponse", "answerItem", "bundle"],
            }
          ],
        }
      ],
    },
    {
      "name": "itemContent",
      "typeMode": "none",
      "input": [
        {
          "name": "qResponse",
          "type": "questionnaireResponse",
          "mode": "source",
        },
        {"name": "answerItem", "mode": "source"},
        {"name": "bundle", "mode": "target"},
      ],
      "rule": [
        {
          "name": "obsn",
          "source": [
            {
              "context": "answerItem",
              "condition":
                  "(answerItem.linkId != '/93043-8/32624-9') and (answerItem.linkId != '/93041-2/93031-3') and (answerItem.linkId != '/93041-2/93030-5')",
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
              "variable": "observation",
              "transform": "create",
              "parameter": [
                {"valueString": "sdohccObservation"},
              ],
            }
          ],
          "dependent": [
            {
              "name": "TransformObservation",
              "variable": [
                "qResponse",
                "answerItem",
                "bundle",
                "observation",
                "entry",
                "bundle",
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
              "condition":
                  "(answerItem.linkId = '/93043-8/32624-9') or (answerItem.linkId = '/93041-2/93031-3') or (answerItem.linkId = '/93041-2/93030-5')",
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
              "variable": "observation",
              "transform": "create",
              "parameter": [
                {"valueString": "sdohccObservation"},
              ],
            }
          ],
          "dependent": [
            {
              "name": "TransformObservation",
              "variable": [
                "qResponse",
                "answerItem",
                "bundle",
                "observation",
                "entry",
                "bundle",
              ],
            },
            {
              "name": "SetValueCodeableConceptFromAnswer",
              "variable": ["answer", "observation"],
            }
          ],
        }
      ],
    },
    {
      "name": "SetValueCodeableConceptFromAnswer",
      "typeMode": "none",
      "input": [
        {"name": "answer", "mode": "source"},
        {"name": "observation", "mode": "target"},
      ],
      "rule": [
        {
          "name": "obsnValue",
          "source": [
            {"context": "answer"},
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
        }
      ],
    },
    {
      "name": "TransformObservation",
      "typeMode": "none",
      "input": [
        {"name": "src", "type": "questionnaireResponse", "mode": "source"},
        {"name": "answerItem", "mode": "source"},
        {"name": "srcBundle", "type": "Bundle", "mode": "source"},
        {"name": "observation", "type": "sdohccObservation", "mode": "target"},
        {"name": "entry", "mode": "target"},
        {"name": "bundle", "type": "Bundle", "mode": "target"},
      ],
      "rule": [
        {
          "name": "obsnFullUrl",
          "source": [
            {"context": "src"},
          ],
          "target": [
            {
              "context": "observation",
              "contextType": "variable",
              "element": "id",
              "transform": "uuid",
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
          "name": "obsnCatSocialHistory",
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
          "name": "authored",
          "source": [
            {"context": "src", "element": "authored", "variable": "authored"},
          ],
          "target": [
            {
              "context": "observation",
              "contextType": "variable",
              "element": "issued",
              "transform": "copy",
              "parameter": [
                {"valueId": "authored"},
              ],
            },
            {
              "context": "observation",
              "contextType": "variable",
              "element": "effective",
              "transform": "copy",
              "parameter": [
                {"valueId": "authored"},
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
          "name": "subject",
          "source": [
            {"context": "src", "element": "subject", "variable": "qSubject"},
          ],
          "target": [
            {
              "context": "observation",
              "contextType": "variable",
              "element": "performer",
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
          "name": "obsnDerivedFrom",
          "source": [
            {"context": "src", "element": "id", "variable": "id"},
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
              "name": "obsnDerivedFromReference",
              "source": [
                {"context": "id"},
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
        },
        {
          "name": "obsnCodeEthnicity",
          "source": [
            {
              "context": "answerItem",
              "condition": "linkId = '/93043-8/56051-6'",
            }
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
                {"valueString": "56051-6"},
              ],
            }
          ],
          "dependent": [
            {
              "name": "SetValueCodeableConcept",
              "variable": ["answerItem", "observation"],
            }
          ],
        },
        {
          "name": "obsnCat",
          "source": [
            {
              "context": "answerItem",
              "condition": "linkId = '/93043-8/56051-6'",
            }
          ],
          "target": [
            {
              "context": "observation",
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
              "name": "obsnCatCoding",
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
                  "name": "obsnCatCodingSystem",
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
                              "http://hl7.org/fhir/us/sdoh-clinicalcare/CodeSystem/SDOHCC-CodeSystemTemporaryCodes",
                        }
                      ],
                    }
                  ],
                },
                {
                  "name": "obsnCatCodingCode",
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
                        {"valueString": "sdoh-category-unspecified"},
                      ],
                    }
                  ],
                },
                {
                  "name": "obsnCatCodingDisplay",
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
                        {"valueString": "SDOH Category Unspecified"},
                      ],
                    }
                  ],
                }
              ],
            }
          ],
        },
        {
          "name": "obsCodeRace",
          "source": [
            {
              "context": "answerItem",
              "condition": "linkId = '/93043-8/32624-9'",
            }
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
                {"valueString": "32624-9"},
              ],
            }
          ],
        },
        {
          "name": "obsnCat",
          "source": [
            {
              "context": "answerItem",
              "condition": "linkId = '/93043-8/32624-9'",
            }
          ],
          "target": [
            {
              "context": "observation",
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
              "name": "obsnCatCoding",
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
                  "name": "obsnCatCodingSystem",
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
                              "http://hl7.org/fhir/us/sdoh-clinicalcare/CodeSystem/SDOHCC-CodeSystemTemporaryCodes",
                        }
                      ],
                    }
                  ],
                },
                {
                  "name": "obsnCatCodingCode",
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
                        {"valueString": "sdoh-category-unspecified"},
                      ],
                    }
                  ],
                },
                {
                  "name": "obsnCatCodingDisplay",
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
                        {"valueString": "SDOH Category Unspecified"},
                      ],
                    }
                  ],
                }
              ],
            }
          ],
        },
        {
          "name": "obsnCodeFarmWorkerStatus",
          "source": [
            {
              "context": "answerItem",
              "condition": "linkId = '/93043-8/93035-4'",
            }
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
                {"valueString": "93035-4"},
              ],
            }
          ],
          "dependent": [
            {
              "name": "SetValueCodeableConcept",
              "variable": ["answerItem", "observation"],
            }
          ],
        },
        {
          "name": "obsnCat",
          "source": [
            {
              "context": "answerItem",
              "condition": "linkId = '/93043-8/93035-4'",
            }
          ],
          "target": [
            {
              "context": "observation",
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
              "name": "obsnCatCoding",
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
                  "name": "obsnCatCodingSystem",
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
                              "http://hl7.org/fhir/us/sdoh-clinicalcare/CodeSystem/SDOHCC-CodeSystemTemporaryCodes",
                        }
                      ],
                    }
                  ],
                },
                {
                  "name": "obsnCatCodingCode",
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
                        {"valueString": "sdoh-category-unspecified"},
                      ],
                    }
                  ],
                },
                {
                  "name": "obsnCatCodingDisplay",
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
                        {"valueString": "SDOH Category Unspecified"},
                      ],
                    }
                  ],
                }
              ],
            }
          ],
        },
        {
          "name": "obsnCodeVetStatus",
          "source": [
            {
              "context": "answerItem",
              "condition": "linkId = '/93043-8/93034-7'",
            }
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
                {"valueString": "93034-7"},
              ],
            }
          ],
          "dependent": [
            {
              "name": "SetValueCodeableConcept",
              "variable": ["answerItem", "observation"],
            }
          ],
        },
        {
          "name": "obsnCat",
          "source": [
            {
              "context": "answerItem",
              "condition": "linkId = '/93043-8/93034-7'",
            }
          ],
          "target": [
            {
              "context": "observation",
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
              "name": "obsnCatCoding",
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
                  "name": "obsnCatCodingSystem",
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
                              "http://hl7.org/fhir/us/sdoh-clinicalcare/CodeSystem/SDOHCC-CodeSystemTemporaryCodes",
                        }
                      ],
                    }
                  ],
                },
                {
                  "name": "obsnCatCodingCode",
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
                        {"valueString": "veteran-status"},
                      ],
                    }
                  ],
                },
                {
                  "name": "obsnCatCodingDisplay",
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
                        {"valueString": "Veteran Status"},
                      ],
                    }
                  ],
                }
              ],
            }
          ],
        },
        {
          "name": "obsnCodeEngProf",
          "source": [
            {
              "context": "answerItem",
              "condition": "linkId = '/93043-8/54899-0'",
            }
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
                {"valueString": "54899-0"},
              ],
            }
          ],
          "dependent": [
            {
              "name": "SetValueCodeableConcept",
              "variable": ["answerItem", "observation"],
            }
          ],
        },
        {
          "name": "obsnCat",
          "source": [
            {
              "context": "answerItem",
              "condition": "linkId = '/93043-8/54899-0'",
            }
          ],
          "target": [
            {
              "context": "observation",
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
              "name": "obsnCatCoding",
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
                  "name": "obsnCatCodingSystem",
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
                              "http://hl7.org/fhir/us/sdoh-clinicalcare/CodeSystem/SDOHCC-CodeSystemTemporaryCodes",
                        }
                      ],
                    }
                  ],
                },
                {
                  "name": "obsnCatCodingCode",
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
                        {"valueString": "sdoh-category-unspecified"},
                      ],
                    }
                  ],
                },
                {
                  "name": "obsnCatCodingDisplay",
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
                        {"valueString": "SDOH Category Unspecified"},
                      ],
                    }
                  ],
                }
              ],
            }
          ],
        },
        {
          "name": "obsnCodeHouseholdSize",
          "source": [
            {
              "context": "answerItem",
              "condition": "linkId = '/93042-0/63512-8'",
            }
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
                {"valueString": "63512-8"},
              ],
            }
          ],
          "rule": [
            {
              "name": "obsnValue",
              "source": [
                {
                  "context": "answerItem",
                  "element": "answer",
                  "variable": "answer",
                }
              ],
              "target": [
                {
                  "context": "observation",
                  "contextType": "variable",
                  "element": "value",
                  "variable": "newQty",
                  "transform": "create",
                  "parameter": [
                    {"valueString": "Quantity"},
                  ],
                }
              ],
              "rule": [
                {
                  "name": "obsnQtyValue",
                  "source": [
                    {"context": "answer", "element": "value", "variable": "vs"},
                  ],
                  "target": [
                    {
                      "context": "newQty",
                      "contextType": "variable",
                      "element": "value",
                      "transform": "copy",
                      "parameter": [
                        {"valueId": "vs"},
                      ],
                    }
                  ],
                },
                {
                  "name": "obsnQtyUnit",
                  "source": [
                    {"context": "src"},
                  ],
                  "target": [
                    {
                      "context": "newQty",
                      "contextType": "variable",
                      "element": "unit",
                      "transform": "copy",
                      "parameter": [
                        {"valueString": "{#}"},
                      ],
                    }
                  ],
                },
                {
                  "name": "obsnQtySystem",
                  "source": [
                    {"context": "src"},
                  ],
                  "target": [
                    {
                      "context": "newQty",
                      "contextType": "variable",
                      "element": "system",
                      "transform": "copy",
                      "parameter": [
                        {"valueString": "http://unitsofmeasure.org"},
                      ],
                    }
                  ],
                },
                {
                  "name": "obsnQtyCode",
                  "source": [
                    {"context": "src"},
                  ],
                  "target": [
                    {
                      "context": "newQty",
                      "contextType": "variable",
                      "element": "code",
                      "transform": "copy",
                      "parameter": [
                        {"valueString": "{#}"},
                      ],
                    }
                  ],
                }
              ],
            }
          ],
        },
        {
          "name": "obsnCat",
          "source": [
            {
              "context": "answerItem",
              "condition": "linkId = '/93042-0/63512-8'",
            }
          ],
          "target": [
            {
              "context": "observation",
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
              "name": "obsnCatCoding",
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
                  "name": "obsnCatCodingSystem",
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
                              "http://hl7.org/fhir/us/sdoh-clinicalcare/CodeSystem/SDOHCC-CodeSystemTemporaryCodes",
                        }
                      ],
                    }
                  ],
                },
                {
                  "name": "obsnCatCodingCode",
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
                        {"valueString": "sdoh-category-unspecified"},
                      ],
                    }
                  ],
                },
                {
                  "name": "obsnCatCodingDisplay",
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
                        {"valueString": "SDOH Category Unspecified"},
                      ],
                    }
                  ],
                }
              ],
            }
          ],
        },
        {
          "name": "obsnCodeHousing",
          "source": [
            {
              "context": "answerItem",
              "condition": "linkId = '/93042-0/71802-3'",
            }
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
                {"valueString": "71802-3"},
              ],
            }
          ],
          "dependent": [
            {
              "name": "SetValueCodeableConcept",
              "variable": ["answerItem", "observation"],
            }
          ],
        },
        {
          "name": "obsnCat",
          "source": [
            {
              "context": "answerItem",
              "condition": "linkId = '/93042-0/71802-3'",
            }
          ],
          "target": [
            {
              "context": "observation",
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
              "name": "obsnCatCoding",
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
                  "name": "obsnCatCodingSystem",
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
                              "http://hl7.org/fhir/us/sdoh-clinicalcare/CodeSystem/SDOHCC-CodeSystemTemporaryCodes",
                        }
                      ],
                    }
                  ],
                },
                {
                  "name": "obsnCatCodingCode",
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
                        {"valueString": "homelessness"},
                      ],
                    }
                  ],
                },
                {
                  "name": "obsnCatCodingDisplay",
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
                        {"valueString": "Homelessness"},
                      ],
                    }
                  ],
                }
              ],
            }
          ],
        },
        {
          "name": "obsnCodeHousingStatus",
          "source": [
            {
              "context": "answerItem",
              "condition": "linkId = '/93042-0/93033-9'",
            }
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
                {"valueString": "93033-9"},
              ],
            }
          ],
          "dependent": [
            {
              "name": "SetValueCodeableConcept",
              "variable": ["answerItem", "observation"],
            }
          ],
        },
        {
          "name": "obsnCat",
          "source": [
            {
              "context": "answerItem",
              "condition": "linkId = '/93042-0/93033-9'",
            }
          ],
          "target": [
            {
              "context": "observation",
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
              "name": "obsnCatCoding",
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
                  "name": "obsnCatCodingSystem",
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
                              "http://hl7.org/fhir/us/sdoh-clinicalcare/CodeSystem/SDOHCC-CodeSystemTemporaryCodes",
                        }
                      ],
                    }
                  ],
                },
                {
                  "name": "obsnCatCodingCode",
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
                        {"valueString": "housing-instability"},
                      ],
                    }
                  ],
                },
                {
                  "name": "obsnCatCodingDisplay",
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
                        {"valueString": "Housing Instability"},
                      ],
                    }
                  ],
                }
              ],
            }
          ],
        },
        {
          "name": "obsnCodeNeighborhood",
          "source": [
            {
              "context": "answerItem",
              "condition": "linkId = '/93042-0/56799-0'",
            }
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
                {"valueString": "56799-0"},
              ],
            }
          ],
          "dependent": [
            {
              "name": "SetValue",
              "variable": ["answerItem", "observation"],
            }
          ],
        },
        {
          "name": "obsnCat",
          "source": [
            {
              "context": "answerItem",
              "condition": "linkId = '/93042-0/56799-0'",
            }
          ],
          "target": [
            {
              "context": "observation",
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
              "name": "obsnCatCoding",
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
                  "name": "obsnCatCodingSystem",
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
                              "http://hl7.org/fhir/us/sdoh-clinicalcare/CodeSystem/SDOHCC-CodeSystemTemporaryCodes",
                        }
                      ],
                    }
                  ],
                },
                {
                  "name": "obsnCatCodingCode",
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
                        {"valueString": "sdoh-category-unspecified"},
                      ],
                    }
                  ],
                },
                {
                  "name": "obsnCatCodingDisplay",
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
                        {"valueString": "SDOH Category Unspecified"},
                      ],
                    }
                  ],
                }
              ],
            }
          ],
        },
        {
          "name": "obsnCodeEducation",
          "source": [
            {
              "context": "answerItem",
              "condition": "linkId = '/93041-2/82589-3'",
            }
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
                {"valueString": "82589-3"},
              ],
            }
          ],
          "dependent": [
            {
              "name": "SetValueCodeableConcept",
              "variable": ["answerItem", "observation"],
            }
          ],
        },
        {
          "name": "obsnCat",
          "source": [
            {
              "context": "answerItem",
              "condition": "linkId = '/93041-2/82589-3'",
            }
          ],
          "target": [
            {
              "context": "observation",
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
              "name": "obsnCatCoding",
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
                  "name": "obsnCatCodingSystem",
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
                              "http://hl7.org/fhir/us/sdoh-clinicalcare/CodeSystem/SDOHCC-CodeSystemTemporaryCodes",
                        }
                      ],
                    }
                  ],
                },
                {
                  "name": "obsnCatCodingCode",
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
                        {"valueString": "educational-attainment"},
                      ],
                    }
                  ],
                },
                {
                  "name": "obsnCatCodingDisplay",
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
                        {"valueString": "Educational Attainment"},
                      ],
                    }
                  ],
                }
              ],
            }
          ],
        },
        {
          "name": "obsnCodeEmployment",
          "source": [
            {
              "context": "answerItem",
              "condition": "linkId = '/93041-2/67875-5'",
            }
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
                {"valueString": "67875-5"},
              ],
            }
          ],
          "dependent": [
            {
              "name": "SetValueCodeableConcept",
              "variable": ["answerItem", "observation"],
            }
          ],
        },
        {
          "name": "obsnCat",
          "source": [
            {
              "context": "answerItem",
              "condition": "linkId = '/93041-2/67875-5'",
            }
          ],
          "target": [
            {
              "context": "observation",
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
              "name": "obsnCatCoding",
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
                  "name": "obsnCatCodingSystem",
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
                              "http://hl7.org/fhir/us/sdoh-clinicalcare/CodeSystem/SDOHCC-CodeSystemTemporaryCodes",
                        }
                      ],
                    }
                  ],
                },
                {
                  "name": "obsnCatCodingCode",
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
                        {"valueString": "employment-status"},
                      ],
                    }
                  ],
                },
                {
                  "name": "obsnCatCodingDisplay",
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
                        {"valueString": "Employment Status"},
                      ],
                    }
                  ],
                }
              ],
            }
          ],
        },
        {
          "name": "obsnCodeInsurance",
          "source": [
            {
              "context": "answerItem",
              "condition": "linkId = '/93041-2/76437-3'",
            }
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
                {"valueString": "76437-3"},
              ],
            }
          ],
          "dependent": [
            {
              "name": "SetValueCodeableConcept",
              "variable": ["answerItem", "observation"],
            }
          ],
        },
        {
          "name": "obsnCat",
          "source": [
            {
              "context": "answerItem",
              "condition": "linkId = '/93041-2/76437-3'",
            }
          ],
          "target": [
            {
              "context": "observation",
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
              "name": "obsnCatCoding",
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
                  "name": "obsnCatCodingSystem",
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
                              "http://hl7.org/fhir/us/sdoh-clinicalcare/CodeSystem/SDOHCC-CodeSystemTemporaryCodes",
                        }
                      ],
                    }
                  ],
                },
                {
                  "name": "obsnCatCodingCode",
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
                        {"valueString": "health-insurance-coverage-status"},
                      ],
                    }
                  ],
                },
                {
                  "name": "obsnCatCodingDisplay",
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
                        {"valueString": "Health Insurance Coverage Status"},
                      ],
                    }
                  ],
                }
              ],
            }
          ],
        },
        {
          "name": "obsnCodeHouseholdIncome",
          "source": [
            {
              "context": "answerItem",
              "condition": "linkId = '/93041-2/63586-2'",
            }
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
                {"valueString": "63586-2"},
              ],
            }
          ],
          "rule": [
            {
              "name": "obsnBalue",
              "source": [
                {
                  "context": "answerItem",
                  "element": "answer",
                  "variable": "answer",
                }
              ],
              "target": [
                {
                  "context": "observation",
                  "contextType": "variable",
                  "element": "value",
                  "variable": "newQty",
                  "transform": "create",
                  "parameter": [
                    {"valueString": "Quantity"},
                  ],
                }
              ],
              "rule": [
                {
                  "name": "obsnQtyValue",
                  "source": [
                    {"context": "answer", "element": "value", "variable": "vs"},
                  ],
                  "target": [
                    {
                      "context": "newQty",
                      "contextType": "variable",
                      "element": "value",
                      "transform": "copy",
                      "parameter": [
                        {"valueId": "vs"},
                      ],
                    }
                  ],
                },
                {
                  "name": "obsnQtyUnit",
                  "source": [
                    {"context": "src"},
                  ],
                  "target": [
                    {
                      "context": "newQty",
                      "contextType": "variable",
                      "element": "unit",
                      "transform": "copy",
                      "parameter": [
                        {"valueString": "/a"},
                      ],
                    }
                  ],
                },
                {
                  "name": "obsnQtySystem",
                  "source": [
                    {"context": "src"},
                  ],
                  "target": [
                    {
                      "context": "newQty",
                      "contextType": "variable",
                      "element": "system",
                      "transform": "copy",
                      "parameter": [
                        {"valueString": "http://unitsofmeasure.org"},
                      ],
                    }
                  ],
                },
                {
                  "name": "obsnQtyCode",
                  "source": [
                    {"context": "src"},
                  ],
                  "target": [
                    {
                      "context": "newQty",
                      "contextType": "variable",
                      "element": "code",
                      "transform": "copy",
                      "parameter": [
                        {"valueString": "/a"},
                      ],
                    }
                  ],
                }
              ],
            }
          ],
        },
        {
          "name": "obsnCat",
          "source": [
            {
              "context": "answerItem",
              "condition": "linkId = '/93041-2/63586-2'",
            }
          ],
          "target": [
            {
              "context": "observation",
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
              "name": "obsnCatCoding",
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
                  "name": "obsnCatCodingSystem",
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
                              "http://hl7.org/fhir/us/sdoh-clinicalcare/CodeSystem/SDOHCC-CodeSystemTemporaryCodes",
                        }
                      ],
                    }
                  ],
                },
                {
                  "name": "obsnCatCodingCode",
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
                        {"valueString": "sdoh-category-unspecified"},
                      ],
                    }
                  ],
                },
                {
                  "name": "obsnCatCodingDisplay",
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
                        {"valueString": "SDOH Category Unspecified"},
                      ],
                    }
                  ],
                }
              ],
            }
          ],
        },
        {
          "name": "obsnCodeMaterialSecurity",
          "source": [
            {
              "context": "answerItem",
              "condition": "linkId = '/93041-2/93031-3'",
            }
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
                {"valueString": "93031-3"},
              ],
            }
          ],
        },
        {
          "name": "obsnCat",
          "source": [
            {
              "context": "answerItem",
              "condition": "linkId = '/93041-2/93031-3'",
            }
          ],
          "target": [
            {
              "context": "observation",
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
              "name": "obsnCatCoding",
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
                  "name": "obsnCatCodingSystem",
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
                              "http://hl7.org/fhir/us/sdoh-clinicalcare/CodeSystem/SDOHCC-CodeSystemTemporaryCodes",
                        }
                      ],
                    }
                  ],
                },
                {
                  "name": "obsnCatCodingCode",
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
                        {"valueString": "material-hardship"},
                      ],
                    }
                  ],
                },
                {
                  "name": "obsnCatCodingDisplay",
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
                        {"valueString": "Material Hardship"},
                      ],
                    }
                  ],
                }
              ],
            }
          ],
        },
        {
          "name": "obsnCodeTransportation",
          "source": [
            {
              "context": "answerItem",
              "condition": "linkId = '/93041-2/93030-5'",
            }
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
                {"valueString": "93030-5"},
              ],
            }
          ],
        },
        {
          "name": "obsnCat",
          "source": [
            {
              "context": "answerItem",
              "condition": "linkId = '/93041-2/93030-5'",
            }
          ],
          "target": [
            {
              "context": "observation",
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
              "name": "obsnCatCoding",
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
                  "name": "obsnCatCodingSystem",
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
                              "http://hl7.org/fhir/us/sdoh-clinicalcare/CodeSystem/SDOHCC-CodeSystemTemporaryCodes",
                        }
                      ],
                    }
                  ],
                },
                {
                  "name": "obsnCatCodingCode",
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
                        {"valueString": "transportation-insecurity"},
                      ],
                    }
                  ],
                },
                {
                  "name": "obsnCatCodingDisplay",
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
                        {"valueString": "Transportation Insecurity"},
                      ],
                    }
                  ],
                }
              ],
            }
          ],
        },
        {
          "name": "obsnCodeSocInteg",
          "source": [
            {
              "context": "answerItem",
              "condition": "linkId = '/93040-4/93029-7'",
            }
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
                {"valueString": "93029-7"},
              ],
            }
          ],
          "dependent": [
            {
              "name": "SetValueCodeableConcept",
              "variable": ["answerItem", "observation"],
            }
          ],
        },
        {
          "name": "obsnCat",
          "source": [
            {
              "context": "answerItem",
              "condition": "linkId = '/93040-4/93029-7'",
            }
          ],
          "target": [
            {
              "context": "observation",
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
              "name": "obsnCatCoding",
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
                  "name": "obsnCatCodingSystem",
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
                              "http://hl7.org/fhir/us/sdoh-clinicalcare/CodeSystem/SDOHCC-CodeSystemTemporaryCodes",
                        }
                      ],
                    }
                  ],
                },
                {
                  "name": "obsnCatCodingCode",
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
                        {"valueString": "social-connection"},
                      ],
                    }
                  ],
                },
                {
                  "name": "obsnCatCodingDisplay",
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
                        {"valueString": "Social Connection"},
                      ],
                    }
                  ],
                }
              ],
            }
          ],
        },
        {
          "name": "obsnCodeStress",
          "source": [
            {
              "context": "answerItem",
              "condition": "linkId = '/93040-4/93038-8'",
            }
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
                {"valueString": "93038-8"},
              ],
            }
          ],
          "dependent": [
            {
              "name": "SetValueCodeableConcept",
              "variable": ["answerItem", "observation"],
            }
          ],
        },
        {
          "name": "obsnCat",
          "source": [
            {
              "context": "answerItem",
              "condition": "linkId = '/93040-4/93038-8'",
            }
          ],
          "target": [
            {
              "context": "observation",
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
              "name": "obsnCatCoding",
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
                  "name": "obsnCatCodingSystem",
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
                              "http://hl7.org/fhir/us/sdoh-clinicalcare/CodeSystem/SDOHCC-CodeSystemTemporaryCodes",
                        }
                      ],
                    }
                  ],
                },
                {
                  "name": "obsnCatCodingCode",
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
                        {"valueString": "stress"},
                      ],
                    }
                  ],
                },
                {
                  "name": "obsnCatCodingDisplay",
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
                        {"valueString": "Stress"},
                      ],
                    }
                  ],
                }
              ],
            }
          ],
        },
        {
          "name": "obsnCodeIncarceration",
          "source": [
            {
              "context": "answerItem",
              "condition": "linkId = '/93039-6/93028-9'",
            }
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
                {"valueString": "93028-9"},
              ],
            }
          ],
          "dependent": [
            {
              "name": "SetValueCodeableConcept",
              "variable": ["answerItem", "observation"],
            }
          ],
        },
        {
          "name": "obsnCat",
          "source": [
            {
              "context": "answerItem",
              "condition": "linkId = '/93039-6/93028-9'",
            }
          ],
          "target": [
            {
              "context": "observation",
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
              "name": "obsnCatCoding",
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
                  "name": "obsnCatCodingSystem",
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
                              "http://hl7.org/fhir/us/sdoh-clinicalcare/CodeSystem/SDOHCC-CodeSystemTemporaryCodes",
                        }
                      ],
                    }
                  ],
                },
                {
                  "name": "obsnCatCodingCode",
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
                        {"valueString": "sdoh-category-unspecified"},
                      ],
                    }
                  ],
                },
                {
                  "name": "obsnCatCodingDisplay",
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
                        {"valueString": "SDOH Category Unspecified"},
                      ],
                    }
                  ],
                }
              ],
            }
          ],
        },
        {
          "name": "obsnCodeRefugee",
          "source": [
            {
              "context": "answerItem",
              "condition": "linkId = '/93039-6/93027-1'",
            }
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
                {"valueString": "93027-1"},
              ],
            }
          ],
          "dependent": [
            {
              "name": "SetValueCodeableConcept",
              "variable": ["answerItem", "observation"],
            }
          ],
        },
        {
          "name": "obsnCat",
          "source": [
            {
              "context": "answerItem",
              "condition": "linkId = '/93039-6/93027-1'",
            }
          ],
          "target": [
            {
              "context": "observation",
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
              "name": "obsnCatCoding",
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
                  "name": "obsnCatCodingSystem",
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
                              "http://hl7.org/fhir/us/sdoh-clinicalcare/CodeSystem/SDOHCC-CodeSystemTemporaryCodes",
                        }
                      ],
                    }
                  ],
                },
                {
                  "name": "obsnCatCodingCode",
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
                        {"valueString": "sdoh-category-unspecified"},
                      ],
                    }
                  ],
                },
                {
                  "name": "obsnCatCodingDisplay",
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
                        {"valueString": "SDOH Category Unspecified"},
                      ],
                    }
                  ],
                }
              ],
            }
          ],
        },
        {
          "name": "obsnCodeSafety",
          "source": [
            {
              "context": "answerItem",
              "condition": "linkId = '/93039-6/93026-3'",
            }
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
                {"valueString": "93026-3"},
              ],
            }
          ],
          "dependent": [
            {
              "name": "SetValueCodeableConcept",
              "variable": ["answerItem", "observation"],
            }
          ],
        },
        {
          "name": "obsnCat",
          "source": [
            {
              "context": "answerItem",
              "condition": "linkId = '/93039-6/93026-3'",
            }
          ],
          "target": [
            {
              "context": "observation",
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
              "name": "obsnCatCoding",
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
                  "name": "obsnCatCodingSystem",
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
                              "http://hl7.org/fhir/us/sdoh-clinicalcare/CodeSystem/SDOHCC-CodeSystemTemporaryCodes",
                        }
                      ],
                    }
                  ],
                },
                {
                  "name": "obsnCatCodingCode",
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
                        {"valueString": "sdoh-category-unspecified"},
                      ],
                    }
                  ],
                },
                {
                  "name": "obsnCatCodingDisplay",
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
                        {"valueString": "SDOH Category Unspecified"},
                      ],
                    }
                  ],
                }
              ],
            }
          ],
        },
        {
          "name": "obsnCodeDomViolence",
          "source": [
            {
              "context": "answerItem",
              "condition": "linkId = '/93039-6/76501-6'",
            }
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
                {"valueString": "76501-6"},
              ],
            }
          ],
          "dependent": [
            {
              "name": "SetValueCodeableConcept",
              "variable": ["answerItem", "observation"],
            }
          ],
        },
        {
          "name": "obsnCat",
          "source": [
            {
              "context": "answerItem",
              "condition": "linkId = '/93039-6/76501-6'",
            }
          ],
          "target": [
            {
              "context": "observation",
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
              "name": "obsnCatCoding",
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
                  "name": "obsnCatCodingSystem",
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
                              "http://hl7.org/fhir/us/sdoh-clinicalcare/CodeSystem/SDOHCC-CodeSystemTemporaryCodes",
                        }
                      ],
                    }
                  ],
                },
                {
                  "name": "obsnCatCodingCode",
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
                        {"valueString": "intimate-partner-violence"},
                      ],
                    }
                  ],
                },
                {
                  "name": "obsnCatCodingDisplay",
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
                        {"valueString": "Intimate Partner Violence"},
                      ],
                    }
                  ],
                }
              ],
            }
          ],
        },
        {
          "name": "conditionHomeless",
          "source": [
            {
              "context": "answerItem",
              "condition":
                  "(linkId = '/93042-0/71802-3') and (answer.value.code = 'LA30190-5')",
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
                {"valueString": "sdohccCondition"},
              ],
            }
          ],
          "dependent": [
            {
              "name": "TransformCondition",
              "variable": ["src", "bundle", "condition", "entry"],
            },
            {
              "name": "SetConditionCodeAndEvidence1",
              "variable": ["src", "srcBundle", "condition"],
            }
          ],
        },
        {
          "name": "conditionUnemployed",
          "source": [
            {
              "context": "answerItem",
              "condition":
                  "(linkId = '/93041-2/67875-5') and (answer.value.code = 'LA17956-6')",
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
                {"valueString": "sdohccCondition"},
              ],
            }
          ],
          "dependent": [
            {
              "name": "TransformCondition",
              "variable": ["src", "bundle", "condition", "entry"],
            },
            {
              "name": "SetConditionCodeAndEvidence2",
              "variable": ["src", "srcBundle", "condition"],
            }
          ],
        },
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
        }
      ],
    },
    {
      "name": "SetValue",
      "typeMode": "none",
      "input": [
        {"name": "answerItem", "mode": "source"},
        {"name": "observation", "mode": "target"},
      ],
      "rule": [
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
              "element": "id",
              "variable": "id",
            }
          ],
          "rule": [
            {
              "name": "value",
              "source": [
                {"context": "answer", "element": "value", "variable": "vs"},
              ],
              "target": [
                {
                  "context": "observation",
                  "contextType": "variable",
                  "element": "value",
                  "transform": "copy",
                  "parameter": [
                    {"valueId": "vs"},
                  ],
                }
              ],
            }
          ],
        }
      ],
    },
    {
      "name": "SetValueCodeableConcept",
      "typeMode": "none",
      "input": [
        {"name": "src", "mode": "source"},
        {"name": "observation", "mode": "target"},
      ],
      "rule": [
        {
          "name": "answer",
          "source": [
            {"context": "src", "element": "answer", "variable": "answer"},
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
        {"name": "src", "type": "questionnaireResponse", "mode": "source"},
        {"name": "bundle", "mode": "source"},
        {"name": "condition", "type": "sdohccCondition", "mode": "target"},
        {"name": "entry", "mode": "target"},
      ],
      "rule": [
        {
          "name": "conditionFullUrl",
          "source": [
            {"context": "src"},
          ],
          "target": [
            {
              "context": "condition",
              "contextType": "variable",
              "element": "id",
              "transform": "uuid",
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
          "name": "conditionVerificationStatus",
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
          "name": "conditionCat",
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
              "name": "conditionCatCoding",
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
                  "name": "conditionCatCodingSystem",
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
                  "name": "conditionCatCodingCode",
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
                  "name": "conditionCatCodingDisplay",
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
          "name": "conditionOnset",
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
          "name": "subject",
          "source": [
            {"context": "src", "element": "subject", "variable": "qSubject"},
          ],
          "target": [
            {
              "context": "condition",
              "contextType": "variable",
              "element": "asserter",
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
        {"name": "condition", "type": "sdohccCondition", "mode": "source"},
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
    },
    {
      "name": "SetConditionCodeAndEvidence1",
      "typeMode": "none",
      "input": [
        {"name": "src", "type": "questionnaireResponse", "mode": "source"},
        {"name": "bundle", "mode": "source"},
        {"name": "condition", "mode": "target"},
      ],
      "rule": [
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
              "name": "conditionCoding",
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
                  "name": "conditionCodeCodingSystem",
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
                  "name": "conditionCodeCodingCode",
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
                        {"valueString": "32911000"},
                      ],
                    }
                  ],
                },
                {
                  "name": "conditionCodeCodingDisplay",
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
                        {"valueString": "Homeless"},
                      ],
                    }
                  ],
                }
              ],
            },
            {
              "name": "conditionCoding",
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
                  "name": "conditionCodeCodingSystem",
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
                  "name": "conditionCodeCodingCode",
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
                        {"valueString": "Z59.0"},
                      ],
                    }
                  ],
                },
                {
                  "name": "conditionCodeCodingDisplay",
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
                        {"valueString": "Homelessness"},
                      ],
                    }
                  ],
                }
              ],
            }
          ],
        },
        {
          "name": "conditionCat",
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
              "name": "conditionCatCoding",
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
                  "name": "conditionCatCodingSystem",
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
                              "http://hl7.org/fhir/us/sdoh-clinicalcare/CodeSystem/SDOHCC-CodeSystemTemporaryCodes",
                        }
                      ],
                    }
                  ],
                },
                {
                  "name": "conditionCatCodingCode",
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
                        {"valueString": "homelessness"},
                      ],
                    }
                  ],
                },
                {
                  "name": "conditionCatCodingDisplay",
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
                        {"valueString": "Homelessness"},
                      ],
                    }
                  ],
                }
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
              "name": "conditionEvidence",
              "source": [
                {
                  "context": "entries",
                  "element": "resource",
                  "variable": "obs",
                  "condition": "code.coding.code = '71802-3'",
                }
              ],
              "target": [
                {
                  "context": "detailReference",
                  "contextType": "variable",
                  "element": "reference",
                  "transform": "reference",
                  "parameter": [
                    {"valueId": "obs"},
                  ],
                }
              ],
            }
          ],
        }
      ],
    },
    {
      "name": "SetConditionCodeAndEvidence2",
      "typeMode": "none",
      "input": [
        {"name": "src", "type": "questionnaireResponse", "mode": "source"},
        {"name": "bundle", "mode": "source"},
        {"name": "condition", "mode": "target"},
      ],
      "rule": [
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
              "name": "conditionCoding",
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
                  "name": "conditionCodeCodingSystem",
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
                  "name": "conditionCodeCodingCode",
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
                        {"valueString": "73438004"},
                      ],
                    }
                  ],
                },
                {
                  "name": "conditionCodeCodingDisplay",
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
                        {"valueString": "Unemployed"},
                      ],
                    }
                  ],
                }
              ],
            },
            {
              "name": "conditionCoding",
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
                  "name": "conditionCodeCodingSystem",
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
                  "name": "conditionCodeCodingCode",
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
                        {"valueString": "Z56.0"},
                      ],
                    }
                  ],
                },
                {
                  "name": "conditionCodeCodingDisplay",
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
                        {"valueString": "Unemployment, unspecified"},
                      ],
                    }
                  ],
                }
              ],
            }
          ],
        },
        {
          "name": "conditionCat",
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
              "name": "conditionCatCoding",
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
                  "name": "conditionCatCodingSystem",
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
                              "http://hl7.org/fhir/us/sdoh-clinicalcare/CodeSystem/SDOHCC-CodeSystemTemporaryCodes",
                        }
                      ],
                    }
                  ],
                },
                {
                  "name": "conditionCatCodingCode",
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
                        {"valueString": "employment-status"},
                      ],
                    }
                  ],
                },
                {
                  "name": "conditionCatCodingDisplay",
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
                        {"valueString": "Employment Status"},
                      ],
                    }
                  ],
                }
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
              "name": "conditionEvidence",
              "source": [
                {
                  "context": "entries",
                  "element": "resource",
                  "variable": "obs",
                  "condition": "code.coding.code = '67875-5'",
                }
              ],
              "target": [
                {
                  "context": "detailReference",
                  "contextType": "variable",
                  "element": "reference",
                  "transform": "reference",
                  "parameter": [
                    {"valueId": "obs"},
                  ],
                }
              ],
            }
          ],
        }
      ],
    },
    {
      "name": "TransformGroupObservation",
      "typeMode": "none",
      "input": [
        {"name": "src", "type": "questionnaireResponse", "mode": "source"},
        {"name": "bundle", "type": "Bundle", "mode": "source"},
        {"name": "groupObservation", "type": "Observation", "mode": "target"},
        {"name": "entry", "mode": "target"},
      ],
      "rule": [
        {
          "name": "grpObsnFullUrl",
          "source": [
            {"context": "src"},
          ],
          "target": [
            {
              "context": "groupObservation",
              "contextType": "variable",
              "element": "id",
              "transform": "uuid",
            }
          ],
          "dependent": [
            {
              "name": "SetObservationFullUrl",
              "variable": ["groupObservation", "entry"],
            }
          ],
        },
        {
          "name": "grpObsnStatus",
          "source": [
            {"context": "src"},
          ],
          "target": [
            {
              "context": "groupObservation",
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
          "name": "grpObsnCatSocialHistory",
          "source": [
            {"context": "src"},
          ],
          "target": [
            {
              "context": "groupObservation",
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
          "name": "grpObsnCatSurvey",
          "source": [
            {"context": "src"},
          ],
          "target": [
            {
              "context": "groupObservation",
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
          "name": "grpObsMeta",
          "source": [
            {"context": "src"},
          ],
          "target": [
            {
              "context": "groupObservation",
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
              "name": "grpObsnMetaProfile",
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
          "name": "authored",
          "source": [
            {"context": "src", "element": "authored", "variable": "authored"},
          ],
          "target": [
            {
              "context": "groupObservation",
              "contextType": "variable",
              "element": "effective",
              "transform": "copy",
              "parameter": [
                {"valueId": "authored"},
              ],
            }
          ],
        },
        {
          "name": "grpObsnSubject",
          "source": [
            {"context": "src", "element": "subject", "variable": "qSubject"},
          ],
          "target": [
            {
              "context": "groupObservation",
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
              "name": "grpObsnSubjRef",
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
              "name": "grpObsnSubjDisplay",
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
          "name": "grpObsnCode",
          "source": [
            {"context": "src"},
          ],
          "target": [
            {
              "context": "groupObservation",
              "contextType": "variable",
              "element": "code",
              "transform": "cc",
              "parameter": [
                {"valueString": "http://loinc.org"},
                {"valueString": "93025-5"},
              ],
            }
          ],
        },
        {
          "name": "grpObsnHasMember",
          "source": [
            {"context": "bundle", "element": "entry", "variable": "entries"},
          ],
          "target": [
            {
              "context": "groupObservation",
              "contextType": "variable",
              "element": "hasMember",
              "variable": "df",
              "transform": "create",
              "parameter": [
                {"valueString": "Reference"},
              ],
            }
          ],
          "rule": [
            {
              "name": "grpObsnHasMemberReference",
              "source": [
                {
                  "context": "entries",
                  "element": "resource",
                  "variable": "obs",
                  "condition": "status.exists() and hasMember.exists().not()",
                }
              ],
              "target": [
                {
                  "context": "df",
                  "contextType": "variable",
                  "element": "reference",
                  "transform": "reference",
                  "parameter": [
                    {"valueId": "obs"},
                  ],
                }
              ],
            }
          ],
        },
        {
          "name": "grpObsnDerivedFrom",
          "source": [
            {"context": "src", "element": "id", "variable": "id"},
          ],
          "target": [
            {
              "context": "groupObservation",
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
              "name": "grpObsnDerivedFromReference",
              "source": [
                {"context": "id"},
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
        },
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
        }
      ],
    }
  ],
});
