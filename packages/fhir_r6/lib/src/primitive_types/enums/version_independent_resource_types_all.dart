// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for VersionIndependentResourceTypesAll
enum VersionIndependentResourceTypesAllEnum {
  /// BodySite
  bodySite,

  /// CatalogEntry
  catalogEntry,

  /// Conformance
  conformance,

  /// DataElement
  dataElement,

  /// DeviceComponent
  deviceComponent,

  /// DeviceUseRequest
  deviceUseRequest,

  /// DeviceUseStatement
  deviceUseStatement,

  /// DiagnosticOrder
  diagnosticOrder,

  /// DocumentManifest
  documentManifest,

  /// EffectEvidenceSynthesis
  effectEvidenceSynthesis,

  /// EligibilityRequest
  eligibilityRequest,

  /// EligibilityResponse
  eligibilityResponse,

  /// ExpansionProfile
  expansionProfile,

  /// ImagingManifest
  imagingManifest,

  /// ImagingObjectSelection
  imagingObjectSelection,

  /// Media
  media,

  /// MedicationOrder
  medicationOrder,

  /// MedicationUsage
  medicationUsage,

  /// MedicinalProduct
  medicinalProduct,

  /// MedicinalProductAuthorization
  medicinalProductAuthorization,

  /// MedicinalProductContraindication
  medicinalProductContraindication,

  /// MedicinalProductIndication
  medicinalProductIndication,

  /// MedicinalProductIngredient
  medicinalProductIngredient,

  /// MedicinalProductInteraction
  medicinalProductInteraction,

  /// MedicinalProductManufactured
  medicinalProductManufactured,

  /// MedicinalProductPackaged
  medicinalProductPackaged,

  /// MedicinalProductPharmaceutical
  medicinalProductPharmaceutical,

  /// MedicinalProductUndesirableEffect
  medicinalProductUndesirableEffect,

  /// Order
  order,

  /// OrderResponse
  orderResponse,

  /// ProcedureRequest
  procedureRequest,

  /// ProcessRequest
  processRequest,

  /// ProcessResponse
  processResponse,

  /// ReferralRequest
  referralRequest,

  /// RequestGroup
  requestGroup,

  /// ResearchDefinition
  researchDefinition,

  /// ResearchElementDefinition
  researchElementDefinition,

  /// RiskEvidenceSynthesis
  riskEvidenceSynthesis,

  /// Sequence
  sequence,

  /// ServiceDefinition
  serviceDefinition,

