// ignore_for_file: lines_longer_than_80_chars

import 'package:fhir_r6/fhir_r6.dart';

/// This function accepts a String path and a dynamic value
/// and attempts to create a FhirType from that value
FhirBase? fromPath(String? path, dynamic value) {
  if (path == null || value == null) return null;
  final lowercasePath = path.toLowerCase();
  switch (lowercasePath) {
    case 'account':
      return value is! Map<String, dynamic> ? null : Account.fromJson(value);
    case 'account.coverage':
      return value is! Map<String, dynamic>
          ? null
          : AccountCoverage.fromJson(value);
    case 'account.guarantor':
      return value is! Map<String, dynamic>
          ? null
          : AccountGuarantor.fromJson(value);
    case 'account.diagnosis':
      return value is! Map<String, dynamic>
          ? null
          : AccountDiagnosis.fromJson(value);
    case 'account.procedure':
      return value is! Map<String, dynamic>
          ? null
          : AccountProcedure.fromJson(value);
    case 'account.relatedaccount':
      return value is! Map<String, dynamic>
          ? null
          : AccountRelatedAccount.fromJson(value);
    case 'account.balance':
      return value is! Map<String, dynamic>
          ? null
          : AccountBalance.fromJson(value);
    case 'activitydefinition':
      return value is! Map<String, dynamic>
          ? null
          : ActivityDefinition.fromJson(value);
    case 'activitydefinition.participant':
      return value is! Map<String, dynamic>
          ? null
          : ActivityDefinitionParticipant.fromJson(value);
    case 'activitydefinition.dynamicvalue':
      return value is! Map<String, dynamic>
          ? null
          : ActivityDefinitionDynamicValue.fromJson(value);
    case 'actordefinition':
      return value is! Map<String, dynamic>
          ? null
          : ActorDefinition.fromJson(value);
    case 'administrableproductdefinition':
      return value is! Map<String, dynamic>
          ? null
          : AdministrableProductDefinition.fromJson(value);
    case 'administrableproductdefinition.property':
      return value is! Map<String, dynamic>
          ? null
          : AdministrableProductDefinitionProperty.fromJson(value);
    case 'administrableproductdefinition.routeofadministration':
      return value is! Map<String, dynamic>
          ? null
          : AdministrableProductDefinitionRouteOfAdministration.fromJson(value);
    case 'administrableproductdefinition.routeofadministration.targetspecies':
      return value is! Map<String, dynamic>
          ? null
          : AdministrableProductDefinitionTargetSpecies.fromJson(value);
    case 'administrableproductdefinition.routeofadministration.targetspecies.withdrawalperiod':
      return value is! Map<String, dynamic>
          ? null
          : AdministrableProductDefinitionWithdrawalPeriod.fromJson(value);
    case 'adverseevent':
      return value is! Map<String, dynamic>
          ? null
          : AdverseEvent.fromJson(value);
    case 'adverseevent.participant':
      return value is! Map<String, dynamic>
          ? null
          : AdverseEventParticipant.fromJson(value);
    case 'adverseevent.suspectentity':
      return value is! Map<String, dynamic>
          ? null
          : AdverseEventSuspectEntity.fromJson(value);
    case 'adverseevent.suspectentity.causality':
      return value is! Map<String, dynamic>
          ? null
          : AdverseEventCausality.fromJson(value);
    case 'adverseevent.contributingfactor':
      return value is! Map<String, dynamic>
          ? null
          : AdverseEventContributingFactor.fromJson(value);
    case 'adverseevent.preventiveaction':
      return value is! Map<String, dynamic>
          ? null
          : AdverseEventPreventiveAction.fromJson(value);
    case 'adverseevent.mitigatingaction':
      return value is! Map<String, dynamic>
          ? null
          : AdverseEventMitigatingAction.fromJson(value);
    case 'adverseevent.supportinginfo':
      return value is! Map<String, dynamic>
          ? null
          : AdverseEventSupportingInfo.fromJson(value);
    case 'allergyintolerance':
      return value is! Map<String, dynamic>
          ? null
          : AllergyIntolerance.fromJson(value);
    case 'allergyintolerance.participant':
      return value is! Map<String, dynamic>
          ? null
          : AllergyIntoleranceParticipant.fromJson(value);
    case 'allergyintolerance.reaction':
      return value is! Map<String, dynamic>
          ? null
          : AllergyIntoleranceReaction.fromJson(value);
    case 'appointment':
      return value is! Map<String, dynamic>
          ? null
          : Appointment.fromJson(value);
    case 'appointment.participant':
      return value is! Map<String, dynamic>
          ? null
          : AppointmentParticipant.fromJson(value);
    case 'appointment.recurrencetemplate':
      return value is! Map<String, dynamic>
          ? null
          : AppointmentRecurrenceTemplate.fromJson(value);
    case 'appointment.recurrencetemplate.weeklytemplate':
      return value is! Map<String, dynamic>
          ? null
          : AppointmentWeeklyTemplate.fromJson(value);
    case 'appointment.recurrencetemplate.monthlytemplate':
      return value is! Map<String, dynamic>
          ? null
          : AppointmentMonthlyTemplate.fromJson(value);
    case 'appointment.recurrencetemplate.yearlytemplate':
      return value is! Map<String, dynamic>
          ? null
          : AppointmentYearlyTemplate.fromJson(value);
    case 'appointmentresponse':
      return value is! Map<String, dynamic>
          ? null
          : AppointmentResponse.fromJson(value);
    case 'artifactassessment':
      return value is! Map<String, dynamic>
          ? null
          : ArtifactAssessment.fromJson(value);
    case 'artifactassessment.content':
      return value is! Map<String, dynamic>
          ? null
          : ArtifactAssessmentContent.fromJson(value);
    case 'auditevent':
      return value is! Map<String, dynamic> ? null : AuditEvent.fromJson(value);
    case 'auditevent.outcome':
      return value is! Map<String, dynamic>
          ? null
          : AuditEventOutcome.fromJson(value);
    case 'auditevent.agent':
      return value is! Map<String, dynamic>
          ? null
          : AuditEventAgent.fromJson(value);
    case 'auditevent.source':
      return value is! Map<String, dynamic>
          ? null
          : AuditEventSource.fromJson(value);
    case 'auditevent.entity':
      return value is! Map<String, dynamic>
          ? null
          : AuditEventEntity.fromJson(value);
    case 'auditevent.entity.detail':
      return value is! Map<String, dynamic>
          ? null
          : AuditEventDetail.fromJson(value);
    case 'basic':
      return value is! Map<String, dynamic> ? null : Basic.fromJson(value);
    case 'binary':
      return value is! Map<String, dynamic> ? null : Binary.fromJson(value);
    case 'biologicallyderivedproduct':
      return value is! Map<String, dynamic>
          ? null
          : BiologicallyDerivedProduct.fromJson(value);
    case 'biologicallyderivedproduct.collection':
      return value is! Map<String, dynamic>
          ? null
          : BiologicallyDerivedProductCollection.fromJson(value);
    case 'biologicallyderivedproduct.property':
      return value is! Map<String, dynamic>
          ? null
          : BiologicallyDerivedProductProperty.fromJson(value);
    case 'biologicallyderivedproductdispense':
      return value is! Map<String, dynamic>
          ? null
          : BiologicallyDerivedProductDispense.fromJson(value);
    case 'biologicallyderivedproductdispense.performer':
      return value is! Map<String, dynamic>
          ? null
          : BiologicallyDerivedProductDispensePerformer.fromJson(value);
    case 'bodystructure':
      return value is! Map<String, dynamic>
          ? null
          : BodyStructure.fromJson(value);
    case 'bodystructure.includedstructure':
      return value is! Map<String, dynamic>
          ? null
          : BodyStructureIncludedStructure.fromJson(value);
    case 'bodystructure.includedstructure.bodylandmarkorientation':
      return value is! Map<String, dynamic>
          ? null
          : BodyStructureBodyLandmarkOrientation.fromJson(value);
    case 'bodystructure.includedstructure.bodylandmarkorientation.distancefromlandmark':
      return value is! Map<String, dynamic>
          ? null
          : BodyStructureDistanceFromLandmark.fromJson(value);
    case 'bundle':
      return value is! Map<String, dynamic> ? null : Bundle.fromJson(value);
    case 'bundle.link':
      return value is! Map<String, dynamic> ? null : BundleLink.fromJson(value);
    case 'bundle.entry':
      return value is! Map<String, dynamic>
          ? null
          : BundleEntry.fromJson(value);
    case 'bundle.entry.search':
      return value is! Map<String, dynamic>
          ? null
          : BundleSearch.fromJson(value);
    case 'bundle.entry.request':
      return value is! Map<String, dynamic>
          ? null
          : BundleRequest.fromJson(value);
    case 'bundle.entry.response':
      return value is! Map<String, dynamic>
          ? null
          : BundleResponse.fromJson(value);
    case 'capabilitystatement':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatement.fromJson(value);
    case 'capabilitystatement.software':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementSoftware.fromJson(value);
    case 'capabilitystatement.implementation':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementImplementation.fromJson(value);
    case 'capabilitystatement.rest':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementRest.fromJson(value);
    case 'capabilitystatement.rest.security':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementSecurity.fromJson(value);
    case 'capabilitystatement.rest.resource':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementResource.fromJson(value);
    case 'capabilitystatement.rest.resource.interaction':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementInteraction.fromJson(value);
    case 'capabilitystatement.rest.resource.searchparam':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementSearchParam.fromJson(value);
    case 'capabilitystatement.rest.resource.operation':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementOperation.fromJson(value);
    case 'capabilitystatement.rest.interaction':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementInteraction1.fromJson(value);
    case 'capabilitystatement.messaging':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementMessaging.fromJson(value);
    case 'capabilitystatement.messaging.endpoint':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementEndpoint.fromJson(value);
    case 'capabilitystatement.messaging.supportedmessage':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementSupportedMessage.fromJson(value);
    case 'capabilitystatement.document':
      return value is! Map<String, dynamic>
          ? null
          : CapabilityStatementDocument.fromJson(value);
    case 'careplan':
      return value is! Map<String, dynamic> ? null : CarePlan.fromJson(value);
    case 'careplan.activity':
      return value is! Map<String, dynamic>
          ? null
          : CarePlanActivity.fromJson(value);
    case 'careteam':
      return value is! Map<String, dynamic> ? null : CareTeam.fromJson(value);
    case 'careteam.participant':
      return value is! Map<String, dynamic>
          ? null
          : CareTeamParticipant.fromJson(value);
    case 'chargeitem':
      return value is! Map<String, dynamic> ? null : ChargeItem.fromJson(value);
    case 'chargeitem.performer':
      return value is! Map<String, dynamic>
          ? null
          : ChargeItemPerformer.fromJson(value);
    case 'chargeitemdefinition':
      return value is! Map<String, dynamic>
          ? null
          : ChargeItemDefinition.fromJson(value);
    case 'chargeitemdefinition.applicability':
      return value is! Map<String, dynamic>
          ? null
          : ChargeItemDefinitionApplicability.fromJson(value);
    case 'chargeitemdefinition.propertygroup':
      return value is! Map<String, dynamic>
          ? null
          : ChargeItemDefinitionPropertyGroup.fromJson(value);
    case 'citation':
      return value is! Map<String, dynamic> ? null : Citation.fromJson(value);
    case 'citation.summary':
      return value is! Map<String, dynamic>
          ? null
          : CitationSummary.fromJson(value);
    case 'citation.classification':
      return value is! Map<String, dynamic>
          ? null
          : CitationClassification.fromJson(value);
    case 'citation.statusdate':
      return value is! Map<String, dynamic>
          ? null
          : CitationStatusDate.fromJson(value);
    case 'citation.citedartifact':
      return value is! Map<String, dynamic>
          ? null
          : CitationCitedArtifact.fromJson(value);
    case 'citation.citedartifact.version':
      return value is! Map<String, dynamic>
          ? null
          : CitationVersion.fromJson(value);
    case 'citation.citedartifact.statusdate':
      return value is! Map<String, dynamic>
          ? null
          : CitationStatusDate1.fromJson(value);
    case 'citation.citedartifact.title':
      return value is! Map<String, dynamic>
          ? null
          : CitationTitle.fromJson(value);
    case 'citation.citedartifact.abstract':
      return value is! Map<String, dynamic>
          ? null
          : CitationAbstract.fromJson(value);
    case 'citation.citedartifact.part':
      return value is! Map<String, dynamic>
          ? null
          : CitationPart.fromJson(value);
    case 'citation.citedartifact.relatesto':
      return value is! Map<String, dynamic>
          ? null
          : CitationRelatesTo.fromJson(value);
    case 'citation.citedartifact.publicationform':
      return value is! Map<String, dynamic>
          ? null
          : CitationPublicationForm.fromJson(value);
    case 'citation.citedartifact.publicationform.publishedin':
      return value is! Map<String, dynamic>
          ? null
          : CitationPublishedIn.fromJson(value);
    case 'citation.citedartifact.weblocation':
      return value is! Map<String, dynamic>
          ? null
          : CitationWebLocation.fromJson(value);
    case 'citation.citedartifact.classification':
      return value is! Map<String, dynamic>
          ? null
          : CitationClassification1.fromJson(value);
    case 'citation.citedartifact.contributorship':
      return value is! Map<String, dynamic>
          ? null
          : CitationContributorship.fromJson(value);
    case 'citation.citedartifact.contributorship.entry':
      return value is! Map<String, dynamic>
          ? null
          : CitationEntry.fromJson(value);
    case 'citation.citedartifact.contributorship.entry.contributioninstance':
      return value is! Map<String, dynamic>
          ? null
          : CitationContributionInstance.fromJson(value);
    case 'citation.citedartifact.contributorship.summary':
      return value is! Map<String, dynamic>
          ? null
          : CitationSummary1.fromJson(value);
    case 'claim':
      return value is! Map<String, dynamic> ? null : Claim.fromJson(value);
    case 'claim.related':
      return value is! Map<String, dynamic>
          ? null
          : ClaimRelated.fromJson(value);
    case 'claim.payee':
      return value is! Map<String, dynamic> ? null : ClaimPayee.fromJson(value);
    case 'claim.event':
      return value is! Map<String, dynamic> ? null : ClaimEvent.fromJson(value);
    case 'claim.careteam':
      return value is! Map<String, dynamic>
          ? null
          : ClaimCareTeam.fromJson(value);
    case 'claim.supportinginfo':
      return value is! Map<String, dynamic>
          ? null
          : ClaimSupportingInfo.fromJson(value);
    case 'claim.diagnosis':
      return value is! Map<String, dynamic>
          ? null
          : ClaimDiagnosis.fromJson(value);
    case 'claim.procedure':
      return value is! Map<String, dynamic>
          ? null
          : ClaimProcedure.fromJson(value);
    case 'claim.insurance':
      return value is! Map<String, dynamic>
          ? null
          : ClaimInsurance.fromJson(value);
    case 'claim.accident':
      return value is! Map<String, dynamic>
          ? null
          : ClaimAccident.fromJson(value);
    case 'claim.item':
      return value is! Map<String, dynamic> ? null : ClaimItem.fromJson(value);
    case 'claim.item.bodysite':
      return value is! Map<String, dynamic>
          ? null
          : ClaimBodySite.fromJson(value);
    case 'claim.item.detail':
      return value is! Map<String, dynamic>
          ? null
          : ClaimDetail.fromJson(value);
    case 'claim.item.detail.subdetail':
      return value is! Map<String, dynamic>
          ? null
          : ClaimSubDetail.fromJson(value);
    case 'claimresponse':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponse.fromJson(value);
    case 'claimresponse.event':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseEvent.fromJson(value);
    case 'claimresponse.item':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseItem.fromJson(value);
    case 'claimresponse.item.reviewoutcome':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseReviewOutcome.fromJson(value);
    case 'claimresponse.item.adjudication':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseAdjudication.fromJson(value);
    case 'claimresponse.item.detail':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseDetail.fromJson(value);
    case 'claimresponse.item.detail.subdetail':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseSubDetail.fromJson(value);
    case 'claimresponse.additem':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseAddItem.fromJson(value);
    case 'claimresponse.additem.bodysite':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseBodySite.fromJson(value);
    case 'claimresponse.additem.detail':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseDetail1.fromJson(value);
    case 'claimresponse.additem.detail.subdetail':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseSubDetail1.fromJson(value);
    case 'claimresponse.total':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseTotal.fromJson(value);
    case 'claimresponse.payment':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponsePayment.fromJson(value);
    case 'claimresponse.processnote':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseProcessNote.fromJson(value);
    case 'claimresponse.insurance':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseInsurance.fromJson(value);
    case 'claimresponse.error':
      return value is! Map<String, dynamic>
          ? null
          : ClaimResponseError.fromJson(value);
    case 'clinicalimpression':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalImpression.fromJson(value);
    case 'clinicalimpression.finding':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalImpressionFinding.fromJson(value);
    case 'clinicalusedefinition':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinition.fromJson(value);
    case 'clinicalusedefinition.contraindication':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinitionContraindication.fromJson(value);
    case 'clinicalusedefinition.contraindication.othertherapy':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinitionOtherTherapy.fromJson(value);
    case 'clinicalusedefinition.indication':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinitionIndication.fromJson(value);
    case 'clinicalusedefinition.interaction':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinitionInteraction.fromJson(value);
    case 'clinicalusedefinition.interaction.interactant':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinitionInteractant.fromJson(value);
    case 'clinicalusedefinition.undesirableeffect':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinitionUndesirableEffect.fromJson(value);
    case 'clinicalusedefinition.warning':
      return value is! Map<String, dynamic>
          ? null
          : ClinicalUseDefinitionWarning.fromJson(value);
    case 'codesystem':
      return value is! Map<String, dynamic> ? null : CodeSystem.fromJson(value);
    case 'codesystem.filter':
      return value is! Map<String, dynamic>
          ? null
          : CodeSystemFilter.fromJson(value);
    case 'codesystem.property':
      return value is! Map<String, dynamic>
          ? null
          : CodeSystemProperty.fromJson(value);
    case 'codesystem.concept':
      return value is! Map<String, dynamic>
          ? null
          : CodeSystemConcept.fromJson(value);
    case 'codesystem.concept.designation':
      return value is! Map<String, dynamic>
          ? null
          : CodeSystemDesignation.fromJson(value);
    case 'codesystem.concept.property':
      return value is! Map<String, dynamic>
          ? null
          : CodeSystemProperty1.fromJson(value);
    case 'communication':
      return value is! Map<String, dynamic>
          ? null
          : Communication.fromJson(value);
    case 'communication.payload':
      return value is! Map<String, dynamic>
          ? null
          : CommunicationPayload.fromJson(value);
    case 'communicationrequest':
      return value is! Map<String, dynamic>
          ? null
          : CommunicationRequest.fromJson(value);
    case 'communicationrequest.payload':
      return value is! Map<String, dynamic>
          ? null
          : CommunicationRequestPayload.fromJson(value);
    case 'compartmentdefinition':
      return value is! Map<String, dynamic>
          ? null
          : CompartmentDefinition.fromJson(value);
    case 'compartmentdefinition.resource':
      return value is! Map<String, dynamic>
          ? null
          : CompartmentDefinitionResource.fromJson(value);
    case 'composition':
      return value is! Map<String, dynamic>
          ? null
          : Composition.fromJson(value);
    case 'composition.attester':
      return value is! Map<String, dynamic>
          ? null
          : CompositionAttester.fromJson(value);
    case 'composition.event':
      return value is! Map<String, dynamic>
          ? null
          : CompositionEvent.fromJson(value);
    case 'composition.section':
      return value is! Map<String, dynamic>
          ? null
          : CompositionSection.fromJson(value);
    case 'conceptmap':
      return value is! Map<String, dynamic> ? null : ConceptMap.fromJson(value);
    case 'conceptmap.property':
      return value is! Map<String, dynamic>
          ? null
          : ConceptMapProperty.fromJson(value);
    case 'conceptmap.additionalattribute':
      return value is! Map<String, dynamic>
          ? null
          : ConceptMapAdditionalAttribute.fromJson(value);
    case 'conceptmap.group':
      return value is! Map<String, dynamic>
          ? null
          : ConceptMapGroup.fromJson(value);
    case 'conceptmap.group.element':
      return value is! Map<String, dynamic>
          ? null
          : ConceptMapElement.fromJson(value);
    case 'conceptmap.group.element.target':
      return value is! Map<String, dynamic>
          ? null
          : ConceptMapTarget.fromJson(value);
    case 'conceptmap.group.element.target.property':
      return value is! Map<String, dynamic>
          ? null
          : ConceptMapProperty1.fromJson(value);
    case 'conceptmap.group.element.target.dependson':
      return value is! Map<String, dynamic>
          ? null
          : ConceptMapDependsOn.fromJson(value);
    case 'conceptmap.group.unmapped':
      return value is! Map<String, dynamic>
          ? null
          : ConceptMapUnmapped.fromJson(value);
    case 'condition':
      return value is! Map<String, dynamic> ? null : Condition.fromJson(value);
    case 'condition.participant':
      return value is! Map<String, dynamic>
          ? null
          : ConditionParticipant.fromJson(value);
    case 'condition.stage':
      return value is! Map<String, dynamic>
          ? null
          : ConditionStage.fromJson(value);
    case 'conditiondefinition':
      return value is! Map<String, dynamic>
          ? null
          : ConditionDefinition.fromJson(value);
    case 'conditiondefinition.observation':
      return value is! Map<String, dynamic>
          ? null
          : ConditionDefinitionObservation.fromJson(value);
    case 'conditiondefinition.medication':
      return value is! Map<String, dynamic>
          ? null
          : ConditionDefinitionMedication.fromJson(value);
    case 'conditiondefinition.precondition':
      return value is! Map<String, dynamic>
          ? null
          : ConditionDefinitionPrecondition.fromJson(value);
    case 'conditiondefinition.questionnaire':
      return value is! Map<String, dynamic>
          ? null
          : ConditionDefinitionQuestionnaire.fromJson(value);
    case 'conditiondefinition.plan':
      return value is! Map<String, dynamic>
          ? null
          : ConditionDefinitionPlan.fromJson(value);
    case 'consent':
      return value is! Map<String, dynamic> ? null : Consent.fromJson(value);
    case 'consent.policybasis':
      return value is! Map<String, dynamic>
          ? null
          : ConsentPolicyBasis.fromJson(value);
    case 'consent.verification':
      return value is! Map<String, dynamic>
          ? null
          : ConsentVerification.fromJson(value);
    case 'consent.provision':
      return value is! Map<String, dynamic>
          ? null
          : ConsentProvision.fromJson(value);
    case 'consent.provision.actor':
      return value is! Map<String, dynamic>
          ? null
          : ConsentActor.fromJson(value);
    case 'consent.provision.data':
      return value is! Map<String, dynamic>
          ? null
          : ConsentData.fromJson(value);
    case 'contract':
      return value is! Map<String, dynamic> ? null : Contract.fromJson(value);
    case 'contract.contentdefinition':
      return value is! Map<String, dynamic>
          ? null
          : ContractContentDefinition.fromJson(value);
    case 'contract.term':
      return value is! Map<String, dynamic>
          ? null
          : ContractTerm.fromJson(value);
    case 'contract.term.securitylabel':
      return value is! Map<String, dynamic>
          ? null
          : ContractSecurityLabel.fromJson(value);
    case 'contract.term.offer':
      return value is! Map<String, dynamic>
          ? null
          : ContractOffer.fromJson(value);
    case 'contract.term.offer.party':
      return value is! Map<String, dynamic>
          ? null
          : ContractParty.fromJson(value);
    case 'contract.term.offer.answer':
      return value is! Map<String, dynamic>
          ? null
          : ContractAnswer.fromJson(value);
    case 'contract.term.asset':
      return value is! Map<String, dynamic>
          ? null
          : ContractAsset.fromJson(value);
    case 'contract.term.asset.context':
      return value is! Map<String, dynamic>
          ? null
          : ContractContext.fromJson(value);
    case 'contract.term.asset.valueditem':
      return value is! Map<String, dynamic>
          ? null
          : ContractValuedItem.fromJson(value);
    case 'contract.term.action':
      return value is! Map<String, dynamic>
          ? null
          : ContractAction.fromJson(value);
    case 'contract.term.action.subject':
      return value is! Map<String, dynamic>
          ? null
          : ContractSubject.fromJson(value);
    case 'contract.signer':
      return value is! Map<String, dynamic>
          ? null
          : ContractSigner.fromJson(value);
    case 'contract.friendly':
      return value is! Map<String, dynamic>
          ? null
          : ContractFriendly.fromJson(value);
    case 'contract.legal':
      return value is! Map<String, dynamic>
          ? null
          : ContractLegal.fromJson(value);
    case 'contract.rule':
      return value is! Map<String, dynamic>
          ? null
          : ContractRule.fromJson(value);
    case 'coverage':
      return value is! Map<String, dynamic> ? null : Coverage.fromJson(value);
    case 'coverage.paymentby':
      return value is! Map<String, dynamic>
          ? null
          : CoveragePaymentBy.fromJson(value);
    case 'coverage.class':
      return value is! Map<String, dynamic>
          ? null
          : CoverageClass.fromJson(value);
    case 'coverage.costtobeneficiary':
      return value is! Map<String, dynamic>
          ? null
          : CoverageCostToBeneficiary.fromJson(value);
    case 'coverage.costtobeneficiary.exception':
      return value is! Map<String, dynamic>
          ? null
          : CoverageException.fromJson(value);
    case 'coverageeligibilityrequest':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityRequest.fromJson(value);
    case 'coverageeligibilityrequest.event':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityRequestEvent.fromJson(value);
    case 'coverageeligibilityrequest.supportinginfo':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityRequestSupportingInfo.fromJson(value);
    case 'coverageeligibilityrequest.insurance':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityRequestInsurance.fromJson(value);
    case 'coverageeligibilityrequest.item':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityRequestItem.fromJson(value);
    case 'coverageeligibilityrequest.item.diagnosis':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityRequestDiagnosis.fromJson(value);
    case 'coverageeligibilityresponse':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityResponse.fromJson(value);
    case 'coverageeligibilityresponse.event':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityResponseEvent.fromJson(value);
    case 'coverageeligibilityresponse.insurance':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityResponseInsurance.fromJson(value);
    case 'coverageeligibilityresponse.insurance.item':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityResponseItem.fromJson(value);
    case 'coverageeligibilityresponse.insurance.item.benefit':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityResponseBenefit.fromJson(value);
    case 'coverageeligibilityresponse.error':
      return value is! Map<String, dynamic>
          ? null
          : CoverageEligibilityResponseError.fromJson(value);
    case 'detectedissue':
      return value is! Map<String, dynamic>
          ? null
          : DetectedIssue.fromJson(value);
    case 'detectedissue.evidence':
      return value is! Map<String, dynamic>
          ? null
          : DetectedIssueEvidence.fromJson(value);
    case 'detectedissue.mitigation':
      return value is! Map<String, dynamic>
          ? null
          : DetectedIssueMitigation.fromJson(value);
    case 'device':
      return value is! Map<String, dynamic> ? null : Device.fromJson(value);
    case 'device.udicarrier':
      return value is! Map<String, dynamic>
          ? null
          : DeviceUdiCarrier.fromJson(value);
    case 'device.name':
      return value is! Map<String, dynamic> ? null : DeviceName.fromJson(value);
    case 'device.version':
      return value is! Map<String, dynamic>
          ? null
          : DeviceVersion.fromJson(value);
    case 'device.conformsto':
      return value is! Map<String, dynamic>
          ? null
          : DeviceConformsTo.fromJson(value);
    case 'device.property':
      return value is! Map<String, dynamic>
          ? null
          : DeviceProperty.fromJson(value);
    case 'deviceassociation':
      return value is! Map<String, dynamic>
          ? null
          : DeviceAssociation.fromJson(value);
    case 'deviceassociation.operation':
      return value is! Map<String, dynamic>
          ? null
          : DeviceAssociationOperation.fromJson(value);
    case 'devicedefinition':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinition.fromJson(value);
    case 'devicedefinition.udideviceidentifier':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionUdiDeviceIdentifier.fromJson(value);
    case 'devicedefinition.udideviceidentifier.marketdistribution':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionMarketDistribution.fromJson(value);
    case 'devicedefinition.regulatoryidentifier':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionRegulatoryIdentifier.fromJson(value);
    case 'devicedefinition.devicename':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionDeviceName.fromJson(value);
    case 'devicedefinition.classification':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionClassification.fromJson(value);
    case 'devicedefinition.conformsto':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionConformsTo.fromJson(value);
    case 'devicedefinition.haspart':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionHasPart.fromJson(value);
    case 'devicedefinition.packaging':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionPackaging.fromJson(value);
    case 'devicedefinition.packaging.distributor':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionDistributor.fromJson(value);
    case 'devicedefinition.version':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionVersion.fromJson(value);
    case 'devicedefinition.property':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionProperty.fromJson(value);
    case 'devicedefinition.link':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionLink.fromJson(value);
    case 'devicedefinition.material':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionMaterial.fromJson(value);
    case 'devicedefinition.guideline':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionGuideline.fromJson(value);
    case 'devicedefinition.correctiveaction':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionCorrectiveAction.fromJson(value);
    case 'devicedefinition.chargeitem':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDefinitionChargeItem.fromJson(value);
    case 'devicedispense':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDispense.fromJson(value);
    case 'devicedispense.performer':
      return value is! Map<String, dynamic>
          ? null
          : DeviceDispensePerformer.fromJson(value);
    case 'devicemetric':
      return value is! Map<String, dynamic>
          ? null
          : DeviceMetric.fromJson(value);
    case 'devicemetric.calibration':
      return value is! Map<String, dynamic>
          ? null
          : DeviceMetricCalibration.fromJson(value);
    case 'devicerequest':
      return value is! Map<String, dynamic>
          ? null
          : DeviceRequest.fromJson(value);
    case 'devicerequest.parameter':
      return value is! Map<String, dynamic>
          ? null
          : DeviceRequestParameter.fromJson(value);
    case 'deviceusage':
      return value is! Map<String, dynamic>
          ? null
          : DeviceUsage.fromJson(value);
    case 'deviceusage.adherence':
      return value is! Map<String, dynamic>
          ? null
          : DeviceUsageAdherence.fromJson(value);
    case 'diagnosticreport':
      return value is! Map<String, dynamic>
          ? null
          : DiagnosticReport.fromJson(value);
    case 'diagnosticreport.supportinginfo':
      return value is! Map<String, dynamic>
          ? null
          : DiagnosticReportSupportingInfo.fromJson(value);
    case 'diagnosticreport.media':
      return value is! Map<String, dynamic>
          ? null
          : DiagnosticReportMedia.fromJson(value);
    case 'documentreference':
      return value is! Map<String, dynamic>
          ? null
          : DocumentReference.fromJson(value);
    case 'documentreference.attester':
      return value is! Map<String, dynamic>
          ? null
          : DocumentReferenceAttester.fromJson(value);
    case 'documentreference.relatesto':
      return value is! Map<String, dynamic>
          ? null
          : DocumentReferenceRelatesTo.fromJson(value);
    case 'documentreference.content':
      return value is! Map<String, dynamic>
          ? null
          : DocumentReferenceContent.fromJson(value);
    case 'documentreference.content.profile':
      return value is! Map<String, dynamic>
          ? null
          : DocumentReferenceProfile.fromJson(value);
    case 'encounter':
      return value is! Map<String, dynamic> ? null : Encounter.fromJson(value);
    case 'encounter.participant':
      return value is! Map<String, dynamic>
          ? null
          : EncounterParticipant.fromJson(value);
    case 'encounter.reason':
      return value is! Map<String, dynamic>
          ? null
          : EncounterReason.fromJson(value);
    case 'encounter.diagnosis':
      return value is! Map<String, dynamic>
          ? null
          : EncounterDiagnosis.fromJson(value);
    case 'encounter.admission':
      return value is! Map<String, dynamic>
          ? null
          : EncounterAdmission.fromJson(value);
    case 'encounter.location':
      return value is! Map<String, dynamic>
          ? null
          : EncounterLocation.fromJson(value);
    case 'encounterhistory':
      return value is! Map<String, dynamic>
          ? null
          : EncounterHistory.fromJson(value);
    case 'encounterhistory.location':
      return value is! Map<String, dynamic>
          ? null
          : EncounterHistoryLocation.fromJson(value);
    case 'endpoint':
      return value is! Map<String, dynamic>
          ? null
          : FhirEndpoint.fromJson(value);
    case 'endpoint.payload':
      return value is! Map<String, dynamic>
          ? null
          : EndpointPayload.fromJson(value);
    case 'enrollmentrequest':
      return value is! Map<String, dynamic>
          ? null
          : EnrollmentRequest.fromJson(value);
    case 'enrollmentresponse':
      return value is! Map<String, dynamic>
          ? null
          : EnrollmentResponse.fromJson(value);
    case 'episodeofcare':
      return value is! Map<String, dynamic>
          ? null
          : EpisodeOfCare.fromJson(value);
    case 'episodeofcare.statushistory':
      return value is! Map<String, dynamic>
          ? null
          : EpisodeOfCareStatusHistory.fromJson(value);
    case 'episodeofcare.reason':
      return value is! Map<String, dynamic>
          ? null
          : EpisodeOfCareReason.fromJson(value);
    case 'episodeofcare.diagnosis':
      return value is! Map<String, dynamic>
          ? null
          : EpisodeOfCareDiagnosis.fromJson(value);
    case 'eventdefinition':
      return value is! Map<String, dynamic>
          ? null
          : EventDefinition.fromJson(value);
    case 'evidence':
      return value is! Map<String, dynamic> ? null : Evidence.fromJson(value);
    case 'evidence.variabledefinition':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceVariableDefinition.fromJson(value);
    case 'evidence.statistic':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceStatistic.fromJson(value);
    case 'evidence.statistic.samplesize':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceSampleSize.fromJson(value);
    case 'evidence.statistic.attributeestimate':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceAttributeEstimate.fromJson(value);
    case 'evidence.statistic.modelcharacteristic':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceModelCharacteristic.fromJson(value);
    case 'evidence.statistic.modelcharacteristic.variable':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceModelCharacteristicVariable.fromJson(value);
    case 'evidence.certainty':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceCertainty.fromJson(value);
    case 'evidencereport':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceReport.fromJson(value);
    case 'evidencereport.subject':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceReportSubject.fromJson(value);
    case 'evidencereport.subject.characteristic':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceReportCharacteristic.fromJson(value);
    case 'evidencereport.relatesto':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceReportRelatesTo.fromJson(value);
    case 'evidencereport.relatesto.target':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceReportTarget.fromJson(value);
    case 'evidencereport.section':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceReportSection.fromJson(value);
    case 'evidencevariable':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceVariable.fromJson(value);
    case 'evidencevariable.characteristic':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceVariableCharacteristic.fromJson(value);
    case 'evidencevariable.characteristic.definitionbytypeandvalue':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceVariableDefinitionByTypeAndValue.fromJson(value);
    case 'evidencevariable.characteristic.definitionbycombination':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceVariableDefinitionByCombination.fromJson(value);
    case 'evidencevariable.characteristic.timefromevent':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceVariableTimeFromEvent.fromJson(value);
    case 'evidencevariable.category':
      return value is! Map<String, dynamic>
          ? null
          : EvidenceVariableCategory.fromJson(value);
    case 'examplescenario':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenario.fromJson(value);
    case 'examplescenario.actor':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioActor.fromJson(value);
    case 'examplescenario.instance':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioInstance.fromJson(value);
    case 'examplescenario.instance.version':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioVersion.fromJson(value);
    case 'examplescenario.instance.containedinstance':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioContainedInstance.fromJson(value);
    case 'examplescenario.process':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioProcess.fromJson(value);
    case 'examplescenario.process.step':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioStep.fromJson(value);
    case 'examplescenario.process.step.operation':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioOperation.fromJson(value);
    case 'examplescenario.process.step.alternative':
      return value is! Map<String, dynamic>
          ? null
          : ExampleScenarioAlternative.fromJson(value);
    case 'explanationofbenefit':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefit.fromJson(value);
    case 'explanationofbenefit.related':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitRelated.fromJson(value);
    case 'explanationofbenefit.event':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitEvent.fromJson(value);
    case 'explanationofbenefit.payee':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitPayee.fromJson(value);
    case 'explanationofbenefit.careteam':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitCareTeam.fromJson(value);
    case 'explanationofbenefit.supportinginfo':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitSupportingInfo.fromJson(value);
    case 'explanationofbenefit.diagnosis':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitDiagnosis.fromJson(value);
    case 'explanationofbenefit.procedure':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitProcedure.fromJson(value);
    case 'explanationofbenefit.insurance':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitInsurance.fromJson(value);
    case 'explanationofbenefit.accident':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitAccident.fromJson(value);
    case 'explanationofbenefit.item':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitItem.fromJson(value);
    case 'explanationofbenefit.item.bodysite':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitBodySite.fromJson(value);
    case 'explanationofbenefit.item.reviewoutcome':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitReviewOutcome.fromJson(value);
    case 'explanationofbenefit.item.adjudication':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitAdjudication.fromJson(value);
    case 'explanationofbenefit.item.detail':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitDetail.fromJson(value);
    case 'explanationofbenefit.item.detail.subdetail':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitSubDetail.fromJson(value);
    case 'explanationofbenefit.additem':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitAddItem.fromJson(value);
    case 'explanationofbenefit.additem.bodysite':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitBodySite1.fromJson(value);
    case 'explanationofbenefit.additem.detail':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitDetail1.fromJson(value);
    case 'explanationofbenefit.additem.detail.subdetail':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitSubDetail1.fromJson(value);
    case 'explanationofbenefit.total':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitTotal.fromJson(value);
    case 'explanationofbenefit.payment':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitPayment.fromJson(value);
    case 'explanationofbenefit.processnote':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitProcessNote.fromJson(value);
    case 'explanationofbenefit.benefitbalance':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitBenefitBalance.fromJson(value);
    case 'explanationofbenefit.benefitbalance.financial':
      return value is! Map<String, dynamic>
          ? null
          : ExplanationOfBenefitFinancial.fromJson(value);
    case 'familymemberhistory':
      return value is! Map<String, dynamic>
          ? null
          : FamilyMemberHistory.fromJson(value);
    case 'familymemberhistory.participant':
      return value is! Map<String, dynamic>
          ? null
          : FamilyMemberHistoryParticipant.fromJson(value);
    case 'familymemberhistory.condition':
      return value is! Map<String, dynamic>
          ? null
          : FamilyMemberHistoryCondition.fromJson(value);
    case 'familymemberhistory.procedure':
      return value is! Map<String, dynamic>
          ? null
          : FamilyMemberHistoryProcedure.fromJson(value);
    case 'flag':
      return value is! Map<String, dynamic> ? null : Flag.fromJson(value);
    case 'formularyitem':
      return value is! Map<String, dynamic>
          ? null
          : FormularyItem.fromJson(value);
    case 'genomicstudy':
      return value is! Map<String, dynamic>
          ? null
          : GenomicStudy.fromJson(value);
    case 'genomicstudy.analysis':
      return value is! Map<String, dynamic>
          ? null
          : GenomicStudyAnalysis.fromJson(value);
    case 'genomicstudy.analysis.input':
      return value is! Map<String, dynamic>
          ? null
          : GenomicStudyInput.fromJson(value);
    case 'genomicstudy.analysis.output':
      return value is! Map<String, dynamic>
          ? null
          : GenomicStudyOutput.fromJson(value);
    case 'genomicstudy.analysis.performer':
      return value is! Map<String, dynamic>
          ? null
          : GenomicStudyPerformer.fromJson(value);
    case 'genomicstudy.analysis.device':
      return value is! Map<String, dynamic>
          ? null
          : GenomicStudyDevice.fromJson(value);
    case 'goal':
      return value is! Map<String, dynamic> ? null : Goal.fromJson(value);
    case 'goal.target':
      return value is! Map<String, dynamic> ? null : GoalTarget.fromJson(value);
    case 'graphdefinition':
      return value is! Map<String, dynamic>
          ? null
          : GraphDefinition.fromJson(value);
    case 'graphdefinition.node':
      return value is! Map<String, dynamic>
          ? null
          : GraphDefinitionNode.fromJson(value);
    case 'graphdefinition.link':
      return value is! Map<String, dynamic>
          ? null
          : GraphDefinitionLink.fromJson(value);
    case 'graphdefinition.link.compartment':
      return value is! Map<String, dynamic>
          ? null
          : GraphDefinitionCompartment.fromJson(value);
    case 'group':
      return value is! Map<String, dynamic> ? null : FhirGroup.fromJson(value);
    case 'group.characteristic':
      return value is! Map<String, dynamic>
          ? null
          : GroupCharacteristic.fromJson(value);
    case 'group.member':
      return value is! Map<String, dynamic>
          ? null
          : GroupMember.fromJson(value);
    case 'guidanceresponse':
      return value is! Map<String, dynamic>
          ? null
          : GuidanceResponse.fromJson(value);
    case 'healthcareservice':
      return value is! Map<String, dynamic>
          ? null
          : HealthcareService.fromJson(value);
    case 'healthcareservice.eligibility':
      return value is! Map<String, dynamic>
          ? null
          : HealthcareServiceEligibility.fromJson(value);
    case 'imagingselection':
      return value is! Map<String, dynamic>
          ? null
          : ImagingSelection.fromJson(value);
    case 'imagingselection.performer':
      return value is! Map<String, dynamic>
          ? null
          : ImagingSelectionPerformer.fromJson(value);
    case 'imagingselection.instance':
      return value is! Map<String, dynamic>
          ? null
          : ImagingSelectionInstance.fromJson(value);
    case 'imagingselection.instance.imageregion2d':
      return value is! Map<String, dynamic>
          ? null
          : ImagingSelectionImageRegion2D.fromJson(value);
    case 'imagingselection.instance.imageregion3d':
      return value is! Map<String, dynamic>
          ? null
          : ImagingSelectionImageRegion3D.fromJson(value);
    case 'imagingstudy':
      return value is! Map<String, dynamic>
          ? null
          : ImagingStudy.fromJson(value);
    case 'imagingstudy.series':
      return value is! Map<String, dynamic>
          ? null
          : ImagingStudySeries.fromJson(value);
    case 'imagingstudy.series.performer':
      return value is! Map<String, dynamic>
          ? null
          : ImagingStudyPerformer.fromJson(value);
    case 'imagingstudy.series.instance':
      return value is! Map<String, dynamic>
          ? null
          : ImagingStudyInstance.fromJson(value);
    case 'immunization':
      return value is! Map<String, dynamic>
          ? null
          : Immunization.fromJson(value);
    case 'immunization.performer':
      return value is! Map<String, dynamic>
          ? null
          : ImmunizationPerformer.fromJson(value);
    case 'immunization.programeligibility':
      return value is! Map<String, dynamic>
          ? null
          : ImmunizationProgramEligibility.fromJson(value);
    case 'immunization.reaction':
      return value is! Map<String, dynamic>
          ? null
          : ImmunizationReaction.fromJson(value);
    case 'immunization.protocolapplied':
      return value is! Map<String, dynamic>
          ? null
          : ImmunizationProtocolApplied.fromJson(value);
    case 'immunizationevaluation':
      return value is! Map<String, dynamic>
          ? null
          : ImmunizationEvaluation.fromJson(value);
    case 'immunizationrecommendation':
      return value is! Map<String, dynamic>
          ? null
          : ImmunizationRecommendation.fromJson(value);
    case 'immunizationrecommendation.recommendation':
      return value is! Map<String, dynamic>
          ? null
          : ImmunizationRecommendationRecommendation.fromJson(value);
    case 'immunizationrecommendation.recommendation.datecriterion':
      return value is! Map<String, dynamic>
          ? null
          : ImmunizationRecommendationDateCriterion.fromJson(value);
    case 'implementationguide':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuide.fromJson(value);
    case 'implementationguide.dependson':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideDependsOn.fromJson(value);
    case 'implementationguide.global':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideGlobal.fromJson(value);
    case 'implementationguide.definition':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideDefinition.fromJson(value);
    case 'implementationguide.definition.grouping':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideGrouping.fromJson(value);
    case 'implementationguide.definition.resource':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideResource.fromJson(value);
    case 'implementationguide.definition.page':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuidePage.fromJson(value);
    case 'implementationguide.definition.parameter':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideParameter.fromJson(value);
    case 'implementationguide.definition.template':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideTemplate.fromJson(value);
    case 'implementationguide.manifest':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideManifest.fromJson(value);
    case 'implementationguide.manifest.resource':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuideResource1.fromJson(value);
    case 'implementationguide.manifest.page':
      return value is! Map<String, dynamic>
          ? null
          : ImplementationGuidePage1.fromJson(value);
    case 'ingredient':
      return value is! Map<String, dynamic> ? null : Ingredient.fromJson(value);
    case 'ingredient.manufacturer':
      return value is! Map<String, dynamic>
          ? null
          : IngredientManufacturer.fromJson(value);
    case 'ingredient.substance':
      return value is! Map<String, dynamic>
          ? null
          : IngredientSubstance.fromJson(value);
    case 'ingredient.substance.strength':
      return value is! Map<String, dynamic>
          ? null
          : IngredientStrength.fromJson(value);
    case 'ingredient.substance.strength.referencestrength':
      return value is! Map<String, dynamic>
          ? null
          : IngredientReferenceStrength.fromJson(value);
    case 'insuranceplan':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlan.fromJson(value);
    case 'insuranceplan.coverage':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanCoverage.fromJson(value);
    case 'insuranceplan.coverage.benefit':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanBenefit.fromJson(value);
    case 'insuranceplan.coverage.benefit.limit':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanLimit.fromJson(value);
    case 'insuranceplan.plan':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanPlan.fromJson(value);
    case 'insuranceplan.plan.generalcost':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanGeneralCost.fromJson(value);
    case 'insuranceplan.plan.specificcost':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanSpecificCost.fromJson(value);
    case 'insuranceplan.plan.specificcost.benefit':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanBenefit1.fromJson(value);
    case 'insuranceplan.plan.specificcost.benefit.cost':
      return value is! Map<String, dynamic>
          ? null
          : InsurancePlanCost.fromJson(value);
    case 'inventoryitem':
      return value is! Map<String, dynamic>
          ? null
          : InventoryItem.fromJson(value);
    case 'inventoryitem.name':
      return value is! Map<String, dynamic>
          ? null
          : InventoryItemName.fromJson(value);
    case 'inventoryitem.responsibleorganization':
      return value is! Map<String, dynamic>
          ? null
          : InventoryItemResponsibleOrganization.fromJson(value);
    case 'inventoryitem.description':
      return value is! Map<String, dynamic>
          ? null
          : InventoryItemDescription.fromJson(value);
    case 'inventoryitem.association':
      return value is! Map<String, dynamic>
          ? null
          : InventoryItemAssociation.fromJson(value);
    case 'inventoryitem.characteristic':
      return value is! Map<String, dynamic>
          ? null
          : InventoryItemCharacteristic.fromJson(value);
    case 'inventoryitem.instance':
      return value is! Map<String, dynamic>
          ? null
          : InventoryItemInstance.fromJson(value);
    case 'inventoryreport':
      return value is! Map<String, dynamic>
          ? null
          : InventoryReport.fromJson(value);
    case 'inventoryreport.inventorylisting':
      return value is! Map<String, dynamic>
          ? null
          : InventoryReportInventoryListing.fromJson(value);
    case 'inventoryreport.inventorylisting.item':
      return value is! Map<String, dynamic>
          ? null
          : InventoryReportItem.fromJson(value);
    case 'invoice':
      return value is! Map<String, dynamic> ? null : Invoice.fromJson(value);
    case 'invoice.participant':
      return value is! Map<String, dynamic>
          ? null
          : InvoiceParticipant.fromJson(value);
    case 'invoice.lineitem':
      return value is! Map<String, dynamic>
          ? null
          : InvoiceLineItem.fromJson(value);
    case 'library':
      return value is! Map<String, dynamic> ? null : Library.fromJson(value);
    case 'linkage':
      return value is! Map<String, dynamic> ? null : Linkage.fromJson(value);
    case 'linkage.item':
      return value is! Map<String, dynamic>
          ? null
          : LinkageItem.fromJson(value);
    case 'list':
      return value is! Map<String, dynamic> ? null : FhirList.fromJson(value);
    case 'list.entry':
      return value is! Map<String, dynamic> ? null : ListEntry.fromJson(value);
    case 'location':
      return value is! Map<String, dynamic> ? null : Location.fromJson(value);
    case 'location.position':
      return value is! Map<String, dynamic>
          ? null
          : LocationPosition.fromJson(value);
    case 'manufactureditemdefinition':
      return value is! Map<String, dynamic>
          ? null
          : ManufacturedItemDefinition.fromJson(value);
    case 'manufactureditemdefinition.property':
      return value is! Map<String, dynamic>
          ? null
          : ManufacturedItemDefinitionProperty.fromJson(value);
    case 'manufactureditemdefinition.component':
      return value is! Map<String, dynamic>
          ? null
          : ManufacturedItemDefinitionComponent.fromJson(value);
    case 'manufactureditemdefinition.component.constituent':
      return value is! Map<String, dynamic>
          ? null
          : ManufacturedItemDefinitionConstituent.fromJson(value);
    case 'measure':
      return value is! Map<String, dynamic> ? null : Measure.fromJson(value);
    case 'measure.term':
      return value is! Map<String, dynamic>
          ? null
          : MeasureTerm.fromJson(value);
    case 'measure.group':
      return value is! Map<String, dynamic>
          ? null
          : MeasureGroup.fromJson(value);
    case 'measure.group.population':
      return value is! Map<String, dynamic>
          ? null
          : MeasurePopulation.fromJson(value);
    case 'measure.group.stratifier':
      return value is! Map<String, dynamic>
          ? null
          : MeasureStratifier.fromJson(value);
    case 'measure.group.stratifier.component':
      return value is! Map<String, dynamic>
          ? null
          : MeasureComponent.fromJson(value);
    case 'measure.supplementaldata':
      return value is! Map<String, dynamic>
          ? null
          : MeasureSupplementalData.fromJson(value);
    case 'measurereport':
      return value is! Map<String, dynamic>
          ? null
          : MeasureReport.fromJson(value);
    case 'measurereport.group':
      return value is! Map<String, dynamic>
          ? null
          : MeasureReportGroup.fromJson(value);
    case 'measurereport.group.population':
      return value is! Map<String, dynamic>
          ? null
          : MeasureReportPopulation.fromJson(value);
    case 'measurereport.group.stratifier':
      return value is! Map<String, dynamic>
          ? null
          : MeasureReportStratifier.fromJson(value);
    case 'measurereport.group.stratifier.stratum':
      return value is! Map<String, dynamic>
          ? null
          : MeasureReportStratum.fromJson(value);
    case 'measurereport.group.stratifier.stratum.component':
      return value is! Map<String, dynamic>
          ? null
          : MeasureReportComponent.fromJson(value);
    case 'measurereport.group.stratifier.stratum.population':
      return value is! Map<String, dynamic>
          ? null
          : MeasureReportPopulation1.fromJson(value);
    case 'medication':
      return value is! Map<String, dynamic> ? null : Medication.fromJson(value);
    case 'medication.ingredient':
      return value is! Map<String, dynamic>
          ? null
          : MedicationIngredient.fromJson(value);
    case 'medication.batch':
      return value is! Map<String, dynamic>
          ? null
          : MedicationBatch.fromJson(value);
    case 'medicationadministration':
      return value is! Map<String, dynamic>
          ? null
          : MedicationAdministration.fromJson(value);
    case 'medicationadministration.performer':
      return value is! Map<String, dynamic>
          ? null
          : MedicationAdministrationPerformer.fromJson(value);
    case 'medicationadministration.dosage':
      return value is! Map<String, dynamic>
          ? null
          : MedicationAdministrationDosage.fromJson(value);
    case 'medicationdispense':
      return value is! Map<String, dynamic>
          ? null
          : MedicationDispense.fromJson(value);
    case 'medicationdispense.performer':
      return value is! Map<String, dynamic>
          ? null
          : MedicationDispensePerformer.fromJson(value);
    case 'medicationdispense.substitution':
      return value is! Map<String, dynamic>
          ? null
          : MedicationDispenseSubstitution.fromJson(value);
    case 'medicationknowledge':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledge.fromJson(value);
    case 'medicationknowledge.relatedmedicationknowledge':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeRelatedMedicationKnowledge.fromJson(value);
    case 'medicationknowledge.monograph':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeMonograph.fromJson(value);
    case 'medicationknowledge.cost':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeCost.fromJson(value);
    case 'medicationknowledge.monitoringprogram':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeMonitoringProgram.fromJson(value);
    case 'medicationknowledge.indicationguideline':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeIndicationGuideline.fromJson(value);
    case 'medicationknowledge.indicationguideline.dosingguideline':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeDosingGuideline.fromJson(value);
    case 'medicationknowledge.indicationguideline.dosingguideline.dosage':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeDosage.fromJson(value);
    case 'medicationknowledge.indicationguideline.dosingguideline.patientcharacteristic':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgePatientCharacteristic.fromJson(value);
    case 'medicationknowledge.medicineclassification':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeMedicineClassification.fromJson(value);
    case 'medicationknowledge.packaging':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgePackaging.fromJson(value);
    case 'medicationknowledge.storageguideline':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeStorageGuideline.fromJson(value);
    case 'medicationknowledge.storageguideline.environmentalsetting':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeEnvironmentalSetting.fromJson(value);
    case 'medicationknowledge.regulatory':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeRegulatory.fromJson(value);
    case 'medicationknowledge.regulatory.substitution':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeSubstitution.fromJson(value);
    case 'medicationknowledge.regulatory.maxdispense':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeMaxDispense.fromJson(value);
    case 'medicationknowledge.definitional':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeDefinitional.fromJson(value);
    case 'medicationknowledge.definitional.ingredient':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeIngredient.fromJson(value);
    case 'medicationknowledge.definitional.drugcharacteristic':
      return value is! Map<String, dynamic>
          ? null
          : MedicationKnowledgeDrugCharacteristic.fromJson(value);
    case 'medicationrequest':
      return value is! Map<String, dynamic>
          ? null
          : MedicationRequest.fromJson(value);
    case 'medicationrequest.dispenserequest':
      return value is! Map<String, dynamic>
          ? null
          : MedicationRequestDispenseRequest.fromJson(value);
    case 'medicationrequest.dispenserequest.initialfill':
      return value is! Map<String, dynamic>
          ? null
          : MedicationRequestInitialFill.fromJson(value);
    case 'medicationrequest.substitution':
      return value is! Map<String, dynamic>
          ? null
          : MedicationRequestSubstitution.fromJson(value);
    case 'medicationstatement':
      return value is! Map<String, dynamic>
          ? null
          : MedicationStatement.fromJson(value);
    case 'medicationstatement.adherence':
      return value is! Map<String, dynamic>
          ? null
          : MedicationStatementAdherence.fromJson(value);
    case 'medicinalproductdefinition':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinition.fromJson(value);
    case 'medicinalproductdefinition.contact':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinitionContact.fromJson(value);
    case 'medicinalproductdefinition.name':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinitionName.fromJson(value);
    case 'medicinalproductdefinition.name.part':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinitionPart.fromJson(value);
    case 'medicinalproductdefinition.name.usage':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinitionUsage.fromJson(value);
    case 'medicinalproductdefinition.crossreference':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinitionCrossReference.fromJson(value);
    case 'medicinalproductdefinition.operation':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinitionOperation.fromJson(value);
    case 'medicinalproductdefinition.characteristic':
      return value is! Map<String, dynamic>
          ? null
          : MedicinalProductDefinitionCharacteristic.fromJson(value);
    case 'messagedefinition':
      return value is! Map<String, dynamic>
          ? null
          : MessageDefinition.fromJson(value);
    case 'messagedefinition.focus':
      return value is! Map<String, dynamic>
          ? null
          : MessageDefinitionFocus.fromJson(value);
    case 'messagedefinition.allowedresponse':
      return value is! Map<String, dynamic>
          ? null
          : MessageDefinitionAllowedResponse.fromJson(value);
    case 'messageheader':
      return value is! Map<String, dynamic>
          ? null
          : MessageHeader.fromJson(value);
    case 'messageheader.destination':
      return value is! Map<String, dynamic>
          ? null
          : MessageHeaderDestination.fromJson(value);
    case 'messageheader.source':
      return value is! Map<String, dynamic>
          ? null
          : MessageHeaderSource.fromJson(value);
    case 'messageheader.response':
      return value is! Map<String, dynamic>
          ? null
          : MessageHeaderResponse.fromJson(value);
    case 'molecularsequence':
      return value is! Map<String, dynamic>
          ? null
          : MolecularSequence.fromJson(value);
    case 'molecularsequence.relative':
      return value is! Map<String, dynamic>
          ? null
          : MolecularSequenceRelative.fromJson(value);
    case 'molecularsequence.relative.startingsequence':
      return value is! Map<String, dynamic>
          ? null
          : MolecularSequenceStartingSequence.fromJson(value);
    case 'molecularsequence.relative.edit':
      return value is! Map<String, dynamic>
          ? null
          : MolecularSequenceEdit.fromJson(value);
    case 'namingsystem':
      return value is! Map<String, dynamic>
          ? null
          : NamingSystem.fromJson(value);
    case 'namingsystem.uniqueid':
      return value is! Map<String, dynamic>
          ? null
          : NamingSystemUniqueId.fromJson(value);
    case 'nutritionintake':
      return value is! Map<String, dynamic>
          ? null
          : NutritionIntake.fromJson(value);
    case 'nutritionintake.consumeditem':
      return value is! Map<String, dynamic>
          ? null
          : NutritionIntakeConsumedItem.fromJson(value);
    case 'nutritionintake.ingredientlabel':
      return value is! Map<String, dynamic>
          ? null
          : NutritionIntakeIngredientLabel.fromJson(value);
    case 'nutritionintake.performer':
      return value is! Map<String, dynamic>
          ? null
          : NutritionIntakePerformer.fromJson(value);
    case 'nutritionorder':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrder.fromJson(value);
    case 'nutritionorder.oraldiet':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderOralDiet.fromJson(value);
    case 'nutritionorder.oraldiet.schedule':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderSchedule.fromJson(value);
    case 'nutritionorder.oraldiet.nutrient':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderNutrient.fromJson(value);
    case 'nutritionorder.oraldiet.texture':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderTexture.fromJson(value);
    case 'nutritionorder.supplement':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderSupplement.fromJson(value);
    case 'nutritionorder.supplement.schedule':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderSchedule1.fromJson(value);
    case 'nutritionorder.enteralformula':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderEnteralFormula.fromJson(value);
    case 'nutritionorder.enteralformula.additive':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderAdditive.fromJson(value);
    case 'nutritionorder.enteralformula.administration':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderAdministration.fromJson(value);
    case 'nutritionorder.enteralformula.administration.schedule':
      return value is! Map<String, dynamic>
          ? null
          : NutritionOrderSchedule2.fromJson(value);
    case 'nutritionproduct':
      return value is! Map<String, dynamic>
          ? null
          : NutritionProduct.fromJson(value);
    case 'nutritionproduct.nutrient':
      return value is! Map<String, dynamic>
          ? null
          : NutritionProductNutrient.fromJson(value);
    case 'nutritionproduct.ingredient':
      return value is! Map<String, dynamic>
          ? null
          : NutritionProductIngredient.fromJson(value);
    case 'nutritionproduct.characteristic':
      return value is! Map<String, dynamic>
          ? null
          : NutritionProductCharacteristic.fromJson(value);
    case 'nutritionproduct.instance':
      return value is! Map<String, dynamic>
          ? null
          : NutritionProductInstance.fromJson(value);
    case 'observation':
      return value is! Map<String, dynamic>
          ? null
          : Observation.fromJson(value);
    case 'observation.triggeredby':
      return value is! Map<String, dynamic>
          ? null
          : ObservationTriggeredBy.fromJson(value);
    case 'observation.referencerange':
      return value is! Map<String, dynamic>
          ? null
          : ObservationReferenceRange.fromJson(value);
    case 'observation.component':
      return value is! Map<String, dynamic>
          ? null
          : ObservationComponent.fromJson(value);
    case 'observationdefinition':
      return value is! Map<String, dynamic>
          ? null
          : ObservationDefinition.fromJson(value);
    case 'observationdefinition.qualifiedvalue':
      return value is! Map<String, dynamic>
          ? null
          : ObservationDefinitionQualifiedValue.fromJson(value);
    case 'observationdefinition.component':
      return value is! Map<String, dynamic>
          ? null
          : ObservationDefinitionComponent.fromJson(value);
    case 'operationdefinition':
      return value is! Map<String, dynamic>
          ? null
          : OperationDefinition.fromJson(value);
    case 'operationdefinition.parameter':
      return value is! Map<String, dynamic>
          ? null
          : OperationDefinitionParameter.fromJson(value);
    case 'operationdefinition.parameter.binding':
      return value is! Map<String, dynamic>
          ? null
          : OperationDefinitionBinding.fromJson(value);
    case 'operationdefinition.parameter.referencedfrom':
      return value is! Map<String, dynamic>
          ? null
          : OperationDefinitionReferencedFrom.fromJson(value);
    case 'operationdefinition.overload':
      return value is! Map<String, dynamic>
          ? null
          : OperationDefinitionOverload.fromJson(value);
    case 'operationoutcome':
      return value is! Map<String, dynamic>
          ? null
          : OperationOutcome.fromJson(value);
    case 'operationoutcome.issue':
      return value is! Map<String, dynamic>
          ? null
          : OperationOutcomeIssue.fromJson(value);
    case 'organization':
      return value is! Map<String, dynamic>
          ? null
          : Organization.fromJson(value);
    case 'organization.qualification':
      return value is! Map<String, dynamic>
          ? null
          : OrganizationQualification.fromJson(value);
    case 'organizationaffiliation':
      return value is! Map<String, dynamic>
          ? null
          : OrganizationAffiliation.fromJson(value);
    case 'packagedproductdefinition':
      return value is! Map<String, dynamic>
          ? null
          : PackagedProductDefinition.fromJson(value);
    case 'packagedproductdefinition.legalstatusofsupply':
      return value is! Map<String, dynamic>
          ? null
          : PackagedProductDefinitionLegalStatusOfSupply.fromJson(value);
    case 'packagedproductdefinition.packaging':
      return value is! Map<String, dynamic>
          ? null
          : PackagedProductDefinitionPackaging.fromJson(value);
    case 'packagedproductdefinition.packaging.property':
      return value is! Map<String, dynamic>
          ? null
          : PackagedProductDefinitionProperty.fromJson(value);
    case 'packagedproductdefinition.packaging.containeditem':
      return value is! Map<String, dynamic>
          ? null
          : PackagedProductDefinitionContainedItem.fromJson(value);
    case 'parameters':
      return value is! Map<String, dynamic> ? null : Parameters.fromJson(value);
    case 'parameters.parameter':
      return value is! Map<String, dynamic>
          ? null
          : ParametersParameter.fromJson(value);
    case 'patient':
      return value is! Map<String, dynamic> ? null : Patient.fromJson(value);
    case 'patient.contact':
      return value is! Map<String, dynamic>
          ? null
          : PatientContact.fromJson(value);
    case 'patient.communication':
      return value is! Map<String, dynamic>
          ? null
          : PatientCommunication.fromJson(value);
    case 'patient.link':
      return value is! Map<String, dynamic>
          ? null
          : PatientLink.fromJson(value);
    case 'paymentnotice':
      return value is! Map<String, dynamic>
          ? null
          : PaymentNotice.fromJson(value);
    case 'paymentreconciliation':
      return value is! Map<String, dynamic>
          ? null
          : PaymentReconciliation.fromJson(value);
    case 'paymentreconciliation.allocation':
      return value is! Map<String, dynamic>
          ? null
          : PaymentReconciliationAllocation.fromJson(value);
    case 'paymentreconciliation.processnote':
      return value is! Map<String, dynamic>
          ? null
          : PaymentReconciliationProcessNote.fromJson(value);
    case 'permission':
      return value is! Map<String, dynamic> ? null : Permission.fromJson(value);
    case 'permission.justification':
      return value is! Map<String, dynamic>
          ? null
          : PermissionJustification.fromJson(value);
    case 'permission.rule':
      return value is! Map<String, dynamic>
          ? null
          : PermissionRule.fromJson(value);
    case 'permission.rule.data':
      return value is! Map<String, dynamic>
          ? null
          : PermissionData.fromJson(value);
    case 'permission.rule.data.resource':
      return value is! Map<String, dynamic>
          ? null
          : PermissionResource.fromJson(value);
    case 'permission.rule.activity':
      return value is! Map<String, dynamic>
          ? null
          : PermissionActivity.fromJson(value);
    case 'person':
      return value is! Map<String, dynamic> ? null : Person.fromJson(value);
    case 'person.communication':
      return value is! Map<String, dynamic>
          ? null
          : PersonCommunication.fromJson(value);
    case 'person.link':
      return value is! Map<String, dynamic> ? null : PersonLink.fromJson(value);
    case 'plandefinition':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinition.fromJson(value);
    case 'plandefinition.goal':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionGoal.fromJson(value);
    case 'plandefinition.goal.target':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionTarget.fromJson(value);
    case 'plandefinition.actor':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionActor.fromJson(value);
    case 'plandefinition.actor.option':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionOption.fromJson(value);
    case 'plandefinition.action':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionAction.fromJson(value);
    case 'plandefinition.action.condition':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionCondition.fromJson(value);
    case 'plandefinition.action.input':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionInput.fromJson(value);
    case 'plandefinition.action.output':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionOutput.fromJson(value);
    case 'plandefinition.action.relatedaction':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionRelatedAction.fromJson(value);
    case 'plandefinition.action.participant':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionParticipant.fromJson(value);
    case 'plandefinition.action.dynamicvalue':
      return value is! Map<String, dynamic>
          ? null
          : PlanDefinitionDynamicValue.fromJson(value);
    case 'practitioner':
      return value is! Map<String, dynamic>
          ? null
          : Practitioner.fromJson(value);
    case 'practitioner.qualification':
      return value is! Map<String, dynamic>
          ? null
          : PractitionerQualification.fromJson(value);
    case 'practitioner.communication':
      return value is! Map<String, dynamic>
          ? null
          : PractitionerCommunication.fromJson(value);
    case 'practitionerrole':
      return value is! Map<String, dynamic>
          ? null
          : PractitionerRole.fromJson(value);
    case 'procedure':
      return value is! Map<String, dynamic> ? null : Procedure.fromJson(value);
    case 'procedure.performer':
      return value is! Map<String, dynamic>
          ? null
          : ProcedurePerformer.fromJson(value);
    case 'procedure.focaldevice':
      return value is! Map<String, dynamic>
          ? null
          : ProcedureFocalDevice.fromJson(value);
    case 'provenance':
      return value is! Map<String, dynamic> ? null : Provenance.fromJson(value);
    case 'provenance.agent':
      return value is! Map<String, dynamic>
          ? null
          : ProvenanceAgent.fromJson(value);
    case 'provenance.entity':
      return value is! Map<String, dynamic>
          ? null
          : ProvenanceEntity.fromJson(value);
    case 'questionnaire':
      return value is! Map<String, dynamic>
          ? null
          : Questionnaire.fromJson(value);
    case 'questionnaire.item':
      return value is! Map<String, dynamic>
          ? null
          : QuestionnaireItem.fromJson(value);
    case 'questionnaire.item.enablewhen':
      return value is! Map<String, dynamic>
          ? null
          : QuestionnaireEnableWhen.fromJson(value);
    case 'questionnaire.item.answeroption':
      return value is! Map<String, dynamic>
          ? null
          : QuestionnaireAnswerOption.fromJson(value);
    case 'questionnaire.item.initial':
      return value is! Map<String, dynamic>
          ? null
          : QuestionnaireInitial.fromJson(value);
    case 'questionnaireresponse':
      return value is! Map<String, dynamic>
          ? null
          : QuestionnaireResponse.fromJson(value);
    case 'questionnaireresponse.item':
      return value is! Map<String, dynamic>
          ? null
          : QuestionnaireResponseItem.fromJson(value);
    case 'questionnaireresponse.item.answer':
      return value is! Map<String, dynamic>
          ? null
          : QuestionnaireResponseAnswer.fromJson(value);
    case 'regulatedauthorization':
      return value is! Map<String, dynamic>
          ? null
          : RegulatedAuthorization.fromJson(value);
    case 'regulatedauthorization.case':
      return value is! Map<String, dynamic>
          ? null
          : RegulatedAuthorizationCase.fromJson(value);
    case 'relatedperson':
      return value is! Map<String, dynamic>
          ? null
          : RelatedPerson.fromJson(value);
    case 'relatedperson.communication':
      return value is! Map<String, dynamic>
          ? null
          : RelatedPersonCommunication.fromJson(value);
    case 'requestorchestration':
      return value is! Map<String, dynamic>
          ? null
          : RequestOrchestration.fromJson(value);
    case 'requestorchestration.action':
      return value is! Map<String, dynamic>
          ? null
          : RequestOrchestrationAction.fromJson(value);
    case 'requestorchestration.action.condition':
      return value is! Map<String, dynamic>
          ? null
          : RequestOrchestrationCondition.fromJson(value);
    case 'requestorchestration.action.input':
      return value is! Map<String, dynamic>
          ? null
          : RequestOrchestrationInput.fromJson(value);
    case 'requestorchestration.action.output':
      return value is! Map<String, dynamic>
          ? null
          : RequestOrchestrationOutput.fromJson(value);
    case 'requestorchestration.action.relatedaction':
      return value is! Map<String, dynamic>
          ? null
          : RequestOrchestrationRelatedAction.fromJson(value);
    case 'requestorchestration.action.participant':
      return value is! Map<String, dynamic>
          ? null
          : RequestOrchestrationParticipant.fromJson(value);
    case 'requestorchestration.action.dynamicvalue':
      return value is! Map<String, dynamic>
          ? null
          : RequestOrchestrationDynamicValue.fromJson(value);
    case 'requirements':
      return value is! Map<String, dynamic>
          ? null
          : Requirements.fromJson(value);
    case 'requirements.statement':
      return value is! Map<String, dynamic>
          ? null
          : RequirementsStatement.fromJson(value);
    case 'researchstudy':
      return value is! Map<String, dynamic>
          ? null
          : ResearchStudy.fromJson(value);
    case 'researchstudy.label':
      return value is! Map<String, dynamic>
          ? null
          : ResearchStudyLabel.fromJson(value);
    case 'researchstudy.associatedparty':
      return value is! Map<String, dynamic>
          ? null
          : ResearchStudyAssociatedParty.fromJson(value);
    case 'researchstudy.progressstatus':
      return value is! Map<String, dynamic>
          ? null
          : ResearchStudyProgressStatus.fromJson(value);
    case 'researchstudy.recruitment':
      return value is! Map<String, dynamic>
          ? null
          : ResearchStudyRecruitment.fromJson(value);
    case 'researchstudy.comparisongroup':
      return value is! Map<String, dynamic>
          ? null
          : ResearchStudyComparisonGroup.fromJson(value);
    case 'researchstudy.objective':
      return value is! Map<String, dynamic>
          ? null
          : ResearchStudyObjective.fromJson(value);
    case 'researchstudy.outcomemeasure':
      return value is! Map<String, dynamic>
          ? null
          : ResearchStudyOutcomeMeasure.fromJson(value);
    case 'researchsubject':
      return value is! Map<String, dynamic>
          ? null
          : ResearchSubject.fromJson(value);
    case 'researchsubject.progress':
      return value is! Map<String, dynamic>
          ? null
          : ResearchSubjectProgress.fromJson(value);
    case 'riskassessment':
      return value is! Map<String, dynamic>
          ? null
          : RiskAssessment.fromJson(value);
    case 'riskassessment.prediction':
      return value is! Map<String, dynamic>
          ? null
          : RiskAssessmentPrediction.fromJson(value);
    case 'schedule':
      return value is! Map<String, dynamic> ? null : Schedule.fromJson(value);
    case 'searchparameter':
      return value is! Map<String, dynamic>
          ? null
          : SearchParameter.fromJson(value);
    case 'searchparameter.component':
      return value is! Map<String, dynamic>
          ? null
          : SearchParameterComponent.fromJson(value);
    case 'servicerequest':
      return value is! Map<String, dynamic>
          ? null
          : ServiceRequest.fromJson(value);
    case 'servicerequest.orderdetail':
      return value is! Map<String, dynamic>
          ? null
          : ServiceRequestOrderDetail.fromJson(value);
    case 'servicerequest.orderdetail.parameter':
      return value is! Map<String, dynamic>
          ? null
          : ServiceRequestParameter.fromJson(value);
    case 'servicerequest.patientinstruction':
      return value is! Map<String, dynamic>
          ? null
          : ServiceRequestPatientInstruction.fromJson(value);
    case 'slot':
      return value is! Map<String, dynamic> ? null : Slot.fromJson(value);
    case 'specimen':
      return value is! Map<String, dynamic> ? null : Specimen.fromJson(value);
    case 'specimen.feature':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenFeature.fromJson(value);
    case 'specimen.collection':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenCollection.fromJson(value);
    case 'specimen.processing':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenProcessing.fromJson(value);
    case 'specimen.container':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenContainer.fromJson(value);
    case 'specimendefinition':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenDefinition.fromJson(value);
    case 'specimendefinition.typetested':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenDefinitionTypeTested.fromJson(value);
    case 'specimendefinition.typetested.container':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenDefinitionContainer.fromJson(value);
    case 'specimendefinition.typetested.container.additive':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenDefinitionAdditive.fromJson(value);
    case 'specimendefinition.typetested.handling':
      return value is! Map<String, dynamic>
          ? null
          : SpecimenDefinitionHandling.fromJson(value);
    case 'structuredefinition':
      return value is! Map<String, dynamic>
          ? null
          : StructureDefinition.fromJson(value);
    case 'structuredefinition.mapping':
      return value is! Map<String, dynamic>
          ? null
          : StructureDefinitionMapping.fromJson(value);
    case 'structuredefinition.context':
      return value is! Map<String, dynamic>
          ? null
          : StructureDefinitionContext.fromJson(value);
    case 'structuredefinition.snapshot':
      return value is! Map<String, dynamic>
          ? null
          : StructureDefinitionSnapshot.fromJson(value);
    case 'structuredefinition.differential':
      return value is! Map<String, dynamic>
          ? null
          : StructureDefinitionDifferential.fromJson(value);
    case 'structuremap':
      return value is! Map<String, dynamic>
          ? null
          : StructureMap.fromJson(value);
    case 'structuremap.structure':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapStructure.fromJson(value);
    case 'structuremap.const':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapConst.fromJson(value);
    case 'structuremap.group':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapGroup.fromJson(value);
    case 'structuremap.group.input':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapInput.fromJson(value);
    case 'structuremap.group.rule':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapRule.fromJson(value);
    case 'structuremap.group.rule.source':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapSource.fromJson(value);
    case 'structuremap.group.rule.target':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapTarget.fromJson(value);
    case 'structuremap.group.rule.target.parameter':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapParameter.fromJson(value);
    case 'structuremap.group.rule.dependent':
      return value is! Map<String, dynamic>
          ? null
          : StructureMapDependent.fromJson(value);
    case 'subscription':
      return value is! Map<String, dynamic>
          ? null
          : Subscription.fromJson(value);
    case 'subscription.filterby':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionFilterBy.fromJson(value);
    case 'subscription.parameter':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionParameter.fromJson(value);
    case 'subscriptionstatus':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionStatus.fromJson(value);
    case 'subscriptionstatus.notificationevent':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionStatusNotificationEvent.fromJson(value);
    case 'subscriptiontopic':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionTopic.fromJson(value);
    case 'subscriptiontopic.resourcetrigger':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionTopicResourceTrigger.fromJson(value);
    case 'subscriptiontopic.resourcetrigger.querycriteria':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionTopicQueryCriteria.fromJson(value);
    case 'subscriptiontopic.eventtrigger':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionTopicEventTrigger.fromJson(value);
    case 'subscriptiontopic.canfilterby':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionTopicCanFilterBy.fromJson(value);
    case 'subscriptiontopic.notificationshape':
      return value is! Map<String, dynamic>
          ? null
          : SubscriptionTopicNotificationShape.fromJson(value);
    case 'substance':
      return value is! Map<String, dynamic> ? null : Substance.fromJson(value);
    case 'substance.ingredient':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceIngredient.fromJson(value);
    case 'substancedefinition':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinition.fromJson(value);
    case 'substancedefinition.moiety':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionMoiety.fromJson(value);
    case 'substancedefinition.characterization':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionCharacterization.fromJson(value);
    case 'substancedefinition.property':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionProperty.fromJson(value);
    case 'substancedefinition.molecularweight':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionMolecularWeight.fromJson(value);
    case 'substancedefinition.structure':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionStructure.fromJson(value);
    case 'substancedefinition.structure.representation':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionRepresentation.fromJson(value);
    case 'substancedefinition.code':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionCode.fromJson(value);
    case 'substancedefinition.name':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionName.fromJson(value);
    case 'substancedefinition.name.official':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionOfficial.fromJson(value);
    case 'substancedefinition.relationship':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionRelationship.fromJson(value);
    case 'substancedefinition.sourcematerial':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceDefinitionSourceMaterial.fromJson(value);
    case 'substancenucleicacid':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceNucleicAcid.fromJson(value);
    case 'substancenucleicacid.subunit':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceNucleicAcidSubunit.fromJson(value);
    case 'substancenucleicacid.subunit.linkage':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceNucleicAcidLinkage.fromJson(value);
    case 'substancenucleicacid.subunit.sugar':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceNucleicAcidSugar.fromJson(value);
    case 'substancepolymer':
      return value is! Map<String, dynamic>
          ? null
          : SubstancePolymer.fromJson(value);
    case 'substancepolymer.monomerset':
      return value is! Map<String, dynamic>
          ? null
          : SubstancePolymerMonomerSet.fromJson(value);
    case 'substancepolymer.monomerset.startingmaterial':
      return value is! Map<String, dynamic>
          ? null
          : SubstancePolymerStartingMaterial.fromJson(value);
    case 'substancepolymer.repeat':
      return value is! Map<String, dynamic>
          ? null
          : SubstancePolymerRepeat.fromJson(value);
    case 'substancepolymer.repeat.repeatunit':
      return value is! Map<String, dynamic>
          ? null
          : SubstancePolymerRepeatUnit.fromJson(value);
    case 'substancepolymer.repeat.repeatunit.degreeofpolymerisation':
      return value is! Map<String, dynamic>
          ? null
          : SubstancePolymerDegreeOfPolymerisation.fromJson(value);
    case 'substancepolymer.repeat.repeatunit.structuralrepresentation':
      return value is! Map<String, dynamic>
          ? null
          : SubstancePolymerStructuralRepresentation.fromJson(value);
    case 'substanceprotein':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceProtein.fromJson(value);
    case 'substanceprotein.subunit':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceProteinSubunit.fromJson(value);
    case 'substancereferenceinformation':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceReferenceInformation.fromJson(value);
    case 'substancereferenceinformation.gene':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceReferenceInformationGene.fromJson(value);
    case 'substancereferenceinformation.geneelement':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceReferenceInformationGeneElement.fromJson(value);
    case 'substancereferenceinformation.target':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceReferenceInformationTarget.fromJson(value);
    case 'substancesourcematerial':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceSourceMaterial.fromJson(value);
    case 'substancesourcematerial.fractiondescription':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceSourceMaterialFractionDescription.fromJson(value);
    case 'substancesourcematerial.organism':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceSourceMaterialOrganism.fromJson(value);
    case 'substancesourcematerial.organism.author':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceSourceMaterialAuthor.fromJson(value);
    case 'substancesourcematerial.organism.hybrid':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceSourceMaterialHybrid.fromJson(value);
    case 'substancesourcematerial.organism.organismgeneral':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceSourceMaterialOrganismGeneral.fromJson(value);
    case 'substancesourcematerial.partdescription':
      return value is! Map<String, dynamic>
          ? null
          : SubstanceSourceMaterialPartDescription.fromJson(value);
    case 'supplydelivery':
      return value is! Map<String, dynamic>
          ? null
          : SupplyDelivery.fromJson(value);
    case 'supplydelivery.supplieditem':
      return value is! Map<String, dynamic>
          ? null
          : SupplyDeliverySuppliedItem.fromJson(value);
    case 'supplyrequest':
      return value is! Map<String, dynamic>
          ? null
          : SupplyRequest.fromJson(value);
    case 'supplyrequest.parameter':
      return value is! Map<String, dynamic>
          ? null
          : SupplyRequestParameter.fromJson(value);
    case 'task':
      return value is! Map<String, dynamic> ? null : Task.fromJson(value);
    case 'task.performer':
      return value is! Map<String, dynamic>
          ? null
          : TaskPerformer.fromJson(value);
    case 'task.restriction':
      return value is! Map<String, dynamic>
          ? null
          : TaskRestriction.fromJson(value);
    case 'task.input':
      return value is! Map<String, dynamic> ? null : TaskInput.fromJson(value);
    case 'task.output':
      return value is! Map<String, dynamic> ? null : TaskOutput.fromJson(value);
    case 'terminologycapabilities':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilities.fromJson(value);
    case 'terminologycapabilities.software':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesSoftware.fromJson(value);
    case 'terminologycapabilities.implementation':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesImplementation.fromJson(value);
    case 'terminologycapabilities.codesystem':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesCodeSystem.fromJson(value);
    case 'terminologycapabilities.codesystem.version':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesVersion.fromJson(value);
    case 'terminologycapabilities.codesystem.version.filter':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesFilter.fromJson(value);
    case 'terminologycapabilities.expansion':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesExpansion.fromJson(value);
    case 'terminologycapabilities.expansion.parameter':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesParameter.fromJson(value);
    case 'terminologycapabilities.validatecode':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesValidateCode.fromJson(value);
    case 'terminologycapabilities.translation':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesTranslation.fromJson(value);
    case 'terminologycapabilities.closure':
      return value is! Map<String, dynamic>
          ? null
          : TerminologyCapabilitiesClosure.fromJson(value);
    case 'testplan':
      return value is! Map<String, dynamic> ? null : TestPlan.fromJson(value);
    case 'testplan.dependency':
      return value is! Map<String, dynamic>
          ? null
          : TestPlanDependency.fromJson(value);
    case 'testplan.testcase':
      return value is! Map<String, dynamic>
          ? null
          : TestPlanTestCase.fromJson(value);
    case 'testplan.testcase.dependency':
      return value is! Map<String, dynamic>
          ? null
          : TestPlanDependency1.fromJson(value);
    case 'testplan.testcase.testrun':
      return value is! Map<String, dynamic>
          ? null
          : TestPlanTestRun.fromJson(value);
    case 'testplan.testcase.testrun.script':
      return value is! Map<String, dynamic>
          ? null
          : TestPlanScript.fromJson(value);
    case 'testplan.testcase.testdata':
      return value is! Map<String, dynamic>
          ? null
          : TestPlanTestData.fromJson(value);
    case 'testplan.testcase.assertion':
      return value is! Map<String, dynamic>
          ? null
          : TestPlanAssertion.fromJson(value);
    case 'testreport':
      return value is! Map<String, dynamic> ? null : TestReport.fromJson(value);
    case 'testreport.participant':
      return value is! Map<String, dynamic>
          ? null
          : TestReportParticipant.fromJson(value);
    case 'testreport.setup':
      return value is! Map<String, dynamic>
          ? null
          : TestReportSetup.fromJson(value);
    case 'testreport.setup.action':
      return value is! Map<String, dynamic>
          ? null
          : TestReportAction.fromJson(value);
    case 'testreport.setup.action.operation':
      return value is! Map<String, dynamic>
          ? null
          : TestReportOperation.fromJson(value);
    case 'testreport.setup.action.assert':
      return value is! Map<String, dynamic>
          ? null
          : TestReportAssert.fromJson(value);
    case 'testreport.setup.action.assert.requirement':
      return value is! Map<String, dynamic>
          ? null
          : TestReportRequirement.fromJson(value);
    case 'testreport.test':
      return value is! Map<String, dynamic>
          ? null
          : TestReportTest.fromJson(value);
    case 'testreport.test.action':
      return value is! Map<String, dynamic>
          ? null
          : TestReportAction1.fromJson(value);
    case 'testreport.teardown':
      return value is! Map<String, dynamic>
          ? null
          : TestReportTeardown.fromJson(value);
    case 'testreport.teardown.action':
      return value is! Map<String, dynamic>
          ? null
          : TestReportAction2.fromJson(value);
    case 'testscript':
      return value is! Map<String, dynamic> ? null : TestScript.fromJson(value);
    case 'testscript.origin':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptOrigin.fromJson(value);
    case 'testscript.destination':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptDestination.fromJson(value);
    case 'testscript.metadata':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptMetadata.fromJson(value);
    case 'testscript.metadata.link':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptLink.fromJson(value);
    case 'testscript.metadata.capability':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptCapability.fromJson(value);
    case 'testscript.scope':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptScope.fromJson(value);
    case 'testscript.fixture':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptFixture.fromJson(value);
    case 'testscript.variable':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptVariable.fromJson(value);
    case 'testscript.setup':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptSetup.fromJson(value);
    case 'testscript.setup.action':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptAction.fromJson(value);
    case 'testscript.setup.action.operation':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptOperation.fromJson(value);
    case 'testscript.setup.action.operation.requestheader':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptRequestHeader.fromJson(value);
    case 'testscript.setup.action.assert':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptAssert.fromJson(value);
    case 'testscript.setup.action.assert.requirement':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptRequirement.fromJson(value);
    case 'testscript.test':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptTest.fromJson(value);
    case 'testscript.test.action':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptAction1.fromJson(value);
    case 'testscript.teardown':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptTeardown.fromJson(value);
    case 'testscript.teardown.action':
      return value is! Map<String, dynamic>
          ? null
          : TestScriptAction2.fromJson(value);
    case 'transport':
      return value is! Map<String, dynamic> ? null : Transport.fromJson(value);
    case 'transport.restriction':
      return value is! Map<String, dynamic>
          ? null
          : TransportRestriction.fromJson(value);
    case 'transport.input':
      return value is! Map<String, dynamic>
          ? null
          : TransportInput.fromJson(value);
    case 'transport.output':
      return value is! Map<String, dynamic>
          ? null
          : TransportOutput.fromJson(value);
    case 'valueset':
      return value is! Map<String, dynamic> ? null : ValueSet.fromJson(value);
    case 'valueset.compose':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetCompose.fromJson(value);
    case 'valueset.compose.include':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetInclude.fromJson(value);
    case 'valueset.compose.include.concept':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetConcept.fromJson(value);
    case 'valueset.compose.include.concept.designation':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetDesignation.fromJson(value);
    case 'valueset.compose.include.filter':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetFilter.fromJson(value);
    case 'valueset.expansion':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetExpansion.fromJson(value);
    case 'valueset.expansion.parameter':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetParameter.fromJson(value);
    case 'valueset.expansion.property':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetProperty.fromJson(value);
    case 'valueset.expansion.contains':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetContains.fromJson(value);
    case 'valueset.expansion.contains.property':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetProperty1.fromJson(value);
    case 'valueset.expansion.contains.property.subproperty':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetSubProperty.fromJson(value);
    case 'valueset.scope':
      return value is! Map<String, dynamic>
          ? null
          : ValueSetScope.fromJson(value);
    case 'verificationresult':
      return value is! Map<String, dynamic>
          ? null
          : VerificationResult.fromJson(value);
    case 'verificationresult.primarysource':
      return value is! Map<String, dynamic>
          ? null
          : VerificationResultPrimarySource.fromJson(value);
    case 'verificationresult.attestation':
      return value is! Map<String, dynamic>
          ? null
          : VerificationResultAttestation.fromJson(value);
    case 'verificationresult.validator':
      return value is! Map<String, dynamic>
          ? null
          : VerificationResultValidator.fromJson(value);
    case 'visionprescription':
      return value is! Map<String, dynamic>
          ? null
          : VisionPrescription.fromJson(value);
    case 'visionprescription.lensspecification':
      return value is! Map<String, dynamic>
          ? null
          : VisionPrescriptionLensSpecification.fromJson(value);
    case 'visionprescription.lensspecification.prism':
      return value is! Map<String, dynamic>
          ? null
          : VisionPrescriptionPrism.fromJson(value);
    case 'address':
      return value is! Map<String, dynamic> ? null : Address.fromJson(value);
    case 'age':
      return value is! Map<String, dynamic> ? null : Age.fromJson(value);
    case 'annotation':
      return value is! Map<String, dynamic> ? null : Annotation.fromJson(value);
    case 'attachment':
      return value is! Map<String, dynamic> ? null : Attachment.fromJson(value);
    case 'availability':
      return value is! Map<String, dynamic>
          ? null
          : Availability.fromJson(value);
    case 'availability.availabletime':
      return value is! Map<String, dynamic>
          ? null
          : AvailabilityAvailableTime.fromJson(value);
    case 'availability.notavailabletime':
      return value is! Map<String, dynamic>
          ? null
          : AvailabilityNotAvailableTime.fromJson(value);
    case 'codeableconcept':
      return value is! Map<String, dynamic>
          ? null
          : CodeableConcept.fromJson(value);
    case 'codeablereference':
      return value is! Map<String, dynamic>
          ? null
          : CodeableReference.fromJson(value);
    case 'coding':
      return value is! Map<String, dynamic> ? null : Coding.fromJson(value);
    case 'contactdetail':
      return value is! Map<String, dynamic>
          ? null
          : ContactDetail.fromJson(value);
    case 'contactpoint':
      return value is! Map<String, dynamic>
          ? null
          : ContactPoint.fromJson(value);
    case 'contributor':
      return value is! Map<String, dynamic>
          ? null
          : Contributor.fromJson(value);
    case 'count':
      return value is! Map<String, dynamic> ? null : Count.fromJson(value);
    case 'datarequirement':
      return value is! Map<String, dynamic>
          ? null
          : DataRequirement.fromJson(value);
    case 'datarequirement.codefilter':
      return value is! Map<String, dynamic>
          ? null
          : DataRequirementCodeFilter.fromJson(value);
    case 'datarequirement.datefilter':
      return value is! Map<String, dynamic>
          ? null
          : DataRequirementDateFilter.fromJson(value);
    case 'datarequirement.valuefilter':
      return value is! Map<String, dynamic>
          ? null
          : DataRequirementValueFilter.fromJson(value);
    case 'datarequirement.sort':
      return value is! Map<String, dynamic>
          ? null
          : DataRequirementSort.fromJson(value);
    case 'distance':
      return value is! Map<String, dynamic> ? null : Distance.fromJson(value);
    case 'dosage':
      return value is! Map<String, dynamic> ? null : Dosage.fromJson(value);
    case 'dosage.doseandrate':
      return value is! Map<String, dynamic>
          ? null
          : DosageDoseAndRate.fromJson(value);
    case 'duration':
      return value is! Map<String, dynamic>
          ? null
          : FhirDuration.fromJson(value);
    case 'elementdefinition':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinition.fromJson(value);
    case 'elementdefinition.slicing':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionSlicing.fromJson(value);
    case 'elementdefinition.slicing.discriminator':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionDiscriminator.fromJson(value);
    case 'elementdefinition.base':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionBase.fromJson(value);
    case 'elementdefinition.type':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionType.fromJson(value);
    case 'elementdefinition.example':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionExample.fromJson(value);
    case 'elementdefinition.constraint':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionConstraint.fromJson(value);
    case 'elementdefinition.binding':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionBinding.fromJson(value);
    case 'elementdefinition.binding.additional':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionAdditional.fromJson(value);
    case 'elementdefinition.mapping':
      return value is! Map<String, dynamic>
          ? null
          : ElementDefinitionMapping.fromJson(value);
    case 'expression':
      return value is! Map<String, dynamic>
          ? null
          : FhirExpression.fromJson(value);
    case 'extendedcontactdetail':
      return value is! Map<String, dynamic>
          ? null
          : ExtendedContactDetail.fromJson(value);
    case 'extension':
      return value is! Map<String, dynamic>
          ? null
          : FhirExtension.fromJson(value);
    case 'humanname':
      return value is! Map<String, dynamic> ? null : HumanName.fromJson(value);
    case 'identifier':
      return value is! Map<String, dynamic> ? null : Identifier.fromJson(value);
    case 'marketingstatus':
      return value is! Map<String, dynamic>
          ? null
          : MarketingStatus.fromJson(value);
    case 'meta':
      return value is! Map<String, dynamic> ? null : FhirMeta.fromJson(value);
    case 'monetarycomponent':
      return value is! Map<String, dynamic>
          ? null
          : MonetaryComponent.fromJson(value);
    case 'money':
      return value is! Map<String, dynamic> ? null : Money.fromJson(value);
    case 'narrative':
      return value is! Map<String, dynamic> ? null : Narrative.fromJson(value);
    case 'parameterdefinition':
      return value is! Map<String, dynamic>
          ? null
          : ParameterDefinition.fromJson(value);
    case 'period':
      return value is! Map<String, dynamic> ? null : Period.fromJson(value);
    case 'productshelflife':
      return value is! Map<String, dynamic>
          ? null
          : ProductShelfLife.fromJson(value);
    case 'quantity':
      return value is! Map<String, dynamic> ? null : Quantity.fromJson(value);
    case 'range':
      return value is! Map<String, dynamic> ? null : Range.fromJson(value);
    case 'ratio':
      return value is! Map<String, dynamic> ? null : Ratio.fromJson(value);
    case 'ratiorange':
      return value is! Map<String, dynamic> ? null : RatioRange.fromJson(value);
    case 'reference':
      return value is! Map<String, dynamic> ? null : Reference.fromJson(value);
    case 'relatedartifact':
      return value is! Map<String, dynamic>
          ? null
          : RelatedArtifact.fromJson(value);
    case 'sampleddata':
      return value is! Map<String, dynamic>
          ? null
          : SampledData.fromJson(value);
    case 'signature':
      return value is! Map<String, dynamic> ? null : Signature.fromJson(value);
    case 'timing':
      return value is! Map<String, dynamic> ? null : Timing.fromJson(value);
    case 'timing.repeat':
      return value is! Map<String, dynamic>
          ? null
          : TimingRepeat.fromJson(value);
    case 'triggerdefinition':
      return value is! Map<String, dynamic>
          ? null
          : TriggerDefinition.fromJson(value);
    case 'usagecontext':
      return value is! Map<String, dynamic>
          ? null
          : UsageContext.fromJson(value);
    case 'virtualservicedetail':
      return value is! Map<String, dynamic>
          ? null
          : VirtualServiceDetail.fromJson(value);
    default:
      return null;
  }
}

