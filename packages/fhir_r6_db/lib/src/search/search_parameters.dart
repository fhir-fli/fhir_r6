// ignore_for_file: dead_null_aware_expression
// Generated from FHIR R6 SearchParameter definitions
// Do not edit by hand.

import 'package:fhir_r6/fhir_r6.dart' as fhir;

import 'package:fhir_r6_db/fhir_r6_db.dart';

extension MakeIterable on fhir.FhirBase {
  /// Returns an iterable of the given type.
  Iterable<T> makeIterable<T extends fhir.FhirBase>() {
    return <T>[this as T];
  }
}

extension MakeIterableList on Iterable<fhir.FhirBase?> {
  /// Returns an iterable of the given type.
  Iterable<T> makeIterable<T extends fhir.FhirBase>() {
    return whereType<T>();
  }
}

class SearchParameterLists {
  final stringParams = <StringSearchParametersCompanion>[];
  final tokenParams = <TokenSearchParametersCompanion>[];
  final referenceParams = <ReferenceSearchParametersCompanion>[];
  final dateParams = <DateSearchParametersCompanion>[];
  final numberParams = <NumberSearchParametersCompanion>[];
  final quantityParams = <QuantitySearchParametersCompanion>[];
  final uriParams = <UriSearchParametersCompanion>[];
  final compositeParams = <CompositeSearchParametersCompanion>[];
  final specialParams = <SpecialSearchParametersCompanion>[];
}

SearchParameterLists updateSearchParameters(fhir.Resource resource) {
  final resourceType = resource.runtimeType.toString();
  final id = resource.id.toString();
  final lastUpdated = resource.meta!.lastUpdated!.valueDateTime!;
  int i = 0;
  final searchParameterLists = SearchParameterLists();
  switch (resource) {
    case fhir.Account _:
      // Account.guarantor.party (reference)
      i = 0;
      for (final entry in resource.guarantor
              ?.map<fhir.Reference?>((e) => e.party)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Account.guarantor.party',
            i,
          ),
        );
        i++;
      }
      // Account.guarantor.account (reference)
      i = 0;
      for (final entry in resource.guarantor
              ?.map<fhir.Reference?>((e) => e.account)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Account.guarantor.account',
            i,
          ),
        );
        i++;
      }
      // Account.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Account.identifier',
            i,
          ),
        );
        i++;
      }
      // Account.name (string)
      i = 0;
      for (final entry in resource.name?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Account.name',
            i,
          ),
        );
        i++;
      }
      // Account.owner (reference)
      i = 0;
      for (final entry in resource.owner?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Account.owner',
            i,
          ),
        );
        i++;
      }
      // Account.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry in resource.subject?.where((e) {
            final ref = e.reference?.toString().split('/') ?? [];
            return ref.length > 1 && ref[ref.length - 2] == 'Patient';
          }).makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Account.subject.where(resolve() is Patient)',
            i,
          ),
        );
        i++;
      }
      // Account.servicePeriod (date)
      i = 0;
      for (final entry in resource.servicePeriod?.makeIterable<fhir.Period>() ??
          <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Account.servicePeriod',
            i,
          ),
        );
        i++;
      }
      // Account.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Account.status',
            i,
          ),
        );
        i++;
      }
      // Account.subject (reference)
      i = 0;
      for (final entry in resource.subject?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Account.subject',
            i,
          ),
        );
        i++;
      }
      // Account.type (token)
      i = 0;
      for (final entry in resource.type?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Account.type',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.ActivityDefinition _:
      // ActivityDefinition.relatedArtifact.where(type='composed-of').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'composed-of')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "ActivityDefinition.relatedArtifact.where(type='composed-of').resource",
            i,
          ),
        );
        i++;
      }
      // ActivityDefinition.useContext.code (token)
      i = 0;
      for (final entry in resource.useContext
              ?.map<fhir.Coding?>((e) => e.code)
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ActivityDefinition.useContext.code',
            i,
          ),
        );
        i++;
      }
      // ActivityDefinition.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ActivityDefinition.date',
            i,
          ),
        );
        i++;
      }
      // ActivityDefinition.relatedArtifact.where(type='depends-on').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'depends-on')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "ActivityDefinition.relatedArtifact.where(type='depends-on').resource",
            i,
          ),
        );
        i++;
      }
      // ActivityDefinition.library (reference)
      i = 0;
      for (final entry
          in resource.library_?.makeIterable<fhir.FhirCanonical>() ??
              <fhir.FhirCanonical>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ActivityDefinition.library',
            i,
          ),
        );
        i++;
      }
      // ActivityDefinition.relatedArtifact.where(type='derived-from').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'derived-from')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "ActivityDefinition.relatedArtifact.where(type='derived-from').resource",
            i,
          ),
        );
        i++;
      }
      // ActivityDefinition.description (string)
      i = 0;
      for (final entry
          in resource.description?.makeIterable<fhir.FhirMarkdown>() ??
              <fhir.FhirMarkdown>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ActivityDefinition.description',
            i,
          ),
        );
        i++;
      }
      // ActivityDefinition.effectivePeriod (date)
      i = 0;
      for (final entry
          in resource.effectivePeriod?.makeIterable<fhir.Period>() ??
              <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ActivityDefinition.effectivePeriod',
            i,
          ),
        );
        i++;
      }
      // ActivityDefinition.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ActivityDefinition.identifier',
            i,
          ),
        );
        i++;
      }
      // ActivityDefinition.jurisdiction (token)
      i = 0;
      for (final entry
          in resource.jurisdiction?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ActivityDefinition.jurisdiction',
            i,
          ),
        );
        i++;
      }
      // ActivityDefinition.kind (token)
      i = 0;
      for (final entry in resource.kind?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ActivityDefinition.kind',
            i,
          ),
        );
        i++;
      }
      // ActivityDefinition.name (string)
      i = 0;
      for (final entry in resource.name?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ActivityDefinition.name',
            i,
          ),
        );
        i++;
      }
      // ActivityDefinition.relatedArtifact.where(type='predecessor').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'predecessor')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "ActivityDefinition.relatedArtifact.where(type='predecessor').resource",
            i,
          ),
        );
        i++;
      }
      // ActivityDefinition.publisher (string)
      i = 0;
      for (final entry in resource.publisher?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ActivityDefinition.publisher',
            i,
          ),
        );
        i++;
      }
      // ActivityDefinition.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ActivityDefinition.status',
            i,
          ),
        );
        i++;
      }
      // SKIPPED (unsupported FHIRPath): // ActivityDefinition.subject as canonical (reference)
      // SKIPPED (unsupported FHIRPath): i = 0;
      // SKIPPED (unsupported FHIRPath): for (final entry in resource.subject as canonical ?? <fhir.FhirBase>[]) {
      // SKIPPED (unsupported FHIRPath): searchParameterLists.referenceParams.addAll(
      // SKIPPED (unsupported FHIRPath): entry.toReferenceSearchParameter(
      // SKIPPED (unsupported FHIRPath): resourceType, id, lastUpdated, 'ActivityDefinition.subject as canonical', i,
      // SKIPPED (unsupported FHIRPath): ),
      // SKIPPED (unsupported FHIRPath): );
      // SKIPPED (unsupported FHIRPath): i++;
      // SKIPPED (unsupported FHIRPath): }
      // SKIPPED (unsupported FHIRPath): // ActivityDefinition.subject as CodeableConcept (token)
      // SKIPPED (unsupported FHIRPath): i = 0;
      // SKIPPED (unsupported FHIRPath): for (final entry in resource.subject as CodeableConcept ?? <fhir.FhirBase>[]) {
      // SKIPPED (unsupported FHIRPath): searchParameterLists.tokenParams.addAll(
      // SKIPPED (unsupported FHIRPath): entry.toTokenSearchParameter(
      // SKIPPED (unsupported FHIRPath): resourceType, id, lastUpdated, 'ActivityDefinition.subject as CodeableConcept', i,
      // SKIPPED (unsupported FHIRPath): ),
      // SKIPPED (unsupported FHIRPath): );
      // SKIPPED (unsupported FHIRPath): i++;
      // SKIPPED (unsupported FHIRPath): }
      // SKIPPED (unsupported FHIRPath): // ActivityDefinition.subject as Reference (reference)
      // SKIPPED (unsupported FHIRPath): i = 0;
      // SKIPPED (unsupported FHIRPath): for (final entry in resource.subject as Reference ?? <fhir.FhirBase>[]) {
      // SKIPPED (unsupported FHIRPath): searchParameterLists.referenceParams.addAll(
      // SKIPPED (unsupported FHIRPath): entry.toReferenceSearchParameter(
      // SKIPPED (unsupported FHIRPath): resourceType, id, lastUpdated, 'ActivityDefinition.subject as Reference', i,
      // SKIPPED (unsupported FHIRPath): ),
      // SKIPPED (unsupported FHIRPath): );
      // SKIPPED (unsupported FHIRPath): i++;
      // SKIPPED (unsupported FHIRPath): }
      // ActivityDefinition.relatedArtifact.where(type='successor').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'successor')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "ActivityDefinition.relatedArtifact.where(type='successor').resource",
            i,
          ),
        );
        i++;
      }
      // ActivityDefinition.title (string)
      i = 0;
      for (final entry in resource.title?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ActivityDefinition.title',
            i,
          ),
        );
        i++;
      }
      // ActivityDefinition.topic (token)
      i = 0;
      for (final entry
          in resource.topic?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ActivityDefinition.topic',
            i,
          ),
        );
        i++;
      }
      // ActivityDefinition.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ActivityDefinition.url',
            i,
          ),
        );
        i++;
      }
      // ActivityDefinition.version (token)
      i = 0;
      for (final entry in resource.version?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ActivityDefinition.version',
            i,
          ),
        );
        i++;
      }
      // ActivityDefinition.useContext (composite)
      i = 0;
      for (final entry
          in resource.useContext?.makeIterable<fhir.UsageContext>() ??
              <fhir.UsageContext>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ActivityDefinition.useContext',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.ActorDefinition _:
      // ActorDefinition.useContext.code (token)
      i = 0;
      for (final entry in resource.useContext
              ?.map<fhir.Coding?>((e) => e.code)
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ActorDefinition.useContext.code',
            i,
          ),
        );
        i++;
      }
      // ActorDefinition.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ActorDefinition.date',
            i,
          ),
        );
        i++;
      }
      // ActorDefinition.description (string)
      i = 0;
      for (final entry
          in resource.description?.makeIterable<fhir.FhirMarkdown>() ??
              <fhir.FhirMarkdown>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ActorDefinition.description',
            i,
          ),
        );
        i++;
      }
      // ActorDefinition.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ActorDefinition.identifier',
            i,
          ),
        );
        i++;
      }
      // ActorDefinition.jurisdiction (token)
      i = 0;
      for (final entry
          in resource.jurisdiction?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ActorDefinition.jurisdiction',
            i,
          ),
        );
        i++;
      }
      // ActorDefinition.publisher (string)
      i = 0;
      for (final entry in resource.publisher?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ActorDefinition.publisher',
            i,
          ),
        );
        i++;
      }
      // ActorDefinition.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ActorDefinition.status',
            i,
          ),
        );
        i++;
      }
      // ActorDefinition.title (string)
      i = 0;
      for (final entry in resource.title?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ActorDefinition.title',
            i,
          ),
        );
        i++;
      }
      // ActorDefinition.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ActorDefinition.url',
            i,
          ),
        );
        i++;
      }
      // ActorDefinition.version (token)
      i = 0;
      for (final entry in resource.version?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ActorDefinition.version',
            i,
          ),
        );
        i++;
      }
      // ActorDefinition.useContext (composite)
      i = 0;
      for (final entry
          in resource.useContext?.makeIterable<fhir.UsageContext>() ??
              <fhir.UsageContext>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ActorDefinition.useContext',
            i,
          ),
        );
        i++;
      }
      // ActorDefinition.type (token)
      i = 0;
      for (final entry in resource.type.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ActorDefinition.type',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.AdministrableProductDefinition _:
      // AdministrableProductDefinition.device (reference)
      i = 0;
      for (final entry in resource.device?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AdministrableProductDefinition.device',
            i,
          ),
        );
        i++;
      }
      // AdministrableProductDefinition.administrableDoseForm (token)
      i = 0;
      for (final entry in resource.administrableDoseForm
              ?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AdministrableProductDefinition.administrableDoseForm',
            i,
          ),
        );
        i++;
      }
      // AdministrableProductDefinition.formOf (reference)
      i = 0;
      for (final entry in resource.formOf?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AdministrableProductDefinition.formOf',
            i,
          ),
        );
        i++;
      }
      // AdministrableProductDefinition.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AdministrableProductDefinition.identifier',
            i,
          ),
        );
        i++;
      }
      // AdministrableProductDefinition.ingredient (token)
      i = 0;
      for (final entry
          in resource.ingredient?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AdministrableProductDefinition.ingredient',
            i,
          ),
        );
        i++;
      }
      // AdministrableProductDefinition.producedFrom (reference)
      i = 0;
      for (final entry
          in resource.producedFrom?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AdministrableProductDefinition.producedFrom',
            i,
          ),
        );
        i++;
      }
      // AdministrableProductDefinition.routeOfAdministration.code (token)
      i = 0;
      for (final entry in resource.routeOfAdministration
              .map<fhir.CodeableConcept?>((e) => e.code)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AdministrableProductDefinition.routeOfAdministration.code',
            i,
          ),
        );
        i++;
      }
      // AdministrableProductDefinition.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AdministrableProductDefinition.status',
            i,
          ),
        );
        i++;
      }
      // AdministrableProductDefinition.routeOfAdministration.targetSpecies.code (token)
      i = 0;
      for (final entry in resource.routeOfAdministration
              .expand((e) =>
                  e.targetSpecies ??
                  <fhir.AdministrableProductDefinitionTargetSpecies>[])
              .map<fhir.CodeableConcept?>((e) => e.code)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AdministrableProductDefinition.routeOfAdministration.targetSpecies.code',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.AdverseEvent _:
      // AdverseEvent.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AdverseEvent.identifier',
            i,
          ),
        );
        i++;
      }
      // AdverseEvent.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AdverseEvent.subject.where(resolve() is Patient)',
            i,
          ),
        );
        i++;
      }
      // AdverseEvent.actuality (token)
      i = 0;
      for (final entry
          in resource.actuality.makeIterable<fhir.FhirCodeEnum>() ??
              <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AdverseEvent.actuality',
            i,
          ),
        );
        i++;
      }
      // AdverseEvent.category (token)
      i = 0;
      for (final entry
          in resource.category?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AdverseEvent.category',
            i,
          ),
        );
        i++;
      }
      // AdverseEvent.cause.ofType(dateTime) (date)
      i = 0;
      for (final entry
          in resource.causeDateTime?.makeIterable<fhir.FhirDateTime>() ??
              <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AdverseEvent.cause.ofType(dateTime)',
            i,
          ),
        );
        i++;
      }
      // AdverseEvent.cause.ofType(Period) (date)
      i = 0;
      for (final entry in resource.causePeriod?.makeIterable<fhir.Period>() ??
          <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AdverseEvent.cause.ofType(Period)',
            i,
          ),
        );
        i++;
      }
      // AdverseEvent.code (token)
      i = 0;
      for (final entry in resource.code?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AdverseEvent.code',
            i,
          ),
        );
        i++;
      }
      // AdverseEvent.effect.ofType(dateTime) (date)
      i = 0;
      for (final entry
          in resource.effectDateTime?.makeIterable<fhir.FhirDateTime>() ??
              <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AdverseEvent.effect.ofType(dateTime)',
            i,
          ),
        );
        i++;
      }
      // AdverseEvent.effect.ofType(Period) (date)
      i = 0;
      for (final entry in resource.effectPeriod?.makeIterable<fhir.Period>() ??
          <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AdverseEvent.effect.ofType(Period)',
            i,
          ),
        );
        i++;
      }
      // AdverseEvent.location (reference)
      i = 0;
      for (final entry in resource.location?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AdverseEvent.location',
            i,
          ),
        );
        i++;
      }
      // AdverseEvent.recorder (reference)
      i = 0;
      for (final entry in resource.recorder?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AdverseEvent.recorder',
            i,
          ),
        );
        i++;
      }
      // AdverseEvent.resultingEffect.concept (token)
      i = 0;
      for (final entry in resource.resultingEffect
              ?.map<fhir.CodeableConcept?>((e) => e.concept)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AdverseEvent.resultingEffect.concept',
            i,
          ),
        );
        i++;
      }
      // AdverseEvent.resultingEffect.reference (reference)
      i = 0;
      for (final entry in resource.resultingEffect
              ?.map<fhir.Reference?>((e) => e.reference)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AdverseEvent.resultingEffect.reference',
            i,
          ),
        );
        i++;
      }
      // AdverseEvent.seriousness (token)
      i = 0;
      for (final entry
          in resource.seriousness?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AdverseEvent.seriousness',
            i,
          ),
        );
        i++;
      }
      // AdverseEvent.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AdverseEvent.status',
            i,
          ),
        );
        i++;
      }
      // AdverseEvent.study (reference)
      i = 0;
      for (final entry in resource.study?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AdverseEvent.study',
            i,
          ),
        );
        i++;
      }
      // AdverseEvent.subject (reference)
      i = 0;
      for (final entry in resource.subject.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AdverseEvent.subject',
            i,
          ),
        );
        i++;
      }
      // AdverseEvent.suspectEntity.instance.reference (reference)
      i = 0;
      for (final entry in resource.suspectEntity
              ?.map<fhir.CodeableReference?>((e) => e.instance)
              .map<fhir.Reference?>((e) => e?.reference)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AdverseEvent.suspectEntity.instance.reference',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.AllergyIntolerance _:
      // AllergyIntolerance.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AllergyIntolerance.identifier',
            i,
          ),
        );
        i++;
      }
      // AllergyIntolerance.patient (reference)
      i = 0;
      for (final entry in resource.patient.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AllergyIntolerance.patient',
            i,
          ),
        );
        i++;
      }
      // AllergyIntolerance.type (token)
      i = 0;
      for (final entry in resource.type?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AllergyIntolerance.type',
            i,
          ),
        );
        i++;
      }
      // AllergyIntolerance.code (token)
      i = 0;
      for (final entry in resource.code?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AllergyIntolerance.code',
            i,
          ),
        );
        i++;
      }
      // AllergyIntolerance.reaction.substance (token)
      i = 0;
      for (final entry in resource.reaction
              ?.map<fhir.CodeableConcept?>((e) => e.substance)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AllergyIntolerance.reaction.substance',
            i,
          ),
        );
        i++;
      }
      // AllergyIntolerance.asserter (reference)
      i = 0;
      for (final entry in resource.asserter?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AllergyIntolerance.asserter',
            i,
          ),
        );
        i++;
      }
      // AllergyIntolerance.category (token)
      i = 0;
      for (final entry
          in resource.category?.makeIterable<fhir.FhirCodeEnum>() ??
              <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AllergyIntolerance.category',
            i,
          ),
        );
        i++;
      }
      // AllergyIntolerance.clinicalStatus (token)
      i = 0;
      for (final entry
          in resource.clinicalStatus?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AllergyIntolerance.clinicalStatus',
            i,
          ),
        );
        i++;
      }
      // AllergyIntolerance.criticality (token)
      i = 0;
      for (final entry
          in resource.criticality?.makeIterable<fhir.FhirCodeEnum>() ??
              <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AllergyIntolerance.criticality',
            i,
          ),
        );
        i++;
      }
      // AllergyIntolerance.recordedDate (date)
      i = 0;
      for (final entry
          in resource.recordedDate?.makeIterable<fhir.FhirDateTime>() ??
              <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AllergyIntolerance.recordedDate',
            i,
          ),
        );
        i++;
      }
      // AllergyIntolerance.lastReactionOccurrence (date)
      i = 0;
      for (final entry in resource.lastReactionOccurrence
              ?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AllergyIntolerance.lastReactionOccurrence',
            i,
          ),
        );
        i++;
      }
      // AllergyIntolerance.reaction.manifestation.concept (token)
      i = 0;
      for (final entry in resource.reaction
              ?.expand((e) => e.manifestation ?? <fhir.CodeableReference>[])
              .map<fhir.CodeableConcept?>((e) => e.concept)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AllergyIntolerance.reaction.manifestation.concept',
            i,
          ),
        );
        i++;
      }
      // AllergyIntolerance.reaction.manifestation.reference (reference)
      i = 0;
      for (final entry in resource.reaction
              ?.expand((e) => e.manifestation ?? <fhir.CodeableReference>[])
              .map<fhir.Reference?>((e) => e.reference)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AllergyIntolerance.reaction.manifestation.reference',
            i,
          ),
        );
        i++;
      }
      // AllergyIntolerance.reaction.exposureRoute (token)
      i = 0;
      for (final entry in resource.reaction
              ?.map<fhir.CodeableConcept?>((e) => e.exposureRoute)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AllergyIntolerance.reaction.exposureRoute',
            i,
          ),
        );
        i++;
      }
      // AllergyIntolerance.reaction.severity (token)
      i = 0;
      for (final entry in resource.reaction
              ?.map<fhir.FhirCodeEnum?>((e) => e.severity)
              .makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AllergyIntolerance.reaction.severity',
            i,
          ),
        );
        i++;
      }
      // AllergyIntolerance.verificationStatus (token)
      i = 0;
      for (final entry in resource.verificationStatus
              ?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AllergyIntolerance.verificationStatus',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.Appointment _:
      // Appointment.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Appointment.identifier',
            i,
          ),
        );
        i++;
      }
      // Appointment.participant.actor.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry in resource.participant
              .map<fhir.Reference?>((e) => e.actor)
              .where((e) {
            final ref = e?.reference?.toString().split('/') ?? [];
            return ref.length > 1 && ref[ref.length - 2] == 'Patient';
          }).makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Appointment.participant.actor.where(resolve() is Patient)',
            i,
          ),
        );
        i++;
      }
      // Appointment.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject?.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Appointment.subject.where(resolve() is Patient)',
            i,
          ),
        );
        i++;
      }
      // Appointment.participant.actor (reference)
      i = 0;
      for (final entry in resource.participant
              .map<fhir.Reference?>((e) => e.actor)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Appointment.participant.actor',
            i,
          ),
        );
        i++;
      }
      // Appointment.appointmentType (token)
      i = 0;
      for (final entry
          in resource.appointmentType?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Appointment.appointmentType',
            i,
          ),
        );
        i++;
      }
      // Appointment.basedOn (reference)
      i = 0;
      for (final entry in resource.basedOn?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Appointment.basedOn',
            i,
          ),
        );
        i++;
      }
      // Appointment.participant.actor.where(resolve() is Group) (reference)
      i = 0;
      for (final entry in resource.participant
              .map<fhir.Reference?>((e) => e.actor)
              .where((e) {
            final ref = e?.reference?.toString().split('/') ?? [];
            return ref.length > 1 && ref[ref.length - 2] == 'Group';
          }).makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Appointment.participant.actor.where(resolve() is Group)',
            i,
          ),
        );
        i++;
      }
      // Appointment.subject.where(resolve() is Group) (reference)
      i = 0;
      for (final entry
          in resource.subject?.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Group';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Appointment.subject.where(resolve() is Group)',
            i,
          ),
        );
        i++;
      }
      // SKIPPED (unsupported FHIRPath): // Appointment.originatingAppointment.exists() (token)
      // SKIPPED (unsupported FHIRPath): i = 0;
      // SKIPPED (unsupported FHIRPath): for (final entry in resource.originatingAppointment?.exists() ?? <fhir.FhirBase>[]) {
      // SKIPPED (unsupported FHIRPath): searchParameterLists.tokenParams.addAll(
      // SKIPPED (unsupported FHIRPath): entry.toTokenSearchParameter(
      // SKIPPED (unsupported FHIRPath): resourceType, id, lastUpdated, 'Appointment.originatingAppointment.exists()', i,
      // SKIPPED (unsupported FHIRPath): ),
      // SKIPPED (unsupported FHIRPath): );
      // SKIPPED (unsupported FHIRPath): i++;
      // SKIPPED (unsupported FHIRPath): }
      // Appointment.participant.actor.where(resolve() is Location) (reference)
      i = 0;
      for (final entry in resource.participant
              .map<fhir.Reference?>((e) => e.actor)
              .where((e) {
            final ref = e?.reference?.toString().split('/') ?? [];
            return ref.length > 1 && ref[ref.length - 2] == 'Location';
          }).makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Appointment.participant.actor.where(resolve() is Location)',
            i,
          ),
        );
        i++;
      }
      // Appointment.occurrenceChanged (token)
      i = 0;
      for (final entry
          in resource.occurrenceChanged?.makeIterable<fhir.FhirBoolean>() ??
              <fhir.FhirBoolean>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Appointment.occurrenceChanged',
            i,
          ),
        );
        i++;
      }
      // Appointment.originatingAppointment (reference)
      i = 0;
      for (final entry
          in resource.originatingAppointment?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Appointment.originatingAppointment',
            i,
          ),
        );
        i++;
      }
      // Appointment.participant.status (token)
      i = 0;
      for (final entry in resource.participant
              .map<fhir.FhirCodeEnum?>((e) => e.status)
              .makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Appointment.participant.status',
            i,
          ),
        );
        i++;
      }
      // Appointment.participant.actor.where(resolve() is Practitioner) (reference)
      i = 0;
      for (final entry in resource.participant
              .map<fhir.Reference?>((e) => e.actor)
              .where((e) {
            final ref = e?.reference?.toString().split('/') ?? [];
            return ref.length > 1 && ref[ref.length - 2] == 'Practitioner';
          }).makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Appointment.participant.actor.where(resolve() is Practitioner)',
            i,
          ),
        );
        i++;
      }
      // Appointment.previousAppointment (reference)
      i = 0;
      for (final entry
          in resource.previousAppointment?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Appointment.previousAppointment',
            i,
          ),
        );
        i++;
      }
      // Appointment.reason.concept (token)
      i = 0;
      for (final entry in resource.reason
              ?.map<fhir.CodeableConcept?>((e) => e.concept)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Appointment.reason.concept',
            i,
          ),
        );
        i++;
      }
      // Appointment.reason.reference (reference)
      i = 0;
      for (final entry in resource.reason
              ?.map<fhir.Reference?>((e) => e.reference)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Appointment.reason.reference',
            i,
          ),
        );
        i++;
      }
      // Appointment.serviceCategory (token)
      i = 0;
      for (final entry
          in resource.serviceCategory?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Appointment.serviceCategory',
            i,
          ),
        );
        i++;
      }
      // Appointment.serviceType.concept (token)
      i = 0;
      for (final entry in resource.serviceType
              ?.map<fhir.CodeableConcept?>((e) => e.concept)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Appointment.serviceType.concept',
            i,
          ),
        );
        i++;
      }
      // Appointment.serviceType.reference (reference)
      i = 0;
      for (final entry in resource.serviceType
              ?.map<fhir.Reference?>((e) => e.reference)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Appointment.serviceType.reference',
            i,
          ),
        );
        i++;
      }
      // Appointment.slot (reference)
      i = 0;
      for (final entry in resource.slot?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Appointment.slot',
            i,
          ),
        );
        i++;
      }
      // Appointment.specialty (token)
      i = 0;
      for (final entry
          in resource.specialty?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Appointment.specialty',
            i,
          ),
        );
        i++;
      }
      // Appointment.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Appointment.status',
            i,
          ),
        );
        i++;
      }
      // Appointment.subject (reference)
      i = 0;
      for (final entry in resource.subject?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Appointment.subject',
            i,
          ),
        );
        i++;
      }
      // Appointment.supportingInformation (reference)
      i = 0;
      for (final entry
          in resource.supportingInformation?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Appointment.supportingInformation',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.AppointmentResponse _:
      // AppointmentResponse.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AppointmentResponse.identifier',
            i,
          ),
        );
        i++;
      }
      // AppointmentResponse.actor.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.actor?.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AppointmentResponse.actor.where(resolve() is Patient)',
            i,
          ),
        );
        i++;
      }
      // AppointmentResponse.actor (reference)
      i = 0;
      for (final entry in resource.actor?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AppointmentResponse.actor',
            i,
          ),
        );
        i++;
      }
      // AppointmentResponse.appointment (reference)
      i = 0;
      for (final entry in resource.appointment.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AppointmentResponse.appointment',
            i,
          ),
        );
        i++;
      }
      // AppointmentResponse.actor.where(resolve() is Group) (reference)
      i = 0;
      for (final entry
          in resource.actor?.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Group';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AppointmentResponse.actor.where(resolve() is Group)',
            i,
          ),
        );
        i++;
      }
      // AppointmentResponse.actor.where(resolve() is Location) (reference)
      i = 0;
      for (final entry
          in resource.actor?.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Location';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AppointmentResponse.actor.where(resolve() is Location)',
            i,
          ),
        );
        i++;
      }
      // AppointmentResponse.participantStatus (token)
      i = 0;
      for (final entry
          in resource.participantStatus.makeIterable<fhir.FhirCodeEnum>() ??
              <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AppointmentResponse.participantStatus',
            i,
          ),
        );
        i++;
      }
      // AppointmentResponse.actor.where(resolve() is Practitioner) (reference)
      i = 0;
      for (final entry
          in resource.actor?.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Practitioner';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AppointmentResponse.actor.where(resolve() is Practitioner)',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.ArtifactAssessment _:
      // ArtifactAssessment.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ArtifactAssessment.date',
            i,
          ),
        );
        i++;
      }
      // ArtifactAssessment.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ArtifactAssessment.identifier',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.AuditEvent _:
      // AuditEvent.patient (reference)
      i = 0;
      for (final entry in resource.patient?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AuditEvent.patient',
            i,
          ),
        );
        i++;
      }
      // AuditEvent.recorded (date)
      i = 0;
      for (final entry in resource.recorded.makeIterable<fhir.FhirInstant>() ??
          <fhir.FhirInstant>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AuditEvent.recorded',
            i,
          ),
        );
        i++;
      }
      // AuditEvent.action (token)
      i = 0;
      for (final entry in resource.action?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AuditEvent.action',
            i,
          ),
        );
        i++;
      }
      // AuditEvent.agent.who (reference)
      i = 0;
      for (final entry in resource.agent
              .map<fhir.Reference?>((e) => e.who)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AuditEvent.agent.who',
            i,
          ),
        );
        i++;
      }
      // AuditEvent.agent.role (token)
      i = 0;
      for (final entry in resource.agent
              .expand((e) => e.role ?? <fhir.CodeableConcept>[])
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AuditEvent.agent.role',
            i,
          ),
        );
        i++;
      }
      // AuditEvent.basedOn (reference)
      i = 0;
      for (final entry in resource.basedOn?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AuditEvent.basedOn',
            i,
          ),
        );
        i++;
      }
      // AuditEvent.encounter (reference)
      i = 0;
      for (final entry in resource.encounter?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AuditEvent.encounter',
            i,
          ),
        );
        i++;
      }
      // AuditEvent.entity.what (reference)
      i = 0;
      for (final entry in resource.entity
              ?.map<fhir.Reference?>((e) => e.what)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AuditEvent.entity.what',
            i,
          ),
        );
        i++;
      }
      // AuditEvent.entity.description (string)
      i = 0;
      for (final entry in resource.entity
              ?.map<fhir.FhirString?>((e) => e.description)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AuditEvent.entity.description',
            i,
          ),
        );
        i++;
      }
      // AuditEvent.entity.role (token)
      i = 0;
      for (final entry in resource.entity
              ?.map<fhir.CodeableConcept?>((e) => e.role)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AuditEvent.entity.role',
            i,
          ),
        );
        i++;
      }
      // AuditEvent.outcome.code (token)
      i = 0;
      for (final entry in resource.outcome?.code.makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AuditEvent.outcome.code',
            i,
          ),
        );
        i++;
      }
      // AuditEvent.agent.policy (uri)
      i = 0;
      for (final entry in resource.agent
              .expand((e) => e.policy ?? <fhir.FhirUri>[])
              .makeIterable<fhir.FhirUri>() ??
          <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AuditEvent.agent.policy',
            i,
          ),
        );
        i++;
      }
      // AuditEvent.authorization (token)
      i = 0;
      for (final entry
          in resource.authorization?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AuditEvent.authorization',
            i,
          ),
        );
        i++;
      }
      // AuditEvent.agent.authorization (token)
      i = 0;
      for (final entry in resource.agent
              .expand((e) => e.authorization ?? <fhir.CodeableConcept>[])
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AuditEvent.agent.authorization',
            i,
          ),
        );
        i++;
      }
      // AuditEvent.source.observer (reference)
      i = 0;
      for (final entry
          in resource.source.observer.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AuditEvent.source.observer',
            i,
          ),
        );
        i++;
      }
      // AuditEvent.subtype (token)
      i = 0;
      for (final entry
          in resource.subtype?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AuditEvent.subtype',
            i,
          ),
        );
        i++;
      }
      // AuditEvent.type (token)
      i = 0;
      for (final entry in resource.type.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'AuditEvent.type',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.Basic _:
      // Basic.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Basic.identifier',
            i,
          ),
        );
        i++;
      }
      // Basic.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject?.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Basic.subject.where(resolve() is Patient)',
            i,
          ),
        );
        i++;
      }
      // Basic.code (token)
      i = 0;
      for (final entry in resource.code.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Basic.code',
            i,
          ),
        );
        i++;
      }
      // Basic.author (reference)
      i = 0;
      for (final entry in resource.author?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Basic.author',
            i,
          ),
        );
        i++;
      }
      // Basic.created (date)
      i = 0;
      for (final entry in resource.created?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Basic.created',
            i,
          ),
        );
        i++;
      }
      // Basic.subject (reference)
      i = 0;
      for (final entry in resource.subject?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Basic.subject',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.BiologicallyDerivedProduct _:
      // BiologicallyDerivedProduct.biologicalSourceEvent (token)
      i = 0;
      for (final entry
          in resource.biologicalSourceEvent?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'BiologicallyDerivedProduct.biologicalSourceEvent',
            i,
          ),
        );
        i++;
      }
      // BiologicallyDerivedProduct.productCode (token)
      i = 0;
      for (final entry
          in resource.productCode?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'BiologicallyDerivedProduct.productCode',
            i,
          ),
        );
        i++;
      }
      // BiologicallyDerivedProduct.collection.collector (reference)
      i = 0;
      for (final entry
          in resource.collection?.collector?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'BiologicallyDerivedProduct.collection.collector',
            i,
          ),
        );
        i++;
      }
      // BiologicallyDerivedProduct.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'BiologicallyDerivedProduct.identifier',
            i,
          ),
        );
        i++;
      }
      // BiologicallyDerivedProduct.productCategory (token)
      i = 0;
      for (final entry
          in resource.productCategory?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'BiologicallyDerivedProduct.productCategory',
            i,
          ),
        );
        i++;
      }
      // BiologicallyDerivedProduct.productStatus (token)
      i = 0;
      for (final entry in resource.productStatus?.makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'BiologicallyDerivedProduct.productStatus',
            i,
          ),
        );
        i++;
      }
      // BiologicallyDerivedProduct.request (reference)
      i = 0;
      for (final entry in resource.request?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'BiologicallyDerivedProduct.request',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.BiologicallyDerivedProductDispense _:
      // BiologicallyDerivedProductDispense.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'BiologicallyDerivedProductDispense.identifier',
            i,
          ),
        );
        i++;
      }
      // BiologicallyDerivedProductDispense.patient (reference)
      i = 0;
      for (final entry in resource.patient.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'BiologicallyDerivedProductDispense.patient',
            i,
          ),
        );
        i++;
      }
      // BiologicallyDerivedProductDispense.performer.actor (reference)
      i = 0;
      for (final entry in resource.performer
              ?.map<fhir.Reference?>((e) => e.actor)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'BiologicallyDerivedProductDispense.performer.actor',
            i,
          ),
        );
        i++;
      }
      // BiologicallyDerivedProductDispense.product (reference)
      i = 0;
      for (final entry in resource.product.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'BiologicallyDerivedProductDispense.product',
            i,
          ),
        );
        i++;
      }
      // BiologicallyDerivedProductDispense.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'BiologicallyDerivedProductDispense.status',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.BodyStructure _:
      // BodyStructure.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'BodyStructure.identifier',
            i,
          ),
        );
        i++;
      }
      // BodyStructure.patient (reference)
      i = 0;
      for (final entry in resource.patient.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'BodyStructure.patient',
            i,
          ),
        );
        i++;
      }
      // BodyStructure.excludedStructure.structure (token)
      i = 0;
      for (final entry in resource.excludedStructure
              ?.map<fhir.CodeableConcept?>((e) => e.structure)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'BodyStructure.excludedStructure.structure',
            i,
          ),
        );
        i++;
      }
      // BodyStructure.includedStructure.structure (token)
      i = 0;
      for (final entry in resource.includedStructure
              .map<fhir.CodeableConcept?>((e) => e.structure)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'BodyStructure.includedStructure.structure',
            i,
          ),
        );
        i++;
      }
      // BodyStructure.morphology (token)
      i = 0;
      for (final entry
          in resource.morphology?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'BodyStructure.morphology',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.Bundle _:
      // SKIPPED (unsupported FHIRPath): // Bundle.entry[0].resource as Composition (resource)
      // SKIPPED (unsupported FHIRPath): i = 0;
      // SKIPPED (unsupported FHIRPath): for (final entry in resource.entry?.firstOrNull?.resource as Composition ?? <fhir.FhirBase>[]) {
      // SKIPPED (unsupported FHIRPath): searchParameterLists.unknownParams.addAll(
      // SKIPPED (unsupported FHIRPath): entry.toUnknownParam(
      // SKIPPED (unsupported FHIRPath): resourceType, id, lastUpdated, 'Bundle.entry[0].resource as Composition', i,
      // SKIPPED (unsupported FHIRPath): ),
      // SKIPPED (unsupported FHIRPath): );
      // SKIPPED (unsupported FHIRPath): i++;
      // SKIPPED (unsupported FHIRPath): }
      // Bundle.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Bundle.identifier',
            i,
          ),
        );
        i++;
      }
      // SKIPPED (unsupported FHIRPath): // Bundle.entry[0].resource as MessageHeader (resource)
      // SKIPPED (unsupported FHIRPath): i = 0;
      // SKIPPED (unsupported FHIRPath): for (final entry in resource.entry?.firstOrNull?.resource as MessageHeader ?? <fhir.FhirBase>[]) {
      // SKIPPED (unsupported FHIRPath): searchParameterLists.unknownParams.addAll(
      // SKIPPED (unsupported FHIRPath): entry.toUnknownParam(
      // SKIPPED (unsupported FHIRPath): resourceType, id, lastUpdated, 'Bundle.entry[0].resource as MessageHeader', i,
      // SKIPPED (unsupported FHIRPath): ),
      // SKIPPED (unsupported FHIRPath): );
      // SKIPPED (unsupported FHIRPath): i++;
      // SKIPPED (unsupported FHIRPath): }
      // Bundle.timestamp (date)
      i = 0;
      for (final entry
          in resource.timestamp?.makeIterable<fhir.FhirInstant>() ??
              <fhir.FhirInstant>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Bundle.timestamp',
            i,
          ),
        );
        i++;
      }
      // Bundle.type (token)
      i = 0;
      for (final entry in resource.type.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Bundle.type',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.CapabilityStatement _:
      // CapabilityStatement.useContext.code (token)
      i = 0;
      for (final entry in resource.useContext
              ?.map<fhir.Coding?>((e) => e.code)
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CapabilityStatement.useContext.code',
            i,
          ),
        );
        i++;
      }
      // CapabilityStatement.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CapabilityStatement.date',
            i,
          ),
        );
        i++;
      }
      // CapabilityStatement.description (string)
      i = 0;
      for (final entry
          in resource.description?.makeIterable<fhir.FhirMarkdown>() ??
              <fhir.FhirMarkdown>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CapabilityStatement.description',
            i,
          ),
        );
        i++;
      }
      // CapabilityStatement.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CapabilityStatement.identifier',
            i,
          ),
        );
        i++;
      }
      // CapabilityStatement.jurisdiction (token)
      i = 0;
      for (final entry
          in resource.jurisdiction?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CapabilityStatement.jurisdiction',
            i,
          ),
        );
        i++;
      }
      // CapabilityStatement.name (string)
      i = 0;
      for (final entry in resource.name?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CapabilityStatement.name',
            i,
          ),
        );
        i++;
      }
      // CapabilityStatement.publisher (string)
      i = 0;
      for (final entry in resource.publisher?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CapabilityStatement.publisher',
            i,
          ),
        );
        i++;
      }
      // CapabilityStatement.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CapabilityStatement.status',
            i,
          ),
        );
        i++;
      }
      // CapabilityStatement.title (string)
      i = 0;
      for (final entry in resource.title?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CapabilityStatement.title',
            i,
          ),
        );
        i++;
      }
      // CapabilityStatement.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CapabilityStatement.url',
            i,
          ),
        );
        i++;
      }
      // CapabilityStatement.version (token)
      i = 0;
      for (final entry in resource.version?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CapabilityStatement.version',
            i,
          ),
        );
        i++;
      }
      // CapabilityStatement.useContext (composite)
      i = 0;
      for (final entry
          in resource.useContext?.makeIterable<fhir.UsageContext>() ??
              <fhir.UsageContext>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CapabilityStatement.useContext',
            i,
          ),
        );
        i++;
      }
      // CapabilityStatement.fhirVersion (token)
      i = 0;
      for (final entry
          in resource.fhirVersion.makeIterable<fhir.FhirCodeEnum>() ??
              <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CapabilityStatement.fhirVersion',
            i,
          ),
        );
        i++;
      }
      // CapabilityStatement.format (token)
      i = 0;
      for (final entry in resource.format.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CapabilityStatement.format',
            i,
          ),
        );
        i++;
      }
      // CapabilityStatement.implementationGuide (reference)
      i = 0;
      for (final entry
          in resource.implementationGuide?.makeIterable<fhir.FhirCanonical>() ??
              <fhir.FhirCanonical>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CapabilityStatement.implementationGuide',
            i,
          ),
        );
        i++;
      }
      // CapabilityStatement.rest.mode (token)
      i = 0;
      for (final entry in resource.rest
              ?.map<fhir.FhirCodeEnum?>((e) => e.mode)
              .makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CapabilityStatement.rest.mode',
            i,
          ),
        );
        i++;
      }
      // CapabilityStatement.rest.resource.type (token)
      i = 0;
      for (final entry in resource.rest
              ?.expand(
                  (e) => e.resource ?? <fhir.CapabilityStatementResource>[])
              .map<fhir.FhirCodeEnum?>((e) => e.type)
              .makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CapabilityStatement.rest.resource.type',
            i,
          ),
        );
        i++;
      }
      // CapabilityStatement.rest.resource.profile (reference)
      i = 0;
      for (final entry in resource.rest
              ?.expand(
                  (e) => e.resource ?? <fhir.CapabilityStatementResource>[])
              .map<fhir.FhirCanonical?>((e) => e.profile)
              .makeIterable<fhir.FhirCanonical>() ??
          <fhir.FhirCanonical>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CapabilityStatement.rest.resource.profile',
            i,
          ),
        );
        i++;
      }
      // CapabilityStatement.rest.security.service (token)
      i = 0;
      for (final entry in resource.rest
              ?.map<fhir.CapabilityStatementSecurity?>((e) => e.security)
              .expand((e) => e?.service ?? <fhir.CodeableConcept>[])
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CapabilityStatement.rest.security.service',
            i,
          ),
        );
        i++;
      }
      // CapabilityStatement.software.name (string)
      i = 0;
      for (final entry
          in resource.software?.name.makeIterable<fhir.FhirString>() ??
              <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CapabilityStatement.software.name',
            i,
          ),
        );
        i++;
      }
      // CapabilityStatement.rest.resource.supportedProfile (reference)
      i = 0;
      for (final entry in resource.rest
              ?.expand(
                  (e) => e.resource ?? <fhir.CapabilityStatementResource>[])
              .expand((e) => e.supportedProfile ?? <fhir.FhirCanonical>[])
              .makeIterable<fhir.FhirCanonical>() ??
          <fhir.FhirCanonical>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CapabilityStatement.rest.resource.supportedProfile',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.CarePlan _:
      // CarePlan.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CarePlan.identifier',
            i,
          ),
        );
        i++;
      }
      // CarePlan.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CarePlan.subject.where(resolve() is Patient)',
            i,
          ),
        );
        i++;
      }
      // CarePlan.period (date)
      i = 0;
      for (final entry
          in resource.period?.makeIterable<fhir.Period>() ?? <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CarePlan.period',
            i,
          ),
        );
        i++;
      }
      // CarePlan.encounter (reference)
      i = 0;
      for (final entry in resource.encounter?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CarePlan.encounter',
            i,
          ),
        );
        i++;
      }
      // CarePlan.activity.plannedActivityReference (reference)
      i = 0;
      for (final entry in resource.activity
              ?.map<fhir.Reference?>((e) => e.plannedActivityReference)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CarePlan.activity.plannedActivityReference',
            i,
          ),
        );
        i++;
      }
      // CarePlan.basedOn (reference)
      i = 0;
      for (final entry in resource.basedOn?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CarePlan.basedOn',
            i,
          ),
        );
        i++;
      }
      // CarePlan.careTeam (reference)
      i = 0;
      for (final entry in resource.careTeam?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CarePlan.careTeam',
            i,
          ),
        );
        i++;
      }
      // CarePlan.category (token)
      i = 0;
      for (final entry
          in resource.category?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CarePlan.category',
            i,
          ),
        );
        i++;
      }
      // CarePlan.addresses.reference (reference)
      i = 0;
      for (final entry in resource.addresses
              ?.map<fhir.Reference?>((e) => e.reference)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CarePlan.addresses.reference',
            i,
          ),
        );
        i++;
      }
      // CarePlan.custodian (reference)
      i = 0;
      for (final entry in resource.custodian?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CarePlan.custodian',
            i,
          ),
        );
        i++;
      }
      // CarePlan.goal (reference)
      i = 0;
      for (final entry in resource.goal?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CarePlan.goal',
            i,
          ),
        );
        i++;
      }
      // CarePlan.intent (token)
      i = 0;
      for (final entry in resource.intent.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CarePlan.intent',
            i,
          ),
        );
        i++;
      }
      // CarePlan.partOf (reference)
      i = 0;
      for (final entry in resource.partOf?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CarePlan.partOf',
            i,
          ),
        );
        i++;
      }
      // CarePlan.replaces (reference)
      i = 0;
      for (final entry in resource.replaces?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CarePlan.replaces',
            i,
          ),
        );
        i++;
      }
      // CarePlan.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CarePlan.status',
            i,
          ),
        );
        i++;
      }
      // CarePlan.subject (reference)
      i = 0;
      for (final entry in resource.subject.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CarePlan.subject',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.CareTeam _:
      // CareTeam.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CareTeam.identifier',
            i,
          ),
        );
        i++;
      }
      // CareTeam.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject?.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CareTeam.subject.where(resolve() is Patient)',
            i,
          ),
        );
        i++;
      }
      // CareTeam.category (token)
      i = 0;
      for (final entry
          in resource.category?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CareTeam.category',
            i,
          ),
        );
        i++;
      }
      // CareTeam.name (string)
      i = 0;
      for (final entry in resource.name?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CareTeam.name',
            i,
          ),
        );
        i++;
      }
      // SKIPPED (unsupported FHIRPath): // CareTeam.extension('http://hl7.org/fhir/StructureDefinition/careteam-alias').value (string)
      // SKIPPED (unsupported FHIRPath): i = 0;
      // SKIPPED (unsupported FHIRPath): for (final entry in resource.extension('http://hl7?.org/fhir/StructureDefinition/careteam-alias')?.value ?? <fhir.FhirBase>[]) {
      // SKIPPED (unsupported FHIRPath): searchParameterLists.stringParams.addAll(
      // SKIPPED (unsupported FHIRPath): entry.toStringSearchParameter(
      // SKIPPED (unsupported FHIRPath): resourceType, id, lastUpdated, "CareTeam.extension('http://hl7.org/fhir/StructureDefinition/careteam-alias').value", i,
      // SKIPPED (unsupported FHIRPath): ),
      // SKIPPED (unsupported FHIRPath): );
      // SKIPPED (unsupported FHIRPath): i++;
      // SKIPPED (unsupported FHIRPath): }
      // CareTeam.participant.member (reference)
      i = 0;
      for (final entry in resource.participant
              ?.map<fhir.Reference?>((e) => e.member)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CareTeam.participant.member',
            i,
          ),
        );
        i++;
      }
      // CareTeam.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CareTeam.status',
            i,
          ),
        );
        i++;
      }
      // CareTeam.subject (reference)
      i = 0;
      for (final entry in resource.subject?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CareTeam.subject',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.ChargeItem _:
      // ChargeItem.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ChargeItem.identifier',
            i,
          ),
        );
        i++;
      }
      // ChargeItem.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ChargeItem.subject.where(resolve() is Patient)',
            i,
          ),
        );
        i++;
      }
      // ChargeItem.code (token)
      i = 0;
      for (final entry in resource.code.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ChargeItem.code',
            i,
          ),
        );
        i++;
      }
      // ChargeItem.encounter (reference)
      i = 0;
      for (final entry in resource.encounter?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ChargeItem.encounter',
            i,
          ),
        );
        i++;
      }
      // ChargeItem.account (reference)
      i = 0;
      for (final entry in resource.account?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ChargeItem.account',
            i,
          ),
        );
        i++;
      }
      // ChargeItem.enteredDate (date)
      i = 0;
      for (final entry
          in resource.enteredDate?.makeIterable<fhir.FhirDateTime>() ??
              <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ChargeItem.enteredDate',
            i,
          ),
        );
        i++;
      }
      // ChargeItem.enterer (reference)
      i = 0;
      for (final entry in resource.enterer?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ChargeItem.enterer',
            i,
          ),
        );
        i++;
      }
      // ChargeItem.totalPriceComponent.factor (number)
      i = 0;
      for (final entry in resource.totalPriceComponent?.factor
              ?.makeIterable<fhir.FhirDecimal>() ??
          <fhir.FhirDecimal>[]) {
        searchParameterLists.numberParams.addAll(
          entry.toNumberSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ChargeItem.totalPriceComponent.factor',
            i,
          ),
        );
        i++;
      }
      // ChargeItem.occurrence.ofType(dateTime) (date)
      i = 0;
      for (final entry
          in resource.occurrenceDateTime?.makeIterable<fhir.FhirDateTime>() ??
              <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ChargeItem.occurrence.ofType(dateTime)',
            i,
          ),
        );
        i++;
      }
      // ChargeItem.occurrence.ofType(Period) (date)
      i = 0;
      for (final entry
          in resource.occurrencePeriod?.makeIterable<fhir.Period>() ??
              <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ChargeItem.occurrence.ofType(Period)',
            i,
          ),
        );
        i++;
      }
      // ChargeItem.occurrence.ofType(Timing) (date)
      i = 0;
      for (final entry
          in resource.occurrenceTiming?.makeIterable<fhir.Timing>() ??
              <fhir.Timing>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ChargeItem.occurrence.ofType(Timing)',
            i,
          ),
        );
        i++;
      }
      // ChargeItem.performer.actor (reference)
      i = 0;
      for (final entry in resource.performer
              ?.map<fhir.Reference?>((e) => e.actor)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ChargeItem.performer.actor',
            i,
          ),
        );
        i++;
      }
      // ChargeItem.performer.function (token)
      i = 0;
      for (final entry in resource.performer
              ?.map<fhir.CodeableConcept?>((e) => e.function_)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ChargeItem.performer.function',
            i,
          ),
        );
        i++;
      }
      // ChargeItem.performingOrganization (reference)
      i = 0;
      for (final entry
          in resource.performingOrganization?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ChargeItem.performingOrganization',
            i,
          ),
        );
        i++;
      }
      // ChargeItem.totalPriceComponent.amount (quantity)
      i = 0;
      for (final entry
          in resource.totalPriceComponent?.amount?.makeIterable<fhir.Money>() ??
              <fhir.Money>[]) {
        searchParameterLists.quantityParams.addAll(
          entry.toQuantitySearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ChargeItem.totalPriceComponent.amount',
            i,
          ),
        );
        i++;
      }
      // ChargeItem.quantity (quantity)
      i = 0;
      for (final entry in resource.quantity?.makeIterable<fhir.Quantity>() ??
          <fhir.Quantity>[]) {
        searchParameterLists.quantityParams.addAll(
          entry.toQuantitySearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ChargeItem.quantity',
            i,
          ),
        );
        i++;
      }
      // ChargeItem.requestingOrganization (reference)
      i = 0;
      for (final entry
          in resource.requestingOrganization?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ChargeItem.requestingOrganization',
            i,
          ),
        );
        i++;
      }
      // ChargeItem.service.reference (reference)
      i = 0;
      for (final entry in resource.service
              ?.map<fhir.Reference?>((e) => e.reference)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ChargeItem.service.reference',
            i,
          ),
        );
        i++;
      }
      // ChargeItem.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ChargeItem.status',
            i,
          ),
        );
        i++;
      }
      // ChargeItem.subject (reference)
      i = 0;
      for (final entry in resource.subject.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ChargeItem.subject',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.ChargeItemDefinition _:
      // ChargeItemDefinition.useContext.code (token)
      i = 0;
      for (final entry in resource.useContext
              ?.map<fhir.Coding?>((e) => e.code)
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ChargeItemDefinition.useContext.code',
            i,
          ),
        );
        i++;
      }
      // ChargeItemDefinition.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ChargeItemDefinition.date',
            i,
          ),
        );
        i++;
      }
      // ChargeItemDefinition.description (string)
      i = 0;
      for (final entry
          in resource.description?.makeIterable<fhir.FhirMarkdown>() ??
              <fhir.FhirMarkdown>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ChargeItemDefinition.description',
            i,
          ),
        );
        i++;
      }
      // ChargeItemDefinition.applicability.effectivePeriod (date)
      i = 0;
      for (final entry in resource.applicability
              ?.map<fhir.Period?>((e) => e.effectivePeriod)
              .makeIterable<fhir.Period>() ??
          <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ChargeItemDefinition.applicability.effectivePeriod',
            i,
          ),
        );
        i++;
      }
      // ChargeItemDefinition.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ChargeItemDefinition.identifier',
            i,
          ),
        );
        i++;
      }
      // ChargeItemDefinition.jurisdiction (token)
      i = 0;
      for (final entry
          in resource.jurisdiction?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ChargeItemDefinition.jurisdiction',
            i,
          ),
        );
        i++;
      }
      // ChargeItemDefinition.publisher (string)
      i = 0;
      for (final entry in resource.publisher?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ChargeItemDefinition.publisher',
            i,
          ),
        );
        i++;
      }
      // ChargeItemDefinition.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ChargeItemDefinition.status',
            i,
          ),
        );
        i++;
      }
      // ChargeItemDefinition.title (string)
      i = 0;
      for (final entry in resource.title?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ChargeItemDefinition.title',
            i,
          ),
        );
        i++;
      }
      // ChargeItemDefinition.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ChargeItemDefinition.url',
            i,
          ),
        );
        i++;
      }
      // ChargeItemDefinition.version (token)
      i = 0;
      for (final entry in resource.version?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ChargeItemDefinition.version',
            i,
          ),
        );
        i++;
      }
      // ChargeItemDefinition.useContext (composite)
      i = 0;
      for (final entry
          in resource.useContext?.makeIterable<fhir.UsageContext>() ??
              <fhir.UsageContext>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ChargeItemDefinition.useContext',
            i,
          ),
        );
        i++;
      }
      // ChargeItemDefinition.account (reference)
      i = 0;
      for (final entry in resource.account?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ChargeItemDefinition.account',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.Citation _:
      // Citation.useContext.code (token)
      i = 0;
      for (final entry in resource.useContext
              ?.map<fhir.Coding?>((e) => e.code)
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Citation.useContext.code',
            i,
          ),
        );
        i++;
      }
      // Citation.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Citation.date',
            i,
          ),
        );
        i++;
      }
      // Citation.description (string)
      i = 0;
      for (final entry
          in resource.description?.makeIterable<fhir.FhirMarkdown>() ??
              <fhir.FhirMarkdown>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Citation.description',
            i,
          ),
        );
        i++;
      }
      // Citation.effectivePeriod (date)
      i = 0;
      for (final entry
          in resource.effectivePeriod?.makeIterable<fhir.Period>() ??
              <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Citation.effectivePeriod',
            i,
          ),
        );
        i++;
      }
      // Citation.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Citation.identifier',
            i,
          ),
        );
        i++;
      }
      // Citation.jurisdiction (token)
      i = 0;
      for (final entry
          in resource.jurisdiction?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Citation.jurisdiction',
            i,
          ),
        );
        i++;
      }
      // Citation.name (string)
      i = 0;
      for (final entry in resource.name?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Citation.name',
            i,
          ),
        );
        i++;
      }
      // Citation.publisher (string)
      i = 0;
      for (final entry in resource.publisher?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Citation.publisher',
            i,
          ),
        );
        i++;
      }
      // Citation.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Citation.status',
            i,
          ),
        );
        i++;
      }
      // Citation.title (string)
      i = 0;
      for (final entry in resource.title?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Citation.title',
            i,
          ),
        );
        i++;
      }
      // Citation.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Citation.url',
            i,
          ),
        );
        i++;
      }
      // Citation.version (token)
      i = 0;
      for (final entry in resource.version?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Citation.version',
            i,
          ),
        );
        i++;
      }
      // Citation.useContext (composite)
      i = 0;
      for (final entry
          in resource.useContext?.makeIterable<fhir.UsageContext>() ??
              <fhir.UsageContext>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Citation.useContext',
            i,
          ),
        );
        i++;
      }
      // Citation.classification (composite)
      i = 0;
      for (final entry in resource.classification
              ?.makeIterable<fhir.CitationClassification>() ??
          <fhir.CitationClassification>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Citation.classification',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.Claim _:
      // Claim.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Claim.identifier',
            i,
          ),
        );
        i++;
      }
      // Claim.patient (reference)
      i = 0;
      for (final entry in resource.patient.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Claim.patient',
            i,
          ),
        );
        i++;
      }
      // Claim.item.encounter (reference)
      i = 0;
      for (final entry in resource.item
              ?.expand((e) => e.encounter ?? <fhir.Reference>[])
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Claim.item.encounter',
            i,
          ),
        );
        i++;
      }
      // Claim.careTeam.provider (reference)
      i = 0;
      for (final entry in resource.careTeam
              ?.map<fhir.Reference?>((e) => e.provider)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Claim.careTeam.provider',
            i,
          ),
        );
        i++;
      }
      // Claim.created (date)
      i = 0;
      for (final entry in resource.created.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Claim.created',
            i,
          ),
        );
        i++;
      }
      // Claim.item.detail.udi (reference)
      i = 0;
      for (final entry in resource.item
              ?.expand((e) => e.detail ?? <fhir.ClaimDetail>[])
              .expand((e) => e.udi ?? <fhir.Reference>[])
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Claim.item.detail.udi',
            i,
          ),
        );
        i++;
      }
      // Claim.enterer (reference)
      i = 0;
      for (final entry in resource.enterer?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Claim.enterer',
            i,
          ),
        );
        i++;
      }
      // Claim.facility (reference)
      i = 0;
      for (final entry in resource.facility?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Claim.facility',
            i,
          ),
        );
        i++;
      }
      // Claim.insurer (reference)
      i = 0;
      for (final entry in resource.insurer?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Claim.insurer',
            i,
          ),
        );
        i++;
      }
      // Claim.item.udi (reference)
      i = 0;
      for (final entry in resource.item
              ?.expand((e) => e.udi ?? <fhir.Reference>[])
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Claim.item.udi',
            i,
          ),
        );
        i++;
      }
      // Claim.payee.party (reference)
      i = 0;
      for (final entry
          in resource.payee?.party?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Claim.payee.party',
            i,
          ),
        );
        i++;
      }
      // Claim.priority (token)
      i = 0;
      for (final entry
          in resource.priority?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Claim.priority',
            i,
          ),
        );
        i++;
      }
      // Claim.procedure.udi (reference)
      i = 0;
      for (final entry in resource.procedure
              ?.expand((e) => e.udi ?? <fhir.Reference>[])
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Claim.procedure.udi',
            i,
          ),
        );
        i++;
      }
      // Claim.provider (reference)
      i = 0;
      for (final entry in resource.provider?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Claim.provider',
            i,
          ),
        );
        i++;
      }
      // Claim.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Claim.status',
            i,
          ),
        );
        i++;
      }
      // Claim.item.detail.subDetail.udi (reference)
      i = 0;
      for (final entry in resource.item
              ?.expand((e) => e.detail ?? <fhir.ClaimDetail>[])
              .expand((e) => e.subDetail ?? <fhir.ClaimSubDetail>[])
              .expand((e) => e.udi ?? <fhir.Reference>[])
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Claim.item.detail.subDetail.udi',
            i,
          ),
        );
        i++;
      }
      // Claim.use (token)
      i = 0;
      for (final entry in resource.use.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Claim.use',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.ClaimResponse _:
      // ClaimResponse.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClaimResponse.identifier',
            i,
          ),
        );
        i++;
      }
      // ClaimResponse.patient (reference)
      i = 0;
      for (final entry in resource.patient.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClaimResponse.patient',
            i,
          ),
        );
        i++;
      }
      // ClaimResponse.created (date)
      i = 0;
      for (final entry in resource.created.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClaimResponse.created',
            i,
          ),
        );
        i++;
      }
      // ClaimResponse.disposition (string)
      i = 0;
      for (final entry
          in resource.disposition?.makeIterable<fhir.FhirString>() ??
              <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClaimResponse.disposition',
            i,
          ),
        );
        i++;
      }
      // ClaimResponse.insurer (reference)
      i = 0;
      for (final entry in resource.insurer?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClaimResponse.insurer',
            i,
          ),
        );
        i++;
      }
      // ClaimResponse.outcome (token)
      i = 0;
      for (final entry in resource.outcome.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClaimResponse.outcome',
            i,
          ),
        );
        i++;
      }
      // ClaimResponse.payment.date (date)
      i = 0;
      for (final entry
          in resource.payment?.date?.makeIterable<fhir.FhirDate>() ??
              <fhir.FhirDate>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClaimResponse.payment.date',
            i,
          ),
        );
        i++;
      }
      // ClaimResponse.request (reference)
      i = 0;
      for (final entry in resource.request?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClaimResponse.request',
            i,
          ),
        );
        i++;
      }
      // ClaimResponse.requestor (reference)
      i = 0;
      for (final entry in resource.requestor?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClaimResponse.requestor',
            i,
          ),
        );
        i++;
      }
      // ClaimResponse.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClaimResponse.status',
            i,
          ),
        );
        i++;
      }
      // ClaimResponse.use (token)
      i = 0;
      for (final entry in resource.use.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClaimResponse.use',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.ClinicalAssessment _:
      // ClinicalAssessment.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClinicalAssessment.date',
            i,
          ),
        );
        i++;
      }
      // ClinicalAssessment.encounter (reference)
      i = 0;
      for (final entry in resource.encounter?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClinicalAssessment.encounter',
            i,
          ),
        );
        i++;
      }
      // ClinicalAssessment.finding.item.concept (token)
      i = 0;
      for (final entry in resource.finding
              ?.map<fhir.CodeableReference?>((e) => e.item)
              .map<fhir.CodeableConcept?>((e) => e?.concept)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClinicalAssessment.finding.item.concept',
            i,
          ),
        );
        i++;
      }
      // ClinicalAssessment.finding.item.reference (reference)
      i = 0;
      for (final entry in resource.finding
              ?.map<fhir.CodeableReference?>((e) => e.item)
              .map<fhir.Reference?>((e) => e?.reference)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClinicalAssessment.finding.item.reference',
            i,
          ),
        );
        i++;
      }
      // ClinicalAssessment.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClinicalAssessment.identifier',
            i,
          ),
        );
        i++;
      }
      // ClinicalAssessment.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClinicalAssessment.subject.where(resolve() is Patient)',
            i,
          ),
        );
        i++;
      }
      // ClinicalAssessment.performer (reference)
      i = 0;
      for (final entry in resource.performer?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClinicalAssessment.performer',
            i,
          ),
        );
        i++;
      }
      // ClinicalAssessment.previous (reference)
      i = 0;
      for (final entry in resource.previous?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClinicalAssessment.previous',
            i,
          ),
        );
        i++;
      }
      // ClinicalAssessment.problem (reference)
      i = 0;
      for (final entry in resource.problem?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClinicalAssessment.problem',
            i,
          ),
        );
        i++;
      }
      // ClinicalAssessment.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClinicalAssessment.status',
            i,
          ),
        );
        i++;
      }
      // ClinicalAssessment.subject (reference)
      i = 0;
      for (final entry in resource.subject.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClinicalAssessment.subject',
            i,
          ),
        );
        i++;
      }
      // ClinicalAssessment.supportingInfo (reference)
      i = 0;
      for (final entry
          in resource.supportingInfo?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClinicalAssessment.supportingInfo',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.ClinicalUseDefinition _:
      // ClinicalUseDefinition.contraindication.diseaseSymptomProcedure.concept (token)
      i = 0;
      for (final entry in resource
              .contraindication?.diseaseSymptomProcedure?.concept
              ?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClinicalUseDefinition.contraindication.diseaseSymptomProcedure.concept',
            i,
          ),
        );
        i++;
      }
      // ClinicalUseDefinition.contraindication.diseaseSymptomProcedure.reference (reference)
      i = 0;
      for (final entry in resource
              .contraindication?.diseaseSymptomProcedure?.reference
              ?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClinicalUseDefinition.contraindication.diseaseSymptomProcedure.reference',
            i,
          ),
        );
        i++;
      }
      // ClinicalUseDefinition.undesirableEffect.symptomConditionEffect.concept (token)
      i = 0;
      for (final entry in resource
              .undesirableEffect?.symptomConditionEffect?.concept
              ?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClinicalUseDefinition.undesirableEffect.symptomConditionEffect.concept',
            i,
          ),
        );
        i++;
      }
      // ClinicalUseDefinition.undesirableEffect.symptomConditionEffect.reference (reference)
      i = 0;
      for (final entry in resource
              .undesirableEffect?.symptomConditionEffect?.reference
              ?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClinicalUseDefinition.undesirableEffect.symptomConditionEffect.reference',
            i,
          ),
        );
        i++;
      }
      // ClinicalUseDefinition.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClinicalUseDefinition.identifier',
            i,
          ),
        );
        i++;
      }
      // ClinicalUseDefinition.indication.diseaseSymptomProcedure.concept (token)
      i = 0;
      for (final entry in resource.indication?.diseaseSymptomProcedure?.concept
              ?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClinicalUseDefinition.indication.diseaseSymptomProcedure.concept',
            i,
          ),
        );
        i++;
      }
      // ClinicalUseDefinition.indication.diseaseSymptomProcedure.reference (reference)
      i = 0;
      for (final entry in resource
              .indication?.diseaseSymptomProcedure?.reference
              ?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClinicalUseDefinition.indication.diseaseSymptomProcedure.reference',
            i,
          ),
        );
        i++;
      }
      // ClinicalUseDefinition.interaction.type (token)
      i = 0;
      for (final entry
          in resource.interaction?.type?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClinicalUseDefinition.interaction.type',
            i,
          ),
        );
        i++;
      }
      // ClinicalUseDefinition.subject.where(resolve() is MedicinalProductDefinition) (reference)
      i = 0;
      for (final entry in resource.subject?.where((e) {
            final ref = e.reference?.toString().split('/') ?? [];
            return ref.length > 1 &&
                ref[ref.length - 2] == 'MedicinalProductDefinition';
          }).makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClinicalUseDefinition.subject.where(resolve() is MedicinalProductDefinition)',
            i,
          ),
        );
        i++;
      }
      // ClinicalUseDefinition.status (token)
      i = 0;
      for (final entry
          in resource.status?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClinicalUseDefinition.status',
            i,
          ),
        );
        i++;
      }
      // ClinicalUseDefinition.subject (reference)
      i = 0;
      for (final entry in resource.subject?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClinicalUseDefinition.subject',
            i,
          ),
        );
        i++;
      }
      // ClinicalUseDefinition.type (token)
      i = 0;
      for (final entry in resource.type.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ClinicalUseDefinition.type',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.CodeSystem _:
      // CodeSystem.useContext.code (token)
      i = 0;
      for (final entry in resource.useContext
              ?.map<fhir.Coding?>((e) => e.code)
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CodeSystem.useContext.code',
            i,
          ),
        );
        i++;
      }
      // CodeSystem.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CodeSystem.date',
            i,
          ),
        );
        i++;
      }
      // CodeSystem.relatedArtifact.where(type='derived-from').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'derived-from')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "CodeSystem.relatedArtifact.where(type='derived-from').resource",
            i,
          ),
        );
        i++;
      }
      // CodeSystem.description (string)
      i = 0;
      for (final entry
          in resource.description?.makeIterable<fhir.FhirMarkdown>() ??
              <fhir.FhirMarkdown>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CodeSystem.description',
            i,
          ),
        );
        i++;
      }
      // CodeSystem.effectivePeriod (date)
      i = 0;
      for (final entry
          in resource.effectivePeriod?.makeIterable<fhir.Period>() ??
              <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CodeSystem.effectivePeriod',
            i,
          ),
        );
        i++;
      }
      // CodeSystem.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CodeSystem.identifier',
            i,
          ),
        );
        i++;
      }
      // CodeSystem.jurisdiction (token)
      i = 0;
      for (final entry
          in resource.jurisdiction?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CodeSystem.jurisdiction',
            i,
          ),
        );
        i++;
      }
      // CodeSystem.name (string)
      i = 0;
      for (final entry in resource.name?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CodeSystem.name',
            i,
          ),
        );
        i++;
      }
      // CodeSystem.relatedArtifact.where(type='predecessor').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'predecessor')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "CodeSystem.relatedArtifact.where(type='predecessor').resource",
            i,
          ),
        );
        i++;
      }
      // CodeSystem.publisher (string)
      i = 0;
      for (final entry in resource.publisher?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CodeSystem.publisher',
            i,
          ),
        );
        i++;
      }
      // CodeSystem.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CodeSystem.status',
            i,
          ),
        );
        i++;
      }
      // CodeSystem.title (string)
      i = 0;
      for (final entry in resource.title?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CodeSystem.title',
            i,
          ),
        );
        i++;
      }
      // CodeSystem.topic (token)
      i = 0;
      for (final entry
          in resource.topic?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CodeSystem.topic',
            i,
          ),
        );
        i++;
      }
      // CodeSystem.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CodeSystem.url',
            i,
          ),
        );
        i++;
      }
      // CodeSystem.version (token)
      i = 0;
      for (final entry in resource.version?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CodeSystem.version',
            i,
          ),
        );
        i++;
      }
      // CodeSystem.useContext (composite)
      i = 0;
      for (final entry
          in resource.useContext?.makeIterable<fhir.UsageContext>() ??
              <fhir.UsageContext>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CodeSystem.useContext',
            i,
          ),
        );
        i++;
      }
      // CodeSystem.concept.code (token)
      i = 0;
      for (final entry in resource.concept
              ?.map<fhir.FhirCode?>((e) => e.code)
              .makeIterable<fhir.FhirCode>() ??
          <fhir.FhirCode>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CodeSystem.concept.code',
            i,
          ),
        );
        i++;
      }
      // CodeSystem.content (token)
      i = 0;
      for (final entry in resource.content.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CodeSystem.content',
            i,
          ),
        );
        i++;
      }
      // CodeSystem.concept.designation.language (token)
      i = 0;
      for (final entry in resource.concept
              ?.expand((e) => e.designation ?? <fhir.CodeSystemDesignation>[])
              .map<fhir.FhirCodeEnum?>((e) => e.language)
              .makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CodeSystem.concept.designation.language',
            i,
          ),
        );
        i++;
      }
      // CodeSystem.supplements (reference)
      i = 0;
      for (final entry
          in resource.supplements?.makeIterable<fhir.FhirCanonical>() ??
              <fhir.FhirCanonical>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CodeSystem.supplements',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.Communication _:
      // Communication.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Communication.identifier',
            i,
          ),
        );
        i++;
      }
      // Communication.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject?.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Communication.subject.where(resolve() is Patient)',
            i,
          ),
        );
        i++;
      }
      // Communication.encounter (reference)
      i = 0;
      for (final entry in resource.encounter?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Communication.encounter',
            i,
          ),
        );
        i++;
      }
      // Communication.basedOn (reference)
      i = 0;
      for (final entry in resource.basedOn?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Communication.basedOn',
            i,
          ),
        );
        i++;
      }
      // Communication.category (token)
      i = 0;
      for (final entry
          in resource.category?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Communication.category',
            i,
          ),
        );
        i++;
      }
      // Communication.inResponseTo (reference)
      i = 0;
      for (final entry
          in resource.inResponseTo?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Communication.inResponseTo',
            i,
          ),
        );
        i++;
      }
      // Communication.medium (token)
      i = 0;
      for (final entry
          in resource.medium?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Communication.medium',
            i,
          ),
        );
        i++;
      }
      // Communication.partOf (reference)
      i = 0;
      for (final entry in resource.partOf?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Communication.partOf',
            i,
          ),
        );
        i++;
      }
      // Communication.reason.concept (token)
      i = 0;
      for (final entry in resource.reason
              ?.map<fhir.CodeableConcept?>((e) => e.concept)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Communication.reason.concept',
            i,
          ),
        );
        i++;
      }
      // Communication.reason.reference (reference)
      i = 0;
      for (final entry in resource.reason
              ?.map<fhir.Reference?>((e) => e.reference)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Communication.reason.reference',
            i,
          ),
        );
        i++;
      }
      // Communication.received (date)
      i = 0;
      for (final entry
          in resource.received?.makeIterable<fhir.FhirDateTime>() ??
              <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Communication.received',
            i,
          ),
        );
        i++;
      }
      // Communication.recipient (reference)
      i = 0;
      for (final entry in resource.recipient?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Communication.recipient',
            i,
          ),
        );
        i++;
      }
      // Communication.sender (reference)
      i = 0;
      for (final entry in resource.sender?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Communication.sender',
            i,
          ),
        );
        i++;
      }
      // Communication.sent (date)
      i = 0;
      for (final entry in resource.sent?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Communication.sent',
            i,
          ),
        );
        i++;
      }
      // Communication.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Communication.status',
            i,
          ),
        );
        i++;
      }
      // Communication.subject (reference)
      i = 0;
      for (final entry in resource.subject?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Communication.subject',
            i,
          ),
        );
        i++;
      }
      // Communication.topic (token)
      i = 0;
      for (final entry
          in resource.topic?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Communication.topic',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.CommunicationRequest _:
      // CommunicationRequest.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CommunicationRequest.identifier',
            i,
          ),
        );
        i++;
      }
      // CommunicationRequest.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject?.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CommunicationRequest.subject.where(resolve() is Patient)',
            i,
          ),
        );
        i++;
      }
      // CommunicationRequest.encounter (reference)
      i = 0;
      for (final entry in resource.encounter?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CommunicationRequest.encounter',
            i,
          ),
        );
        i++;
      }
      // CommunicationRequest.about (reference)
      i = 0;
      for (final entry in resource.about?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CommunicationRequest.about',
            i,
          ),
        );
        i++;
      }
      // CommunicationRequest.authoredOn (date)
      i = 0;
      for (final entry
          in resource.authoredOn?.makeIterable<fhir.FhirDateTime>() ??
              <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CommunicationRequest.authoredOn',
            i,
          ),
        );
        i++;
      }
      // CommunicationRequest.basedOn (reference)
      i = 0;
      for (final entry in resource.basedOn?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CommunicationRequest.basedOn',
            i,
          ),
        );
        i++;
      }
      // CommunicationRequest.category (token)
      i = 0;
      for (final entry
          in resource.category?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CommunicationRequest.category',
            i,
          ),
        );
        i++;
      }
      // CommunicationRequest.groupIdentifier (token)
      i = 0;
      for (final entry
          in resource.groupIdentifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CommunicationRequest.groupIdentifier',
            i,
          ),
        );
        i++;
      }
      // CommunicationRequest.informationProvider (reference)
      i = 0;
      for (final entry
          in resource.informationProvider?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CommunicationRequest.informationProvider',
            i,
          ),
        );
        i++;
      }
      // CommunicationRequest.medium (token)
      i = 0;
      for (final entry
          in resource.medium?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CommunicationRequest.medium',
            i,
          ),
        );
        i++;
      }
      // CommunicationRequest.occurrence.ofType(dateTime) (date)
      i = 0;
      for (final entry
          in resource.occurrenceDateTime?.makeIterable<fhir.FhirDateTime>() ??
              <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CommunicationRequest.occurrence.ofType(dateTime)',
            i,
          ),
        );
        i++;
      }
      // CommunicationRequest.occurrence.ofType(Period) (date)
      i = 0;
      for (final entry
          in resource.occurrencePeriod?.makeIterable<fhir.Period>() ??
              <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CommunicationRequest.occurrence.ofType(Period)',
            i,
          ),
        );
        i++;
      }
      // CommunicationRequest.priority (token)
      i = 0;
      for (final entry
          in resource.priority?.makeIterable<fhir.FhirCodeEnum>() ??
              <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CommunicationRequest.priority',
            i,
          ),
        );
        i++;
      }
      // CommunicationRequest.recipient (reference)
      i = 0;
      for (final entry in resource.recipient?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CommunicationRequest.recipient',
            i,
          ),
        );
        i++;
      }
      // CommunicationRequest.replaces (reference)
      i = 0;
      for (final entry in resource.replaces?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CommunicationRequest.replaces',
            i,
          ),
        );
        i++;
      }
      // CommunicationRequest.requester (reference)
      i = 0;
      for (final entry in resource.requester?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CommunicationRequest.requester',
            i,
          ),
        );
        i++;
      }
      // CommunicationRequest.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CommunicationRequest.status',
            i,
          ),
        );
        i++;
      }
      // CommunicationRequest.subject (reference)
      i = 0;
      for (final entry in resource.subject?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CommunicationRequest.subject',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.CompartmentDefinition _:
      // CompartmentDefinition.useContext.code (token)
      i = 0;
      for (final entry in resource.useContext
              ?.map<fhir.Coding?>((e) => e.code)
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CompartmentDefinition.useContext.code',
            i,
          ),
        );
        i++;
      }
      // CompartmentDefinition.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CompartmentDefinition.date',
            i,
          ),
        );
        i++;
      }
      // CompartmentDefinition.description (string)
      i = 0;
      for (final entry
          in resource.description?.makeIterable<fhir.FhirMarkdown>() ??
              <fhir.FhirMarkdown>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CompartmentDefinition.description',
            i,
          ),
        );
        i++;
      }
      // CompartmentDefinition.name (string)
      i = 0;
      for (final entry in resource.name.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CompartmentDefinition.name',
            i,
          ),
        );
        i++;
      }
      // CompartmentDefinition.publisher (string)
      i = 0;
      for (final entry in resource.publisher?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CompartmentDefinition.publisher',
            i,
          ),
        );
        i++;
      }
      // CompartmentDefinition.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CompartmentDefinition.status',
            i,
          ),
        );
        i++;
      }
      // CompartmentDefinition.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CompartmentDefinition.url',
            i,
          ),
        );
        i++;
      }
      // CompartmentDefinition.version (token)
      i = 0;
      for (final entry in resource.version?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CompartmentDefinition.version',
            i,
          ),
        );
        i++;
      }
      // CompartmentDefinition.useContext (composite)
      i = 0;
      for (final entry
          in resource.useContext?.makeIterable<fhir.UsageContext>() ??
              <fhir.UsageContext>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CompartmentDefinition.useContext',
            i,
          ),
        );
        i++;
      }
      // CompartmentDefinition.code (token)
      i = 0;
      for (final entry in resource.code.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CompartmentDefinition.code',
            i,
          ),
        );
        i++;
      }
      // CompartmentDefinition.resource.code (token)
      i = 0;
      for (final entry in resource.resource
              ?.map<fhir.FhirCode?>((e) => e.code)
              .makeIterable<fhir.FhirCode>() ??
          <fhir.FhirCode>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CompartmentDefinition.resource.code',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.Composition _:
      // Composition.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Composition.identifier',
            i,
          ),
        );
        i++;
      }
      // Composition.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry in resource.subject?.where((e) {
            final ref = e.reference?.toString().split('/') ?? [];
            return ref.length > 1 && ref[ref.length - 2] == 'Patient';
          }).makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Composition.subject.where(resolve() is Patient)',
            i,
          ),
        );
        i++;
      }
      // Composition.type (token)
      i = 0;
      for (final entry in resource.type.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Composition.type',
            i,
          ),
        );
        i++;
      }
      // Composition.date (date)
      i = 0;
      for (final entry in resource.date.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Composition.date',
            i,
          ),
        );
        i++;
      }
      // Composition.encounter (reference)
      i = 0;
      for (final entry in resource.encounter?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Composition.encounter',
            i,
          ),
        );
        i++;
      }
      // Composition.attester.party (reference)
      i = 0;
      for (final entry in resource.attester
              ?.map<fhir.Reference?>((e) => e.party)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Composition.attester.party',
            i,
          ),
        );
        i++;
      }
      // Composition.author (reference)
      i = 0;
      for (final entry in resource.author.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Composition.author',
            i,
          ),
        );
        i++;
      }
      // Composition.category (token)
      i = 0;
      for (final entry
          in resource.category?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Composition.category',
            i,
          ),
        );
        i++;
      }
      // Composition.section.entry (reference)
      i = 0;
      for (final entry in resource.section
              ?.expand((e) => e.entry ?? <fhir.Reference>[])
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Composition.section.entry',
            i,
          ),
        );
        i++;
      }
      // Composition.event.detail.concept (token)
      i = 0;
      for (final entry in resource.event
              ?.expand((e) => e.detail ?? <fhir.CodeableReference>[])
              .map<fhir.CodeableConcept?>((e) => e.concept)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Composition.event.detail.concept',
            i,
          ),
        );
        i++;
      }
      // Composition.event.detail.reference (reference)
      i = 0;
      for (final entry in resource.event
              ?.expand((e) => e.detail ?? <fhir.CodeableReference>[])
              .map<fhir.Reference?>((e) => e.reference)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Composition.event.detail.reference',
            i,
          ),
        );
        i++;
      }
      // Composition.event.period (date)
      i = 0;
      for (final entry in resource.event
              ?.map<fhir.Period?>((e) => e.period)
              .makeIterable<fhir.Period>() ??
          <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Composition.event.period',
            i,
          ),
        );
        i++;
      }
      // Composition.section.code (token)
      i = 0;
      for (final entry in resource.section
              ?.map<fhir.CodeableConcept?>((e) => e.code)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Composition.section.code',
            i,
          ),
        );
        i++;
      }
      // Composition.section.text (special)
      i = 0;
      for (final entry in resource.section
              ?.map<fhir.Narrative?>((e) => e.text)
              .makeIterable<fhir.Narrative>() ??
          <fhir.Narrative>[]) {
        searchParameterLists.specialParams.addAll(
          entry.toSpecialSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Composition.section.text',
            i,
          ),
        );
        i++;
      }
      // Composition.section.section.text (special)
      i = 0;
      for (final entry in resource.section
              ?.expand((e) => e.section ?? <fhir.CompositionSection>[])
              .map<fhir.Narrative?>((e) => e.text)
              .makeIterable<fhir.Narrative>() ??
          <fhir.Narrative>[]) {
        searchParameterLists.specialParams.addAll(
          entry.toSpecialSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Composition.section.section.text',
            i,
          ),
        );
        i++;
      }
      // Composition.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Composition.status',
            i,
          ),
        );
        i++;
      }
      // Composition.subject (reference)
      i = 0;
      for (final entry in resource.subject?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Composition.subject',
            i,
          ),
        );
        i++;
      }
      // Composition.title (string)
      i = 0;
      for (final entry in resource.title.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Composition.title',
            i,
          ),
        );
        i++;
      }
      // Composition.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Composition.url',
            i,
          ),
        );
        i++;
      }
      // Composition.version (token)
      i = 0;
      for (final entry in resource.version?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Composition.version',
            i,
          ),
        );
        i++;
      }
      // Composition.section (composite)
      i = 0;
      for (final entry
          in resource.section?.makeIterable<fhir.CompositionSection>() ??
              <fhir.CompositionSection>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Composition.section',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.ConceptMap _:
      // ConceptMap.useContext.code (token)
      i = 0;
      for (final entry in resource.useContext
              ?.map<fhir.Coding?>((e) => e.code)
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ConceptMap.useContext.code',
            i,
          ),
        );
        i++;
      }
      // ConceptMap.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ConceptMap.date',
            i,
          ),
        );
        i++;
      }
      // ConceptMap.relatedArtifact.where(type='derived-from').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'derived-from')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "ConceptMap.relatedArtifact.where(type='derived-from').resource",
            i,
          ),
        );
        i++;
      }
      // ConceptMap.description (string)
      i = 0;
      for (final entry
          in resource.description?.makeIterable<fhir.FhirMarkdown>() ??
              <fhir.FhirMarkdown>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ConceptMap.description',
            i,
          ),
        );
        i++;
      }
      // ConceptMap.effectivePeriod (date)
      i = 0;
      for (final entry
          in resource.effectivePeriod?.makeIterable<fhir.Period>() ??
              <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ConceptMap.effectivePeriod',
            i,
          ),
        );
        i++;
      }
      // ConceptMap.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ConceptMap.identifier',
            i,
          ),
        );
        i++;
      }
      // ConceptMap.jurisdiction (token)
      i = 0;
      for (final entry
          in resource.jurisdiction?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ConceptMap.jurisdiction',
            i,
          ),
        );
        i++;
      }
      // ConceptMap.name (string)
      i = 0;
      for (final entry in resource.name?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ConceptMap.name',
            i,
          ),
        );
        i++;
      }
      // ConceptMap.relatedArtifact.where(type='predecessor').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'predecessor')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "ConceptMap.relatedArtifact.where(type='predecessor').resource",
            i,
          ),
        );
        i++;
      }
      // ConceptMap.publisher (string)
      i = 0;
      for (final entry in resource.publisher?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ConceptMap.publisher',
            i,
          ),
        );
        i++;
      }
      // ConceptMap.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ConceptMap.status',
            i,
          ),
        );
        i++;
      }
      // ConceptMap.title (string)
      i = 0;
      for (final entry in resource.title?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ConceptMap.title',
            i,
          ),
        );
        i++;
      }
      // ConceptMap.topic (token)
      i = 0;
      for (final entry
          in resource.topic?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ConceptMap.topic',
            i,
          ),
        );
        i++;
      }
      // ConceptMap.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ConceptMap.url',
            i,
          ),
        );
        i++;
      }
      // ConceptMap.version (token)
      i = 0;
      for (final entry in resource.version?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ConceptMap.version',
            i,
          ),
        );
        i++;
      }
      // ConceptMap.useContext (composite)
      i = 0;
      for (final entry
          in resource.useContext?.makeIterable<fhir.UsageContext>() ??
              <fhir.UsageContext>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ConceptMap.useContext',
            i,
          ),
        );
        i++;
      }
      // ConceptMap.property.uri (uri)
      i = 0;
      for (final entry in resource.property
              ?.map<fhir.FhirUri?>((e) => e.uri)
              .makeIterable<fhir.FhirUri>() ??
          <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ConceptMap.property.uri',
            i,
          ),
        );
        i++;
      }
      // ConceptMap.group.unmapped.otherMap (reference)
      i = 0;
      for (final entry in resource.group
              ?.map<fhir.ConceptMapUnmapped?>((e) => e.unmapped)
              .map<fhir.FhirCanonical?>((e) => e?.otherMap)
              .makeIterable<fhir.FhirCanonical>() ??
          <fhir.FhirCanonical>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ConceptMap.group.unmapped.otherMap',
            i,
          ),
        );
        i++;
      }
      // ConceptMap.group.element.code (token)
      i = 0;
      for (final entry in resource.group
              ?.expand((e) => e.element ?? <fhir.ConceptMapElement>[])
              .map<fhir.FhirCode?>((e) => e.code)
              .makeIterable<fhir.FhirCode>() ??
          <fhir.FhirCode>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ConceptMap.group.element.code',
            i,
          ),
        );
        i++;
      }
      // ConceptMap.group.source (reference)
      i = 0;
      for (final entry in resource.group
              ?.map<fhir.FhirCanonical?>((e) => e.source)
              .makeIterable<fhir.FhirCanonical>() ??
          <fhir.FhirCanonical>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ConceptMap.group.source',
            i,
          ),
        );
        i++;
      }
      // ConceptMap.group.element.target.code (token)
      i = 0;
      for (final entry in resource.group
              ?.expand((e) => e.element ?? <fhir.ConceptMapElement>[])
              .expand((e) => e.target ?? <fhir.ConceptMapTarget>[])
              .map<fhir.FhirCode?>((e) => e.code)
              .makeIterable<fhir.FhirCode>() ??
          <fhir.FhirCode>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ConceptMap.group.element.target.code',
            i,
          ),
        );
        i++;
      }
      // ConceptMap.group.target (reference)
      i = 0;
      for (final entry in resource.group
              ?.map<fhir.FhirCanonical?>((e) => e.target)
              .makeIterable<fhir.FhirCanonical>() ??
          <fhir.FhirCanonical>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ConceptMap.group.target',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.Condition _:
      // Condition.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Condition.identifier',
            i,
          ),
        );
        i++;
      }
      // Condition.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Condition.subject.where(resolve() is Patient)',
            i,
          ),
        );
        i++;
      }
      // Condition.code (token)
      i = 0;
      for (final entry in resource.code?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Condition.code',
            i,
          ),
        );
        i++;
      }
      // Condition.encounter (reference)
      i = 0;
      for (final entry in resource.encounter?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Condition.encounter',
            i,
          ),
        );
        i++;
      }
      // Condition.abatement.ofType(Age) (quantity)
      i = 0;
      for (final entry
          in resource.abatementAge?.makeIterable<fhir.Age>() ?? <fhir.Age>[]) {
        searchParameterLists.quantityParams.addAll(
          entry.toQuantitySearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Condition.abatement.ofType(Age)',
            i,
          ),
        );
        i++;
      }
      // Condition.abatement.ofType(Range) (quantity)
      i = 0;
      for (final entry in resource.abatementRange?.makeIterable<fhir.Range>() ??
          <fhir.Range>[]) {
        searchParameterLists.quantityParams.addAll(
          entry.toQuantitySearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Condition.abatement.ofType(Range)',
            i,
          ),
        );
        i++;
      }
      // Condition.abatement.ofType(dateTime) (date)
      i = 0;
      for (final entry
          in resource.abatementDateTime?.makeIterable<fhir.FhirDateTime>() ??
              <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Condition.abatement.ofType(dateTime)',
            i,
          ),
        );
        i++;
      }
      // Condition.abatement.ofType(Period) (date)
      i = 0;
      for (final entry
          in resource.abatementPeriod?.makeIterable<fhir.Period>() ??
              <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Condition.abatement.ofType(Period)',
            i,
          ),
        );
        i++;
      }
      // Condition.abatement.ofType(string) (string)
      i = 0;
      for (final entry
          in resource.abatementString?.makeIterable<fhir.FhirString>() ??
              <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Condition.abatement.ofType(string)',
            i,
          ),
        );
        i++;
      }
      // Condition.asserter (reference)
      i = 0;
      for (final entry in resource.asserter?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Condition.asserter',
            i,
          ),
        );
        i++;
      }
      // Condition.bodySite (token)
      i = 0;
      for (final entry
          in resource.bodySite?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Condition.bodySite',
            i,
          ),
        );
        i++;
      }
      // Condition.category (token)
      i = 0;
      for (final entry
          in resource.category?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Condition.category',
            i,
          ),
        );
        i++;
      }
      // Condition.clinicalStatus (token)
      i = 0;
      for (final entry
          in resource.clinicalStatus.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Condition.clinicalStatus',
            i,
          ),
        );
        i++;
      }
      // Condition.evidence.concept (token)
      i = 0;
      for (final entry in resource.evidence
              ?.map<fhir.CodeableConcept?>((e) => e.concept)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Condition.evidence.concept',
            i,
          ),
        );
        i++;
      }
      // Condition.evidence.reference (reference)
      i = 0;
      for (final entry in resource.evidence
              ?.map<fhir.Reference?>((e) => e.reference)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Condition.evidence.reference',
            i,
          ),
        );
        i++;
      }
      // Condition.onset.ofType(Age) (quantity)
      i = 0;
      for (final entry
          in resource.onsetAge?.makeIterable<fhir.Age>() ?? <fhir.Age>[]) {
        searchParameterLists.quantityParams.addAll(
          entry.toQuantitySearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Condition.onset.ofType(Age)',
            i,
          ),
        );
        i++;
      }
      // Condition.onset.ofType(Range) (quantity)
      i = 0;
      for (final entry in resource.onsetRange?.makeIterable<fhir.Range>() ??
          <fhir.Range>[]) {
        searchParameterLists.quantityParams.addAll(
          entry.toQuantitySearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Condition.onset.ofType(Range)',
            i,
          ),
        );
        i++;
      }
      // Condition.onset.ofType(dateTime) (date)
      i = 0;
      for (final entry
          in resource.onsetDateTime?.makeIterable<fhir.FhirDateTime>() ??
              <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Condition.onset.ofType(dateTime)',
            i,
          ),
        );
        i++;
      }
      // Condition.onset.ofType(Period) (date)
      i = 0;
      for (final entry in resource.onsetPeriod?.makeIterable<fhir.Period>() ??
          <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Condition.onset.ofType(Period)',
            i,
          ),
        );
        i++;
      }
      // Condition.onset.ofType(string) (string)
      i = 0;
      for (final entry
          in resource.onsetString?.makeIterable<fhir.FhirString>() ??
              <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Condition.onset.ofType(string)',
            i,
          ),
        );
        i++;
      }
      // Condition.recordedDate (date)
      i = 0;
      for (final entry
          in resource.recordedDate?.makeIterable<fhir.FhirDateTime>() ??
              <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Condition.recordedDate',
            i,
          ),
        );
        i++;
      }
      // Condition.severity (token)
      i = 0;
      for (final entry
          in resource.severity?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Condition.severity',
            i,
          ),
        );
        i++;
      }
      // Condition.stage.summary (token)
      i = 0;
      for (final entry in resource.stage
              ?.map<fhir.CodeableConcept?>((e) => e.summary)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Condition.stage.summary',
            i,
          ),
        );
        i++;
      }
      // Condition.subject (reference)
      i = 0;
      for (final entry in resource.subject.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Condition.subject',
            i,
          ),
        );
        i++;
      }
      // Condition.verificationStatus (token)
      i = 0;
      for (final entry in resource.verificationStatus
              ?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Condition.verificationStatus',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.ConditionDefinition _:
      // ConditionDefinition.useContext.code (token)
      i = 0;
      for (final entry in resource.useContext
              ?.map<fhir.Coding?>((e) => e.code)
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ConditionDefinition.useContext.code',
            i,
          ),
        );
        i++;
      }
      // ConditionDefinition.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ConditionDefinition.date',
            i,
          ),
        );
        i++;
      }
      // ConditionDefinition.description (string)
      i = 0;
      for (final entry
          in resource.description?.makeIterable<fhir.FhirMarkdown>() ??
              <fhir.FhirMarkdown>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ConditionDefinition.description',
            i,
          ),
        );
        i++;
      }
      // ConditionDefinition.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ConditionDefinition.identifier',
            i,
          ),
        );
        i++;
      }
      // ConditionDefinition.jurisdiction (token)
      i = 0;
      for (final entry
          in resource.jurisdiction?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ConditionDefinition.jurisdiction',
            i,
          ),
        );
        i++;
      }
      // ConditionDefinition.name (string)
      i = 0;
      for (final entry in resource.name?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ConditionDefinition.name',
            i,
          ),
        );
        i++;
      }
      // ConditionDefinition.publisher (string)
      i = 0;
      for (final entry in resource.publisher?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ConditionDefinition.publisher',
            i,
          ),
        );
        i++;
      }
      // ConditionDefinition.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ConditionDefinition.status',
            i,
          ),
        );
        i++;
      }
      // ConditionDefinition.title (string)
      i = 0;
      for (final entry in resource.title?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ConditionDefinition.title',
            i,
          ),
        );
        i++;
      }
      // ConditionDefinition.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ConditionDefinition.url',
            i,
          ),
        );
        i++;
      }
      // ConditionDefinition.version (token)
      i = 0;
      for (final entry in resource.version?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ConditionDefinition.version',
            i,
          ),
        );
        i++;
      }
      // ConditionDefinition.useContext (composite)
      i = 0;
      for (final entry
          in resource.useContext?.makeIterable<fhir.UsageContext>() ??
              <fhir.UsageContext>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ConditionDefinition.useContext',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.Consent _:
      // Consent.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Consent.identifier',
            i,
          ),
        );
        i++;
      }
      // Consent.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject?.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Consent.subject.where(resolve() is Patient)',
            i,
          ),
        );
        i++;
      }
      // Consent.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDate>() ??
          <fhir.FhirDate>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Consent.date',
            i,
          ),
        );
        i++;
      }
      // Consent.provision.code (token)
      i = 0;
      for (final entry in resource.provision
              ?.expand((e) => e.code ?? <fhir.CodeableConcept>[])
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Consent.provision.code',
            i,
          ),
        );
        i++;
      }
      // Consent.provision.actor.reference (reference)
      i = 0;
      for (final entry in resource.provision
              ?.expand((e) => e.actor ?? <fhir.ConsentActor>[])
              .map<fhir.Reference?>((e) => e.reference)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Consent.provision.actor.reference',
            i,
          ),
        );
        i++;
      }
      // Consent.category (token)
      i = 0;
      for (final entry
          in resource.category?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Consent.category',
            i,
          ),
        );
        i++;
      }
      // Consent.controller (reference)
      i = 0;
      for (final entry in resource.controller?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Consent.controller',
            i,
          ),
        );
        i++;
      }
      // Consent.provision.data.reference (reference)
      i = 0;
      for (final entry in resource.provision
              ?.expand((e) => e.data ?? <fhir.ConsentData>[])
              .map<fhir.Reference?>((e) => e.reference)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Consent.provision.data.reference',
            i,
          ),
        );
        i++;
      }
      // Consent.grantee (reference)
      i = 0;
      for (final entry in resource.grantee?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Consent.grantee',
            i,
          ),
        );
        i++;
      }
      // Consent.manager (reference)
      i = 0;
      for (final entry in resource.manager?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Consent.manager',
            i,
          ),
        );
        i++;
      }
      // Consent.provision.period (date)
      i = 0;
      for (final entry in resource.provision
              ?.map<fhir.Period?>((e) => e.period)
              .makeIterable<fhir.Period>() ??
          <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Consent.provision.period',
            i,
          ),
        );
        i++;
      }
      // Consent.provision.purpose (token)
      i = 0;
      for (final entry in resource.provision
              ?.expand((e) => e.purpose ?? <fhir.Coding>[])
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Consent.provision.purpose',
            i,
          ),
        );
        i++;
      }
      // Consent.provision.securityLabel (token)
      i = 0;
      for (final entry in resource.provision
              ?.expand((e) => e.securityLabel ?? <fhir.Coding>[])
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Consent.provision.securityLabel',
            i,
          ),
        );
        i++;
      }
      // Consent.sourceReference (reference)
      i = 0;
      for (final entry
          in resource.sourceReference?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Consent.sourceReference',
            i,
          ),
        );
        i++;
      }
      // Consent.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Consent.status',
            i,
          ),
        );
        i++;
      }
      // Consent.subject (reference)
      i = 0;
      for (final entry in resource.subject?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Consent.subject',
            i,
          ),
        );
        i++;
      }
      // Consent.verification.verified (token)
      i = 0;
      for (final entry in resource.verification
              ?.map<fhir.FhirBoolean?>((e) => e.verified)
              .makeIterable<fhir.FhirBoolean>() ??
          <fhir.FhirBoolean>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Consent.verification.verified',
            i,
          ),
        );
        i++;
      }
      // Consent.verification.verificationDate (date)
      i = 0;
      for (final entry in resource.verification
              ?.expand((e) => e.verificationDate ?? <fhir.FhirDateTime>[])
              .makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Consent.verification.verificationDate',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.Contract _:
      // Contract.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Contract.identifier',
            i,
          ),
        );
        i++;
      }
      // Contract.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry in resource.subject?.where((e) {
            final ref = e.reference?.toString().split('/') ?? [];
            return ref.length > 1 && ref[ref.length - 2] == 'Patient';
          }).makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Contract.subject.where(resolve() is Patient)',
            i,
          ),
        );
        i++;
      }
      // Contract.authority (reference)
      i = 0;
      for (final entry in resource.authority?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Contract.authority',
            i,
          ),
        );
        i++;
      }
      // Contract.domain (reference)
      i = 0;
      for (final entry in resource.domain?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Contract.domain',
            i,
          ),
        );
        i++;
      }
      // Contract.instantiatesUri (uri)
      i = 0;
      for (final entry
          in resource.instantiatesUri?.makeIterable<fhir.FhirUri>() ??
              <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Contract.instantiatesUri',
            i,
          ),
        );
        i++;
      }
      // Contract.issued (date)
      i = 0;
      for (final entry in resource.issued?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Contract.issued',
            i,
          ),
        );
        i++;
      }
      // Contract.signer.party (reference)
      i = 0;
      for (final entry in resource.signer
              ?.map<fhir.Reference?>((e) => e.party)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Contract.signer.party',
            i,
          ),
        );
        i++;
      }
      // Contract.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Contract.status',
            i,
          ),
        );
        i++;
      }
      // Contract.subject (reference)
      i = 0;
      for (final entry in resource.subject?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Contract.subject',
            i,
          ),
        );
        i++;
      }
      // Contract.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Contract.url',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.Coverage _:
      // Coverage.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Coverage.identifier',
            i,
          ),
        );
        i++;
      }
      // Coverage.beneficiary (reference)
      i = 0;
      for (final entry in resource.beneficiary.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Coverage.beneficiary',
            i,
          ),
        );
        i++;
      }
      // Coverage.type (token)
      i = 0;
      for (final entry in resource.type?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Coverage.type',
            i,
          ),
        );
        i++;
      }
      // Coverage.class.type (token)
      i = 0;
      for (final entry in resource.class_
              ?.map<fhir.CodeableConcept?>((e) => e.type)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Coverage.class.type',
            i,
          ),
        );
        i++;
      }
      // Coverage.class.value (token)
      i = 0;
      for (final entry in resource.class_
              ?.map<fhir.Identifier?>((e) => e.value)
              .makeIterable<fhir.Identifier>() ??
          <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Coverage.class.value',
            i,
          ),
        );
        i++;
      }
      // Coverage.dependent (string)
      i = 0;
      for (final entry in resource.dependent?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Coverage.dependent',
            i,
          ),
        );
        i++;
      }
      // Coverage.insurer (reference)
      i = 0;
      for (final entry in resource.insurer?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Coverage.insurer',
            i,
          ),
        );
        i++;
      }
      // Coverage.paymentBy.party (reference)
      i = 0;
      for (final entry in resource.paymentBy
              ?.map<fhir.Reference?>((e) => e.party)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Coverage.paymentBy.party',
            i,
          ),
        );
        i++;
      }
      // Coverage.policyHolder (reference)
      i = 0;
      for (final entry
          in resource.policyHolder?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Coverage.policyHolder',
            i,
          ),
        );
        i++;
      }
      // Coverage.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Coverage.status',
            i,
          ),
        );
        i++;
      }
      // Coverage.subscriber (reference)
      i = 0;
      for (final entry in resource.subscriber?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Coverage.subscriber',
            i,
          ),
        );
        i++;
      }
      // Coverage.subscriberId (token)
      i = 0;
      for (final entry
          in resource.subscriberId?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Coverage.subscriberId',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.CoverageEligibilityRequest _:
      // CoverageEligibilityRequest.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CoverageEligibilityRequest.identifier',
            i,
          ),
        );
        i++;
      }
      // CoverageEligibilityRequest.patient (reference)
      i = 0;
      for (final entry in resource.patient.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CoverageEligibilityRequest.patient',
            i,
          ),
        );
        i++;
      }
      // CoverageEligibilityRequest.created (date)
      i = 0;
      for (final entry in resource.created.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CoverageEligibilityRequest.created',
            i,
          ),
        );
        i++;
      }
      // CoverageEligibilityRequest.enterer (reference)
      i = 0;
      for (final entry in resource.enterer?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CoverageEligibilityRequest.enterer',
            i,
          ),
        );
        i++;
      }
      // CoverageEligibilityRequest.facility (reference)
      i = 0;
      for (final entry in resource.facility?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CoverageEligibilityRequest.facility',
            i,
          ),
        );
        i++;
      }
      // CoverageEligibilityRequest.provider (reference)
      i = 0;
      for (final entry in resource.provider?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CoverageEligibilityRequest.provider',
            i,
          ),
        );
        i++;
      }
      // CoverageEligibilityRequest.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CoverageEligibilityRequest.status',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.CoverageEligibilityResponse _:
      // CoverageEligibilityResponse.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CoverageEligibilityResponse.identifier',
            i,
          ),
        );
        i++;
      }
      // CoverageEligibilityResponse.patient (reference)
      i = 0;
      for (final entry in resource.patient.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CoverageEligibilityResponse.patient',
            i,
          ),
        );
        i++;
      }
      // CoverageEligibilityResponse.created (date)
      i = 0;
      for (final entry in resource.created.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CoverageEligibilityResponse.created',
            i,
          ),
        );
        i++;
      }
      // CoverageEligibilityResponse.disposition (string)
      i = 0;
      for (final entry
          in resource.disposition?.makeIterable<fhir.FhirString>() ??
              <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CoverageEligibilityResponse.disposition',
            i,
          ),
        );
        i++;
      }
      // CoverageEligibilityResponse.insurer (reference)
      i = 0;
      for (final entry in resource.insurer.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CoverageEligibilityResponse.insurer',
            i,
          ),
        );
        i++;
      }
      // CoverageEligibilityResponse.outcome (token)
      i = 0;
      for (final entry in resource.outcome.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CoverageEligibilityResponse.outcome',
            i,
          ),
        );
        i++;
      }
      // CoverageEligibilityResponse.request (reference)
      i = 0;
      for (final entry in resource.request.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CoverageEligibilityResponse.request',
            i,
          ),
        );
        i++;
      }
      // CoverageEligibilityResponse.requestor (reference)
      i = 0;
      for (final entry in resource.requestor?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CoverageEligibilityResponse.requestor',
            i,
          ),
        );
        i++;
      }
      // CoverageEligibilityResponse.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'CoverageEligibilityResponse.status',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.DetectedIssue _:
      // DetectedIssue.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DetectedIssue.identifier',
            i,
          ),
        );
        i++;
      }
      // DetectedIssue.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject?.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DetectedIssue.subject.where(resolve() is Patient)',
            i,
          ),
        );
        i++;
      }
      // DetectedIssue.code (token)
      i = 0;
      for (final entry in resource.code?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DetectedIssue.code',
            i,
          ),
        );
        i++;
      }
      // DetectedIssue.author (reference)
      i = 0;
      for (final entry in resource.author?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DetectedIssue.author',
            i,
          ),
        );
        i++;
      }
      // DetectedIssue.category (token)
      i = 0;
      for (final entry
          in resource.category?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DetectedIssue.category',
            i,
          ),
        );
        i++;
      }
      // DetectedIssue.identified.ofType(dateTime) (date)
      i = 0;
      for (final entry
          in resource.identifiedDateTime?.makeIterable<fhir.FhirDateTime>() ??
              <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DetectedIssue.identified.ofType(dateTime)',
            i,
          ),
        );
        i++;
      }
      // DetectedIssue.identified.ofType(Period) (date)
      i = 0;
      for (final entry
          in resource.identifiedPeriod?.makeIterable<fhir.Period>() ??
              <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DetectedIssue.identified.ofType(Period)',
            i,
          ),
        );
        i++;
      }
      // DetectedIssue.implicated (reference)
      i = 0;
      for (final entry in resource.implicated?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DetectedIssue.implicated',
            i,
          ),
        );
        i++;
      }
      // DetectedIssue.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DetectedIssue.status',
            i,
          ),
        );
        i++;
      }
      // DetectedIssue.subject (reference)
      i = 0;
      for (final entry in resource.subject?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DetectedIssue.subject',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.Device _:
      // Device.biologicalSourceEvent (token)
      i = 0;
      for (final entry
          in resource.biologicalSourceEvent?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Device.biologicalSourceEvent',
            i,
          ),
        );
        i++;
      }
      // Device.type (token)
      i = 0;
      for (final entry in resource.type?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Device.type',
            i,
          ),
        );
        i++;
      }
      // Device.definition (reference)
      i = 0;
      for (final entry in resource.definition?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Device.definition',
            i,
          ),
        );
        i++;
      }
      // Device.name.value (string)
      i = 0;
      for (final entry in resource.name
              ?.map<fhir.FhirString?>((e) => e.value)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Device.name.value',
            i,
          ),
        );
        i++;
      }
      // Device.type.coding.display (string)
      i = 0;
      for (final entry in resource.type
              ?.expand((e) => e.coding ?? <fhir.Coding>[])
              .map<fhir.FhirString?>((e) => e.display)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Device.type.coding.display',
            i,
          ),
        );
        i++;
      }
      // Device.type.text (string)
      i = 0;
      for (final entry in resource.type
              ?.map<fhir.FhirString?>((e) => e.text)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Device.type.text',
            i,
          ),
        );
        i++;
      }
      // Device.expirationDate (date)
      i = 0;
      for (final entry
          in resource.expirationDate?.makeIterable<fhir.FhirDateTime>() ??
              <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Device.expirationDate',
            i,
          ),
        );
        i++;
      }
      // Device.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Device.identifier',
            i,
          ),
        );
        i++;
      }
      // Device.location (reference)
      i = 0;
      for (final entry in resource.location?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Device.location',
            i,
          ),
        );
        i++;
      }
      // Device.lotNumber (string)
      i = 0;
      for (final entry in resource.lotNumber?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Device.lotNumber',
            i,
          ),
        );
        i++;
      }
      // Device.manufactureDate (date)
      i = 0;
      for (final entry
          in resource.manufactureDate?.makeIterable<fhir.FhirDateTime>() ??
              <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Device.manufactureDate',
            i,
          ),
        );
        i++;
      }
      // Device.manufacturer (string)
      i = 0;
      for (final entry
          in resource.manufacturer?.makeIterable<fhir.FhirString>() ??
              <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Device.manufacturer',
            i,
          ),
        );
        i++;
      }
      // Device.modelNumber (string)
      i = 0;
      for (final entry
          in resource.modelNumber?.makeIterable<fhir.FhirString>() ??
              <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Device.modelNumber',
            i,
          ),
        );
        i++;
      }
      // Device.parent (reference)
      i = 0;
      for (final entry in resource.parent?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Device.parent',
            i,
          ),
        );
        i++;
      }
      // Device.serialNumber (string)
      i = 0;
      for (final entry
          in resource.serialNumber?.makeIterable<fhir.FhirString>() ??
              <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Device.serialNumber',
            i,
          ),
        );
        i++;
      }
      // SKIPPED (unsupported FHIRPath): // Device.identifier.where(type='SNO') (string)
      // SKIPPED (unsupported FHIRPath): i = 0;
      // SKIPPED (unsupported FHIRPath): for (final entry in resource.identifier?.where((e) => e.type?.valueString == 'SNO') ?? <fhir.FhirBase>[]) {
      // SKIPPED (unsupported FHIRPath): searchParameterLists.stringParams.addAll(
      // SKIPPED (unsupported FHIRPath): entry.toStringSearchParameter(
      // SKIPPED (unsupported FHIRPath): resourceType, id, lastUpdated, "Device.identifier.where(type='SNO')", i,
      // SKIPPED (unsupported FHIRPath): ),
      // SKIPPED (unsupported FHIRPath): );
      // SKIPPED (unsupported FHIRPath): i++;
      // SKIPPED (unsupported FHIRPath): }
      // Device.conformsTo.specification (token)
      i = 0;
      for (final entry in resource.conformsTo
              ?.map<fhir.CodeableConcept?>((e) => e.specification)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Device.conformsTo.specification',
            i,
          ),
        );
        i++;
      }
      // Device.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Device.status',
            i,
          ),
        );
        i++;
      }
      // Device.udiCarrier.carrierHRF (string)
      i = 0;
      for (final entry in resource.udiCarrier
              ?.map<fhir.FhirString?>((e) => e.carrierHRF)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Device.udiCarrier.carrierHRF',
            i,
          ),
        );
        i++;
      }
      // Device.udiCarrier.deviceIdentifier (string)
      i = 0;
      for (final entry in resource.udiCarrier
              ?.map<fhir.FhirString?>((e) => e.deviceIdentifier)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Device.udiCarrier.deviceIdentifier',
            i,
          ),
        );
        i++;
      }
      // Device.deviceVersion.value (string)
      i = 0;
      for (final entry in resource.deviceVersion
              ?.map<fhir.FhirString?>((e) => e.value)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Device.deviceVersion.value',
            i,
          ),
        );
        i++;
      }
      // Device (composite)
      i = 0;
      for (final entry
          in resource.makeIterable<fhir.Device>() ?? <fhir.Device>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Device',
            i,
          ),
        );
        i++;
      }
      // Device.conformsTo (composite)
      i = 0;
      for (final entry
          in resource.conformsTo?.makeIterable<fhir.DeviceConformsTo>() ??
              <fhir.DeviceConformsTo>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Device.conformsTo',
            i,
          ),
        );
        i++;
      }
      // Device.deviceVersion (composite)
      i = 0;
      for (final entry
          in resource.deviceVersion?.makeIterable<fhir.DeviceDeviceVersion>() ??
              <fhir.DeviceDeviceVersion>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Device.deviceVersion',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.DeviceAlert _:
      // DeviceAlert.signal.annunciator.concept (token)
      i = 0;
      for (final entry in resource.signal
              ?.map<fhir.CodeableReference?>((e) => e.annunciator)
              .map<fhir.CodeableConcept?>((e) => e?.concept)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceAlert.signal.annunciator.concept',
            i,
          ),
        );
        i++;
      }
      // DeviceAlert.signal.annunciator.reference (reference)
      i = 0;
      for (final entry in resource.signal
              ?.map<fhir.CodeableReference?>((e) => e.annunciator)
              .map<fhir.Reference?>((e) => e?.reference)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceAlert.signal.annunciator.reference',
            i,
          ),
        );
        i++;
      }
      // DeviceAlert.condition.code (token)
      i = 0;
      for (final entry
          in resource.condition.code.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceAlert.condition.code',
            i,
          ),
        );
        i++;
      }
      // DeviceAlert.derivedFrom (reference)
      i = 0;
      for (final entry
          in resource.derivedFrom?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceAlert.derivedFrom',
            i,
          ),
        );
        i++;
      }
      // DeviceAlert.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceAlert.identifier',
            i,
          ),
        );
        i++;
      }
      // DeviceAlert.signal.indication (date)
      i = 0;
      for (final entry in resource.signal
              ?.map<fhir.Period?>((e) => e.indication)
              .makeIterable<fhir.Period>() ??
          <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceAlert.signal.indication',
            i,
          ),
        );
        i++;
      }
      // DeviceAlert.signal.manifestation (token)
      i = 0;
      for (final entry in resource.signal
              ?.map<fhir.CodeableConcept?>((e) => e.manifestation)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceAlert.signal.manifestation',
            i,
          ),
        );
        i++;
      }
      // DeviceAlert.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceAlert.subject.where(resolve() is Patient)',
            i,
          ),
        );
        i++;
      }
      // DeviceAlert.condition.presence (token)
      i = 0;
      for (final entry
          in resource.condition.presence.makeIterable<fhir.FhirBoolean>() ??
              <fhir.FhirBoolean>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceAlert.condition.presence',
            i,
          ),
        );
        i++;
      }
      // DeviceAlert.priority (token)
      i = 0;
      for (final entry
          in resource.priority?.makeIterable<fhir.FhirCodeEnum>() ??
              <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceAlert.priority',
            i,
          ),
        );
        i++;
      }
      // DeviceAlert.signal.presence (token)
      i = 0;
      for (final entry in resource.signal
              ?.map<fhir.FhirCodeEnum?>((e) => e.presence)
              .makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceAlert.signal.presence',
            i,
          ),
        );
        i++;
      }
      // DeviceAlert.source (reference)
      i = 0;
      for (final entry in resource.source?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceAlert.source',
            i,
          ),
        );
        i++;
      }
      // DeviceAlert.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceAlert.status',
            i,
          ),
        );
        i++;
      }
      // DeviceAlert.subject (reference)
      i = 0;
      for (final entry in resource.subject.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceAlert.subject',
            i,
          ),
        );
        i++;
      }
      // DeviceAlert.condition.timing (date)
      i = 0;
      for (final entry
          in resource.condition.timing?.makeIterable<fhir.Period>() ??
              <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceAlert.condition.timing',
            i,
          ),
        );
        i++;
      }
      // DeviceAlert.type (token)
      i = 0;
      for (final entry in resource.type?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceAlert.type',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.DeviceAssociation _:
      // DeviceAssociation.period (date)
      i = 0;
      for (final entry
          in resource.period?.makeIterable<fhir.Period>() ?? <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceAssociation.period',
            i,
          ),
        );
        i++;
      }
      // DeviceAssociation.device (reference)
      i = 0;
      for (final entry in resource.device.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceAssociation.device',
            i,
          ),
        );
        i++;
      }
      // DeviceAssociation.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceAssociation.identifier',
            i,
          ),
        );
        i++;
      }
      // DeviceAssociation.operation.operator (reference)
      i = 0;
      for (final entry in resource.operation
              ?.expand((e) => e.operator_ ?? <fhir.Reference>[])
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceAssociation.operation.operator',
            i,
          ),
        );
        i++;
      }
      // DeviceAssociation.relationship (token)
      i = 0;
      for (final entry
          in resource.relationship?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceAssociation.relationship',
            i,
          ),
        );
        i++;
      }
      // DeviceAssociation.status (token)
      i = 0;
      for (final entry
          in resource.status.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceAssociation.status',
            i,
          ),
        );
        i++;
      }
      // DeviceAssociation.subject (reference)
      i = 0;
      for (final entry in resource.subject?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceAssociation.subject',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.DeviceDefinition _:
      // DeviceDefinition.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceDefinition.identifier',
            i,
          ),
        );
        i++;
      }
      // DeviceDefinition.udiDeviceIdentifier (token)
      i = 0;
      for (final entry in resource.udiDeviceIdentifier
              ?.makeIterable<fhir.DeviceDefinitionUdiDeviceIdentifier>() ??
          <fhir.DeviceDefinitionUdiDeviceIdentifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceDefinition.udiDeviceIdentifier',
            i,
          ),
        );
        i++;
      }
      // DeviceDefinition.contact.name (string)
      i = 0;
      for (final entry in resource.contact
              ?.map<fhir.FhirString?>((e) => e.name)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceDefinition.contact.name',
            i,
          ),
        );
        i++;
      }
      // DeviceDefinition.publisher (string)
      i = 0;
      for (final entry in resource.publisher?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceDefinition.publisher',
            i,
          ),
        );
        i++;
      }
      // DeviceDefinition.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceDefinition.url',
            i,
          ),
        );
        i++;
      }
      // DeviceDefinition.deviceVersion.value (token)
      i = 0;
      for (final entry in resource.deviceVersion
              ?.map<fhir.FhirString?>((e) => e.value)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceDefinition.deviceVersion.value',
            i,
          ),
        );
        i++;
      }
      // DeviceDefinition.deviceName.name (string)
      i = 0;
      for (final entry in resource.deviceName
              ?.map<fhir.FhirString?>((e) => e.name)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceDefinition.deviceName.name',
            i,
          ),
        );
        i++;
      }
      // DeviceDefinition.classification.type.coding.display (string)
      i = 0;
      for (final entry in resource.classification
              ?.map<fhir.CodeableConcept?>((e) => e.type)
              .expand((e) => e?.coding ?? <fhir.Coding>[])
              .map<fhir.FhirString?>((e) => e.display)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceDefinition.classification.type.coding.display',
            i,
          ),
        );
        i++;
      }
      // DeviceDefinition.classification.type.text (string)
      i = 0;
      for (final entry in resource.classification
              ?.map<fhir.CodeableConcept?>((e) => e.type)
              .map<fhir.FhirString?>((e) => e?.text)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceDefinition.classification.type.text',
            i,
          ),
        );
        i++;
      }
      // DeviceDefinition.hasPart.reference (reference)
      i = 0;
      for (final entry in resource.hasPart
              ?.map<fhir.Reference?>((e) => e.reference)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceDefinition.hasPart.reference',
            i,
          ),
        );
        i++;
      }
      // DeviceDefinition.manufacturer (reference)
      i = 0;
      for (final entry
          in resource.manufacturer?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceDefinition.manufacturer',
            i,
          ),
        );
        i++;
      }
      // DeviceDefinition.modelNumber (token)
      i = 0;
      for (final entry
          in resource.modelNumber?.makeIterable<fhir.FhirString>() ??
              <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceDefinition.modelNumber',
            i,
          ),
        );
        i++;
      }
      // DeviceDefinition.partNumber (string)
      i = 0;
      for (final entry
          in resource.partNumber?.makeIterable<fhir.FhirString>() ??
              <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceDefinition.partNumber',
            i,
          ),
        );
        i++;
      }
      // DeviceDefinition.conformsTo.specification (token)
      i = 0;
      for (final entry in resource.conformsTo
              ?.map<fhir.CodeableConcept?>((e) => e.specification)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceDefinition.conformsTo.specification',
            i,
          ),
        );
        i++;
      }
      // DeviceDefinition.conformsTo.category (token)
      i = 0;
      for (final entry in resource.conformsTo
              ?.map<fhir.CodeableConcept?>((e) => e.category)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceDefinition.conformsTo.category',
            i,
          ),
        );
        i++;
      }
      // DeviceDefinition.conformsTo (composite)
      i = 0;
      for (final entry in resource.conformsTo
              ?.makeIterable<fhir.DeviceDefinitionConformsTo>() ??
          <fhir.DeviceDefinitionConformsTo>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceDefinition.conformsTo',
            i,
          ),
        );
        i++;
      }
      // DeviceDefinition.deviceVersion (composite)
      i = 0;
      for (final entry in resource.deviceVersion
              ?.makeIterable<fhir.DeviceDefinitionDeviceVersion>() ??
          <fhir.DeviceDefinitionDeviceVersion>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceDefinition.deviceVersion',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.DeviceDispense _:
      // DeviceDispense.device.concept (token)
      i = 0;
      for (final entry
          in resource.device.concept?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceDispense.device.concept',
            i,
          ),
        );
        i++;
      }
      // DeviceDispense.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceDispense.identifier',
            i,
          ),
        );
        i++;
      }
      // DeviceDispense.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceDispense.subject.where(resolve() is Patient)',
            i,
          ),
        );
        i++;
      }
      // DeviceDispense.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceDispense.status',
            i,
          ),
        );
        i++;
      }
      // DeviceDispense.subject (reference)
      i = 0;
      for (final entry in resource.subject.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceDispense.subject',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.DeviceMetric _:
      // DeviceMetric.category (token)
      i = 0;
      for (final entry
          in resource.category.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceMetric.category',
            i,
          ),
        );
        i++;
      }
      // DeviceMetric.device (reference)
      i = 0;
      for (final entry in resource.device.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceMetric.device',
            i,
          ),
        );
        i++;
      }
      // DeviceMetric.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceMetric.identifier',
            i,
          ),
        );
        i++;
      }
      // DeviceMetric.type (token)
      i = 0;
      for (final entry in resource.type.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceMetric.type',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.DeviceRequest _:
      // DeviceRequest.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceRequest.identifier',
            i,
          ),
        );
        i++;
      }
      // DeviceRequest.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceRequest.subject.where(resolve() is Patient)',
            i,
          ),
        );
        i++;
      }
      // DeviceRequest.code.concept (token)
      i = 0;
      for (final entry
          in resource.code.concept?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceRequest.code.concept',
            i,
          ),
        );
        i++;
      }
      // DeviceRequest.encounter (reference)
      i = 0;
      for (final entry in resource.encounter?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceRequest.encounter',
            i,
          ),
        );
        i++;
      }
      // DeviceRequest.authoredOn (date)
      i = 0;
      for (final entry
          in resource.authoredOn?.makeIterable<fhir.FhirDateTime>() ??
              <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceRequest.authoredOn',
            i,
          ),
        );
        i++;
      }
      // DeviceRequest.basedOn (reference)
      i = 0;
      for (final entry in resource.basedOn?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceRequest.basedOn',
            i,
          ),
        );
        i++;
      }
      // DeviceRequest.code.reference (reference)
      i = 0;
      for (final entry
          in resource.code.reference?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceRequest.code.reference',
            i,
          ),
        );
        i++;
      }
      // DeviceRequest.groupIdentifier (token)
      i = 0;
      for (final entry
          in resource.groupIdentifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceRequest.groupIdentifier',
            i,
          ),
        );
        i++;
      }
      // DeviceRequest.instantiatesCanonical (reference)
      i = 0;
      for (final entry in resource.instantiatesCanonical
              ?.makeIterable<fhir.FhirCanonical>() ??
          <fhir.FhirCanonical>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceRequest.instantiatesCanonical',
            i,
          ),
        );
        i++;
      }
      // DeviceRequest.instantiatesUri (uri)
      i = 0;
      for (final entry
          in resource.instantiatesUri?.makeIterable<fhir.FhirUri>() ??
              <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceRequest.instantiatesUri',
            i,
          ),
        );
        i++;
      }
      // DeviceRequest.insurance (reference)
      i = 0;
      for (final entry in resource.insurance?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceRequest.insurance',
            i,
          ),
        );
        i++;
      }
      // DeviceRequest.intent (token)
      i = 0;
      for (final entry in resource.intent.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceRequest.intent',
            i,
          ),
        );
        i++;
      }
      // DeviceRequest.performer.reference (reference)
      i = 0;
      for (final entry
          in resource.performer?.reference?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceRequest.performer.reference',
            i,
          ),
        );
        i++;
      }
      // DeviceRequest.performer.concept (token)
      i = 0;
      for (final entry in resource.performer?.concept
              ?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceRequest.performer.concept',
            i,
          ),
        );
        i++;
      }
      // DeviceRequest.replaces (reference)
      i = 0;
      for (final entry in resource.replaces?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceRequest.replaces',
            i,
          ),
        );
        i++;
      }
      // DeviceRequest.requester (reference)
      i = 0;
      for (final entry in resource.requester?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceRequest.requester',
            i,
          ),
        );
        i++;
      }
      // DeviceRequest.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceRequest.status',
            i,
          ),
        );
        i++;
      }
      // DeviceRequest.subject (reference)
      i = 0;
      for (final entry in resource.subject.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceRequest.subject',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.DeviceUsage _:
      // DeviceUsage.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceUsage.identifier',
            i,
          ),
        );
        i++;
      }
      // DeviceUsage.patient (reference)
      i = 0;
      for (final entry in resource.patient.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceUsage.patient',
            i,
          ),
        );
        i++;
      }
      // DeviceUsage.device.concept (token)
      i = 0;
      for (final entry
          in resource.device.concept?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceUsage.device.concept',
            i,
          ),
        );
        i++;
      }
      // DeviceUsage.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DeviceUsage.status',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.DiagnosticReport _:
      // DiagnosticReport.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DiagnosticReport.identifier',
            i,
          ),
        );
        i++;
      }
      // DiagnosticReport.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject?.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DiagnosticReport.subject.where(resolve() is Patient)',
            i,
          ),
        );
        i++;
      }
      // DiagnosticReport.code (token)
      i = 0;
      for (final entry in resource.code.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DiagnosticReport.code',
            i,
          ),
        );
        i++;
      }
      // DiagnosticReport.effective.ofType(dateTime) (date)
      i = 0;
      for (final entry
          in resource.effectiveDateTime?.makeIterable<fhir.FhirDateTime>() ??
              <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DiagnosticReport.effective.ofType(dateTime)',
            i,
          ),
        );
        i++;
      }
      // DiagnosticReport.effective.ofType(Period) (date)
      i = 0;
      for (final entry
          in resource.effectivePeriod?.makeIterable<fhir.Period>() ??
              <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DiagnosticReport.effective.ofType(Period)',
            i,
          ),
        );
        i++;
      }
      // DiagnosticReport.encounter (reference)
      i = 0;
      for (final entry in resource.encounter?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DiagnosticReport.encounter',
            i,
          ),
        );
        i++;
      }
      // DiagnosticReport.basedOn (reference)
      i = 0;
      for (final entry in resource.basedOn?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DiagnosticReport.basedOn',
            i,
          ),
        );
        i++;
      }
      // DiagnosticReport.category (token)
      i = 0;
      for (final entry
          in resource.category?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DiagnosticReport.category',
            i,
          ),
        );
        i++;
      }
      // DiagnosticReport.conclusionCode.concept (token)
      i = 0;
      for (final entry in resource.conclusionCode
              ?.map<fhir.CodeableConcept?>((e) => e.concept)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DiagnosticReport.conclusionCode.concept',
            i,
          ),
        );
        i++;
      }
      // DiagnosticReport.conclusionCode.reference (reference)
      i = 0;
      for (final entry in resource.conclusionCode
              ?.map<fhir.Reference?>((e) => e.reference)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DiagnosticReport.conclusionCode.reference',
            i,
          ),
        );
        i++;
      }
      // DiagnosticReport.issued (date)
      i = 0;
      for (final entry in resource.issued?.makeIterable<fhir.FhirInstant>() ??
          <fhir.FhirInstant>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DiagnosticReport.issued',
            i,
          ),
        );
        i++;
      }
      // DiagnosticReport.media.link (reference)
      i = 0;
      for (final entry in resource.media
              ?.map<fhir.Reference?>((e) => e.link)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DiagnosticReport.media.link',
            i,
          ),
        );
        i++;
      }
      // DiagnosticReport.performer (reference)
      i = 0;
      for (final entry in resource.performer?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DiagnosticReport.performer',
            i,
          ),
        );
        i++;
      }
      // DiagnosticReport.procedure (reference)
      i = 0;
      for (final entry in resource.procedure?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DiagnosticReport.procedure',
            i,
          ),
        );
        i++;
      }
      // DiagnosticReport.result (reference)
      i = 0;
      for (final entry in resource.result?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DiagnosticReport.result',
            i,
          ),
        );
        i++;
      }
      // DiagnosticReport.resultsInterpreter (reference)
      i = 0;
      for (final entry
          in resource.resultsInterpreter?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DiagnosticReport.resultsInterpreter',
            i,
          ),
        );
        i++;
      }
      // DiagnosticReport.specimen (reference)
      i = 0;
      for (final entry in resource.specimen?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DiagnosticReport.specimen',
            i,
          ),
        );
        i++;
      }
      // DiagnosticReport.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DiagnosticReport.status',
            i,
          ),
        );
        i++;
      }
      // DiagnosticReport.study (reference)
      i = 0;
      for (final entry in resource.study?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DiagnosticReport.study',
            i,
          ),
        );
        i++;
      }
      // DiagnosticReport.subject (reference)
      i = 0;
      for (final entry in resource.subject?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DiagnosticReport.subject',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.DocumentReference _:
      // DocumentReference.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentReference.identifier',
            i,
          ),
        );
        i++;
      }
      // DocumentReference.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject?.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentReference.subject.where(resolve() is Patient)',
            i,
          ),
        );
        i++;
      }
      // DocumentReference.type (token)
      i = 0;
      for (final entry in resource.type?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentReference.type',
            i,
          ),
        );
        i++;
      }
      // DocumentReference.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentReference.date',
            i,
          ),
        );
        i++;
      }
      // DocumentReference.attester.party (reference)
      i = 0;
      for (final entry in resource.attester
              ?.map<fhir.Reference?>((e) => e.party)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentReference.attester.party',
            i,
          ),
        );
        i++;
      }
      // DocumentReference.author (reference)
      i = 0;
      for (final entry in resource.author?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentReference.author',
            i,
          ),
        );
        i++;
      }
      // DocumentReference.basedOn (reference)
      i = 0;
      for (final entry in resource.basedOn?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentReference.basedOn',
            i,
          ),
        );
        i++;
      }
      // DocumentReference.bodySite.concept (token)
      i = 0;
      for (final entry in resource.bodySite
              ?.map<fhir.CodeableConcept?>((e) => e.concept)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentReference.bodySite.concept',
            i,
          ),
        );
        i++;
      }
      // DocumentReference.bodySite.reference (reference)
      i = 0;
      for (final entry in resource.bodySite
              ?.map<fhir.Reference?>((e) => e.reference)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentReference.bodySite.reference',
            i,
          ),
        );
        i++;
      }
      // DocumentReference.category (token)
      i = 0;
      for (final entry
          in resource.category?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentReference.category',
            i,
          ),
        );
        i++;
      }
      // DocumentReference.content.attachment.contentType (token)
      i = 0;
      for (final entry in resource.content
              .map<fhir.Attachment?>((e) => e.attachment)
              .map<fhir.FhirCode?>((e) => e?.contentType)
              .makeIterable<fhir.FhirCode>() ??
          <fhir.FhirCode>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentReference.content.attachment.contentType',
            i,
          ),
        );
        i++;
      }
      // DocumentReference.context (reference)
      i = 0;
      for (final entry in resource.context?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentReference.context',
            i,
          ),
        );
        i++;
      }
      // DocumentReference.content.attachment.creation (date)
      i = 0;
      for (final entry in resource.content
              .map<fhir.Attachment?>((e) => e.attachment)
              .map<fhir.FhirDateTime?>((e) => e?.creation)
              .makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentReference.content.attachment.creation',
            i,
          ),
        );
        i++;
      }
      // DocumentReference.custodian (reference)
      i = 0;
      for (final entry in resource.custodian?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentReference.custodian',
            i,
          ),
        );
        i++;
      }
      // DocumentReference.description (string)
      i = 0;
      for (final entry
          in resource.description?.makeIterable<fhir.FhirMarkdown>() ??
              <fhir.FhirMarkdown>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentReference.description',
            i,
          ),
        );
        i++;
      }
      // DocumentReference.docStatus (token)
      i = 0;
      for (final entry
          in resource.docStatus?.makeIterable<fhir.FhirCodeEnum>() ??
              <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentReference.docStatus',
            i,
          ),
        );
        i++;
      }
      // DocumentReference.event.concept (token)
      i = 0;
      for (final entry in resource.event
              ?.map<fhir.CodeableConcept?>((e) => e.concept)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentReference.event.concept',
            i,
          ),
        );
        i++;
      }
      // DocumentReference.event.reference (reference)
      i = 0;
      for (final entry in resource.event
              ?.map<fhir.Reference?>((e) => e.reference)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentReference.event.reference',
            i,
          ),
        );
        i++;
      }
      // DocumentReference.facilityType (token)
      i = 0;
      for (final entry
          in resource.facilityType?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentReference.facilityType',
            i,
          ),
        );
        i++;
      }
      // DocumentReference.content.attachment.language (token)
      i = 0;
      for (final entry in resource.content
              .map<fhir.Attachment?>((e) => e.attachment)
              .map<fhir.FhirCodeEnum?>((e) => e?.language)
              .makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentReference.content.attachment.language',
            i,
          ),
        );
        i++;
      }
      // DocumentReference.content.attachment.url (uri)
      i = 0;
      for (final entry in resource.content
              .map<fhir.Attachment?>((e) => e.attachment)
              .map<fhir.FhirUrl?>((e) => e?.url)
              .makeIterable<fhir.FhirUrl>() ??
          <fhir.FhirUrl>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentReference.content.attachment.url',
            i,
          ),
        );
        i++;
      }
      // DocumentReference.modality (token)
      i = 0;
      for (final entry
          in resource.modality?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentReference.modality',
            i,
          ),
        );
        i++;
      }
      // DocumentReference.period (date)
      i = 0;
      for (final entry
          in resource.period?.makeIterable<fhir.Period>() ?? <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentReference.period',
            i,
          ),
        );
        i++;
      }
      // DocumentReference.related (reference)
      i = 0;
      for (final entry in resource.related?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentReference.related',
            i,
          ),
        );
        i++;
      }
      // DocumentReference.relatesTo.target (reference)
      i = 0;
      for (final entry in resource.relatesTo
              ?.map<fhir.Reference?>((e) => e.target)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentReference.relatesTo.target',
            i,
          ),
        );
        i++;
      }
      // DocumentReference.relatesTo.code (token)
      i = 0;
      for (final entry in resource.relatesTo
              ?.map<fhir.CodeableConcept?>((e) => e.code)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentReference.relatesTo.code',
            i,
          ),
        );
        i++;
      }
      // DocumentReference.securityLabel (token)
      i = 0;
      for (final entry
          in resource.securityLabel?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentReference.securityLabel',
            i,
          ),
        );
        i++;
      }
      // DocumentReference.practiceSetting (token)
      i = 0;
      for (final entry
          in resource.practiceSetting?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentReference.practiceSetting',
            i,
          ),
        );
        i++;
      }
      // DocumentReference.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentReference.status',
            i,
          ),
        );
        i++;
      }
      // DocumentReference.subject (reference)
      i = 0;
      for (final entry in resource.subject?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentReference.subject',
            i,
          ),
        );
        i++;
      }
      // DocumentReference.version (string)
      i = 0;
      for (final entry in resource.version?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentReference.version',
            i,
          ),
        );
        i++;
      }
      // DocumentReference.relatesTo (composite)
      i = 0;
      for (final entry in resource.relatesTo
              ?.makeIterable<fhir.DocumentReferenceRelatesTo>() ??
          <fhir.DocumentReferenceRelatesTo>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'DocumentReference.relatesTo',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.Encounter _:
      // Encounter.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Encounter.identifier',
            i,
          ),
        );
        i++;
      }
      // Encounter.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject?.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Encounter.subject.where(resolve() is Patient)',
            i,
          ),
        );
        i++;
      }
      // Encounter.type (token)
      i = 0;
      for (final entry in resource.type?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Encounter.type',
            i,
          ),
        );
        i++;
      }
      // Encounter.actualPeriod (date)
      i = 0;
      for (final entry in resource.actualPeriod?.makeIterable<fhir.Period>() ??
          <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Encounter.actualPeriod',
            i,
          ),
        );
        i++;
      }
      // Encounter.account (reference)
      i = 0;
      for (final entry in resource.account?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Encounter.account',
            i,
          ),
        );
        i++;
      }
      // Encounter.appointment (reference)
      i = 0;
      for (final entry
          in resource.appointment?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Encounter.appointment',
            i,
          ),
        );
        i++;
      }
      // Encounter.basedOn (reference)
      i = 0;
      for (final entry in resource.basedOn?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Encounter.basedOn',
            i,
          ),
        );
        i++;
      }
      // Encounter.careTeam (reference)
      i = 0;
      for (final entry in resource.careTeam?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Encounter.careTeam',
            i,
          ),
        );
        i++;
      }
      // Encounter.class (token)
      i = 0;
      for (final entry
          in resource.class_?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Encounter.class',
            i,
          ),
        );
        i++;
      }
      // Encounter.actualPeriod.start (date)
      i = 0;
      for (final entry
          in resource.actualPeriod?.start?.makeIterable<fhir.FhirDateTime>() ??
              <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Encounter.actualPeriod.start',
            i,
          ),
        );
        i++;
      }
      // Encounter.diagnosis.condition.concept (token)
      i = 0;
      for (final entry in resource.diagnosis
              ?.expand((e) => e.condition ?? <fhir.CodeableReference>[])
              .map<fhir.CodeableConcept?>((e) => e.concept)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Encounter.diagnosis.condition.concept',
            i,
          ),
        );
        i++;
      }
      // Encounter.diagnosis.condition.reference (reference)
      i = 0;
      for (final entry in resource.diagnosis
              ?.expand((e) => e.condition ?? <fhir.CodeableReference>[])
              .map<fhir.Reference?>((e) => e.reference)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Encounter.diagnosis.condition.reference',
            i,
          ),
        );
        i++;
      }
      // Encounter.actualPeriod.end (date)
      i = 0;
      for (final entry
          in resource.actualPeriod?.end?.makeIterable<fhir.FhirDateTime>() ??
              <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Encounter.actualPeriod.end',
            i,
          ),
        );
        i++;
      }
      // Encounter.episodeOfCare (reference)
      i = 0;
      for (final entry
          in resource.episodeOfCare?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Encounter.episodeOfCare',
            i,
          ),
        );
        i++;
      }
      // Encounter.length (quantity)
      i = 0;
      for (final entry in resource.length?.makeIterable<fhir.FhirDuration>() ??
          <fhir.FhirDuration>[]) {
        searchParameterLists.quantityParams.addAll(
          entry.toQuantitySearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Encounter.length',
            i,
          ),
        );
        i++;
      }
      // Encounter.location.location (reference)
      i = 0;
      for (final entry in resource.location
              ?.map<fhir.Reference?>((e) => e.location)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Encounter.location.location',
            i,
          ),
        );
        i++;
      }
      // Encounter.location.period (date)
      i = 0;
      for (final entry in resource.location
              ?.map<fhir.Period?>((e) => e.period)
              .makeIterable<fhir.Period>() ??
          <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Encounter.location.period',
            i,
          ),
        );
        i++;
      }
      // Encounter.partOf (reference)
      i = 0;
      for (final entry in resource.partOf?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Encounter.partOf',
            i,
          ),
        );
        i++;
      }
      // Encounter.participant.actor (reference)
      i = 0;
      for (final entry in resource.participant
              ?.map<fhir.Reference?>((e) => e.actor)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Encounter.participant.actor',
            i,
          ),
        );
        i++;
      }
      // Encounter.participant.type (token)
      i = 0;
      for (final entry in resource.participant
              ?.expand((e) => e.type ?? <fhir.CodeableConcept>[])
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Encounter.participant.type',
            i,
          ),
        );
        i++;
      }
      // Encounter.participant.actor.where(resolve() is Practitioner) (reference)
      i = 0;
      for (final entry in resource.participant
              ?.map<fhir.Reference?>((e) => e.actor)
              .where((e) {
            final ref = e?.reference?.toString().split('/') ?? [];
            return ref.length > 1 && ref[ref.length - 2] == 'Practitioner';
          }).makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Encounter.participant.actor.where(resolve() is Practitioner)',
            i,
          ),
        );
        i++;
      }
      // Encounter.reason.value.concept (token)
      i = 0;
      for (final entry in resource.reason
              ?.expand((e) => e.value ?? <fhir.CodeableReference>[])
              .map<fhir.CodeableConcept?>((e) => e.concept)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Encounter.reason.value.concept',
            i,
          ),
        );
        i++;
      }
      // Encounter.reason.value.reference (reference)
      i = 0;
      for (final entry in resource.reason
              ?.expand((e) => e.value ?? <fhir.CodeableReference>[])
              .map<fhir.Reference?>((e) => e.reference)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Encounter.reason.value.reference',
            i,
          ),
        );
        i++;
      }
      // Encounter.serviceProvider (reference)
      i = 0;
      for (final entry
          in resource.serviceProvider?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Encounter.serviceProvider',
            i,
          ),
        );
        i++;
      }
      // Encounter.specialArrangement (token)
      i = 0;
      for (final entry in resource.specialArrangement
              ?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Encounter.specialArrangement',
            i,
          ),
        );
        i++;
      }
      // Encounter.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Encounter.status',
            i,
          ),
        );
        i++;
      }
      // Encounter.subject (reference)
      i = 0;
      for (final entry in resource.subject?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Encounter.subject',
            i,
          ),
        );
        i++;
      }
      // Encounter.subjectStatus (token)
      i = 0;
      for (final entry
          in resource.subjectStatus?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Encounter.subjectStatus',
            i,
          ),
        );
        i++;
      }
      // Encounter.location (composite)
      i = 0;
      for (final entry
          in resource.location?.makeIterable<fhir.EncounterLocation>() ??
              <fhir.EncounterLocation>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Encounter.location',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.EncounterHistory _:
      // EncounterHistory.encounter (reference)
      i = 0;
      for (final entry in resource.encounter?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EncounterHistory.encounter',
            i,
          ),
        );
        i++;
      }
      // EncounterHistory.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EncounterHistory.identifier',
            i,
          ),
        );
        i++;
      }
      // EncounterHistory.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject?.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EncounterHistory.subject.where(resolve() is Patient)',
            i,
          ),
        );
        i++;
      }
      // EncounterHistory.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EncounterHistory.status',
            i,
          ),
        );
        i++;
      }
      // EncounterHistory.subject (reference)
      i = 0;
      for (final entry in resource.subject?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EncounterHistory.subject',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.FhirEndpoint _:
      // Endpoint.connectionType (token)
      i = 0;
      for (final entry
          in resource.connectionType.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Endpoint.connectionType',
            i,
          ),
        );
        i++;
      }
      // Endpoint.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Endpoint.identifier',
            i,
          ),
        );
        i++;
      }
      // Endpoint.name (string)
      i = 0;
      for (final entry in resource.name?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Endpoint.name',
            i,
          ),
        );
        i++;
      }
      // Endpoint.managingOrganization (reference)
      i = 0;
      for (final entry
          in resource.managingOrganization?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Endpoint.managingOrganization',
            i,
          ),
        );
        i++;
      }
      // Endpoint.payload.type (token)
      i = 0;
      for (final entry in resource.payload
              ?.expand((e) => e.type ?? <fhir.CodeableConcept>[])
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Endpoint.payload.type',
            i,
          ),
        );
        i++;
      }
      // Endpoint.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Endpoint.status',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.EnrollmentRequest _:
      // EnrollmentRequest.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EnrollmentRequest.identifier',
            i,
          ),
        );
        i++;
      }
      // EnrollmentRequest.candidate (reference)
      i = 0;
      for (final entry in resource.candidate?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EnrollmentRequest.candidate',
            i,
          ),
        );
        i++;
      }
      // EnrollmentRequest.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EnrollmentRequest.status',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.EnrollmentResponse _:
      // EnrollmentResponse.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EnrollmentResponse.identifier',
            i,
          ),
        );
        i++;
      }
      // EnrollmentResponse.request (reference)
      i = 0;
      for (final entry in resource.request?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EnrollmentResponse.request',
            i,
          ),
        );
        i++;
      }
      // EnrollmentResponse.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EnrollmentResponse.status',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.EpisodeOfCare _:
      // EpisodeOfCare.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EpisodeOfCare.identifier',
            i,
          ),
        );
        i++;
      }
      // EpisodeOfCare.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EpisodeOfCare.subject.where(resolve() is Patient)',
            i,
          ),
        );
        i++;
      }
      // EpisodeOfCare.type (token)
      i = 0;
      for (final entry in resource.type?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EpisodeOfCare.type',
            i,
          ),
        );
        i++;
      }
      // EpisodeOfCare.period (date)
      i = 0;
      for (final entry
          in resource.period?.makeIterable<fhir.Period>() ?? <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EpisodeOfCare.period',
            i,
          ),
        );
        i++;
      }
      // EpisodeOfCare.careManager.where(resolve() is Practitioner) (reference)
      i = 0;
      for (final entry
          in resource.careManager?.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Practitioner';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EpisodeOfCare.careManager.where(resolve() is Practitioner)',
            i,
          ),
        );
        i++;
      }
      // EpisodeOfCare.diagnosis.condition.concept (token)
      i = 0;
      for (final entry in resource.diagnosis
              ?.expand((e) => e.condition ?? <fhir.CodeableReference>[])
              .map<fhir.CodeableConcept?>((e) => e.concept)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EpisodeOfCare.diagnosis.condition.concept',
            i,
          ),
        );
        i++;
      }
      // EpisodeOfCare.diagnosis.condition.reference (reference)
      i = 0;
      for (final entry in resource.diagnosis
              ?.expand((e) => e.condition ?? <fhir.CodeableReference>[])
              .map<fhir.Reference?>((e) => e.reference)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EpisodeOfCare.diagnosis.condition.reference',
            i,
          ),
        );
        i++;
      }
      // EpisodeOfCare.referralRequest (reference)
      i = 0;
      for (final entry
          in resource.referralRequest?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EpisodeOfCare.referralRequest',
            i,
          ),
        );
        i++;
      }
      // EpisodeOfCare.managingOrganization (reference)
      i = 0;
      for (final entry
          in resource.managingOrganization?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EpisodeOfCare.managingOrganization',
            i,
          ),
        );
        i++;
      }
      // EpisodeOfCare.reason.value.concept (token)
      i = 0;
      for (final entry in resource.reason
              ?.expand((e) => e.value ?? <fhir.CodeableReference>[])
              .map<fhir.CodeableConcept?>((e) => e.concept)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EpisodeOfCare.reason.value.concept',
            i,
          ),
        );
        i++;
      }
      // EpisodeOfCare.reason.value.reference (reference)
      i = 0;
      for (final entry in resource.reason
              ?.expand((e) => e.value ?? <fhir.CodeableReference>[])
              .map<fhir.Reference?>((e) => e.reference)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EpisodeOfCare.reason.value.reference',
            i,
          ),
        );
        i++;
      }
      // EpisodeOfCare.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EpisodeOfCare.status',
            i,
          ),
        );
        i++;
      }
      // EpisodeOfCare.subject (reference)
      i = 0;
      for (final entry in resource.subject.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EpisodeOfCare.subject',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.EventDefinition _:
      // EventDefinition.relatedArtifact.where(type='composed-of').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'composed-of')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "EventDefinition.relatedArtifact.where(type='composed-of').resource",
            i,
          ),
        );
        i++;
      }
      // EventDefinition.useContext.code (token)
      i = 0;
      for (final entry in resource.useContext
              ?.map<fhir.Coding?>((e) => e.code)
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EventDefinition.useContext.code',
            i,
          ),
        );
        i++;
      }
      // EventDefinition.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EventDefinition.date',
            i,
          ),
        );
        i++;
      }
      // EventDefinition.relatedArtifact.where(type='depends-on').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'depends-on')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "EventDefinition.relatedArtifact.where(type='depends-on').resource",
            i,
          ),
        );
        i++;
      }
      // EventDefinition.relatedArtifact.where(type='derived-from').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'derived-from')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "EventDefinition.relatedArtifact.where(type='derived-from').resource",
            i,
          ),
        );
        i++;
      }
      // EventDefinition.description (string)
      i = 0;
      for (final entry
          in resource.description?.makeIterable<fhir.FhirMarkdown>() ??
              <fhir.FhirMarkdown>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EventDefinition.description',
            i,
          ),
        );
        i++;
      }
      // EventDefinition.effectivePeriod (date)
      i = 0;
      for (final entry
          in resource.effectivePeriod?.makeIterable<fhir.Period>() ??
              <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EventDefinition.effectivePeriod',
            i,
          ),
        );
        i++;
      }
      // EventDefinition.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EventDefinition.identifier',
            i,
          ),
        );
        i++;
      }
      // EventDefinition.jurisdiction (token)
      i = 0;
      for (final entry
          in resource.jurisdiction?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EventDefinition.jurisdiction',
            i,
          ),
        );
        i++;
      }
      // EventDefinition.name (string)
      i = 0;
      for (final entry in resource.name?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EventDefinition.name',
            i,
          ),
        );
        i++;
      }
      // EventDefinition.relatedArtifact.where(type='predecessor').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'predecessor')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "EventDefinition.relatedArtifact.where(type='predecessor').resource",
            i,
          ),
        );
        i++;
      }
      // EventDefinition.publisher (string)
      i = 0;
      for (final entry in resource.publisher?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EventDefinition.publisher',
            i,
          ),
        );
        i++;
      }
      // EventDefinition.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EventDefinition.status',
            i,
          ),
        );
        i++;
      }
      // EventDefinition.relatedArtifact.where(type='successor').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'successor')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "EventDefinition.relatedArtifact.where(type='successor').resource",
            i,
          ),
        );
        i++;
      }
      // EventDefinition.title (string)
      i = 0;
      for (final entry in resource.title?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EventDefinition.title',
            i,
          ),
        );
        i++;
      }
      // EventDefinition.topic (token)
      i = 0;
      for (final entry
          in resource.topic?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EventDefinition.topic',
            i,
          ),
        );
        i++;
      }
      // EventDefinition.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EventDefinition.url',
            i,
          ),
        );
        i++;
      }
      // EventDefinition.version (token)
      i = 0;
      for (final entry in resource.version?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EventDefinition.version',
            i,
          ),
        );
        i++;
      }
      // EventDefinition.useContext (composite)
      i = 0;
      for (final entry
          in resource.useContext?.makeIterable<fhir.UsageContext>() ??
              <fhir.UsageContext>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EventDefinition.useContext',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.Evidence _:
      // Evidence.useContext.code (token)
      i = 0;
      for (final entry in resource.useContext
              ?.map<fhir.Coding?>((e) => e.code)
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Evidence.useContext.code',
            i,
          ),
        );
        i++;
      }
      // Evidence.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Evidence.date',
            i,
          ),
        );
        i++;
      }
      // Evidence.description (string)
      i = 0;
      for (final entry
          in resource.description?.makeIterable<fhir.FhirMarkdown>() ??
              <fhir.FhirMarkdown>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Evidence.description',
            i,
          ),
        );
        i++;
      }
      // Evidence.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Evidence.identifier',
            i,
          ),
        );
        i++;
      }
      // Evidence.publisher (string)
      i = 0;
      for (final entry in resource.publisher?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Evidence.publisher',
            i,
          ),
        );
        i++;
      }
      // Evidence.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Evidence.status',
            i,
          ),
        );
        i++;
      }
      // Evidence.title (string)
      i = 0;
      for (final entry in resource.title?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Evidence.title',
            i,
          ),
        );
        i++;
      }
      // Evidence.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Evidence.url',
            i,
          ),
        );
        i++;
      }
      // Evidence.version (token)
      i = 0;
      for (final entry in resource.version?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Evidence.version',
            i,
          ),
        );
        i++;
      }
      // Evidence.useContext (composite)
      i = 0;
      for (final entry
          in resource.useContext?.makeIterable<fhir.UsageContext>() ??
              <fhir.UsageContext>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Evidence.useContext',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.EvidenceVariable _:
      // EvidenceVariable.useContext.code (token)
      i = 0;
      for (final entry in resource.useContext
              ?.map<fhir.Coding?>((e) => e.code)
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EvidenceVariable.useContext.code',
            i,
          ),
        );
        i++;
      }
      // EvidenceVariable.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EvidenceVariable.date',
            i,
          ),
        );
        i++;
      }
      // EvidenceVariable.description (string)
      i = 0;
      for (final entry
          in resource.description?.makeIterable<fhir.FhirMarkdown>() ??
              <fhir.FhirMarkdown>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EvidenceVariable.description',
            i,
          ),
        );
        i++;
      }
      // EvidenceVariable.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EvidenceVariable.identifier',
            i,
          ),
        );
        i++;
      }
      // EvidenceVariable.name (string)
      i = 0;
      for (final entry in resource.name?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EvidenceVariable.name',
            i,
          ),
        );
        i++;
      }
      // EvidenceVariable.publisher (string)
      i = 0;
      for (final entry in resource.publisher?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EvidenceVariable.publisher',
            i,
          ),
        );
        i++;
      }
      // EvidenceVariable.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EvidenceVariable.status',
            i,
          ),
        );
        i++;
      }
      // EvidenceVariable.title (string)
      i = 0;
      for (final entry in resource.title?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EvidenceVariable.title',
            i,
          ),
        );
        i++;
      }
      // EvidenceVariable.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EvidenceVariable.url',
            i,
          ),
        );
        i++;
      }
      // EvidenceVariable.version (token)
      i = 0;
      for (final entry in resource.version?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EvidenceVariable.version',
            i,
          ),
        );
        i++;
      }
      // EvidenceVariable.useContext (composite)
      i = 0;
      for (final entry
          in resource.useContext?.makeIterable<fhir.UsageContext>() ??
              <fhir.UsageContext>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'EvidenceVariable.useContext',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.ExampleScenario _:
      // ExampleScenario.useContext.code (token)
      i = 0;
      for (final entry in resource.useContext
              ?.map<fhir.Coding?>((e) => e.code)
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ExampleScenario.useContext.code',
            i,
          ),
        );
        i++;
      }
      // ExampleScenario.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ExampleScenario.date',
            i,
          ),
        );
        i++;
      }
      // ExampleScenario.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ExampleScenario.identifier',
            i,
          ),
        );
        i++;
      }
      // ExampleScenario.jurisdiction (token)
      i = 0;
      for (final entry
          in resource.jurisdiction?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ExampleScenario.jurisdiction',
            i,
          ),
        );
        i++;
      }
      // ExampleScenario.name (string)
      i = 0;
      for (final entry in resource.name?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ExampleScenario.name',
            i,
          ),
        );
        i++;
      }
      // ExampleScenario.publisher (string)
      i = 0;
      for (final entry in resource.publisher?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ExampleScenario.publisher',
            i,
          ),
        );
        i++;
      }
      // ExampleScenario.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ExampleScenario.status',
            i,
          ),
        );
        i++;
      }
      // ExampleScenario.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ExampleScenario.url',
            i,
          ),
        );
        i++;
      }
      // ExampleScenario.version (token)
      i = 0;
      for (final entry in resource.version?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ExampleScenario.version',
            i,
          ),
        );
        i++;
      }
      // ExampleScenario.useContext (composite)
      i = 0;
      for (final entry
          in resource.useContext?.makeIterable<fhir.UsageContext>() ??
              <fhir.UsageContext>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ExampleScenario.useContext',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.ExplanationOfBenefit _:
      // ExplanationOfBenefit.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ExplanationOfBenefit.identifier',
            i,
          ),
        );
        i++;
      }
      // ExplanationOfBenefit.patient (reference)
      i = 0;
      for (final entry in resource.patient.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ExplanationOfBenefit.patient',
            i,
          ),
        );
        i++;
      }
      // ExplanationOfBenefit.item.encounter (reference)
      i = 0;
      for (final entry in resource.item
              ?.expand((e) => e.encounter ?? <fhir.Reference>[])
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ExplanationOfBenefit.item.encounter',
            i,
          ),
        );
        i++;
      }
      // ExplanationOfBenefit.careTeam.provider (reference)
      i = 0;
      for (final entry in resource.careTeam
              ?.map<fhir.Reference?>((e) => e.provider)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ExplanationOfBenefit.careTeam.provider',
            i,
          ),
        );
        i++;
      }
      // ExplanationOfBenefit.claim (reference)
      i = 0;
      for (final entry in resource.claim?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ExplanationOfBenefit.claim',
            i,
          ),
        );
        i++;
      }
      // ExplanationOfBenefit.insurance.coverage (reference)
      i = 0;
      for (final entry in resource.insurance
              ?.map<fhir.Reference?>((e) => e.coverage)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ExplanationOfBenefit.insurance.coverage',
            i,
          ),
        );
        i++;
      }
      // ExplanationOfBenefit.created (date)
      i = 0;
      for (final entry in resource.created.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ExplanationOfBenefit.created',
            i,
          ),
        );
        i++;
      }
      // ExplanationOfBenefit.item.detail.udi (reference)
      i = 0;
      for (final entry in resource.item
              ?.expand((e) => e.detail ?? <fhir.ExplanationOfBenefitDetail>[])
              .expand((e) => e.udi ?? <fhir.Reference>[])
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ExplanationOfBenefit.item.detail.udi',
            i,
          ),
        );
        i++;
      }
      // ExplanationOfBenefit.disposition (string)
      i = 0;
      for (final entry
          in resource.disposition?.makeIterable<fhir.FhirString>() ??
              <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ExplanationOfBenefit.disposition',
            i,
          ),
        );
        i++;
      }
      // ExplanationOfBenefit.enterer (reference)
      i = 0;
      for (final entry in resource.enterer?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ExplanationOfBenefit.enterer',
            i,
          ),
        );
        i++;
      }
      // ExplanationOfBenefit.facility (reference)
      i = 0;
      for (final entry in resource.facility?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ExplanationOfBenefit.facility',
            i,
          ),
        );
        i++;
      }
      // ExplanationOfBenefit.item.udi (reference)
      i = 0;
      for (final entry in resource.item
              ?.expand((e) => e.udi ?? <fhir.Reference>[])
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ExplanationOfBenefit.item.udi',
            i,
          ),
        );
        i++;
      }
      // ExplanationOfBenefit.payee.party (reference)
      i = 0;
      for (final entry
          in resource.payee?.party?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ExplanationOfBenefit.payee.party',
            i,
          ),
        );
        i++;
      }
      // ExplanationOfBenefit.procedure.udi (reference)
      i = 0;
      for (final entry in resource.procedure
              ?.expand((e) => e.udi ?? <fhir.Reference>[])
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ExplanationOfBenefit.procedure.udi',
            i,
          ),
        );
        i++;
      }
      // ExplanationOfBenefit.provider (reference)
      i = 0;
      for (final entry in resource.provider?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ExplanationOfBenefit.provider',
            i,
          ),
        );
        i++;
      }
      // ExplanationOfBenefit.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ExplanationOfBenefit.status',
            i,
          ),
        );
        i++;
      }
      // ExplanationOfBenefit.item.detail.subDetail.udi (reference)
      i = 0;
      for (final entry in resource.item
              ?.expand((e) => e.detail ?? <fhir.ExplanationOfBenefitDetail>[])
              .expand(
                  (e) => e.subDetail ?? <fhir.ExplanationOfBenefitSubDetail>[])
              .expand((e) => e.udi ?? <fhir.Reference>[])
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ExplanationOfBenefit.item.detail.subDetail.udi',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.FamilyMemberHistory _:
      // FamilyMemberHistory.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'FamilyMemberHistory.identifier',
            i,
          ),
        );
        i++;
      }
      // FamilyMemberHistory.patient (reference)
      i = 0;
      for (final entry in resource.patient.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'FamilyMemberHistory.patient',
            i,
          ),
        );
        i++;
      }
      // FamilyMemberHistory.condition.code (token)
      i = 0;
      for (final entry in resource.condition
              ?.map<fhir.CodeableConcept?>((e) => e.code)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'FamilyMemberHistory.condition.code',
            i,
          ),
        );
        i++;
      }
      // FamilyMemberHistory.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'FamilyMemberHistory.date',
            i,
          ),
        );
        i++;
      }
      // FamilyMemberHistory.relationship (token)
      i = 0;
      for (final entry
          in resource.relationship.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'FamilyMemberHistory.relationship',
            i,
          ),
        );
        i++;
      }
      // FamilyMemberHistory.sex (token)
      i = 0;
      for (final entry in resource.sex?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'FamilyMemberHistory.sex',
            i,
          ),
        );
        i++;
      }
      // FamilyMemberHistory.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'FamilyMemberHistory.status',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.Flag _:
      // Flag.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Flag.identifier',
            i,
          ),
        );
        i++;
      }
      // Flag.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Flag.subject.where(resolve() is Patient)',
            i,
          ),
        );
        i++;
      }
      // Flag.period (date)
      i = 0;
      for (final entry
          in resource.period?.makeIterable<fhir.Period>() ?? <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Flag.period',
            i,
          ),
        );
        i++;
      }
      // Flag.encounter (reference)
      i = 0;
      for (final entry in resource.encounter?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Flag.encounter',
            i,
          ),
        );
        i++;
      }
      // Flag.author (reference)
      i = 0;
      for (final entry in resource.author?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Flag.author',
            i,
          ),
        );
        i++;
      }
      // Flag.category (token)
      i = 0;
      for (final entry
          in resource.category?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Flag.category',
            i,
          ),
        );
        i++;
      }
      // Flag.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Flag.status',
            i,
          ),
        );
        i++;
      }
      // Flag.subject (reference)
      i = 0;
      for (final entry in resource.subject.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Flag.subject',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.FormularyItem _:
      // FormularyItem.code (token)
      i = 0;
      for (final entry in resource.code?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'FormularyItem.code',
            i,
          ),
        );
        i++;
      }
      // FormularyItem.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'FormularyItem.identifier',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.GenomicStudy _:
      // GenomicStudy.analysis.focus (reference)
      i = 0;
      for (final entry in resource.analysis
              ?.expand((e) => e.focus ?? <fhir.Reference>[])
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'GenomicStudy.analysis.focus',
            i,
          ),
        );
        i++;
      }
      // GenomicStudy.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'GenomicStudy.identifier',
            i,
          ),
        );
        i++;
      }
      // GenomicStudy.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'GenomicStudy.subject.where(resolve() is Patient)',
            i,
          ),
        );
        i++;
      }
      // GenomicStudy.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'GenomicStudy.status',
            i,
          ),
        );
        i++;
      }
      // GenomicStudy.subject (reference)
      i = 0;
      for (final entry in resource.subject.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'GenomicStudy.subject',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.Goal _:
      // Goal.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Goal.identifier',
            i,
          ),
        );
        i++;
      }
      // Goal.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Goal.subject.where(resolve() is Patient)',
            i,
          ),
        );
        i++;
      }
      // Goal.achievementStatus (token)
      i = 0;
      for (final entry
          in resource.achievementStatus?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Goal.achievementStatus',
            i,
          ),
        );
        i++;
      }
      // Goal.addresses (reference)
      i = 0;
      for (final entry in resource.addresses?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Goal.addresses',
            i,
          ),
        );
        i++;
      }
      // Goal.category (token)
      i = 0;
      for (final entry
          in resource.category?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Goal.category',
            i,
          ),
        );
        i++;
      }
      // Goal.description (token)
      i = 0;
      for (final entry
          in resource.description.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Goal.description',
            i,
          ),
        );
        i++;
      }
      // Goal.lifecycleStatus (token)
      i = 0;
      for (final entry
          in resource.lifecycleStatus.makeIterable<fhir.FhirCodeEnum>() ??
              <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Goal.lifecycleStatus',
            i,
          ),
        );
        i++;
      }
      // Goal.subject (reference)
      i = 0;
      for (final entry in resource.subject.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Goal.subject',
            i,
          ),
        );
        i++;
      }
      // Goal.target.measure (token)
      i = 0;
      for (final entry in resource.target
              ?.map<fhir.CodeableConcept?>((e) => e.measure)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Goal.target.measure',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.GraphDefinition _:
      // GraphDefinition.useContext.code (token)
      i = 0;
      for (final entry in resource.useContext
              ?.map<fhir.Coding?>((e) => e.code)
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'GraphDefinition.useContext.code',
            i,
          ),
        );
        i++;
      }
      // GraphDefinition.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'GraphDefinition.date',
            i,
          ),
        );
        i++;
      }
      // GraphDefinition.description (string)
      i = 0;
      for (final entry
          in resource.description?.makeIterable<fhir.FhirMarkdown>() ??
              <fhir.FhirMarkdown>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'GraphDefinition.description',
            i,
          ),
        );
        i++;
      }
      // GraphDefinition.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'GraphDefinition.identifier',
            i,
          ),
        );
        i++;
      }
      // GraphDefinition.jurisdiction (token)
      i = 0;
      for (final entry
          in resource.jurisdiction?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'GraphDefinition.jurisdiction',
            i,
          ),
        );
        i++;
      }
      // GraphDefinition.name (string)
      i = 0;
      for (final entry in resource.name.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'GraphDefinition.name',
            i,
          ),
        );
        i++;
      }
      // GraphDefinition.publisher (string)
      i = 0;
      for (final entry in resource.publisher?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'GraphDefinition.publisher',
            i,
          ),
        );
        i++;
      }
      // GraphDefinition.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'GraphDefinition.status',
            i,
          ),
        );
        i++;
      }
      // GraphDefinition.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'GraphDefinition.url',
            i,
          ),
        );
        i++;
      }
      // GraphDefinition.version (token)
      i = 0;
      for (final entry in resource.version?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'GraphDefinition.version',
            i,
          ),
        );
        i++;
      }
      // GraphDefinition.useContext (composite)
      i = 0;
      for (final entry
          in resource.useContext?.makeIterable<fhir.UsageContext>() ??
              <fhir.UsageContext>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'GraphDefinition.useContext',
            i,
          ),
        );
        i++;
      }
      // GraphDefinition.start (token)
      i = 0;
      for (final entry
          in resource.start?.makeIterable<fhir.FhirId>() ?? <fhir.FhirId>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'GraphDefinition.start',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.FhirGroup _:
      // Group.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Group.identifier',
            i,
          ),
        );
        i++;
      }
      // Group.name (string)
      i = 0;
      for (final entry in resource.name?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Group.name',
            i,
          ),
        );
        i++;
      }
      // Group.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Group.status',
            i,
          ),
        );
        i++;
      }
      // Group.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Group.url',
            i,
          ),
        );
        i++;
      }
      // Group.characteristic.code (token)
      i = 0;
      for (final entry in resource.characteristic
              ?.map<fhir.CodeableConcept?>((e) => e.code)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Group.characteristic.code',
            i,
          ),
        );
        i++;
      }
      // Group.code (token)
      i = 0;
      for (final entry in resource.code?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Group.code',
            i,
          ),
        );
        i++;
      }
      // Group.characteristic.exclude (token)
      i = 0;
      for (final entry in resource.characteristic
              ?.map<fhir.FhirBoolean?>((e) => e.exclude)
              .makeIterable<fhir.FhirBoolean>() ??
          <fhir.FhirBoolean>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Group.characteristic.exclude',
            i,
          ),
        );
        i++;
      }
      // Group.managingEntity (reference)
      i = 0;
      for (final entry
          in resource.managingEntity?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Group.managingEntity',
            i,
          ),
        );
        i++;
      }
      // Group.member.entity (reference)
      i = 0;
      for (final entry in resource.member
              ?.map<fhir.Reference?>((e) => e.entity)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Group.member.entity',
            i,
          ),
        );
        i++;
      }
      // Group.membership (token)
      i = 0;
      for (final entry
          in resource.membership.makeIterable<fhir.FhirCodeEnum>() ??
              <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Group.membership',
            i,
          ),
        );
        i++;
      }
      // Group.type (token)
      i = 0;
      for (final entry in resource.type?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Group.type',
            i,
          ),
        );
        i++;
      }
      // Group.characteristic (composite)
      i = 0;
      for (final entry in resource.characteristic
              ?.makeIterable<fhir.GroupCharacteristic>() ??
          <fhir.GroupCharacteristic>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Group.characteristic',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.GuidanceResponse _:
      // GuidanceResponse.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'GuidanceResponse.identifier',
            i,
          ),
        );
        i++;
      }
      // GuidanceResponse.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject?.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'GuidanceResponse.subject.where(resolve() is Patient)',
            i,
          ),
        );
        i++;
      }
      // GuidanceResponse.requestIdentifier (token)
      i = 0;
      for (final entry
          in resource.requestIdentifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'GuidanceResponse.requestIdentifier',
            i,
          ),
        );
        i++;
      }
      // GuidanceResponse.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'GuidanceResponse.status',
            i,
          ),
        );
        i++;
      }
      // GuidanceResponse.subject (reference)
      i = 0;
      for (final entry in resource.subject?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'GuidanceResponse.subject',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.HealthcareService _:
      // HealthcareService.active (token)
      i = 0;
      for (final entry in resource.active?.makeIterable<fhir.FhirBoolean>() ??
          <fhir.FhirBoolean>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'HealthcareService.active',
            i,
          ),
        );
        i++;
      }
      // HealthcareService.characteristic (token)
      i = 0;
      for (final entry
          in resource.characteristic?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'HealthcareService.characteristic',
            i,
          ),
        );
        i++;
      }
      // HealthcareService.communication (token)
      i = 0;
      for (final entry
          in resource.communication?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'HealthcareService.communication',
            i,
          ),
        );
        i++;
      }
      // HealthcareService.coverageArea (reference)
      i = 0;
      for (final entry
          in resource.coverageArea?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'HealthcareService.coverageArea',
            i,
          ),
        );
        i++;
      }
      // HealthcareService.eligibility.code (token)
      i = 0;
      for (final entry in resource.eligibility
              ?.map<fhir.CodeableConcept?>((e) => e.code)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'HealthcareService.eligibility.code',
            i,
          ),
        );
        i++;
      }
      // HealthcareService.endpoint (reference)
      i = 0;
      for (final entry in resource.endpoint?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'HealthcareService.endpoint',
            i,
          ),
        );
        i++;
      }
      // HealthcareService.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'HealthcareService.identifier',
            i,
          ),
        );
        i++;
      }
      // HealthcareService.location (reference)
      i = 0;
      for (final entry in resource.location?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'HealthcareService.location',
            i,
          ),
        );
        i++;
      }
      // HealthcareService.name (string)
      i = 0;
      for (final entry in resource.name?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'HealthcareService.name',
            i,
          ),
        );
        i++;
      }
      // HealthcareService.offeredIn (reference)
      i = 0;
      for (final entry in resource.offeredIn?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'HealthcareService.offeredIn',
            i,
          ),
        );
        i++;
      }
      // HealthcareService.providedBy (reference)
      i = 0;
      for (final entry in resource.providedBy?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'HealthcareService.providedBy',
            i,
          ),
        );
        i++;
      }
      // HealthcareService.program (token)
      i = 0;
      for (final entry
          in resource.program?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'HealthcareService.program',
            i,
          ),
        );
        i++;
      }
      // HealthcareService.category (token)
      i = 0;
      for (final entry
          in resource.category?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'HealthcareService.category',
            i,
          ),
        );
        i++;
      }
      // HealthcareService.type (token)
      i = 0;
      for (final entry in resource.type?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'HealthcareService.type',
            i,
          ),
        );
        i++;
      }
      // HealthcareService.specialty (token)
      i = 0;
      for (final entry
          in resource.specialty?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'HealthcareService.specialty',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.ImagingSelection _:
      // ImagingSelection.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImagingSelection.identifier',
            i,
          ),
        );
        i++;
      }
      // ImagingSelection.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject?.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImagingSelection.subject.where(resolve() is Patient)',
            i,
          ),
        );
        i++;
      }
      // ImagingSelection.code (token)
      i = 0;
      for (final entry in resource.code.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImagingSelection.code',
            i,
          ),
        );
        i++;
      }
      // ImagingSelection.basedOn (reference)
      i = 0;
      for (final entry in resource.basedOn?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImagingSelection.basedOn',
            i,
          ),
        );
        i++;
      }
      // ImagingSelection.bodySite.concept (token)
      i = 0;
      for (final entry in resource.bodySite
              ?.map<fhir.CodeableConcept?>((e) => e.concept)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImagingSelection.bodySite.concept',
            i,
          ),
        );
        i++;
      }
      // ImagingSelection.bodySite.reference (reference)
      i = 0;
      for (final entry in resource.bodySite
              ?.map<fhir.Reference?>((e) => e.reference)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImagingSelection.bodySite.reference',
            i,
          ),
        );
        i++;
      }
      // ImagingSelection.category (token)
      i = 0;
      for (final entry
          in resource.category?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImagingSelection.category',
            i,
          ),
        );
        i++;
      }
      // ImagingSelection.derivedFrom (reference)
      i = 0;
      for (final entry
          in resource.derivedFrom?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImagingSelection.derivedFrom',
            i,
          ),
        );
        i++;
      }
      // ImagingSelection.issued (date)
      i = 0;
      for (final entry in resource.issued?.makeIterable<fhir.FhirInstant>() ??
          <fhir.FhirInstant>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImagingSelection.issued',
            i,
          ),
        );
        i++;
      }
      // ImagingSelection.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImagingSelection.status',
            i,
          ),
        );
        i++;
      }
      // ImagingSelection.studyUid (token)
      i = 0;
      for (final entry in resource.studyUid?.makeIterable<fhir.FhirId>() ??
          <fhir.FhirId>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImagingSelection.studyUid',
            i,
          ),
        );
        i++;
      }
      // ImagingSelection.subject (reference)
      i = 0;
      for (final entry in resource.subject?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImagingSelection.subject',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.ImagingStudy _:
      // ImagingStudy.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImagingStudy.identifier',
            i,
          ),
        );
        i++;
      }
      // ImagingStudy.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImagingStudy.subject.where(resolve() is Patient)',
            i,
          ),
        );
        i++;
      }
      // ImagingStudy.encounter (reference)
      i = 0;
      for (final entry in resource.encounter?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImagingStudy.encounter',
            i,
          ),
        );
        i++;
      }
      // ImagingStudy.basedOn (reference)
      i = 0;
      for (final entry in resource.basedOn?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImagingStudy.basedOn',
            i,
          ),
        );
        i++;
      }
      // ImagingStudy.series.bodySite.concept (token)
      i = 0;
      for (final entry in resource.series
              ?.map<fhir.CodeableReference?>((e) => e.bodySite)
              .map<fhir.CodeableConcept?>((e) => e?.concept)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImagingStudy.series.bodySite.concept',
            i,
          ),
        );
        i++;
      }
      // ImagingStudy.series.bodySite.reference (reference)
      i = 0;
      for (final entry in resource.series
              ?.map<fhir.CodeableReference?>((e) => e.bodySite)
              .map<fhir.Reference?>((e) => e?.reference)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImagingStudy.series.bodySite.reference',
            i,
          ),
        );
        i++;
      }
      // ImagingStudy.series.instance.sopClass (uri)
      i = 0;
      for (final entry in resource.series
              ?.expand((e) => e.instance ?? <fhir.ImagingStudyInstance>[])
              .map<fhir.FhirOid?>((e) => e.sopClass)
              .makeIterable<fhir.FhirOid>() ??
          <fhir.FhirOid>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImagingStudy.series.instance.sopClass',
            i,
          ),
        );
        i++;
      }
      // ImagingStudy.endpoint (reference)
      i = 0;
      for (final entry in resource.endpoint?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImagingStudy.endpoint',
            i,
          ),
        );
        i++;
      }
      // ImagingStudy.series.endpoint (reference)
      i = 0;
      for (final entry in resource.series
              ?.expand((e) => e.endpoint ?? <fhir.Reference>[])
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImagingStudy.series.endpoint',
            i,
          ),
        );
        i++;
      }
      // ImagingStudy.series.instance.uid (token)
      i = 0;
      for (final entry in resource.series
              ?.expand((e) => e.instance ?? <fhir.ImagingStudyInstance>[])
              .map<fhir.FhirId?>((e) => e.uid)
              .makeIterable<fhir.FhirId>() ??
          <fhir.FhirId>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImagingStudy.series.instance.uid',
            i,
          ),
        );
        i++;
      }
      // ImagingStudy.series.modality (token)
      i = 0;
      for (final entry in resource.series
              ?.map<fhir.CodeableConcept?>((e) => e.modality)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImagingStudy.series.modality',
            i,
          ),
        );
        i++;
      }
      // ImagingStudy.series.performer.actor (reference)
      i = 0;
      for (final entry in resource.series
              ?.expand((e) => e.performer ?? <fhir.ImagingStudyPerformer>[])
              .map<fhir.Reference?>((e) => e.actor)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImagingStudy.series.performer.actor',
            i,
          ),
        );
        i++;
      }
      // ImagingStudy.reason.concept (token)
      i = 0;
      for (final entry in resource.reason
              ?.map<fhir.CodeableConcept?>((e) => e.concept)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImagingStudy.reason.concept',
            i,
          ),
        );
        i++;
      }
      // ImagingStudy.reason.reference (reference)
      i = 0;
      for (final entry in resource.reason
              ?.map<fhir.Reference?>((e) => e.reference)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImagingStudy.reason.reference',
            i,
          ),
        );
        i++;
      }
      // ImagingStudy.referrer (reference)
      i = 0;
      for (final entry in resource.referrer?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImagingStudy.referrer',
            i,
          ),
        );
        i++;
      }
      // ImagingStudy.series.uid (token)
      i = 0;
      for (final entry in resource.series
              ?.map<fhir.FhirId?>((e) => e.uid)
              .makeIterable<fhir.FhirId>() ??
          <fhir.FhirId>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImagingStudy.series.uid',
            i,
          ),
        );
        i++;
      }
      // ImagingStudy.started (date)
      i = 0;
      for (final entry in resource.started?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImagingStudy.started',
            i,
          ),
        );
        i++;
      }
      // ImagingStudy.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImagingStudy.status',
            i,
          ),
        );
        i++;
      }
      // ImagingStudy.subject (reference)
      i = 0;
      for (final entry in resource.subject.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImagingStudy.subject',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.Immunization _:
      // Immunization.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Immunization.identifier',
            i,
          ),
        );
        i++;
      }
      // Immunization.patient (reference)
      i = 0;
      for (final entry in resource.patient.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Immunization.patient',
            i,
          ),
        );
        i++;
      }
      // Immunization.encounter (reference)
      i = 0;
      for (final entry in resource.encounter?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Immunization.encounter',
            i,
          ),
        );
        i++;
      }
      // Immunization.location (reference)
      i = 0;
      for (final entry in resource.location?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Immunization.location',
            i,
          ),
        );
        i++;
      }
      // Immunization.lotNumber (string)
      i = 0;
      for (final entry in resource.lotNumber?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Immunization.lotNumber',
            i,
          ),
        );
        i++;
      }
      // Immunization.manufacturer.reference (reference)
      i = 0;
      for (final entry
          in resource.manufacturer?.reference?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Immunization.manufacturer.reference',
            i,
          ),
        );
        i++;
      }
      // Immunization.performer.actor (reference)
      i = 0;
      for (final entry in resource.performer
              ?.map<fhir.Reference?>((e) => e.actor)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Immunization.performer.actor',
            i,
          ),
        );
        i++;
      }
      // Immunization.reaction.manifestation.reference (reference)
      i = 0;
      for (final entry in resource.reaction
              ?.map<fhir.CodeableReference?>((e) => e.manifestation)
              .map<fhir.Reference?>((e) => e?.reference)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Immunization.reaction.manifestation.reference',
            i,
          ),
        );
        i++;
      }
      // Immunization.reaction.date (date)
      i = 0;
      for (final entry in resource.reaction
              ?.map<fhir.FhirDateTime?>((e) => e.date)
              .makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Immunization.reaction.date',
            i,
          ),
        );
        i++;
      }
      // Immunization.reason.concept (token)
      i = 0;
      for (final entry in resource.reason
              ?.map<fhir.CodeableConcept?>((e) => e.concept)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Immunization.reason.concept',
            i,
          ),
        );
        i++;
      }
      // Immunization.reason.reference (reference)
      i = 0;
      for (final entry in resource.reason
              ?.map<fhir.Reference?>((e) => e.reference)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Immunization.reason.reference',
            i,
          ),
        );
        i++;
      }
      // Immunization.protocolApplied.series (string)
      i = 0;
      for (final entry in resource.protocolApplied
              ?.map<fhir.FhirString?>((e) => e.series)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Immunization.protocolApplied.series',
            i,
          ),
        );
        i++;
      }
      // Immunization.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Immunization.status',
            i,
          ),
        );
        i++;
      }
      // Immunization.statusReason (token)
      i = 0;
      for (final entry
          in resource.statusReason?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Immunization.statusReason',
            i,
          ),
        );
        i++;
      }
      // Immunization.protocolApplied.targetDisease (token)
      i = 0;
      for (final entry in resource.protocolApplied
              ?.expand((e) => e.targetDisease ?? <fhir.CodeableConcept>[])
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Immunization.protocolApplied.targetDisease',
            i,
          ),
        );
        i++;
      }
      // Immunization.vaccineCode (token)
      i = 0;
      for (final entry
          in resource.vaccineCode.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Immunization.vaccineCode',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.ImmunizationEvaluation _:
      // ImmunizationEvaluation.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImmunizationEvaluation.identifier',
            i,
          ),
        );
        i++;
      }
      // ImmunizationEvaluation.patient (reference)
      i = 0;
      for (final entry in resource.patient.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImmunizationEvaluation.patient',
            i,
          ),
        );
        i++;
      }
      // ImmunizationEvaluation.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImmunizationEvaluation.date',
            i,
          ),
        );
        i++;
      }
      // ImmunizationEvaluation.doseStatus (token)
      i = 0;
      for (final entry
          in resource.doseStatus.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImmunizationEvaluation.doseStatus',
            i,
          ),
        );
        i++;
      }
      // ImmunizationEvaluation.immunizationEvent (reference)
      i = 0;
      for (final entry
          in resource.immunizationEvent.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImmunizationEvaluation.immunizationEvent',
            i,
          ),
        );
        i++;
      }
      // ImmunizationEvaluation.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImmunizationEvaluation.status',
            i,
          ),
        );
        i++;
      }
      // ImmunizationEvaluation.targetDisease (token)
      i = 0;
      for (final entry
          in resource.targetDisease.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImmunizationEvaluation.targetDisease',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.ImmunizationRecommendation _:
      // ImmunizationRecommendation.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImmunizationRecommendation.identifier',
            i,
          ),
        );
        i++;
      }
      // ImmunizationRecommendation.patient (reference)
      i = 0;
      for (final entry in resource.patient.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImmunizationRecommendation.patient',
            i,
          ),
        );
        i++;
      }
      // ImmunizationRecommendation.date (date)
      i = 0;
      for (final entry in resource.date.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImmunizationRecommendation.date',
            i,
          ),
        );
        i++;
      }
      // ImmunizationRecommendation.recommendation.supportingPatientInformation (reference)
      i = 0;
      for (final entry in resource.recommendation
              .expand(
                  (e) => e.supportingPatientInformation ?? <fhir.Reference>[])
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImmunizationRecommendation.recommendation.supportingPatientInformation',
            i,
          ),
        );
        i++;
      }
      // ImmunizationRecommendation.recommendation.forecastStatus (token)
      i = 0;
      for (final entry in resource.recommendation
              .map<fhir.CodeableConcept?>((e) => e.forecastStatus)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImmunizationRecommendation.recommendation.forecastStatus',
            i,
          ),
        );
        i++;
      }
      // ImmunizationRecommendation.recommendation.supportingImmunization (reference)
      i = 0;
      for (final entry in resource.recommendation
              .expand((e) => e.supportingImmunization ?? <fhir.Reference>[])
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImmunizationRecommendation.recommendation.supportingImmunization',
            i,
          ),
        );
        i++;
      }
      // ImmunizationRecommendation.recommendation.targetDisease (token)
      i = 0;
      for (final entry in resource.recommendation
              .expand((e) => e.targetDisease ?? <fhir.CodeableConcept>[])
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImmunizationRecommendation.recommendation.targetDisease',
            i,
          ),
        );
        i++;
      }
      // ImmunizationRecommendation.recommendation.vaccineCode (token)
      i = 0;
      for (final entry in resource.recommendation
              .expand((e) => e.vaccineCode ?? <fhir.CodeableConcept>[])
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImmunizationRecommendation.recommendation.vaccineCode',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.ImplementationGuide _:
      // ImplementationGuide.useContext.code (token)
      i = 0;
      for (final entry in resource.useContext
              ?.map<fhir.Coding?>((e) => e.code)
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImplementationGuide.useContext.code',
            i,
          ),
        );
        i++;
      }
      // ImplementationGuide.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImplementationGuide.date',
            i,
          ),
        );
        i++;
      }
      // ImplementationGuide.description (string)
      i = 0;
      for (final entry
          in resource.description?.makeIterable<fhir.FhirMarkdown>() ??
              <fhir.FhirMarkdown>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImplementationGuide.description',
            i,
          ),
        );
        i++;
      }
      // ImplementationGuide.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImplementationGuide.identifier',
            i,
          ),
        );
        i++;
      }
      // ImplementationGuide.jurisdiction (token)
      i = 0;
      for (final entry
          in resource.jurisdiction?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImplementationGuide.jurisdiction',
            i,
          ),
        );
        i++;
      }
      // ImplementationGuide.name (string)
      i = 0;
      for (final entry in resource.name.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImplementationGuide.name',
            i,
          ),
        );
        i++;
      }
      // ImplementationGuide.publisher (string)
      i = 0;
      for (final entry in resource.publisher?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImplementationGuide.publisher',
            i,
          ),
        );
        i++;
      }
      // ImplementationGuide.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImplementationGuide.status',
            i,
          ),
        );
        i++;
      }
      // ImplementationGuide.title (string)
      i = 0;
      for (final entry in resource.title?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImplementationGuide.title',
            i,
          ),
        );
        i++;
      }
      // ImplementationGuide.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImplementationGuide.url',
            i,
          ),
        );
        i++;
      }
      // ImplementationGuide.version (token)
      i = 0;
      for (final entry in resource.version?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImplementationGuide.version',
            i,
          ),
        );
        i++;
      }
      // ImplementationGuide.useContext (composite)
      i = 0;
      for (final entry
          in resource.useContext?.makeIterable<fhir.UsageContext>() ??
              <fhir.UsageContext>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImplementationGuide.useContext',
            i,
          ),
        );
        i++;
      }
      // ImplementationGuide.dependsOn.uri (reference)
      i = 0;
      for (final entry in resource.dependsOn
              ?.map<fhir.FhirCanonical?>((e) => e.uri)
              .makeIterable<fhir.FhirCanonical>() ??
          <fhir.FhirCanonical>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImplementationGuide.dependsOn.uri',
            i,
          ),
        );
        i++;
      }
      // ImplementationGuide.experimental (token)
      i = 0;
      for (final entry
          in resource.experimental?.makeIterable<fhir.FhirBoolean>() ??
              <fhir.FhirBoolean>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImplementationGuide.experimental',
            i,
          ),
        );
        i++;
      }
      // ImplementationGuide.global.profile (reference)
      i = 0;
      for (final entry in resource.global
              ?.map<fhir.FhirCanonical?>((e) => e.profile)
              .makeIterable<fhir.FhirCanonical>() ??
          <fhir.FhirCanonical>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImplementationGuide.global.profile',
            i,
          ),
        );
        i++;
      }
      // ImplementationGuide.definition.resource.reference (reference)
      i = 0;
      for (final entry in resource.definition?.resource
              ?.map<fhir.Reference?>((e) => e.reference)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ImplementationGuide.definition.resource.reference',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.Ingredient _:
      // Ingredient.for (reference)
      i = 0;
      for (final entry in resource.for_?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Ingredient.for',
            i,
          ),
        );
        i++;
      }
      // Ingredient.function (token)
      i = 0;
      for (final entry
          in resource.function_?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Ingredient.function',
            i,
          ),
        );
        i++;
      }
      // Ingredient.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Ingredient.identifier',
            i,
          ),
        );
        i++;
      }
      // Ingredient.manufacturer.manufacturer (reference)
      i = 0;
      for (final entry in resource.manufacturer
              ?.map<fhir.Reference?>((e) => e.manufacturer)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Ingredient.manufacturer.manufacturer',
            i,
          ),
        );
        i++;
      }
      // Ingredient.role (token)
      i = 0;
      for (final entry in resource.role.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Ingredient.role',
            i,
          ),
        );
        i++;
      }
      // Ingredient.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Ingredient.status',
            i,
          ),
        );
        i++;
      }
      // SKIPPED (unsupported FHIRPath): // Ingredient.substance.strength.concentration.ofType(Ratio).denominator (quantity)
      // SKIPPED (unsupported FHIRPath): i = 0;
      // SKIPPED (unsupported FHIRPath): for (final entry in resource.substance?.strength?.map<fhir.Ratio?>((e) => e?.concentrationRatio)?.map((e) => e?.denominator)?.makeIterable<fhir.X>() ?? <fhir.X>[]) {
      // SKIPPED (unsupported FHIRPath): searchParameterLists.quantityParams.addAll(
      // SKIPPED (unsupported FHIRPath): entry.toQuantitySearchParameter(
      // SKIPPED (unsupported FHIRPath): resourceType, id, lastUpdated, 'Ingredient.substance.strength.concentration.ofType(Ratio).denominator', i,
      // SKIPPED (unsupported FHIRPath): ),
      // SKIPPED (unsupported FHIRPath): );
      // SKIPPED (unsupported FHIRPath): i++;
      // SKIPPED (unsupported FHIRPath): }
      // SKIPPED (unsupported FHIRPath): // Ingredient.substance.strength.concentration.ofType(Ratio).numerator (quantity)
      // SKIPPED (unsupported FHIRPath): i = 0;
      // SKIPPED (unsupported FHIRPath): for (final entry in resource.substance?.strength?.map<fhir.Ratio?>((e) => e?.concentrationRatio)?.map((e) => e?.numerator)?.makeIterable<fhir.X>() ?? <fhir.X>[]) {
      // SKIPPED (unsupported FHIRPath): searchParameterLists.quantityParams.addAll(
      // SKIPPED (unsupported FHIRPath): entry.toQuantitySearchParameter(
      // SKIPPED (unsupported FHIRPath): resourceType, id, lastUpdated, 'Ingredient.substance.strength.concentration.ofType(Ratio).numerator', i,
      // SKIPPED (unsupported FHIRPath): ),
      // SKIPPED (unsupported FHIRPath): );
      // SKIPPED (unsupported FHIRPath): i++;
      // SKIPPED (unsupported FHIRPath): }
      // Ingredient.substance.strength.concentration.ofType(Quantity) (quantity)
      i = 0;
      for (final entry in resource.substance.strength
              ?.map<fhir.Quantity?>((e) => e.concentrationQuantity)
              .makeIterable<fhir.Quantity>() ??
          <fhir.Quantity>[]) {
        searchParameterLists.quantityParams.addAll(
          entry.toQuantitySearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Ingredient.substance.strength.concentration.ofType(Quantity)',
            i,
          ),
        );
        i++;
      }
      // SKIPPED (unsupported FHIRPath): // Ingredient.substance.strength.presentation.ofType(Ratio).denominator (quantity)
      // SKIPPED (unsupported FHIRPath): i = 0;
      // SKIPPED (unsupported FHIRPath): for (final entry in resource.substance?.strength?.map<fhir.Ratio?>((e) => e?.presentationRatio)?.map((e) => e?.denominator)?.makeIterable<fhir.X>() ?? <fhir.X>[]) {
      // SKIPPED (unsupported FHIRPath): searchParameterLists.quantityParams.addAll(
      // SKIPPED (unsupported FHIRPath): entry.toQuantitySearchParameter(
      // SKIPPED (unsupported FHIRPath): resourceType, id, lastUpdated, 'Ingredient.substance.strength.presentation.ofType(Ratio).denominator', i,
      // SKIPPED (unsupported FHIRPath): ),
      // SKIPPED (unsupported FHIRPath): );
      // SKIPPED (unsupported FHIRPath): i++;
      // SKIPPED (unsupported FHIRPath): }
      // SKIPPED (unsupported FHIRPath): // Ingredient.substance.strength.presentation.ofType(Ratio).numerator (quantity)
      // SKIPPED (unsupported FHIRPath): i = 0;
      // SKIPPED (unsupported FHIRPath): for (final entry in resource.substance?.strength?.map<fhir.Ratio?>((e) => e?.presentationRatio)?.map((e) => e?.numerator)?.makeIterable<fhir.X>() ?? <fhir.X>[]) {
      // SKIPPED (unsupported FHIRPath): searchParameterLists.quantityParams.addAll(
      // SKIPPED (unsupported FHIRPath): entry.toQuantitySearchParameter(
      // SKIPPED (unsupported FHIRPath): resourceType, id, lastUpdated, 'Ingredient.substance.strength.presentation.ofType(Ratio).numerator', i,
      // SKIPPED (unsupported FHIRPath): ),
      // SKIPPED (unsupported FHIRPath): );
      // SKIPPED (unsupported FHIRPath): i++;
      // SKIPPED (unsupported FHIRPath): }
      // Ingredient.substance.strength.presentation.ofType(Quantity) (quantity)
      i = 0;
      for (final entry in resource.substance.strength
              ?.map<fhir.Quantity?>((e) => e.presentationQuantity)
              .makeIterable<fhir.Quantity>() ??
          <fhir.Quantity>[]) {
        searchParameterLists.quantityParams.addAll(
          entry.toQuantitySearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Ingredient.substance.strength.presentation.ofType(Quantity)',
            i,
          ),
        );
        i++;
      }
      // Ingredient.substance.code.reference (reference)
      i = 0;
      for (final entry in resource.substance.code.reference
              ?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Ingredient.substance.code.reference',
            i,
          ),
        );
        i++;
      }
      // Ingredient.substance.code.concept (token)
      i = 0;
      for (final entry in resource.substance.code.concept
              ?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Ingredient.substance.code.concept',
            i,
          ),
        );
        i++;
      }
      // Ingredient.substance.strength.concentration.ofType(Ratio) (composite)
      i = 0;
      for (final entry in resource.substance.strength
              ?.map<fhir.Ratio?>((e) => e.concentrationRatio)
              .makeIterable<fhir.Ratio>() ??
          <fhir.Ratio>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Ingredient.substance.strength.concentration.ofType(Ratio)',
            i,
          ),
        );
        i++;
      }
      // Ingredient.substance.strength.presentation.ofType(Ratio) (composite)
      i = 0;
      for (final entry in resource.substance.strength
              ?.map<fhir.Ratio?>((e) => e.presentationRatio)
              .makeIterable<fhir.Ratio>() ??
          <fhir.Ratio>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Ingredient.substance.strength.presentation.ofType(Ratio)',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.InsurancePlan _:
      // InsurancePlan.coverageArea (reference)
      i = 0;
      for (final entry
          in resource.coverageArea?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'InsurancePlan.coverageArea',
            i,
          ),
        );
        i++;
      }
      // InsurancePlan.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'InsurancePlan.identifier',
            i,
          ),
        );
        i++;
      }
      // InsurancePlan.network (reference)
      i = 0;
      for (final entry in resource.network?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'InsurancePlan.network',
            i,
          ),
        );
        i++;
      }
      // InsurancePlan.product (reference)
      i = 0;
      for (final entry in resource.product?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'InsurancePlan.product',
            i,
          ),
        );
        i++;
      }
      // InsurancePlan.type (token)
      i = 0;
      for (final entry in resource.type?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'InsurancePlan.type',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.InsuranceProduct _:
      // InsuranceProduct.administeredBy (reference)
      i = 0;
      for (final entry
          in resource.administeredBy?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'InsuranceProduct.administeredBy',
            i,
          ),
        );
        i++;
      }
      // InsuranceProduct.contact.address (string)
      i = 0;
      for (final entry in resource.contact
              ?.map<fhir.Address?>((e) => e.address)
              .makeIterable<fhir.Address>() ??
          <fhir.Address>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'InsuranceProduct.contact.address',
            i,
          ),
        );
        i++;
      }
      // InsuranceProduct.contact.address.city (string)
      i = 0;
      for (final entry in resource.contact
              ?.map<fhir.Address?>((e) => e.address)
              .map<fhir.FhirString?>((e) => e?.city)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'InsuranceProduct.contact.address.city',
            i,
          ),
        );
        i++;
      }
      // InsuranceProduct.contact.address.country (string)
      i = 0;
      for (final entry in resource.contact
              ?.map<fhir.Address?>((e) => e.address)
              .map<fhir.FhirString?>((e) => e?.country)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'InsuranceProduct.contact.address.country',
            i,
          ),
        );
        i++;
      }
      // InsuranceProduct.contact.address.postalCode (string)
      i = 0;
      for (final entry in resource.contact
              ?.map<fhir.Address?>((e) => e.address)
              .map<fhir.FhirString?>((e) => e?.postalCode)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'InsuranceProduct.contact.address.postalCode',
            i,
          ),
        );
        i++;
      }
      // InsuranceProduct.contact.address.state (string)
      i = 0;
      for (final entry in resource.contact
              ?.map<fhir.Address?>((e) => e.address)
              .map<fhir.FhirString?>((e) => e?.state)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'InsuranceProduct.contact.address.state',
            i,
          ),
        );
        i++;
      }
      // InsuranceProduct.contact.address.use (token)
      i = 0;
      for (final entry in resource.contact
              ?.map<fhir.Address?>((e) => e.address)
              .map<fhir.FhirCodeEnum?>((e) => e?.use)
              .makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'InsuranceProduct.contact.address.use',
            i,
          ),
        );
        i++;
      }
      // InsuranceProduct.endpoint (reference)
      i = 0;
      for (final entry in resource.endpoint?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'InsuranceProduct.endpoint',
            i,
          ),
        );
        i++;
      }
      // InsuranceProduct.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'InsuranceProduct.identifier',
            i,
          ),
        );
        i++;
      }
      // InsuranceProduct.name (string)
      i = 0;
      for (final entry in resource.name?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'InsuranceProduct.name',
            i,
          ),
        );
        i++;
      }
      // InsuranceProduct.alias (string)
      i = 0;
      for (final entry in resource.alias?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'InsuranceProduct.alias',
            i,
          ),
        );
        i++;
      }
      // InsuranceProduct.ownedBy (reference)
      i = 0;
      for (final entry in resource.ownedBy?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'InsuranceProduct.ownedBy',
            i,
          ),
        );
        i++;
      }
      // InsuranceProduct.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'InsuranceProduct.status',
            i,
          ),
        );
        i++;
      }
      // InsuranceProduct.type (token)
      i = 0;
      for (final entry in resource.type?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'InsuranceProduct.type',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.InventoryItem _:
      // InventoryItem.code (token)
      i = 0;
      for (final entry in resource.code?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'InventoryItem.code',
            i,
          ),
        );
        i++;
      }
      // InventoryItem.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'InventoryItem.identifier',
            i,
          ),
        );
        i++;
      }
      // InventoryItem.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'InventoryItem.status',
            i,
          ),
        );
        i++;
      }
      // InventoryItem.instance.subject (reference)
      i = 0;
      for (final entry
          in resource.instance?.subject?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'InventoryItem.instance.subject',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.InventoryReport _:
      // InventoryReport.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'InventoryReport.identifier',
            i,
          ),
        );
        i++;
      }
      // InventoryReport.inventoryListing.item.item.concept (token)
      i = 0;
      for (final entry in resource.inventoryListing
              ?.expand((e) => e.item ?? <fhir.InventoryReportItem>[])
              .map<fhir.CodeableReference?>((e) => e.item)
              .map<fhir.CodeableConcept?>((e) => e?.concept)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'InventoryReport.inventoryListing.item.item.concept',
            i,
          ),
        );
        i++;
      }
      // InventoryReport.inventoryListing.item.item.reference (reference)
      i = 0;
      for (final entry in resource.inventoryListing
              ?.expand((e) => e.item ?? <fhir.InventoryReportItem>[])
              .map<fhir.CodeableReference?>((e) => e.item)
              .map<fhir.Reference?>((e) => e?.reference)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'InventoryReport.inventoryListing.item.item.reference',
            i,
          ),
        );
        i++;
      }
      // InventoryReport.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'InventoryReport.status',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.Invoice _:
      // Invoice.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Invoice.identifier',
            i,
          ),
        );
        i++;
      }
      // Invoice.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject?.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Invoice.subject.where(resolve() is Patient)',
            i,
          ),
        );
        i++;
      }
      // Invoice.type (token)
      i = 0;
      for (final entry in resource.type?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Invoice.type',
            i,
          ),
        );
        i++;
      }
      // Invoice.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Invoice.date',
            i,
          ),
        );
        i++;
      }
      // Invoice.account (reference)
      i = 0;
      for (final entry in resource.account?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Invoice.account',
            i,
          ),
        );
        i++;
      }
      // Invoice.issuer (reference)
      i = 0;
      for (final entry in resource.issuer?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Invoice.issuer',
            i,
          ),
        );
        i++;
      }
      // Invoice.participant.actor (reference)
      i = 0;
      for (final entry in resource.participant
              ?.map<fhir.Reference?>((e) => e.actor)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Invoice.participant.actor',
            i,
          ),
        );
        i++;
      }
      // Invoice.participant.role (token)
      i = 0;
      for (final entry in resource.participant
              ?.map<fhir.CodeableConcept?>((e) => e.role)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Invoice.participant.role',
            i,
          ),
        );
        i++;
      }
      // Invoice.recipient (reference)
      i = 0;
      for (final entry in resource.recipient?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Invoice.recipient',
            i,
          ),
        );
        i++;
      }
      // Invoice.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Invoice.status',
            i,
          ),
        );
        i++;
      }
      // Invoice.subject (reference)
      i = 0;
      for (final entry in resource.subject?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Invoice.subject',
            i,
          ),
        );
        i++;
      }
      // Invoice.totalGross (quantity)
      i = 0;
      for (final entry in resource.totalGross?.makeIterable<fhir.Money>() ??
          <fhir.Money>[]) {
        searchParameterLists.quantityParams.addAll(
          entry.toQuantitySearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Invoice.totalGross',
            i,
          ),
        );
        i++;
      }
      // Invoice.totalNet (quantity)
      i = 0;
      for (final entry
          in resource.totalNet?.makeIterable<fhir.Money>() ?? <fhir.Money>[]) {
        searchParameterLists.quantityParams.addAll(
          entry.toQuantitySearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Invoice.totalNet',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.Library _:
      // Library.relatedArtifact.where(type='composed-of').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'composed-of')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "Library.relatedArtifact.where(type='composed-of').resource",
            i,
          ),
        );
        i++;
      }
      // Library.useContext.code (token)
      i = 0;
      for (final entry in resource.useContext
              ?.map<fhir.Coding?>((e) => e.code)
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Library.useContext.code',
            i,
          ),
        );
        i++;
      }
      // Library.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Library.date',
            i,
          ),
        );
        i++;
      }
      // Library.relatedArtifact.where(type='depends-on').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'depends-on')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "Library.relatedArtifact.where(type='depends-on').resource",
            i,
          ),
        );
        i++;
      }
      // Library.relatedArtifact.where(type='derived-from').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'derived-from')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "Library.relatedArtifact.where(type='derived-from').resource",
            i,
          ),
        );
        i++;
      }
      // Library.description (string)
      i = 0;
      for (final entry
          in resource.description?.makeIterable<fhir.FhirMarkdown>() ??
              <fhir.FhirMarkdown>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Library.description',
            i,
          ),
        );
        i++;
      }
      // Library.effectivePeriod (date)
      i = 0;
      for (final entry
          in resource.effectivePeriod?.makeIterable<fhir.Period>() ??
              <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Library.effectivePeriod',
            i,
          ),
        );
        i++;
      }
      // Library.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Library.identifier',
            i,
          ),
        );
        i++;
      }
      // Library.jurisdiction (token)
      i = 0;
      for (final entry
          in resource.jurisdiction?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Library.jurisdiction',
            i,
          ),
        );
        i++;
      }
      // Library.name (string)
      i = 0;
      for (final entry in resource.name?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Library.name',
            i,
          ),
        );
        i++;
      }
      // Library.relatedArtifact.where(type='predecessor').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'predecessor')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "Library.relatedArtifact.where(type='predecessor').resource",
            i,
          ),
        );
        i++;
      }
      // Library.publisher (string)
      i = 0;
      for (final entry in resource.publisher?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Library.publisher',
            i,
          ),
        );
        i++;
      }
      // Library.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Library.status',
            i,
          ),
        );
        i++;
      }
      // Library.relatedArtifact.where(type='successor').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'successor')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "Library.relatedArtifact.where(type='successor').resource",
            i,
          ),
        );
        i++;
      }
      // Library.title (string)
      i = 0;
      for (final entry in resource.title?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Library.title',
            i,
          ),
        );
        i++;
      }
      // Library.topic (token)
      i = 0;
      for (final entry
          in resource.topic?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Library.topic',
            i,
          ),
        );
        i++;
      }
      // Library.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Library.url',
            i,
          ),
        );
        i++;
      }
      // Library.version (token)
      i = 0;
      for (final entry in resource.version?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Library.version',
            i,
          ),
        );
        i++;
      }
      // Library.useContext (composite)
      i = 0;
      for (final entry
          in resource.useContext?.makeIterable<fhir.UsageContext>() ??
              <fhir.UsageContext>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Library.useContext',
            i,
          ),
        );
        i++;
      }
      // Library.content.contentType (token)
      i = 0;
      for (final entry in resource.content
              ?.map<fhir.FhirCode?>((e) => e.contentType)
              .makeIterable<fhir.FhirCode>() ??
          <fhir.FhirCode>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Library.content.contentType',
            i,
          ),
        );
        i++;
      }
      // SKIPPED (unsupported FHIRPath): // Library.subject as canonical (reference)
      // SKIPPED (unsupported FHIRPath): i = 0;
      // SKIPPED (unsupported FHIRPath): for (final entry in resource.subject as canonical ?? <fhir.FhirBase>[]) {
      // SKIPPED (unsupported FHIRPath): searchParameterLists.referenceParams.addAll(
      // SKIPPED (unsupported FHIRPath): entry.toReferenceSearchParameter(
      // SKIPPED (unsupported FHIRPath): resourceType, id, lastUpdated, 'Library.subject as canonical', i,
      // SKIPPED (unsupported FHIRPath): ),
      // SKIPPED (unsupported FHIRPath): );
      // SKIPPED (unsupported FHIRPath): i++;
      // SKIPPED (unsupported FHIRPath): }
      // SKIPPED (unsupported FHIRPath): // Library.subject as CodeableConcept (token)
      // SKIPPED (unsupported FHIRPath): i = 0;
      // SKIPPED (unsupported FHIRPath): for (final entry in resource.subject as CodeableConcept ?? <fhir.FhirBase>[]) {
      // SKIPPED (unsupported FHIRPath): searchParameterLists.tokenParams.addAll(
      // SKIPPED (unsupported FHIRPath): entry.toTokenSearchParameter(
      // SKIPPED (unsupported FHIRPath): resourceType, id, lastUpdated, 'Library.subject as CodeableConcept', i,
      // SKIPPED (unsupported FHIRPath): ),
      // SKIPPED (unsupported FHIRPath): );
      // SKIPPED (unsupported FHIRPath): i++;
      // SKIPPED (unsupported FHIRPath): }
      // SKIPPED (unsupported FHIRPath): // Library.subject as Reference (reference)
      // SKIPPED (unsupported FHIRPath): i = 0;
      // SKIPPED (unsupported FHIRPath): for (final entry in resource.subject as Reference ?? <fhir.FhirBase>[]) {
      // SKIPPED (unsupported FHIRPath): searchParameterLists.referenceParams.addAll(
      // SKIPPED (unsupported FHIRPath): entry.toReferenceSearchParameter(
      // SKIPPED (unsupported FHIRPath): resourceType, id, lastUpdated, 'Library.subject as Reference', i,
      // SKIPPED (unsupported FHIRPath): ),
      // SKIPPED (unsupported FHIRPath): );
      // SKIPPED (unsupported FHIRPath): i++;
      // SKIPPED (unsupported FHIRPath): }
      // Library.type (token)
      i = 0;
      for (final entry in resource.type.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Library.type',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.Linkage _:
      // Linkage.author (reference)
      i = 0;
      for (final entry in resource.author?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Linkage.author',
            i,
          ),
        );
        i++;
      }
      // Linkage.item.resource (reference)
      i = 0;
      for (final entry in resource.item
              .map<fhir.Reference?>((e) => e.resource)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Linkage.item.resource',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.FhirList _:
      // List.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'List.identifier',
            i,
          ),
        );
        i++;
      }
      // List.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry in resource.subject?.where((e) {
            final ref = e.reference?.toString().split('/') ?? [];
            return ref.length > 1 && ref[ref.length - 2] == 'Patient';
          }).makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'List.subject.where(resolve() is Patient)',
            i,
          ),
        );
        i++;
      }
      // List.code (token)
      i = 0;
      for (final entry in resource.code?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'List.code',
            i,
          ),
        );
        i++;
      }
      // List.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'List.date',
            i,
          ),
        );
        i++;
      }
      // List.encounter (reference)
      i = 0;
      for (final entry in resource.encounter?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'List.encounter',
            i,
          ),
        );
        i++;
      }
      // List.emptyReason (token)
      i = 0;
      for (final entry
          in resource.emptyReason?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'List.emptyReason',
            i,
          ),
        );
        i++;
      }
      // List.entry.item (reference)
      i = 0;
      for (final entry in resource.entry
              ?.map<fhir.Reference?>((e) => e.item)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'List.entry.item',
            i,
          ),
        );
        i++;
      }
      // List.note.text (string)
      i = 0;
      for (final entry in resource.note
              ?.map<fhir.FhirMarkdown?>((e) => e.text)
              .makeIterable<fhir.FhirMarkdown>() ??
          <fhir.FhirMarkdown>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'List.note.text',
            i,
          ),
        );
        i++;
      }
      // List.source (reference)
      i = 0;
      for (final entry in resource.source?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'List.source',
            i,
          ),
        );
        i++;
      }
      // List.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'List.status',
            i,
          ),
        );
        i++;
      }
      // List.subject (reference)
      i = 0;
      for (final entry in resource.subject?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'List.subject',
            i,
          ),
        );
        i++;
      }
      // List.title (string)
      i = 0;
      for (final entry in resource.title?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'List.title',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.Location _:
      // Location.address (string)
      i = 0;
      for (final entry in resource.address?.makeIterable<fhir.Address>() ??
          <fhir.Address>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Location.address',
            i,
          ),
        );
        i++;
      }
      // Location.address.city (string)
      i = 0;
      for (final entry
          in resource.address?.city?.makeIterable<fhir.FhirString>() ??
              <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Location.address.city',
            i,
          ),
        );
        i++;
      }
      // Location.address.country (string)
      i = 0;
      for (final entry
          in resource.address?.country?.makeIterable<fhir.FhirString>() ??
              <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Location.address.country',
            i,
          ),
        );
        i++;
      }
      // Location.address.postalCode (string)
      i = 0;
      for (final entry
          in resource.address?.postalCode?.makeIterable<fhir.FhirString>() ??
              <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Location.address.postalCode',
            i,
          ),
        );
        i++;
      }
      // Location.address.state (string)
      i = 0;
      for (final entry
          in resource.address?.state?.makeIterable<fhir.FhirString>() ??
              <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Location.address.state',
            i,
          ),
        );
        i++;
      }
      // Location.address.use (token)
      i = 0;
      for (final entry
          in resource.address?.use?.makeIterable<fhir.FhirCodeEnum>() ??
              <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Location.address.use',
            i,
          ),
        );
        i++;
      }
      // Location.form (token)
      i = 0;
      for (final entry in resource.form?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Location.form',
            i,
          ),
        );
        i++;
      }
      // SKIPPED (unsupported FHIRPath): // Location.extension('http://hl7.org/fhir/StructureDefinition/location-boundary-geojson').value (special)
      // SKIPPED (unsupported FHIRPath): i = 0;
      // SKIPPED (unsupported FHIRPath): for (final entry in resource.extension('http://hl7?.org/fhir/StructureDefinition/location-boundary-geojson')?.value ?? <fhir.FhirBase>[]) {
      // SKIPPED (unsupported FHIRPath): searchParameterLists.specialParams.addAll(
      // SKIPPED (unsupported FHIRPath): entry.toSpecialSearchParameter(
      // SKIPPED (unsupported FHIRPath): resourceType, id, lastUpdated, "Location.extension('http://hl7.org/fhir/StructureDefinition/location-boundary-geojson').value", i,
      // SKIPPED (unsupported FHIRPath): ),
      // SKIPPED (unsupported FHIRPath): );
      // SKIPPED (unsupported FHIRPath): i++;
      // SKIPPED (unsupported FHIRPath): }
      // Location.endpoint (reference)
      i = 0;
      for (final entry in resource.endpoint?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Location.endpoint',
            i,
          ),
        );
        i++;
      }
      // Location.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Location.identifier',
            i,
          ),
        );
        i++;
      }
      // Location.mode (token)
      i = 0;
      for (final entry in resource.mode?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Location.mode',
            i,
          ),
        );
        i++;
      }
      // Location.name (string)
      i = 0;
      for (final entry in resource.name?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Location.name',
            i,
          ),
        );
        i++;
      }
      // Location.alias (string)
      i = 0;
      for (final entry in resource.alias?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Location.alias',
            i,
          ),
        );
        i++;
      }
      // Location.position (special)
      i = 0;
      for (final entry
          in resource.position?.makeIterable<fhir.LocationPosition>() ??
              <fhir.LocationPosition>[]) {
        searchParameterLists.specialParams.addAll(
          entry.toSpecialSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Location.position',
            i,
          ),
        );
        i++;
      }
      // Location.operationalStatus (token)
      i = 0;
      for (final entry
          in resource.operationalStatus?.makeIterable<fhir.Coding>() ??
              <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Location.operationalStatus',
            i,
          ),
        );
        i++;
      }
      // Location.managingOrganization (reference)
      i = 0;
      for (final entry
          in resource.managingOrganization?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Location.managingOrganization',
            i,
          ),
        );
        i++;
      }
      // Location.partOf (reference)
      i = 0;
      for (final entry in resource.partOf?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Location.partOf',
            i,
          ),
        );
        i++;
      }
      // Location.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Location.status',
            i,
          ),
        );
        i++;
      }
      // Location.type (token)
      i = 0;
      for (final entry in resource.type?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Location.type',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.ManufacturedItemDefinition _:
      // ManufacturedItemDefinition.manufacturedDoseForm (token)
      i = 0;
      for (final entry in resource.manufacturedDoseForm
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ManufacturedItemDefinition.manufacturedDoseForm',
            i,
          ),
        );
        i++;
      }
      // ManufacturedItemDefinition.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ManufacturedItemDefinition.identifier',
            i,
          ),
        );
        i++;
      }
      // ManufacturedItemDefinition.ingredient (token)
      i = 0;
      for (final entry
          in resource.ingredient?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ManufacturedItemDefinition.ingredient',
            i,
          ),
        );
        i++;
      }
      // ManufacturedItemDefinition.name (token)
      i = 0;
      for (final entry in resource.name?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ManufacturedItemDefinition.name',
            i,
          ),
        );
        i++;
      }
      // ManufacturedItemDefinition.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ManufacturedItemDefinition.status',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.Measure _:
      // Measure.relatedArtifact.where(type='composed-of').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'composed-of')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "Measure.relatedArtifact.where(type='composed-of').resource",
            i,
          ),
        );
        i++;
      }
      // Measure.useContext.code (token)
      i = 0;
      for (final entry in resource.useContext
              ?.map<fhir.Coding?>((e) => e.code)
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Measure.useContext.code',
            i,
          ),
        );
        i++;
      }
      // Measure.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Measure.date',
            i,
          ),
        );
        i++;
      }
      // Measure.relatedArtifact.where(type='depends-on').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'depends-on')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "Measure.relatedArtifact.where(type='depends-on').resource",
            i,
          ),
        );
        i++;
      }
      // Measure.library (reference)
      i = 0;
      for (final entry
          in resource.library_?.makeIterable<fhir.FhirCanonical>() ??
              <fhir.FhirCanonical>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Measure.library',
            i,
          ),
        );
        i++;
      }
      // Measure.relatedArtifact.where(type='derived-from').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'derived-from')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "Measure.relatedArtifact.where(type='derived-from').resource",
            i,
          ),
        );
        i++;
      }
      // Measure.description (string)
      i = 0;
      for (final entry
          in resource.description?.makeIterable<fhir.FhirMarkdown>() ??
              <fhir.FhirMarkdown>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Measure.description',
            i,
          ),
        );
        i++;
      }
      // Measure.effectivePeriod (date)
      i = 0;
      for (final entry
          in resource.effectivePeriod?.makeIterable<fhir.Period>() ??
              <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Measure.effectivePeriod',
            i,
          ),
        );
        i++;
      }
      // Measure.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Measure.identifier',
            i,
          ),
        );
        i++;
      }
      // Measure.jurisdiction (token)
      i = 0;
      for (final entry
          in resource.jurisdiction?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Measure.jurisdiction',
            i,
          ),
        );
        i++;
      }
      // Measure.name (string)
      i = 0;
      for (final entry in resource.name?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Measure.name',
            i,
          ),
        );
        i++;
      }
      // Measure.relatedArtifact.where(type='predecessor').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'predecessor')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "Measure.relatedArtifact.where(type='predecessor').resource",
            i,
          ),
        );
        i++;
      }
      // Measure.publisher (string)
      i = 0;
      for (final entry in resource.publisher?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Measure.publisher',
            i,
          ),
        );
        i++;
      }
      // Measure.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Measure.status',
            i,
          ),
        );
        i++;
      }
      // Measure.relatedArtifact.where(type='successor').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'successor')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "Measure.relatedArtifact.where(type='successor').resource",
            i,
          ),
        );
        i++;
      }
      // Measure.title (string)
      i = 0;
      for (final entry in resource.title?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Measure.title',
            i,
          ),
        );
        i++;
      }
      // Measure.topic (token)
      i = 0;
      for (final entry
          in resource.topic?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Measure.topic',
            i,
          ),
        );
        i++;
      }
      // Measure.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Measure.url',
            i,
          ),
        );
        i++;
      }
      // Measure.version (token)
      i = 0;
      for (final entry in resource.version?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Measure.version',
            i,
          ),
        );
        i++;
      }
      // Measure.useContext (composite)
      i = 0;
      for (final entry
          in resource.useContext?.makeIterable<fhir.UsageContext>() ??
              <fhir.UsageContext>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Measure.useContext',
            i,
          ),
        );
        i++;
      }
      // SKIPPED (unsupported FHIRPath): // Measure.subject as canonical (reference)
      // SKIPPED (unsupported FHIRPath): i = 0;
      // SKIPPED (unsupported FHIRPath): for (final entry in resource.subject as canonical ?? <fhir.FhirBase>[]) {
      // SKIPPED (unsupported FHIRPath): searchParameterLists.referenceParams.addAll(
      // SKIPPED (unsupported FHIRPath): entry.toReferenceSearchParameter(
      // SKIPPED (unsupported FHIRPath): resourceType, id, lastUpdated, 'Measure.subject as canonical', i,
      // SKIPPED (unsupported FHIRPath): ),
      // SKIPPED (unsupported FHIRPath): );
      // SKIPPED (unsupported FHIRPath): i++;
      // SKIPPED (unsupported FHIRPath): }
      // SKIPPED (unsupported FHIRPath): // Measure.subject as CodeableConcept (token)
      // SKIPPED (unsupported FHIRPath): i = 0;
      // SKIPPED (unsupported FHIRPath): for (final entry in resource.subject as CodeableConcept ?? <fhir.FhirBase>[]) {
      // SKIPPED (unsupported FHIRPath): searchParameterLists.tokenParams.addAll(
      // SKIPPED (unsupported FHIRPath): entry.toTokenSearchParameter(
      // SKIPPED (unsupported FHIRPath): resourceType, id, lastUpdated, 'Measure.subject as CodeableConcept', i,
      // SKIPPED (unsupported FHIRPath): ),
      // SKIPPED (unsupported FHIRPath): );
      // SKIPPED (unsupported FHIRPath): i++;
      // SKIPPED (unsupported FHIRPath): }
      // SKIPPED (unsupported FHIRPath): // Measure.subject as Reference (reference)
      // SKIPPED (unsupported FHIRPath): i = 0;
      // SKIPPED (unsupported FHIRPath): for (final entry in resource.subject as Reference ?? <fhir.FhirBase>[]) {
      // SKIPPED (unsupported FHIRPath): searchParameterLists.referenceParams.addAll(
      // SKIPPED (unsupported FHIRPath): entry.toReferenceSearchParameter(
      // SKIPPED (unsupported FHIRPath): resourceType, id, lastUpdated, 'Measure.subject as Reference', i,
      // SKIPPED (unsupported FHIRPath): ),
      // SKIPPED (unsupported FHIRPath): );
      // SKIPPED (unsupported FHIRPath): i++;
      // SKIPPED (unsupported FHIRPath): }
      break;
    case fhir.MeasureReport _:
      // MeasureReport.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MeasureReport.identifier',
            i,
          ),
        );
        i++;
      }
      // MeasureReport.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject?.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MeasureReport.subject.where(resolve() is Patient)',
            i,
          ),
        );
        i++;
      }
      // MeasureReport.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MeasureReport.date',
            i,
          ),
        );
        i++;
      }
      // MeasureReport.evaluatedResource (reference)
      i = 0;
      for (final entry
          in resource.evaluatedResource?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MeasureReport.evaluatedResource',
            i,
          ),
        );
        i++;
      }
      // MeasureReport.location (reference)
      i = 0;
      for (final entry in resource.location?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MeasureReport.location',
            i,
          ),
        );
        i++;
      }
      // MeasureReport.measure (reference)
      i = 0;
      for (final entry
          in resource.measure?.makeIterable<fhir.FhirCanonical>() ??
              <fhir.FhirCanonical>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MeasureReport.measure',
            i,
          ),
        );
        i++;
      }
      // MeasureReport.period (date)
      i = 0;
      for (final entry
          in resource.period.makeIterable<fhir.Period>() ?? <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MeasureReport.period',
            i,
          ),
        );
        i++;
      }
      // MeasureReport.reporter (reference)
      i = 0;
      for (final entry in resource.reporter?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MeasureReport.reporter',
            i,
          ),
        );
        i++;
      }
      // MeasureReport.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MeasureReport.status',
            i,
          ),
        );
        i++;
      }
      // MeasureReport.subject (reference)
      i = 0;
      for (final entry in resource.subject?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MeasureReport.subject',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.Medication _:
      // Medication.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Medication.identifier',
            i,
          ),
        );
        i++;
      }
      // Medication.code (token)
      i = 0;
      for (final entry in resource.code?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Medication.code',
            i,
          ),
        );
        i++;
      }
      // Medication.batch.expirationDate (date)
      i = 0;
      for (final entry in resource.batch?.expirationDate
              ?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Medication.batch.expirationDate',
            i,
          ),
        );
        i++;
      }
      // Medication.doseForm (token)
      i = 0;
      for (final entry
          in resource.doseForm?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Medication.doseForm',
            i,
          ),
        );
        i++;
      }
      // Medication.ingredient.item.reference (reference)
      i = 0;
      for (final entry in resource.ingredient
              ?.map<fhir.CodeableReference?>((e) => e.item)
              .map<fhir.Reference?>((e) => e?.reference)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Medication.ingredient.item.reference',
            i,
          ),
        );
        i++;
      }
      // Medication.ingredient.item.concept (token)
      i = 0;
      for (final entry in resource.ingredient
              ?.map<fhir.CodeableReference?>((e) => e.item)
              .map<fhir.CodeableConcept?>((e) => e?.concept)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Medication.ingredient.item.concept',
            i,
          ),
        );
        i++;
      }
      // Medication.batch.lotNumber (token)
      i = 0;
      for (final entry
          in resource.batch?.lotNumber?.makeIterable<fhir.FhirString>() ??
              <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Medication.batch.lotNumber',
            i,
          ),
        );
        i++;
      }
      // Medication.marketingAuthorizationHolder (reference)
      i = 0;
      for (final entry in resource.marketingAuthorizationHolder
              ?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Medication.marketingAuthorizationHolder',
            i,
          ),
        );
        i++;
      }
      // Medication.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Medication.status',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.MedicationAdministration _:
      // MedicationAdministration.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationAdministration.identifier',
            i,
          ),
        );
        i++;
      }
      // MedicationAdministration.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationAdministration.subject.where(resolve() is Patient)',
            i,
          ),
        );
        i++;
      }
      // MedicationAdministration.medication.concept (token)
      i = 0;
      for (final entry in resource.medication.concept
              ?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationAdministration.medication.concept',
            i,
          ),
        );
        i++;
      }
      // MedicationAdministration.occurrence.ofType(dateTime) (date)
      i = 0;
      for (final entry
          in resource.occurrenceDateTime?.makeIterable<fhir.FhirDateTime>() ??
              <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationAdministration.occurrence.ofType(dateTime)',
            i,
          ),
        );
        i++;
      }
      // MedicationAdministration.occurrence.ofType(Period) (date)
      i = 0;
      for (final entry
          in resource.occurrencePeriod?.makeIterable<fhir.Period>() ??
              <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationAdministration.occurrence.ofType(Period)',
            i,
          ),
        );
        i++;
      }
      // MedicationAdministration.device.reference (reference)
      i = 0;
      for (final entry in resource.device
              ?.map<fhir.Reference?>((e) => e.reference)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationAdministration.device.reference',
            i,
          ),
        );
        i++;
      }
      // MedicationAdministration.encounter (reference)
      i = 0;
      for (final entry in resource.encounter?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationAdministration.encounter',
            i,
          ),
        );
        i++;
      }
      // MedicationAdministration.medication.reference (reference)
      i = 0;
      for (final entry
          in resource.medication.reference?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationAdministration.medication.reference',
            i,
          ),
        );
        i++;
      }
      // MedicationAdministration.performer.actor.reference (reference)
      i = 0;
      for (final entry in resource.performer
              ?.map<fhir.CodeableReference?>((e) => e.actor)
              .map<fhir.Reference?>((e) => e?.reference)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationAdministration.performer.actor.reference',
            i,
          ),
        );
        i++;
      }
      // MedicationAdministration.performer.actor.concept (token)
      i = 0;
      for (final entry in resource.performer
              ?.map<fhir.CodeableReference?>((e) => e.actor)
              .map<fhir.CodeableConcept?>((e) => e?.concept)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationAdministration.performer.actor.concept',
            i,
          ),
        );
        i++;
      }
      // MedicationAdministration.reason.reference (reference)
      i = 0;
      for (final entry in resource.reason
              ?.map<fhir.Reference?>((e) => e.reference)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationAdministration.reason.reference',
            i,
          ),
        );
        i++;
      }
      // MedicationAdministration.reason.concept (token)
      i = 0;
      for (final entry in resource.reason
              ?.map<fhir.CodeableConcept?>((e) => e.concept)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationAdministration.reason.concept',
            i,
          ),
        );
        i++;
      }
      // MedicationAdministration.statusReason (token)
      i = 0;
      for (final entry
          in resource.statusReason?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationAdministration.statusReason',
            i,
          ),
        );
        i++;
      }
      // MedicationAdministration.request (reference)
      i = 0;
      for (final entry in resource.request?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationAdministration.request',
            i,
          ),
        );
        i++;
      }
      // MedicationAdministration.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationAdministration.status',
            i,
          ),
        );
        i++;
      }
      // MedicationAdministration.subject (reference)
      i = 0;
      for (final entry in resource.subject.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationAdministration.subject',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.MedicationDispense _:
      // MedicationDispense.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationDispense.identifier',
            i,
          ),
        );
        i++;
      }
      // MedicationDispense.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationDispense.subject.where(resolve() is Patient)',
            i,
          ),
        );
        i++;
      }
      // MedicationDispense.type (token)
      i = 0;
      for (final entry in resource.type?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationDispense.type',
            i,
          ),
        );
        i++;
      }
      // MedicationDispense.medication.concept (token)
      i = 0;
      for (final entry in resource.medication.concept
              ?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationDispense.medication.concept',
            i,
          ),
        );
        i++;
      }
      // MedicationDispense.encounter (reference)
      i = 0;
      for (final entry in resource.encounter?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationDispense.encounter',
            i,
          ),
        );
        i++;
      }
      // MedicationDispense.medication.reference (reference)
      i = 0;
      for (final entry
          in resource.medication.reference?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationDispense.medication.reference',
            i,
          ),
        );
        i++;
      }
      // MedicationDispense.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationDispense.status',
            i,
          ),
        );
        i++;
      }
      // MedicationDispense.destination (reference)
      i = 0;
      for (final entry
          in resource.destination?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationDispense.destination',
            i,
          ),
        );
        i++;
      }
      // MedicationDispense.location (reference)
      i = 0;
      for (final entry in resource.location?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationDispense.location',
            i,
          ),
        );
        i++;
      }
      // MedicationDispense.performer.actor (reference)
      i = 0;
      for (final entry in resource.performer
              ?.map<fhir.Reference?>((e) => e.actor)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationDispense.performer.actor',
            i,
          ),
        );
        i++;
      }
      // MedicationDispense.authorizingPrescription (reference)
      i = 0;
      for (final entry
          in resource.authorizingPrescription?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationDispense.authorizingPrescription',
            i,
          ),
        );
        i++;
      }
      // MedicationDispense.receiver (reference)
      i = 0;
      for (final entry in resource.receiver?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationDispense.receiver',
            i,
          ),
        );
        i++;
      }
      // MedicationDispense.recorded (date)
      i = 0;
      for (final entry
          in resource.recorded?.makeIterable<fhir.FhirDateTime>() ??
              <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationDispense.recorded',
            i,
          ),
        );
        i++;
      }
      // MedicationDispense.substitution.responsibleParty (reference)
      i = 0;
      for (final entry in resource.substitution?.responsibleParty
              ?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationDispense.substitution.responsibleParty',
            i,
          ),
        );
        i++;
      }
      // MedicationDispense.subject (reference)
      i = 0;
      for (final entry in resource.subject.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationDispense.subject',
            i,
          ),
        );
        i++;
      }
      // MedicationDispense.whenHandedOver (date)
      i = 0;
      for (final entry
          in resource.whenHandedOver?.makeIterable<fhir.FhirDateTime>() ??
              <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationDispense.whenHandedOver',
            i,
          ),
        );
        i++;
      }
      // MedicationDispense.whenPrepared (date)
      i = 0;
      for (final entry
          in resource.whenPrepared?.makeIterable<fhir.FhirDateTime>() ??
              <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationDispense.whenPrepared',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.MedicationKnowledge _:
      // MedicationKnowledge.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationKnowledge.identifier',
            i,
          ),
        );
        i++;
      }
      // MedicationKnowledge.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationKnowledge.status',
            i,
          ),
        );
        i++;
      }
      // MedicationKnowledge.medicineClassification.classification (token)
      i = 0;
      for (final entry in resource.medicineClassification
              ?.expand((e) => e.classification ?? <fhir.CodeableConcept>[])
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationKnowledge.medicineClassification.classification',
            i,
          ),
        );
        i++;
      }
      // MedicationKnowledge.medicineClassification.type (token)
      i = 0;
      for (final entry in resource.medicineClassification
              ?.map<fhir.CodeableConcept?>((e) => e.type)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationKnowledge.medicineClassification.type',
            i,
          ),
        );
        i++;
      }
      // MedicationKnowledge.code (token)
      i = 0;
      for (final entry in resource.code?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationKnowledge.code',
            i,
          ),
        );
        i++;
      }
      // MedicationKnowledge.definitional.doseForm (token)
      i = 0;
      for (final entry in resource.definitional?.doseForm
              ?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationKnowledge.definitional.doseForm',
            i,
          ),
        );
        i++;
      }
      // MedicationKnowledge.definitional.ingredient.item.reference (reference)
      i = 0;
      for (final entry in resource.definitional?.ingredient
              ?.map<fhir.CodeableReference?>((e) => e.item)
              .map<fhir.Reference?>((e) => e?.reference)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationKnowledge.definitional.ingredient.item.reference',
            i,
          ),
        );
        i++;
      }
      // MedicationKnowledge.definitional.ingredient.item.concept (token)
      i = 0;
      for (final entry in resource.definitional?.ingredient
              ?.map<fhir.CodeableReference?>((e) => e.item)
              .map<fhir.CodeableConcept?>((e) => e?.concept)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationKnowledge.definitional.ingredient.item.concept',
            i,
          ),
        );
        i++;
      }
      // MedicationKnowledge.monitoringProgram.name (token)
      i = 0;
      for (final entry in resource.monitoringProgram
              ?.map<fhir.FhirString?>((e) => e.name)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationKnowledge.monitoringProgram.name',
            i,
          ),
        );
        i++;
      }
      // MedicationKnowledge.monitoringProgram.type (token)
      i = 0;
      for (final entry in resource.monitoringProgram
              ?.map<fhir.CodeableConcept?>((e) => e.type)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationKnowledge.monitoringProgram.type',
            i,
          ),
        );
        i++;
      }
      // MedicationKnowledge.monograph.source (reference)
      i = 0;
      for (final entry in resource.monograph
              ?.map<fhir.Reference?>((e) => e.source)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationKnowledge.monograph.source',
            i,
          ),
        );
        i++;
      }
      // MedicationKnowledge.monograph.type (token)
      i = 0;
      for (final entry in resource.monograph
              ?.map<fhir.CodeableConcept?>((e) => e.type)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationKnowledge.monograph.type',
            i,
          ),
        );
        i++;
      }
      // MedicationKnowledge.productType (token)
      i = 0;
      for (final entry
          in resource.productType?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationKnowledge.productType',
            i,
          ),
        );
        i++;
      }
      // MedicationKnowledge.cost.source (token)
      i = 0;
      for (final entry in resource.cost
              ?.map<fhir.FhirString?>((e) => e.source)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationKnowledge.cost.source',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.MedicationRequest _:
      // MedicationRequest.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationRequest.identifier',
            i,
          ),
        );
        i++;
      }
      // MedicationRequest.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationRequest.subject.where(resolve() is Patient)',
            i,
          ),
        );
        i++;
      }
      // MedicationRequest.medication.concept (token)
      i = 0;
      for (final entry in resource.medication.concept
              ?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationRequest.medication.concept',
            i,
          ),
        );
        i++;
      }
      // MedicationRequest.encounter (reference)
      i = 0;
      for (final entry in resource.encounter?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationRequest.encounter',
            i,
          ),
        );
        i++;
      }
      // MedicationRequest.medication.reference (reference)
      i = 0;
      for (final entry
          in resource.medication.reference?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationRequest.medication.reference',
            i,
          ),
        );
        i++;
      }
      // MedicationRequest.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationRequest.status',
            i,
          ),
        );
        i++;
      }
      // MedicationRequest.authoredOn (date)
      i = 0;
      for (final entry
          in resource.authoredOn?.makeIterable<fhir.FhirDateTime>() ??
              <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationRequest.authoredOn',
            i,
          ),
        );
        i++;
      }
      // MedicationRequest.category (token)
      i = 0;
      for (final entry
          in resource.category?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationRequest.category',
            i,
          ),
        );
        i++;
      }
      // MedicationRequest.dosageInstruction.timing.event (date)
      i = 0;
      for (final entry in resource.dosageInstruction
              ?.map<fhir.Timing?>((e) => e.timing)
              .expand((e) => e?.event ?? <fhir.FhirDateTime>[])
              .makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationRequest.dosageInstruction.timing.event',
            i,
          ),
        );
        i++;
      }
      // MedicationRequest.groupIdentifier (token)
      i = 0;
      for (final entry
          in resource.groupIdentifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationRequest.groupIdentifier',
            i,
          ),
        );
        i++;
      }
      // MedicationRequest.dispenseRequest.dispenser (reference)
      i = 0;
      for (final entry in resource.dispenseRequest?.dispenser
              ?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationRequest.dispenseRequest.dispenser',
            i,
          ),
        );
        i++;
      }
      // MedicationRequest.performer (reference)
      i = 0;
      for (final entry in resource.performer?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationRequest.performer',
            i,
          ),
        );
        i++;
      }
      // MedicationRequest.performerType (token)
      i = 0;
      for (final entry
          in resource.performerType?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationRequest.performerType',
            i,
          ),
        );
        i++;
      }
      // MedicationRequest.intent (token)
      i = 0;
      for (final entry in resource.intent.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationRequest.intent',
            i,
          ),
        );
        i++;
      }
      // MedicationRequest.priority (token)
      i = 0;
      for (final entry
          in resource.priority?.makeIterable<fhir.FhirCodeEnum>() ??
              <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationRequest.priority',
            i,
          ),
        );
        i++;
      }
      // MedicationRequest.requester (reference)
      i = 0;
      for (final entry in resource.requester?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationRequest.requester',
            i,
          ),
        );
        i++;
      }
      // MedicationRequest.subject (reference)
      i = 0;
      for (final entry in resource.subject.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationRequest.subject',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.MedicationStatement _:
      // MedicationStatement.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationStatement.identifier',
            i,
          ),
        );
        i++;
      }
      // MedicationStatement.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationStatement.subject.where(resolve() is Patient)',
            i,
          ),
        );
        i++;
      }
      // MedicationStatement.medication.concept (token)
      i = 0;
      for (final entry in resource.medication.concept
              ?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationStatement.medication.concept',
            i,
          ),
        );
        i++;
      }
      // MedicationStatement.encounter (reference)
      i = 0;
      for (final entry in resource.encounter?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationStatement.encounter',
            i,
          ),
        );
        i++;
      }
      // MedicationStatement.medication.reference (reference)
      i = 0;
      for (final entry
          in resource.medication.reference?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationStatement.medication.reference',
            i,
          ),
        );
        i++;
      }
      // MedicationStatement.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationStatement.status',
            i,
          ),
        );
        i++;
      }
      // MedicationStatement.adherence.code (token)
      i = 0;
      for (final entry
          in resource.adherence?.code.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationStatement.adherence.code',
            i,
          ),
        );
        i++;
      }
      // MedicationStatement.category (token)
      i = 0;
      for (final entry
          in resource.category?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationStatement.category',
            i,
          ),
        );
        i++;
      }
      // MedicationStatement.effective.ofType(dateTime) (date)
      i = 0;
      for (final entry
          in resource.effectiveDateTime?.makeIterable<fhir.FhirDateTime>() ??
              <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationStatement.effective.ofType(dateTime)',
            i,
          ),
        );
        i++;
      }
      // MedicationStatement.effective.ofType(Period) (date)
      i = 0;
      for (final entry
          in resource.effectivePeriod?.makeIterable<fhir.Period>() ??
              <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationStatement.effective.ofType(Period)',
            i,
          ),
        );
        i++;
      }
      // MedicationStatement.informationSource (reference)
      i = 0;
      for (final entry
          in resource.informationSource?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationStatement.informationSource',
            i,
          ),
        );
        i++;
      }
      // MedicationStatement.subject (reference)
      i = 0;
      for (final entry in resource.subject.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicationStatement.subject',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.MedicinalProductDefinition _:
      // MedicinalProductDefinition.characteristic.value.ofType(Quantity) (token)
      i = 0;
      for (final entry in resource.characteristic
              ?.map<fhir.Quantity?>((e) => e.valueQuantity)
              .makeIterable<fhir.Quantity>() ??
          <fhir.Quantity>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicinalProductDefinition.characteristic.value.ofType(Quantity)',
            i,
          ),
        );
        i++;
      }
      // MedicinalProductDefinition.characteristic.value.ofType(CodeableConcept) (token)
      i = 0;
      for (final entry in resource.characteristic
              ?.map<fhir.CodeableConcept?>((e) => e.valueCodeableConcept)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicinalProductDefinition.characteristic.value.ofType(CodeableConcept)',
            i,
          ),
        );
        i++;
      }
      // MedicinalProductDefinition.characteristic.type (token)
      i = 0;
      for (final entry in resource.characteristic
              ?.map<fhir.CodeableConcept?>((e) => e.type)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicinalProductDefinition.characteristic.type',
            i,
          ),
        );
        i++;
      }
      // MedicinalProductDefinition.contact.contact (reference)
      i = 0;
      for (final entry in resource.contact
              ?.map<fhir.Reference?>((e) => e.contact)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicinalProductDefinition.contact.contact',
            i,
          ),
        );
        i++;
      }
      // MedicinalProductDefinition.domain (token)
      i = 0;
      for (final entry
          in resource.domain?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicinalProductDefinition.domain',
            i,
          ),
        );
        i++;
      }
      // MedicinalProductDefinition.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicinalProductDefinition.identifier',
            i,
          ),
        );
        i++;
      }
      // MedicinalProductDefinition.ingredient (token)
      i = 0;
      for (final entry
          in resource.ingredient?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicinalProductDefinition.ingredient',
            i,
          ),
        );
        i++;
      }
      // MedicinalProductDefinition.masterFile (reference)
      i = 0;
      for (final entry in resource.masterFile?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicinalProductDefinition.masterFile',
            i,
          ),
        );
        i++;
      }
      // MedicinalProductDefinition.name.productName (string)
      i = 0;
      for (final entry in resource.name
              .map<fhir.FhirString?>((e) => e.productName)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicinalProductDefinition.name.productName',
            i,
          ),
        );
        i++;
      }
      // MedicinalProductDefinition.name.usage.language (token)
      i = 0;
      for (final entry in resource.name
              .expand(
                  (e) => e.usage ?? <fhir.MedicinalProductDefinitionUsage>[])
              .map<fhir.CodeableConcept?>((e) => e.language)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicinalProductDefinition.name.usage.language',
            i,
          ),
        );
        i++;
      }
      // MedicinalProductDefinition.classification (token)
      i = 0;
      for (final entry
          in resource.classification?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicinalProductDefinition.classification',
            i,
          ),
        );
        i++;
      }
      // MedicinalProductDefinition.status (token)
      i = 0;
      for (final entry
          in resource.status?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicinalProductDefinition.status',
            i,
          ),
        );
        i++;
      }
      // MedicinalProductDefinition.type (token)
      i = 0;
      for (final entry in resource.type?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MedicinalProductDefinition.type',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.MessageDefinition _:
      // MessageDefinition.useContext.code (token)
      i = 0;
      for (final entry in resource.useContext
              ?.map<fhir.Coding?>((e) => e.code)
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MessageDefinition.useContext.code',
            i,
          ),
        );
        i++;
      }
      // MessageDefinition.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MessageDefinition.date',
            i,
          ),
        );
        i++;
      }
      // MessageDefinition.description (string)
      i = 0;
      for (final entry
          in resource.description?.makeIterable<fhir.FhirMarkdown>() ??
              <fhir.FhirMarkdown>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MessageDefinition.description',
            i,
          ),
        );
        i++;
      }
      // MessageDefinition.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MessageDefinition.identifier',
            i,
          ),
        );
        i++;
      }
      // MessageDefinition.jurisdiction (token)
      i = 0;
      for (final entry
          in resource.jurisdiction?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MessageDefinition.jurisdiction',
            i,
          ),
        );
        i++;
      }
      // MessageDefinition.name (string)
      i = 0;
      for (final entry in resource.name?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MessageDefinition.name',
            i,
          ),
        );
        i++;
      }
      // MessageDefinition.publisher (string)
      i = 0;
      for (final entry in resource.publisher?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MessageDefinition.publisher',
            i,
          ),
        );
        i++;
      }
      // MessageDefinition.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MessageDefinition.status',
            i,
          ),
        );
        i++;
      }
      // MessageDefinition.title (string)
      i = 0;
      for (final entry in resource.title?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MessageDefinition.title',
            i,
          ),
        );
        i++;
      }
      // MessageDefinition.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MessageDefinition.url',
            i,
          ),
        );
        i++;
      }
      // MessageDefinition.version (token)
      i = 0;
      for (final entry in resource.version?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MessageDefinition.version',
            i,
          ),
        );
        i++;
      }
      // MessageDefinition.useContext (composite)
      i = 0;
      for (final entry
          in resource.useContext?.makeIterable<fhir.UsageContext>() ??
              <fhir.UsageContext>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MessageDefinition.useContext',
            i,
          ),
        );
        i++;
      }
      // MessageDefinition.category (token)
      i = 0;
      for (final entry
          in resource.category?.makeIterable<fhir.FhirCodeEnum>() ??
              <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MessageDefinition.category',
            i,
          ),
        );
        i++;
      }
      // MessageDefinition.event.ofType(Coding) (token)
      i = 0;
      for (final entry in resource.eventCoding?.makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MessageDefinition.event.ofType(Coding)',
            i,
          ),
        );
        i++;
      }
      // MessageDefinition.focus.code (token)
      i = 0;
      for (final entry in resource.focus
              ?.map<fhir.FhirCode?>((e) => e.code)
              .makeIterable<fhir.FhirCode>() ??
          <fhir.FhirCode>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MessageDefinition.focus.code',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.MessageHeader _:
      // MessageHeader.response.code (token)
      i = 0;
      for (final entry
          in resource.response?.code.makeIterable<fhir.FhirCodeEnum>() ??
              <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MessageHeader.response.code',
            i,
          ),
        );
        i++;
      }
      // MessageHeader.destination.name (string)
      i = 0;
      for (final entry in resource.destination
              ?.map<fhir.FhirString?>((e) => e.name)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MessageHeader.destination.name',
            i,
          ),
        );
        i++;
      }
      // MessageHeader.event.ofType(Coding) (token)
      i = 0;
      for (final entry in resource.eventCoding?.makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MessageHeader.event.ofType(Coding)',
            i,
          ),
        );
        i++;
      }
      // MessageHeader.event.ofType(canonical) (token)
      i = 0;
      for (final entry
          in resource.eventCanonical?.makeIterable<fhir.FhirCanonical>() ??
              <fhir.FhirCanonical>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MessageHeader.event.ofType(canonical)',
            i,
          ),
        );
        i++;
      }
      // MessageHeader.focus (reference)
      i = 0;
      for (final entry in resource.focus?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MessageHeader.focus',
            i,
          ),
        );
        i++;
      }
      // MessageHeader.destination.receiver (reference)
      i = 0;
      for (final entry in resource.destination
              ?.map<fhir.Reference?>((e) => e.receiver)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MessageHeader.destination.receiver',
            i,
          ),
        );
        i++;
      }
      // MessageHeader.response.identifier (token)
      i = 0;
      for (final entry
          in resource.response?.identifier.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MessageHeader.response.identifier',
            i,
          ),
        );
        i++;
      }
      // MessageHeader.source.sender (reference)
      i = 0;
      for (final entry
          in resource.source.sender?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MessageHeader.source.sender',
            i,
          ),
        );
        i++;
      }
      // MessageHeader.source.name (string)
      i = 0;
      for (final entry
          in resource.source.name?.makeIterable<fhir.FhirString>() ??
              <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MessageHeader.source.name',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.MolecularDefinition _:
      // MolecularDefinition.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MolecularDefinition.identifier',
            i,
          ),
        );
        i++;
      }
      // MolecularDefinition.member (reference)
      i = 0;
      for (final entry in resource.member?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MolecularDefinition.member',
            i,
          ),
        );
        i++;
      }
      // MolecularDefinition.moleculeType (token)
      i = 0;
      for (final entry
          in resource.moleculeType?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MolecularDefinition.moleculeType',
            i,
          ),
        );
        i++;
      }
      // MolecularDefinition.topology (token)
      i = 0;
      for (final entry
          in resource.topology?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MolecularDefinition.topology',
            i,
          ),
        );
        i++;
      }
      // MolecularDefinition.type (token)
      i = 0;
      for (final entry in resource.type?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MolecularDefinition.type',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.MolecularSequence _:
      // MolecularSequence.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MolecularSequence.identifier',
            i,
          ),
        );
        i++;
      }
      // MolecularSequence.type (token)
      i = 0;
      for (final entry in resource.type?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'MolecularSequence.type',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.NamingSystem _:
      // NamingSystem.useContext.code (token)
      i = 0;
      for (final entry in resource.useContext
              ?.map<fhir.Coding?>((e) => e.code)
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NamingSystem.useContext.code',
            i,
          ),
        );
        i++;
      }
      // NamingSystem.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NamingSystem.date',
            i,
          ),
        );
        i++;
      }
      // NamingSystem.relatedArtifact.where(type='derived-from').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'derived-from')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "NamingSystem.relatedArtifact.where(type='derived-from').resource",
            i,
          ),
        );
        i++;
      }
      // NamingSystem.description (string)
      i = 0;
      for (final entry
          in resource.description?.makeIterable<fhir.FhirMarkdown>() ??
              <fhir.FhirMarkdown>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NamingSystem.description',
            i,
          ),
        );
        i++;
      }
      // NamingSystem.effectivePeriod (date)
      i = 0;
      for (final entry
          in resource.effectivePeriod?.makeIterable<fhir.Period>() ??
              <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NamingSystem.effectivePeriod',
            i,
          ),
        );
        i++;
      }
      // NamingSystem.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NamingSystem.identifier',
            i,
          ),
        );
        i++;
      }
      // NamingSystem.jurisdiction (token)
      i = 0;
      for (final entry
          in resource.jurisdiction?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NamingSystem.jurisdiction',
            i,
          ),
        );
        i++;
      }
      // NamingSystem.name (string)
      i = 0;
      for (final entry in resource.name.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NamingSystem.name',
            i,
          ),
        );
        i++;
      }
      // NamingSystem.relatedArtifact.where(type='predecessor').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'predecessor')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "NamingSystem.relatedArtifact.where(type='predecessor').resource",
            i,
          ),
        );
        i++;
      }
      // NamingSystem.publisher (string)
      i = 0;
      for (final entry in resource.publisher?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NamingSystem.publisher',
            i,
          ),
        );
        i++;
      }
      // NamingSystem.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NamingSystem.status',
            i,
          ),
        );
        i++;
      }
      // NamingSystem.topic (token)
      i = 0;
      for (final entry
          in resource.topic?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NamingSystem.topic',
            i,
          ),
        );
        i++;
      }
      // NamingSystem.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NamingSystem.url',
            i,
          ),
        );
        i++;
      }
      // NamingSystem.version (token)
      i = 0;
      for (final entry in resource.version?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NamingSystem.version',
            i,
          ),
        );
        i++;
      }
      // NamingSystem.useContext (composite)
      i = 0;
      for (final entry
          in resource.useContext?.makeIterable<fhir.UsageContext>() ??
              <fhir.UsageContext>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NamingSystem.useContext',
            i,
          ),
        );
        i++;
      }
      // NamingSystem.contact.name (string)
      i = 0;
      for (final entry in resource.contact
              ?.map<fhir.FhirString?>((e) => e.name)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NamingSystem.contact.name',
            i,
          ),
        );
        i++;
      }
      // NamingSystem.uniqueId.type (token)
      i = 0;
      for (final entry in resource.uniqueId
              .map<fhir.FhirCodeEnum?>((e) => e.type)
              .makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NamingSystem.uniqueId.type',
            i,
          ),
        );
        i++;
      }
      // NamingSystem.kind (token)
      i = 0;
      for (final entry in resource.kind.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NamingSystem.kind',
            i,
          ),
        );
        i++;
      }
      // NamingSystem.uniqueId.period (date)
      i = 0;
      for (final entry in resource.uniqueId
              .map<fhir.Period?>((e) => e.period)
              .makeIterable<fhir.Period>() ??
          <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NamingSystem.uniqueId.period',
            i,
          ),
        );
        i++;
      }
      // NamingSystem.responsible (string)
      i = 0;
      for (final entry
          in resource.responsible?.makeIterable<fhir.FhirString>() ??
              <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NamingSystem.responsible',
            i,
          ),
        );
        i++;
      }
      // NamingSystem.contact.telecom (token)
      i = 0;
      for (final entry in resource.contact
              ?.expand((e) => e.telecom ?? <fhir.ContactPoint>[])
              .makeIterable<fhir.ContactPoint>() ??
          <fhir.ContactPoint>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NamingSystem.contact.telecom',
            i,
          ),
        );
        i++;
      }
      // NamingSystem.type (token)
      i = 0;
      for (final entry in resource.type?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NamingSystem.type',
            i,
          ),
        );
        i++;
      }
      // NamingSystem.uniqueId.value (string)
      i = 0;
      for (final entry in resource.uniqueId
              .map<fhir.FhirString?>((e) => e.value)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NamingSystem.uniqueId.value',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.NutritionIntake _:
      // NutritionIntake.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NutritionIntake.identifier',
            i,
          ),
        );
        i++;
      }
      // NutritionIntake.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NutritionIntake.subject.where(resolve() is Patient)',
            i,
          ),
        );
        i++;
      }
      // NutritionIntake.code (token)
      i = 0;
      for (final entry in resource.code?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NutritionIntake.code',
            i,
          ),
        );
        i++;
      }
      // NutritionIntake.occurrence.ofType(dateTime) (date)
      i = 0;
      for (final entry
          in resource.occurrenceDateTime?.makeIterable<fhir.FhirDateTime>() ??
              <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NutritionIntake.occurrence.ofType(dateTime)',
            i,
          ),
        );
        i++;
      }
      // NutritionIntake.occurrence.ofType(Period) (date)
      i = 0;
      for (final entry
          in resource.occurrencePeriod?.makeIterable<fhir.Period>() ??
              <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NutritionIntake.occurrence.ofType(Period)',
            i,
          ),
        );
        i++;
      }
      // NutritionIntake.encounter (reference)
      i = 0;
      for (final entry in resource.encounter?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NutritionIntake.encounter',
            i,
          ),
        );
        i++;
      }
      // NutritionIntake.nutritionItem.nutritionProduct.concept (token)
      i = 0;
      for (final entry in resource.nutritionItem
              ?.map<fhir.CodeableReference?>((e) => e.nutritionProduct)
              .map<fhir.CodeableConcept?>((e) => e?.concept)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NutritionIntake.nutritionItem.nutritionProduct.concept',
            i,
          ),
        );
        i++;
      }
      // NutritionIntake.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NutritionIntake.status',
            i,
          ),
        );
        i++;
      }
      // NutritionIntake.subject (reference)
      i = 0;
      for (final entry in resource.subject.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NutritionIntake.subject',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.NutritionOrder _:
      // NutritionOrder.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NutritionOrder.identifier',
            i,
          ),
        );
        i++;
      }
      // NutritionOrder.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NutritionOrder.subject.where(resolve() is Patient)',
            i,
          ),
        );
        i++;
      }
      // NutritionOrder.encounter (reference)
      i = 0;
      for (final entry in resource.encounter?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NutritionOrder.encounter',
            i,
          ),
        );
        i++;
      }
      // NutritionOrder.additive.modularType.concept (token)
      i = 0;
      for (final entry in resource.additive
              ?.map<fhir.CodeableReference?>((e) => e.modularType)
              .map<fhir.CodeableConcept?>((e) => e?.concept)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NutritionOrder.additive.modularType.concept',
            i,
          ),
        );
        i++;
      }
      // NutritionOrder.dateTime (date)
      i = 0;
      for (final entry in resource.dateTime.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NutritionOrder.dateTime',
            i,
          ),
        );
        i++;
      }
      // NutritionOrder.enteralFormula.type.concept (token)
      i = 0;
      for (final entry in resource.enteralFormula?.type?.concept
              ?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NutritionOrder.enteralFormula.type.concept',
            i,
          ),
        );
        i++;
      }
      // NutritionOrder.groupIdentifier (token)
      i = 0;
      for (final entry
          in resource.groupIdentifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NutritionOrder.groupIdentifier',
            i,
          ),
        );
        i++;
      }
      // NutritionOrder.oralDiet.type (token)
      i = 0;
      for (final entry
          in resource.oralDiet?.type?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NutritionOrder.oralDiet.type',
            i,
          ),
        );
        i++;
      }
      // NutritionOrder.requester (reference)
      i = 0;
      for (final entry in resource.requester?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NutritionOrder.requester',
            i,
          ),
        );
        i++;
      }
      // NutritionOrder.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NutritionOrder.status',
            i,
          ),
        );
        i++;
      }
      // NutritionOrder.subject (reference)
      i = 0;
      for (final entry in resource.subject.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NutritionOrder.subject',
            i,
          ),
        );
        i++;
      }
      // NutritionOrder.supplement.type.concept (token)
      i = 0;
      for (final entry in resource.supplement
              ?.map<fhir.CodeableReference?>((e) => e.type)
              .map<fhir.CodeableConcept?>((e) => e?.concept)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NutritionOrder.supplement.type.concept',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.NutritionProduct _:
      // NutritionProduct.code (token)
      i = 0;
      for (final entry in resource.code?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NutritionProduct.code',
            i,
          ),
        );
        i++;
      }
      // NutritionProduct.instance.expiry (date)
      i = 0;
      for (final entry in resource.instance
              ?.map<fhir.FhirDateTime?>((e) => e.expiry)
              .makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NutritionProduct.instance.expiry',
            i,
          ),
        );
        i++;
      }
      // NutritionProduct.instance.identifier (token)
      i = 0;
      for (final entry in resource.instance
              ?.expand((e) => e.identifier ?? <fhir.Identifier>[])
              .makeIterable<fhir.Identifier>() ??
          <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NutritionProduct.instance.identifier',
            i,
          ),
        );
        i++;
      }
      // NutritionProduct.ingredient.item.concept (token)
      i = 0;
      for (final entry in resource.ingredient
              ?.map<fhir.CodeableReference?>((e) => e.item)
              .map<fhir.CodeableConcept?>((e) => e?.concept)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NutritionProduct.ingredient.item.concept',
            i,
          ),
        );
        i++;
      }
      // NutritionProduct.instance.lotNumber (token)
      i = 0;
      for (final entry in resource.instance
              ?.map<fhir.FhirString?>((e) => e.lotNumber)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NutritionProduct.instance.lotNumber',
            i,
          ),
        );
        i++;
      }
      // NutritionProduct.category (token)
      i = 0;
      for (final entry
          in resource.category?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'NutritionProduct.category',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.Observation _:
      // Observation.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Observation.identifier',
            i,
          ),
        );
        i++;
      }
      // Observation.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject?.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Observation.subject.where(resolve() is Patient)',
            i,
          ),
        );
        i++;
      }
      // Observation.code (token)
      i = 0;
      for (final entry in resource.code.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Observation.code',
            i,
          ),
        );
        i++;
      }
      // Observation.effective.ofType(dateTime) (date)
      i = 0;
      for (final entry
          in resource.effectiveDateTime?.makeIterable<fhir.FhirDateTime>() ??
              <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Observation.effective.ofType(dateTime)',
            i,
          ),
        );
        i++;
      }
      // Observation.effective.ofType(Period) (date)
      i = 0;
      for (final entry
          in resource.effectivePeriod?.makeIterable<fhir.Period>() ??
              <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Observation.effective.ofType(Period)',
            i,
          ),
        );
        i++;
      }
      // Observation.effective.ofType(Timing) (date)
      i = 0;
      for (final entry
          in resource.effectiveTiming?.makeIterable<fhir.Timing>() ??
              <fhir.Timing>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Observation.effective.ofType(Timing)',
            i,
          ),
        );
        i++;
      }
      // Observation.effective.ofType(instant) (date)
      i = 0;
      for (final entry
          in resource.effectiveInstant?.makeIterable<fhir.FhirInstant>() ??
              <fhir.FhirInstant>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Observation.effective.ofType(instant)',
            i,
          ),
        );
        i++;
      }
      // Observation.encounter (reference)
      i = 0;
      for (final entry in resource.encounter?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Observation.encounter',
            i,
          ),
        );
        i++;
      }
      // Observation.basedOn (reference)
      i = 0;
      for (final entry in resource.basedOn?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Observation.basedOn',
            i,
          ),
        );
        i++;
      }
      // Observation.category (token)
      i = 0;
      for (final entry
          in resource.category?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Observation.category',
            i,
          ),
        );
        i++;
      }
      // Observation.component.code (token)
      i = 0;
      for (final entry in resource.component
              ?.map<fhir.CodeableConcept?>((e) => e.code)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Observation.component.code',
            i,
          ),
        );
        i++;
      }
      // Observation.dataAbsentReason (token)
      i = 0;
      for (final entry
          in resource.dataAbsentReason?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Observation.dataAbsentReason',
            i,
          ),
        );
        i++;
      }
      // Observation.component.dataAbsentReason (token)
      i = 0;
      for (final entry in resource.component
              ?.map<fhir.CodeableConcept?>((e) => e.dataAbsentReason)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Observation.component.dataAbsentReason',
            i,
          ),
        );
        i++;
      }
      // Observation.interpretation (token)
      i = 0;
      for (final entry
          in resource.interpretation?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Observation.interpretation',
            i,
          ),
        );
        i++;
      }
      // Observation.component.interpretation (token)
      i = 0;
      for (final entry in resource.component
              ?.expand((e) => e.interpretation ?? <fhir.CodeableConcept>[])
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Observation.component.interpretation',
            i,
          ),
        );
        i++;
      }
      // Observation.value.ofType(CodeableConcept) (token)
      i = 0;
      for (final entry in resource.valueCodeableConcept
              ?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Observation.value.ofType(CodeableConcept)',
            i,
          ),
        );
        i++;
      }
      // Observation.component.value.ofType(CodeableConcept) (token)
      i = 0;
      for (final entry in resource.component
              ?.map<fhir.CodeableConcept?>((e) => e.valueCodeableConcept)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Observation.component.value.ofType(CodeableConcept)',
            i,
          ),
        );
        i++;
      }
      // Observation.value.ofType(Quantity) (quantity)
      i = 0;
      for (final entry
          in resource.valueQuantity?.makeIterable<fhir.Quantity>() ??
              <fhir.Quantity>[]) {
        searchParameterLists.quantityParams.addAll(
          entry.toQuantitySearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Observation.value.ofType(Quantity)',
            i,
          ),
        );
        i++;
      }
      // Observation.value.ofType(SampledData) (quantity)
      i = 0;
      for (final entry
          in resource.valueSampledData?.makeIterable<fhir.SampledData>() ??
              <fhir.SampledData>[]) {
        searchParameterLists.quantityParams.addAll(
          entry.toQuantitySearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Observation.value.ofType(SampledData)',
            i,
          ),
        );
        i++;
      }
      // Observation.component.value.ofType(Quantity) (quantity)
      i = 0;
      for (final entry in resource.component
              ?.map<fhir.Quantity?>((e) => e.valueQuantity)
              .makeIterable<fhir.Quantity>() ??
          <fhir.Quantity>[]) {
        searchParameterLists.quantityParams.addAll(
          entry.toQuantitySearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Observation.component.value.ofType(Quantity)',
            i,
          ),
        );
        i++;
      }
      // Observation.component.value.ofType(SampledData) (quantity)
      i = 0;
      for (final entry in resource.component
              ?.map<fhir.SampledData?>((e) => e.valueSampledData)
              .makeIterable<fhir.SampledData>() ??
          <fhir.SampledData>[]) {
        searchParameterLists.quantityParams.addAll(
          entry.toQuantitySearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Observation.component.value.ofType(SampledData)',
            i,
          ),
        );
        i++;
      }
      // SKIPPED (unsupported FHIRPath): // Observation.component.value.ofType(canonical) (reference)
      // SKIPPED (unsupported FHIRPath): i = 0;
      // SKIPPED (unsupported FHIRPath): for (final entry in resource.component?.map<fhir.FhirCanonical?>((e) => e?.valueCanonical)?.makeIterable<fhir.FhirCanonical>() ?? <fhir.FhirCanonical>[]) {
      // SKIPPED (unsupported FHIRPath): searchParameterLists.referenceParams.addAll(
      // SKIPPED (unsupported FHIRPath): entry.toReferenceSearchParameter(
      // SKIPPED (unsupported FHIRPath): resourceType, id, lastUpdated, 'Observation.component.value.ofType(canonical)', i,
      // SKIPPED (unsupported FHIRPath): ),
      // SKIPPED (unsupported FHIRPath): );
      // SKIPPED (unsupported FHIRPath): i++;
      // SKIPPED (unsupported FHIRPath): }
      // Observation.component.value.ofType(Reference) (reference)
      i = 0;
      for (final entry in resource.component
              ?.map<fhir.Reference?>((e) => e.valueReference)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Observation.component.value.ofType(Reference)',
            i,
          ),
        );
        i++;
      }
      // Observation.derivedFrom (reference)
      i = 0;
      for (final entry
          in resource.derivedFrom?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Observation.derivedFrom',
            i,
          ),
        );
        i++;
      }
      // Observation.device (reference)
      i = 0;
      for (final entry in resource.device?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Observation.device',
            i,
          ),
        );
        i++;
      }
      // Observation.focus (reference)
      i = 0;
      for (final entry in resource.focus?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Observation.focus',
            i,
          ),
        );
        i++;
      }
      // Observation.hasMember (reference)
      i = 0;
      for (final entry in resource.hasMember?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Observation.hasMember',
            i,
          ),
        );
        i++;
      }
      // Observation.instantiates.ofType(canonical) (uri)
      i = 0;
      for (final entry in resource.instantiatesCanonical
              ?.makeIterable<fhir.FhirCanonical>() ??
          <fhir.FhirCanonical>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Observation.instantiates.ofType(canonical)',
            i,
          ),
        );
        i++;
      }
      // Observation.instantiates.ofType(Reference) (reference)
      i = 0;
      for (final entry
          in resource.instantiatesReference?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Observation.instantiates.ofType(Reference)',
            i,
          ),
        );
        i++;
      }
      // Observation.method (token)
      i = 0;
      for (final entry
          in resource.method?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Observation.method',
            i,
          ),
        );
        i++;
      }
      // Observation.partOf (reference)
      i = 0;
      for (final entry in resource.partOf?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Observation.partOf',
            i,
          ),
        );
        i++;
      }
      // Observation.performer (reference)
      i = 0;
      for (final entry in resource.performer?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Observation.performer',
            i,
          ),
        );
        i++;
      }
      // Observation.specimen (reference)
      i = 0;
      for (final entry in resource.specimen?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Observation.specimen',
            i,
          ),
        );
        i++;
      }
      // Observation.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Observation.status',
            i,
          ),
        );
        i++;
      }
      // Observation.subject (reference)
      i = 0;
      for (final entry in resource.subject?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Observation.subject',
            i,
          ),
        );
        i++;
      }
      // SKIPPED (unsupported FHIRPath): // Observation.value.ofType(canonical) (uri)
      // SKIPPED (unsupported FHIRPath): i = 0;
      // SKIPPED (unsupported FHIRPath): for (final entry in resource.valueCanonical?.makeIterable<fhir.FhirCanonical>() ?? <fhir.FhirCanonical>[]) {
      // SKIPPED (unsupported FHIRPath): searchParameterLists.uriParams.addAll(
      // SKIPPED (unsupported FHIRPath): entry.toUriSearchParameter(
      // SKIPPED (unsupported FHIRPath): resourceType, id, lastUpdated, 'Observation.value.ofType(canonical)', i,
      // SKIPPED (unsupported FHIRPath): ),
      // SKIPPED (unsupported FHIRPath): );
      // SKIPPED (unsupported FHIRPath): i++;
      // SKIPPED (unsupported FHIRPath): }
      // Observation.value.ofType(dateTime) (date)
      i = 0;
      for (final entry
          in resource.valueDateTime?.makeIterable<fhir.FhirDateTime>() ??
              <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Observation.value.ofType(dateTime)',
            i,
          ),
        );
        i++;
      }
      // Observation.value.ofType(Period) (date)
      i = 0;
      for (final entry in resource.valuePeriod?.makeIterable<fhir.Period>() ??
          <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Observation.value.ofType(Period)',
            i,
          ),
        );
        i++;
      }
      // Observation.value.ofType(Reference) (reference)
      i = 0;
      for (final entry
          in resource.valueReference?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Observation.value.ofType(Reference)',
            i,
          ),
        );
        i++;
      }
      // Observation (composite)
      i = 0;
      for (final entry in resource.makeIterable<fhir.Observation>() ??
          <fhir.Observation>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Observation',
            i,
          ),
        );
        i++;
      }
      // Observation.component (composite)
      i = 0;
      for (final entry
          in resource.component?.makeIterable<fhir.ObservationComponent>() ??
              <fhir.ObservationComponent>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Observation.component',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.ObservationDefinition _:
      // ObservationDefinition.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ObservationDefinition.identifier',
            i,
          ),
        );
        i++;
      }
      // ObservationDefinition.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ObservationDefinition.status',
            i,
          ),
        );
        i++;
      }
      // ObservationDefinition.title (string)
      i = 0;
      for (final entry in resource.title?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ObservationDefinition.title',
            i,
          ),
        );
        i++;
      }
      // ObservationDefinition.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ObservationDefinition.url',
            i,
          ),
        );
        i++;
      }
      // ObservationDefinition.category (token)
      i = 0;
      for (final entry
          in resource.category?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ObservationDefinition.category',
            i,
          ),
        );
        i++;
      }
      // ObservationDefinition.code (token)
      i = 0;
      for (final entry in resource.code.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ObservationDefinition.code',
            i,
          ),
        );
        i++;
      }
      // ObservationDefinition.experimental (token)
      i = 0;
      for (final entry
          in resource.experimental?.makeIterable<fhir.FhirBoolean>() ??
              <fhir.FhirBoolean>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ObservationDefinition.experimental',
            i,
          ),
        );
        i++;
      }
      // ObservationDefinition.method (token)
      i = 0;
      for (final entry
          in resource.method?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ObservationDefinition.method',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.OperationDefinition _:
      // OperationDefinition.useContext.code (token)
      i = 0;
      for (final entry in resource.useContext
              ?.map<fhir.Coding?>((e) => e.code)
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'OperationDefinition.useContext.code',
            i,
          ),
        );
        i++;
      }
      // OperationDefinition.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'OperationDefinition.date',
            i,
          ),
        );
        i++;
      }
      // OperationDefinition.description (string)
      i = 0;
      for (final entry
          in resource.description?.makeIterable<fhir.FhirMarkdown>() ??
              <fhir.FhirMarkdown>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'OperationDefinition.description',
            i,
          ),
        );
        i++;
      }
      // OperationDefinition.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'OperationDefinition.identifier',
            i,
          ),
        );
        i++;
      }
      // OperationDefinition.jurisdiction (token)
      i = 0;
      for (final entry
          in resource.jurisdiction?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'OperationDefinition.jurisdiction',
            i,
          ),
        );
        i++;
      }
      // OperationDefinition.name (string)
      i = 0;
      for (final entry in resource.name.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'OperationDefinition.name',
            i,
          ),
        );
        i++;
      }
      // OperationDefinition.publisher (string)
      i = 0;
      for (final entry in resource.publisher?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'OperationDefinition.publisher',
            i,
          ),
        );
        i++;
      }
      // OperationDefinition.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'OperationDefinition.status',
            i,
          ),
        );
        i++;
      }
      // OperationDefinition.title (string)
      i = 0;
      for (final entry in resource.title?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'OperationDefinition.title',
            i,
          ),
        );
        i++;
      }
      // OperationDefinition.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'OperationDefinition.url',
            i,
          ),
        );
        i++;
      }
      // OperationDefinition.version (token)
      i = 0;
      for (final entry in resource.version?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'OperationDefinition.version',
            i,
          ),
        );
        i++;
      }
      // OperationDefinition.useContext (composite)
      i = 0;
      for (final entry
          in resource.useContext?.makeIterable<fhir.UsageContext>() ??
              <fhir.UsageContext>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'OperationDefinition.useContext',
            i,
          ),
        );
        i++;
      }
      // OperationDefinition.base (reference)
      i = 0;
      for (final entry in resource.base?.makeIterable<fhir.FhirCanonical>() ??
          <fhir.FhirCanonical>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'OperationDefinition.base',
            i,
          ),
        );
        i++;
      }
      // OperationDefinition.code (token)
      i = 0;
      for (final entry
          in resource.code.makeIterable<fhir.FhirCode>() ?? <fhir.FhirCode>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'OperationDefinition.code',
            i,
          ),
        );
        i++;
      }
      // OperationDefinition.inputProfile (reference)
      i = 0;
      for (final entry
          in resource.inputProfile?.makeIterable<fhir.FhirCanonical>() ??
              <fhir.FhirCanonical>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'OperationDefinition.inputProfile',
            i,
          ),
        );
        i++;
      }
      // OperationDefinition.instance (token)
      i = 0;
      for (final entry in resource.instance.makeIterable<fhir.FhirBoolean>() ??
          <fhir.FhirBoolean>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'OperationDefinition.instance',
            i,
          ),
        );
        i++;
      }
      // OperationDefinition.kind (token)
      i = 0;
      for (final entry in resource.kind.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'OperationDefinition.kind',
            i,
          ),
        );
        i++;
      }
      // OperationDefinition.outputProfile (reference)
      i = 0;
      for (final entry
          in resource.outputProfile?.makeIterable<fhir.FhirCanonical>() ??
              <fhir.FhirCanonical>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'OperationDefinition.outputProfile',
            i,
          ),
        );
        i++;
      }
      // OperationDefinition.system (token)
      i = 0;
      for (final entry in resource.system.makeIterable<fhir.FhirBoolean>() ??
          <fhir.FhirBoolean>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'OperationDefinition.system',
            i,
          ),
        );
        i++;
      }
      // OperationDefinition.type (token)
      i = 0;
      for (final entry in resource.type.makeIterable<fhir.FhirBoolean>() ??
          <fhir.FhirBoolean>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'OperationDefinition.type',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.Organization _:
      // Organization.active (token)
      i = 0;
      for (final entry in resource.active?.makeIterable<fhir.FhirBoolean>() ??
          <fhir.FhirBoolean>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Organization.active',
            i,
          ),
        );
        i++;
      }
      // Organization.contact.address (string)
      i = 0;
      for (final entry in resource.contact
              ?.map<fhir.Address?>((e) => e.address)
              .makeIterable<fhir.Address>() ??
          <fhir.Address>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Organization.contact.address',
            i,
          ),
        );
        i++;
      }
      // Organization.contact.address.city (string)
      i = 0;
      for (final entry in resource.contact
              ?.map<fhir.Address?>((e) => e.address)
              .map<fhir.FhirString?>((e) => e?.city)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Organization.contact.address.city',
            i,
          ),
        );
        i++;
      }
      // Organization.contact.address.country (string)
      i = 0;
      for (final entry in resource.contact
              ?.map<fhir.Address?>((e) => e.address)
              .map<fhir.FhirString?>((e) => e?.country)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Organization.contact.address.country',
            i,
          ),
        );
        i++;
      }
      // Organization.contact.address.postalCode (string)
      i = 0;
      for (final entry in resource.contact
              ?.map<fhir.Address?>((e) => e.address)
              .map<fhir.FhirString?>((e) => e?.postalCode)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Organization.contact.address.postalCode',
            i,
          ),
        );
        i++;
      }
      // Organization.contact.address.state (string)
      i = 0;
      for (final entry in resource.contact
              ?.map<fhir.Address?>((e) => e.address)
              .map<fhir.FhirString?>((e) => e?.state)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Organization.contact.address.state',
            i,
          ),
        );
        i++;
      }
      // Organization.contact.address.use (token)
      i = 0;
      for (final entry in resource.contact
              ?.map<fhir.Address?>((e) => e.address)
              .map<fhir.FhirCodeEnum?>((e) => e?.use)
              .makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Organization.contact.address.use',
            i,
          ),
        );
        i++;
      }
      // Organization.endpoint (reference)
      i = 0;
      for (final entry in resource.endpoint?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Organization.endpoint',
            i,
          ),
        );
        i++;
      }
      // Organization.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Organization.identifier',
            i,
          ),
        );
        i++;
      }
      // Organization.qualification.identifier (token)
      i = 0;
      for (final entry in resource.qualification
              ?.expand((e) => e.identifier ?? <fhir.Identifier>[])
              .makeIterable<fhir.Identifier>() ??
          <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Organization.qualification.identifier',
            i,
          ),
        );
        i++;
      }
      // Organization.name (string)
      i = 0;
      for (final entry in resource.name?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Organization.name',
            i,
          ),
        );
        i++;
      }
      // Organization.alias (string)
      i = 0;
      for (final entry in resource.alias?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Organization.alias',
            i,
          ),
        );
        i++;
      }
      // Organization.partOf (reference)
      i = 0;
      for (final entry in resource.partOf?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Organization.partOf',
            i,
          ),
        );
        i++;
      }
      // Organization.type (token)
      i = 0;
      for (final entry in resource.type?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Organization.type',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.OrganizationAffiliation _:
      // OrganizationAffiliation.active (token)
      i = 0;
      for (final entry in resource.active?.makeIterable<fhir.FhirBoolean>() ??
          <fhir.FhirBoolean>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'OrganizationAffiliation.active',
            i,
          ),
        );
        i++;
      }
      // OrganizationAffiliation.period (date)
      i = 0;
      for (final entry
          in resource.period?.makeIterable<fhir.Period>() ?? <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'OrganizationAffiliation.period',
            i,
          ),
        );
        i++;
      }
      // OrganizationAffiliation.contact.telecom.where(system='email') (token)
      i = 0;
      for (final entry in resource.contact
              ?.expand((e) => e.telecom ?? <fhir.ContactPoint>[])
              .where((e) => e.system?.valueString == 'email')
              .makeIterable<fhir.ContactPoint>() ??
          <fhir.ContactPoint>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "OrganizationAffiliation.contact.telecom.where(system='email')",
            i,
          ),
        );
        i++;
      }
      // OrganizationAffiliation.endpoint (reference)
      i = 0;
      for (final entry in resource.endpoint?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'OrganizationAffiliation.endpoint',
            i,
          ),
        );
        i++;
      }
      // OrganizationAffiliation.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'OrganizationAffiliation.identifier',
            i,
          ),
        );
        i++;
      }
      // OrganizationAffiliation.location (reference)
      i = 0;
      for (final entry in resource.location?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'OrganizationAffiliation.location',
            i,
          ),
        );
        i++;
      }
      // OrganizationAffiliation.network (reference)
      i = 0;
      for (final entry in resource.network?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'OrganizationAffiliation.network',
            i,
          ),
        );
        i++;
      }
      // OrganizationAffiliation.participatingOrganization (reference)
      i = 0;
      for (final entry in resource.participatingOrganization
              ?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'OrganizationAffiliation.participatingOrganization',
            i,
          ),
        );
        i++;
      }
      // OrganizationAffiliation.contact.telecom.where(system='phone') (token)
      i = 0;
      for (final entry in resource.contact
              ?.expand((e) => e.telecom ?? <fhir.ContactPoint>[])
              .where((e) => e.system?.valueString == 'phone')
              .makeIterable<fhir.ContactPoint>() ??
          <fhir.ContactPoint>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "OrganizationAffiliation.contact.telecom.where(system='phone')",
            i,
          ),
        );
        i++;
      }
      // OrganizationAffiliation.organization (reference)
      i = 0;
      for (final entry
          in resource.organization?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'OrganizationAffiliation.organization',
            i,
          ),
        );
        i++;
      }
      // OrganizationAffiliation.code (token)
      i = 0;
      for (final entry in resource.code?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'OrganizationAffiliation.code',
            i,
          ),
        );
        i++;
      }
      // OrganizationAffiliation.healthcareService (reference)
      i = 0;
      for (final entry
          in resource.healthcareService?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'OrganizationAffiliation.healthcareService',
            i,
          ),
        );
        i++;
      }
      // OrganizationAffiliation.specialty (token)
      i = 0;
      for (final entry
          in resource.specialty?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'OrganizationAffiliation.specialty',
            i,
          ),
        );
        i++;
      }
      // OrganizationAffiliation.contact.telecom (token)
      i = 0;
      for (final entry in resource.contact
              ?.expand((e) => e.telecom ?? <fhir.ContactPoint>[])
              .makeIterable<fhir.ContactPoint>() ??
          <fhir.ContactPoint>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'OrganizationAffiliation.contact.telecom',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.PackagedProductDefinition _:
      // PackagedProductDefinition.packaging.containedItem.item.reference (reference)
      i = 0;
      for (final entry in resource.packaging?.containedItem
              ?.map<fhir.CodeableReference?>((e) => e.item)
              .map<fhir.Reference?>((e) => e?.reference)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PackagedProductDefinition.packaging.containedItem.item.reference',
            i,
          ),
        );
        i++;
      }
      // PackagedProductDefinition.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PackagedProductDefinition.identifier',
            i,
          ),
        );
        i++;
      }
      // PackagedProductDefinition.name (token)
      i = 0;
      for (final entry in resource.name?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PackagedProductDefinition.name',
            i,
          ),
        );
        i++;
      }
      // PackagedProductDefinition.packageFor (reference)
      i = 0;
      for (final entry in resource.packageFor?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PackagedProductDefinition.packageFor',
            i,
          ),
        );
        i++;
      }
      // PackagedProductDefinition.status (token)
      i = 0;
      for (final entry
          in resource.status?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PackagedProductDefinition.status',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.Patient _:
      // Patient.active (token)
      i = 0;
      for (final entry in resource.active?.makeIterable<fhir.FhirBoolean>() ??
          <fhir.FhirBoolean>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Patient.active',
            i,
          ),
        );
        i++;
      }
      // Patient.address (string)
      i = 0;
      for (final entry in resource.address?.makeIterable<fhir.Address>() ??
          <fhir.Address>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Patient.address',
            i,
          ),
        );
        i++;
      }
      // Patient.address.city (string)
      i = 0;
      for (final entry in resource.address
              ?.map<fhir.FhirString?>((e) => e.city)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Patient.address.city',
            i,
          ),
        );
        i++;
      }
      // Patient.address.country (string)
      i = 0;
      for (final entry in resource.address
              ?.map<fhir.FhirString?>((e) => e.country)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Patient.address.country',
            i,
          ),
        );
        i++;
      }
      // Patient.address.postalCode (string)
      i = 0;
      for (final entry in resource.address
              ?.map<fhir.FhirString?>((e) => e.postalCode)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Patient.address.postalCode',
            i,
          ),
        );
        i++;
      }
      // Patient.address.state (string)
      i = 0;
      for (final entry in resource.address
              ?.map<fhir.FhirString?>((e) => e.state)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Patient.address.state',
            i,
          ),
        );
        i++;
      }
      // Patient.address.use (token)
      i = 0;
      for (final entry in resource.address
              ?.map<fhir.FhirCodeEnum?>((e) => e.use)
              .makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Patient.address.use',
            i,
          ),
        );
        i++;
      }
      // Patient.birthDate (date)
      i = 0;
      for (final entry in resource.birthDate?.makeIterable<fhir.FhirDate>() ??
          <fhir.FhirDate>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Patient.birthDate',
            i,
          ),
        );
        i++;
      }
      // Patient.deceased.exists() and Patient.deceased != false (token)
      i = 0;
      for (final entry in [
        fhir.FhirBoolean(resource.deceasedX != null &&
            resource.deceasedBoolean?.valueBoolean != false)
      ]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Patient.deceased.exists() and Patient.deceased != false',
            i,
          ),
        );
        i++;
      }
      // Patient.telecom.where(system='email') (token)
      i = 0;
      for (final entry in resource.telecom
              ?.where((e) => e.system?.valueString == 'email')
              .makeIterable<fhir.ContactPoint>() ??
          <fhir.ContactPoint>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "Patient.telecom.where(system='email')",
            i,
          ),
        );
        i++;
      }
      // Patient.name.family (string)
      i = 0;
      for (final entry in resource.name
              ?.map<fhir.FhirString?>((e) => e.family)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Patient.name.family',
            i,
          ),
        );
        i++;
      }
      // Patient.gender (token)
      i = 0;
      for (final entry in resource.gender?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Patient.gender',
            i,
          ),
        );
        i++;
      }
      // Patient.generalPractitioner (reference)
      i = 0;
      for (final entry
          in resource.generalPractitioner?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Patient.generalPractitioner',
            i,
          ),
        );
        i++;
      }
      // Patient.name.given (string)
      i = 0;
      for (final entry in resource.name
              ?.expand((e) => e.given ?? <fhir.FhirString>[])
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Patient.name.given',
            i,
          ),
        );
        i++;
      }
      // Patient.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Patient.identifier',
            i,
          ),
        );
        i++;
      }
      // Patient.communication.language (token)
      i = 0;
      for (final entry in resource.communication
              ?.map<fhir.CodeableConcept?>((e) => e.language)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Patient.communication.language',
            i,
          ),
        );
        i++;
      }
      // Patient.link.other (reference)
      i = 0;
      for (final entry in resource.link
              ?.map<fhir.Reference?>((e) => e.other)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Patient.link.other',
            i,
          ),
        );
        i++;
      }
      // Patient.name (string)
      i = 0;
      for (final entry in resource.name?.makeIterable<fhir.HumanName>() ??
          <fhir.HumanName>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Patient.name',
            i,
          ),
        );
        i++;
      }
      // Patient.managingOrganization (reference)
      i = 0;
      for (final entry
          in resource.managingOrganization?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Patient.managingOrganization',
            i,
          ),
        );
        i++;
      }
      // Patient.telecom.where(system='phone') (token)
      i = 0;
      for (final entry in resource.telecom
              ?.where((e) => e.system?.valueString == 'phone')
              .makeIterable<fhir.ContactPoint>() ??
          <fhir.ContactPoint>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "Patient.telecom.where(system='phone')",
            i,
          ),
        );
        i++;
      }
      // Patient.telecom (token)
      i = 0;
      for (final entry in resource.telecom?.makeIterable<fhir.ContactPoint>() ??
          <fhir.ContactPoint>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Patient.telecom',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.PaymentNotice _:
      // PaymentNotice.created (date)
      i = 0;
      for (final entry in resource.created.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PaymentNotice.created',
            i,
          ),
        );
        i++;
      }
      // PaymentNotice.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PaymentNotice.identifier',
            i,
          ),
        );
        i++;
      }
      // PaymentNotice.paymentStatus (token)
      i = 0;
      for (final entry
          in resource.paymentStatus?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PaymentNotice.paymentStatus',
            i,
          ),
        );
        i++;
      }
      // PaymentNotice.reporter (reference)
      i = 0;
      for (final entry in resource.reporter?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PaymentNotice.reporter',
            i,
          ),
        );
        i++;
      }
      // PaymentNotice.request (reference)
      i = 0;
      for (final entry in resource.request?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PaymentNotice.request',
            i,
          ),
        );
        i++;
      }
      // PaymentNotice.response (reference)
      i = 0;
      for (final entry in resource.response?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PaymentNotice.response',
            i,
          ),
        );
        i++;
      }
      // PaymentNotice.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PaymentNotice.status',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.PaymentReconciliation _:
      // PaymentReconciliation.allocation.account (reference)
      i = 0;
      for (final entry in resource.allocation
              ?.map<fhir.Reference?>((e) => e.account)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PaymentReconciliation.allocation.account',
            i,
          ),
        );
        i++;
      }
      // PaymentReconciliation.allocation.encounter (reference)
      i = 0;
      for (final entry in resource.allocation
              ?.map<fhir.Reference?>((e) => e.encounter)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PaymentReconciliation.allocation.encounter',
            i,
          ),
        );
        i++;
      }
      // PaymentReconciliation.created (date)
      i = 0;
      for (final entry in resource.created.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PaymentReconciliation.created',
            i,
          ),
        );
        i++;
      }
      // PaymentReconciliation.disposition (string)
      i = 0;
      for (final entry
          in resource.disposition?.makeIterable<fhir.FhirString>() ??
              <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PaymentReconciliation.disposition',
            i,
          ),
        );
        i++;
      }
      // PaymentReconciliation.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PaymentReconciliation.identifier',
            i,
          ),
        );
        i++;
      }
      // PaymentReconciliation.outcome (token)
      i = 0;
      for (final entry in resource.outcome?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PaymentReconciliation.outcome',
            i,
          ),
        );
        i++;
      }
      // PaymentReconciliation.paymentIssuer (reference)
      i = 0;
      for (final entry
          in resource.paymentIssuer?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PaymentReconciliation.paymentIssuer',
            i,
          ),
        );
        i++;
      }
      // PaymentReconciliation.request (reference)
      i = 0;
      for (final entry in resource.request?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PaymentReconciliation.request',
            i,
          ),
        );
        i++;
      }
      // PaymentReconciliation.requestor (reference)
      i = 0;
      for (final entry in resource.requestor?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PaymentReconciliation.requestor',
            i,
          ),
        );
        i++;
      }
      // PaymentReconciliation.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PaymentReconciliation.status',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.Permission _:
      // Permission.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Permission.identifier',
            i,
          ),
        );
        i++;
      }
      // Permission.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Permission.status',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.Person _:
      // Person.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Person.identifier',
            i,
          ),
        );
        i++;
      }
      // Person.link.target.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.link?.map<fhir.Reference?>((e) => e.target).where((e) {
                final ref = e?.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }).makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Person.link.target.where(resolve() is Patient)',
            i,
          ),
        );
        i++;
      }
      // Person.address (string)
      i = 0;
      for (final entry in resource.address?.makeIterable<fhir.Address>() ??
          <fhir.Address>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Person.address',
            i,
          ),
        );
        i++;
      }
      // Person.address.city (string)
      i = 0;
      for (final entry in resource.address
              ?.map<fhir.FhirString?>((e) => e.city)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Person.address.city',
            i,
          ),
        );
        i++;
      }
      // Person.address.country (string)
      i = 0;
      for (final entry in resource.address
              ?.map<fhir.FhirString?>((e) => e.country)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Person.address.country',
            i,
          ),
        );
        i++;
      }
      // Person.address.postalCode (string)
      i = 0;
      for (final entry in resource.address
              ?.map<fhir.FhirString?>((e) => e.postalCode)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Person.address.postalCode',
            i,
          ),
        );
        i++;
      }
      // Person.address.state (string)
      i = 0;
      for (final entry in resource.address
              ?.map<fhir.FhirString?>((e) => e.state)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Person.address.state',
            i,
          ),
        );
        i++;
      }
      // Person.address.use (token)
      i = 0;
      for (final entry in resource.address
              ?.map<fhir.FhirCodeEnum?>((e) => e.use)
              .makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Person.address.use',
            i,
          ),
        );
        i++;
      }
      // Person.birthDate (date)
      i = 0;
      for (final entry in resource.birthDate?.makeIterable<fhir.FhirDate>() ??
          <fhir.FhirDate>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Person.birthDate',
            i,
          ),
        );
        i++;
      }
      // Person.telecom.where(system='email') (token)
      i = 0;
      for (final entry in resource.telecom
              ?.where((e) => e.system?.valueString == 'email')
              .makeIterable<fhir.ContactPoint>() ??
          <fhir.ContactPoint>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "Person.telecom.where(system='email')",
            i,
          ),
        );
        i++;
      }
      // Person.gender (token)
      i = 0;
      for (final entry in resource.gender?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Person.gender',
            i,
          ),
        );
        i++;
      }
      // Person.telecom.where(system='phone') (token)
      i = 0;
      for (final entry in resource.telecom
              ?.where((e) => e.system?.valueString == 'phone')
              .makeIterable<fhir.ContactPoint>() ??
          <fhir.ContactPoint>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "Person.telecom.where(system='phone')",
            i,
          ),
        );
        i++;
      }
      // Person.name (string)
      i = 0;
      for (final entry in resource.name?.makeIterable<fhir.HumanName>() ??
          <fhir.HumanName>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Person.name',
            i,
          ),
        );
        i++;
      }
      // Person.telecom (token)
      i = 0;
      for (final entry in resource.telecom?.makeIterable<fhir.ContactPoint>() ??
          <fhir.ContactPoint>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Person.telecom',
            i,
          ),
        );
        i++;
      }
      // Person.deceased.exists() and Person.deceased != false (token)
      i = 0;
      for (final entry in [
        fhir.FhirBoolean(resource.deceasedX != null &&
            resource.deceasedBoolean?.valueBoolean != false)
      ]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Person.deceased.exists() and Person.deceased != false',
            i,
          ),
        );
        i++;
      }
      // Person.name.family (string)
      i = 0;
      for (final entry in resource.name
              ?.map<fhir.FhirString?>((e) => e.family)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Person.name.family',
            i,
          ),
        );
        i++;
      }
      // Person.name.given (string)
      i = 0;
      for (final entry in resource.name
              ?.expand((e) => e.given ?? <fhir.FhirString>[])
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Person.name.given',
            i,
          ),
        );
        i++;
      }
      // Person.link.target (reference)
      i = 0;
      for (final entry in resource.link
              ?.map<fhir.Reference?>((e) => e.target)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Person.link.target',
            i,
          ),
        );
        i++;
      }
      // Person.managingOrganization (reference)
      i = 0;
      for (final entry
          in resource.managingOrganization?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Person.managingOrganization',
            i,
          ),
        );
        i++;
      }
      // Person.link.target.where(resolve() is Practitioner) (reference)
      i = 0;
      for (final entry
          in resource.link?.map<fhir.Reference?>((e) => e.target).where((e) {
                final ref = e?.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Practitioner';
              }).makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Person.link.target.where(resolve() is Practitioner)',
            i,
          ),
        );
        i++;
      }
      // Person.link.target.where(resolve() is RelatedPerson) (reference)
      i = 0;
      for (final entry
          in resource.link?.map<fhir.Reference?>((e) => e.target).where((e) {
                final ref = e?.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'RelatedPerson';
              }).makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Person.link.target.where(resolve() is RelatedPerson)',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.PersonalRelationship _:
      // PersonalRelationship.source.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.source.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PersonalRelationship.source.where(resolve() is Patient)',
            i,
          ),
        );
        i++;
      }
      // PersonalRelationship.target.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.target.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PersonalRelationship.target.where(resolve() is Patient)',
            i,
          ),
        );
        i++;
      }
      // PersonalRelationship.relationshipType (token)
      i = 0;
      for (final entry
          in resource.relationshipType.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PersonalRelationship.relationshipType',
            i,
          ),
        );
        i++;
      }
      // PersonalRelationship.source (reference)
      i = 0;
      for (final entry in resource.source.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PersonalRelationship.source',
            i,
          ),
        );
        i++;
      }
      // PersonalRelationship.target (reference)
      i = 0;
      for (final entry in resource.target.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PersonalRelationship.target',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.PlanDefinition _:
      // PlanDefinition.relatedArtifact.where(type='composed-of').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'composed-of')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "PlanDefinition.relatedArtifact.where(type='composed-of').resource",
            i,
          ),
        );
        i++;
      }
      // PlanDefinition.useContext.code (token)
      i = 0;
      for (final entry in resource.useContext
              ?.map<fhir.Coding?>((e) => e.code)
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PlanDefinition.useContext.code',
            i,
          ),
        );
        i++;
      }
      // PlanDefinition.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PlanDefinition.date',
            i,
          ),
        );
        i++;
      }
      // PlanDefinition.relatedArtifact.where(type='depends-on').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'depends-on')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "PlanDefinition.relatedArtifact.where(type='depends-on').resource",
            i,
          ),
        );
        i++;
      }
      // PlanDefinition.library (reference)
      i = 0;
      for (final entry
          in resource.library_?.makeIterable<fhir.FhirCanonical>() ??
              <fhir.FhirCanonical>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PlanDefinition.library',
            i,
          ),
        );
        i++;
      }
      // PlanDefinition.relatedArtifact.where(type='derived-from').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'derived-from')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "PlanDefinition.relatedArtifact.where(type='derived-from').resource",
            i,
          ),
        );
        i++;
      }
      // PlanDefinition.description (string)
      i = 0;
      for (final entry
          in resource.description?.makeIterable<fhir.FhirMarkdown>() ??
              <fhir.FhirMarkdown>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PlanDefinition.description',
            i,
          ),
        );
        i++;
      }
      // PlanDefinition.effectivePeriod (date)
      i = 0;
      for (final entry
          in resource.effectivePeriod?.makeIterable<fhir.Period>() ??
              <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PlanDefinition.effectivePeriod',
            i,
          ),
        );
        i++;
      }
      // PlanDefinition.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PlanDefinition.identifier',
            i,
          ),
        );
        i++;
      }
      // PlanDefinition.jurisdiction (token)
      i = 0;
      for (final entry
          in resource.jurisdiction?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PlanDefinition.jurisdiction',
            i,
          ),
        );
        i++;
      }
      // PlanDefinition.name (string)
      i = 0;
      for (final entry in resource.name?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PlanDefinition.name',
            i,
          ),
        );
        i++;
      }
      // PlanDefinition.relatedArtifact.where(type='predecessor').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'predecessor')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "PlanDefinition.relatedArtifact.where(type='predecessor').resource",
            i,
          ),
        );
        i++;
      }
      // PlanDefinition.publisher (string)
      i = 0;
      for (final entry in resource.publisher?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PlanDefinition.publisher',
            i,
          ),
        );
        i++;
      }
      // PlanDefinition.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PlanDefinition.status',
            i,
          ),
        );
        i++;
      }
      // PlanDefinition.relatedArtifact.where(type='successor').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'successor')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "PlanDefinition.relatedArtifact.where(type='successor').resource",
            i,
          ),
        );
        i++;
      }
      // PlanDefinition.title (string)
      i = 0;
      for (final entry in resource.title?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PlanDefinition.title',
            i,
          ),
        );
        i++;
      }
      // PlanDefinition.topic (token)
      i = 0;
      for (final entry
          in resource.topic?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PlanDefinition.topic',
            i,
          ),
        );
        i++;
      }
      // PlanDefinition.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PlanDefinition.url',
            i,
          ),
        );
        i++;
      }
      // PlanDefinition.version (token)
      i = 0;
      for (final entry in resource.version?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PlanDefinition.version',
            i,
          ),
        );
        i++;
      }
      // PlanDefinition.useContext (composite)
      i = 0;
      for (final entry
          in resource.useContext?.makeIterable<fhir.UsageContext>() ??
              <fhir.UsageContext>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PlanDefinition.useContext',
            i,
          ),
        );
        i++;
      }
      // PlanDefinition.action.definition.ofType(canonical) (reference)
      i = 0;
      for (final entry in resource.action
              ?.map<fhir.FhirCanonical?>((e) => e.definitionCanonical)
              .makeIterable<fhir.FhirCanonical>() ??
          <fhir.FhirCanonical>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PlanDefinition.action.definition.ofType(canonical)',
            i,
          ),
        );
        i++;
      }
      // PlanDefinition.action.definition.ofType(uri) (reference)
      i = 0;
      for (final entry in resource.action
              ?.map<fhir.FhirUri?>((e) => e.definitionUri)
              .makeIterable<fhir.FhirUri>() ??
          <fhir.FhirUri>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PlanDefinition.action.definition.ofType(uri)',
            i,
          ),
        );
        i++;
      }
      // SKIPPED (unsupported FHIRPath): // PlanDefinition.subject as canonical (reference)
      // SKIPPED (unsupported FHIRPath): i = 0;
      // SKIPPED (unsupported FHIRPath): for (final entry in resource.subject as canonical ?? <fhir.FhirBase>[]) {
      // SKIPPED (unsupported FHIRPath): searchParameterLists.referenceParams.addAll(
      // SKIPPED (unsupported FHIRPath): entry.toReferenceSearchParameter(
      // SKIPPED (unsupported FHIRPath): resourceType, id, lastUpdated, 'PlanDefinition.subject as canonical', i,
      // SKIPPED (unsupported FHIRPath): ),
      // SKIPPED (unsupported FHIRPath): );
      // SKIPPED (unsupported FHIRPath): i++;
      // SKIPPED (unsupported FHIRPath): }
      // SKIPPED (unsupported FHIRPath): // PlanDefinition.subject as CodeableConcept (token)
      // SKIPPED (unsupported FHIRPath): i = 0;
      // SKIPPED (unsupported FHIRPath): for (final entry in resource.subject as CodeableConcept ?? <fhir.FhirBase>[]) {
      // SKIPPED (unsupported FHIRPath): searchParameterLists.tokenParams.addAll(
      // SKIPPED (unsupported FHIRPath): entry.toTokenSearchParameter(
      // SKIPPED (unsupported FHIRPath): resourceType, id, lastUpdated, 'PlanDefinition.subject as CodeableConcept', i,
      // SKIPPED (unsupported FHIRPath): ),
      // SKIPPED (unsupported FHIRPath): );
      // SKIPPED (unsupported FHIRPath): i++;
      // SKIPPED (unsupported FHIRPath): }
      // SKIPPED (unsupported FHIRPath): // PlanDefinition.subject as Reference (reference)
      // SKIPPED (unsupported FHIRPath): i = 0;
      // SKIPPED (unsupported FHIRPath): for (final entry in resource.subject as Reference ?? <fhir.FhirBase>[]) {
      // SKIPPED (unsupported FHIRPath): searchParameterLists.referenceParams.addAll(
      // SKIPPED (unsupported FHIRPath): entry.toReferenceSearchParameter(
      // SKIPPED (unsupported FHIRPath): resourceType, id, lastUpdated, 'PlanDefinition.subject as Reference', i,
      // SKIPPED (unsupported FHIRPath): ),
      // SKIPPED (unsupported FHIRPath): );
      // SKIPPED (unsupported FHIRPath): i++;
      // SKIPPED (unsupported FHIRPath): }
      // PlanDefinition.type (token)
      i = 0;
      for (final entry in resource.type?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PlanDefinition.type',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.Practitioner _:
      // Practitioner.address (string)
      i = 0;
      for (final entry in resource.address?.makeIterable<fhir.Address>() ??
          <fhir.Address>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Practitioner.address',
            i,
          ),
        );
        i++;
      }
      // Practitioner.address.city (string)
      i = 0;
      for (final entry in resource.address
              ?.map<fhir.FhirString?>((e) => e.city)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Practitioner.address.city',
            i,
          ),
        );
        i++;
      }
      // Practitioner.address.country (string)
      i = 0;
      for (final entry in resource.address
              ?.map<fhir.FhirString?>((e) => e.country)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Practitioner.address.country',
            i,
          ),
        );
        i++;
      }
      // Practitioner.address.postalCode (string)
      i = 0;
      for (final entry in resource.address
              ?.map<fhir.FhirString?>((e) => e.postalCode)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Practitioner.address.postalCode',
            i,
          ),
        );
        i++;
      }
      // Practitioner.address.state (string)
      i = 0;
      for (final entry in resource.address
              ?.map<fhir.FhirString?>((e) => e.state)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Practitioner.address.state',
            i,
          ),
        );
        i++;
      }
      // Practitioner.address.use (token)
      i = 0;
      for (final entry in resource.address
              ?.map<fhir.FhirCodeEnum?>((e) => e.use)
              .makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Practitioner.address.use',
            i,
          ),
        );
        i++;
      }
      // Practitioner.telecom.where(system='email') (token)
      i = 0;
      for (final entry in resource.telecom
              ?.where((e) => e.system?.valueString == 'email')
              .makeIterable<fhir.ContactPoint>() ??
          <fhir.ContactPoint>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "Practitioner.telecom.where(system='email')",
            i,
          ),
        );
        i++;
      }
      // Practitioner.name.family (string)
      i = 0;
      for (final entry in resource.name
              ?.map<fhir.FhirString?>((e) => e.family)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Practitioner.name.family',
            i,
          ),
        );
        i++;
      }
      // Practitioner.gender (token)
      i = 0;
      for (final entry in resource.gender?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Practitioner.gender',
            i,
          ),
        );
        i++;
      }
      // Practitioner.name.given (string)
      i = 0;
      for (final entry in resource.name
              ?.expand((e) => e.given ?? <fhir.FhirString>[])
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Practitioner.name.given',
            i,
          ),
        );
        i++;
      }
      // Practitioner.telecom.where(system='phone') (token)
      i = 0;
      for (final entry in resource.telecom
              ?.where((e) => e.system?.valueString == 'phone')
              .makeIterable<fhir.ContactPoint>() ??
          <fhir.ContactPoint>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "Practitioner.telecom.where(system='phone')",
            i,
          ),
        );
        i++;
      }
      // Practitioner.name (string)
      i = 0;
      for (final entry in resource.name?.makeIterable<fhir.HumanName>() ??
          <fhir.HumanName>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Practitioner.name',
            i,
          ),
        );
        i++;
      }
      // Practitioner.telecom (token)
      i = 0;
      for (final entry in resource.telecom?.makeIterable<fhir.ContactPoint>() ??
          <fhir.ContactPoint>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Practitioner.telecom',
            i,
          ),
        );
        i++;
      }
      // Practitioner.active (token)
      i = 0;
      for (final entry in resource.active?.makeIterable<fhir.FhirBoolean>() ??
          <fhir.FhirBoolean>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Practitioner.active',
            i,
          ),
        );
        i++;
      }
      // Practitioner.communication.language (token)
      i = 0;
      for (final entry in resource.communication
              ?.map<fhir.CodeableConcept?>((e) => e.language)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Practitioner.communication.language',
            i,
          ),
        );
        i++;
      }
      // Practitioner.deceased.exists() and Practitioner.deceased != false (token)
      i = 0;
      for (final entry in [
        fhir.FhirBoolean(resource.deceasedX != null &&
            resource.deceasedBoolean?.valueBoolean != false)
      ]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Practitioner.deceased.exists() and Practitioner.deceased != false',
            i,
          ),
        );
        i++;
      }
      // Practitioner.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Practitioner.identifier',
            i,
          ),
        );
        i++;
      }
      // Practitioner.qualification.identifier (token)
      i = 0;
      for (final entry in resource.qualification
              ?.expand((e) => e.identifier ?? <fhir.Identifier>[])
              .makeIterable<fhir.Identifier>() ??
          <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Practitioner.qualification.identifier',
            i,
          ),
        );
        i++;
      }
      // Practitioner.qualification.code (token)
      i = 0;
      for (final entry in resource.qualification
              ?.map<fhir.CodeableConcept?>((e) => e.code)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Practitioner.qualification.code',
            i,
          ),
        );
        i++;
      }
      // Practitioner.qualification.period (date)
      i = 0;
      for (final entry in resource.qualification
              ?.map<fhir.Period?>((e) => e.period)
              .makeIterable<fhir.Period>() ??
          <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Practitioner.qualification.period',
            i,
          ),
        );
        i++;
      }
      // Practitioner.qualification (composite)
      i = 0;
      for (final entry in resource.qualification
              ?.makeIterable<fhir.PractitionerQualification>() ??
          <fhir.PractitionerQualification>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Practitioner.qualification',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.PractitionerRole _:
      // PractitionerRole.contact.telecom.where(system='email') (token)
      i = 0;
      for (final entry in resource.contact
              ?.expand((e) => e.telecom ?? <fhir.ContactPoint>[])
              .where((e) => e.system?.valueString == 'email')
              .makeIterable<fhir.ContactPoint>() ??
          <fhir.ContactPoint>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "PractitionerRole.contact.telecom.where(system='email')",
            i,
          ),
        );
        i++;
      }
      // PractitionerRole.contact.telecom.where(system='phone') (token)
      i = 0;
      for (final entry in resource.contact
              ?.expand((e) => e.telecom ?? <fhir.ContactPoint>[])
              .where((e) => e.system?.valueString == 'phone')
              .makeIterable<fhir.ContactPoint>() ??
          <fhir.ContactPoint>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "PractitionerRole.contact.telecom.where(system='phone')",
            i,
          ),
        );
        i++;
      }
      // PractitionerRole.contact.telecom (token)
      i = 0;
      for (final entry in resource.contact
              ?.expand((e) => e.telecom ?? <fhir.ContactPoint>[])
              .makeIterable<fhir.ContactPoint>() ??
          <fhir.ContactPoint>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PractitionerRole.contact.telecom',
            i,
          ),
        );
        i++;
      }
      // PractitionerRole.active (token)
      i = 0;
      for (final entry in resource.active?.makeIterable<fhir.FhirBoolean>() ??
          <fhir.FhirBoolean>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PractitionerRole.active',
            i,
          ),
        );
        i++;
      }
      // PractitionerRole.characteristic (token)
      i = 0;
      for (final entry
          in resource.characteristic?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PractitionerRole.characteristic',
            i,
          ),
        );
        i++;
      }
      // PractitionerRole.communication (token)
      i = 0;
      for (final entry
          in resource.communication?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PractitionerRole.communication',
            i,
          ),
        );
        i++;
      }
      // PractitionerRole.period (date)
      i = 0;
      for (final entry
          in resource.period?.makeIterable<fhir.Period>() ?? <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PractitionerRole.period',
            i,
          ),
        );
        i++;
      }
      // PractitionerRole.endpoint (reference)
      i = 0;
      for (final entry in resource.endpoint?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PractitionerRole.endpoint',
            i,
          ),
        );
        i++;
      }
      // PractitionerRole.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PractitionerRole.identifier',
            i,
          ),
        );
        i++;
      }
      // PractitionerRole.location (reference)
      i = 0;
      for (final entry in resource.location?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PractitionerRole.location',
            i,
          ),
        );
        i++;
      }
      // PractitionerRole.network (reference)
      i = 0;
      for (final entry in resource.network?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PractitionerRole.network',
            i,
          ),
        );
        i++;
      }
      // PractitionerRole.organization (reference)
      i = 0;
      for (final entry
          in resource.organization?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PractitionerRole.organization',
            i,
          ),
        );
        i++;
      }
      // PractitionerRole.practitioner (reference)
      i = 0;
      for (final entry
          in resource.practitioner?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PractitionerRole.practitioner',
            i,
          ),
        );
        i++;
      }
      // PractitionerRole.code (token)
      i = 0;
      for (final entry in resource.code?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PractitionerRole.code',
            i,
          ),
        );
        i++;
      }
      // PractitionerRole.healthcareService (reference)
      i = 0;
      for (final entry
          in resource.healthcareService?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PractitionerRole.healthcareService',
            i,
          ),
        );
        i++;
      }
      // PractitionerRole.specialty (token)
      i = 0;
      for (final entry
          in resource.specialty?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'PractitionerRole.specialty',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.Procedure _:
      // Procedure.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Procedure.identifier',
            i,
          ),
        );
        i++;
      }
      // Procedure.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Procedure.subject.where(resolve() is Patient)',
            i,
          ),
        );
        i++;
      }
      // Procedure.code (token)
      i = 0;
      for (final entry in resource.code?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Procedure.code',
            i,
          ),
        );
        i++;
      }
      // Procedure.occurrence.ofType(dateTime) (date)
      i = 0;
      for (final entry
          in resource.occurrenceDateTime?.makeIterable<fhir.FhirDateTime>() ??
              <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Procedure.occurrence.ofType(dateTime)',
            i,
          ),
        );
        i++;
      }
      // Procedure.occurrence.ofType(Period) (date)
      i = 0;
      for (final entry
          in resource.occurrencePeriod?.makeIterable<fhir.Period>() ??
              <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Procedure.occurrence.ofType(Period)',
            i,
          ),
        );
        i++;
      }
      // Procedure.occurrence.ofType(Timing) (date)
      i = 0;
      for (final entry
          in resource.occurrenceTiming?.makeIterable<fhir.Timing>() ??
              <fhir.Timing>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Procedure.occurrence.ofType(Timing)',
            i,
          ),
        );
        i++;
      }
      // Procedure.encounter (reference)
      i = 0;
      for (final entry in resource.encounter?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Procedure.encounter',
            i,
          ),
        );
        i++;
      }
      // Procedure.basedOn (reference)
      i = 0;
      for (final entry in resource.basedOn?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Procedure.basedOn',
            i,
          ),
        );
        i++;
      }
      // Procedure.category (token)
      i = 0;
      for (final entry
          in resource.category?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Procedure.category',
            i,
          ),
        );
        i++;
      }
      // Procedure.location (reference)
      i = 0;
      for (final entry in resource.location?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Procedure.location',
            i,
          ),
        );
        i++;
      }
      // Procedure.partOf (reference)
      i = 0;
      for (final entry in resource.partOf?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Procedure.partOf',
            i,
          ),
        );
        i++;
      }
      // Procedure.performer.actor (reference)
      i = 0;
      for (final entry in resource.performer
              ?.map<fhir.Reference?>((e) => e.actor)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Procedure.performer.actor',
            i,
          ),
        );
        i++;
      }
      // Procedure.reason.concept (token)
      i = 0;
      for (final entry in resource.reason
              ?.map<fhir.CodeableConcept?>((e) => e.concept)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Procedure.reason.concept',
            i,
          ),
        );
        i++;
      }
      // Procedure.reason.reference (reference)
      i = 0;
      for (final entry in resource.reason
              ?.map<fhir.Reference?>((e) => e.reference)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Procedure.reason.reference',
            i,
          ),
        );
        i++;
      }
      // Procedure.report (reference)
      i = 0;
      for (final entry in resource.report?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Procedure.report',
            i,
          ),
        );
        i++;
      }
      // Procedure.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Procedure.status',
            i,
          ),
        );
        i++;
      }
      // Procedure.subject (reference)
      i = 0;
      for (final entry in resource.subject.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Procedure.subject',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.Provenance _:
      // Provenance.patient (reference)
      i = 0;
      for (final entry in resource.patient?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Provenance.patient',
            i,
          ),
        );
        i++;
      }
      // Provenance.encounter (reference)
      i = 0;
      for (final entry in resource.encounter?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Provenance.encounter',
            i,
          ),
        );
        i++;
      }
      // Provenance.activity (token)
      i = 0;
      for (final entry
          in resource.activity?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Provenance.activity',
            i,
          ),
        );
        i++;
      }
      // Provenance.agent.who (reference)
      i = 0;
      for (final entry in resource.agent
              .map<fhir.Reference?>((e) => e.who)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Provenance.agent.who',
            i,
          ),
        );
        i++;
      }
      // Provenance.agent.role (token)
      i = 0;
      for (final entry in resource.agent
              .expand((e) => e.role ?? <fhir.CodeableConcept>[])
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Provenance.agent.role',
            i,
          ),
        );
        i++;
      }
      // Provenance.agent.type (token)
      i = 0;
      for (final entry in resource.agent
              .map<fhir.CodeableConcept?>((e) => e.type)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Provenance.agent.type',
            i,
          ),
        );
        i++;
      }
      // Provenance.basedOn (reference)
      i = 0;
      for (final entry in resource.basedOn?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Provenance.basedOn',
            i,
          ),
        );
        i++;
      }
      // Provenance.entity.what (reference)
      i = 0;
      for (final entry in resource.entity
              ?.map<fhir.Reference?>((e) => e.what)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Provenance.entity.what',
            i,
          ),
        );
        i++;
      }
      // Provenance.location (reference)
      i = 0;
      for (final entry in resource.location?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Provenance.location',
            i,
          ),
        );
        i++;
      }
      // Provenance.recorded (date)
      i = 0;
      for (final entry in resource.recorded?.makeIterable<fhir.FhirInstant>() ??
          <fhir.FhirInstant>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Provenance.recorded',
            i,
          ),
        );
        i++;
      }
      // Provenance.signature.type (token)
      i = 0;
      for (final entry in resource.signature
              ?.expand((e) => e.type ?? <fhir.Coding>[])
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Provenance.signature.type',
            i,
          ),
        );
        i++;
      }
      // Provenance.target (reference)
      i = 0;
      for (final entry in resource.target.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Provenance.target',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.Questionnaire _:
      // Questionnaire.useContext.code (token)
      i = 0;
      for (final entry in resource.useContext
              ?.map<fhir.Coding?>((e) => e.code)
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Questionnaire.useContext.code',
            i,
          ),
        );
        i++;
      }
      // Questionnaire.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Questionnaire.date',
            i,
          ),
        );
        i++;
      }
      // Questionnaire.description (string)
      i = 0;
      for (final entry
          in resource.description?.makeIterable<fhir.FhirMarkdown>() ??
              <fhir.FhirMarkdown>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Questionnaire.description',
            i,
          ),
        );
        i++;
      }
      // Questionnaire.effectivePeriod (date)
      i = 0;
      for (final entry
          in resource.effectivePeriod?.makeIterable<fhir.Period>() ??
              <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Questionnaire.effectivePeriod',
            i,
          ),
        );
        i++;
      }
      // Questionnaire.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Questionnaire.identifier',
            i,
          ),
        );
        i++;
      }
      // Questionnaire.jurisdiction (token)
      i = 0;
      for (final entry
          in resource.jurisdiction?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Questionnaire.jurisdiction',
            i,
          ),
        );
        i++;
      }
      // Questionnaire.name (string)
      i = 0;
      for (final entry in resource.name?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Questionnaire.name',
            i,
          ),
        );
        i++;
      }
      // Questionnaire.publisher (string)
      i = 0;
      for (final entry in resource.publisher?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Questionnaire.publisher',
            i,
          ),
        );
        i++;
      }
      // Questionnaire.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Questionnaire.status',
            i,
          ),
        );
        i++;
      }
      // Questionnaire.title (string)
      i = 0;
      for (final entry in resource.title?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Questionnaire.title',
            i,
          ),
        );
        i++;
      }
      // Questionnaire.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Questionnaire.url',
            i,
          ),
        );
        i++;
      }
      // Questionnaire.version (token)
      i = 0;
      for (final entry in resource.version?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Questionnaire.version',
            i,
          ),
        );
        i++;
      }
      // Questionnaire.useContext (composite)
      i = 0;
      for (final entry
          in resource.useContext?.makeIterable<fhir.UsageContext>() ??
              <fhir.UsageContext>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Questionnaire.useContext',
            i,
          ),
        );
        i++;
      }
      // Questionnaire.code (token)
      i = 0;
      for (final entry
          in resource.code?.makeIterable<fhir.Coding>() ?? <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Questionnaire.code',
            i,
          ),
        );
        i++;
      }
      // Questionnaire.item.code (token)
      i = 0;
      for (final entry in resource.item
              ?.expand((e) => e.code ?? <fhir.Coding>[])
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Questionnaire.item.code',
            i,
          ),
        );
        i++;
      }
      // Questionnaire.item.definition (uri)
      i = 0;
      for (final entry in resource.item
              ?.map<fhir.FhirUri?>((e) => e.definition)
              .makeIterable<fhir.FhirUri>() ??
          <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Questionnaire.item.definition',
            i,
          ),
        );
        i++;
      }
      // Questionnaire.subjectType (token)
      i = 0;
      for (final entry in resource.subjectType?.makeIterable<fhir.FhirCode>() ??
          <fhir.FhirCode>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Questionnaire.subjectType',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.QuestionnaireResponse _:
      // QuestionnaireResponse.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'QuestionnaireResponse.identifier',
            i,
          ),
        );
        i++;
      }
      // QuestionnaireResponse.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject?.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'QuestionnaireResponse.subject.where(resolve() is Patient)',
            i,
          ),
        );
        i++;
      }
      // QuestionnaireResponse.encounter (reference)
      i = 0;
      for (final entry in resource.encounter?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'QuestionnaireResponse.encounter',
            i,
          ),
        );
        i++;
      }
      // QuestionnaireResponse.item.answer.value.ofType(boolean) (token)
      i = 0;
      for (final entry in resource.item
              ?.expand((e) => e.answer ?? <fhir.QuestionnaireResponseAnswer>[])
              .map<fhir.FhirBoolean?>((e) => e.valueBoolean)
              .makeIterable<fhir.FhirBoolean>() ??
          <fhir.FhirBoolean>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'QuestionnaireResponse.item.answer.value.ofType(boolean)',
            i,
          ),
        );
        i++;
      }
      // QuestionnaireResponse.item.answer.value.ofType(Coding) (token)
      i = 0;
      for (final entry in resource.item
              ?.expand((e) => e.answer ?? <fhir.QuestionnaireResponseAnswer>[])
              .map<fhir.Coding?>((e) => e.valueCoding)
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'QuestionnaireResponse.item.answer.value.ofType(Coding)',
            i,
          ),
        );
        i++;
      }
      // QuestionnaireResponse.item.answer.value.ofType(date) (date)
      i = 0;
      for (final entry in resource.item
              ?.expand((e) => e.answer ?? <fhir.QuestionnaireResponseAnswer>[])
              .map<fhir.FhirDate?>((e) => e.valueDate)
              .makeIterable<fhir.FhirDate>() ??
          <fhir.FhirDate>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'QuestionnaireResponse.item.answer.value.ofType(date)',
            i,
          ),
        );
        i++;
      }
      // QuestionnaireResponse.item.answer.value.ofType(dateTime) (date)
      i = 0;
      for (final entry in resource.item
              ?.expand((e) => e.answer ?? <fhir.QuestionnaireResponseAnswer>[])
              .map<fhir.FhirDateTime?>((e) => e.valueDateTime)
              .makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'QuestionnaireResponse.item.answer.value.ofType(dateTime)',
            i,
          ),
        );
        i++;
      }
      // QuestionnaireResponse.item.answer.value.ofType(integer) (number)
      i = 0;
      for (final entry in resource.item
              ?.expand((e) => e.answer ?? <fhir.QuestionnaireResponseAnswer>[])
              .map<fhir.FhirInteger?>((e) => e.valueInteger)
              .makeIterable<fhir.FhirInteger>() ??
          <fhir.FhirInteger>[]) {
        searchParameterLists.numberParams.addAll(
          entry.toNumberSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'QuestionnaireResponse.item.answer.value.ofType(integer)',
            i,
          ),
        );
        i++;
      }
      // QuestionnaireResponse.item.answer.value.ofType(decimal) (number)
      i = 0;
      for (final entry in resource.item
              ?.expand((e) => e.answer ?? <fhir.QuestionnaireResponseAnswer>[])
              .map<fhir.FhirDecimal?>((e) => e.valueDecimal)
              .makeIterable<fhir.FhirDecimal>() ??
          <fhir.FhirDecimal>[]) {
        searchParameterLists.numberParams.addAll(
          entry.toNumberSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'QuestionnaireResponse.item.answer.value.ofType(decimal)',
            i,
          ),
        );
        i++;
      }
      // QuestionnaireResponse.item.answer.value.ofType(Quantity) (quantity)
      i = 0;
      for (final entry in resource.item
              ?.expand((e) => e.answer ?? <fhir.QuestionnaireResponseAnswer>[])
              .map<fhir.Quantity?>((e) => e.valueQuantity)
              .makeIterable<fhir.Quantity>() ??
          <fhir.Quantity>[]) {
        searchParameterLists.quantityParams.addAll(
          entry.toQuantitySearchParameter(
            resourceType,
            id,
            lastUpdated,
            'QuestionnaireResponse.item.answer.value.ofType(Quantity)',
            i,
          ),
        );
        i++;
      }
      // QuestionnaireResponse.item.answer.value.ofType(Reference) (reference)
      i = 0;
      for (final entry in resource.item
              ?.expand((e) => e.answer ?? <fhir.QuestionnaireResponseAnswer>[])
              .map<fhir.Reference?>((e) => e.valueReference)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'QuestionnaireResponse.item.answer.value.ofType(Reference)',
            i,
          ),
        );
        i++;
      }
      // QuestionnaireResponse.item.answer.value.ofType(string) (string)
      i = 0;
      for (final entry in resource.item
              ?.expand((e) => e.answer ?? <fhir.QuestionnaireResponseAnswer>[])
              .map<fhir.FhirString?>((e) => e.valueString)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'QuestionnaireResponse.item.answer.value.ofType(string)',
            i,
          ),
        );
        i++;
      }
      // QuestionnaireResponse.author (reference)
      i = 0;
      for (final entry in resource.author?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'QuestionnaireResponse.author',
            i,
          ),
        );
        i++;
      }
      // QuestionnaireResponse.authored (date)
      i = 0;
      for (final entry
          in resource.authored?.makeIterable<fhir.FhirDateTime>() ??
              <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'QuestionnaireResponse.authored',
            i,
          ),
        );
        i++;
      }
      // QuestionnaireResponse.basedOn (reference)
      i = 0;
      for (final entry in resource.basedOn?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'QuestionnaireResponse.basedOn',
            i,
          ),
        );
        i++;
      }
      // QuestionnaireResponse.item.linkId (token)
      i = 0;
      for (final entry in resource.item
              ?.map<fhir.FhirString?>((e) => e.linkId)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'QuestionnaireResponse.item.linkId',
            i,
          ),
        );
        i++;
      }
      // QuestionnaireResponse.partOf (reference)
      i = 0;
      for (final entry in resource.partOf?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'QuestionnaireResponse.partOf',
            i,
          ),
        );
        i++;
      }
      // QuestionnaireResponse.questionnaire (reference)
      i = 0;
      for (final entry
          in resource.questionnaire.makeIterable<fhir.FhirCanonical>() ??
              <fhir.FhirCanonical>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'QuestionnaireResponse.questionnaire',
            i,
          ),
        );
        i++;
      }
      // QuestionnaireResponse.source (reference)
      i = 0;
      for (final entry in resource.source?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'QuestionnaireResponse.source',
            i,
          ),
        );
        i++;
      }
      // QuestionnaireResponse.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'QuestionnaireResponse.status',
            i,
          ),
        );
        i++;
      }
      // QuestionnaireResponse.subject (reference)
      i = 0;
      for (final entry in resource.subject?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'QuestionnaireResponse.subject',
            i,
          ),
        );
        i++;
      }
      // QuestionnaireResponse (composite)
      i = 0;
      for (final entry in resource.makeIterable<fhir.QuestionnaireResponse>() ??
          <fhir.QuestionnaireResponse>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'QuestionnaireResponse',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.RegulatedAuthorization _:
      // RegulatedAuthorization.case.identifier (token)
      i = 0;
      for (final entry
          in resource.case_?.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RegulatedAuthorization.case.identifier',
            i,
          ),
        );
        i++;
      }
      // RegulatedAuthorization.case.type (token)
      i = 0;
      for (final entry
          in resource.case_?.type?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RegulatedAuthorization.case.type',
            i,
          ),
        );
        i++;
      }
      // RegulatedAuthorization.holder (reference)
      i = 0;
      for (final entry in resource.holder?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RegulatedAuthorization.holder',
            i,
          ),
        );
        i++;
      }
      // RegulatedAuthorization.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RegulatedAuthorization.identifier',
            i,
          ),
        );
        i++;
      }
      // RegulatedAuthorization.region (token)
      i = 0;
      for (final entry
          in resource.region?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RegulatedAuthorization.region',
            i,
          ),
        );
        i++;
      }
      // RegulatedAuthorization.status (token)
      i = 0;
      for (final entry
          in resource.status?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RegulatedAuthorization.status',
            i,
          ),
        );
        i++;
      }
      // RegulatedAuthorization.subject (reference)
      i = 0;
      for (final entry in resource.subject?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RegulatedAuthorization.subject',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.RelatedPerson _:
      // RelatedPerson.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RelatedPerson.identifier',
            i,
          ),
        );
        i++;
      }
      // RelatedPerson.patient (reference)
      i = 0;
      for (final entry in resource.patient.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RelatedPerson.patient',
            i,
          ),
        );
        i++;
      }
      // RelatedPerson.address (string)
      i = 0;
      for (final entry in resource.address?.makeIterable<fhir.Address>() ??
          <fhir.Address>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RelatedPerson.address',
            i,
          ),
        );
        i++;
      }
      // RelatedPerson.address.city (string)
      i = 0;
      for (final entry in resource.address
              ?.map<fhir.FhirString?>((e) => e.city)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RelatedPerson.address.city',
            i,
          ),
        );
        i++;
      }
      // RelatedPerson.address.country (string)
      i = 0;
      for (final entry in resource.address
              ?.map<fhir.FhirString?>((e) => e.country)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RelatedPerson.address.country',
            i,
          ),
        );
        i++;
      }
      // RelatedPerson.address.postalCode (string)
      i = 0;
      for (final entry in resource.address
              ?.map<fhir.FhirString?>((e) => e.postalCode)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RelatedPerson.address.postalCode',
            i,
          ),
        );
        i++;
      }
      // RelatedPerson.address.state (string)
      i = 0;
      for (final entry in resource.address
              ?.map<fhir.FhirString?>((e) => e.state)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RelatedPerson.address.state',
            i,
          ),
        );
        i++;
      }
      // RelatedPerson.address.use (token)
      i = 0;
      for (final entry in resource.address
              ?.map<fhir.FhirCodeEnum?>((e) => e.use)
              .makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RelatedPerson.address.use',
            i,
          ),
        );
        i++;
      }
      // RelatedPerson.birthDate (date)
      i = 0;
      for (final entry in resource.birthDate?.makeIterable<fhir.FhirDate>() ??
          <fhir.FhirDate>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RelatedPerson.birthDate',
            i,
          ),
        );
        i++;
      }
      // RelatedPerson.telecom.where(system='email') (token)
      i = 0;
      for (final entry in resource.telecom
              ?.where((e) => e.system?.valueString == 'email')
              .makeIterable<fhir.ContactPoint>() ??
          <fhir.ContactPoint>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "RelatedPerson.telecom.where(system='email')",
            i,
          ),
        );
        i++;
      }
      // RelatedPerson.gender (token)
      i = 0;
      for (final entry in resource.gender?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RelatedPerson.gender',
            i,
          ),
        );
        i++;
      }
      // RelatedPerson.telecom.where(system='phone') (token)
      i = 0;
      for (final entry in resource.telecom
              ?.where((e) => e.system?.valueString == 'phone')
              .makeIterable<fhir.ContactPoint>() ??
          <fhir.ContactPoint>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "RelatedPerson.telecom.where(system='phone')",
            i,
          ),
        );
        i++;
      }
      // RelatedPerson.name (string)
      i = 0;
      for (final entry in resource.name?.makeIterable<fhir.HumanName>() ??
          <fhir.HumanName>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RelatedPerson.name',
            i,
          ),
        );
        i++;
      }
      // RelatedPerson.telecom (token)
      i = 0;
      for (final entry in resource.telecom?.makeIterable<fhir.ContactPoint>() ??
          <fhir.ContactPoint>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RelatedPerson.telecom',
            i,
          ),
        );
        i++;
      }
      // RelatedPerson.active (token)
      i = 0;
      for (final entry in resource.active?.makeIterable<fhir.FhirBoolean>() ??
          <fhir.FhirBoolean>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RelatedPerson.active',
            i,
          ),
        );
        i++;
      }
      // RelatedPerson.name.family (string)
      i = 0;
      for (final entry in resource.name
              ?.map<fhir.FhirString?>((e) => e.family)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RelatedPerson.name.family',
            i,
          ),
        );
        i++;
      }
      // RelatedPerson.name.given (string)
      i = 0;
      for (final entry in resource.name
              ?.expand((e) => e.given ?? <fhir.FhirString>[])
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RelatedPerson.name.given',
            i,
          ),
        );
        i++;
      }
      // RelatedPerson.relationship (token)
      i = 0;
      for (final entry
          in resource.relationship?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RelatedPerson.relationship',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.RequestOrchestration _:
      // RequestOrchestration.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RequestOrchestration.identifier',
            i,
          ),
        );
        i++;
      }
      // RequestOrchestration.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject?.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RequestOrchestration.subject.where(resolve() is Patient)',
            i,
          ),
        );
        i++;
      }
      // RequestOrchestration.code (token)
      i = 0;
      for (final entry in resource.code?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RequestOrchestration.code',
            i,
          ),
        );
        i++;
      }
      // RequestOrchestration.encounter (reference)
      i = 0;
      for (final entry in resource.encounter?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RequestOrchestration.encounter',
            i,
          ),
        );
        i++;
      }
      // RequestOrchestration.action.resource (reference)
      i = 0;
      for (final entry in resource.action
              ?.map<fhir.Reference?>((e) => e.resource)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RequestOrchestration.action.resource',
            i,
          ),
        );
        i++;
      }
      // RequestOrchestration.author (reference)
      i = 0;
      for (final entry in resource.author?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RequestOrchestration.author',
            i,
          ),
        );
        i++;
      }
      // RequestOrchestration.authoredOn (date)
      i = 0;
      for (final entry
          in resource.authoredOn?.makeIterable<fhir.FhirDateTime>() ??
              <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RequestOrchestration.authoredOn',
            i,
          ),
        );
        i++;
      }
      // RequestOrchestration.basedOn (reference)
      i = 0;
      for (final entry in resource.basedOn?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RequestOrchestration.basedOn',
            i,
          ),
        );
        i++;
      }
      // RequestOrchestration.groupIdentifier (token)
      i = 0;
      for (final entry
          in resource.groupIdentifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RequestOrchestration.groupIdentifier',
            i,
          ),
        );
        i++;
      }
      // RequestOrchestration.instantiatesCanonical (reference)
      i = 0;
      for (final entry in resource.instantiatesCanonical
              ?.makeIterable<fhir.FhirCanonical>() ??
          <fhir.FhirCanonical>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RequestOrchestration.instantiatesCanonical',
            i,
          ),
        );
        i++;
      }
      // RequestOrchestration.instantiatesUri (uri)
      i = 0;
      for (final entry
          in resource.instantiatesUri?.makeIterable<fhir.FhirUri>() ??
              <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RequestOrchestration.instantiatesUri',
            i,
          ),
        );
        i++;
      }
      // RequestOrchestration.intent (token)
      i = 0;
      for (final entry in resource.intent.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RequestOrchestration.intent',
            i,
          ),
        );
        i++;
      }
      // RequestOrchestration.action.participant.actor.ofType(Reference) (reference)
      i = 0;
      for (final entry in resource.action
              ?.expand((e) =>
                  e.participant ?? <fhir.RequestOrchestrationParticipant>[])
              .map<fhir.Reference?>((e) => e.actorReference)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RequestOrchestration.action.participant.actor.ofType(Reference)',
            i,
          ),
        );
        i++;
      }
      // RequestOrchestration.action.participant.actor.ofType(canonical) (reference)
      i = 0;
      for (final entry in resource.action
              ?.expand((e) =>
                  e.participant ?? <fhir.RequestOrchestrationParticipant>[])
              .map<fhir.FhirCanonical?>((e) => e.actorCanonical)
              .makeIterable<fhir.FhirCanonical>() ??
          <fhir.FhirCanonical>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RequestOrchestration.action.participant.actor.ofType(canonical)',
            i,
          ),
        );
        i++;
      }
      // RequestOrchestration.priority (token)
      i = 0;
      for (final entry
          in resource.priority?.makeIterable<fhir.FhirCodeEnum>() ??
              <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RequestOrchestration.priority',
            i,
          ),
        );
        i++;
      }
      // RequestOrchestration.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RequestOrchestration.status',
            i,
          ),
        );
        i++;
      }
      // RequestOrchestration.subject (reference)
      i = 0;
      for (final entry in resource.subject?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RequestOrchestration.subject',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.Requirements _:
      // Requirements.useContext.code (token)
      i = 0;
      for (final entry in resource.useContext
              ?.map<fhir.Coding?>((e) => e.code)
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Requirements.useContext.code',
            i,
          ),
        );
        i++;
      }
      // Requirements.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Requirements.date',
            i,
          ),
        );
        i++;
      }
      // Requirements.description (string)
      i = 0;
      for (final entry
          in resource.description?.makeIterable<fhir.FhirMarkdown>() ??
              <fhir.FhirMarkdown>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Requirements.description',
            i,
          ),
        );
        i++;
      }
      // Requirements.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Requirements.identifier',
            i,
          ),
        );
        i++;
      }
      // Requirements.jurisdiction (token)
      i = 0;
      for (final entry
          in resource.jurisdiction?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Requirements.jurisdiction',
            i,
          ),
        );
        i++;
      }
      // Requirements.name (string)
      i = 0;
      for (final entry in resource.name?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Requirements.name',
            i,
          ),
        );
        i++;
      }
      // Requirements.publisher (string)
      i = 0;
      for (final entry in resource.publisher?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Requirements.publisher',
            i,
          ),
        );
        i++;
      }
      // Requirements.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Requirements.status',
            i,
          ),
        );
        i++;
      }
      // Requirements.title (string)
      i = 0;
      for (final entry in resource.title?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Requirements.title',
            i,
          ),
        );
        i++;
      }
      // Requirements.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Requirements.url',
            i,
          ),
        );
        i++;
      }
      // Requirements.version (token)
      i = 0;
      for (final entry in resource.version?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Requirements.version',
            i,
          ),
        );
        i++;
      }
      // Requirements.useContext (composite)
      i = 0;
      for (final entry
          in resource.useContext?.makeIterable<fhir.UsageContext>() ??
              <fhir.UsageContext>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Requirements.useContext',
            i,
          ),
        );
        i++;
      }
      // Requirements.actor.reference (reference)
      i = 0;
      for (final entry in resource.actor
              ?.map<fhir.FhirCanonical?>((e) => e.reference)
              .makeIterable<fhir.FhirCanonical>() ??
          <fhir.FhirCanonical>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Requirements.actor.reference',
            i,
          ),
        );
        i++;
      }
      // Requirements.derivedFrom (reference)
      i = 0;
      for (final entry
          in resource.derivedFrom?.makeIterable<fhir.FhirCanonical>() ??
              <fhir.FhirCanonical>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Requirements.derivedFrom',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.ResearchStudy _:
      // ResearchStudy.classifier (token)
      i = 0;
      for (final entry
          in resource.classifier?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchStudy.classifier',
            i,
          ),
        );
        i++;
      }
      // ResearchStudy.condition (token)
      i = 0;
      for (final entry
          in resource.condition?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchStudy.condition',
            i,
          ),
        );
        i++;
      }
      // ResearchStudy.period (date)
      i = 0;
      for (final entry
          in resource.period?.makeIterable<fhir.Period>() ?? <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchStudy.period',
            i,
          ),
        );
        i++;
      }
      // ResearchStudy.description (string)
      i = 0;
      for (final entry
          in resource.description?.makeIterable<fhir.FhirMarkdown>() ??
              <fhir.FhirMarkdown>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchStudy.description',
            i,
          ),
        );
        i++;
      }
      // ResearchStudy.recruitment.eligibility (reference)
      i = 0;
      for (final entry in resource.recruitment?.eligibility
              ?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchStudy.recruitment.eligibility',
            i,
          ),
        );
        i++;
      }
      // ResearchStudy.focus.concept (token)
      i = 0;
      for (final entry in resource.focus
              ?.map<fhir.CodeableConcept?>((e) => e.concept)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchStudy.focus.concept',
            i,
          ),
        );
        i++;
      }
      // ResearchStudy.focus.reference (reference)
      i = 0;
      for (final entry in resource.focus
              ?.map<fhir.Reference?>((e) => e.reference)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchStudy.focus.reference',
            i,
          ),
        );
        i++;
      }
      // ResearchStudy.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchStudy.identifier',
            i,
          ),
        );
        i++;
      }
      // ResearchStudy.keyword (token)
      i = 0;
      for (final entry
          in resource.keyword?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchStudy.keyword',
            i,
          ),
        );
        i++;
      }
      // ResearchStudy.name (string)
      i = 0;
      for (final entry in resource.name?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchStudy.name',
            i,
          ),
        );
        i++;
      }
      // ResearchStudy.objective.description (string)
      i = 0;
      for (final entry in resource.objective
              ?.map<fhir.FhirMarkdown?>((e) => e.description)
              .makeIterable<fhir.FhirMarkdown>() ??
          <fhir.FhirMarkdown>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchStudy.objective.description',
            i,
          ),
        );
        i++;
      }
      // ResearchStudy.objective.type (token)
      i = 0;
      for (final entry in resource.objective
              ?.map<fhir.CodeableConcept?>((e) => e.type)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchStudy.objective.type',
            i,
          ),
        );
        i++;
      }
      // ResearchStudy.partOf (reference)
      i = 0;
      for (final entry in resource.partOf?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchStudy.partOf',
            i,
          ),
        );
        i++;
      }
      // ResearchStudy.phase (token)
      i = 0;
      for (final entry
          in resource.phase?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchStudy.phase',
            i,
          ),
        );
        i++;
      }
      // ResearchStudy.progressStatus.actual (token)
      i = 0;
      for (final entry in resource.progressStatus
              ?.map<fhir.FhirBoolean?>((e) => e.actual)
              .makeIterable<fhir.FhirBoolean>() ??
          <fhir.FhirBoolean>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchStudy.progressStatus.actual',
            i,
          ),
        );
        i++;
      }
      // ResearchStudy.progressStatus.period (date)
      i = 0;
      for (final entry in resource.progressStatus
              ?.map<fhir.Period?>((e) => e.period)
              .makeIterable<fhir.Period>() ??
          <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchStudy.progressStatus.period',
            i,
          ),
        );
        i++;
      }
      // ResearchStudy.progressStatus.state (token)
      i = 0;
      for (final entry in resource.progressStatus
              ?.map<fhir.CodeableConcept?>((e) => e.state)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchStudy.progressStatus.state',
            i,
          ),
        );
        i++;
      }
      // ResearchStudy.protocol (reference)
      i = 0;
      for (final entry in resource.protocol?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchStudy.protocol',
            i,
          ),
        );
        i++;
      }
      // ResearchStudy.recruitment.actualNumber (number)
      i = 0;
      for (final entry in resource.recruitment?.actualNumber
              ?.makeIterable<fhir.FhirUnsignedInt>() ??
          <fhir.FhirUnsignedInt>[]) {
        searchParameterLists.numberParams.addAll(
          entry.toNumberSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchStudy.recruitment.actualNumber',
            i,
          ),
        );
        i++;
      }
      // ResearchStudy.recruitment.targetNumber (number)
      i = 0;
      for (final entry in resource.recruitment?.targetNumber
              ?.makeIterable<fhir.FhirUnsignedInt>() ??
          <fhir.FhirUnsignedInt>[]) {
        searchParameterLists.numberParams.addAll(
          entry.toNumberSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchStudy.recruitment.targetNumber',
            i,
          ),
        );
        i++;
      }
      // ResearchStudy.region (token)
      i = 0;
      for (final entry
          in resource.region?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchStudy.region',
            i,
          ),
        );
        i++;
      }
      // ResearchStudy.site (reference)
      i = 0;
      for (final entry in resource.site?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchStudy.site',
            i,
          ),
        );
        i++;
      }
      // ResearchStudy.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchStudy.status',
            i,
          ),
        );
        i++;
      }
      // ResearchStudy.studyDesign (token)
      i = 0;
      for (final entry
          in resource.studyDesign?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchStudy.studyDesign',
            i,
          ),
        );
        i++;
      }
      // ResearchStudy.title (string)
      i = 0;
      for (final entry in resource.title?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchStudy.title',
            i,
          ),
        );
        i++;
      }
      // ResearchStudy.progressStatus (composite)
      i = 0;
      for (final entry in resource.progressStatus
              ?.makeIterable<fhir.ResearchStudyProgressStatus>() ??
          <fhir.ResearchStudyProgressStatus>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchStudy.progressStatus',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.ResearchSubject _:
      // ResearchSubject.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchSubject.identifier',
            i,
          ),
        );
        i++;
      }
      // ResearchSubject.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchSubject.subject.where(resolve() is Patient)',
            i,
          ),
        );
        i++;
      }
      // ResearchSubject.period (date)
      i = 0;
      for (final entry
          in resource.period?.makeIterable<fhir.Period>() ?? <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchSubject.period',
            i,
          ),
        );
        i++;
      }
      // ResearchSubject.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchSubject.status',
            i,
          ),
        );
        i++;
      }
      // ResearchSubject.study (reference)
      i = 0;
      for (final entry in resource.study.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchSubject.study',
            i,
          ),
        );
        i++;
      }
      // ResearchSubject.subject (reference)
      i = 0;
      for (final entry in resource.subject.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchSubject.subject',
            i,
          ),
        );
        i++;
      }
      // ResearchSubject.subjectState.code (token)
      i = 0;
      for (final entry in resource.subjectState
              ?.map<fhir.CodeableConcept?>((e) => e.code)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ResearchSubject.subjectState.code',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.RiskAssessment _:
      // RiskAssessment.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RiskAssessment.identifier',
            i,
          ),
        );
        i++;
      }
      // RiskAssessment.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RiskAssessment.subject.where(resolve() is Patient)',
            i,
          ),
        );
        i++;
      }
      // RiskAssessment.encounter (reference)
      i = 0;
      for (final entry in resource.encounter?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RiskAssessment.encounter',
            i,
          ),
        );
        i++;
      }
      // RiskAssessment.condition (reference)
      i = 0;
      for (final entry in resource.condition?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RiskAssessment.condition',
            i,
          ),
        );
        i++;
      }
      // RiskAssessment.method (token)
      i = 0;
      for (final entry
          in resource.method?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RiskAssessment.method',
            i,
          ),
        );
        i++;
      }
      // RiskAssessment.performer (reference)
      i = 0;
      for (final entry in resource.performer?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RiskAssessment.performer',
            i,
          ),
        );
        i++;
      }
      // RiskAssessment.prediction.probability.ofType(decimal) (number)
      i = 0;
      for (final entry in resource.prediction
              ?.map<fhir.FhirDecimal?>((e) => e.probabilityDecimal)
              .makeIterable<fhir.FhirDecimal>() ??
          <fhir.FhirDecimal>[]) {
        searchParameterLists.numberParams.addAll(
          entry.toNumberSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RiskAssessment.prediction.probability.ofType(decimal)',
            i,
          ),
        );
        i++;
      }
      // RiskAssessment.prediction.qualitativeRisk (token)
      i = 0;
      for (final entry in resource.prediction
              ?.map<fhir.CodeableConcept?>((e) => e.qualitativeRisk)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RiskAssessment.prediction.qualitativeRisk',
            i,
          ),
        );
        i++;
      }
      // RiskAssessment.subject (reference)
      i = 0;
      for (final entry in resource.subject.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'RiskAssessment.subject',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.Schedule _:
      // Schedule.active (token)
      i = 0;
      for (final entry in resource.active?.makeIterable<fhir.FhirBoolean>() ??
          <fhir.FhirBoolean>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Schedule.active',
            i,
          ),
        );
        i++;
      }
      // Schedule.actor (reference)
      i = 0;
      for (final entry in resource.actor.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Schedule.actor',
            i,
          ),
        );
        i++;
      }
      // Schedule.planningHorizon (date)
      i = 0;
      for (final entry
          in resource.planningHorizon?.makeIterable<fhir.Period>() ??
              <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Schedule.planningHorizon',
            i,
          ),
        );
        i++;
      }
      // Schedule.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Schedule.identifier',
            i,
          ),
        );
        i++;
      }
      // Schedule.name (string)
      i = 0;
      for (final entry in resource.name?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Schedule.name',
            i,
          ),
        );
        i++;
      }
      // Schedule.serviceCategory (token)
      i = 0;
      for (final entry
          in resource.serviceCategory?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Schedule.serviceCategory',
            i,
          ),
        );
        i++;
      }
      // Schedule.serviceType.concept (token)
      i = 0;
      for (final entry in resource.serviceType
              ?.map<fhir.CodeableConcept?>((e) => e.concept)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Schedule.serviceType.concept',
            i,
          ),
        );
        i++;
      }
      // Schedule.serviceType.reference (reference)
      i = 0;
      for (final entry in resource.serviceType
              ?.map<fhir.Reference?>((e) => e.reference)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Schedule.serviceType.reference',
            i,
          ),
        );
        i++;
      }
      // Schedule.specialty (token)
      i = 0;
      for (final entry
          in resource.specialty?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Schedule.specialty',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.SearchParameter _:
      // SearchParameter.useContext.code (token)
      i = 0;
      for (final entry in resource.useContext
              ?.map<fhir.Coding?>((e) => e.code)
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SearchParameter.useContext.code',
            i,
          ),
        );
        i++;
      }
      // SearchParameter.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SearchParameter.date',
            i,
          ),
        );
        i++;
      }
      // SearchParameter.description (string)
      i = 0;
      for (final entry
          in resource.description?.makeIterable<fhir.FhirMarkdown>() ??
              <fhir.FhirMarkdown>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SearchParameter.description',
            i,
          ),
        );
        i++;
      }
      // SearchParameter.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SearchParameter.identifier',
            i,
          ),
        );
        i++;
      }
      // SearchParameter.jurisdiction (token)
      i = 0;
      for (final entry
          in resource.jurisdiction?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SearchParameter.jurisdiction',
            i,
          ),
        );
        i++;
      }
      // SearchParameter.name (string)
      i = 0;
      for (final entry in resource.name.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SearchParameter.name',
            i,
          ),
        );
        i++;
      }
      // SearchParameter.publisher (string)
      i = 0;
      for (final entry in resource.publisher?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SearchParameter.publisher',
            i,
          ),
        );
        i++;
      }
      // SearchParameter.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SearchParameter.status',
            i,
          ),
        );
        i++;
      }
      // SearchParameter.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SearchParameter.url',
            i,
          ),
        );
        i++;
      }
      // SearchParameter.version (token)
      i = 0;
      for (final entry in resource.version?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SearchParameter.version',
            i,
          ),
        );
        i++;
      }
      // SearchParameter.useContext (composite)
      i = 0;
      for (final entry
          in resource.useContext?.makeIterable<fhir.UsageContext>() ??
              <fhir.UsageContext>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SearchParameter.useContext',
            i,
          ),
        );
        i++;
      }
      // SearchParameter.base (token)
      i = 0;
      for (final entry in resource.base.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SearchParameter.base',
            i,
          ),
        );
        i++;
      }
      // SearchParameter.code (token)
      i = 0;
      for (final entry
          in resource.code.makeIterable<fhir.FhirCode>() ?? <fhir.FhirCode>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SearchParameter.code',
            i,
          ),
        );
        i++;
      }
      // SearchParameter.component.definition (reference)
      i = 0;
      for (final entry in resource.component
              ?.map<fhir.FhirCanonical?>((e) => e.definition)
              .makeIterable<fhir.FhirCanonical>() ??
          <fhir.FhirCanonical>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SearchParameter.component.definition',
            i,
          ),
        );
        i++;
      }
      // SearchParameter.derivedFrom (reference)
      i = 0;
      for (final entry
          in resource.derivedFrom?.makeIterable<fhir.FhirCanonical>() ??
              <fhir.FhirCanonical>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SearchParameter.derivedFrom',
            i,
          ),
        );
        i++;
      }
      // SearchParameter.target (token)
      i = 0;
      for (final entry in resource.target?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SearchParameter.target',
            i,
          ),
        );
        i++;
      }
      // SearchParameter.type (token)
      i = 0;
      for (final entry in resource.type.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SearchParameter.type',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.ServiceRequest _:
      // ServiceRequest.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ServiceRequest.identifier',
            i,
          ),
        );
        i++;
      }
      // ServiceRequest.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ServiceRequest.subject.where(resolve() is Patient)',
            i,
          ),
        );
        i++;
      }
      // ServiceRequest.encounter (reference)
      i = 0;
      for (final entry in resource.encounter?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ServiceRequest.encounter',
            i,
          ),
        );
        i++;
      }
      // ServiceRequest.authoredOn (date)
      i = 0;
      for (final entry
          in resource.authoredOn?.makeIterable<fhir.FhirDateTime>() ??
              <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ServiceRequest.authoredOn',
            i,
          ),
        );
        i++;
      }
      // ServiceRequest.basedOn (reference)
      i = 0;
      for (final entry in resource.basedOn?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ServiceRequest.basedOn',
            i,
          ),
        );
        i++;
      }
      // ServiceRequest.bodySite (token)
      i = 0;
      for (final entry
          in resource.bodySite?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ServiceRequest.bodySite',
            i,
          ),
        );
        i++;
      }
      // ServiceRequest.bodyStructure (reference)
      i = 0;
      for (final entry
          in resource.bodyStructure?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ServiceRequest.bodyStructure',
            i,
          ),
        );
        i++;
      }
      // ServiceRequest.category (token)
      i = 0;
      for (final entry
          in resource.category?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ServiceRequest.category',
            i,
          ),
        );
        i++;
      }
      // ServiceRequest.code.concept (token)
      i = 0;
      for (final entry
          in resource.code?.concept?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ServiceRequest.code.concept',
            i,
          ),
        );
        i++;
      }
      // ServiceRequest.code.reference (reference)
      i = 0;
      for (final entry
          in resource.code?.reference?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ServiceRequest.code.reference',
            i,
          ),
        );
        i++;
      }
      // ServiceRequest.requisition (token)
      i = 0;
      for (final entry
          in resource.requisition?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ServiceRequest.requisition',
            i,
          ),
        );
        i++;
      }
      // ServiceRequest.instantiatesCanonical (reference)
      i = 0;
      for (final entry in resource.instantiatesCanonical
              ?.makeIterable<fhir.FhirCanonical>() ??
          <fhir.FhirCanonical>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ServiceRequest.instantiatesCanonical',
            i,
          ),
        );
        i++;
      }
      // ServiceRequest.instantiatesUri (uri)
      i = 0;
      for (final entry
          in resource.instantiatesUri?.makeIterable<fhir.FhirUri>() ??
              <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ServiceRequest.instantiatesUri',
            i,
          ),
        );
        i++;
      }
      // ServiceRequest.intent (token)
      i = 0;
      for (final entry in resource.intent.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ServiceRequest.intent',
            i,
          ),
        );
        i++;
      }
      // ServiceRequest.location.concept (token)
      i = 0;
      for (final entry in resource.location
              ?.map<fhir.CodeableConcept?>((e) => e.concept)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ServiceRequest.location.concept',
            i,
          ),
        );
        i++;
      }
      // ServiceRequest.location.reference (reference)
      i = 0;
      for (final entry in resource.location
              ?.map<fhir.Reference?>((e) => e.reference)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ServiceRequest.location.reference',
            i,
          ),
        );
        i++;
      }
      // ServiceRequest.occurrence.ofType(dateTime) (date)
      i = 0;
      for (final entry
          in resource.occurrenceDateTime?.makeIterable<fhir.FhirDateTime>() ??
              <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ServiceRequest.occurrence.ofType(dateTime)',
            i,
          ),
        );
        i++;
      }
      // ServiceRequest.occurrence.ofType(Period) (date)
      i = 0;
      for (final entry
          in resource.occurrencePeriod?.makeIterable<fhir.Period>() ??
              <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ServiceRequest.occurrence.ofType(Period)',
            i,
          ),
        );
        i++;
      }
      // ServiceRequest.occurrence.ofType(Timing) (date)
      i = 0;
      for (final entry
          in resource.occurrenceTiming?.makeIterable<fhir.Timing>() ??
              <fhir.Timing>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ServiceRequest.occurrence.ofType(Timing)',
            i,
          ),
        );
        i++;
      }
      // ServiceRequest.performer (reference)
      i = 0;
      for (final entry in resource.performer?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ServiceRequest.performer',
            i,
          ),
        );
        i++;
      }
      // ServiceRequest.performerType (token)
      i = 0;
      for (final entry
          in resource.performerType?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ServiceRequest.performerType',
            i,
          ),
        );
        i++;
      }
      // ServiceRequest.priority (token)
      i = 0;
      for (final entry
          in resource.priority?.makeIterable<fhir.FhirCodeEnum>() ??
              <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ServiceRequest.priority',
            i,
          ),
        );
        i++;
      }
      // ServiceRequest.replaces (reference)
      i = 0;
      for (final entry in resource.replaces?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ServiceRequest.replaces',
            i,
          ),
        );
        i++;
      }
      // ServiceRequest.requester (reference)
      i = 0;
      for (final entry in resource.requester?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ServiceRequest.requester',
            i,
          ),
        );
        i++;
      }
      // ServiceRequest.specimen (reference)
      i = 0;
      for (final entry in resource.specimen?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ServiceRequest.specimen',
            i,
          ),
        );
        i++;
      }
      // ServiceRequest.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ServiceRequest.status',
            i,
          ),
        );
        i++;
      }
      // ServiceRequest.subject (reference)
      i = 0;
      for (final entry in resource.subject.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ServiceRequest.subject',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.Slot _:
      // Slot.appointmentType (token)
      i = 0;
      for (final entry
          in resource.appointmentType?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Slot.appointmentType',
            i,
          ),
        );
        i++;
      }
      // Slot.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Slot.identifier',
            i,
          ),
        );
        i++;
      }
      // Slot.schedule (reference)
      i = 0;
      for (final entry in resource.schedule.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Slot.schedule',
            i,
          ),
        );
        i++;
      }
      // Slot.serviceCategory (token)
      i = 0;
      for (final entry
          in resource.serviceCategory?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Slot.serviceCategory',
            i,
          ),
        );
        i++;
      }
      // Slot.serviceType.concept (token)
      i = 0;
      for (final entry in resource.serviceType
              ?.map<fhir.CodeableConcept?>((e) => e.concept)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Slot.serviceType.concept',
            i,
          ),
        );
        i++;
      }
      // Slot.serviceType.reference (reference)
      i = 0;
      for (final entry in resource.serviceType
              ?.map<fhir.Reference?>((e) => e.reference)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Slot.serviceType.reference',
            i,
          ),
        );
        i++;
      }
      // Slot.specialty (token)
      i = 0;
      for (final entry
          in resource.specialty?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Slot.specialty',
            i,
          ),
        );
        i++;
      }
      // Slot.start (date)
      i = 0;
      for (final entry in resource.start.makeIterable<fhir.FhirInstant>() ??
          <fhir.FhirInstant>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Slot.start',
            i,
          ),
        );
        i++;
      }
      // Slot.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Slot.status',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.Specimen _:
      // Specimen.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Specimen.identifier',
            i,
          ),
        );
        i++;
      }
      // Specimen.subject.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.subject?.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Specimen.subject.where(resolve() is Patient)',
            i,
          ),
        );
        i++;
      }
      // Specimen.type (token)
      i = 0;
      for (final entry in resource.type?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Specimen.type',
            i,
          ),
        );
        i++;
      }
      // Specimen.accessionIdentifier (token)
      i = 0;
      for (final entry
          in resource.accessionIdentifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Specimen.accessionIdentifier',
            i,
          ),
        );
        i++;
      }
      // Specimen.collection.bodySite.reference (reference)
      i = 0;
      for (final entry in resource.collection?.bodySite?.reference
              ?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Specimen.collection.bodySite.reference',
            i,
          ),
        );
        i++;
      }
      // Specimen.collection.collected.ofType(dateTime) (date)
      i = 0;
      for (final entry in resource.collection?.collectedDateTime
              ?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Specimen.collection.collected.ofType(dateTime)',
            i,
          ),
        );
        i++;
      }
      // Specimen.collection.collected.ofType(Period) (date)
      i = 0;
      for (final entry in resource.collection?.collectedPeriod
              ?.makeIterable<fhir.Period>() ??
          <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Specimen.collection.collected.ofType(Period)',
            i,
          ),
        );
        i++;
      }
      // Specimen.collection.collector (reference)
      i = 0;
      for (final entry
          in resource.collection?.collector?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Specimen.collection.collector',
            i,
          ),
        );
        i++;
      }
      // Specimen.container.device.where(resolve() is Device) (reference)
      i = 0;
      for (final entry in resource.container
              ?.map<fhir.Reference?>((e) => e.device)
              .where((e) {
            final ref = e?.reference?.toString().split('/') ?? [];
            return ref.length > 1 && ref[ref.length - 2] == 'Device';
          }).makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Specimen.container.device.where(resolve() is Device)',
            i,
          ),
        );
        i++;
      }
      // Specimen.parent (reference)
      i = 0;
      for (final entry in resource.parent?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Specimen.parent',
            i,
          ),
        );
        i++;
      }
      // Specimen.collection.procedure (reference)
      i = 0;
      for (final entry
          in resource.collection?.procedure?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Specimen.collection.procedure',
            i,
          ),
        );
        i++;
      }
      // Specimen.request (reference)
      i = 0;
      for (final entry in resource.request?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Specimen.request',
            i,
          ),
        );
        i++;
      }
      // Specimen.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Specimen.status',
            i,
          ),
        );
        i++;
      }
      // Specimen.subject (reference)
      i = 0;
      for (final entry in resource.subject?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Specimen.subject',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.SpecimenDefinition _:
      // SpecimenDefinition.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SpecimenDefinition.identifier',
            i,
          ),
        );
        i++;
      }
      // SpecimenDefinition.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SpecimenDefinition.status',
            i,
          ),
        );
        i++;
      }
      // SpecimenDefinition.title (string)
      i = 0;
      for (final entry in resource.title?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SpecimenDefinition.title',
            i,
          ),
        );
        i++;
      }
      // SpecimenDefinition.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SpecimenDefinition.url',
            i,
          ),
        );
        i++;
      }
      // SpecimenDefinition.typeTested.container.type (token)
      i = 0;
      for (final entry in resource.typeTested
              ?.map<fhir.SpecimenDefinitionContainer?>((e) => e.container)
              .map<fhir.CodeableConcept?>((e) => e?.type)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SpecimenDefinition.typeTested.container.type',
            i,
          ),
        );
        i++;
      }
      // SpecimenDefinition.experimental (token)
      i = 0;
      for (final entry
          in resource.experimental?.makeIterable<fhir.FhirBoolean>() ??
              <fhir.FhirBoolean>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SpecimenDefinition.experimental',
            i,
          ),
        );
        i++;
      }
      // SpecimenDefinition.typeTested.isDerived (token)
      i = 0;
      for (final entry in resource.typeTested
              ?.map<fhir.FhirBoolean?>((e) => e.isDerived)
              .makeIterable<fhir.FhirBoolean>() ??
          <fhir.FhirBoolean>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SpecimenDefinition.typeTested.isDerived',
            i,
          ),
        );
        i++;
      }
      // SpecimenDefinition.typeCollected (token)
      i = 0;
      for (final entry
          in resource.typeCollected?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SpecimenDefinition.typeCollected',
            i,
          ),
        );
        i++;
      }
      // SpecimenDefinition.typeTested.type (token)
      i = 0;
      for (final entry in resource.typeTested
              ?.map<fhir.CodeableConcept?>((e) => e.type)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SpecimenDefinition.typeTested.type',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.StructureDefinition _:
      // StructureDefinition.useContext.code (token)
      i = 0;
      for (final entry in resource.useContext
              ?.map<fhir.Coding?>((e) => e.code)
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureDefinition.useContext.code',
            i,
          ),
        );
        i++;
      }
      // StructureDefinition.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureDefinition.date',
            i,
          ),
        );
        i++;
      }
      // StructureDefinition.description (string)
      i = 0;
      for (final entry
          in resource.description?.makeIterable<fhir.FhirMarkdown>() ??
              <fhir.FhirMarkdown>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureDefinition.description',
            i,
          ),
        );
        i++;
      }
      // StructureDefinition.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureDefinition.identifier',
            i,
          ),
        );
        i++;
      }
      // StructureDefinition.jurisdiction (token)
      i = 0;
      for (final entry
          in resource.jurisdiction?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureDefinition.jurisdiction',
            i,
          ),
        );
        i++;
      }
      // StructureDefinition.name (string)
      i = 0;
      for (final entry in resource.name.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureDefinition.name',
            i,
          ),
        );
        i++;
      }
      // StructureDefinition.publisher (string)
      i = 0;
      for (final entry in resource.publisher?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureDefinition.publisher',
            i,
          ),
        );
        i++;
      }
      // StructureDefinition.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureDefinition.status',
            i,
          ),
        );
        i++;
      }
      // StructureDefinition.title (string)
      i = 0;
      for (final entry in resource.title?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureDefinition.title',
            i,
          ),
        );
        i++;
      }
      // StructureDefinition.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureDefinition.url',
            i,
          ),
        );
        i++;
      }
      // StructureDefinition.version (token)
      i = 0;
      for (final entry in resource.version?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureDefinition.version',
            i,
          ),
        );
        i++;
      }
      // StructureDefinition.useContext (composite)
      i = 0;
      for (final entry
          in resource.useContext?.makeIterable<fhir.UsageContext>() ??
              <fhir.UsageContext>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureDefinition.useContext',
            i,
          ),
        );
        i++;
      }
      // StructureDefinition.abstract (token)
      i = 0;
      for (final entry in resource.abstract_.makeIterable<fhir.FhirBoolean>() ??
          <fhir.FhirBoolean>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureDefinition.abstract',
            i,
          ),
        );
        i++;
      }
      // StructureDefinition.baseDefinition (reference)
      i = 0;
      for (final entry
          in resource.baseDefinition?.makeIterable<fhir.FhirCanonical>() ??
              <fhir.FhirCanonical>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureDefinition.baseDefinition',
            i,
          ),
        );
        i++;
      }
      // StructureDefinition.snapshot.element.base.path (token)
      i = 0;
      for (final entry in resource.snapshot?.element
              .map<fhir.ElementDefinitionBase?>((e) => e.base)
              .map<fhir.FhirString?>((e) => e?.path)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureDefinition.snapshot.element.base.path',
            i,
          ),
        );
        i++;
      }
      // StructureDefinition.differential.element.base.path (token)
      i = 0;
      for (final entry in resource.differential?.element
              .map<fhir.ElementDefinitionBase?>((e) => e.base)
              .map<fhir.FhirString?>((e) => e?.path)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureDefinition.differential.element.base.path',
            i,
          ),
        );
        i++;
      }
      // StructureDefinition.derivation (token)
      i = 0;
      for (final entry
          in resource.derivation?.makeIterable<fhir.FhirCodeEnum>() ??
              <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureDefinition.derivation',
            i,
          ),
        );
        i++;
      }
      // StructureDefinition.experimental (token)
      i = 0;
      for (final entry
          in resource.experimental?.makeIterable<fhir.FhirBoolean>() ??
              <fhir.FhirBoolean>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureDefinition.experimental',
            i,
          ),
        );
        i++;
      }
      // StructureDefinition.context.expression (token)
      i = 0;
      for (final entry in resource.context
              ?.map<fhir.FhirString?>((e) => e.expression)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureDefinition.context.expression',
            i,
          ),
        );
        i++;
      }
      // StructureDefinition.context.type (token)
      i = 0;
      for (final entry in resource.context
              ?.map<fhir.FhirCodeEnum?>((e) => e.type)
              .makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureDefinition.context.type',
            i,
          ),
        );
        i++;
      }
      // StructureDefinition.keyword (token)
      i = 0;
      for (final entry
          in resource.keyword?.makeIterable<fhir.Coding>() ?? <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureDefinition.keyword',
            i,
          ),
        );
        i++;
      }
      // StructureDefinition.kind (token)
      i = 0;
      for (final entry in resource.kind.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureDefinition.kind',
            i,
          ),
        );
        i++;
      }
      // StructureDefinition.snapshot.element.path (token)
      i = 0;
      for (final entry in resource.snapshot?.element
              .map<fhir.FhirString?>((e) => e.path)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureDefinition.snapshot.element.path',
            i,
          ),
        );
        i++;
      }
      // StructureDefinition.differential.element.path (token)
      i = 0;
      for (final entry in resource.differential?.element
              .map<fhir.FhirString?>((e) => e.path)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureDefinition.differential.element.path',
            i,
          ),
        );
        i++;
      }
      // StructureDefinition.type (uri)
      i = 0;
      for (final entry
          in resource.type.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureDefinition.type',
            i,
          ),
        );
        i++;
      }
      // StructureDefinition.snapshot.element.binding.valueSet (reference)
      i = 0;
      for (final entry in resource.snapshot?.element
              .map<fhir.ElementDefinitionBinding?>((e) => e.binding)
              .map<fhir.FhirCanonical?>((e) => e?.valueSet)
              .makeIterable<fhir.FhirCanonical>() ??
          <fhir.FhirCanonical>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureDefinition.snapshot.element.binding.valueSet',
            i,
          ),
        );
        i++;
      }
      // StructureDefinition.context (composite)
      i = 0;
      for (final entry in resource.context
              ?.makeIterable<fhir.StructureDefinitionContext>() ??
          <fhir.StructureDefinitionContext>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureDefinition.context',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.StructureMap _:
      // StructureMap.useContext.code (token)
      i = 0;
      for (final entry in resource.useContext
              ?.map<fhir.Coding?>((e) => e.code)
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureMap.useContext.code',
            i,
          ),
        );
        i++;
      }
      // StructureMap.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureMap.date',
            i,
          ),
        );
        i++;
      }
      // StructureMap.description (string)
      i = 0;
      for (final entry
          in resource.description?.makeIterable<fhir.FhirMarkdown>() ??
              <fhir.FhirMarkdown>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureMap.description',
            i,
          ),
        );
        i++;
      }
      // StructureMap.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureMap.identifier',
            i,
          ),
        );
        i++;
      }
      // StructureMap.jurisdiction (token)
      i = 0;
      for (final entry
          in resource.jurisdiction?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureMap.jurisdiction',
            i,
          ),
        );
        i++;
      }
      // StructureMap.name (string)
      i = 0;
      for (final entry in resource.name.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureMap.name',
            i,
          ),
        );
        i++;
      }
      // StructureMap.publisher (string)
      i = 0;
      for (final entry in resource.publisher?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureMap.publisher',
            i,
          ),
        );
        i++;
      }
      // StructureMap.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureMap.status',
            i,
          ),
        );
        i++;
      }
      // StructureMap.title (string)
      i = 0;
      for (final entry in resource.title?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureMap.title',
            i,
          ),
        );
        i++;
      }
      // StructureMap.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureMap.url',
            i,
          ),
        );
        i++;
      }
      // StructureMap.version (token)
      i = 0;
      for (final entry in resource.version?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureMap.version',
            i,
          ),
        );
        i++;
      }
      // StructureMap.useContext (composite)
      i = 0;
      for (final entry
          in resource.useContext?.makeIterable<fhir.UsageContext>() ??
              <fhir.UsageContext>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'StructureMap.useContext',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.Subscription _:
      // Subscription.contact (token)
      i = 0;
      for (final entry in resource.contact?.makeIterable<fhir.ContactPoint>() ??
          <fhir.ContactPoint>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Subscription.contact',
            i,
          ),
        );
        i++;
      }
      // Subscription.content (token)
      i = 0;
      for (final entry in resource.content?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Subscription.content',
            i,
          ),
        );
        i++;
      }
      // Subscription.filterBy.event (token)
      i = 0;
      for (final entry in resource.filterBy
              ?.expand((e) => e.event ?? <fhir.CodeableConcept>[])
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Subscription.filterBy.event',
            i,
          ),
        );
        i++;
      }
      // Subscription.filterBy.value (string)
      i = 0;
      for (final entry in resource.filterBy
              ?.map<fhir.FhirString?>((e) => e.value)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Subscription.filterBy.value',
            i,
          ),
        );
        i++;
      }
      // Subscription.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Subscription.identifier',
            i,
          ),
        );
        i++;
      }
      // Subscription.name (string)
      i = 0;
      for (final entry in resource.name?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Subscription.name',
            i,
          ),
        );
        i++;
      }
      // Subscription.managingEntity (reference)
      i = 0;
      for (final entry
          in resource.managingEntity?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Subscription.managingEntity',
            i,
          ),
        );
        i++;
      }
      // Subscription.contentType (token)
      i = 0;
      for (final entry in resource.contentType?.makeIterable<fhir.FhirCode>() ??
          <fhir.FhirCode>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Subscription.contentType',
            i,
          ),
        );
        i++;
      }
      // Subscription.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Subscription.status',
            i,
          ),
        );
        i++;
      }
      // Subscription.topic (uri)
      i = 0;
      for (final entry in resource.topic.makeIterable<fhir.FhirCanonical>() ??
          <fhir.FhirCanonical>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Subscription.topic',
            i,
          ),
        );
        i++;
      }
      // Subscription.channelType (token)
      i = 0;
      for (final entry in resource.channelType.makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Subscription.channelType',
            i,
          ),
        );
        i++;
      }
      // Subscription.endpoint (uri)
      i = 0;
      for (final entry in resource.endpoint?.makeIterable<fhir.FhirUrl>() ??
          <fhir.FhirUrl>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Subscription.endpoint',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.SubscriptionTopic _:
      // SubscriptionTopic.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SubscriptionTopic.date',
            i,
          ),
        );
        i++;
      }
      // SubscriptionTopic.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SubscriptionTopic.identifier',
            i,
          ),
        );
        i++;
      }
      // SubscriptionTopic.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SubscriptionTopic.status',
            i,
          ),
        );
        i++;
      }
      // SubscriptionTopic.title (string)
      i = 0;
      for (final entry in resource.title?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SubscriptionTopic.title',
            i,
          ),
        );
        i++;
      }
      // SubscriptionTopic.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SubscriptionTopic.url',
            i,
          ),
        );
        i++;
      }
      // SubscriptionTopic.version (token)
      i = 0;
      for (final entry in resource.version?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SubscriptionTopic.version',
            i,
          ),
        );
        i++;
      }
      // SubscriptionTopic.derivedFrom (uri)
      i = 0;
      for (final entry
          in resource.derivedFrom?.makeIterable<fhir.FhirCanonical>() ??
              <fhir.FhirCanonical>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SubscriptionTopic.derivedFrom',
            i,
          ),
        );
        i++;
      }
      // SubscriptionTopic.effectivePeriod (date)
      i = 0;
      for (final entry
          in resource.effectivePeriod?.makeIterable<fhir.Period>() ??
              <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SubscriptionTopic.effectivePeriod',
            i,
          ),
        );
        i++;
      }
      // SubscriptionTopic.trigger.event (token)
      i = 0;
      for (final entry in resource.trigger
              ?.map<fhir.CodeableConcept?>((e) => e.event)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SubscriptionTopic.trigger.event',
            i,
          ),
        );
        i++;
      }
      // SubscriptionTopic.trigger.resource (uri)
      i = 0;
      for (final entry in resource.trigger
              ?.map<fhir.FhirUri?>((e) => e.resource)
              .makeIterable<fhir.FhirUri>() ??
          <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SubscriptionTopic.trigger.resource',
            i,
          ),
        );
        i++;
      }
      // SubscriptionTopic.trigger.description (string)
      i = 0;
      for (final entry in resource.trigger
              ?.map<fhir.FhirMarkdown?>((e) => e.description)
              .makeIterable<fhir.FhirMarkdown>() ??
          <fhir.FhirMarkdown>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SubscriptionTopic.trigger.description',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.Substance _:
      // Substance.category (token)
      i = 0;
      for (final entry
          in resource.category?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Substance.category',
            i,
          ),
        );
        i++;
      }
      // Substance.code.concept (token)
      i = 0;
      for (final entry
          in resource.code.concept?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Substance.code.concept',
            i,
          ),
        );
        i++;
      }
      // Substance.code.reference (reference)
      i = 0;
      for (final entry
          in resource.code.reference?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Substance.code.reference',
            i,
          ),
        );
        i++;
      }
      // Substance.expiry (date)
      i = 0;
      for (final entry in resource.expiry?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Substance.expiry',
            i,
          ),
        );
        i++;
      }
      // Substance.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Substance.identifier',
            i,
          ),
        );
        i++;
      }
      // Substance.quantity (quantity)
      i = 0;
      for (final entry in resource.quantity?.makeIterable<fhir.Quantity>() ??
          <fhir.Quantity>[]) {
        searchParameterLists.quantityParams.addAll(
          entry.toQuantitySearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Substance.quantity',
            i,
          ),
        );
        i++;
      }
      // Substance.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Substance.status',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.SubstanceDefinition _:
      // SubstanceDefinition.classification (token)
      i = 0;
      for (final entry
          in resource.classification?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SubstanceDefinition.classification',
            i,
          ),
        );
        i++;
      }
      // SubstanceDefinition.code.code (token)
      i = 0;
      for (final entry in resource.code
              ?.map<fhir.CodeableConcept?>((e) => e.code)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SubstanceDefinition.code.code',
            i,
          ),
        );
        i++;
      }
      // SubstanceDefinition.domain (token)
      i = 0;
      for (final entry
          in resource.domain?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SubstanceDefinition.domain',
            i,
          ),
        );
        i++;
      }
      // SubstanceDefinition.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SubstanceDefinition.identifier',
            i,
          ),
        );
        i++;
      }
      // SubstanceDefinition.name.name (string)
      i = 0;
      for (final entry in resource.name
              ?.map<fhir.FhirString?>((e) => e.name)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SubstanceDefinition.name.name',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.SupplyDelivery _:
      // SupplyDelivery.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SupplyDelivery.identifier',
            i,
          ),
        );
        i++;
      }
      // SupplyDelivery.patient (reference)
      i = 0;
      for (final entry in resource.patient?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SupplyDelivery.patient',
            i,
          ),
        );
        i++;
      }
      // SupplyDelivery.receiver (reference)
      i = 0;
      for (final entry in resource.receiver?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SupplyDelivery.receiver',
            i,
          ),
        );
        i++;
      }
      // SupplyDelivery.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SupplyDelivery.status',
            i,
          ),
        );
        i++;
      }
      // SupplyDelivery.supplier (reference)
      i = 0;
      for (final entry in resource.supplier?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SupplyDelivery.supplier',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.SupplyRequest _:
      // SupplyRequest.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SupplyRequest.identifier',
            i,
          ),
        );
        i++;
      }
      // SupplyRequest.deliverFor (reference)
      i = 0;
      for (final entry in resource.deliverFor?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SupplyRequest.deliverFor',
            i,
          ),
        );
        i++;
      }
      // SupplyRequest.authoredOn (date)
      i = 0;
      for (final entry
          in resource.authoredOn?.makeIterable<fhir.FhirDateTime>() ??
              <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SupplyRequest.authoredOn',
            i,
          ),
        );
        i++;
      }
      // SupplyRequest.category (token)
      i = 0;
      for (final entry
          in resource.category?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SupplyRequest.category',
            i,
          ),
        );
        i++;
      }
      // SupplyRequest.requester (reference)
      i = 0;
      for (final entry in resource.requester?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SupplyRequest.requester',
            i,
          ),
        );
        i++;
      }
      // SupplyRequest.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SupplyRequest.status',
            i,
          ),
        );
        i++;
      }
      // SupplyRequest.deliverTo (reference)
      i = 0;
      for (final entry in resource.deliverTo?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SupplyRequest.deliverTo',
            i,
          ),
        );
        i++;
      }
      // SupplyRequest.supplier (reference)
      i = 0;
      for (final entry in resource.supplier?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'SupplyRequest.supplier',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.Task _:
      // Task.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Task.identifier',
            i,
          ),
        );
        i++;
      }
      // Task.for.where(resolve() is Patient) (reference)
      i = 0;
      for (final entry
          in resource.for_?.makeIterable<fhir.Reference>().where((e) {
                final ref = e.reference?.toString().split('/') ?? [];
                return ref.length > 1 && ref[ref.length - 2] == 'Patient';
              }) ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Task.for.where(resolve() is Patient)',
            i,
          ),
        );
        i++;
      }
      // Task.code (token)
      i = 0;
      for (final entry in resource.code?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Task.code',
            i,
          ),
        );
        i++;
      }
      // Task.encounter (reference)
      i = 0;
      for (final entry in resource.encounter?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Task.encounter',
            i,
          ),
        );
        i++;
      }
      // Task.performer.actor (reference)
      i = 0;
      for (final entry in resource.performer
              ?.map<fhir.Reference?>((e) => e.actor)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Task.performer.actor',
            i,
          ),
        );
        i++;
      }
      // Task.authoredOn (date)
      i = 0;
      for (final entry
          in resource.authoredOn?.makeIterable<fhir.FhirDateTime>() ??
              <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Task.authoredOn',
            i,
          ),
        );
        i++;
      }
      // Task.basedOn (reference)
      i = 0;
      for (final entry in resource.basedOn?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Task.basedOn',
            i,
          ),
        );
        i++;
      }
      // Task.businessStatus (token)
      i = 0;
      for (final entry
          in resource.businessStatus?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Task.businessStatus',
            i,
          ),
        );
        i++;
      }
      // Task.focus (reference)
      i = 0;
      for (final entry in resource.focus?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Task.focus',
            i,
          ),
        );
        i++;
      }
      // Task.groupIdentifier (token)
      i = 0;
      for (final entry
          in resource.groupIdentifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Task.groupIdentifier',
            i,
          ),
        );
        i++;
      }
      // Task.input.value.ofType(Reference) (reference)
      i = 0;
      for (final entry in resource.input
              ?.map<fhir.Reference?>((e) => e.valueReference)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Task.input.value.ofType(Reference)',
            i,
          ),
        );
        i++;
      }
      // Task.intent (token)
      i = 0;
      for (final entry in resource.intent.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Task.intent',
            i,
          ),
        );
        i++;
      }
      // Task.lastModified (date)
      i = 0;
      for (final entry
          in resource.lastModified?.makeIterable<fhir.FhirDateTime>() ??
              <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Task.lastModified',
            i,
          ),
        );
        i++;
      }
      // Task.output.value.ofType(Reference) (reference)
      i = 0;
      for (final entry in resource.output
              ?.map<fhir.Reference?>((e) => e.valueReference)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Task.output.value.ofType(Reference)',
            i,
          ),
        );
        i++;
      }
      // Task.owner (reference)
      i = 0;
      for (final entry in resource.owner?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Task.owner',
            i,
          ),
        );
        i++;
      }
      // Task.partOf (reference)
      i = 0;
      for (final entry in resource.partOf?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Task.partOf',
            i,
          ),
        );
        i++;
      }
      // Task.requestedPerformer.concept (token)
      i = 0;
      for (final entry in resource.requestedPerformer
              ?.map<fhir.CodeableConcept?>((e) => e.concept)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Task.requestedPerformer.concept',
            i,
          ),
        );
        i++;
      }
      // Task.executionPeriod (date)
      i = 0;
      for (final entry
          in resource.executionPeriod?.makeIterable<fhir.Period>() ??
              <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Task.executionPeriod',
            i,
          ),
        );
        i++;
      }
      // Task.priority (token)
      i = 0;
      for (final entry
          in resource.priority?.makeIterable<fhir.FhirCodeEnum>() ??
              <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Task.priority',
            i,
          ),
        );
        i++;
      }
      // Task.requestedPerformer.reference (reference)
      i = 0;
      for (final entry in resource.requestedPerformer
              ?.map<fhir.Reference?>((e) => e.reference)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Task.requestedPerformer.reference',
            i,
          ),
        );
        i++;
      }
      // Task.requester (reference)
      i = 0;
      for (final entry in resource.requester?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Task.requester',
            i,
          ),
        );
        i++;
      }
      // Task.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Task.status',
            i,
          ),
        );
        i++;
      }
      // Task.for (reference)
      i = 0;
      for (final entry in resource.for_?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Task.for',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.TerminologyCapabilities _:
      // TerminologyCapabilities.useContext.code (token)
      i = 0;
      for (final entry in resource.useContext
              ?.map<fhir.Coding?>((e) => e.code)
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TerminologyCapabilities.useContext.code',
            i,
          ),
        );
        i++;
      }
      // TerminologyCapabilities.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TerminologyCapabilities.date',
            i,
          ),
        );
        i++;
      }
      // TerminologyCapabilities.description (string)
      i = 0;
      for (final entry
          in resource.description?.makeIterable<fhir.FhirMarkdown>() ??
              <fhir.FhirMarkdown>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TerminologyCapabilities.description',
            i,
          ),
        );
        i++;
      }
      // TerminologyCapabilities.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TerminologyCapabilities.identifier',
            i,
          ),
        );
        i++;
      }
      // TerminologyCapabilities.jurisdiction (token)
      i = 0;
      for (final entry
          in resource.jurisdiction?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TerminologyCapabilities.jurisdiction',
            i,
          ),
        );
        i++;
      }
      // TerminologyCapabilities.name (string)
      i = 0;
      for (final entry in resource.name?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TerminologyCapabilities.name',
            i,
          ),
        );
        i++;
      }
      // TerminologyCapabilities.publisher (string)
      i = 0;
      for (final entry in resource.publisher?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TerminologyCapabilities.publisher',
            i,
          ),
        );
        i++;
      }
      // TerminologyCapabilities.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TerminologyCapabilities.status',
            i,
          ),
        );
        i++;
      }
      // TerminologyCapabilities.title (string)
      i = 0;
      for (final entry in resource.title?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TerminologyCapabilities.title',
            i,
          ),
        );
        i++;
      }
      // TerminologyCapabilities.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TerminologyCapabilities.url',
            i,
          ),
        );
        i++;
      }
      // TerminologyCapabilities.version (token)
      i = 0;
      for (final entry in resource.version?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TerminologyCapabilities.version',
            i,
          ),
        );
        i++;
      }
      // TerminologyCapabilities.useContext (composite)
      i = 0;
      for (final entry
          in resource.useContext?.makeIterable<fhir.UsageContext>() ??
              <fhir.UsageContext>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TerminologyCapabilities.useContext',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.TestPlan _:
      // TestPlan.useContext.code (token)
      i = 0;
      for (final entry in resource.useContext
              ?.map<fhir.Coding?>((e) => e.code)
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TestPlan.useContext.code',
            i,
          ),
        );
        i++;
      }
      // TestPlan.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TestPlan.date',
            i,
          ),
        );
        i++;
      }
      // TestPlan.description (string)
      i = 0;
      for (final entry
          in resource.description?.makeIterable<fhir.FhirMarkdown>() ??
              <fhir.FhirMarkdown>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TestPlan.description',
            i,
          ),
        );
        i++;
      }
      // TestPlan.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TestPlan.identifier',
            i,
          ),
        );
        i++;
      }
      // TestPlan.jurisdiction (token)
      i = 0;
      for (final entry
          in resource.jurisdiction?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TestPlan.jurisdiction',
            i,
          ),
        );
        i++;
      }
      // TestPlan.name (string)
      i = 0;
      for (final entry in resource.name?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TestPlan.name',
            i,
          ),
        );
        i++;
      }
      // TestPlan.publisher (string)
      i = 0;
      for (final entry in resource.publisher?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TestPlan.publisher',
            i,
          ),
        );
        i++;
      }
      // TestPlan.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TestPlan.status',
            i,
          ),
        );
        i++;
      }
      // TestPlan.title (string)
      i = 0;
      for (final entry in resource.title?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TestPlan.title',
            i,
          ),
        );
        i++;
      }
      // TestPlan.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TestPlan.url',
            i,
          ),
        );
        i++;
      }
      // TestPlan.version (token)
      i = 0;
      for (final entry in resource.version?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TestPlan.version',
            i,
          ),
        );
        i++;
      }
      // TestPlan.useContext (composite)
      i = 0;
      for (final entry
          in resource.useContext?.makeIterable<fhir.UsageContext>() ??
              <fhir.UsageContext>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TestPlan.useContext',
            i,
          ),
        );
        i++;
      }
      // TestPlan.category (token)
      i = 0;
      for (final entry
          in resource.category?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TestPlan.category',
            i,
          ),
        );
        i++;
      }
      // TestPlan.testCase.requirement.reference (uri)
      i = 0;
      for (final entry in resource.testCase
              ?.expand((e) => e.requirement ?? <fhir.TestPlanRequirement>[])
              .map<fhir.FhirCanonical?>((e) => e.reference)
              .makeIterable<fhir.FhirCanonical>() ??
          <fhir.FhirCanonical>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TestPlan.testCase.requirement.reference',
            i,
          ),
        );
        i++;
      }
      // TestPlan.scope.artifact.ofType(canonical) (uri)
      i = 0;
      for (final entry in resource.scope
              ?.map<fhir.FhirCanonical?>((e) => e.artifactCanonical)
              .makeIterable<fhir.FhirCanonical>() ??
          <fhir.FhirCanonical>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TestPlan.scope.artifact.ofType(canonical)',
            i,
          ),
        );
        i++;
      }
      // TestPlan.scope.artifact.ofType(uri) (uri)
      i = 0;
      for (final entry in resource.scope
              ?.map<fhir.FhirUri?>((e) => e.artifactUri)
              .makeIterable<fhir.FhirUri>() ??
          <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TestPlan.scope.artifact.ofType(uri)',
            i,
          ),
        );
        i++;
      }
      // TestPlan.testCase.requirement (composite)
      i = 0;
      for (final entry in resource.testCase
              ?.expand((e) => e.requirement ?? <fhir.TestPlanRequirement>[])
              .makeIterable<fhir.TestPlanRequirement>() ??
          <fhir.TestPlanRequirement>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TestPlan.testCase.requirement',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.TestReport _:
      // TestReport.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TestReport.identifier',
            i,
          ),
        );
        i++;
      }
      // TestReport.issued (date)
      i = 0;
      for (final entry in resource.issued?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TestReport.issued',
            i,
          ),
        );
        i++;
      }
      // TestReport.participant.uri (uri)
      i = 0;
      for (final entry in resource.participant
              ?.map<fhir.FhirUri?>((e) => e.uri)
              .makeIterable<fhir.FhirUri>() ??
          <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TestReport.participant.uri',
            i,
          ),
        );
        i++;
      }
      // TestReport.result (token)
      i = 0;
      for (final entry in resource.result.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TestReport.result',
            i,
          ),
        );
        i++;
      }
      // TestReport.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TestReport.status',
            i,
          ),
        );
        i++;
      }
      // TestReport.tester (string)
      i = 0;
      for (final entry in resource.tester?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TestReport.tester',
            i,
          ),
        );
        i++;
      }
      // TestReport.testScript (reference)
      i = 0;
      for (final entry
          in resource.testScript.makeIterable<fhir.FhirCanonical>() ??
              <fhir.FhirCanonical>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TestReport.testScript',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.TestScript _:
      // TestScript.useContext.code (token)
      i = 0;
      for (final entry in resource.useContext
              ?.map<fhir.Coding?>((e) => e.code)
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TestScript.useContext.code',
            i,
          ),
        );
        i++;
      }
      // TestScript.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TestScript.date',
            i,
          ),
        );
        i++;
      }
      // TestScript.description (string)
      i = 0;
      for (final entry
          in resource.description?.makeIterable<fhir.FhirMarkdown>() ??
              <fhir.FhirMarkdown>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TestScript.description',
            i,
          ),
        );
        i++;
      }
      // TestScript.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TestScript.identifier',
            i,
          ),
        );
        i++;
      }
      // TestScript.jurisdiction (token)
      i = 0;
      for (final entry
          in resource.jurisdiction?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TestScript.jurisdiction',
            i,
          ),
        );
        i++;
      }
      // TestScript.name (string)
      i = 0;
      for (final entry in resource.name.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TestScript.name',
            i,
          ),
        );
        i++;
      }
      // TestScript.publisher (string)
      i = 0;
      for (final entry in resource.publisher?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TestScript.publisher',
            i,
          ),
        );
        i++;
      }
      // TestScript.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TestScript.status',
            i,
          ),
        );
        i++;
      }
      // TestScript.title (string)
      i = 0;
      for (final entry in resource.title?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TestScript.title',
            i,
          ),
        );
        i++;
      }
      // TestScript.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TestScript.url',
            i,
          ),
        );
        i++;
      }
      // TestScript.version (token)
      i = 0;
      for (final entry in resource.version?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TestScript.version',
            i,
          ),
        );
        i++;
      }
      // TestScript.useContext (composite)
      i = 0;
      for (final entry
          in resource.useContext?.makeIterable<fhir.UsageContext>() ??
              <fhir.UsageContext>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TestScript.useContext',
            i,
          ),
        );
        i++;
      }
      // TestScript.scope.artifact (reference)
      i = 0;
      for (final entry in resource.scope
              ?.map<fhir.FhirCanonical?>((e) => e.artifact)
              .makeIterable<fhir.FhirCanonical>() ??
          <fhir.FhirCanonical>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TestScript.scope.artifact',
            i,
          ),
        );
        i++;
      }
      // TestScript.scope.conformance.ofType(CodeableConcept) (token)
      i = 0;
      for (final entry in resource.scope
              ?.map<fhir.CodeableConcept?>((e) => e.conformance)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TestScript.scope.conformance.ofType(CodeableConcept)',
            i,
          ),
        );
        i++;
      }
      // TestScript.scope.phase.ofType(CodeableConcept) (token)
      i = 0;
      for (final entry in resource.scope
              ?.map<fhir.CodeableConcept?>((e) => e.phase)
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TestScript.scope.phase.ofType(CodeableConcept)',
            i,
          ),
        );
        i++;
      }
      // TestScript.metadata.capability.description (string)
      i = 0;
      for (final entry in resource.metadata?.capability
              .map<fhir.FhirString?>((e) => e.description)
              .makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TestScript.metadata.capability.description',
            i,
          ),
        );
        i++;
      }
      // TestScript.scope (composite)
      i = 0;
      for (final entry
          in resource.scope?.makeIterable<fhir.TestScriptScope>() ??
              <fhir.TestScriptScope>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'TestScript.scope',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.Transport _:
      // Transport.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Transport.identifier',
            i,
          ),
        );
        i++;
      }
      // Transport.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'Transport.status',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.ValueSet _:
      // ValueSet.useContext.code (token)
      i = 0;
      for (final entry in resource.useContext
              ?.map<fhir.Coding?>((e) => e.code)
              .makeIterable<fhir.Coding>() ??
          <fhir.Coding>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ValueSet.useContext.code',
            i,
          ),
        );
        i++;
      }
      // ValueSet.date (date)
      i = 0;
      for (final entry in resource.date?.makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ValueSet.date',
            i,
          ),
        );
        i++;
      }
      // ValueSet.relatedArtifact.where(type='derived-from').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'derived-from')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "ValueSet.relatedArtifact.where(type='derived-from').resource",
            i,
          ),
        );
        i++;
      }
      // ValueSet.description (string)
      i = 0;
      for (final entry
          in resource.description?.makeIterable<fhir.FhirMarkdown>() ??
              <fhir.FhirMarkdown>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ValueSet.description',
            i,
          ),
        );
        i++;
      }
      // ValueSet.effectivePeriod (date)
      i = 0;
      for (final entry
          in resource.effectivePeriod?.makeIterable<fhir.Period>() ??
              <fhir.Period>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ValueSet.effectivePeriod',
            i,
          ),
        );
        i++;
      }
      // ValueSet.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ValueSet.identifier',
            i,
          ),
        );
        i++;
      }
      // ValueSet.jurisdiction (token)
      i = 0;
      for (final entry
          in resource.jurisdiction?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ValueSet.jurisdiction',
            i,
          ),
        );
        i++;
      }
      // ValueSet.name (string)
      i = 0;
      for (final entry in resource.name?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ValueSet.name',
            i,
          ),
        );
        i++;
      }
      // ValueSet.relatedArtifact.where(type='predecessor').resource (reference)
      i = 0;
      for (final entry in resource.relatedArtifact
              ?.where((e) => e.type.valueString == 'predecessor')
              .map((e) => e.resource)
              .makeIterable<fhir.RelatedArtifact>() ??
          <fhir.RelatedArtifact>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            "ValueSet.relatedArtifact.where(type='predecessor').resource",
            i,
          ),
        );
        i++;
      }
      // ValueSet.publisher (string)
      i = 0;
      for (final entry in resource.publisher?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ValueSet.publisher',
            i,
          ),
        );
        i++;
      }
      // ValueSet.status (token)
      i = 0;
      for (final entry in resource.status?.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ValueSet.status',
            i,
          ),
        );
        i++;
      }
      // ValueSet.title (string)
      i = 0;
      for (final entry in resource.title?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.stringParams.addAll(
          entry.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ValueSet.title',
            i,
          ),
        );
        i++;
      }
      // ValueSet.topic (token)
      i = 0;
      for (final entry
          in resource.topic?.makeIterable<fhir.CodeableConcept>() ??
              <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ValueSet.topic',
            i,
          ),
        );
        i++;
      }
      // ValueSet.url (uri)
      i = 0;
      for (final entry
          in resource.url?.makeIterable<fhir.FhirUri>() ?? <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ValueSet.url',
            i,
          ),
        );
        i++;
      }
      // ValueSet.version (token)
      i = 0;
      for (final entry in resource.version?.makeIterable<fhir.FhirString>() ??
          <fhir.FhirString>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ValueSet.version',
            i,
          ),
        );
        i++;
      }
      // ValueSet.useContext (composite)
      i = 0;
      for (final entry
          in resource.useContext?.makeIterable<fhir.UsageContext>() ??
              <fhir.UsageContext>[]) {
        searchParameterLists.compositeParams.addAll(
          entry.toCompositeSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ValueSet.useContext',
            i,
          ),
        );
        i++;
      }
      // ValueSet.expansion.contains.code (token)
      i = 0;
      for (final entry in resource.expansion?.contains
              ?.map<fhir.FhirCode?>((e) => e.code)
              .makeIterable<fhir.FhirCode>() ??
          <fhir.FhirCode>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ValueSet.expansion.contains.code',
            i,
          ),
        );
        i++;
      }
      // ValueSet.compose.include.concept.code (token)
      i = 0;
      for (final entry in resource.compose?.include
              .expand((e) => e.concept ?? <fhir.ValueSetConcept>[])
              .map<fhir.FhirCode?>((e) => e.code)
              .makeIterable<fhir.FhirCode>() ??
          <fhir.FhirCode>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ValueSet.compose.include.concept.code',
            i,
          ),
        );
        i++;
      }
      // ValueSet.expansion.identifier (uri)
      i = 0;
      for (final entry
          in resource.expansion?.identifier?.makeIterable<fhir.FhirUri>() ??
              <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ValueSet.expansion.identifier',
            i,
          ),
        );
        i++;
      }
      // ValueSet.compose.include.system (uri)
      i = 0;
      for (final entry in resource.compose?.include
              .map<fhir.FhirUri?>((e) => e.system)
              .makeIterable<fhir.FhirUri>() ??
          <fhir.FhirUri>[]) {
        searchParameterLists.uriParams.addAll(
          entry.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'ValueSet.compose.include.system',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.VerificationResult _:
      // VerificationResult.attestation.communicationMethod (token)
      i = 0;
      for (final entry in resource.attestation?.communicationMethod
              ?.makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'VerificationResult.attestation.communicationMethod',
            i,
          ),
        );
        i++;
      }
      // VerificationResult.attestation.onBehalfOf (reference)
      i = 0;
      for (final entry
          in resource.attestation?.onBehalfOf?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'VerificationResult.attestation.onBehalfOf',
            i,
          ),
        );
        i++;
      }
      // VerificationResult.attestation.who (reference)
      i = 0;
      for (final entry
          in resource.attestation?.who?.makeIterable<fhir.Reference>() ??
              <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'VerificationResult.attestation.who',
            i,
          ),
        );
        i++;
      }
      // VerificationResult.primarySource.validationDate (date)
      i = 0;
      for (final entry in resource.primarySource
              ?.map<fhir.FhirDateTime?>((e) => e.validationDate)
              .makeIterable<fhir.FhirDateTime>() ??
          <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'VerificationResult.primarySource.validationDate',
            i,
          ),
        );
        i++;
      }
      // VerificationResult.primarySource.type (token)
      i = 0;
      for (final entry in resource.primarySource
              ?.expand((e) => e.type ?? <fhir.CodeableConcept>[])
              .makeIterable<fhir.CodeableConcept>() ??
          <fhir.CodeableConcept>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'VerificationResult.primarySource.type',
            i,
          ),
        );
        i++;
      }
      // VerificationResult.primarySource.who (reference)
      i = 0;
      for (final entry in resource.primarySource
              ?.map<fhir.Reference?>((e) => e.who)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'VerificationResult.primarySource.who',
            i,
          ),
        );
        i++;
      }
      // VerificationResult.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'VerificationResult.status',
            i,
          ),
        );
        i++;
      }
      // VerificationResult.statusDate (date)
      i = 0;
      for (final entry
          in resource.statusDate?.makeIterable<fhir.FhirDateTime>() ??
              <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'VerificationResult.statusDate',
            i,
          ),
        );
        i++;
      }
      // VerificationResult.target (reference)
      i = 0;
      for (final entry in resource.target?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'VerificationResult.target',
            i,
          ),
        );
        i++;
      }
      // VerificationResult.validator.organization (reference)
      i = 0;
      for (final entry in resource.validator
              ?.map<fhir.Reference?>((e) => e.organization)
              .makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'VerificationResult.validator.organization',
            i,
          ),
        );
        i++;
      }
      break;
    case fhir.VisionPrescription _:
      // VisionPrescription.identifier (token)
      i = 0;
      for (final entry
          in resource.identifier?.makeIterable<fhir.Identifier>() ??
              <fhir.Identifier>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'VisionPrescription.identifier',
            i,
          ),
        );
        i++;
      }
      // VisionPrescription.patient (reference)
      i = 0;
      for (final entry in resource.patient.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'VisionPrescription.patient',
            i,
          ),
        );
        i++;
      }
      // VisionPrescription.encounter (reference)
      i = 0;
      for (final entry in resource.encounter?.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'VisionPrescription.encounter',
            i,
          ),
        );
        i++;
      }
      // VisionPrescription.dateWritten (date)
      i = 0;
      for (final entry
          in resource.dateWritten.makeIterable<fhir.FhirDateTime>() ??
              <fhir.FhirDateTime>[]) {
        searchParameterLists.dateParams.addAll(
          entry.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'VisionPrescription.dateWritten',
            i,
          ),
        );
        i++;
      }
      // VisionPrescription.prescriber (reference)
      i = 0;
      for (final entry in resource.prescriber.makeIterable<fhir.Reference>() ??
          <fhir.Reference>[]) {
        searchParameterLists.referenceParams.addAll(
          entry.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'VisionPrescription.prescriber',
            i,
          ),
        );
        i++;
      }
      // VisionPrescription.status (token)
      i = 0;
      for (final entry in resource.status.makeIterable<fhir.FhirCodeEnum>() ??
          <fhir.FhirCodeEnum>[]) {
        searchParameterLists.tokenParams.addAll(
          entry.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            'VisionPrescription.status',
            i,
          ),
        );
        i++;
      }
      break;
  }
  return searchParameterLists;
}