  /// SubstanceSpecification
  substanceSpecification,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case VersionIndependentResourceTypesAllEnum.bodySite:
        return 'BodySite';
      case VersionIndependentResourceTypesAllEnum.catalogEntry:
        return 'CatalogEntry';
      case VersionIndependentResourceTypesAllEnum.conformance:
        return 'Conformance';
      case VersionIndependentResourceTypesAllEnum.dataElement:
        return 'DataElement';
      case VersionIndependentResourceTypesAllEnum.deviceComponent:
        return 'DeviceComponent';
      case VersionIndependentResourceTypesAllEnum.deviceUseRequest:
        return 'DeviceUseRequest';
      case VersionIndependentResourceTypesAllEnum.deviceUseStatement:
        return 'DeviceUseStatement';
      case VersionIndependentResourceTypesAllEnum.diagnosticOrder:
        return 'DiagnosticOrder';
      case VersionIndependentResourceTypesAllEnum.documentManifest:
        return 'DocumentManifest';
      case VersionIndependentResourceTypesAllEnum.effectEvidenceSynthesis:
        return 'EffectEvidenceSynthesis';
      case VersionIndependentResourceTypesAllEnum.eligibilityRequest:
        return 'EligibilityRequest';
      case VersionIndependentResourceTypesAllEnum.eligibilityResponse:
        return 'EligibilityResponse';
      case VersionIndependentResourceTypesAllEnum.expansionProfile:
        return 'ExpansionProfile';
      case VersionIndependentResourceTypesAllEnum.imagingManifest:
        return 'ImagingManifest';
      case VersionIndependentResourceTypesAllEnum.imagingObjectSelection:
        return 'ImagingObjectSelection';
      case VersionIndependentResourceTypesAllEnum.media:
        return 'Media';
      case VersionIndependentResourceTypesAllEnum.medicationOrder:
        return 'MedicationOrder';
      case VersionIndependentResourceTypesAllEnum.medicationUsage:
        return 'MedicationUsage';
      case VersionIndependentResourceTypesAllEnum.medicinalProduct:
        return 'MedicinalProduct';
      case VersionIndependentResourceTypesAllEnum.medicinalProductAuthorization:
        return 'MedicinalProductAuthorization';
      case VersionIndependentResourceTypesAllEnum
            .medicinalProductContraindication:
        return 'MedicinalProductContraindication';
      case VersionIndependentResourceTypesAllEnum.medicinalProductIndication:
        return 'MedicinalProductIndication';
      case VersionIndependentResourceTypesAllEnum.medicinalProductIngredient:
        return 'MedicinalProductIngredient';
      case VersionIndependentResourceTypesAllEnum.medicinalProductInteraction:
        return 'MedicinalProductInteraction';
      case VersionIndependentResourceTypesAllEnum.medicinalProductManufactured:
        return 'MedicinalProductManufactured';
      case VersionIndependentResourceTypesAllEnum.medicinalProductPackaged:
        return 'MedicinalProductPackaged';
      case VersionIndependentResourceTypesAllEnum
            .medicinalProductPharmaceutical:
        return 'MedicinalProductPharmaceutical';
      case VersionIndependentResourceTypesAllEnum
            .medicinalProductUndesirableEffect:
        return 'MedicinalProductUndesirableEffect';
      case VersionIndependentResourceTypesAllEnum.order:
        return 'Order';
      case VersionIndependentResourceTypesAllEnum.orderResponse:
        return 'OrderResponse';
      case VersionIndependentResourceTypesAllEnum.procedureRequest:
        return 'ProcedureRequest';
      case VersionIndependentResourceTypesAllEnum.processRequest:
        return 'ProcessRequest';
      case VersionIndependentResourceTypesAllEnum.processResponse:
        return 'ProcessResponse';
      case VersionIndependentResourceTypesAllEnum.referralRequest:
        return 'ReferralRequest';
      case VersionIndependentResourceTypesAllEnum.requestGroup:
        return 'RequestGroup';
      case VersionIndependentResourceTypesAllEnum.researchDefinition:
        return 'ResearchDefinition';
      case VersionIndependentResourceTypesAllEnum.researchElementDefinition:
        return 'ResearchElementDefinition';
      case VersionIndependentResourceTypesAllEnum.riskEvidenceSynthesis:
        return 'RiskEvidenceSynthesis';
      case VersionIndependentResourceTypesAllEnum.sequence:
        return 'Sequence';
      case VersionIndependentResourceTypesAllEnum.serviceDefinition:
        return 'ServiceDefinition';
      case VersionIndependentResourceTypesAllEnum.substanceSpecification:
        return 'SubstanceSpecification';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static VersionIndependentResourceTypesAllEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return VersionIndependentResourceTypesAllEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static VersionIndependentResourceTypesAllEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'BodySite':
        return VersionIndependentResourceTypesAllEnum.bodySite;
      case 'CatalogEntry':
        return VersionIndependentResourceTypesAllEnum.catalogEntry;
      case 'Conformance':
        return VersionIndependentResourceTypesAllEnum.conformance;
      case 'DataElement':
        return VersionIndependentResourceTypesAllEnum.dataElement;
      case 'DeviceComponent':
        return VersionIndependentResourceTypesAllEnum.deviceComponent;
      case 'DeviceUseRequest':
        return VersionIndependentResourceTypesAllEnum.deviceUseRequest;
      case 'DeviceUseStatement':
        return VersionIndependentResourceTypesAllEnum.deviceUseStatement;
      case 'DiagnosticOrder':
        return VersionIndependentResourceTypesAllEnum.diagnosticOrder;
      case 'DocumentManifest':
        return VersionIndependentResourceTypesAllEnum.documentManifest;
      case 'EffectEvidenceSynthesis':
        return VersionIndependentResourceTypesAllEnum.effectEvidenceSynthesis;
      case 'EligibilityRequest':
        return VersionIndependentResourceTypesAllEnum.eligibilityRequest;
      case 'EligibilityResponse':
        return VersionIndependentResourceTypesAllEnum.eligibilityResponse;
      case 'ExpansionProfile':
        return VersionIndependentResourceTypesAllEnum.expansionProfile;
      case 'ImagingManifest':
        return VersionIndependentResourceTypesAllEnum.imagingManifest;
      case 'ImagingObjectSelection':
        return VersionIndependentResourceTypesAllEnum.imagingObjectSelection;
      case 'Media':
        return VersionIndependentResourceTypesAllEnum.media;
      case 'MedicationOrder':
        return VersionIndependentResourceTypesAllEnum.medicationOrder;
      case 'MedicationUsage':
        return VersionIndependentResourceTypesAllEnum.medicationUsage;
      case 'MedicinalProduct':
        return VersionIndependentResourceTypesAllEnum.medicinalProduct;
      case 'MedicinalProductAuthorization':
        return VersionIndependentResourceTypesAllEnum
            .medicinalProductAuthorization;
      case 'MedicinalProductContraindication':
        return VersionIndependentResourceTypesAllEnum
            .medicinalProductContraindication;
      case 'MedicinalProductIndication':
        return VersionIndependentResourceTypesAllEnum
            .medicinalProductIndication;
      case 'MedicinalProductIngredient':
        return VersionIndependentResourceTypesAllEnum
            .medicinalProductIngredient;
      case 'MedicinalProductInteraction':
        return VersionIndependentResourceTypesAllEnum
            .medicinalProductInteraction;
      case 'MedicinalProductManufactured':
        return VersionIndependentResourceTypesAllEnum
            .medicinalProductManufactured;
      case 'MedicinalProductPackaged':
        return VersionIndependentResourceTypesAllEnum.medicinalProductPackaged;
      case 'MedicinalProductPharmaceutical':
        return VersionIndependentResourceTypesAllEnum
            .medicinalProductPharmaceutical;
      case 'MedicinalProductUndesirableEffect':
        return VersionIndependentResourceTypesAllEnum
            .medicinalProductUndesirableEffect;
      case 'Order':
        return VersionIndependentResourceTypesAllEnum.order;
      case 'OrderResponse':
        return VersionIndependentResourceTypesAllEnum.orderResponse;
      case 'ProcedureRequest':
        return VersionIndependentResourceTypesAllEnum.procedureRequest;
      case 'ProcessRequest':
        return VersionIndependentResourceTypesAllEnum.processRequest;
      case 'ProcessResponse':
        return VersionIndependentResourceTypesAllEnum.processResponse;
      case 'ReferralRequest':
        return VersionIndependentResourceTypesAllEnum.referralRequest;
      case 'RequestGroup':
        return VersionIndependentResourceTypesAllEnum.requestGroup;
      case 'ResearchDefinition':
        return VersionIndependentResourceTypesAllEnum.researchDefinition;
      case 'ResearchElementDefinition':
        return VersionIndependentResourceTypesAllEnum.researchElementDefinition;
      case 'RiskEvidenceSynthesis':
        return VersionIndependentResourceTypesAllEnum.riskEvidenceSynthesis;
      case 'Sequence':
        return VersionIndependentResourceTypesAllEnum.sequence;
      case 'ServiceDefinition':
        return VersionIndependentResourceTypesAllEnum.serviceDefinition;
      case 'SubstanceSpecification':
        return VersionIndependentResourceTypesAllEnum.substanceSpecification;
    }
    return null;
  }
}