/// This function accepts a String path and attempts to
/// return that paths's FhirType - mostly needed for BackboneElements
String? typeFromPath(String? path) {
  if (path == null) return null;
  final lowercasePath = path.toLowerCase();
  switch (lowercasePath) {
    case 'account':
      return 'Account';
    case 'account.coverage':
      return 'AccountCoverage';
    case 'account.guarantor':
      return 'AccountGuarantor';
    case 'account.diagnosis':
      return 'AccountDiagnosis';
    case 'account.procedure':
      return 'AccountProcedure';
    case 'account.relatedaccount':
      return 'AccountRelatedAccount';
    case 'account.balance':
      return 'AccountBalance';
    case 'activitydefinition':
      return 'ActivityDefinition';
    case 'activitydefinition.participant':
      return 'ActivityDefinitionParticipant';
    case 'activitydefinition.dynamicvalue':
      return 'ActivityDefinitionDynamicValue';
    case 'actordefinition':
      return 'ActorDefinition';
    case 'administrableproductdefinition':
      return 'AdministrableProductDefinition';
    case 'administrableproductdefinition.property':
      return 'AdministrableProductDefinitionProperty';
    case 'administrableproductdefinition.routeofadministration':
      return 'AdministrableProductDefinitionRouteOfAdministration';
    case 'administrableproductdefinition.routeofadministration.targetspecies':
      return 'AdministrableProductDefinitionTargetSpecies';
    case 'administrableproductdefinition.routeofadministration.targetspecies.withdrawalperiod':
      return 'AdministrableProductDefinitionWithdrawalPeriod';
    case 'adverseevent':
      return 'AdverseEvent';
    case 'adverseevent.participant':
      return 'AdverseEventParticipant';
    case 'adverseevent.suspectentity':
      return 'AdverseEventSuspectEntity';
    case 'adverseevent.suspectentity.causality':
      return 'AdverseEventCausality';
    case 'adverseevent.contributingfactor':
      return 'AdverseEventContributingFactor';
    case 'adverseevent.preventiveaction':
      return 'AdverseEventPreventiveAction';
    case 'adverseevent.mitigatingaction':
      return 'AdverseEventMitigatingAction';
    case 'adverseevent.supportinginfo':
      return 'AdverseEventSupportingInfo';
    case 'allergyintolerance':
      return 'AllergyIntolerance';
    case 'allergyintolerance.participant':
      return 'AllergyIntoleranceParticipant';
    case 'allergyintolerance.reaction':
      return 'AllergyIntoleranceReaction';
    case 'appointment':
      return 'Appointment';
    case 'appointment.participant':
      return 'AppointmentParticipant';
    case 'appointment.recurrencetemplate':
      return 'AppointmentRecurrenceTemplate';
    case 'appointment.recurrencetemplate.weeklytemplate':
      return 'AppointmentWeeklyTemplate';
    case 'appointment.recurrencetemplate.monthlytemplate':
      return 'AppointmentMonthlyTemplate';
    case 'appointment.recurrencetemplate.yearlytemplate':
      return 'AppointmentYearlyTemplate';
    case 'appointmentresponse':
      return 'AppointmentResponse';
    case 'artifactassessment':
      return 'ArtifactAssessment';
    case 'artifactassessment.content':
      return 'ArtifactAssessmentContent';
    case 'auditevent':
      return 'AuditEvent';
    case 'auditevent.outcome':
      return 'AuditEventOutcome';
    case 'auditevent.agent':
      return 'AuditEventAgent';
    case 'auditevent.source':
      return 'AuditEventSource';
    case 'auditevent.entity':
      return 'AuditEventEntity';
    case 'auditevent.entity.detail':
      return 'AuditEventDetail';
    case 'basic':
      return 'Basic';
    case 'binary':
      return 'Binary';
    case 'biologicallyderivedproduct':
      return 'BiologicallyDerivedProduct';
    case 'biologicallyderivedproduct.collection':
      return 'BiologicallyDerivedProductCollection';
    case 'biologicallyderivedproduct.property':
      return 'BiologicallyDerivedProductProperty';
    case 'biologicallyderivedproductdispense':
      return 'BiologicallyDerivedProductDispense';
    case 'biologicallyderivedproductdispense.performer':
      return 'BiologicallyDerivedProductDispensePerformer';
    case 'bodystructure':
      return 'BodyStructure';
    case 'bodystructure.includedstructure':
      return 'BodyStructureIncludedStructure';
    case 'bodystructure.includedstructure.bodylandmarkorientation':
      return 'BodyStructureBodyLandmarkOrientation';
    case 'bodystructure.includedstructure.bodylandmarkorientation.distancefromlandmark':
      return 'BodyStructureDistanceFromLandmark';
    case 'bundle':
      return 'Bundle';
    case 'bundle.link':
      return 'BundleLink';
    case 'bundle.entry':
      return 'BundleEntry';
    case 'bundle.entry.search':
      return 'BundleSearch';
    case 'bundle.entry.request':
      return 'BundleRequest';
    case 'bundle.entry.response':
      return 'BundleResponse';
    case 'capabilitystatement':
      return 'CapabilityStatement';
    case 'capabilitystatement.software':
      return 'CapabilityStatementSoftware';
    case 'capabilitystatement.implementation':
      return 'CapabilityStatementImplementation';
    case 'capabilitystatement.rest':
      return 'CapabilityStatementRest';
    case 'capabilitystatement.rest.security':
      return 'CapabilityStatementSecurity';
    case 'capabilitystatement.rest.resource':
      return 'CapabilityStatementResource';
    case 'capabilitystatement.rest.resource.interaction':
      return 'CapabilityStatementInteraction';
    case 'capabilitystatement.rest.resource.searchparam':
      return 'CapabilityStatementSearchParam';
    case 'capabilitystatement.rest.resource.operation':
      return 'CapabilityStatementOperation';
    case 'capabilitystatement.rest.interaction':
      return 'CapabilityStatementInteraction1';
    case 'capabilitystatement.messaging':
      return 'CapabilityStatementMessaging';
    case 'capabilitystatement.messaging.endpoint':
      return 'CapabilityStatementEndpoint';
    case 'capabilitystatement.messaging.supportedmessage':
      return 'CapabilityStatementSupportedMessage';
    case 'capabilitystatement.document':
      return 'CapabilityStatementDocument';
    case 'careplan':
      return 'CarePlan';
    case 'careplan.activity':
      return 'CarePlanActivity';
    case 'careteam':
      return 'CareTeam';
    case 'careteam.participant':
      return 'CareTeamParticipant';
    case 'chargeitem':
      return 'ChargeItem';
    case 'chargeitem.performer':
      return 'ChargeItemPerformer';
    case 'chargeitemdefinition':
      return 'ChargeItemDefinition';
    case 'chargeitemdefinition.applicability':
      return 'ChargeItemDefinitionApplicability';
    case 'chargeitemdefinition.propertygroup':
      return 'ChargeItemDefinitionPropertyGroup';
    case 'citation':
      return 'Citation';
    case 'citation.summary':
      return 'CitationSummary';
    case 'citation.classification':
      return 'CitationClassification';
    case 'citation.statusdate':
      return 'CitationStatusDate';
    case 'citation.citedartifact':
      return 'CitationCitedArtifact';
    case 'citation.citedartifact.version':
      return 'CitationVersion';
    case 'citation.citedartifact.statusdate':
      return 'CitationStatusDate1';
    case 'citation.citedartifact.title':
      return 'CitationTitle';
    case 'citation.citedartifact.abstract':
      return 'CitationAbstract';
    case 'citation.citedartifact.part':
      return 'CitationPart';
    case 'citation.citedartifact.relatesto':
      return 'CitationRelatesTo';
    case 'citation.citedartifact.publicationform':
      return 'CitationPublicationForm';
    case 'citation.citedartifact.publicationform.publishedin':
      return 'CitationPublishedIn';
    case 'citation.citedartifact.weblocation':
      return 'CitationWebLocation';
    case 'citation.citedartifact.classification':
      return 'CitationClassification1';
    case 'citation.citedartifact.contributorship':
      return 'CitationContributorship';
    case 'citation.citedartifact.contributorship.entry':
      return 'CitationEntry';
    case 'citation.citedartifact.contributorship.entry.contributioninstance':
      return 'CitationContributionInstance';
    case 'citation.citedartifact.contributorship.summary':
      return 'CitationSummary1';
    case 'claim':
      return 'Claim';
    case 'claim.related':
      return 'ClaimRelated';
    case 'claim.payee':
      return 'ClaimPayee';
    case 'claim.event':
      return 'ClaimEvent';
    case 'claim.careteam':
      return 'ClaimCareTeam';
    case 'claim.supportinginfo':
      return 'ClaimSupportingInfo';
    case 'claim.diagnosis':
      return 'ClaimDiagnosis';
    case 'claim.procedure':
      return 'ClaimProcedure';
    case 'claim.insurance':
      return 'ClaimInsurance';
    case 'claim.accident':
      return 'ClaimAccident';
    case 'claim.item':
      return 'ClaimItem';
    case 'claim.item.bodysite':
      return 'ClaimBodySite';
    case 'claim.item.detail':
      return 'ClaimDetail';
    case 'claim.item.detail.subdetail':
      return 'ClaimSubDetail';
    case 'claimresponse':
      return 'ClaimResponse';
    case 'claimresponse.event':
      return 'ClaimResponseEvent';
    case 'claimresponse.item':
      return 'ClaimResponseItem';
    case 'claimresponse.item.reviewoutcome':
      return 'ClaimResponseReviewOutcome';
    case 'claimresponse.item.adjudication':
      return 'ClaimResponseAdjudication';
    case 'claimresponse.item.detail':
      return 'ClaimResponseDetail';
    case 'claimresponse.item.detail.subdetail':
      return 'ClaimResponseSubDetail';
    case 'claimresponse.additem':
      return 'ClaimResponseAddItem';
    case 'claimresponse.additem.bodysite':
      return 'ClaimResponseBodySite';
    case 'claimresponse.additem.detail':
      return 'ClaimResponseDetail1';
    case 'claimresponse.additem.detail.subdetail':
      return 'ClaimResponseSubDetail1';
    case 'claimresponse.total':
      return 'ClaimResponseTotal';
    case 'claimresponse.payment':
      return 'ClaimResponsePayment';
    case 'claimresponse.processnote':
      return 'ClaimResponseProcessNote';
    case 'claimresponse.insurance':
      return 'ClaimResponseInsurance';
    case 'claimresponse.error':
      return 'ClaimResponseError';
    case 'clinicalimpression':
      return 'ClinicalImpression';
    case 'clinicalimpression.finding':
      return 'ClinicalImpressionFinding';
    case 'clinicalusedefinition':
      return 'ClinicalUseDefinition';
    case 'clinicalusedefinition.contraindication':
      return 'ClinicalUseDefinitionContraindication';
    case 'clinicalusedefinition.contraindication.othertherapy':
      return 'ClinicalUseDefinitionOtherTherapy';
    case 'clinicalusedefinition.indication':
      return 'ClinicalUseDefinitionIndication';
    case 'clinicalusedefinition.interaction':
      return 'ClinicalUseDefinitionInteraction';
    case 'clinicalusedefinition.interaction.interactant':
      return 'ClinicalUseDefinitionInteractant';
    case 'clinicalusedefinition.undesirableeffect':
      return 'ClinicalUseDefinitionUndesirableEffect';
    case 'clinicalusedefinition.warning':
      return 'ClinicalUseDefinitionWarning';
    case 'codesystem':
      return 'CodeSystem';
    case 'codesystem.filter':
      return 'CodeSystemFilter';
    case 'codesystem.property':
      return 'CodeSystemProperty';
    case 'codesystem.concept':
      return 'CodeSystemConcept';
    case 'codesystem.concept.designation':
      return 'CodeSystemDesignation';
    case 'codesystem.concept.property':
      return 'CodeSystemProperty1';
    case 'communication':
      return 'Communication';
    case 'communication.payload':
      return 'CommunicationPayload';
    case 'communicationrequest':
      return 'CommunicationRequest';
    case 'communicationrequest.payload':
      return 'CommunicationRequestPayload';
    case 'compartmentdefinition':
      return 'CompartmentDefinition';
    case 'compartmentdefinition.resource':
      return 'CompartmentDefinitionResource';
    case 'composition':
      return 'Composition';
    case 'composition.attester':
      return 'CompositionAttester';
    case 'composition.event':
      return 'CompositionEvent';
    case 'composition.section':
      return 'CompositionSection';
    case 'conceptmap':
      return 'ConceptMap';
    case 'conceptmap.property':
      return 'ConceptMapProperty';
    case 'conceptmap.additionalattribute':
      return 'ConceptMapAdditionalAttribute';
    case 'conceptmap.group':
      return 'ConceptMapGroup';
    case 'conceptmap.group.element':
      return 'ConceptMapElement';
    case 'conceptmap.group.element.target':
      return 'ConceptMapTarget';
    case 'conceptmap.group.element.target.property':
      return 'ConceptMapProperty1';
    case 'conceptmap.group.element.target.dependson':
      return 'ConceptMapDependsOn';
    case 'conceptmap.group.unmapped':
      return 'ConceptMapUnmapped';
    case 'condition':
      return 'Condition';
    case 'condition.participant':
      return 'ConditionParticipant';
    case 'condition.stage':
      return 'ConditionStage';
    case 'conditiondefinition':
      return 'ConditionDefinition';
    case 'conditiondefinition.observation':
      return 'ConditionDefinitionObservation';
    case 'conditiondefinition.medication':
      return 'ConditionDefinitionMedication';
    case 'conditiondefinition.precondition':
      return 'ConditionDefinitionPrecondition';
    case 'conditiondefinition.questionnaire':
      return 'ConditionDefinitionQuestionnaire';
    case 'conditiondefinition.plan':
      return 'ConditionDefinitionPlan';
    case 'consent':
      return 'Consent';
    case 'consent.policybasis':
      return 'ConsentPolicyBasis';
    case 'consent.verification':
      return 'ConsentVerification';
    case 'consent.provision':
      return 'ConsentProvision';
    case 'consent.provision.actor':
      return 'ConsentActor';
    case 'consent.provision.data':
      return 'ConsentData';
    case 'contract':
      return 'Contract';
    case 'contract.contentdefinition':
      return 'ContractContentDefinition';
    case 'contract.term':
      return 'ContractTerm';
    case 'contract.term.securitylabel':
      return 'ContractSecurityLabel';
    case 'contract.term.offer':
      return 'ContractOffer';
    case 'contract.term.offer.party':
      return 'ContractParty';
    case 'contract.term.offer.answer':
      return 'ContractAnswer';
    case 'contract.term.asset':
      return 'ContractAsset';
    case 'contract.term.asset.context':
      return 'ContractContext';
    case 'contract.term.asset.valueditem':
      return 'ContractValuedItem';
    case 'contract.term.action':
      return 'ContractAction';
    case 'contract.term.action.subject':
      return 'ContractSubject';
    case 'contract.signer':
      return 'ContractSigner';
    case 'contract.friendly':
      return 'ContractFriendly';
    case 'contract.legal':
      return 'ContractLegal';
    case 'contract.rule':
      return 'ContractRule';
    case 'coverage':
      return 'Coverage';
    case 'coverage.paymentby':
      return 'CoveragePaymentBy';
    case 'coverage.class':
      return 'CoverageClass';
    case 'coverage.costtobeneficiary':
      return 'CoverageCostToBeneficiary';
    case 'coverage.costtobeneficiary.exception':
      return 'CoverageException';
    case 'coverageeligibilityrequest':
      return 'CoverageEligibilityRequest';
    case 'coverageeligibilityrequest.event':
      return 'CoverageEligibilityRequestEvent';
    case 'coverageeligibilityrequest.supportinginfo':
      return 'CoverageEligibilityRequestSupportingInfo';
    case 'coverageeligibilityrequest.insurance':
      return 'CoverageEligibilityRequestInsurance';
    case 'coverageeligibilityrequest.item':
      return 'CoverageEligibilityRequestItem';
    case 'coverageeligibilityrequest.item.diagnosis':
      return 'CoverageEligibilityRequestDiagnosis';
    case 'coverageeligibilityresponse':
      return 'CoverageEligibilityResponse';
    case 'coverageeligibilityresponse.event':
      return 'CoverageEligibilityResponseEvent';
    case 'coverageeligibilityresponse.insurance':
      return 'CoverageEligibilityResponseInsurance';
    case 'coverageeligibilityresponse.insurance.item':
      return 'CoverageEligibilityResponseItem';
    case 'coverageeligibilityresponse.insurance.item.benefit':
      return 'CoverageEligibilityResponseBenefit';
    case 'coverageeligibilityresponse.error':
      return 'CoverageEligibilityResponseError';
    case 'detectedissue':
      return 'DetectedIssue';
    case 'detectedissue.evidence':
      return 'DetectedIssueEvidence';
    case 'detectedissue.mitigation':
      return 'DetectedIssueMitigation';
    case 'device':
      return 'Device';
    case 'device.udicarrier':
      return 'DeviceUdiCarrier';
    case 'device.name':
      return 'DeviceName';
    case 'device.version':
      return 'DeviceVersion';
    case 'device.conformsto':
      return 'DeviceConformsTo';
    case 'device.property':
      return 'DeviceProperty';
    case 'deviceassociation':
      return 'DeviceAssociation';
    case 'deviceassociation.operation':
      return 'DeviceAssociationOperation';
    case 'devicedefinition':
      return 'DeviceDefinition';
    case 'devicedefinition.udideviceidentifier':
      return 'DeviceDefinitionUdiDeviceIdentifier';
    case 'devicedefinition.udideviceidentifier.marketdistribution':
      return 'DeviceDefinitionMarketDistribution';
    case 'devicedefinition.regulatoryidentifier':
      return 'DeviceDefinitionRegulatoryIdentifier';
    case 'devicedefinition.devicename':
      return 'DeviceDefinitionDeviceName';
    case 'devicedefinition.classification':
      return 'DeviceDefinitionClassification';
    case 'devicedefinition.conformsto':
      return 'DeviceDefinitionConformsTo';
    case 'devicedefinition.haspart':
      return 'DeviceDefinitionHasPart';
    case 'devicedefinition.packaging':
      return 'DeviceDefinitionPackaging';
    case 'devicedefinition.packaging.distributor':
      return 'DeviceDefinitionDistributor';
    case 'devicedefinition.version':
      return 'DeviceDefinitionVersion';
    case 'devicedefinition.property':
      return 'DeviceDefinitionProperty';
    case 'devicedefinition.link':
      return 'DeviceDefinitionLink';
    case 'devicedefinition.material':
      return 'DeviceDefinitionMaterial';
    case 'devicedefinition.guideline':
      return 'DeviceDefinitionGuideline';
    case 'devicedefinition.correctiveaction':
      return 'DeviceDefinitionCorrectiveAction';
    case 'devicedefinition.chargeitem':
      return 'DeviceDefinitionChargeItem';
    case 'devicedispense':
      return 'DeviceDispense';
    case 'devicedispense.performer':
      return 'DeviceDispensePerformer';
    case 'devicemetric':
      return 'DeviceMetric';
    case 'devicemetric.calibration':
      return 'DeviceMetricCalibration';
    case 'devicerequest':
      return 'DeviceRequest';
    case 'devicerequest.parameter':
      return 'DeviceRequestParameter';
    case 'deviceusage':
      return 'DeviceUsage';
    case 'deviceusage.adherence':
      return 'DeviceUsageAdherence';
    case 'diagnosticreport':
      return 'DiagnosticReport';
    case 'diagnosticreport.supportinginfo':
      return 'DiagnosticReportSupportingInfo';
    case 'diagnosticreport.media':
      return 'DiagnosticReportMedia';
    case 'documentreference':
      return 'DocumentReference';
    case 'documentreference.attester':
      return 'DocumentReferenceAttester';
    case 'documentreference.relatesto':
      return 'DocumentReferenceRelatesTo';
    case 'documentreference.content':
      return 'DocumentReferenceContent';
    case 'documentreference.content.profile':
      return 'DocumentReferenceProfile';
    case 'encounter':
      return 'Encounter';
    case 'encounter.participant':
      return 'EncounterParticipant';
    case 'encounter.reason':
      return 'EncounterReason';
    case 'encounter.diagnosis':
      return 'EncounterDiagnosis';
    case 'encounter.admission':
      return 'EncounterAdmission';
    case 'encounter.location':
      return 'EncounterLocation';
    case 'encounterhistory':
      return 'EncounterHistory';
    case 'encounterhistory.location':
      return 'EncounterHistoryLocation';
    case 'endpoint':
      return 'FhirEndpoint';
    case 'endpoint.payload':
      return 'EndpointPayload';
    case 'enrollmentrequest':
      return 'EnrollmentRequest';
    case 'enrollmentresponse':
      return 'EnrollmentResponse';
    case 'episodeofcare':
      return 'EpisodeOfCare';
    case 'episodeofcare.statushistory':
      return 'EpisodeOfCareStatusHistory';
    case 'episodeofcare.reason':
      return 'EpisodeOfCareReason';
    case 'episodeofcare.diagnosis':
      return 'EpisodeOfCareDiagnosis';
    case 'eventdefinition':
      return 'EventDefinition';
    case 'evidence':
      return 'Evidence';
    case 'evidence.variabledefinition':
      return 'EvidenceVariableDefinition';
    case 'evidence.statistic':
      return 'EvidenceStatistic';
    case 'evidence.statistic.samplesize':
      return 'EvidenceSampleSize';
    case 'evidence.statistic.attributeestimate':
      return 'EvidenceAttributeEstimate';
    case 'evidence.statistic.modelcharacteristic':
      return 'EvidenceModelCharacteristic';
    case 'evidence.statistic.modelcharacteristic.variable':
      return 'EvidenceModelCharacteristicVariable';
    case 'evidence.certainty':
      return 'EvidenceCertainty';
    case 'evidencereport':
      return 'EvidenceReport';
    case 'evidencereport.subject':
      return 'EvidenceReportSubject';
    case 'evidencereport.subject.characteristic':
      return 'EvidenceReportCharacteristic';
    case 'evidencereport.relatesto':
      return 'EvidenceReportRelatesTo';
    case 'evidencereport.relatesto.target':
      return 'EvidenceReportTarget';
    case 'evidencereport.section':
      return 'EvidenceReportSection';
    case 'evidencevariable':
      return 'EvidenceVariable';
    case 'evidencevariable.characteristic':
      return 'EvidenceVariableCharacteristic';
    case 'evidencevariable.characteristic.definitionbytypeandvalue':
      return 'EvidenceVariableDefinitionByTypeAndValue';
    case 'evidencevariable.characteristic.definitionbycombination':
      return 'EvidenceVariableDefinitionByCombination';
    case 'evidencevariable.characteristic.timefromevent':
      return 'EvidenceVariableTimeFromEvent';
    case 'evidencevariable.category':
      return 'EvidenceVariableCategory';
    case 'examplescenario':
      return 'ExampleScenario';
    case 'examplescenario.actor':
      return 'ExampleScenarioActor';
    case 'examplescenario.instance':
      return 'ExampleScenarioInstance';
    case 'examplescenario.instance.version':
      return 'ExampleScenarioVersion';
    case 'examplescenario.instance.containedinstance':
      return 'ExampleScenarioContainedInstance';
    case 'examplescenario.process':
      return 'ExampleScenarioProcess';
    case 'examplescenario.process.step':
      return 'ExampleScenarioStep';
    case 'examplescenario.process.step.operation':
      return 'ExampleScenarioOperation';
    case 'examplescenario.process.step.alternative':
      return 'ExampleScenarioAlternative';
    case 'explanationofbenefit':
      return 'ExplanationOfBenefit';
    case 'explanationofbenefit.related':
      return 'ExplanationOfBenefitRelated';
    case 'explanationofbenefit.event':
      return 'ExplanationOfBenefitEvent';
    case 'explanationofbenefit.payee':
      return 'ExplanationOfBenefitPayee';
    case 'explanationofbenefit.careteam':
      return 'ExplanationOfBenefitCareTeam';
    case 'explanationofbenefit.supportinginfo':
      return 'ExplanationOfBenefitSupportingInfo';
    case 'explanationofbenefit.diagnosis':
      return 'ExplanationOfBenefitDiagnosis';
    case 'explanationofbenefit.procedure':
      return 'ExplanationOfBenefitProcedure';
    case 'explanationofbenefit.insurance':
      return 'ExplanationOfBenefitInsurance';
    case 'explanationofbenefit.accident':
      return 'ExplanationOfBenefitAccident';
    case 'explanationofbenefit.item':
      return 'ExplanationOfBenefitItem';
    case 'explanationofbenefit.item.bodysite':
      return 'ExplanationOfBenefitBodySite';
    case 'explanationofbenefit.item.reviewoutcome':
      return 'ExplanationOfBenefitReviewOutcome';
    case 'explanationofbenefit.item.adjudication':
      return 'ExplanationOfBenefitAdjudication';
    case 'explanationofbenefit.item.detail':
      return 'ExplanationOfBenefitDetail';
    case 'explanationofbenefit.item.detail.subdetail':
      return 'ExplanationOfBenefitSubDetail';
    case 'explanationofbenefit.additem':
      return 'ExplanationOfBenefitAddItem';
    case 'explanationofbenefit.additem.bodysite':
      return 'ExplanationOfBenefitBodySite1';
    case 'explanationofbenefit.additem.detail':
      return 'ExplanationOfBenefitDetail1';
    case 'explanationofbenefit.additem.detail.subdetail':
      return 'ExplanationOfBenefitSubDetail1';
    case 'explanationofbenefit.total':
      return 'ExplanationOfBenefitTotal';
    case 'explanationofbenefit.payment':
      return 'ExplanationOfBenefitPayment';
    case 'explanationofbenefit.processnote':
      return 'ExplanationOfBenefitProcessNote';
    case 'explanationofbenefit.benefitbalance':
      return 'ExplanationOfBenefitBenefitBalance';
    case 'explanationofbenefit.benefitbalance.financial':
      return 'ExplanationOfBenefitFinancial';
    case 'familymemberhistory':
      return 'FamilyMemberHistory';
    case 'familymemberhistory.participant':
      return 'FamilyMemberHistoryParticipant';
    case 'familymemberhistory.condition':
      return 'FamilyMemberHistoryCondition';
    case 'familymemberhistory.procedure':
      return 'FamilyMemberHistoryProcedure';
    case 'flag':
      return 'Flag';
    case 'formularyitem':
      return 'FormularyItem';
    case 'genomicstudy':
      return 'GenomicStudy';
    case 'genomicstudy.analysis':
      return 'GenomicStudyAnalysis';
    case 'genomicstudy.analysis.input':
      return 'GenomicStudyInput';
    case 'genomicstudy.analysis.output':
      return 'GenomicStudyOutput';
    case 'genomicstudy.analysis.performer':
      return 'GenomicStudyPerformer';
    case 'genomicstudy.analysis.device':
      return 'GenomicStudyDevice';
    case 'goal':
      return 'Goal';
    case 'goal.target':
      return 'GoalTarget';
    case 'graphdefinition':
      return 'GraphDefinition';
    case 'graphdefinition.node':
      return 'GraphDefinitionNode';
    case 'graphdefinition.link':
      return 'GraphDefinitionLink';
    case 'graphdefinition.link.compartment':
      return 'GraphDefinitionCompartment';
    case 'group':
      return 'FhirGroup';
    case 'group.characteristic':
      return 'GroupCharacteristic';
    case 'group.member':
      return 'GroupMember';
    case 'guidanceresponse':
      return 'GuidanceResponse';
    case 'healthcareservice':
      return 'HealthcareService';
    case 'healthcareservice.eligibility':
      return 'HealthcareServiceEligibility';
    case 'imagingselection':
      return 'ImagingSelection';
    case 'imagingselection.performer':
      return 'ImagingSelectionPerformer';
    case 'imagingselection.instance':
      return 'ImagingSelectionInstance';
    case 'imagingselection.instance.imageregion2d':
      return 'ImagingSelectionImageRegion2D';
    case 'imagingselection.instance.imageregion3d':
      return 'ImagingSelectionImageRegion3D';
    case 'imagingstudy':
      return 'ImagingStudy';
    case 'imagingstudy.series':
      return 'ImagingStudySeries';
    case 'imagingstudy.series.performer':
      return 'ImagingStudyPerformer';
    case 'imagingstudy.series.instance':
      return 'ImagingStudyInstance';
    case 'immunization':
      return 'Immunization';
    case 'immunization.performer':
      return 'ImmunizationPerformer';
    case 'immunization.programeligibility':
      return 'ImmunizationProgramEligibility';
    case 'immunization.reaction':
      return 'ImmunizationReaction';
    case 'immunization.protocolapplied':
      return 'ImmunizationProtocolApplied';
    case 'immunizationevaluation':
      return 'ImmunizationEvaluation';
    case 'immunizationrecommendation':
      return 'ImmunizationRecommendation';
    case 'immunizationrecommendation.recommendation':
      return 'ImmunizationRecommendationRecommendation';
    case 'immunizationrecommendation.recommendation.datecriterion':
      return 'ImmunizationRecommendationDateCriterion';
    case 'implementationguide':
      return 'ImplementationGuide';
    case 'implementationguide.dependson':
      return 'ImplementationGuideDependsOn';
    case 'implementationguide.global':
      return 'ImplementationGuideGlobal';
    case 'implementationguide.definition':
      return 'ImplementationGuideDefinition';
    case 'implementationguide.definition.grouping':
      return 'ImplementationGuideGrouping';
    case 'implementationguide.definition.resource':
      return 'ImplementationGuideResource';
    case 'implementationguide.definition.page':
      return 'ImplementationGuidePage';
    case 'implementationguide.definition.parameter':
      return 'ImplementationGuideParameter';
    case 'implementationguide.definition.template':
      return 'ImplementationGuideTemplate';
    case 'implementationguide.manifest':
      return 'ImplementationGuideManifest';
    case 'implementationguide.manifest.resource':
      return 'ImplementationGuideResource1';
    case 'implementationguide.manifest.page':
      return 'ImplementationGuidePage1';
    case 'ingredient':
      return 'Ingredient';
    case 'ingredient.manufacturer':
      return 'IngredientManufacturer';
    case 'ingredient.substance':
      return 'IngredientSubstance';
    case 'ingredient.substance.strength':
      return 'IngredientStrength';
    case 'ingredient.substance.strength.referencestrength':
      return 'IngredientReferenceStrength';
    case 'insuranceplan':
      return 'InsurancePlan';
    case 'insuranceplan.coverage':
      return 'InsurancePlanCoverage';
    case 'insuranceplan.coverage.benefit':
      return 'InsurancePlanBenefit';
    case 'insuranceplan.coverage.benefit.limit':
      return 'InsurancePlanLimit';
    case 'insuranceplan.plan':
      return 'InsurancePlanPlan';
    case 'insuranceplan.plan.generalcost':
      return 'InsurancePlanGeneralCost';
    case 'insuranceplan.plan.specificcost':
      return 'InsurancePlanSpecificCost';
    case 'insuranceplan.plan.specificcost.benefit':
      return 'InsurancePlanBenefit1';
    case 'insuranceplan.plan.specificcost.benefit.cost':
      return 'InsurancePlanCost';
    case 'inventoryitem':
      return 'InventoryItem';
    case 'inventoryitem.name':
      return 'InventoryItemName';
    case 'inventoryitem.responsibleorganization':
      return 'InventoryItemResponsibleOrganization';
    case 'inventoryitem.description':
      return 'InventoryItemDescription';
    case 'inventoryitem.association':
      return 'InventoryItemAssociation';
    case 'inventoryitem.characteristic':
      return 'InventoryItemCharacteristic';
    case 'inventoryitem.instance':
      return 'InventoryItemInstance';
    case 'inventoryreport':
      return 'InventoryReport';
    case 'inventoryreport.inventorylisting':
      return 'InventoryReportInventoryListing';
    case 'inventoryreport.inventorylisting.item':
      return 'InventoryReportItem';
    case 'invoice':
      return 'Invoice';
    case 'invoice.participant':
      return 'InvoiceParticipant';
    case 'invoice.lineitem':
      return 'InvoiceLineItem';
    case 'library':
      return 'Library';
    case 'linkage':
      return 'Linkage';
    case 'linkage.item':
      return 'LinkageItem';
    case 'list':
      return 'FhirList';
    case 'list.entry':
      return 'ListEntry';
    case 'location':
      return 'Location';
    case 'location.position':
      return 'LocationPosition';
    case 'manufactureditemdefinition':
      return 'ManufacturedItemDefinition';
    case 'manufactureditemdefinition.property':
      return 'ManufacturedItemDefinitionProperty';
    case 'manufactureditemdefinition.component':
      return 'ManufacturedItemDefinitionComponent';
    case 'manufactureditemdefinition.component.constituent':
      return 'ManufacturedItemDefinitionConstituent';
    case 'measure':
      return 'Measure';
    case 'measure.term':
      return 'MeasureTerm';
    case 'measure.group':
      return 'MeasureGroup';
    case 'measure.group.population':
      return 'MeasurePopulation';
    case 'measure.group.stratifier':
      return 'MeasureStratifier';
    case 'measure.group.stratifier.component':
      return 'MeasureComponent';
    case 'measure.supplementaldata':
      return 'MeasureSupplementalData';
    case 'measurereport':
      return 'MeasureReport';
    case 'measurereport.group':
      return 'MeasureReportGroup';
    case 'measurereport.group.population':
      return 'MeasureReportPopulation';
    case 'measurereport.group.stratifier':
      return 'MeasureReportStratifier';
    case 'measurereport.group.stratifier.stratum':
      return 'MeasureReportStratum';
    case 'measurereport.group.stratifier.stratum.component':
      return 'MeasureReportComponent';
    case 'measurereport.group.stratifier.stratum.population':
      return 'MeasureReportPopulation1';
    case 'medication':
      return 'Medication';
    case 'medication.ingredient':
      return 'MedicationIngredient';
    case 'medication.batch':
      return 'MedicationBatch';
    case 'medicationadministration':
      return 'MedicationAdministration';
    case 'medicationadministration.performer':
      return 'MedicationAdministrationPerformer';
    case 'medicationadministration.dosage':
      return 'MedicationAdministrationDosage';
    case 'medicationdispense':
      return 'MedicationDispense';
    case 'medicationdispense.performer':
      return 'MedicationDispensePerformer';
    case 'medicationdispense.substitution':
      return 'MedicationDispenseSubstitution';
    case 'medicationknowledge':
      return 'MedicationKnowledge';
    case 'medicationknowledge.relatedmedicationknowledge':
      return 'MedicationKnowledgeRelatedMedicationKnowledge';
    case 'medicationknowledge.monograph':
      return 'MedicationKnowledgeMonograph';
    case 'medicationknowledge.cost':
      return 'MedicationKnowledgeCost';
    case 'medicationknowledge.monitoringprogram':
      return 'MedicationKnowledgeMonitoringProgram';
    case 'medicationknowledge.indicationguideline':
      return 'MedicationKnowledgeIndicationGuideline';
    case 'medicationknowledge.indicationguideline.dosingguideline':
      return 'MedicationKnowledgeDosingGuideline';
    case 'medicationknowledge.indicationguideline.dosingguideline.dosage':
      return 'MedicationKnowledgeDosage';
    case 'medicationknowledge.indicationguideline.dosingguideline.patientcharacteristic':
      return 'MedicationKnowledgePatientCharacteristic';
    case 'medicationknowledge.medicineclassification':
      return 'MedicationKnowledgeMedicineClassification';
    case 'medicationknowledge.packaging':
      return 'MedicationKnowledgePackaging';
    case 'medicationknowledge.storageguideline':
      return 'MedicationKnowledgeStorageGuideline';
    case 'medicationknowledge.storageguideline.environmentalsetting':
      return 'MedicationKnowledgeEnvironmentalSetting';
    case 'medicationknowledge.regulatory':
      return 'MedicationKnowledgeRegulatory';
    case 'medicationknowledge.regulatory.substitution':
      return 'MedicationKnowledgeSubstitution';
    case 'medicationknowledge.regulatory.maxdispense':
      return 'MedicationKnowledgeMaxDispense';
    case 'medicationknowledge.definitional':
      return 'MedicationKnowledgeDefinitional';
    case 'medicationknowledge.definitional.ingredient':
      return 'MedicationKnowledgeIngredient';
    case 'medicationknowledge.definitional.drugcharacteristic':
      return 'MedicationKnowledgeDrugCharacteristic';
    case 'medicationrequest':
      return 'MedicationRequest';
    case 'medicationrequest.dispenserequest':
      return 'MedicationRequestDispenseRequest';
    case 'medicationrequest.dispenserequest.initialfill':
      return 'MedicationRequestInitialFill';
    case 'medicationrequest.substitution':
      return 'MedicationRequestSubstitution';
    case 'medicationstatement':
      return 'MedicationStatement';
    case 'medicationstatement.adherence':
      return 'MedicationStatementAdherence';
    case 'medicinalproductdefinition':
      return 'MedicinalProductDefinition';
    case 'medicinalproductdefinition.contact':
      return 'MedicinalProductDefinitionContact';
    case 'medicinalproductdefinition.name':
      return 'MedicinalProductDefinitionName';
    case 'medicinalproductdefinition.name.part':
      return 'MedicinalProductDefinitionPart';
    case 'medicinalproductdefinition.name.usage':
      return 'MedicinalProductDefinitionUsage';
    case 'medicinalproductdefinition.crossreference':
      return 'MedicinalProductDefinitionCrossReference';
    case 'medicinalproductdefinition.operation':
      return 'MedicinalProductDefinitionOperation';
    case 'medicinalproductdefinition.characteristic':
      return 'MedicinalProductDefinitionCharacteristic';
    case 'messagedefinition':
      return 'MessageDefinition';
    case 'messagedefinition.focus':
      return 'MessageDefinitionFocus';
    case 'messagedefinition.allowedresponse':
      return 'MessageDefinitionAllowedResponse';
    case 'messageheader':
      return 'MessageHeader';
    case 'messageheader.destination':
      return 'MessageHeaderDestination';
    case 'messageheader.source':
      return 'MessageHeaderSource';
    case 'messageheader.response':
      return 'MessageHeaderResponse';
    case 'molecularsequence':
      return 'MolecularSequence';
    case 'molecularsequence.relative':
      return 'MolecularSequenceRelative';
    case 'molecularsequence.relative.startingsequence':
      return 'MolecularSequenceStartingSequence';
    case 'molecularsequence.relative.edit':
      return 'MolecularSequenceEdit';
    case 'namingsystem':
      return 'NamingSystem';
    case 'namingsystem.uniqueid':
      return 'NamingSystemUniqueId';
    case 'nutritionintake':
      return 'NutritionIntake';
    case 'nutritionintake.consumeditem':
      return 'NutritionIntakeConsumedItem';
    case 'nutritionintake.ingredientlabel':
      return 'NutritionIntakeIngredientLabel';
    case 'nutritionintake.performer':
      return 'NutritionIntakePerformer';
    case 'nutritionorder':
      return 'NutritionOrder';
    case 'nutritionorder.oraldiet':
      return 'NutritionOrderOralDiet';
    case 'nutritionorder.oraldiet.schedule':
      return 'NutritionOrderSchedule';
    case 'nutritionorder.oraldiet.nutrient':
      return 'NutritionOrderNutrient';
    case 'nutritionorder.oraldiet.texture':
      return 'NutritionOrderTexture';
    case 'nutritionorder.supplement':
      return 'NutritionOrderSupplement';
    case 'nutritionorder.supplement.schedule':
      return 'NutritionOrderSchedule1';
    case 'nutritionorder.enteralformula':
      return 'NutritionOrderEnteralFormula';
    case 'nutritionorder.enteralformula.additive':
      return 'NutritionOrderAdditive';
    case 'nutritionorder.enteralformula.administration':
      return 'NutritionOrderAdministration';
    case 'nutritionorder.enteralformula.administration.schedule':
      return 'NutritionOrderSchedule2';
    case 'nutritionproduct':
      return 'NutritionProduct';
    case 'nutritionproduct.nutrient':
      return 'NutritionProductNutrient';
    case 'nutritionproduct.ingredient':
      return 'NutritionProductIngredient';
    case 'nutritionproduct.characteristic':
      return 'NutritionProductCharacteristic';
    case 'nutritionproduct.instance':
      return 'NutritionProductInstance';
    case 'observation':
      return 'Observation';
    case 'observation.triggeredby':
      return 'ObservationTriggeredBy';
    case 'observation.referencerange':
      return 'ObservationReferenceRange';
    case 'observation.component':
      return 'ObservationComponent';
    case 'observationdefinition':
      return 'ObservationDefinition';
    case 'observationdefinition.qualifiedvalue':
      return 'ObservationDefinitionQualifiedValue';
    case 'observationdefinition.component':
      return 'ObservationDefinitionComponent';
    case 'operationdefinition':
      return 'OperationDefinition';
    case 'operationdefinition.parameter':
      return 'OperationDefinitionParameter';
    case 'operationdefinition.parameter.binding':
      return 'OperationDefinitionBinding';
    case 'operationdefinition.parameter.referencedfrom':
      return 'OperationDefinitionReferencedFrom';
    case 'operationdefinition.overload':
      return 'OperationDefinitionOverload';
    case 'operationoutcome':
      return 'OperationOutcome';
    case 'operationoutcome.issue':
      return 'OperationOutcomeIssue';
    case 'organization':
      return 'Organization';
    case 'organization.qualification':
      return 'OrganizationQualification';
    case 'organizationaffiliation':
      return 'OrganizationAffiliation';
    case 'packagedproductdefinition':
      return 'PackagedProductDefinition';
    case 'packagedproductdefinition.legalstatusofsupply':
      return 'PackagedProductDefinitionLegalStatusOfSupply';
    case 'packagedproductdefinition.packaging':
      return 'PackagedProductDefinitionPackaging';
    case 'packagedproductdefinition.packaging.property':
      return 'PackagedProductDefinitionProperty';
    case 'packagedproductdefinition.packaging.containeditem':
      return 'PackagedProductDefinitionContainedItem';
    case 'parameters':
      return 'Parameters';
    case 'parameters.parameter':
      return 'ParametersParameter';
    case 'patient':
      return 'Patient';
    case 'patient.contact':
      return 'PatientContact';
    case 'patient.communication':
      return 'PatientCommunication';
    case 'patient.link':
      return 'PatientLink';
    case 'paymentnotice':
      return 'PaymentNotice';
    case 'paymentreconciliation':
      return 'PaymentReconciliation';
    case 'paymentreconciliation.allocation':
      return 'PaymentReconciliationAllocation';
    case 'paymentreconciliation.processnote':
      return 'PaymentReconciliationProcessNote';
    case 'permission':
      return 'Permission';
    case 'permission.justification':
      return 'PermissionJustification';
    case 'permission.rule':
      return 'PermissionRule';
    case 'permission.rule.data':
      return 'PermissionData';
    case 'permission.rule.data.resource':
      return 'PermissionResource';
    case 'permission.rule.activity':
      return 'PermissionActivity';
    case 'person':
      return 'Person';
    case 'person.communication':
      return 'PersonCommunication';
    case 'person.link':
      return 'PersonLink';
    case 'plandefinition':
      return 'PlanDefinition';
    case 'plandefinition.goal':
      return 'PlanDefinitionGoal';
    case 'plandefinition.goal.target':
      return 'PlanDefinitionTarget';
    case 'plandefinition.actor':
      return 'PlanDefinitionActor';
    case 'plandefinition.actor.option':
      return 'PlanDefinitionOption';
    case 'plandefinition.action':
      return 'PlanDefinitionAction';
    case 'plandefinition.action.condition':
      return 'PlanDefinitionCondition';
    case 'plandefinition.action.input':
      return 'PlanDefinitionInput';
    case 'plandefinition.action.output':
      return 'PlanDefinitionOutput';
    case 'plandefinition.action.relatedaction':
      return 'PlanDefinitionRelatedAction';
    case 'plandefinition.action.participant':
      return 'PlanDefinitionParticipant';
    case 'plandefinition.action.dynamicvalue':
      return 'PlanDefinitionDynamicValue';
    case 'practitioner':
      return 'Practitioner';
    case 'practitioner.qualification':
      return 'PractitionerQualification';
    case 'practitioner.communication':
      return 'PractitionerCommunication';
    case 'practitionerrole':
      return 'PractitionerRole';
    case 'procedure':
      return 'Procedure';
    case 'procedure.performer':
      return 'ProcedurePerformer';
    case 'procedure.focaldevice':
      return 'ProcedureFocalDevice';
    case 'provenance':
      return 'Provenance';
    case 'provenance.agent':
      return 'ProvenanceAgent';
    case 'provenance.entity':
      return 'ProvenanceEntity';
    case 'questionnaire':
      return 'Questionnaire';
    case 'questionnaire.item':
      return 'QuestionnaireItem';
    case 'questionnaire.item.enablewhen':
      return 'QuestionnaireEnableWhen';
    case 'questionnaire.item.answeroption':
      return 'QuestionnaireAnswerOption';
    case 'questionnaire.item.initial':
      return 'QuestionnaireInitial';
    case 'questionnaireresponse':
      return 'QuestionnaireResponse';
    case 'questionnaireresponse.item':
      return 'QuestionnaireResponseItem';
    case 'questionnaireresponse.item.answer':
      return 'QuestionnaireResponseAnswer';
    case 'regulatedauthorization':
      return 'RegulatedAuthorization';
    case 'regulatedauthorization.case':
      return 'RegulatedAuthorizationCase';
    case 'relatedperson':
      return 'RelatedPerson';
    case 'relatedperson.communication':
      return 'RelatedPersonCommunication';
    case 'requestorchestration':
      return 'RequestOrchestration';
    case 'requestorchestration.action':
      return 'RequestOrchestrationAction';
    case 'requestorchestration.action.condition':
      return 'RequestOrchestrationCondition';
    case 'requestorchestration.action.input':
      return 'RequestOrchestrationInput';
    case 'requestorchestration.action.output':
      return 'RequestOrchestrationOutput';
    case 'requestorchestration.action.relatedaction':
      return 'RequestOrchestrationRelatedAction';
    case 'requestorchestration.action.participant':
      return 'RequestOrchestrationParticipant';
    case 'requestorchestration.action.dynamicvalue':
      return 'RequestOrchestrationDynamicValue';
    case 'requirements':
      return 'Requirements';
    case 'requirements.statement':
      return 'RequirementsStatement';
    case 'researchstudy':
      return 'ResearchStudy';
    case 'researchstudy.label':
      return 'ResearchStudyLabel';
    case 'researchstudy.associatedparty':
      return 'ResearchStudyAssociatedParty';
    case 'researchstudy.progressstatus':
      return 'ResearchStudyProgressStatus';
    case 'researchstudy.recruitment':
      return 'ResearchStudyRecruitment';
    case 'researchstudy.comparisongroup':
      return 'ResearchStudyComparisonGroup';
    case 'researchstudy.objective':
      return 'ResearchStudyObjective';
    case 'researchstudy.outcomemeasure':
      return 'ResearchStudyOutcomeMeasure';
    case 'researchsubject':
      return 'ResearchSubject';
    case 'researchsubject.progress':
      return 'ResearchSubjectProgress';
    case 'riskassessment':
      return 'RiskAssessment';
    case 'riskassessment.prediction':
      return 'RiskAssessmentPrediction';
    case 'schedule':
      return 'Schedule';
    case 'searchparameter':
      return 'SearchParameter';
    case 'searchparameter.component':
      return 'SearchParameterComponent';
    case 'servicerequest':
      return 'ServiceRequest';
    case 'servicerequest.orderdetail':
      return 'ServiceRequestOrderDetail';
    case 'servicerequest.orderdetail.parameter':
      return 'ServiceRequestParameter';
    case 'servicerequest.patientinstruction':
      return 'ServiceRequestPatientInstruction';
    case 'slot':
      return 'Slot';
    case 'specimen':
      return 'Specimen';
    case 'specimen.feature':
      return 'SpecimenFeature';
    case 'specimen.collection':
      return 'SpecimenCollection';
    case 'specimen.processing':
      return 'SpecimenProcessing';
    case 'specimen.container':
      return 'SpecimenContainer';
    case 'specimendefinition':
      return 'SpecimenDefinition';
    case 'specimendefinition.typetested':
      return 'SpecimenDefinitionTypeTested';
    case 'specimendefinition.typetested.container':
      return 'SpecimenDefinitionContainer';
    case 'specimendefinition.typetested.container.additive':
      return 'SpecimenDefinitionAdditive';
    case 'specimendefinition.typetested.handling':
      return 'SpecimenDefinitionHandling';
    case 'structuredefinition':
      return 'StructureDefinition';
    case 'structuredefinition.mapping':
      return 'StructureDefinitionMapping';
    case 'structuredefinition.context':
      return 'StructureDefinitionContext';
    case 'structuredefinition.snapshot':
      return 'StructureDefinitionSnapshot';
    case 'structuredefinition.differential':
      return 'StructureDefinitionDifferential';
    case 'structuremap':
      return 'StructureMap';
    case 'structuremap.structure':
      return 'StructureMapStructure';
    case 'structuremap.const':
      return 'StructureMapConst';
    case 'structuremap.group':
      return 'StructureMapGroup';
    case 'structuremap.group.input':
      return 'StructureMapInput';
    case 'structuremap.group.rule':
      return 'StructureMapRule';
    case 'structuremap.group.rule.source':
      return 'StructureMapSource';
    case 'structuremap.group.rule.target':
      return 'StructureMapTarget';
    case 'structuremap.group.rule.target.parameter':
      return 'StructureMapParameter';
    case 'structuremap.group.rule.dependent':
      return 'StructureMapDependent';
    case 'subscription':
      return 'Subscription';
    case 'subscription.filterby':
      return 'SubscriptionFilterBy';
    case 'subscription.parameter':
      return 'SubscriptionParameter';
    case 'subscriptionstatus':
      return 'SubscriptionStatus';
    case 'subscriptionstatus.notificationevent':
      return 'SubscriptionStatusNotificationEvent';
    case 'subscriptiontopic':
      return 'SubscriptionTopic';
    case 'subscriptiontopic.resourcetrigger':
      return 'SubscriptionTopicResourceTrigger';
    case 'subscriptiontopic.resourcetrigger.querycriteria':
      return 'SubscriptionTopicQueryCriteria';
    case 'subscriptiontopic.eventtrigger':
      return 'SubscriptionTopicEventTrigger';
    case 'subscriptiontopic.canfilterby':
      return 'SubscriptionTopicCanFilterBy';
    case 'subscriptiontopic.notificationshape':
      return 'SubscriptionTopicNotificationShape';
    case 'substance':
      return 'Substance';
    case 'substance.ingredient':
      return 'SubstanceIngredient';
    case 'substancedefinition':
      return 'SubstanceDefinition';
    case 'substancedefinition.moiety':
      return 'SubstanceDefinitionMoiety';
    case 'substancedefinition.characterization':
      return 'SubstanceDefinitionCharacterization';
    case 'substancedefinition.property':
      return 'SubstanceDefinitionProperty';
    case 'substancedefinition.molecularweight':
      return 'SubstanceDefinitionMolecularWeight';
    case 'substancedefinition.structure':
      return 'SubstanceDefinitionStructure';
    case 'substancedefinition.structure.representation':
      return 'SubstanceDefinitionRepresentation';
    case 'substancedefinition.code':
      return 'SubstanceDefinitionCode';
    case 'substancedefinition.name':
      return 'SubstanceDefinitionName';
    case 'substancedefinition.name.official':
      return 'SubstanceDefinitionOfficial';
    case 'substancedefinition.relationship':
      return 'SubstanceDefinitionRelationship';
    case 'substancedefinition.sourcematerial':
      return 'SubstanceDefinitionSourceMaterial';
    case 'substancenucleicacid':
      return 'SubstanceNucleicAcid';
    case 'substancenucleicacid.subunit':
      return 'SubstanceNucleicAcidSubunit';
    case 'substancenucleicacid.subunit.linkage':
      return 'SubstanceNucleicAcidLinkage';
    case 'substancenucleicacid.subunit.sugar':
      return 'SubstanceNucleicAcidSugar';
    case 'substancepolymer':
      return 'SubstancePolymer';
    case 'substancepolymer.monomerset':
      return 'SubstancePolymerMonomerSet';
    case 'substancepolymer.monomerset.startingmaterial':
      return 'SubstancePolymerStartingMaterial';
    case 'substancepolymer.repeat':
      return 'SubstancePolymerRepeat';
    case 'substancepolymer.repeat.repeatunit':
      return 'SubstancePolymerRepeatUnit';
    case 'substancepolymer.repeat.repeatunit.degreeofpolymerisation':
      return 'SubstancePolymerDegreeOfPolymerisation';
    case 'substancepolymer.repeat.repeatunit.structuralrepresentation':
      return 'SubstancePolymerStructuralRepresentation';
    case 'substanceprotein':
      return 'SubstanceProtein';
    case 'substanceprotein.subunit':
      return 'SubstanceProteinSubunit';
    case 'substancereferenceinformation':
      return 'SubstanceReferenceInformation';
    case 'substancereferenceinformation.gene':
      return 'SubstanceReferenceInformationGene';
    case 'substancereferenceinformation.geneelement':
      return 'SubstanceReferenceInformationGeneElement';
    case 'substancereferenceinformation.target':
      return 'SubstanceReferenceInformationTarget';
    case 'substancesourcematerial':
      return 'SubstanceSourceMaterial';
    case 'substancesourcematerial.fractiondescription':
      return 'SubstanceSourceMaterialFractionDescription';
    case 'substancesourcematerial.organism':
      return 'SubstanceSourceMaterialOrganism';
    case 'substancesourcematerial.organism.author':
      return 'SubstanceSourceMaterialAuthor';
    case 'substancesourcematerial.organism.hybrid':
      return 'SubstanceSourceMaterialHybrid';
    case 'substancesourcematerial.organism.organismgeneral':
      return 'SubstanceSourceMaterialOrganismGeneral';
    case 'substancesourcematerial.partdescription':
      return 'SubstanceSourceMaterialPartDescription';
    case 'supplydelivery':
      return 'SupplyDelivery';
    case 'supplydelivery.supplieditem':
      return 'SupplyDeliverySuppliedItem';
    case 'supplyrequest':
      return 'SupplyRequest';
    case 'supplyrequest.parameter':
      return 'SupplyRequestParameter';
    case 'task':
      return 'Task';
    case 'task.performer':
      return 'TaskPerformer';
    case 'task.restriction':
      return 'TaskRestriction';
    case 'task.input':
      return 'TaskInput';
    case 'task.output':
      return 'TaskOutput';
    case 'terminologycapabilities':
      return 'TerminologyCapabilities';
    case 'terminologycapabilities.software':
      return 'TerminologyCapabilitiesSoftware';
    case 'terminologycapabilities.implementation':
      return 'TerminologyCapabilitiesImplementation';
    case 'terminologycapabilities.codesystem':
      return 'TerminologyCapabilitiesCodeSystem';
    case 'terminologycapabilities.codesystem.version':
      return 'TerminologyCapabilitiesVersion';
    case 'terminologycapabilities.codesystem.version.filter':
      return 'TerminologyCapabilitiesFilter';
    case 'terminologycapabilities.expansion':
      return 'TerminologyCapabilitiesExpansion';
    case 'terminologycapabilities.expansion.parameter':
      return 'TerminologyCapabilitiesParameter';
    case 'terminologycapabilities.validatecode':
      return 'TerminologyCapabilitiesValidateCode';
    case 'terminologycapabilities.translation':
      return 'TerminologyCapabilitiesTranslation';
    case 'terminologycapabilities.closure':
      return 'TerminologyCapabilitiesClosure';
    case 'testplan':
      return 'TestPlan';
    case 'testplan.dependency':
      return 'TestPlanDependency';
    case 'testplan.testcase':
      return 'TestPlanTestCase';
    case 'testplan.testcase.dependency':
      return 'TestPlanDependency1';
    case 'testplan.testcase.testrun':
      return 'TestPlanTestRun';
    case 'testplan.testcase.testrun.script':
      return 'TestPlanScript';
    case 'testplan.testcase.testdata':
      return 'TestPlanTestData';
    case 'testplan.testcase.assertion':
      return 'TestPlanAssertion';
    case 'testreport':
      return 'TestReport';
    case 'testreport.participant':
      return 'TestReportParticipant';
    case 'testreport.setup':
      return 'TestReportSetup';
    case 'testreport.setup.action':
      return 'TestReportAction';
    case 'testreport.setup.action.operation':
      return 'TestReportOperation';
    case 'testreport.setup.action.assert':
      return 'TestReportAssert';
    case 'testreport.setup.action.assert.requirement':
      return 'TestReportRequirement';
    case 'testreport.test':
      return 'TestReportTest';
    case 'testreport.test.action':
      return 'TestReportAction1';
    case 'testreport.teardown':
      return 'TestReportTeardown';
    case 'testreport.teardown.action':
      return 'TestReportAction2';
    case 'testscript':
      return 'TestScript';
    case 'testscript.origin':
      return 'TestScriptOrigin';
    case 'testscript.destination':
      return 'TestScriptDestination';
    case 'testscript.metadata':
      return 'TestScriptMetadata';
    case 'testscript.metadata.link':
      return 'TestScriptLink';
    case 'testscript.metadata.capability':
      return 'TestScriptCapability';
    case 'testscript.scope':
      return 'TestScriptScope';
    case 'testscript.fixture':
      return 'TestScriptFixture';
    case 'testscript.variable':
      return 'TestScriptVariable';
    case 'testscript.setup':
      return 'TestScriptSetup';
    case 'testscript.setup.action':
      return 'TestScriptAction';
    case 'testscript.setup.action.operation':
      return 'TestScriptOperation';
    case 'testscript.setup.action.operation.requestheader':
      return 'TestScriptRequestHeader';
    case 'testscript.setup.action.assert':
      return 'TestScriptAssert';
    case 'testscript.setup.action.assert.requirement':
      return 'TestScriptRequirement';
    case 'testscript.test':
      return 'TestScriptTest';
    case 'testscript.test.action':
      return 'TestScriptAction1';
    case 'testscript.teardown':
      return 'TestScriptTeardown';
    case 'testscript.teardown.action':
      return 'TestScriptAction2';
    case 'transport':
      return 'Transport';
    case 'transport.restriction':
      return 'TransportRestriction';
    case 'transport.input':
      return 'TransportInput';
    case 'transport.output':
      return 'TransportOutput';
    case 'valueset':
      return 'ValueSet';
    case 'valueset.compose':
      return 'ValueSetCompose';
    case 'valueset.compose.include':
      return 'ValueSetInclude';
    case 'valueset.compose.include.concept':
      return 'ValueSetConcept';
    case 'valueset.compose.include.concept.designation':
      return 'ValueSetDesignation';
    case 'valueset.compose.include.filter':
      return 'ValueSetFilter';
    case 'valueset.expansion':
      return 'ValueSetExpansion';
    case 'valueset.expansion.parameter':
      return 'ValueSetParameter';
    case 'valueset.expansion.property':
      return 'ValueSetProperty';
    case 'valueset.expansion.contains':
      return 'ValueSetContains';
    case 'valueset.expansion.contains.property':
      return 'ValueSetProperty1';
    case 'valueset.expansion.contains.property.subproperty':
      return 'ValueSetSubProperty';
    case 'valueset.scope':
      return 'ValueSetScope';
    case 'verificationresult':
      return 'VerificationResult';
    case 'verificationresult.primarysource':
      return 'VerificationResultPrimarySource';
    case 'verificationresult.attestation':
      return 'VerificationResultAttestation';
    case 'verificationresult.validator':
      return 'VerificationResultValidator';
    case 'visionprescription':
      return 'VisionPrescription';
    case 'visionprescription.lensspecification':
      return 'VisionPrescriptionLensSpecification';
    case 'visionprescription.lensspecification.prism':
      return 'VisionPrescriptionPrism';
    case 'address':
      return 'Address';
    case 'age':
      return 'Age';
    case 'annotation':
      return 'Annotation';
    case 'attachment':
      return 'Attachment';
    case 'availability':
      return 'Availability';
    case 'availability.availabletime':
      return 'AvailabilityAvailableTime';
    case 'availability.notavailabletime':
      return 'AvailabilityNotAvailableTime';
    case 'codeableconcept':
      return 'CodeableConcept';
    case 'codeablereference':
      return 'CodeableReference';
    case 'coding':
      return 'Coding';
    case 'contactdetail':
      return 'ContactDetail';
    case 'contactpoint':
      return 'ContactPoint';
    case 'contributor':
      return 'Contributor';
    case 'count':
      return 'Count';
    case 'datarequirement':
      return 'DataRequirement';
    case 'datarequirement.codefilter':
      return 'DataRequirementCodeFilter';
    case 'datarequirement.datefilter':
      return 'DataRequirementDateFilter';
    case 'datarequirement.valuefilter':
      return 'DataRequirementValueFilter';
    case 'datarequirement.sort':
      return 'DataRequirementSort';
    case 'distance':
      return 'Distance';
    case 'dosage':
      return 'Dosage';
    case 'dosage.doseandrate':
      return 'DosageDoseAndRate';
    case 'duration':
      return 'FhirDuration';
    case 'elementdefinition':
      return 'ElementDefinition';
    case 'elementdefinition.slicing':
      return 'ElementDefinitionSlicing';
    case 'elementdefinition.slicing.discriminator':
      return 'ElementDefinitionDiscriminator';
    case 'elementdefinition.base':
      return 'ElementDefinitionBase';
    case 'elementdefinition.type':
      return 'ElementDefinitionType';
    case 'elementdefinition.example':
      return 'ElementDefinitionExample';
    case 'elementdefinition.constraint':
      return 'ElementDefinitionConstraint';
    case 'elementdefinition.binding':
      return 'ElementDefinitionBinding';
    case 'elementdefinition.binding.additional':
      return 'ElementDefinitionAdditional';
    case 'elementdefinition.mapping':
      return 'ElementDefinitionMapping';
    case 'expression':
      return 'FhirExpression';
    case 'extendedcontactdetail':
      return 'ExtendedContactDetail';
    case 'extension':
      return 'FhirExtension';
    case 'humanname':
      return 'HumanName';
    case 'identifier':
      return 'Identifier';
    case 'marketingstatus':
      return 'MarketingStatus';
    case 'meta':
      return 'FhirMeta';
    case 'monetarycomponent':
      return 'MonetaryComponent';
    case 'money':
      return 'Money';
    case 'narrative':
      return 'Narrative';
    case 'parameterdefinition':
      return 'ParameterDefinition';
    case 'period':
      return 'Period';
    case 'productshelflife':
      return 'ProductShelfLife';
    case 'quantity':
      return 'Quantity';
    case 'range':
      return 'Range';
    case 'ratio':
      return 'Ratio';
    case 'ratiorange':
      return 'RatioRange';
    case 'reference':
      return 'Reference';
    case 'relatedartifact':
      return 'RelatedArtifact';
    case 'sampleddata':
      return 'SampledData';
    case 'signature':
      return 'Signature';
    case 'timing':
      return 'Timing';
    case 'timing.repeat':
      return 'TimingRepeat';
    case 'triggerdefinition':
      return 'TriggerDefinition';
    case 'usagecontext':
      return 'UsageContext';
    case 'virtualservicedetail':
      return 'VirtualServiceDetail';
    default:
      return null;
  }
}
