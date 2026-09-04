// ignore_for_file: require_trailing_commas, unnecessary_raw_strings, lines_longer_than_80_chars
// GENERATED CODE - DO NOT MODIFY BY HAND
// Generated from search-parameters.json by
// fhir_generator/lib/src/generate_search_parameter_types.dart

/// What a search parameter is, and which comparators it takes.
///
/// Read from the published SearchParameter definitions. A query
/// cannot be parsed without it: whether `gt` at the front of a
/// value is a comparator or the first two letters of a name is
/// decided by the parameter's declared type, never by the shape
/// of the value.
class SearchParameterDefinition {
  /// Creates a definition.
  const SearchParameterDefinition(
    this.type,
    this.comparators, {
    this.components = const [],
    this.mime = false,
  });

  /// string | token | date | number | quantity | reference |
  /// uri | composite | special.
  final String type;

  /// The prefixes this parameter accepts, empty for the types
  /// that take none.
  final List<String> comparators;

  /// For a composite (R4B 3.1.1.4.17): its components, in the
  /// order the $-joined value gives them, each the type of the
  /// parameter it stands for and its expression relative to the
  /// composite's own element. Empty for every other type.
  final List<SearchComponent> components;

  /// True for a token parameter whose element is bound to the
  /// mimetypes value set (`Attachment.contentType`,
  /// `CapabilityStatement.format`, ...). `:below` on such a
  /// parameter is the mime-type search of search.html
  /// "Searching MIME Types"; on any other token it is code
  /// subsumption.
  final bool mime;
}

/// One component of a composite search parameter.
class SearchComponent {
  /// Creates a component.
  const SearchComponent(this.type, this.expression);

  /// The component parameter's type: token, quantity, ...
  final String type;

  /// The path from the composite's element to the value, as
  /// the definition writes it: `code`, `value.as(Quantity)`,
  /// `%resource.referenceSeq.chromosome`.
  final String expression;
}

