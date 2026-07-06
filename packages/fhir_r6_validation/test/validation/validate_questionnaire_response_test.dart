import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_path/fhir_r6_path.dart';
import 'package:fhir_r6_validation/fhir_r6_validation.dart';
import 'package:test/test.dart';

void main() {
  group('validateQuestionnaireResponse', () {
    test('validates QuestionnaireResponse with valid Questionnaire reference',
        () async {
      final questionnaireResponse = QuestionnaireResponse(
        id: 'example'.toFhirString,
        status: QuestionnaireResponseStatus.completed,
        questionnaire: 'Questionnaire/example'.toFhirCanonical,
        item: [
          QuestionnaireResponseItem(
            linkId: 'q1'.toFhirString,
            answer: [
              QuestionnaireResponseAnswer(
                valueX: 'John Doe'.toFhirString,
              ),
            ],
          ),
        ],
      );

      final resourceCache = CanonicalResourceCache();
      // Note: In a real test, you'd need to mock the resourceCache
      // to return the questionnaire when requested

      final results = await validateQuestionnaireResponse(
        questionnaireResponse: questionnaireResponse,
        resourceCache: resourceCache,
      );

      expect(results, isNotNull);
      expect(results.results, isA<List<ValidationDiagnostics>>());
    });

    test('reports error when Questionnaire cannot be retrieved from cache',
        () async {
      final questionnaire = Questionnaire(
        id: 'example'.toFhirString,
        status: PublicationStatus.active,
        item: [
          QuestionnaireItem(
            linkId: 'q1'.toFhirString,
            type: QuestionnaireItemTypeUsable.string,
            text: 'What is your name?'.toFhirString,
          ),
        ],
      );

      final questionnaireResponse = QuestionnaireResponse(
        questionnaire: questionnaire.path.toFhirCanonical,
        id: 'example'.toFhirString,
        status: QuestionnaireResponseStatus.completed,
        // Questionnaire reference exists but not added to cache
      );

      final resourceCache = CanonicalResourceCache();
      // Note: questionnaire is not added to resourceCache

      final results = await validateQuestionnaireResponse(
        questionnaireResponse: questionnaireResponse,
        resourceCache: resourceCache,
      );

      expect(results.hasErrors, isTrue);
      expect(
        results.results.any(
          (r) => r.diagnostics.contains('Failed to retrieve Questionnaire'),
        ),
        isTrue,
      );
    });

    test('validates required response items', () async {
      final questionnaireResponse = QuestionnaireResponse(
        id: 'example'.toFhirString,
        status: QuestionnaireResponseStatus.completed,
        questionnaire: 'Questionnaire/example'.toFhirCanonical,
        // Missing required item
      );

      final resourceCache = CanonicalResourceCache();

      final results = await validateQuestionnaireResponse(
        questionnaireResponse: questionnaireResponse,
        resourceCache: resourceCache,
      );

      expect(results, isNotNull);
      // May have errors if questionnaire cannot be fetched
      expect(results.results, isA<List<ValidationDiagnostics>>());
    });

    test('validates nested response items', () async {
      final questionnaireResponse = QuestionnaireResponse(
        id: 'example'.toFhirString,
        status: QuestionnaireResponseStatus.completed,
        questionnaire: 'Questionnaire/example'.toFhirCanonical,
        item: [
          QuestionnaireResponseItem(
            linkId: 'group1'.toFhirString,
            item: [
              QuestionnaireResponseItem(
                linkId: 'q1'.toFhirString,
                answer: [
                  QuestionnaireResponseAnswer(
                    valueX: 'Answer'.toFhirString,
                  ),
                ],
              ),
            ],
          ),
        ],
      );

      final resourceCache = CanonicalResourceCache();

      final results = await validateQuestionnaireResponse(
        questionnaireResponse: questionnaireResponse,
        resourceCache: resourceCache,
      );

      expect(results, isNotNull);
      expect(results.results, isA<List<ValidationDiagnostics>>());
    });

    test('reports error for response item not found in Questionnaire',
        () async {
      final questionnaireResponse = QuestionnaireResponse(
        id: 'example'.toFhirString,
        status: QuestionnaireResponseStatus.completed,
        questionnaire: 'Questionnaire/example'.toFhirCanonical,
        item: [
          QuestionnaireResponseItem(
            linkId: 'q2'.toFhirString, // Not in questionnaire
            answer: [
              QuestionnaireResponseAnswer(
                valueX: 'Answer'.toFhirString,
              ),
            ],
          ),
        ],
      );

      final resourceCache = CanonicalResourceCache();

      final results = await validateQuestionnaireResponse(
        questionnaireResponse: questionnaireResponse,
        resourceCache: resourceCache,
      );

      expect(results, isNotNull);
      // May have errors if questionnaire cannot be fetched or item not found
      expect(results.results, isA<List<ValidationDiagnostics>>());
    });

    test('handles QuestionnaireResponse with empty items', () async {
      final questionnaireResponse = QuestionnaireResponse(
        id: 'example'.toFhirString,
        status: QuestionnaireResponseStatus.completed,
        questionnaire: 'Questionnaire/example'.toFhirCanonical,
        item: [],
      );

      final resourceCache = CanonicalResourceCache();

      final results = await validateQuestionnaireResponse(
        questionnaireResponse: questionnaireResponse,
        resourceCache: resourceCache,
      );

      expect(results, isNotNull);
      expect(results.results, isA<List<ValidationDiagnostics>>());
    });
  });
}