/// Current and past FHIR resource types (deleted or renamed), including
/// abstract types
class VersionIndependentResourceTypesAll extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const VersionIndependentResourceTypesAll._({
    required super.valueString,
    this.valueEnum,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory VersionIndependentResourceTypesAll(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    final valueEnum =
        VersionIndependentResourceTypesAllEnum.fromString(valueString);
    return VersionIndependentResourceTypesAll._(
      valueString: valueString,
      valueEnum: valueEnum,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
    );
  }

  /// Factory constructor to create [VersionIndependentResourceTypesAll]
  /// from JSON.
  factory VersionIndependentResourceTypesAll.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = VersionIndependentResourceTypesAllEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return VersionIndependentResourceTypesAll._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'VersionIndependentResourceTypesAll cannot be constructed from JSON.',
      );
    }
    return VersionIndependentResourceTypesAll._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for VersionIndependentResourceTypesAll
  final VersionIndependentResourceTypesAllEnum? valueEnum;

  /// BodySite
  static const VersionIndependentResourceTypesAll bodySite =
      VersionIndependentResourceTypesAll._(
    valueString: 'BodySite',
    valueEnum: VersionIndependentResourceTypesAllEnum.bodySite,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/version-independent-all-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'BodySite',
    ),
  );

  /// CatalogEntry
  static const VersionIndependentResourceTypesAll catalogEntry =
      VersionIndependentResourceTypesAll._(
    valueString: 'CatalogEntry',
    valueEnum: VersionIndependentResourceTypesAllEnum.catalogEntry,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/version-independent-all-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'CatalogEntry',
    ),
  );

  /// Conformance
  static const VersionIndependentResourceTypesAll conformance =
      VersionIndependentResourceTypesAll._(
    valueString: 'Conformance',
    valueEnum: VersionIndependentResourceTypesAllEnum.conformance,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/version-independent-all-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Conformance',
    ),
  );

  /// DataElement
  static const VersionIndependentResourceTypesAll dataElement =
      VersionIndependentResourceTypesAll._(
    valueString: 'DataElement',
    valueEnum: VersionIndependentResourceTypesAllEnum.dataElement,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/version-independent-all-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'DataElement',
    ),
  );

  /// DeviceComponent
  static const VersionIndependentResourceTypesAll deviceComponent =
      VersionIndependentResourceTypesAll._(
    valueString: 'DeviceComponent',
    valueEnum: VersionIndependentResourceTypesAllEnum.deviceComponent,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/version-independent-all-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'DeviceComponent',
    ),
  );

  /// DeviceUseRequest
  static const VersionIndependentResourceTypesAll deviceUseRequest =
      VersionIndependentResourceTypesAll._(
    valueString: 'DeviceUseRequest',
    valueEnum: VersionIndependentResourceTypesAllEnum.deviceUseRequest,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/version-independent-all-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'DeviceUseRequest',
    ),
  );

  /// DeviceUseStatement
  static const VersionIndependentResourceTypesAll deviceUseStatement =
      VersionIndependentResourceTypesAll._(
    valueString: 'DeviceUseStatement',
    valueEnum: VersionIndependentResourceTypesAllEnum.deviceUseStatement,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/version-independent-all-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'DeviceUseStatement',
    ),
  );

  /// DiagnosticOrder
  static const VersionIndependentResourceTypesAll diagnosticOrder =
      VersionIndependentResourceTypesAll._(
    valueString: 'DiagnosticOrder',
    valueEnum: VersionIndependentResourceTypesAllEnum.diagnosticOrder,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/version-independent-all-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'DiagnosticOrder',
    ),
  );

  /// DocumentManifest
  static const VersionIndependentResourceTypesAll documentManifest =
      VersionIndependentResourceTypesAll._(
    valueString: 'DocumentManifest',
    valueEnum: VersionIndependentResourceTypesAllEnum.documentManifest,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/version-independent-all-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'DocumentManifest',
    ),
  );

  /// EffectEvidenceSynthesis
  static const VersionIndependentResourceTypesAll effectEvidenceSynthesis =
      VersionIndependentResourceTypesAll._(
    valueString: 'EffectEvidenceSynthesis',
    valueEnum: VersionIndependentResourceTypesAllEnum.effectEvidenceSynthesis,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/version-independent-all-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'EffectEvidenceSynthesis',
    ),
  );

  /// EligibilityRequest
  static const VersionIndependentResourceTypesAll eligibilityRequest =
      VersionIndependentResourceTypesAll._(
    valueString: 'EligibilityRequest',
    valueEnum: VersionIndependentResourceTypesAllEnum.eligibilityRequest,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/version-independent-all-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'EligibilityRequest',
    ),
  );

  /// EligibilityResponse
  static const VersionIndependentResourceTypesAll eligibilityResponse =
      VersionIndependentResourceTypesAll._(
    valueString: 'EligibilityResponse',
    valueEnum: VersionIndependentResourceTypesAllEnum.eligibilityResponse,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/version-independent-all-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'EligibilityResponse',
    ),
  );

  /// ExpansionProfile
  static const VersionIndependentResourceTypesAll expansionProfile =
      VersionIndependentResourceTypesAll._(
    valueString: 'ExpansionProfile',
    valueEnum: VersionIndependentResourceTypesAllEnum.expansionProfile,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/version-independent-all-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ExpansionProfile',
    ),
  );

  /// ImagingManifest
  static const VersionIndependentResourceTypesAll imagingManifest =
      VersionIndependentResourceTypesAll._(
    valueString: 'ImagingManifest',
    valueEnum: VersionIndependentResourceTypesAllEnum.imagingManifest,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/version-independent-all-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ImagingManifest',
    ),
  );

  /// ImagingObjectSelection
  static const VersionIndependentResourceTypesAll imagingObjectSelection =
      VersionIndependentResourceTypesAll._(
    valueString: 'ImagingObjectSelection',
    valueEnum: VersionIndependentResourceTypesAllEnum.imagingObjectSelection,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/version-independent-all-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ImagingObjectSelection',
    ),
  );

  /// Media
  static const VersionIndependentResourceTypesAll media =
      VersionIndependentResourceTypesAll._(
    valueString: 'Media',
    valueEnum: VersionIndependentResourceTypesAllEnum.media,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/version-independent-all-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Media',
    ),
  );

  /// MedicationOrder
  static const VersionIndependentResourceTypesAll medicationOrder =
      VersionIndependentResourceTypesAll._(
    valueString: 'MedicationOrder',
    valueEnum: VersionIndependentResourceTypesAllEnum.medicationOrder,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/version-independent-all-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'MedicationOrder',
    ),
  );

  /// MedicationUsage
  static const VersionIndependentResourceTypesAll medicationUsage =
      VersionIndependentResourceTypesAll._(
    valueString: 'MedicationUsage',
    valueEnum: VersionIndependentResourceTypesAllEnum.medicationUsage,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/version-independent-all-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'MedicationUsage',
    ),
  );

  /// MedicinalProduct
  static const VersionIndependentResourceTypesAll medicinalProduct =
      VersionIndependentResourceTypesAll._(
    valueString: 'MedicinalProduct',
    valueEnum: VersionIndependentResourceTypesAllEnum.medicinalProduct,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/version-independent-all-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'MedicinalProduct',
    ),
  );

  /// MedicinalProductAuthorization
  static const VersionIndependentResourceTypesAll
      medicinalProductAuthorization = VersionIndependentResourceTypesAll._(
    valueString: 'MedicinalProductAuthorization',
    valueEnum:
        VersionIndependentResourceTypesAllEnum.medicinalProductAuthorization,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/version-independent-all-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'MedicinalProductAuthorization',
    ),
  );

  /// MedicinalProductContraindication
  static const VersionIndependentResourceTypesAll
      medicinalProductContraindication = VersionIndependentResourceTypesAll._(
    valueString: 'MedicinalProductContraindication',
    valueEnum:
        VersionIndependentResourceTypesAllEnum.medicinalProductContraindication,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/version-independent-all-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'MedicinalProductContraindication',
    ),
  );

  /// MedicinalProductIndication
  static const VersionIndependentResourceTypesAll medicinalProductIndication =
      VersionIndependentResourceTypesAll._(
    valueString: 'MedicinalProductIndication',
    valueEnum:
        VersionIndependentResourceTypesAllEnum.medicinalProductIndication,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/version-independent-all-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'MedicinalProductIndication',
    ),
  );

  /// MedicinalProductIngredient
  static const VersionIndependentResourceTypesAll medicinalProductIngredient =
      VersionIndependentResourceTypesAll._(
    valueString: 'MedicinalProductIngredient',
    valueEnum:
        VersionIndependentResourceTypesAllEnum.medicinalProductIngredient,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/version-independent-all-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'MedicinalProductIngredient',
    ),
  );

  /// MedicinalProductInteraction
  static const VersionIndependentResourceTypesAll medicinalProductInteraction =
      VersionIndependentResourceTypesAll._(
    valueString: 'MedicinalProductInteraction',
    valueEnum:
        VersionIndependentResourceTypesAllEnum.medicinalProductInteraction,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/version-independent-all-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'MedicinalProductInteraction',
    ),
  );

  /// MedicinalProductManufactured
  static const VersionIndependentResourceTypesAll medicinalProductManufactured =
      VersionIndependentResourceTypesAll._(
    valueString: 'MedicinalProductManufactured',
    valueEnum:
        VersionIndependentResourceTypesAllEnum.medicinalProductManufactured,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/version-independent-all-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'MedicinalProductManufactured',
    ),
  );

  /// MedicinalProductPackaged
  static const VersionIndependentResourceTypesAll medicinalProductPackaged =
      VersionIndependentResourceTypesAll._(
    valueString: 'MedicinalProductPackaged',
    valueEnum: VersionIndependentResourceTypesAllEnum.medicinalProductPackaged,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/version-independent-all-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'MedicinalProductPackaged',
    ),
  );

  /// MedicinalProductPharmaceutical
  static const VersionIndependentResourceTypesAll
      medicinalProductPharmaceutical = VersionIndependentResourceTypesAll._(
    valueString: 'MedicinalProductPharmaceutical',
    valueEnum:
        VersionIndependentResourceTypesAllEnum.medicinalProductPharmaceutical,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/version-independent-all-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'MedicinalProductPharmaceutical',
    ),
  );

  /// MedicinalProductUndesirableEffect
  static const VersionIndependentResourceTypesAll
      medicinalProductUndesirableEffect = VersionIndependentResourceTypesAll._(
    valueString: 'MedicinalProductUndesirableEffect',
    valueEnum: VersionIndependentResourceTypesAllEnum
        .medicinalProductUndesirableEffect,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/version-independent-all-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'MedicinalProductUndesirableEffect',
    ),
  );

  /// Order
  static const VersionIndependentResourceTypesAll order =
      VersionIndependentResourceTypesAll._(
    valueString: 'Order',
    valueEnum: VersionIndependentResourceTypesAllEnum.order,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/version-independent-all-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Order',
    ),
  );

  /// OrderResponse
  static const VersionIndependentResourceTypesAll orderResponse =
      VersionIndependentResourceTypesAll._(
    valueString: 'OrderResponse',
    valueEnum: VersionIndependentResourceTypesAllEnum.orderResponse,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/version-independent-all-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'OrderResponse',
    ),
  );

  /// ProcedureRequest
  static const VersionIndependentResourceTypesAll procedureRequest =
      VersionIndependentResourceTypesAll._(
    valueString: 'ProcedureRequest',
    valueEnum: VersionIndependentResourceTypesAllEnum.procedureRequest,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/version-independent-all-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ProcedureRequest',
    ),
  );

  /// ProcessRequest
  static const VersionIndependentResourceTypesAll processRequest =
      VersionIndependentResourceTypesAll._(
    valueString: 'ProcessRequest',
    valueEnum: VersionIndependentResourceTypesAllEnum.processRequest,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/version-independent-all-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ProcessRequest',
    ),
  );

  /// ProcessResponse
  static const VersionIndependentResourceTypesAll processResponse =
      VersionIndependentResourceTypesAll._(
    valueString: 'ProcessResponse',
    valueEnum: VersionIndependentResourceTypesAllEnum.processResponse,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/version-independent-all-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ProcessResponse',
    ),
  );

  /// ReferralRequest
  static const VersionIndependentResourceTypesAll referralRequest =
      VersionIndependentResourceTypesAll._(
    valueString: 'ReferralRequest',
    valueEnum: VersionIndependentResourceTypesAllEnum.referralRequest,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/version-independent-all-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ReferralRequest',
    ),
  );

  /// RequestGroup
  static const VersionIndependentResourceTypesAll requestGroup =
      VersionIndependentResourceTypesAll._(
    valueString: 'RequestGroup',
    valueEnum: VersionIndependentResourceTypesAllEnum.requestGroup,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/version-independent-all-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'RequestGroup',
    ),
  );

  /// ResearchDefinition
  static const VersionIndependentResourceTypesAll researchDefinition =
      VersionIndependentResourceTypesAll._(
    valueString: 'ResearchDefinition',
    valueEnum: VersionIndependentResourceTypesAllEnum.researchDefinition,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/version-independent-all-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ResearchDefinition',
    ),
  );

  /// ResearchElementDefinition
  static const VersionIndependentResourceTypesAll researchElementDefinition =
      VersionIndependentResourceTypesAll._(
    valueString: 'ResearchElementDefinition',
    valueEnum: VersionIndependentResourceTypesAllEnum.researchElementDefinition,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/version-independent-all-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ResearchElementDefinition',
    ),
  );

  /// RiskEvidenceSynthesis
  static const VersionIndependentResourceTypesAll riskEvidenceSynthesis =
      VersionIndependentResourceTypesAll._(
    valueString: 'RiskEvidenceSynthesis',
    valueEnum: VersionIndependentResourceTypesAllEnum.riskEvidenceSynthesis,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/version-independent-all-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'RiskEvidenceSynthesis',
    ),
  );

  /// Sequence
  static const VersionIndependentResourceTypesAll sequence =
      VersionIndependentResourceTypesAll._(
    valueString: 'Sequence',
    valueEnum: VersionIndependentResourceTypesAllEnum.sequence,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/version-independent-all-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Sequence',
    ),
  );

  /// ServiceDefinition
  static const VersionIndependentResourceTypesAll serviceDefinition =
      VersionIndependentResourceTypesAll._(
    valueString: 'ServiceDefinition',
    valueEnum: VersionIndependentResourceTypesAllEnum.serviceDefinition,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/version-independent-all-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ServiceDefinition',
    ),
  );

  /// SubstanceSpecification
  static const VersionIndependentResourceTypesAll substanceSpecification =
      VersionIndependentResourceTypesAll._(
    valueString: 'SubstanceSpecification',
    valueEnum: VersionIndependentResourceTypesAllEnum.substanceSpecification,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/version-independent-all-resource-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'SubstanceSpecification',
    ),
  );

  /// List of all enum-like values
  static final List<VersionIndependentResourceTypesAll> values = [
    bodySite,
    catalogEntry,
    conformance,
    dataElement,
    deviceComponent,
    deviceUseRequest,
    deviceUseStatement,
    diagnosticOrder,
    documentManifest,
    effectEvidenceSynthesis,
    eligibilityRequest,
    eligibilityResponse,
    expansionProfile,
    imagingManifest,
    imagingObjectSelection,
    media,
    medicationOrder,
    medicationUsage,
    medicinalProduct,
    medicinalProductAuthorization,
    medicinalProductContraindication,
    medicinalProductIndication,
    medicinalProductIngredient,
    medicinalProductInteraction,
    medicinalProductManufactured,
    medicinalProductPackaged,
    medicinalProductPharmaceutical,
    medicinalProductUndesirableEffect,
    order,
    orderResponse,
    procedureRequest,
    processRequest,
    processResponse,
    referralRequest,
    requestGroup,
    researchDefinition,
    researchElementDefinition,
    riskEvidenceSynthesis,
    sequence,
    serviceDefinition,
    substanceSpecification,
  ];

  /// Returns the enum value with an element attached
  VersionIndependentResourceTypesAll withElement(Element? newElement) {
    return VersionIndependentResourceTypesAll._(
      valueString: valueString,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (valueString?.isEmpty ?? false) ? null : valueString,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => valueString ?? '';

  @override
  VersionIndependentResourceTypesAll clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  VersionIndependentResourceTypesAllCopyWithImpl<
          VersionIndependentResourceTypesAll>
      get copyWith => VersionIndependentResourceTypesAllCopyWithImpl<
              VersionIndependentResourceTypesAll>(
            this,
            (v) => v as VersionIndependentResourceTypesAll,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class VersionIndependentResourceTypesAllCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  VersionIndependentResourceTypesAllCopyWithImpl(super._value, super._then);

  @override
  T call({
    Object? newValue = fhirSentinel,
    Object? element = fhirSentinel,
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    if (!identical(newValue, fhirSentinel) && newValue is! String?) {
      throw ArgumentError(
        'newValue must be a String or null, but found ${newValue.runtimeType}',
        'newValue',
      );
    }
    return _then(
      VersionIndependentResourceTypesAll(
        identical(newValue, fhirSentinel)
            ? _value.valueString
            : newValue as String?,
        element: identical(element, fhirSentinel)
            ? _value.element
            : element as Element?,
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}