/// Every search parameter, by resource type then by code.
const Map<String, Map<String, SearchParameterDefinition>> searchParameterTypes =
    {
  'Account': {
    'guarantor': SearchParameterDefinition('reference', []),
    'guarantor-account': SearchParameterDefinition('reference', []),
    'identifier': SearchParameterDefinition('token', []),
    'name': SearchParameterDefinition('string', []),
    'owner': SearchParameterDefinition('reference', []),
    'patient': SearchParameterDefinition('reference', []),
    'period': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'status': SearchParameterDefinition('token', []),
    'subject': SearchParameterDefinition('reference', []),
    'type': SearchParameterDefinition('token', []),
  },
  'ActivityDefinition': {
    'composed-of': SearchParameterDefinition('reference', []),
    'context': SearchParameterDefinition('token', []),
    'context-quantity': SearchParameterDefinition(
        'quantity', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'context-type': SearchParameterDefinition('token', []),
    'context-type-quantity':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent(
          'quantity', r'value.ofType(Quantity) | value.ofType(Range)')
    ]),
    'context-type-value':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent('token', r'value.ofType(CodeableConcept)')
    ]),
    'date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'depends-on': SearchParameterDefinition('reference', []),
    'derived-from': SearchParameterDefinition('reference', []),
    'description': SearchParameterDefinition('string', []),
    'effective': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'identifier': SearchParameterDefinition('token', []),
    'jurisdiction': SearchParameterDefinition('token', []),
    'kind': SearchParameterDefinition('token', []),
    'name': SearchParameterDefinition('string', []),
    'predecessor': SearchParameterDefinition('reference', []),
    'publisher': SearchParameterDefinition('string', []),
    'status': SearchParameterDefinition('token', []),
    'subject-canonical': SearchParameterDefinition('reference', []),
    'subject-code': SearchParameterDefinition('token', []),
    'subject-reference': SearchParameterDefinition('reference', []),
    'successor': SearchParameterDefinition('reference', []),
    'title': SearchParameterDefinition('string', []),
    'topic': SearchParameterDefinition('token', []),
    'url': SearchParameterDefinition('uri', []),
    'version': SearchParameterDefinition('token', []),
  },
  'ActorDefinition': {
    'context': SearchParameterDefinition('token', []),
    'context-quantity': SearchParameterDefinition(
        'quantity', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'context-type': SearchParameterDefinition('token', []),
    'context-type-quantity':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent(
          'quantity', r'value.ofType(Quantity) | value.ofType(Range)')
    ]),
    'context-type-value':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent('token', r'value.ofType(CodeableConcept)')
    ]),
    'date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'description': SearchParameterDefinition('string', []),
    'identifier': SearchParameterDefinition('token', []),
    'jurisdiction': SearchParameterDefinition('token', []),
    'publisher': SearchParameterDefinition('string', []),
    'status': SearchParameterDefinition('token', []),
    'title': SearchParameterDefinition('string', []),
    'type': SearchParameterDefinition('token', []),
    'url': SearchParameterDefinition('uri', []),
    'version': SearchParameterDefinition('token', []),
  },
  'AdministrableProductDefinition': {
    'device': SearchParameterDefinition('reference', []),
    'dose-form': SearchParameterDefinition('token', []),
    'form-of': SearchParameterDefinition('reference', []),
    'identifier': SearchParameterDefinition('token', []),
    'ingredient': SearchParameterDefinition('token', []),
    'manufactured-item': SearchParameterDefinition('reference', []),
    'route': SearchParameterDefinition('token', []),
    'status': SearchParameterDefinition('token', []),
    'target-species': SearchParameterDefinition('token', []),
  },
  'AdverseEvent': {
    'actuality': SearchParameterDefinition('token', []),
    'category': SearchParameterDefinition('token', []),
    'cause': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'code': SearchParameterDefinition('token', []),
    'effect': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'identifier': SearchParameterDefinition('token', []),
    'location': SearchParameterDefinition('reference', []),
    'patient': SearchParameterDefinition('reference', []),
    'recorder': SearchParameterDefinition('reference', []),
    'resultingeffect-code': SearchParameterDefinition('token', []),
    'resultingeffect-reference': SearchParameterDefinition('reference', []),
    'seriousness': SearchParameterDefinition('token', []),
    'status': SearchParameterDefinition('token', []),
    'study': SearchParameterDefinition('reference', []),
    'subject': SearchParameterDefinition('reference', []),
    'substance': SearchParameterDefinition('reference', []),
  },
  'AllergyIntolerance': {
    'asserter': SearchParameterDefinition('reference', []),
    'category': SearchParameterDefinition('token', []),
    'clinical-status': SearchParameterDefinition('token', []),
    'code': SearchParameterDefinition('token', []),
    'criticality': SearchParameterDefinition('token', []),
    'date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'identifier': SearchParameterDefinition('token', []),
    'last-reaction-date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'manifestation-code': SearchParameterDefinition('token', []),
    'manifestation-reference': SearchParameterDefinition('reference', []),
    'patient': SearchParameterDefinition('reference', []),
    'route': SearchParameterDefinition('token', []),
    'severity': SearchParameterDefinition('token', []),
    'type': SearchParameterDefinition('token', []),
    'verification-status': SearchParameterDefinition('token', []),
  },
  'Appointment': {
    'actor': SearchParameterDefinition('reference', []),
    'appointment-type': SearchParameterDefinition('token', []),
    'based-on': SearchParameterDefinition('reference', []),
    'date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'group': SearchParameterDefinition('reference', []),
    'has-recurrence-template': SearchParameterDefinition('token', []),
    'identifier': SearchParameterDefinition('token', []),
    'is-recurring': SearchParameterDefinition('token', []),
    'location': SearchParameterDefinition('reference', []),
    'occurrence-changed': SearchParameterDefinition('token', []),
    'originating-appointment': SearchParameterDefinition('reference', []),
    'part-status': SearchParameterDefinition('token', []),
    'patient': SearchParameterDefinition('reference', []),
    'practitioner': SearchParameterDefinition('reference', []),
    'previous-appointment': SearchParameterDefinition('reference', []),
    'reason-code': SearchParameterDefinition('token', []),
    'reason-reference': SearchParameterDefinition('reference', []),
    'requested-period': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'service-category': SearchParameterDefinition('token', []),
    'service-type': SearchParameterDefinition('token', []),
    'service-type-reference': SearchParameterDefinition('reference', []),
    'slot': SearchParameterDefinition('reference', []),
    'specialty': SearchParameterDefinition('token', []),
    'status': SearchParameterDefinition('token', []),
    'subject': SearchParameterDefinition('reference', []),
    'supporting-info': SearchParameterDefinition('reference', []),
  },
  'AppointmentResponse': {
    'actor': SearchParameterDefinition('reference', []),
    'appointment': SearchParameterDefinition('reference', []),
    'group': SearchParameterDefinition('reference', []),
    'identifier': SearchParameterDefinition('token', []),
    'location': SearchParameterDefinition('reference', []),
    'part-status': SearchParameterDefinition('token', []),
    'patient': SearchParameterDefinition('reference', []),
    'practitioner': SearchParameterDefinition('reference', []),
  },
  'ArtifactAssessment': {
    'date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'identifier': SearchParameterDefinition('token', []),
  },
  'AuditEvent': {
    'action': SearchParameterDefinition('token', []),
    'agent': SearchParameterDefinition('reference', []),
    'agent-role': SearchParameterDefinition('token', []),
    'based-on': SearchParameterDefinition('reference', []),
    'date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'encounter': SearchParameterDefinition('reference', []),
    'entity': SearchParameterDefinition('reference', []),
    'entity-desc': SearchParameterDefinition('string', []),
    'entity-role': SearchParameterDefinition('token', []),
    'outcome': SearchParameterDefinition('token', []),
    'patient': SearchParameterDefinition('reference', []),
    'policy': SearchParameterDefinition('uri', []),
    'purpose': SearchParameterDefinition('token', []),
    'source': SearchParameterDefinition('reference', []),
    'subtype': SearchParameterDefinition('token', []),
    'type': SearchParameterDefinition('token', []),
  },
  'Basic': {
    'author': SearchParameterDefinition('reference', []),
    'code': SearchParameterDefinition('token', []),
    'created': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'identifier': SearchParameterDefinition('token', []),
    'patient': SearchParameterDefinition('reference', []),
    'subject': SearchParameterDefinition('reference', []),
  },
  'BiologicallyDerivedProduct': {
    'biological-source-event': SearchParameterDefinition('token', []),
    'code': SearchParameterDefinition('token', []),
    'collector': SearchParameterDefinition('reference', []),
    'identifier': SearchParameterDefinition('token', []),
    'product-category': SearchParameterDefinition('token', []),
    'product-status': SearchParameterDefinition('token', []),
    'request': SearchParameterDefinition('reference', []),
    'serial-number': SearchParameterDefinition('token', []),
  },
  'BiologicallyDerivedProductDispense': {
    'identifier': SearchParameterDefinition('token', []),
    'patient': SearchParameterDefinition('reference', []),
    'performer': SearchParameterDefinition('reference', []),
    'product': SearchParameterDefinition('reference', []),
    'status': SearchParameterDefinition('token', []),
  },
  'BodyStructure': {
    'excluded_structure': SearchParameterDefinition('token', []),
    'identifier': SearchParameterDefinition('token', []),
    'included_structure': SearchParameterDefinition('token', []),
    'morphology': SearchParameterDefinition('token', []),
    'patient': SearchParameterDefinition('reference', []),
  },
  'Bundle': {
    'composition': SearchParameterDefinition('resource', []),
    'identifier': SearchParameterDefinition('token', []),
    'message': SearchParameterDefinition('resource', []),
    'timestamp': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'type': SearchParameterDefinition('token', []),
  },
  'CapabilityStatement': {
    'context': SearchParameterDefinition('token', []),
    'context-quantity': SearchParameterDefinition(
        'quantity', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'context-type': SearchParameterDefinition('token', []),
    'context-type-quantity':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent(
          'quantity', r'value.ofType(Quantity) | value.ofType(Range)')
    ]),
    'context-type-value':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent('token', r'value.ofType(CodeableConcept)')
    ]),
    'date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'description': SearchParameterDefinition('string', []),
    'fhirversion': SearchParameterDefinition('token', []),
    'format': SearchParameterDefinition('token', []),
    'guide': SearchParameterDefinition('reference', []),
    'identifier': SearchParameterDefinition('token', []),
    'jurisdiction': SearchParameterDefinition('token', []),
    'mode': SearchParameterDefinition('token', []),
    'name': SearchParameterDefinition('string', []),
    'publisher': SearchParameterDefinition('string', []),
    'resource': SearchParameterDefinition('token', []),
    'resource-profile': SearchParameterDefinition('reference', []),
    'security-service': SearchParameterDefinition('token', []),
    'software': SearchParameterDefinition('string', []),
    'status': SearchParameterDefinition('token', []),
    'supported-profile': SearchParameterDefinition('reference', []),
    'title': SearchParameterDefinition('string', []),
    'url': SearchParameterDefinition('uri', []),
    'version': SearchParameterDefinition('token', []),
  },
  'CarePlan': {
    'activity-reference': SearchParameterDefinition('reference', []),
    'based-on': SearchParameterDefinition('reference', []),
    'care-team': SearchParameterDefinition('reference', []),
    'category': SearchParameterDefinition('token', []),
    'condition': SearchParameterDefinition('reference', []),
    'custodian': SearchParameterDefinition('reference', []),
    'date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'encounter': SearchParameterDefinition('reference', []),
    'goal': SearchParameterDefinition('reference', []),
    'identifier': SearchParameterDefinition('token', []),
    'intent': SearchParameterDefinition('token', []),
    'part-of': SearchParameterDefinition('reference', []),
    'patient': SearchParameterDefinition('reference', []),
    'replaces': SearchParameterDefinition('reference', []),
    'status': SearchParameterDefinition('token', []),
    'subject': SearchParameterDefinition('reference', []),
  },
  'CareTeam': {
    'category': SearchParameterDefinition('token', []),
    'date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'identifier': SearchParameterDefinition('token', []),
    'name': SearchParameterDefinition('string', []),
    'participant': SearchParameterDefinition('reference', []),
    'patient': SearchParameterDefinition('reference', []),
    'status': SearchParameterDefinition('token', []),
    'subject': SearchParameterDefinition('reference', []),
  },
  'ChargeItem': {
    'account': SearchParameterDefinition('reference', []),
    'code': SearchParameterDefinition('token', []),
    'encounter': SearchParameterDefinition('reference', []),
    'entered-date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'enterer': SearchParameterDefinition('reference', []),
    'factor-override': SearchParameterDefinition(
        'number', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'identifier': SearchParameterDefinition('token', []),
    'occurrence': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'patient': SearchParameterDefinition('reference', []),
    'performer-actor': SearchParameterDefinition('reference', []),
    'performer-function': SearchParameterDefinition('token', []),
    'performing-organization': SearchParameterDefinition('reference', []),
    'price-override': SearchParameterDefinition(
        'quantity', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'quantity': SearchParameterDefinition(
        'quantity', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'requesting-organization': SearchParameterDefinition('reference', []),
    'service': SearchParameterDefinition('reference', []),
    'status': SearchParameterDefinition('token', []),
    'subject': SearchParameterDefinition('reference', []),
  },
  'ChargeItemDefinition': {
    'account': SearchParameterDefinition('reference', []),
    'context': SearchParameterDefinition('token', []),
    'context-quantity': SearchParameterDefinition(
        'quantity', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'context-type': SearchParameterDefinition('token', []),
    'context-type-quantity':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent(
          'quantity', r'value.ofType(Quantity) | value.ofType(Range)')
    ]),
    'context-type-value':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent('token', r'value.ofType(CodeableConcept)')
    ]),
    'date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'description': SearchParameterDefinition('string', []),
    'effective': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'identifier': SearchParameterDefinition('token', []),
    'jurisdiction': SearchParameterDefinition('token', []),
    'publisher': SearchParameterDefinition('string', []),
    'status': SearchParameterDefinition('token', []),
    'title': SearchParameterDefinition('string', []),
    'url': SearchParameterDefinition('uri', []),
    'version': SearchParameterDefinition('token', []),
  },
  'Citation': {
    'classification': SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'type'),
      SearchComponent('token', r'classifier')
    ]),
    'classification-type': SearchParameterDefinition('token', []),
    'classifier': SearchParameterDefinition('token', []),
    'context': SearchParameterDefinition('token', []),
    'context-quantity': SearchParameterDefinition(
        'quantity', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'context-type': SearchParameterDefinition('token', []),
    'context-type-quantity':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent(
          'quantity', r'value.ofType(Quantity) | value.ofType(Range)')
    ]),
    'context-type-value':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent('token', r'value.ofType(CodeableConcept)')
    ]),
    'date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'description': SearchParameterDefinition('string', []),
    'effective': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'identifier': SearchParameterDefinition('token', []),
    'jurisdiction': SearchParameterDefinition('token', []),
    'name': SearchParameterDefinition('string', []),
    'publisher': SearchParameterDefinition('string', []),
    'status': SearchParameterDefinition('token', []),
    'title': SearchParameterDefinition('string', []),
    'url': SearchParameterDefinition('uri', []),
    'version': SearchParameterDefinition('token', []),
  },
  'Claim': {
    'care-team': SearchParameterDefinition('reference', []),
    'created': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'detail-udi': SearchParameterDefinition('reference', []),
    'encounter': SearchParameterDefinition('reference', []),
    'enterer': SearchParameterDefinition('reference', []),
    'facility': SearchParameterDefinition('reference', []),
    'identifier': SearchParameterDefinition('token', []),
    'insurer': SearchParameterDefinition('reference', []),
    'item-udi': SearchParameterDefinition('reference', []),
    'patient': SearchParameterDefinition('reference', []),
    'payee': SearchParameterDefinition('reference', []),
    'priority': SearchParameterDefinition('token', []),
    'procedure-udi': SearchParameterDefinition('reference', []),
    'provider': SearchParameterDefinition('reference', []),
    'status': SearchParameterDefinition('token', []),
    'subdetail-udi': SearchParameterDefinition('reference', []),
    'use': SearchParameterDefinition('token', []),
  },
  'ClaimResponse': {
    'created': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'disposition': SearchParameterDefinition('string', []),
    'identifier': SearchParameterDefinition('token', []),
    'insurer': SearchParameterDefinition('reference', []),
    'outcome': SearchParameterDefinition('token', []),
    'patient': SearchParameterDefinition('reference', []),
    'payment-date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'request': SearchParameterDefinition('reference', []),
    'requestor': SearchParameterDefinition('reference', []),
    'status': SearchParameterDefinition('token', []),
    'use': SearchParameterDefinition('token', []),
  },
  'ClinicalUseDefinition': {
    'contraindication': SearchParameterDefinition('token', []),
    'contraindication-reference': SearchParameterDefinition('reference', []),
    'effect': SearchParameterDefinition('token', []),
    'effect-reference': SearchParameterDefinition('reference', []),
    'identifier': SearchParameterDefinition('token', []),
    'indication': SearchParameterDefinition('token', []),
    'indication-reference': SearchParameterDefinition('reference', []),
    'interaction': SearchParameterDefinition('token', []),
    'product': SearchParameterDefinition('reference', []),
    'status': SearchParameterDefinition('token', []),
    'subject': SearchParameterDefinition('reference', []),
    'type': SearchParameterDefinition('token', []),
  },
  'CodeSystem': {
    'code': SearchParameterDefinition('token', []),
    'content-mode': SearchParameterDefinition('token', []),
    'context': SearchParameterDefinition('token', []),
    'context-quantity': SearchParameterDefinition(
        'quantity', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'context-type': SearchParameterDefinition('token', []),
    'context-type-quantity':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent(
          'quantity', r'value.ofType(Quantity) | value.ofType(Range)')
    ]),
    'context-type-value':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent('token', r'value.ofType(CodeableConcept)')
    ]),
    'date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'derived-from': SearchParameterDefinition('reference', []),
    'description': SearchParameterDefinition('string', []),
    'effective': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'identifier': SearchParameterDefinition('token', []),
    'jurisdiction': SearchParameterDefinition('token', []),
    'language': SearchParameterDefinition('token', []),
    'name': SearchParameterDefinition('string', []),
    'predecessor': SearchParameterDefinition('reference', []),
    'publisher': SearchParameterDefinition('string', []),
    'status': SearchParameterDefinition('token', []),
    'supplements': SearchParameterDefinition('reference', []),
    'system': SearchParameterDefinition('uri', []),
    'title': SearchParameterDefinition('string', []),
    'topic': SearchParameterDefinition('token', []),
    'url': SearchParameterDefinition('uri', []),
    'version': SearchParameterDefinition('token', []),
  },
  'Communication': {
    'based-on': SearchParameterDefinition('reference', []),
    'category': SearchParameterDefinition('token', []),
    'encounter': SearchParameterDefinition('reference', []),
    'identifier': SearchParameterDefinition('token', []),
    'in-response-to': SearchParameterDefinition('reference', []),
    'medium': SearchParameterDefinition('token', []),
    'part-of': SearchParameterDefinition('reference', []),
    'patient': SearchParameterDefinition('reference', []),
    'reason-code': SearchParameterDefinition('token', []),
    'reason-reference': SearchParameterDefinition('reference', []),
    'received': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'recipient': SearchParameterDefinition('reference', []),
    'sender': SearchParameterDefinition('reference', []),
    'sent': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'status': SearchParameterDefinition('token', []),
    'subject': SearchParameterDefinition('reference', []),
    'topic': SearchParameterDefinition('token', []),
  },
  'CommunicationRequest': {
    'about': SearchParameterDefinition('reference', []),
    'authored': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'based-on': SearchParameterDefinition('reference', []),
    'category': SearchParameterDefinition('token', []),
    'encounter': SearchParameterDefinition('reference', []),
    'group-identifier': SearchParameterDefinition('token', []),
    'identifier': SearchParameterDefinition('token', []),
    'information-provider': SearchParameterDefinition('reference', []),
    'medium': SearchParameterDefinition('token', []),
    'occurrence': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'patient': SearchParameterDefinition('reference', []),
    'priority': SearchParameterDefinition('token', []),
    'recipient': SearchParameterDefinition('reference', []),
    'replaces': SearchParameterDefinition('reference', []),
    'requester': SearchParameterDefinition('reference', []),
    'status': SearchParameterDefinition('token', []),
    'subject': SearchParameterDefinition('reference', []),
  },
  'CompartmentDefinition': {
    'code': SearchParameterDefinition('token', []),
    'context': SearchParameterDefinition('token', []),
    'context-quantity': SearchParameterDefinition(
        'quantity', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'context-type': SearchParameterDefinition('token', []),
    'context-type-quantity':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent(
          'quantity', r'value.ofType(Quantity) | value.ofType(Range)')
    ]),
    'context-type-value':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent('token', r'value.ofType(CodeableConcept)')
    ]),
    'date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'description': SearchParameterDefinition('string', []),
    'name': SearchParameterDefinition('string', []),
    'publisher': SearchParameterDefinition('string', []),
    'resource': SearchParameterDefinition('token', []),
    'status': SearchParameterDefinition('token', []),
    'url': SearchParameterDefinition('uri', []),
    'version': SearchParameterDefinition('token', []),
  },
  'Composition': {
    'attester': SearchParameterDefinition('reference', []),
    'author': SearchParameterDefinition('reference', []),
    'category': SearchParameterDefinition('token', []),
    'date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'encounter': SearchParameterDefinition('reference', []),
    'entry': SearchParameterDefinition('reference', []),
    'event-code': SearchParameterDefinition('token', []),
    'event-reference': SearchParameterDefinition('reference', []),
    'identifier': SearchParameterDefinition('token', []),
    'patient': SearchParameterDefinition('reference', []),
    'period': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'section': SearchParameterDefinition('token', []),
    'section-code-text':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'section.code'),
      SearchComponent('special', r'section.text')
    ]),
    'section-text': SearchParameterDefinition('special', []),
    'status': SearchParameterDefinition('token', []),
    'subject': SearchParameterDefinition('reference', []),
    'title': SearchParameterDefinition('string', []),
    'type': SearchParameterDefinition('token', []),
    'url': SearchParameterDefinition('uri', []),
    'version': SearchParameterDefinition('token', []),
  },
  'ConceptMap': {
    'context': SearchParameterDefinition('token', []),
    'context-quantity': SearchParameterDefinition(
        'quantity', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'context-type': SearchParameterDefinition('token', []),
    'context-type-quantity':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent(
          'quantity', r'value.ofType(Quantity) | value.ofType(Range)')
    ]),
    'context-type-value':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent('token', r'value.ofType(CodeableConcept)')
    ]),
    'date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'derived-from': SearchParameterDefinition('reference', []),
    'description': SearchParameterDefinition('string', []),
    'effective': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'identifier': SearchParameterDefinition('token', []),
    'jurisdiction': SearchParameterDefinition('token', []),
    'mapping-property': SearchParameterDefinition('uri', []),
    'name': SearchParameterDefinition('string', []),
    'other-map': SearchParameterDefinition('reference', []),
    'predecessor': SearchParameterDefinition('reference', []),
    'publisher': SearchParameterDefinition('string', []),
    'source-code': SearchParameterDefinition('token', []),
    'source-group-system': SearchParameterDefinition('reference', []),
    'source-scope': SearchParameterDefinition('reference', []),
    'source-scope-uri': SearchParameterDefinition('uri', []),
    'status': SearchParameterDefinition('token', []),
    'target-code': SearchParameterDefinition('token', []),
    'target-group-system': SearchParameterDefinition('reference', []),
    'target-scope': SearchParameterDefinition('reference', []),
    'target-scope-uri': SearchParameterDefinition('uri', []),
    'title': SearchParameterDefinition('string', []),
    'topic': SearchParameterDefinition('token', []),
    'url': SearchParameterDefinition('uri', []),
    'version': SearchParameterDefinition('token', []),
  },
  'Condition': {
    'abatement-age': SearchParameterDefinition(
        'quantity', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'abatement-date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'abatement-string': SearchParameterDefinition('string', []),
    'asserter': SearchParameterDefinition('reference', []),
    'body-site': SearchParameterDefinition('token', []),
    'category': SearchParameterDefinition('token', []),
    'clinical-status': SearchParameterDefinition('token', []),
    'code': SearchParameterDefinition('token', []),
    'encounter': SearchParameterDefinition('reference', []),
    'evidence': SearchParameterDefinition('token', []),
    'evidence-detail': SearchParameterDefinition('reference', []),
    'identifier': SearchParameterDefinition('token', []),
    'onset-age': SearchParameterDefinition(
        'quantity', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'onset-date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'onset-info': SearchParameterDefinition('string', []),
    'patient': SearchParameterDefinition('reference', []),
    'recorded-date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'severity': SearchParameterDefinition('token', []),
    'stage': SearchParameterDefinition('token', []),
    'subject': SearchParameterDefinition('reference', []),
    'verification-status': SearchParameterDefinition('token', []),
  },
  'ConditionDefinition': {
    'context': SearchParameterDefinition('token', []),
    'context-quantity': SearchParameterDefinition(
        'quantity', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'context-type': SearchParameterDefinition('token', []),
    'context-type-quantity':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent(
          'quantity', r'value.ofType(Quantity) | value.ofType(Range)')
    ]),
    'context-type-value':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent('token', r'value.ofType(CodeableConcept)')
    ]),
    'date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'description': SearchParameterDefinition('string', []),
    'identifier': SearchParameterDefinition('token', []),
    'jurisdiction': SearchParameterDefinition('token', []),
    'name': SearchParameterDefinition('string', []),
    'publisher': SearchParameterDefinition('string', []),
    'status': SearchParameterDefinition('token', []),
    'title': SearchParameterDefinition('string', []),
    'url': SearchParameterDefinition('uri', []),
    'version': SearchParameterDefinition('token', []),
  },
  'Consent': {
    'action': SearchParameterDefinition('token', []),
    'actor': SearchParameterDefinition('reference', []),
    'category': SearchParameterDefinition('token', []),
    'controller': SearchParameterDefinition('reference', []),
    'data': SearchParameterDefinition('reference', []),
    'date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'grantee': SearchParameterDefinition('reference', []),
    'identifier': SearchParameterDefinition('token', []),
    'manager': SearchParameterDefinition('reference', []),
    'patient': SearchParameterDefinition('reference', []),
    'period': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'purpose': SearchParameterDefinition('token', []),
    'security-label': SearchParameterDefinition('token', []),
    'source-reference': SearchParameterDefinition('reference', []),
    'status': SearchParameterDefinition('token', []),
    'subject': SearchParameterDefinition('reference', []),
    'verified': SearchParameterDefinition('token', []),
    'verified-date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
  },
  'Contract': {
    'authority': SearchParameterDefinition('reference', []),
    'domain': SearchParameterDefinition('reference', []),
    'identifier': SearchParameterDefinition('token', []),
    'instantiates': SearchParameterDefinition('uri', []),
    'issued': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'patient': SearchParameterDefinition('reference', []),
    'signer': SearchParameterDefinition('reference', []),
    'status': SearchParameterDefinition('token', []),
    'subject': SearchParameterDefinition('reference', []),
    'url': SearchParameterDefinition('uri', []),
  },
  'Coverage': {
    'beneficiary': SearchParameterDefinition('reference', []),
    'class-type': SearchParameterDefinition('token', []),
    'class-value': SearchParameterDefinition('token', []),
    'dependent': SearchParameterDefinition('string', []),
    'identifier': SearchParameterDefinition('token', []),
    'insurer': SearchParameterDefinition('reference', []),
    'patient': SearchParameterDefinition('reference', []),
    'paymentby-party': SearchParameterDefinition('reference', []),
    'policy-holder': SearchParameterDefinition('reference', []),
    'status': SearchParameterDefinition('token', []),
    'subscriber': SearchParameterDefinition('reference', []),
    'subscriberid': SearchParameterDefinition('token', []),
    'type': SearchParameterDefinition('token', []),
  },
  'CoverageEligibilityRequest': {
    'created': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'enterer': SearchParameterDefinition('reference', []),
    'facility': SearchParameterDefinition('reference', []),
    'identifier': SearchParameterDefinition('token', []),
    'patient': SearchParameterDefinition('reference', []),
    'provider': SearchParameterDefinition('reference', []),
    'status': SearchParameterDefinition('token', []),
  },
  'CoverageEligibilityResponse': {
    'created': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'disposition': SearchParameterDefinition('string', []),
    'identifier': SearchParameterDefinition('token', []),
    'insurer': SearchParameterDefinition('reference', []),
    'outcome': SearchParameterDefinition('token', []),
    'patient': SearchParameterDefinition('reference', []),
    'request': SearchParameterDefinition('reference', []),
    'requestor': SearchParameterDefinition('reference', []),
    'status': SearchParameterDefinition('token', []),
  },
  'DetectedIssue': {
    'author': SearchParameterDefinition('reference', []),
    'category': SearchParameterDefinition('token', []),
    'code': SearchParameterDefinition('token', []),
    'identified': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'identifier': SearchParameterDefinition('token', []),
    'implicated': SearchParameterDefinition('reference', []),
    'patient': SearchParameterDefinition('reference', []),
    'status': SearchParameterDefinition('token', []),
    'subject': SearchParameterDefinition('reference', []),
  },
  'Device': {
    'biological-source-event': SearchParameterDefinition('token', []),
    'code': SearchParameterDefinition('token', []),
    'code-value-concept':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'specification.ofType(CodeableConcept)'),
      SearchComponent('string', r'version.ofType(string)')
    ]),
    'definition': SearchParameterDefinition('reference', []),
    'device-name': SearchParameterDefinition('string', []),
    'expiration-date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'identifier': SearchParameterDefinition('token', []),
    'location': SearchParameterDefinition('reference', []),
    'lot-number': SearchParameterDefinition('string', []),
    'manufacture-date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'manufacturer': SearchParameterDefinition('string', []),
    'model': SearchParameterDefinition('string', []),
    'parent': SearchParameterDefinition('reference', []),
    'serial-number': SearchParameterDefinition('string', []),
    'specification': SearchParameterDefinition('token', []),
    'specification-version':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'specification'),
      SearchComponent('string', r'version')
    ]),
    'status': SearchParameterDefinition('token', []),
    'type': SearchParameterDefinition('token', []),
    'udi-carrier-hrf': SearchParameterDefinition('string', []),
    'udi-di': SearchParameterDefinition('string', []),
    'version': SearchParameterDefinition('string', []),
  },
  'DeviceAssociation': {
    'date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'device': SearchParameterDefinition('reference', []),
    'identifier': SearchParameterDefinition('token', []),
    'operator': SearchParameterDefinition('reference', []),
    'relationship': SearchParameterDefinition('token', []),
    'status': SearchParameterDefinition('token', []),
    'subject': SearchParameterDefinition('reference', []),
  },
  'DeviceDefinition': {
    'device-name': SearchParameterDefinition('string', []),
    'has-part': SearchParameterDefinition('reference', []),
    'identifier': SearchParameterDefinition('token', []),
    'manufacturer': SearchParameterDefinition('reference', []),
    'model-number': SearchParameterDefinition('token', []),
    'part-number': SearchParameterDefinition('string', []),
    'publisher': SearchParameterDefinition('string', []),
    'specification': SearchParameterDefinition('token', []),
    'specification-version': SearchParameterDefinition('composite', [],
        components: [
          SearchComponent('token', r'specification'),
          SearchComponent('token', r'version')
        ]),
    'type': SearchParameterDefinition('token', []),
    'url': SearchParameterDefinition('uri', []),
    'version': SearchParameterDefinition('token', []),
  },
  'DeviceDispense': {
    'code': SearchParameterDefinition('token', []),
    'identifier': SearchParameterDefinition('token', []),
    'patient': SearchParameterDefinition('reference', []),
    'status': SearchParameterDefinition('token', []),
    'subject': SearchParameterDefinition('reference', []),
  },
  'DeviceMetric': {
    'category': SearchParameterDefinition('token', []),
    'device': SearchParameterDefinition('reference', []),
    'identifier': SearchParameterDefinition('token', []),
    'type': SearchParameterDefinition('token', []),
  },
  'DeviceRequest': {
    'authored-on': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'based-on': SearchParameterDefinition('reference', []),
    'code': SearchParameterDefinition('token', []),
    'device': SearchParameterDefinition('reference', []),
    'encounter': SearchParameterDefinition('reference', []),
    'event-date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'group-identifier': SearchParameterDefinition('token', []),
    'identifier': SearchParameterDefinition('token', []),
    'instantiates-canonical': SearchParameterDefinition('reference', []),
    'instantiates-uri': SearchParameterDefinition('uri', []),
    'insurance': SearchParameterDefinition('reference', []),
    'intent': SearchParameterDefinition('token', []),
    'patient': SearchParameterDefinition('reference', []),
    'performer': SearchParameterDefinition('reference', []),
    'performer-code': SearchParameterDefinition('token', []),
    'prior-request': SearchParameterDefinition('reference', []),
    'requester': SearchParameterDefinition('reference', []),
    'status': SearchParameterDefinition('token', []),
    'subject': SearchParameterDefinition('reference', []),
  },
  'DeviceUsage': {
    'device': SearchParameterDefinition('token', []),
    'identifier': SearchParameterDefinition('token', []),
    'patient': SearchParameterDefinition('reference', []),
    'status': SearchParameterDefinition('token', []),
  },
  'DiagnosticReport': {
    'based-on': SearchParameterDefinition('reference', []),
    'category': SearchParameterDefinition('token', []),
    'code': SearchParameterDefinition('token', []),
    'conclusioncode-code': SearchParameterDefinition('token', []),
    'conclusioncode-reference': SearchParameterDefinition('reference', []),
    'date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'encounter': SearchParameterDefinition('reference', []),
    'identifier': SearchParameterDefinition('token', []),
    'issued': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'media': SearchParameterDefinition('reference', []),
    'patient': SearchParameterDefinition('reference', []),
    'performer': SearchParameterDefinition('reference', []),
    'procedure': SearchParameterDefinition('reference', []),
    'result': SearchParameterDefinition('reference', []),
    'results-interpreter': SearchParameterDefinition('reference', []),
    'specimen': SearchParameterDefinition('reference', []),
    'status': SearchParameterDefinition('token', []),
    'study': SearchParameterDefinition('reference', []),
    'subject': SearchParameterDefinition('reference', []),
  },
  'DocumentReference': {
    'attester': SearchParameterDefinition('reference', []),
    'author': SearchParameterDefinition('reference', []),
    'based-on': SearchParameterDefinition('reference', []),
    'bodysite': SearchParameterDefinition('token', []),
    'bodysite-reference': SearchParameterDefinition('reference', []),
    'category': SearchParameterDefinition('token', []),
    'contenttype': SearchParameterDefinition('token', [], mime: true),
    'context': SearchParameterDefinition('reference', []),
    'creation': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'custodian': SearchParameterDefinition('reference', []),
    'date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'description': SearchParameterDefinition('string', []),
    'doc-status': SearchParameterDefinition('token', []),
    'event-code': SearchParameterDefinition('token', []),
    'event-reference': SearchParameterDefinition('reference', []),
    'facility': SearchParameterDefinition('token', []),
    'format-canonical': SearchParameterDefinition('uri', []),
    'format-code': SearchParameterDefinition('token', []),
    'format-uri': SearchParameterDefinition('uri', []),
    'identifier': SearchParameterDefinition('token', []),
    'language': SearchParameterDefinition('token', []),
    'location': SearchParameterDefinition('uri', []),
    'modality': SearchParameterDefinition('token', []),
    'patient': SearchParameterDefinition('reference', []),
    'period': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'related': SearchParameterDefinition('reference', []),
    'relatesto': SearchParameterDefinition('reference', []),
    'relation': SearchParameterDefinition('token', []),
    'relationship': SearchParameterDefinition('composite', [], components: [
      SearchComponent('reference', r'target'),
      SearchComponent('token', r'code')
    ]),
    'security-label': SearchParameterDefinition('token', []),
    'setting': SearchParameterDefinition('token', []),
    'status': SearchParameterDefinition('token', []),
    'subject': SearchParameterDefinition('reference', []),
    'type': SearchParameterDefinition('token', []),
    'version': SearchParameterDefinition('string', []),
  },
  'DomainResource': {
    '_text': SearchParameterDefinition('special', []),
  },
  'Encounter': {
    'account': SearchParameterDefinition('reference', []),
    'appointment': SearchParameterDefinition('reference', []),
    'based-on': SearchParameterDefinition('reference', []),
    'careteam': SearchParameterDefinition('reference', []),
    'class': SearchParameterDefinition('token', []),
    'date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'date-start': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'diagnosis-code': SearchParameterDefinition('token', []),
    'diagnosis-reference': SearchParameterDefinition('reference', []),
    'end-date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'episode-of-care': SearchParameterDefinition('reference', []),
    'identifier': SearchParameterDefinition('token', []),
    'length': SearchParameterDefinition(
        'quantity', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'location': SearchParameterDefinition('reference', []),
    'location-period': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'location-value-period': SearchParameterDefinition('composite', [],
        components: [
          SearchComponent('reference', r'location'),
          SearchComponent('date', r'period')
        ]),
    'part-of': SearchParameterDefinition('reference', []),
    'participant': SearchParameterDefinition('reference', []),
    'participant-type': SearchParameterDefinition('token', []),
    'patient': SearchParameterDefinition('reference', []),
    'practitioner': SearchParameterDefinition('reference', []),
    'reason-code': SearchParameterDefinition('token', []),
    'reason-reference': SearchParameterDefinition('reference', []),
    'service-provider': SearchParameterDefinition('reference', []),
    'special-arrangement': SearchParameterDefinition('token', []),
    'status': SearchParameterDefinition('token', []),
    'subject': SearchParameterDefinition('reference', []),
    'subject-status': SearchParameterDefinition('token', []),
    'type': SearchParameterDefinition('token', []),
  },
  'EncounterHistory': {
    'encounter': SearchParameterDefinition('reference', []),
    'identifier': SearchParameterDefinition('token', []),
    'patient': SearchParameterDefinition('reference', []),
    'status': SearchParameterDefinition('token', []),
    'subject': SearchParameterDefinition('reference', []),
  },
  'Endpoint': {
    'connection-type': SearchParameterDefinition('token', []),
    'identifier': SearchParameterDefinition('token', []),
    'name': SearchParameterDefinition('string', []),
    'organization': SearchParameterDefinition('reference', []),
    'payload-type': SearchParameterDefinition('token', []),
    'status': SearchParameterDefinition('token', []),
  },
  'EnrollmentRequest': {
    'identifier': SearchParameterDefinition('token', []),
    'patient': SearchParameterDefinition('reference', []),
    'status': SearchParameterDefinition('token', []),
    'subject': SearchParameterDefinition('reference', []),
  },
  'EnrollmentResponse': {
    'identifier': SearchParameterDefinition('token', []),
    'request': SearchParameterDefinition('reference', []),
    'status': SearchParameterDefinition('token', []),
  },
  'EpisodeOfCare': {
    'care-manager': SearchParameterDefinition('reference', []),
    'date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'diagnosis-code': SearchParameterDefinition('token', []),
    'diagnosis-reference': SearchParameterDefinition('reference', []),
    'identifier': SearchParameterDefinition('token', []),
    'incoming-referral': SearchParameterDefinition('reference', []),
    'organization': SearchParameterDefinition('reference', []),
    'patient': SearchParameterDefinition('reference', []),
    'reason-code': SearchParameterDefinition('token', []),
    'reason-reference': SearchParameterDefinition('reference', []),
    'status': SearchParameterDefinition('token', []),
    'subject': SearchParameterDefinition('reference', []),
    'type': SearchParameterDefinition('token', []),
  },
  'EventDefinition': {
    'composed-of': SearchParameterDefinition('reference', []),
    'context': SearchParameterDefinition('token', []),
    'context-quantity': SearchParameterDefinition(
        'quantity', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'context-type': SearchParameterDefinition('token', []),
    'context-type-quantity':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent(
          'quantity', r'value.ofType(Quantity) | value.ofType(Range)')
    ]),
    'context-type-value':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent('token', r'value.ofType(CodeableConcept)')
    ]),
    'date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'depends-on': SearchParameterDefinition('reference', []),
    'derived-from': SearchParameterDefinition('reference', []),
    'description': SearchParameterDefinition('string', []),
    'effective': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'identifier': SearchParameterDefinition('token', []),
    'jurisdiction': SearchParameterDefinition('token', []),
    'name': SearchParameterDefinition('string', []),
    'predecessor': SearchParameterDefinition('reference', []),
    'publisher': SearchParameterDefinition('string', []),
    'status': SearchParameterDefinition('token', []),
    'successor': SearchParameterDefinition('reference', []),
    'title': SearchParameterDefinition('string', []),
    'topic': SearchParameterDefinition('token', []),
    'url': SearchParameterDefinition('uri', []),
    'version': SearchParameterDefinition('token', []),
  },
  'Evidence': {
    'context': SearchParameterDefinition('token', []),
    'context-quantity': SearchParameterDefinition(
        'quantity', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'context-type': SearchParameterDefinition('token', []),
    'context-type-quantity':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent(
          'quantity', r'value.ofType(Quantity) | value.ofType(Range)')
    ]),
    'context-type-value':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent('token', r'value.ofType(CodeableConcept)')
    ]),
    'date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'description': SearchParameterDefinition('string', []),
    'identifier': SearchParameterDefinition('token', []),
    'publisher': SearchParameterDefinition('string', []),
    'status': SearchParameterDefinition('token', []),
    'title': SearchParameterDefinition('string', []),
    'url': SearchParameterDefinition('uri', []),
    'version': SearchParameterDefinition('token', []),
  },
  'EvidenceVariable': {
    'context': SearchParameterDefinition('token', []),
    'context-quantity': SearchParameterDefinition(
        'quantity', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'context-type': SearchParameterDefinition('token', []),
    'context-type-quantity':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent(
          'quantity', r'value.ofType(Quantity) | value.ofType(Range)')
    ]),
    'context-type-value':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent('token', r'value.ofType(CodeableConcept)')
    ]),
    'date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'description': SearchParameterDefinition('string', []),
    'identifier': SearchParameterDefinition('token', []),
    'name': SearchParameterDefinition('string', []),
    'publisher': SearchParameterDefinition('string', []),
    'status': SearchParameterDefinition('token', []),
    'title': SearchParameterDefinition('string', []),
    'topic': SearchParameterDefinition('token', []),
    'url': SearchParameterDefinition('uri', []),
    'version': SearchParameterDefinition('token', []),
  },
  'ExampleScenario': {
    'context': SearchParameterDefinition('token', []),
    'context-quantity': SearchParameterDefinition(
        'quantity', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'context-type': SearchParameterDefinition('token', []),
    'context-type-quantity':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent(
          'quantity', r'value.ofType(Quantity) | value.ofType(Range)')
    ]),
    'context-type-value':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent('token', r'value.ofType(CodeableConcept)')
    ]),
    'date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'identifier': SearchParameterDefinition('token', []),
    'jurisdiction': SearchParameterDefinition('token', []),
    'name': SearchParameterDefinition('string', []),
    'publisher': SearchParameterDefinition('string', []),
    'status': SearchParameterDefinition('token', []),
    'url': SearchParameterDefinition('uri', []),
    'version': SearchParameterDefinition('token', []),
  },
  'ExplanationOfBenefit': {
    'care-team': SearchParameterDefinition('reference', []),
    'claim': SearchParameterDefinition('reference', []),
    'coverage': SearchParameterDefinition('reference', []),
    'created': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'detail-udi': SearchParameterDefinition('reference', []),
    'disposition': SearchParameterDefinition('string', []),
    'encounter': SearchParameterDefinition('reference', []),
    'enterer': SearchParameterDefinition('reference', []),
    'facility': SearchParameterDefinition('reference', []),
    'identifier': SearchParameterDefinition('token', []),
    'item-udi': SearchParameterDefinition('reference', []),
    'patient': SearchParameterDefinition('reference', []),
    'payee': SearchParameterDefinition('reference', []),
    'procedure-udi': SearchParameterDefinition('reference', []),
    'provider': SearchParameterDefinition('reference', []),
    'status': SearchParameterDefinition('token', []),
    'subdetail-udi': SearchParameterDefinition('reference', []),
  },
  'FamilyMemberHistory': {
    'code': SearchParameterDefinition('token', []),
    'date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'identifier': SearchParameterDefinition('token', []),
    'patient': SearchParameterDefinition('reference', []),
    'relationship': SearchParameterDefinition('token', []),
    'sex': SearchParameterDefinition('token', []),
    'status': SearchParameterDefinition('token', []),
  },
  'Flag': {
    'author': SearchParameterDefinition('reference', []),
    'category': SearchParameterDefinition('token', []),
    'date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'encounter': SearchParameterDefinition('reference', []),
    'identifier': SearchParameterDefinition('token', []),
    'patient': SearchParameterDefinition('reference', []),
    'status': SearchParameterDefinition('token', []),
    'subject': SearchParameterDefinition('reference', []),
  },
  'FormularyItem': {
    'code': SearchParameterDefinition('token', []),
    'identifier': SearchParameterDefinition('token', []),
  },
  'GenomicStudy': {
    'focus': SearchParameterDefinition('reference', []),
    'identifier': SearchParameterDefinition('token', []),
    'patient': SearchParameterDefinition('reference', []),
    'status': SearchParameterDefinition('token', []),
    'subject': SearchParameterDefinition('reference', []),
  },
  'Goal': {
    'achievement-status': SearchParameterDefinition('token', []),
    'addresses': SearchParameterDefinition('reference', []),
    'category': SearchParameterDefinition('token', []),
    'description': SearchParameterDefinition('token', []),
    'identifier': SearchParameterDefinition('token', []),
    'lifecycle-status': SearchParameterDefinition('token', []),
    'patient': SearchParameterDefinition('reference', []),
    'start-date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'subject': SearchParameterDefinition('reference', []),
    'target-date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'target-measure': SearchParameterDefinition('token', []),
  },
  'GraphDefinition': {
    'context': SearchParameterDefinition('token', []),
    'context-quantity': SearchParameterDefinition(
        'quantity', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'context-type': SearchParameterDefinition('token', []),
    'context-type-quantity':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent(
          'quantity', r'value.ofType(Quantity) | value.ofType(Range)')
    ]),
    'context-type-value':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent('token', r'value.ofType(CodeableConcept)')
    ]),
    'date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'description': SearchParameterDefinition('string', []),
    'identifier': SearchParameterDefinition('token', []),
    'jurisdiction': SearchParameterDefinition('token', []),
    'name': SearchParameterDefinition('string', []),
    'publisher': SearchParameterDefinition('string', []),
    'start': SearchParameterDefinition('token', []),
    'status': SearchParameterDefinition('token', []),
    'url': SearchParameterDefinition('uri', []),
    'version': SearchParameterDefinition('token', []),
  },
  'Group': {
    'characteristic': SearchParameterDefinition('token', []),
    'characteristic-reference': SearchParameterDefinition('reference', []),
    'characteristic-value':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent(
          'token', r'(value.ofType(CodeableConcept)) | (value.ofType(boolean))')
    ]),
    'code': SearchParameterDefinition('token', []),
    'exclude': SearchParameterDefinition('token', []),
    'identifier': SearchParameterDefinition('token', []),
    'managing-entity': SearchParameterDefinition('reference', []),
    'member': SearchParameterDefinition('reference', []),
    'membership': SearchParameterDefinition('token', []),
    'name': SearchParameterDefinition('string', []),
    'status': SearchParameterDefinition('token', []),
    'type': SearchParameterDefinition('token', []),
    'url': SearchParameterDefinition('uri', []),
    'value': SearchParameterDefinition('token', []),
  },
  'GuidanceResponse': {
    'identifier': SearchParameterDefinition('token', []),
    'patient': SearchParameterDefinition('reference', []),
    'request': SearchParameterDefinition('token', []),
    'status': SearchParameterDefinition('token', []),
    'subject': SearchParameterDefinition('reference', []),
  },
  'HealthcareService': {
    'active': SearchParameterDefinition('token', []),
    'characteristic': SearchParameterDefinition('token', []),
    'communication': SearchParameterDefinition('token', []),
    'coverage-area': SearchParameterDefinition('reference', []),
    'eligibility': SearchParameterDefinition('token', []),
    'endpoint': SearchParameterDefinition('reference', []),
    'identifier': SearchParameterDefinition('token', []),
    'location': SearchParameterDefinition('reference', []),
    'name': SearchParameterDefinition('string', []),
    'offered-in': SearchParameterDefinition('reference', []),
    'organization': SearchParameterDefinition('reference', []),
    'program': SearchParameterDefinition('token', []),
    'service-category': SearchParameterDefinition('token', []),
    'service-type': SearchParameterDefinition('token', []),
    'specialty': SearchParameterDefinition('token', []),
  },
  'ImagingSelection': {
    'based-on': SearchParameterDefinition('reference', []),
    'body-site': SearchParameterDefinition('token', []),
    'body-structure': SearchParameterDefinition('reference', []),
    'category': SearchParameterDefinition('token', []),
    'code': SearchParameterDefinition('token', []),
    'derived-from': SearchParameterDefinition('reference', []),
    'identifier': SearchParameterDefinition('token', []),
    'issued': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'patient': SearchParameterDefinition('reference', []),
    'status': SearchParameterDefinition('token', []),
    'study-uid': SearchParameterDefinition('token', []),
    'subject': SearchParameterDefinition('reference', []),
  },
  'ImagingStudy': {
    'based-on': SearchParameterDefinition('reference', []),
    'body-site': SearchParameterDefinition('token', []),
    'body-structure': SearchParameterDefinition('reference', []),
    'dicom-class': SearchParameterDefinition('uri', []),
    'encounter': SearchParameterDefinition('reference', []),
    'endpoint': SearchParameterDefinition('reference', []),
    'identifier': SearchParameterDefinition('token', []),
    'instance': SearchParameterDefinition('token', []),
    'modality': SearchParameterDefinition('token', []),
    'patient': SearchParameterDefinition('reference', []),
    'performer': SearchParameterDefinition('reference', []),
    'reason-concept': SearchParameterDefinition('token', []),
    'reason-reference': SearchParameterDefinition('reference', []),
    'referrer': SearchParameterDefinition('reference', []),
    'series': SearchParameterDefinition('token', []),
    'started': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'status': SearchParameterDefinition('token', []),
    'subject': SearchParameterDefinition('reference', []),
  },
  'Immunization': {
    'date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'encounter': SearchParameterDefinition('reference', []),
    'identifier': SearchParameterDefinition('token', []),
    'location': SearchParameterDefinition('reference', []),
    'lot-number': SearchParameterDefinition('string', []),
    'manufacturer': SearchParameterDefinition('reference', []),
    'patient': SearchParameterDefinition('reference', []),
    'performer': SearchParameterDefinition('reference', []),
    'reaction': SearchParameterDefinition('reference', []),
    'reaction-date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'reason-code': SearchParameterDefinition('token', []),
    'reason-reference': SearchParameterDefinition('reference', []),
    'series': SearchParameterDefinition('string', []),
    'status': SearchParameterDefinition('token', []),
    'status-reason': SearchParameterDefinition('token', []),
    'target-disease': SearchParameterDefinition('token', []),
    'vaccine-code': SearchParameterDefinition('token', []),
  },
  'ImmunizationEvaluation': {
    'date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'dose-status': SearchParameterDefinition('token', []),
    'identifier': SearchParameterDefinition('token', []),
    'immunization-event': SearchParameterDefinition('reference', []),
    'patient': SearchParameterDefinition('reference', []),
    'status': SearchParameterDefinition('token', []),
    'target-disease': SearchParameterDefinition('token', []),
  },
  'ImmunizationRecommendation': {
    'date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'identifier': SearchParameterDefinition('token', []),
    'information': SearchParameterDefinition('reference', []),
    'patient': SearchParameterDefinition('reference', []),
    'status': SearchParameterDefinition('token', []),
    'support': SearchParameterDefinition('reference', []),
    'target-disease': SearchParameterDefinition('token', []),
    'vaccine-type': SearchParameterDefinition('token', []),
  },
  'ImplementationGuide': {
    'context': SearchParameterDefinition('token', []),
    'context-quantity': SearchParameterDefinition(
        'quantity', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'context-type': SearchParameterDefinition('token', []),
    'context-type-quantity':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent(
          'quantity', r'value.ofType(Quantity) | value.ofType(Range)')
    ]),
    'context-type-value':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent('token', r'value.ofType(CodeableConcept)')
    ]),
    'date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'depends-on': SearchParameterDefinition('reference', []),
    'description': SearchParameterDefinition('string', []),
    'experimental': SearchParameterDefinition('token', []),
    'global': SearchParameterDefinition('reference', []),
    'identifier': SearchParameterDefinition('token', []),
    'jurisdiction': SearchParameterDefinition('token', []),
    'name': SearchParameterDefinition('string', []),
    'publisher': SearchParameterDefinition('string', []),
    'resource': SearchParameterDefinition('reference', []),
    'status': SearchParameterDefinition('token', []),
    'title': SearchParameterDefinition('string', []),
    'url': SearchParameterDefinition('uri', []),
    'version': SearchParameterDefinition('token', []),
  },
  'Ingredient': {
    'for': SearchParameterDefinition('reference', []),
    'function': SearchParameterDefinition('token', []),
    'identifier': SearchParameterDefinition('token', []),
    'manufacturer': SearchParameterDefinition('reference', []),
    'role': SearchParameterDefinition('token', []),
    'status': SearchParameterDefinition('token', []),
    'strength-concentration-denominator': SearchParameterDefinition(
        'quantity', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'strength-concentration-numerator': SearchParameterDefinition(
        'quantity', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'strength-concentration-quantity': SearchParameterDefinition(
        'quantity', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'strength-presentation-denominator': SearchParameterDefinition(
        'quantity', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'strength-presentation-numerator': SearchParameterDefinition(
        'quantity', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'strength-presentation-quantity': SearchParameterDefinition(
        'quantity', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'substance': SearchParameterDefinition('reference', []),
    'substance-code': SearchParameterDefinition('token', []),
    'substance-definition': SearchParameterDefinition('reference', []),
  },
  'InsurancePlan': {
    'coverage-area': SearchParameterDefinition('reference', []),
    'identifier': SearchParameterDefinition('token', []),
    'network': SearchParameterDefinition('reference', []),
    'product': SearchParameterDefinition('reference', []),
    'type': SearchParameterDefinition('token', []),
  },
  'InventoryItem': {
    'code': SearchParameterDefinition('token', []),
    'identifier': SearchParameterDefinition('token', []),
    'status': SearchParameterDefinition('token', []),
    'subject': SearchParameterDefinition('reference', []),
  },
  'InventoryReport': {
    'identifier': SearchParameterDefinition('token', []),
    'item': SearchParameterDefinition('token', []),
    'item-reference': SearchParameterDefinition('reference', []),
    'status': SearchParameterDefinition('token', []),
  },
  'Invoice': {
    'account': SearchParameterDefinition('reference', []),
    'date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'identifier': SearchParameterDefinition('token', []),
    'issuer': SearchParameterDefinition('reference', []),
    'participant': SearchParameterDefinition('reference', []),
    'participant-role': SearchParameterDefinition('token', []),
    'patient': SearchParameterDefinition('reference', []),
    'recipient': SearchParameterDefinition('reference', []),
    'status': SearchParameterDefinition('token', []),
    'subject': SearchParameterDefinition('reference', []),
    'totalgross': SearchParameterDefinition(
        'quantity', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'totalnet': SearchParameterDefinition(
        'quantity', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'type': SearchParameterDefinition('token', []),
  },
  'Library': {
    'composed-of': SearchParameterDefinition('reference', []),
    'content-type': SearchParameterDefinition('token', [], mime: true),
    'context': SearchParameterDefinition('token', []),
    'context-quantity': SearchParameterDefinition(
        'quantity', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'context-type': SearchParameterDefinition('token', []),
    'context-type-quantity':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent(
          'quantity', r'value.ofType(Quantity) | value.ofType(Range)')
    ]),
    'context-type-value':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent('token', r'value.ofType(CodeableConcept)')
    ]),
    'date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'depends-on': SearchParameterDefinition('reference', []),
    'derived-from': SearchParameterDefinition('reference', []),
    'description': SearchParameterDefinition('string', []),
    'effective': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'identifier': SearchParameterDefinition('token', []),
    'jurisdiction': SearchParameterDefinition('token', []),
    'name': SearchParameterDefinition('string', []),
    'predecessor': SearchParameterDefinition('reference', []),
    'publisher': SearchParameterDefinition('string', []),
    'status': SearchParameterDefinition('token', []),
    'subject-canonical': SearchParameterDefinition('reference', []),
    'subject-code': SearchParameterDefinition('token', []),
    'subject-reference': SearchParameterDefinition('reference', []),
    'successor': SearchParameterDefinition('reference', []),
    'title': SearchParameterDefinition('string', []),
    'topic': SearchParameterDefinition('token', []),
    'type': SearchParameterDefinition('token', []),
    'url': SearchParameterDefinition('uri', []),
    'version': SearchParameterDefinition('token', []),
  },
  'Linkage': {
    'author': SearchParameterDefinition('reference', []),
    'item': SearchParameterDefinition('reference', []),
    'source': SearchParameterDefinition('reference', []),
  },
  'List': {
    'code': SearchParameterDefinition('token', []),
    'date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'empty-reason': SearchParameterDefinition('token', []),
    'encounter': SearchParameterDefinition('reference', []),
    'identifier': SearchParameterDefinition('token', []),
    'item': SearchParameterDefinition('reference', []),
    'notes': SearchParameterDefinition('string', []),
    'patient': SearchParameterDefinition('reference', []),
    'source': SearchParameterDefinition('reference', []),
    'status': SearchParameterDefinition('token', []),
    'subject': SearchParameterDefinition('reference', []),
    'title': SearchParameterDefinition('string', []),
  },
  'Location': {
    'address': SearchParameterDefinition('string', []),
    'address-city': SearchParameterDefinition('string', []),
    'address-country': SearchParameterDefinition('string', []),
    'address-postalcode': SearchParameterDefinition('string', []),
    'address-state': SearchParameterDefinition('string', []),
    'address-use': SearchParameterDefinition('token', []),
    'characteristic': SearchParameterDefinition('token', []),
    'contains': SearchParameterDefinition('special', []),
    'endpoint': SearchParameterDefinition('reference', []),
    'identifier': SearchParameterDefinition('token', []),
    'mode': SearchParameterDefinition('token', []),
    'name': SearchParameterDefinition('string', []),
    'near': SearchParameterDefinition('special', []),
    'operational-status': SearchParameterDefinition('token', []),
    'organization': SearchParameterDefinition('reference', []),
    'partof': SearchParameterDefinition('reference', []),
    'status': SearchParameterDefinition('token', []),
    'type': SearchParameterDefinition('token', []),
  },
  'ManufacturedItemDefinition': {
    'dose-form': SearchParameterDefinition('token', []),
    'identifier': SearchParameterDefinition('token', []),
    'ingredient': SearchParameterDefinition('token', []),
    'name': SearchParameterDefinition('token', []),
    'status': SearchParameterDefinition('token', []),
  },
  'Measure': {
    'composed-of': SearchParameterDefinition('reference', []),
    'context': SearchParameterDefinition('token', []),
    'context-quantity': SearchParameterDefinition(
        'quantity', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'context-type': SearchParameterDefinition('token', []),
    'context-type-quantity':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent(
          'quantity', r'value.ofType(Quantity) | value.ofType(Range)')
    ]),
    'context-type-value':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent('token', r'value.ofType(CodeableConcept)')
    ]),
    'date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'depends-on': SearchParameterDefinition('reference', []),
    'derived-from': SearchParameterDefinition('reference', []),
    'description': SearchParameterDefinition('string', []),
    'effective': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'identifier': SearchParameterDefinition('token', []),
    'jurisdiction': SearchParameterDefinition('token', []),
    'name': SearchParameterDefinition('string', []),
    'predecessor': SearchParameterDefinition('reference', []),
    'publisher': SearchParameterDefinition('string', []),
    'status': SearchParameterDefinition('token', []),
    'subject-canonical': SearchParameterDefinition('reference', []),
    'subject-code': SearchParameterDefinition('token', []),
    'subject-reference': SearchParameterDefinition('reference', []),
    'successor': SearchParameterDefinition('reference', []),
    'title': SearchParameterDefinition('string', []),
    'topic': SearchParameterDefinition('token', []),
    'url': SearchParameterDefinition('uri', []),
    'version': SearchParameterDefinition('token', []),
  },
  'MeasureReport': {
    'date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'evaluated-resource': SearchParameterDefinition('reference', []),
    'identifier': SearchParameterDefinition('token', []),
    'location': SearchParameterDefinition('reference', []),
    'measure': SearchParameterDefinition('reference', []),
    'patient': SearchParameterDefinition('reference', []),
    'period': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'reporter': SearchParameterDefinition('reference', []),
    'status': SearchParameterDefinition('token', []),
    'subject': SearchParameterDefinition('reference', []),
  },
  'Medication': {
    'code': SearchParameterDefinition('token', []),
    'expiration-date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'form': SearchParameterDefinition('token', []),
    'identifier': SearchParameterDefinition('token', []),
    'ingredient': SearchParameterDefinition('reference', []),
    'ingredient-code': SearchParameterDefinition('token', []),
    'lot-number': SearchParameterDefinition('token', []),
    'marketingauthorizationholder': SearchParameterDefinition('reference', []),
    'serial-number': SearchParameterDefinition('token', []),
    'status': SearchParameterDefinition('token', []),
  },
  'MedicationAdministration': {
    'code': SearchParameterDefinition('token', []),
    'date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'device': SearchParameterDefinition('reference', []),
    'encounter': SearchParameterDefinition('reference', []),
    'identifier': SearchParameterDefinition('token', []),
    'medication': SearchParameterDefinition('reference', []),
    'patient': SearchParameterDefinition('reference', []),
    'performer': SearchParameterDefinition('reference', []),
    'performer-device-code': SearchParameterDefinition('token', []),
    'reason-given': SearchParameterDefinition('reference', []),
    'reason-given-code': SearchParameterDefinition('token', []),
    'reason-not-given': SearchParameterDefinition('token', []),
    'request': SearchParameterDefinition('reference', []),
    'status': SearchParameterDefinition('token', []),
    'subject': SearchParameterDefinition('reference', []),
  },
  'MedicationDispense': {
    'code': SearchParameterDefinition('token', []),
    'destination': SearchParameterDefinition('reference', []),
    'encounter': SearchParameterDefinition('reference', []),
    'identifier': SearchParameterDefinition('token', []),
    'location': SearchParameterDefinition('reference', []),
    'medication': SearchParameterDefinition('reference', []),
    'patient': SearchParameterDefinition('reference', []),
    'performer': SearchParameterDefinition('reference', []),
    'prescription': SearchParameterDefinition('reference', []),
    'receiver': SearchParameterDefinition('reference', []),
    'recorded': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'responsibleparty': SearchParameterDefinition('reference', []),
    'status': SearchParameterDefinition('token', []),
    'subject': SearchParameterDefinition('reference', []),
    'type': SearchParameterDefinition('token', []),
    'whenhandedover': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'whenprepared': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
  },
  'MedicationKnowledge': {
    'classification': SearchParameterDefinition('token', []),
    'classification-type': SearchParameterDefinition('token', []),
    'code': SearchParameterDefinition('token', []),
    'doseform': SearchParameterDefinition('token', []),
    'identifier': SearchParameterDefinition('token', []),
    'ingredient': SearchParameterDefinition('reference', []),
    'ingredient-code': SearchParameterDefinition('token', []),
    'monitoring-program-name': SearchParameterDefinition('token', []),
    'monitoring-program-type': SearchParameterDefinition('token', []),
    'monograph': SearchParameterDefinition('reference', []),
    'monograph-type': SearchParameterDefinition('token', []),
    'packaging-cost': SearchParameterDefinition(
        'quantity', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'packaging-cost-concept': SearchParameterDefinition('token', []),
    'product-type': SearchParameterDefinition('token', []),
    'source-cost': SearchParameterDefinition('token', []),
    'status': SearchParameterDefinition('token', []),
  },
  'MedicationRequest': {
    'authoredon': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'category': SearchParameterDefinition('token', []),
    'code': SearchParameterDefinition('token', []),
    'combo-date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'encounter': SearchParameterDefinition('reference', []),
    'group-identifier': SearchParameterDefinition('token', []),
    'group-or-identifier': SearchParameterDefinition('token', []),
    'identifier': SearchParameterDefinition('token', []),
    'intended-dispenser': SearchParameterDefinition('reference', []),
    'intended-performer': SearchParameterDefinition('reference', []),
    'intended-performertype': SearchParameterDefinition('token', []),
    'intent': SearchParameterDefinition('token', []),
    'medication': SearchParameterDefinition('reference', []),
    'patient': SearchParameterDefinition('reference', []),
    'priority': SearchParameterDefinition('token', []),
    'requester': SearchParameterDefinition('reference', []),
    'status': SearchParameterDefinition('token', []),
    'subject': SearchParameterDefinition('reference', []),
  },
  'MedicationStatement': {
    'adherence': SearchParameterDefinition('token', []),
    'category': SearchParameterDefinition('token', []),
    'code': SearchParameterDefinition('token', []),
    'effective': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'encounter': SearchParameterDefinition('reference', []),
    'identifier': SearchParameterDefinition('token', []),
    'medication': SearchParameterDefinition('reference', []),
    'patient': SearchParameterDefinition('reference', []),
    'source': SearchParameterDefinition('reference', []),
    'status': SearchParameterDefinition('token', []),
    'subject': SearchParameterDefinition('reference', []),
  },
  'MedicinalProductDefinition': {
    'characteristic': SearchParameterDefinition('token', []),
    'characteristic-type': SearchParameterDefinition('token', []),
    'contact': SearchParameterDefinition('reference', []),
    'domain': SearchParameterDefinition('token', []),
    'identifier': SearchParameterDefinition('token', []),
    'ingredient': SearchParameterDefinition('token', []),
    'master-file': SearchParameterDefinition('reference', []),
    'name': SearchParameterDefinition('string', []),
    'name-language': SearchParameterDefinition('token', []),
    'product-classification': SearchParameterDefinition('token', []),
    'status': SearchParameterDefinition('token', []),
    'type': SearchParameterDefinition('token', []),
  },
  'MessageDefinition': {
    'category': SearchParameterDefinition('token', []),
    'context': SearchParameterDefinition('token', []),
    'context-quantity': SearchParameterDefinition(
        'quantity', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'context-type': SearchParameterDefinition('token', []),
    'context-type-quantity':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent(
          'quantity', r'value.ofType(Quantity) | value.ofType(Range)')
    ]),
    'context-type-value':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent('token', r'value.ofType(CodeableConcept)')
    ]),
    'date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'description': SearchParameterDefinition('string', []),
    'event': SearchParameterDefinition('token', []),
    'focus': SearchParameterDefinition('token', []),
    'identifier': SearchParameterDefinition('token', []),
    'jurisdiction': SearchParameterDefinition('token', []),
    'name': SearchParameterDefinition('string', []),
    'publisher': SearchParameterDefinition('string', []),
    'status': SearchParameterDefinition('token', []),
    'title': SearchParameterDefinition('string', []),
    'url': SearchParameterDefinition('uri', []),
    'version': SearchParameterDefinition('token', []),
  },
  'MessageHeader': {
    'code': SearchParameterDefinition('token', []),
    'destination': SearchParameterDefinition('string', []),
    'event': SearchParameterDefinition('token', []),
    'focus': SearchParameterDefinition('reference', []),
    'receiver': SearchParameterDefinition('reference', []),
    'response-id': SearchParameterDefinition('token', []),
    'sender': SearchParameterDefinition('reference', []),
    'source': SearchParameterDefinition('string', []),
  },
  'MolecularSequence': {
    'identifier': SearchParameterDefinition('token', []),
    'type': SearchParameterDefinition('token', []),
  },
  'NamingSystem': {
    'contact': SearchParameterDefinition('string', []),
    'context': SearchParameterDefinition('token', []),
    'context-quantity': SearchParameterDefinition(
        'quantity', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'context-type': SearchParameterDefinition('token', []),
    'context-type-quantity':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent(
          'quantity', r'value.ofType(Quantity) | value.ofType(Range)')
    ]),
    'context-type-value':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent('token', r'value.ofType(CodeableConcept)')
    ]),
    'date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'derived-from': SearchParameterDefinition('reference', []),
    'description': SearchParameterDefinition('string', []),
    'effective': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'id-type': SearchParameterDefinition('token', []),
    'identifier': SearchParameterDefinition('token', []),
    'jurisdiction': SearchParameterDefinition('token', []),
    'kind': SearchParameterDefinition('token', []),
    'name': SearchParameterDefinition('string', []),
    'period': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'predecessor': SearchParameterDefinition('reference', []),
    'publisher': SearchParameterDefinition('string', []),
    'responsible': SearchParameterDefinition('string', []),
    'status': SearchParameterDefinition('token', []),
    'telecom': SearchParameterDefinition('token', []),
    'topic': SearchParameterDefinition('token', []),
    'type': SearchParameterDefinition('token', []),
    'url': SearchParameterDefinition('uri', []),
    'value': SearchParameterDefinition('string', []),
    'version': SearchParameterDefinition('token', []),
  },
  'NutritionIntake': {
    'code': SearchParameterDefinition('token', []),
    'date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'encounter': SearchParameterDefinition('reference', []),
    'identifier': SearchParameterDefinition('token', []),
    'nutrition': SearchParameterDefinition('token', []),
    'patient': SearchParameterDefinition('reference', []),
    'source': SearchParameterDefinition('reference', []),
    'status': SearchParameterDefinition('token', []),
    'subject': SearchParameterDefinition('reference', []),
  },
  'NutritionOrder': {
    'additive': SearchParameterDefinition('token', []),
    'datetime': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'encounter': SearchParameterDefinition('reference', []),
    'formula': SearchParameterDefinition('token', []),
    'group-identifier': SearchParameterDefinition('token', []),
    'identifier': SearchParameterDefinition('token', []),
    'oraldiet': SearchParameterDefinition('token', []),
    'patient': SearchParameterDefinition('reference', []),
    'requester': SearchParameterDefinition('reference', []),
    'status': SearchParameterDefinition('token', []),
    'subject': SearchParameterDefinition('reference', []),
    'supplement': SearchParameterDefinition('token', []),
  },
  'NutritionProduct': {
    'code': SearchParameterDefinition('token', []),
    'expiration-date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'identifier': SearchParameterDefinition('token', []),
    'ingredient-item': SearchParameterDefinition('token', []),
    'lot-number': SearchParameterDefinition('token', []),
    'serial-number': SearchParameterDefinition('token', []),
    'status': SearchParameterDefinition('token', []),
  },
  'Observation': {
    'based-on': SearchParameterDefinition('reference', []),
    'category': SearchParameterDefinition('token', []),
    'code': SearchParameterDefinition('token', []),
    'code-value-concept':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent('token', r'value.ofType(CodeableConcept)')
    ]),
    'code-value-date': SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent('date', r'value.ofType(dateTime) | value.ofType(Period)')
    ]),
    'code-value-quantity':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent('quantity', r'value.ofType(Quantity)')
    ]),
    'code-value-string':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent('string', r'value.ofType(string)')
    ]),
    'combo-code': SearchParameterDefinition('token', []),
    'combo-code-value-concept':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent('token', r'value.ofType(CodeableConcept)')
    ]),
    'combo-code-value-quantity':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent('quantity', r'value.ofType(Quantity)')
    ]),
    'combo-data-absent-reason': SearchParameterDefinition('token', []),
    'combo-interpretation': SearchParameterDefinition('token', []),
    'combo-value-concept': SearchParameterDefinition('token', []),
    'combo-value-quantity': SearchParameterDefinition(
        'quantity', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'component-code': SearchParameterDefinition('token', []),
    'component-code-value-concept':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent('token', r'value.ofType(CodeableConcept)')
    ]),
    'component-code-value-quantity':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent('quantity', r'value.ofType(Quantity)')
    ]),
    'component-data-absent-reason': SearchParameterDefinition('token', []),
    'component-interpretation': SearchParameterDefinition('token', []),
    'component-value-canonical': SearchParameterDefinition('reference', []),
    'component-value-concept': SearchParameterDefinition('token', []),
    'component-value-quantity': SearchParameterDefinition(
        'quantity', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'component-value-reference': SearchParameterDefinition('reference', []),
    'data-absent-reason': SearchParameterDefinition('token', []),
    'date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'derived-from': SearchParameterDefinition('reference', []),
    'device': SearchParameterDefinition('reference', []),
    'encounter': SearchParameterDefinition('reference', []),
    'focus': SearchParameterDefinition('reference', []),
    'has-member': SearchParameterDefinition('reference', []),
    'identifier': SearchParameterDefinition('token', []),
    'instantiates-canonical': SearchParameterDefinition('uri', []),
    'instantiates-reference': SearchParameterDefinition('reference', []),
    'interpretation': SearchParameterDefinition('token', []),
    'method': SearchParameterDefinition('token', []),
    'part-of': SearchParameterDefinition('reference', []),
    'patient': SearchParameterDefinition('reference', []),
    'performer': SearchParameterDefinition('reference', []),
    'specimen': SearchParameterDefinition('reference', []),
    'status': SearchParameterDefinition('token', []),
    'subject': SearchParameterDefinition('reference', []),
    'value-canonical': SearchParameterDefinition('uri', []),
    'value-concept': SearchParameterDefinition('token', []),
    'value-date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'value-quantity': SearchParameterDefinition(
        'quantity', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'value-reference': SearchParameterDefinition('reference', []),
    'value-string': SearchParameterDefinition('string', []),
  },
  'ObservationDefinition': {
    'category': SearchParameterDefinition('token', []),
    'code': SearchParameterDefinition('token', []),
    'experimental': SearchParameterDefinition('token', []),
    'identifier': SearchParameterDefinition('token', []),
    'method': SearchParameterDefinition('token', []),
    'status': SearchParameterDefinition('token', []),
    'title': SearchParameterDefinition('string', []),
    'url': SearchParameterDefinition('uri', []),
  },
  'OperationDefinition': {
    'base': SearchParameterDefinition('reference', []),
    'code': SearchParameterDefinition('token', []),
    'context': SearchParameterDefinition('token', []),
    'context-quantity': SearchParameterDefinition(
        'quantity', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'context-type': SearchParameterDefinition('token', []),
    'context-type-quantity':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent(
          'quantity', r'value.ofType(Quantity) | value.ofType(Range)')
    ]),
    'context-type-value':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent('token', r'value.ofType(CodeableConcept)')
    ]),
    'date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'description': SearchParameterDefinition('string', []),
    'identifier': SearchParameterDefinition('token', []),
    'input-profile': SearchParameterDefinition('reference', []),
    'instance': SearchParameterDefinition('token', []),
    'jurisdiction': SearchParameterDefinition('token', []),
    'kind': SearchParameterDefinition('token', []),
    'name': SearchParameterDefinition('string', []),
    'output-profile': SearchParameterDefinition('reference', []),
    'publisher': SearchParameterDefinition('string', []),
    'status': SearchParameterDefinition('token', []),
    'system': SearchParameterDefinition('token', []),
    'title': SearchParameterDefinition('string', []),
    'type': SearchParameterDefinition('token', []),
    'url': SearchParameterDefinition('uri', []),
    'version': SearchParameterDefinition('token', []),
  },
  'Organization': {
    'active': SearchParameterDefinition('token', []),
    'address': SearchParameterDefinition('string', []),
    'address-city': SearchParameterDefinition('string', []),
    'address-country': SearchParameterDefinition('string', []),
    'address-postalcode': SearchParameterDefinition('string', []),
    'address-state': SearchParameterDefinition('string', []),
    'address-use': SearchParameterDefinition('token', []),
    'endpoint': SearchParameterDefinition('reference', []),
    'identifier': SearchParameterDefinition('token', []),
    'name': SearchParameterDefinition('string', []),
    'partof': SearchParameterDefinition('reference', []),
    'phonetic': SearchParameterDefinition('string', []),
    'type': SearchParameterDefinition('token', []),
  },
  'OrganizationAffiliation': {
    'active': SearchParameterDefinition('token', []),
    'date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'email': SearchParameterDefinition('token', []),
    'endpoint': SearchParameterDefinition('reference', []),
    'identifier': SearchParameterDefinition('token', []),
    'location': SearchParameterDefinition('reference', []),
    'network': SearchParameterDefinition('reference', []),
    'participating-organization': SearchParameterDefinition('reference', []),
    'phone': SearchParameterDefinition('token', []),
    'primary-organization': SearchParameterDefinition('reference', []),
    'role': SearchParameterDefinition('token', []),
    'service': SearchParameterDefinition('reference', []),
    'specialty': SearchParameterDefinition('token', []),
    'telecom': SearchParameterDefinition('token', []),
  },
  'PackagedProductDefinition': {
    'biological': SearchParameterDefinition('reference', []),
    'contained-item': SearchParameterDefinition('reference', []),
    'device': SearchParameterDefinition('reference', []),
    'identifier': SearchParameterDefinition('token', []),
    'manufactured-item': SearchParameterDefinition('reference', []),
    'medication': SearchParameterDefinition('reference', []),
    'name': SearchParameterDefinition('token', []),
    'nutrition': SearchParameterDefinition('reference', []),
    'package': SearchParameterDefinition('reference', []),
    'package-for': SearchParameterDefinition('reference', []),
    'status': SearchParameterDefinition('token', []),
  },
  'Patient': {
    'active': SearchParameterDefinition('token', []),
    'address': SearchParameterDefinition('string', []),
    'address-city': SearchParameterDefinition('string', []),
    'address-country': SearchParameterDefinition('string', []),
    'address-postalcode': SearchParameterDefinition('string', []),
    'address-state': SearchParameterDefinition('string', []),
    'address-use': SearchParameterDefinition('token', []),
    'birthdate': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'death-date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'deceased': SearchParameterDefinition('token', []),
    'email': SearchParameterDefinition('token', []),
    'family': SearchParameterDefinition('string', []),
    'gender': SearchParameterDefinition('token', []),
    'general-practitioner': SearchParameterDefinition('reference', []),
    'given': SearchParameterDefinition('string', []),
    'identifier': SearchParameterDefinition('token', []),
    'language': SearchParameterDefinition('token', []),
    'link': SearchParameterDefinition('reference', []),
    'name': SearchParameterDefinition('string', []),
    'organization': SearchParameterDefinition('reference', []),
    'phone': SearchParameterDefinition('token', []),
    'phonetic': SearchParameterDefinition('string', []),
    'telecom': SearchParameterDefinition('token', []),
  },
  'PaymentNotice': {
    'created': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'identifier': SearchParameterDefinition('token', []),
    'payment-status': SearchParameterDefinition('token', []),
    'reporter': SearchParameterDefinition('reference', []),
    'request': SearchParameterDefinition('reference', []),
    'response': SearchParameterDefinition('reference', []),
    'status': SearchParameterDefinition('token', []),
  },
  'PaymentReconciliation': {
    'allocation-account': SearchParameterDefinition('reference', []),
    'allocation-encounter': SearchParameterDefinition('reference', []),
    'created': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'disposition': SearchParameterDefinition('string', []),
    'identifier': SearchParameterDefinition('token', []),
    'outcome': SearchParameterDefinition('token', []),
    'payment-issuer': SearchParameterDefinition('reference', []),
    'request': SearchParameterDefinition('reference', []),
    'requestor': SearchParameterDefinition('reference', []),
    'status': SearchParameterDefinition('token', []),
  },
  'Permission': {
    'identifier': SearchParameterDefinition('token', []),
    'status': SearchParameterDefinition('token', []),
  },
  'Person': {
    'address': SearchParameterDefinition('string', []),
    'address-city': SearchParameterDefinition('string', []),
    'address-country': SearchParameterDefinition('string', []),
    'address-postalcode': SearchParameterDefinition('string', []),
    'address-state': SearchParameterDefinition('string', []),
    'address-use': SearchParameterDefinition('token', []),
    'birthdate': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'death-date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'deceased': SearchParameterDefinition('token', []),
    'email': SearchParameterDefinition('token', []),
    'family': SearchParameterDefinition('string', []),
    'gender': SearchParameterDefinition('token', []),
    'given': SearchParameterDefinition('string', []),
    'identifier': SearchParameterDefinition('token', []),
    'link': SearchParameterDefinition('reference', []),
    'name': SearchParameterDefinition('string', []),
    'organization': SearchParameterDefinition('reference', []),
    'patient': SearchParameterDefinition('reference', []),
    'phone': SearchParameterDefinition('token', []),
    'phonetic': SearchParameterDefinition('string', []),
    'practitioner': SearchParameterDefinition('reference', []),
    'relatedperson': SearchParameterDefinition('reference', []),
    'telecom': SearchParameterDefinition('token', []),
  },
  'PlanDefinition': {
    'composed-of': SearchParameterDefinition('reference', []),
    'context': SearchParameterDefinition('token', []),
    'context-quantity': SearchParameterDefinition(
        'quantity', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'context-type': SearchParameterDefinition('token', []),
    'context-type-quantity':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent(
          'quantity', r'value.ofType(Quantity) | value.ofType(Range)')
    ]),
    'context-type-value':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent('token', r'value.ofType(CodeableConcept)')
    ]),
    'date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'definition': SearchParameterDefinition('reference', []),
    'depends-on': SearchParameterDefinition('reference', []),
    'derived-from': SearchParameterDefinition('reference', []),
    'description': SearchParameterDefinition('string', []),
    'effective': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'identifier': SearchParameterDefinition('token', []),
    'jurisdiction': SearchParameterDefinition('token', []),
    'name': SearchParameterDefinition('string', []),
    'predecessor': SearchParameterDefinition('reference', []),
    'publisher': SearchParameterDefinition('string', []),
    'status': SearchParameterDefinition('token', []),
    'subject-canonical': SearchParameterDefinition('reference', []),
    'subject-code': SearchParameterDefinition('token', []),
    'subject-reference': SearchParameterDefinition('reference', []),
    'successor': SearchParameterDefinition('reference', []),
    'title': SearchParameterDefinition('string', []),
    'topic': SearchParameterDefinition('token', []),
    'type': SearchParameterDefinition('token', []),
    'url': SearchParameterDefinition('uri', []),
    'version': SearchParameterDefinition('token', []),
  },
  'Practitioner': {
    'active': SearchParameterDefinition('token', []),
    'address': SearchParameterDefinition('string', []),
    'address-city': SearchParameterDefinition('string', []),
    'address-country': SearchParameterDefinition('string', []),
    'address-postalcode': SearchParameterDefinition('string', []),
    'address-state': SearchParameterDefinition('string', []),
    'address-use': SearchParameterDefinition('token', []),
    'communication': SearchParameterDefinition('token', []),
    'death-date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'deceased': SearchParameterDefinition('token', []),
    'email': SearchParameterDefinition('token', []),
    'family': SearchParameterDefinition('string', []),
    'gender': SearchParameterDefinition('token', []),
    'given': SearchParameterDefinition('string', []),
    'identifier': SearchParameterDefinition('token', []),
    'name': SearchParameterDefinition('string', []),
    'phone': SearchParameterDefinition('token', []),
    'phonetic': SearchParameterDefinition('string', []),
    'qual-code-period': SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent('date', r'period')
    ]),
    'qualification-code': SearchParameterDefinition('token', []),
    'qualification-period': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'telecom': SearchParameterDefinition('token', []),
  },
  'PractitionerRole': {
    'active': SearchParameterDefinition('token', []),
    'characteristic': SearchParameterDefinition('token', []),
    'communication': SearchParameterDefinition('token', []),
    'date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'email': SearchParameterDefinition('token', []),
    'endpoint': SearchParameterDefinition('reference', []),
    'identifier': SearchParameterDefinition('token', []),
    'location': SearchParameterDefinition('reference', []),
    'network': SearchParameterDefinition('reference', []),
    'organization': SearchParameterDefinition('reference', []),
    'phone': SearchParameterDefinition('token', []),
    'practitioner': SearchParameterDefinition('reference', []),
    'role': SearchParameterDefinition('token', []),
    'service': SearchParameterDefinition('reference', []),
    'specialty': SearchParameterDefinition('token', []),
    'telecom': SearchParameterDefinition('token', []),
  },
  'Procedure': {
    'based-on': SearchParameterDefinition('reference', []),
    'category': SearchParameterDefinition('token', []),
    'code': SearchParameterDefinition('token', []),
    'date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'encounter': SearchParameterDefinition('reference', []),
    'identifier': SearchParameterDefinition('token', []),
    'location': SearchParameterDefinition('reference', []),
    'part-of': SearchParameterDefinition('reference', []),
    'patient': SearchParameterDefinition('reference', []),
    'performer': SearchParameterDefinition('reference', []),
    'reason-code': SearchParameterDefinition('token', []),
    'reason-reference': SearchParameterDefinition('reference', []),
    'report': SearchParameterDefinition('reference', []),
    'status': SearchParameterDefinition('token', []),
    'subject': SearchParameterDefinition('reference', []),
  },
  'Provenance': {
    'activity': SearchParameterDefinition('token', []),
    'agent': SearchParameterDefinition('reference', []),
    'agent-role': SearchParameterDefinition('token', []),
    'agent-type': SearchParameterDefinition('token', []),
    'based-on': SearchParameterDefinition('reference', []),
    'encounter': SearchParameterDefinition('reference', []),
    'entity': SearchParameterDefinition('reference', []),
    'location': SearchParameterDefinition('reference', []),
    'patient': SearchParameterDefinition('reference', []),
    'recorded': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'signature-type': SearchParameterDefinition('token', []),
    'target': SearchParameterDefinition('reference', []),
    'when': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
  },
  'Questionnaire': {
    'combo-code': SearchParameterDefinition('token', []),
    'context': SearchParameterDefinition('token', []),
    'context-quantity': SearchParameterDefinition(
        'quantity', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'context-type': SearchParameterDefinition('token', []),
    'context-type-quantity':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent(
          'quantity', r'value.ofType(Quantity) | value.ofType(Range)')
    ]),
    'context-type-value':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent('token', r'value.ofType(CodeableConcept)')
    ]),
    'date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'definition': SearchParameterDefinition('uri', []),
    'description': SearchParameterDefinition('string', []),
    'effective': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'identifier': SearchParameterDefinition('token', []),
    'item-code': SearchParameterDefinition('token', []),
    'jurisdiction': SearchParameterDefinition('token', []),
    'name': SearchParameterDefinition('string', []),
    'publisher': SearchParameterDefinition('string', []),
    'questionnaire-code': SearchParameterDefinition('token', []),
    'status': SearchParameterDefinition('token', []),
    'subject-type': SearchParameterDefinition('token', []),
    'title': SearchParameterDefinition('string', []),
    'url': SearchParameterDefinition('uri', []),
    'version': SearchParameterDefinition('token', []),
  },
  'QuestionnaireResponse': {
    'answer-concept': SearchParameterDefinition('token', []),
    'answer-date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'answer-number': SearchParameterDefinition(
        'number', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'answer-quantity': SearchParameterDefinition(
        'quantity', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'answer-reference': SearchParameterDefinition('reference', []),
    'answer-string': SearchParameterDefinition('string', []),
    'author': SearchParameterDefinition('reference', []),
    'authored': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'based-on': SearchParameterDefinition('reference', []),
    'encounter': SearchParameterDefinition('reference', []),
    'identifier': SearchParameterDefinition('token', []),
    'item-concept': SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'item.linkId'),
      SearchComponent('token',
          r'item.answer.value.ofType(boolean) | item.answer.value.ofType(Coding)')
    ]),
    'item-date': SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'item.linkId'),
      SearchComponent('date',
          r'item.answer.value.ofType(date) | item.answer.value.ofType(dateTime)')
    ]),
    'item-number': SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'item.linkId'),
      SearchComponent('number',
          r'item.answer.value.ofType(integer) | item.answer.value.ofType(decimal)')
    ]),
    'item-quantity': SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'item.linkId'),
      SearchComponent('quantity', r'item.answer.value.ofType(Quantity)')
    ]),
    'item-reference': SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'item.linkId'),
      SearchComponent('reference', r'item.answer.value.ofType(Reference)')
    ]),
    'item-string': SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'item.linkId'),
      SearchComponent('string', r'item.answer.value.ofType(String)')
    ]),
    'item-subject': SearchParameterDefinition('reference', []),
    'linkid': SearchParameterDefinition('token', []),
    'part-of': SearchParameterDefinition('reference', []),
    'patient': SearchParameterDefinition('reference', []),
    'questionnaire': SearchParameterDefinition('reference', []),
    'source': SearchParameterDefinition('reference', []),
    'status': SearchParameterDefinition('token', []),
    'subject': SearchParameterDefinition('reference', []),
  },
  'RegulatedAuthorization': {
    'case': SearchParameterDefinition('token', []),
    'case-type': SearchParameterDefinition('token', []),
    'holder': SearchParameterDefinition('reference', []),
    'identifier': SearchParameterDefinition('token', []),
    'region': SearchParameterDefinition('token', []),
    'status': SearchParameterDefinition('token', []),
    'subject': SearchParameterDefinition('reference', []),
  },
  'RelatedPerson': {
    'active': SearchParameterDefinition('token', []),
    'address': SearchParameterDefinition('string', []),
    'address-city': SearchParameterDefinition('string', []),
    'address-country': SearchParameterDefinition('string', []),
    'address-postalcode': SearchParameterDefinition('string', []),
    'address-state': SearchParameterDefinition('string', []),
    'address-use': SearchParameterDefinition('token', []),
    'birthdate': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'email': SearchParameterDefinition('token', []),
    'family': SearchParameterDefinition('string', []),
    'gender': SearchParameterDefinition('token', []),
    'given': SearchParameterDefinition('string', []),
    'identifier': SearchParameterDefinition('token', []),
    'name': SearchParameterDefinition('string', []),
    'patient': SearchParameterDefinition('reference', []),
    'phone': SearchParameterDefinition('token', []),
    'phonetic': SearchParameterDefinition('string', []),
    'relationship': SearchParameterDefinition('token', []),
    'role': SearchParameterDefinition('token', []),
    'telecom': SearchParameterDefinition('token', []),
  },
  'RequestOrchestration': {
    'action-resource': SearchParameterDefinition('reference', []),
    'author': SearchParameterDefinition('reference', []),
    'authored': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'based-on': SearchParameterDefinition('reference', []),
    'code': SearchParameterDefinition('token', []),
    'encounter': SearchParameterDefinition('reference', []),
    'group-identifier': SearchParameterDefinition('token', []),
    'identifier': SearchParameterDefinition('token', []),
    'instantiates-canonical': SearchParameterDefinition('reference', []),
    'instantiates-uri': SearchParameterDefinition('uri', []),
    'intent': SearchParameterDefinition('token', []),
    'participant': SearchParameterDefinition('reference', []),
    'patient': SearchParameterDefinition('reference', []),
    'priority': SearchParameterDefinition('token', []),
    'status': SearchParameterDefinition('token', []),
    'subject': SearchParameterDefinition('reference', []),
  },
  'Requirements': {
    'actor': SearchParameterDefinition('reference', []),
    'context': SearchParameterDefinition('token', []),
    'context-quantity': SearchParameterDefinition(
        'quantity', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'context-type': SearchParameterDefinition('token', []),
    'context-type-quantity':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent(
          'quantity', r'value.ofType(Quantity) | value.ofType(Range)')
    ]),
    'context-type-value':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent('token', r'value.ofType(CodeableConcept)')
    ]),
    'date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'derived-from': SearchParameterDefinition('reference', []),
    'description': SearchParameterDefinition('string', []),
    'identifier': SearchParameterDefinition('token', []),
    'jurisdiction': SearchParameterDefinition('token', []),
    'name': SearchParameterDefinition('string', []),
    'publisher': SearchParameterDefinition('string', []),
    'status': SearchParameterDefinition('token', []),
    'title': SearchParameterDefinition('string', []),
    'url': SearchParameterDefinition('uri', []),
    'version': SearchParameterDefinition('token', []),
  },
  'ResearchStudy': {
    'classifier': SearchParameterDefinition('token', []),
    'condition': SearchParameterDefinition('token', []),
    'date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'description': SearchParameterDefinition('string', []),
    'eligibility': SearchParameterDefinition('reference', []),
    'focus-code': SearchParameterDefinition('token', []),
    'focus-reference': SearchParameterDefinition('reference', []),
    'identifier': SearchParameterDefinition('token', []),
    'keyword': SearchParameterDefinition('token', []),
    'name': SearchParameterDefinition('string', []),
    'objective-description': SearchParameterDefinition('string', []),
    'objective-type': SearchParameterDefinition('token', []),
    'part-of': SearchParameterDefinition('reference', []),
    'phase': SearchParameterDefinition('token', []),
    'progress-actual': SearchParameterDefinition('token', []),
    'progress-period': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'progress-state': SearchParameterDefinition('token', []),
    'progress-status-state-actual':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'progress-state'),
      SearchComponent('token', r'progress-actual')
    ]),
    'progress-status-state-period':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'progress-state'),
      SearchComponent('date', r'progress-period')
    ]),
    'progress-status-state-period-actual':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'progress-state'),
      SearchComponent('date', r'progress-period'),
      SearchComponent('token', r'progress-actual')
    ]),
    'protocol': SearchParameterDefinition('reference', []),
    'recruitment-actual': SearchParameterDefinition(
        'number', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'recruitment-target': SearchParameterDefinition(
        'number', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'region': SearchParameterDefinition('token', []),
    'site': SearchParameterDefinition('reference', []),
    'status': SearchParameterDefinition('token', []),
    'study-design': SearchParameterDefinition('token', []),
    'title': SearchParameterDefinition('string', []),
  },
  'ResearchSubject': {
    'date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'identifier': SearchParameterDefinition('token', []),
    'patient': SearchParameterDefinition('reference', []),
    'status': SearchParameterDefinition('token', []),
    'study': SearchParameterDefinition('reference', []),
    'subject': SearchParameterDefinition('reference', []),
    'subject_state': SearchParameterDefinition('token', []),
  },
  'Resource': {
    '_content': SearchParameterDefinition('special', []),
    '_filter': SearchParameterDefinition('special', []),
    '_has': SearchParameterDefinition('special', []),
    '_id': SearchParameterDefinition('token', []),
    '_in': SearchParameterDefinition('reference', []),
    '_language': SearchParameterDefinition('token', []),
    '_lastUpdated': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    '_list': SearchParameterDefinition('special', []),
    '_profile': SearchParameterDefinition('reference', []),
    '_query': SearchParameterDefinition('special', []),
    '_security': SearchParameterDefinition('token', []),
    '_source': SearchParameterDefinition('uri', []),
    '_tag': SearchParameterDefinition('token', []),
    '_type': SearchParameterDefinition('special', []),
    'administered-by': SearchParameterDefinition('reference', []),
    'annunciator-concept': SearchParameterDefinition('token', []),
    'annunciator-device': SearchParameterDefinition('reference', []),
    'code': SearchParameterDefinition('token', []),
    'contact-address': SearchParameterDefinition('string', []),
    'contact-address-city': SearchParameterDefinition('string', []),
    'contact-address-country': SearchParameterDefinition('string', []),
    'contact-address-postalcode': SearchParameterDefinition('string', []),
    'contact-address-state': SearchParameterDefinition('string', []),
    'contact-address-use': SearchParameterDefinition('token', []),
    'date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'derived-from': SearchParameterDefinition('reference', []),
    'encounter': SearchParameterDefinition('reference', []),
    'endpoint': SearchParameterDefinition('reference', []),
    'finding-code': SearchParameterDefinition('token', []),
    'finding-ref': SearchParameterDefinition('reference', []),
    'identifier': SearchParameterDefinition('token', []),
    'indication': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'manifestation': SearchParameterDefinition('token', []),
    'member': SearchParameterDefinition('reference', []),
    'moleculetype': SearchParameterDefinition('token', []),
    'name': SearchParameterDefinition('string', []),
    'owned-by': SearchParameterDefinition('reference', []),
    'patient': SearchParameterDefinition('reference', []),
    'performer': SearchParameterDefinition('reference', []),
    'phonetic': SearchParameterDefinition('string', []),
    'presence': SearchParameterDefinition('token', []),
    'previous': SearchParameterDefinition('reference', []),
    'priority': SearchParameterDefinition('token', []),
    'problem': SearchParameterDefinition('reference', []),
    'relationship': SearchParameterDefinition('token', []),
    'signal-presence': SearchParameterDefinition('token', []),
    'source': SearchParameterDefinition('reference', []),
    'status': SearchParameterDefinition('token', []),
    'subject': SearchParameterDefinition('reference', []),
    'supporting-info': SearchParameterDefinition('reference', []),
    'target': SearchParameterDefinition('reference', []),
    'timing': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'topology': SearchParameterDefinition('token', []),
    'type': SearchParameterDefinition('token', []),
  },
  'RiskAssessment': {
    'condition': SearchParameterDefinition('reference', []),
    'date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'encounter': SearchParameterDefinition('reference', []),
    'identifier': SearchParameterDefinition('token', []),
    'method': SearchParameterDefinition('token', []),
    'patient': SearchParameterDefinition('reference', []),
    'performer': SearchParameterDefinition('reference', []),
    'probability': SearchParameterDefinition(
        'number', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'risk': SearchParameterDefinition('token', []),
    'subject': SearchParameterDefinition('reference', []),
  },
  'Schedule': {
    'active': SearchParameterDefinition('token', []),
    'actor': SearchParameterDefinition('reference', []),
    'date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'identifier': SearchParameterDefinition('token', []),
    'name': SearchParameterDefinition('string', []),
    'service-category': SearchParameterDefinition('token', []),
    'service-type': SearchParameterDefinition('token', []),
    'service-type-reference': SearchParameterDefinition('reference', []),
    'specialty': SearchParameterDefinition('token', []),
  },
  'SearchParameter': {
    'base': SearchParameterDefinition('token', []),
    'code': SearchParameterDefinition('token', []),
    'component': SearchParameterDefinition('reference', []),
    'context': SearchParameterDefinition('token', []),
    'context-quantity': SearchParameterDefinition(
        'quantity', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'context-type': SearchParameterDefinition('token', []),
    'context-type-quantity':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent(
          'quantity', r'value.ofType(Quantity) | value.ofType(Range)')
    ]),
    'context-type-value':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent('token', r'value.ofType(CodeableConcept)')
    ]),
    'date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'derived-from': SearchParameterDefinition('reference', []),
    'description': SearchParameterDefinition('string', []),
    'identifier': SearchParameterDefinition('token', []),
    'jurisdiction': SearchParameterDefinition('token', []),
    'name': SearchParameterDefinition('string', []),
    'publisher': SearchParameterDefinition('string', []),
    'status': SearchParameterDefinition('token', []),
    'target': SearchParameterDefinition('token', []),
    'type': SearchParameterDefinition('token', []),
    'url': SearchParameterDefinition('uri', []),
    'version': SearchParameterDefinition('token', []),
  },
  'ServiceRequest': {
    'authored': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'based-on': SearchParameterDefinition('reference', []),
    'body-site': SearchParameterDefinition('token', []),
    'body-structure': SearchParameterDefinition('reference', []),
    'category': SearchParameterDefinition('token', []),
    'code-concept': SearchParameterDefinition('token', []),
    'code-reference': SearchParameterDefinition('reference', []),
    'encounter': SearchParameterDefinition('reference', []),
    'group-or-identifier': SearchParameterDefinition('token', []),
    'identifier': SearchParameterDefinition('token', []),
    'instantiates-canonical': SearchParameterDefinition('reference', []),
    'instantiates-uri': SearchParameterDefinition('uri', []),
    'intent': SearchParameterDefinition('token', []),
    'location-code': SearchParameterDefinition('token', []),
    'location-reference': SearchParameterDefinition('reference', []),
    'occurrence': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'patient': SearchParameterDefinition('reference', []),
    'performer': SearchParameterDefinition('reference', []),
    'performer-type': SearchParameterDefinition('token', []),
    'priority': SearchParameterDefinition('token', []),
    'replaces': SearchParameterDefinition('reference', []),
    'requester': SearchParameterDefinition('reference', []),
    'requisition': SearchParameterDefinition('token', []),
    'specimen': SearchParameterDefinition('reference', []),
    'status': SearchParameterDefinition('token', []),
    'subject': SearchParameterDefinition('reference', []),
  },
  'Slot': {
    'appointment-type': SearchParameterDefinition('token', []),
    'identifier': SearchParameterDefinition('token', []),
    'schedule': SearchParameterDefinition('reference', []),
    'service-category': SearchParameterDefinition('token', []),
    'service-type': SearchParameterDefinition('token', []),
    'service-type-reference': SearchParameterDefinition('reference', []),
    'specialty': SearchParameterDefinition('token', []),
    'start': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'status': SearchParameterDefinition('token', []),
  },
  'Specimen': {
    'accession': SearchParameterDefinition('token', []),
    'bodysite': SearchParameterDefinition('reference', []),
    'collected': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'collector': SearchParameterDefinition('reference', []),
    'container-device': SearchParameterDefinition('reference', []),
    'container-location': SearchParameterDefinition('reference', []),
    'identifier': SearchParameterDefinition('token', []),
    'organization': SearchParameterDefinition('reference', []),
    'parent': SearchParameterDefinition('reference', []),
    'patient': SearchParameterDefinition('reference', []),
    'procedure': SearchParameterDefinition('reference', []),
    'request': SearchParameterDefinition('reference', []),
    'status': SearchParameterDefinition('token', []),
    'subject': SearchParameterDefinition('reference', []),
    'type': SearchParameterDefinition('token', []),
  },
  'SpecimenDefinition': {
    'container': SearchParameterDefinition('token', []),
    'experimental': SearchParameterDefinition('token', []),
    'identifier': SearchParameterDefinition('token', []),
    'is-derived': SearchParameterDefinition('token', []),
    'status': SearchParameterDefinition('token', []),
    'title': SearchParameterDefinition('string', []),
    'type': SearchParameterDefinition('token', []),
    'type-tested': SearchParameterDefinition('token', []),
    'url': SearchParameterDefinition('uri', []),
  },
  'StructureDefinition': {
    'abstract': SearchParameterDefinition('token', []),
    'base': SearchParameterDefinition('reference', []),
    'base-path': SearchParameterDefinition('token', []),
    'context': SearchParameterDefinition('token', []),
    'context-quantity': SearchParameterDefinition(
        'quantity', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'context-type': SearchParameterDefinition('token', []),
    'context-type-quantity':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent(
          'quantity', r'value.ofType(Quantity) | value.ofType(Range)')
    ]),
    'context-type-value':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent('token', r'value.ofType(CodeableConcept)')
    ]),
    'date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'derivation': SearchParameterDefinition('token', []),
    'description': SearchParameterDefinition('string', []),
    'experimental': SearchParameterDefinition('token', []),
    'ext-context': SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'type'),
      SearchComponent('token', r'expression')
    ]),
    'ext-context-expression': SearchParameterDefinition('token', []),
    'ext-context-type': SearchParameterDefinition('token', []),
    'identifier': SearchParameterDefinition('token', []),
    'jurisdiction': SearchParameterDefinition('token', []),
    'keyword': SearchParameterDefinition('token', []),
    'kind': SearchParameterDefinition('token', []),
    'name': SearchParameterDefinition('string', []),
    'path': SearchParameterDefinition('token', []),
    'publisher': SearchParameterDefinition('string', []),
    'status': SearchParameterDefinition('token', []),
    'title': SearchParameterDefinition('string', []),
    'type': SearchParameterDefinition('uri', []),
    'url': SearchParameterDefinition('uri', []),
    'valueset': SearchParameterDefinition('reference', []),
    'version': SearchParameterDefinition('token', []),
  },
  'StructureMap': {
    'context': SearchParameterDefinition('token', []),
    'context-quantity': SearchParameterDefinition(
        'quantity', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'context-type': SearchParameterDefinition('token', []),
    'context-type-quantity':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent(
          'quantity', r'value.ofType(Quantity) | value.ofType(Range)')
    ]),
    'context-type-value':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent('token', r'value.ofType(CodeableConcept)')
    ]),
    'date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'description': SearchParameterDefinition('string', []),
    'identifier': SearchParameterDefinition('token', []),
    'jurisdiction': SearchParameterDefinition('token', []),
    'name': SearchParameterDefinition('string', []),
    'publisher': SearchParameterDefinition('string', []),
    'status': SearchParameterDefinition('token', []),
    'title': SearchParameterDefinition('string', []),
    'url': SearchParameterDefinition('uri', []),
    'version': SearchParameterDefinition('token', []),
  },
  'Subscription': {
    'contact': SearchParameterDefinition('token', []),
    'content-level': SearchParameterDefinition('token', []),
    'filter-event': SearchParameterDefinition('token', []),
    'filter-value': SearchParameterDefinition('string', []),
    'identifier': SearchParameterDefinition('token', []),
    'name': SearchParameterDefinition('string', []),
    'owner': SearchParameterDefinition('reference', []),
    'payload': SearchParameterDefinition('token', [], mime: true),
    'status': SearchParameterDefinition('token', []),
    'topic': SearchParameterDefinition('uri', []),
    'type': SearchParameterDefinition('token', []),
    'url': SearchParameterDefinition('uri', []),
  },
  'SubscriptionTopic': {
    'date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'derived-or-self': SearchParameterDefinition('uri', []),
    'effective': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'event': SearchParameterDefinition('token', []),
    'identifier': SearchParameterDefinition('token', []),
    'resource': SearchParameterDefinition('uri', []),
    'status': SearchParameterDefinition('token', []),
    'title': SearchParameterDefinition('string', []),
    'trigger-description': SearchParameterDefinition('string', []),
    'url': SearchParameterDefinition('uri', []),
    'version': SearchParameterDefinition('token', []),
  },
  'Substance': {
    'category': SearchParameterDefinition('token', []),
    'code': SearchParameterDefinition('token', []),
    'code-reference': SearchParameterDefinition('reference', []),
    'expiry': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'identifier': SearchParameterDefinition('token', []),
    'quantity': SearchParameterDefinition(
        'quantity', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'status': SearchParameterDefinition('token', []),
  },
  'SubstanceDefinition': {
    'classification': SearchParameterDefinition('token', []),
    'code': SearchParameterDefinition('token', []),
    'domain': SearchParameterDefinition('token', []),
    'identifier': SearchParameterDefinition('token', []),
    'name': SearchParameterDefinition('string', []),
  },
  'SupplyDelivery': {
    'identifier': SearchParameterDefinition('token', []),
    'patient': SearchParameterDefinition('reference', []),
    'receiver': SearchParameterDefinition('reference', []),
    'status': SearchParameterDefinition('token', []),
    'supplier': SearchParameterDefinition('reference', []),
  },
  'SupplyRequest': {
    'category': SearchParameterDefinition('token', []),
    'date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'identifier': SearchParameterDefinition('token', []),
    'patient': SearchParameterDefinition('reference', []),
    'requester': SearchParameterDefinition('reference', []),
    'status': SearchParameterDefinition('token', []),
    'subject': SearchParameterDefinition('reference', []),
    'supplier': SearchParameterDefinition('reference', []),
  },
  'Task': {
    'actor': SearchParameterDefinition('reference', []),
    'authored-on': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'based-on': SearchParameterDefinition('reference', []),
    'business-status': SearchParameterDefinition('token', []),
    'code': SearchParameterDefinition('token', []),
    'encounter': SearchParameterDefinition('reference', []),
    'focus': SearchParameterDefinition('reference', []),
    'group-identifier': SearchParameterDefinition('token', []),
    'identifier': SearchParameterDefinition('token', []),
    'input': SearchParameterDefinition('reference', []),
    'intent': SearchParameterDefinition('token', []),
    'modified': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'output': SearchParameterDefinition('reference', []),
    'owner': SearchParameterDefinition('reference', []),
    'part-of': SearchParameterDefinition('reference', []),
    'patient': SearchParameterDefinition('reference', []),
    'performer': SearchParameterDefinition('token', []),
    'period': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'priority': SearchParameterDefinition('token', []),
    'requestedperformer-reference': SearchParameterDefinition('reference', []),
    'requester': SearchParameterDefinition('reference', []),
    'status': SearchParameterDefinition('token', []),
    'subject': SearchParameterDefinition('reference', []),
  },
  'TerminologyCapabilities': {
    'context': SearchParameterDefinition('token', []),
    'context-quantity': SearchParameterDefinition(
        'quantity', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'context-type': SearchParameterDefinition('token', []),
    'context-type-quantity':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent(
          'quantity', r'value.ofType(Quantity) | value.ofType(Range)')
    ]),
    'context-type-value':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent('token', r'value.ofType(CodeableConcept)')
    ]),
    'date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'description': SearchParameterDefinition('string', []),
    'identifier': SearchParameterDefinition('token', []),
    'jurisdiction': SearchParameterDefinition('token', []),
    'name': SearchParameterDefinition('string', []),
    'publisher': SearchParameterDefinition('string', []),
    'status': SearchParameterDefinition('token', []),
    'title': SearchParameterDefinition('string', []),
    'url': SearchParameterDefinition('uri', []),
    'version': SearchParameterDefinition('token', []),
  },
  'TestPlan': {
    'category': SearchParameterDefinition('token', []),
    'context': SearchParameterDefinition('token', []),
    'context-quantity': SearchParameterDefinition(
        'quantity', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'context-type': SearchParameterDefinition('token', []),
    'context-type-quantity':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent(
          'quantity', r'value.ofType(Quantity) | value.ofType(Range)')
    ]),
    'context-type-value':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent('token', r'value.ofType(CodeableConcept)')
    ]),
    'date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'description': SearchParameterDefinition('string', []),
    'identifier': SearchParameterDefinition('token', []),
    'jurisdiction': SearchParameterDefinition('token', []),
    'name': SearchParameterDefinition('string', []),
    'publisher': SearchParameterDefinition('string', []),
    'requirement': SearchParameterDefinition('uri', []),
    'scope-canonical': SearchParameterDefinition('uri', []),
    'scope-uri': SearchParameterDefinition('uri', []),
    'status': SearchParameterDefinition('token', []),
    'title': SearchParameterDefinition('string', []),
    'url': SearchParameterDefinition('uri', []),
    'version': SearchParameterDefinition('token', []),
  },
  'TestReport': {
    'identifier': SearchParameterDefinition('token', []),
    'issued': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'participant': SearchParameterDefinition('uri', []),
    'result': SearchParameterDefinition('token', []),
    'status': SearchParameterDefinition('token', []),
    'tester': SearchParameterDefinition('string', []),
    'testscript': SearchParameterDefinition('reference', []),
  },
  'TestScript': {
    'artifact': SearchParameterDefinition('reference', []),
    'conformance': SearchParameterDefinition('token', []),
    'context': SearchParameterDefinition('token', []),
    'context-quantity': SearchParameterDefinition(
        'quantity', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'context-type': SearchParameterDefinition('token', []),
    'context-type-quantity':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent(
          'quantity', r'value.ofType(Quantity) | value.ofType(Range)')
    ]),
    'context-type-value':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent('token', r'value.ofType(CodeableConcept)')
    ]),
    'date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'description': SearchParameterDefinition('string', []),
    'identifier': SearchParameterDefinition('token', []),
    'jurisdiction': SearchParameterDefinition('token', []),
    'name': SearchParameterDefinition('string', []),
    'phase': SearchParameterDefinition('token', []),
    'publisher': SearchParameterDefinition('string', []),
    'scope-artifact-conformance':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('reference', r'artifact'),
      SearchComponent('token', r'conformance.ofType(CodeableConcept)')
    ]),
    'scope-artifact-phase':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('reference', r'artifact'),
      SearchComponent('token', r'phase.ofType(CodeableConcept)')
    ]),
    'status': SearchParameterDefinition('token', []),
    'testscript-capability': SearchParameterDefinition('string', []),
    'title': SearchParameterDefinition('string', []),
    'url': SearchParameterDefinition('uri', []),
    'version': SearchParameterDefinition('token', []),
  },
  'Transport': {
    'identifier': SearchParameterDefinition('token', []),
    'status': SearchParameterDefinition('token', []),
  },
  'ValueSet': {
    'code': SearchParameterDefinition('token', []),
    'context': SearchParameterDefinition('token', []),
    'context-quantity': SearchParameterDefinition(
        'quantity', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'context-type': SearchParameterDefinition('token', []),
    'context-type-quantity':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent(
          'quantity', r'value.ofType(Quantity) | value.ofType(Range)')
    ]),
    'context-type-value':
        SearchParameterDefinition('composite', [], components: [
      SearchComponent('token', r'code'),
      SearchComponent('token', r'value.ofType(CodeableConcept)')
    ]),
    'date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'derived-from': SearchParameterDefinition('reference', []),
    'description': SearchParameterDefinition('string', []),
    'effective': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'expansion': SearchParameterDefinition('uri', []),
    'identifier': SearchParameterDefinition('token', []),
    'jurisdiction': SearchParameterDefinition('token', []),
    'name': SearchParameterDefinition('string', []),
    'predecessor': SearchParameterDefinition('reference', []),
    'publisher': SearchParameterDefinition('string', []),
    'reference': SearchParameterDefinition('uri', []),
    'status': SearchParameterDefinition('token', []),
    'title': SearchParameterDefinition('string', []),
    'topic': SearchParameterDefinition('token', []),
    'url': SearchParameterDefinition('uri', []),
    'version': SearchParameterDefinition('token', []),
  },
  'VerificationResult': {
    'attestation-method': SearchParameterDefinition('token', []),
    'attestation-onbehalfof': SearchParameterDefinition('reference', []),
    'attestation-who': SearchParameterDefinition('reference', []),
    'primarysource-date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'primarysource-type': SearchParameterDefinition('token', []),
    'primarysource-who': SearchParameterDefinition('reference', []),
    'status': SearchParameterDefinition('token', []),
    'status-date': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'target': SearchParameterDefinition('reference', []),
    'validator-organization': SearchParameterDefinition('reference', []),
  },
  'VisionPrescription': {
    'datewritten': SearchParameterDefinition(
        'date', ['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
    'encounter': SearchParameterDefinition('reference', []),
    'identifier': SearchParameterDefinition('token', []),
    'patient': SearchParameterDefinition('reference', []),
    'prescriber': SearchParameterDefinition('reference', []),
    'status': SearchParameterDefinition('token', []),
  },
};
