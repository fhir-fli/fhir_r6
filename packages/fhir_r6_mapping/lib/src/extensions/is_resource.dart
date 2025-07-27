import 'package:fhir_r6/fhir_r6.dart';

/// Extension on [Map<String, dynamic] to check if it is a resource.
extension IsResource on Map<String, dynamic> {
  /// Returns true if the map is a resource.
  bool isResource() {
    final type = this['resourceType'] as String?;
    if (type == null) {
      return false;
    }
    return R6ResourceType.typesAsStrings.contains(type) ||
        type.toLowerCase().contains('tright') ||
        type.toLowerCase().contains('tleft');
  }
}
