import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_path/fhir_r6_path.dart';
import 'package:test/test.dart';

/// What this binding is responsible for, as opposed to the engine.
///
/// The engine's semantics are tested in `fhir_path`, against this binding —
/// so a break in the engine surfaces there. What that cannot catch is this
/// package's own wiring: whether R4's model answers the FhirNode contract the
/// engine navigates, and whether the value factory hands back R6 types. Those
/// are what this file pins down, and they are the reason it is safe for the
/// engine suites not to be duplicated here.
Future<void> main() async {
  final engine = await FHIRPathEngine.create(WorkerContext());

  Future<List<FhirBase>> eval(FhirBase? context, String expr) async =>
      (await engine.evaluate(context, engine.parse(expr))).cast<FhirBase>();

  final patient = Patient(
    id: 'pat1'.toFhirString,
    active: true.toFhirBoolean,
    birthDate: '1974-12-25'.toFhirDate,
    name: [
      HumanName(
        use: NameUse.official,
        family: 'Faulkenberry'.toFhirString,
        given: ['Grey'.toFhirString, 'J'.toFhirString],
      ),
      HumanName(family: 'Other'.toFhirString),
    ],
  );

  final observation = Observation(
    status: ObservationStatus.final_,
    code: CodeableConcept(
      coding: [
        Coding(
          system: 'http://loinc.org'.toFhirUri,
          code: '29463-7'.toFhirCode,
        ),
      ],
    ),
    valueQuantity: Quantity(
      value: 72.5.toFhirDecimal,
      unit: 'kg'.toFhirString,
      system: 'http://unitsofmeasure.org'.toFhirUri,
      code: 'kg'.toFhirCode,
    ),
  );

  group('the R6 model answers the node contract the engine walks', () {
    test('a named child is reachable, and repeats are a collection', () async {
      expect(
        (await eval(patient, 'Patient.name.family'))
            .map((e) => (e as FhirString).valueString),
        ['Faulkenberry', 'Other'],
      );
    });

    test('nested repeats flatten in document order', () async {
      expect(
        (await eval(patient, 'Patient.name.given'))
            .map((e) => (e as FhirString).valueString),
        ['Grey', 'J'],
      );
    });

    test('indexing into a repeat picks that element', () async {
      expect(
        (await eval(patient, 'Patient.name[1].family'))
            .map((e) => (e as FhirString).valueString),
        ['Other'],
      );
    });

    test('a resource reports its own type', () async {
      expect(
        (await eval(patient, 'Patient.type().name'))
            .map((e) => (e as FhirString).valueString),
        ['Patient'],
      );
    });

    test('an absent child is empty, not an error', () async {
      expect(await eval(patient, 'Patient.deceased'), isEmpty);
    });

    test('a coded child compares as its code', () async {
      expect(
        await eval(patient, "Patient.name.use = 'official'"),
        [true.toFhirBoolean],
      );
    });
  });

  group('polymorphic value[x]', () {
    test('value resolves through the [x] suffix', () async {
      final result = await eval(observation, 'Observation.value');
      expect(result.single, isA<Quantity>());
    });

    test('ofType narrows to the concrete type', () async {
      expect(
        (await eval(observation, 'Observation.value.ofType(Quantity).unit'))
            .map((e) => (e as FhirString).valueString),
        ['kg'],
      );
    });

    test('ofType on the wrong type is empty', () async {
      expect(
        await eval(observation, 'Observation.value.ofType(string)'),
        isEmpty,
      );
    });
  });

  group('the value factory hands back R6 types', () {
    test('a boolean result is a FhirBoolean', () async {
      expect((await eval(patient, 'true')).single, isA<FhirBoolean>());
    });

    test('a string result is a FhirString', () async {
      expect((await eval(patient, "'x'")).single, isA<FhirString>());
    });

    test('an integer result is a FhirInteger', () async {
      expect((await eval(patient, '1 + 1')).single, isA<FhirInteger>());
    });

    test('a decimal keeps its exact written form', () async {
      expect(
        ((await eval(patient, '1.50')).single as FhirDecimal).valueString,
        '1.50',
      );
    });

    test('a quantity literal becomes a Quantity', () async {
      expect((await eval(patient, "4.5 'mg'")).single, isA<Quantity>());
    });

    test('a date result is a FhirDate carrying its precision', () async {
      final result = (await eval(patient, 'Patient.birthDate')).single;
      expect(result, isA<FhirDate>());
      expect((result as FhirDate).valueString, '1974-12-25');
    });
  });

  // R6's Narrative.div rules through htmlChecks(); the engine asks this
  // binding, which answers with fhir_r6's own check.
  group('narrative checks', () {
    const ns = 'xmlns="http://www.w3.org/1999/xhtml"';
    Patient withDiv(String div) => Patient(
          text: Narrative(
            status: NarrativeStatus.generated,
            div: FhirXhtml.fromValidatedXhtml(div),
          ),
        );
    Future<bool> check(FhirBase context, String expr) async =>
        ((await eval(context, expr)).single as FhirBoolean).valueBoolean!;

    test('a legal narrative passes htmlChecks() and htmlChecks2()', () async {
      final p = withDiv('<div $ns><p>H<sub>2</sub>O</p></div>');
      expect(await check(p, 'text.div.htmlChecks()'), isTrue);
      expect(await check(p, 'text.div.htmlChecks2()'), isTrue);
    });

    test('markup fhir_r6 refuses fails htmlChecks()', () async {
      for (final inner in const [
        '<script>x</script>',
        '<a href="javascript:alert(1)">x</a>',
        '<span href="#x">x</span>',
      ]) {
        expect(
          await check(
            withDiv('<div $ns>$inner</div>'),
            'text.div.htmlChecks()',
          ),
          isFalse,
          reason: inner,
        );
      }
    });

    // R6's txt-1 asks for content too, as HL7's FHIRPathEngine does from R6.
    test('an empty narrative fails htmlChecks() and htmlChecks2()', () async {
      final p = withDiv('<div $ns> </div>');
      expect(await check(p, 'text.div.htmlChecks()'), isFalse);
      expect(await check(p, 'text.div.htmlChecks2()'), isFalse);
    });
  });
}
