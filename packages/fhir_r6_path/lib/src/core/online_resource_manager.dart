import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_path/fhir_r6_path.dart';
import 'package:http/http.dart';

/// An online-capable extension of [CanonicalResourceCache].
/// Falls back to HTTP GET when a resource isn't cached locally.
class OnlineResourceCache extends CanonicalResourceCache {
  /// Creates an [OnlineResourceCache] with optional HTTP client.
  OnlineResourceCache({
    super.enforceUniqueId = false,
    Client? client,
  }) : super(client: client ?? Client());

  @override
  Future<T?> getCanonicalResource<T extends CanonicalResource>(
    String url, [
    String? version,
  ]) async {
    // Try local cache first
    final local = await super.getCanonicalResource<T>(url, version);
    if (local != null) return local;

    // Fall back to online fetch
    return _fetchAndCache<T>(url, version);
  }

  /// Fetches the resource via HTTP GET, caches, and returns it.
  Future<T?> _fetchAndCache<T extends CanonicalResource>(
    String url,
    String? version,
  ) async {
    try {
      var uri = Uri.parse(url.replaceAll('http://', 'https://'));
      if (version != null) {
        final params = <String, String>{
          ...uri.queryParameters,
          'version': version,
        };
        uri = uri.replace(queryParameters: params);
      }

      final headers = <String, String>{
        'Accept': 'application/fhir+json',
        'Content-Type': 'application/json',
      };

      var response = await client!.get(uri, headers: headers);
      if (response.statusCode != 200) {
        headers['Accept'] = 'application/json';
        response = await client!.get(uri, headers: headers);
        if (response.statusCode != 200) {
          // Failed to fetch the resource
          return null;
        }
      }

      final jsonMap = jsonDecode(response.body) as Map<String, dynamic>;
      final resourceType = jsonMap['resourceType'] as String?;
      CanonicalResource? resource;

      switch (resourceType) {
        case 'StructureDefinition':
          resource = StructureDefinition.fromJson(jsonMap);
        case 'CodeSystem':
          resource = CodeSystem.fromJson(jsonMap);
        case 'ValueSet':
          resource = ValueSet.fromJson(jsonMap);
        case 'ConceptMap':
          resource = ConceptMap.fromJson(jsonMap);
        case 'SearchParameter':
          resource = SearchParameter.fromJson(jsonMap);
        case 'OperationDefinition':
          resource = OperationDefinition.fromJson(jsonMap);
        case 'ImplementationGuide':
          resource = ImplementationGuide.fromJson(jsonMap);
        default:
          // Unsupported canonical resource type
          return null;
      }

      if (resource is T) {
        // Cache it for future lookups
        see(resource);
        return resource;
      }
    } catch (_) {
      // Swallow errors and return null
    }
    return null;
  }
}
