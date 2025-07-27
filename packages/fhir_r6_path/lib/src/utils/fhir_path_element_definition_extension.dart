import 'package:fhir_r5/fhir_r5.dart';

/// Extension on [ElementDefinition] to provide additional functionality
extension FhirPathElementDefinitionExtension on ElementDefinition {
  /// Returns the type of the element definition
  List<ElementDefinitionType> getType() => type ?? <ElementDefinitionType>[];

  /// Returns if the element definition has a content reference
  bool hasContentReference() {
    return contentReference != null &&
        (contentReference!.valueString?.isNotEmpty ?? false);
  }
}
