import 'package:fhir_r6_auth/fhir_r6_auth.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('fhir_r6_auth re-exports fhir_auth', () {
    final config = AuthConfig(
      fhirBaseUrl: Uri.parse('https://fhir.example.com/r6'),
      clientId: 'client',
      redirectUri: Uri.parse('https://app.example.com/redirect'),
    );
    expect(config.fhirBaseUrl.host, 'fhir.example.com');
    expect(SmartCapability.values, isNotEmpty);
  });
}
