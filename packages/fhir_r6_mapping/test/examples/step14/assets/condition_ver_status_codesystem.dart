// ignore_for_file: prefer_single_quotes, require_trailing_commas, lines_longer_than_80_chars, avoid_escaping_inner_quotes

import 'package:fhir_r5/fhir_r5.dart';

final conditionVerStatusCodeSystem = CodeSystem.fromJson({
  "resourceType": "CodeSystem",
  "id": "condition-ver-status",
  "meta": {"lastUpdated": "2024-04-24T00:00:00+00:00"},
  "text": {
    "status": "generated",
    "div":
        "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p class=\"res-header-id\"><b>Generated Narrative: CodeSystem condition-ver-status</b></p><a name=\"condition-ver-status\"> </a><a name=\"hccondition-ver-status\"> </a><a name=\"condition-ver-status-en-US\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Last updated: 2024-04-24 00:00:00+0000</p></div><p>This case-sensitive code system <code>http://terminology.hl7.org/CodeSystem/condition-ver-status</code> defines the following codes in an undefined hierarchy:</p><table class=\"codes\"><tr><td><b>Lvl</b></td><td style=\"white-space:nowrap\"><b>Code</b></td><td><b>Display</b></td><td><b>Definition</b></td></tr><tr><td>1</td><td style=\"white-space:nowrap\">unconfirmed<a name=\"condition-ver-status-unconfirmed\"> </a></td><td>Unconfirmed</td><td>There is not sufficient evidence to assert the presence of the subject's condition.</td></tr><tr><td>2</td><td style=\"white-space:nowrap\">\u00a0\u00a0provisional<a name=\"condition-ver-status-provisional\"> </a></td><td>Provisional</td><td>This is a tentative diagnosis - still a candidate that is under consideration.</td></tr><tr><td>2</td><td style=\"white-space:nowrap\">\u00a0\u00a0differential<a name=\"condition-ver-status-differential\"> </a></td><td>Differential</td><td>One of a set of potential (and typically mutually exclusive) diagnoses asserted to further guide the diagnostic process and preliminary treatment.</td></tr><tr><td>1</td><td style=\"white-space:nowrap\">confirmed<a name=\"condition-ver-status-confirmed\"> </a></td><td>Confirmed</td><td>There is sufficient evidence to assert the presence of the subject's condition.</td></tr><tr><td>1</td><td style=\"white-space:nowrap\">refuted<a name=\"condition-ver-status-refuted\"> </a></td><td>Refuted</td><td>This condition has been ruled out by subsequent diagnostic and clinical evidence.</td></tr><tr><td>1</td><td style=\"white-space:nowrap\">entered-in-error<a name=\"condition-ver-status-entered-in-error\"> </a></td><td>Entered in Error</td><td>The statement was entered in error and is not valid.</td></tr></table></div>"
  },
  "extension": [
    {
      "url": "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg",
      "valueCode": "pc"
    },
    {
      "url": "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
      "valueInteger": 3
    }
  ],
  "url": "http://terminology.hl7.org/CodeSystem/condition-ver-status",
  "identifier": [
    {
      "system": "urn:ietf:rfc:3986",
      "value": "urn:oid:2.16.840.1.113883.4.642.1.1075"
    }
  ],
  "version": "2.0.1",
  "name": "ConditionVerificationStatus",
  "title": "ConditionVerificationStatus",
  "status": "active",
  "experimental": false,
  "date": "2024-04-24T00:00:00+00:00",
  "publisher": "Health Level Seven International",
  "contact": [
    {
      "telecom": [
        {"system": "url", "value": "http://hl7.org"},
        {"system": "email", "value": "hq@HL7.org"}
      ]
    }
  ],
  "description":
      "The verification status to support or decline the clinical status of the condition or diagnosis.",
  "copyright":
      "This material derives from the HL7 Terminology (THO). THO is copyright ©1989+ Health Level Seven International and is made available under the CC0 designation. For more licensing information see: https://terminology.hl7.org/license",
  "caseSensitive": true,
  "valueSet": "http://terminology.hl7.org/ValueSet/condition-ver-status",
  "content": "complete",
  "concept": [
    {
      "code": "unconfirmed",
      "display": "Unconfirmed",
      "definition":
          "There is not sufficient evidence to assert the presence of the subject's condition.",
      "concept": [
        {
          "code": "provisional",
          "display": "Provisional",
          "definition":
              "This is a tentative diagnosis - still a candidate that is under consideration."
        },
        {
          "code": "differential",
          "display": "Differential",
          "definition":
              "One of a set of potential (and typically mutually exclusive) diagnoses asserted to further guide the diagnostic process and preliminary treatment."
        }
      ]
    },
    {
      "code": "confirmed",
      "display": "Confirmed",
      "definition":
          "There is sufficient evidence to assert the presence of the subject's condition."
    },
    {
      "code": "refuted",
      "display": "Refuted",
      "definition":
          "This condition has been ruled out by subsequent diagnostic and clinical evidence."
    },
    {
      "code": "entered-in-error",
      "display": "Entered in Error",
      "definition": "The statement was entered in error and is not valid."
    }
  ]
});
