part of '../primitive_types.dart';

/// Actual enum for ExtendedResourceTypes
enum ExtendedResourceTypesEnum {
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
      case ExtendedResourceTypesEnum.bodySite:
        return 'BodySite';
      case ExtendedResourceTypesEnum.catalogEntry:
        return 'CatalogEntry';
      case ExtendedResourceTypesEnum.conformance:
        return 'Conformance';
      case ExtendedResourceTypesEnum.dataElement:
        return 'DataElement';
      case ExtendedResourceTypesEnum.deviceComponent:
        return 'DeviceComponent';
      case ExtendedResourceTypesEnum.deviceUseRequest:
        return 'DeviceUseRequest';
      case ExtendedResourceTypesEnum.deviceUseStatement:
        return 'DeviceUseStatement';
      case ExtendedResourceTypesEnum.diagnosticOrder:
        return 'DiagnosticOrder';
      case ExtendedResourceTypesEnum.documentManifest:
        return 'DocumentManifest';
      case ExtendedResourceTypesEnum.effectEvidenceSynthesis:
        return 'EffectEvidenceSynthesis';
      case ExtendedResourceTypesEnum.eligibilityRequest:
        return 'EligibilityRequest';
      case ExtendedResourceTypesEnum.eligibilityResponse:
        return 'EligibilityResponse';
      case ExtendedResourceTypesEnum.expansionProfile:
        return 'ExpansionProfile';
      case ExtendedResourceTypesEnum.imagingManifest:
        return 'ImagingManifest';
      case ExtendedResourceTypesEnum.imagingObjectSelection:
        return 'ImagingObjectSelection';
      case ExtendedResourceTypesEnum.media:
        return 'Media';
      case ExtendedResourceTypesEnum.medicationOrder:
        return 'MedicationOrder';
      case ExtendedResourceTypesEnum.medicationUsage:
        return 'MedicationUsage';
      case ExtendedResourceTypesEnum.medicinalProduct:
        return 'MedicinalProduct';
      case ExtendedResourceTypesEnum.medicinalProductAuthorization:
        return 'MedicinalProductAuthorization';
      case ExtendedResourceTypesEnum.medicinalProductContraindication:
        return 'MedicinalProductContraindication';
      case ExtendedResourceTypesEnum.medicinalProductIndication:
        return 'MedicinalProductIndication';
      case ExtendedResourceTypesEnum.medicinalProductIngredient:
        return 'MedicinalProductIngredient';
      case ExtendedResourceTypesEnum.medicinalProductInteraction:
        return 'MedicinalProductInteraction';
      case ExtendedResourceTypesEnum.medicinalProductManufactured:
        return 'MedicinalProductManufactured';
      case ExtendedResourceTypesEnum.medicinalProductPackaged:
        return 'MedicinalProductPackaged';
      case ExtendedResourceTypesEnum.medicinalProductPharmaceutical:
        return 'MedicinalProductPharmaceutical';
      case ExtendedResourceTypesEnum.medicinalProductUndesirableEffect:
        return 'MedicinalProductUndesirableEffect';
      case ExtendedResourceTypesEnum.order:
        return 'Order';
      case ExtendedResourceTypesEnum.orderResponse:
        return 'OrderResponse';
      case ExtendedResourceTypesEnum.procedureRequest:
        return 'ProcedureRequest';
      case ExtendedResourceTypesEnum.processRequest:
        return 'ProcessRequest';
      case ExtendedResourceTypesEnum.processResponse:
        return 'ProcessResponse';
      case ExtendedResourceTypesEnum.referralRequest:
        return 'ReferralRequest';
      case ExtendedResourceTypesEnum.requestGroup:
        return 'RequestGroup';
      case ExtendedResourceTypesEnum.researchDefinition:
        return 'ResearchDefinition';
      case ExtendedResourceTypesEnum.researchElementDefinition:
        return 'ResearchElementDefinition';
      case ExtendedResourceTypesEnum.riskEvidenceSynthesis:
        return 'RiskEvidenceSynthesis';
      case ExtendedResourceTypesEnum.sequence:
        return 'Sequence';
      case ExtendedResourceTypesEnum.serviceDefinition:
        return 'ServiceDefinition';
      case ExtendedResourceTypesEnum.substanceSpecification:
        return 'SubstanceSpecification';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ExtendedResourceTypesEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return ExtendedResourceTypesEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ExtendedResourceTypesEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'BodySite':
        return ExtendedResourceTypesEnum.bodySite;
      case 'CatalogEntry':
        return ExtendedResourceTypesEnum.catalogEntry;
      case 'Conformance':
        return ExtendedResourceTypesEnum.conformance;
      case 'DataElement':
        return ExtendedResourceTypesEnum.dataElement;
      case 'DeviceComponent':
        return ExtendedResourceTypesEnum.deviceComponent;
      case 'DeviceUseRequest':
        return ExtendedResourceTypesEnum.deviceUseRequest;
      case 'DeviceUseStatement':
        return ExtendedResourceTypesEnum.deviceUseStatement;
      case 'DiagnosticOrder':
        return ExtendedResourceTypesEnum.diagnosticOrder;
      case 'DocumentManifest':
        return ExtendedResourceTypesEnum.documentManifest;
      case 'EffectEvidenceSynthesis':
        return ExtendedResourceTypesEnum.effectEvidenceSynthesis;
      case 'EligibilityRequest':
        return ExtendedResourceTypesEnum.eligibilityRequest;
      case 'EligibilityResponse':
        return ExtendedResourceTypesEnum.eligibilityResponse;
      case 'ExpansionProfile':
        return ExtendedResourceTypesEnum.expansionProfile;
      case 'ImagingManifest':
        return ExtendedResourceTypesEnum.imagingManifest;
      case 'ImagingObjectSelection':
        return ExtendedResourceTypesEnum.imagingObjectSelection;
      case 'Media':
        return ExtendedResourceTypesEnum.media;
      case 'MedicationOrder':
        return ExtendedResourceTypesEnum.medicationOrder;
      case 'MedicationUsage':
        return ExtendedResourceTypesEnum.medicationUsage;
      case 'MedicinalProduct':
        return ExtendedResourceTypesEnum.medicinalProduct;
      case 'MedicinalProductAuthorization':
        return ExtendedResourceTypesEnum.medicinalProductAuthorization;
      case 'MedicinalProductContraindication':
        return ExtendedResourceTypesEnum.medicinalProductContraindication;
      case 'MedicinalProductIndication':
        return ExtendedResourceTypesEnum.medicinalProductIndication;
      case 'MedicinalProductIngredient':
        return ExtendedResourceTypesEnum.medicinalProductIngredient;
      case 'MedicinalProductInteraction':
        return ExtendedResourceTypesEnum.medicinalProductInteraction;
      case 'MedicinalProductManufactured':
        return ExtendedResourceTypesEnum.medicinalProductManufactured;
      case 'MedicinalProductPackaged':
        return ExtendedResourceTypesEnum.medicinalProductPackaged;
      case 'MedicinalProductPharmaceutical':
        return ExtendedResourceTypesEnum.medicinalProductPharmaceutical;
      case 'MedicinalProductUndesirableEffect':
        return ExtendedResourceTypesEnum.medicinalProductUndesirableEffect;
      case 'Order':
        return ExtendedResourceTypesEnum.order;
      case 'OrderResponse':
        return ExtendedResourceTypesEnum.orderResponse;
      case 'ProcedureRequest':
        return ExtendedResourceTypesEnum.procedureRequest;
      case 'ProcessRequest':
        return ExtendedResourceTypesEnum.processRequest;
      case 'ProcessResponse':
        return ExtendedResourceTypesEnum.processResponse;
      case 'ReferralRequest':
        return ExtendedResourceTypesEnum.referralRequest;
      case 'RequestGroup':
        return ExtendedResourceTypesEnum.requestGroup;
      case 'ResearchDefinition':
        return ExtendedResourceTypesEnum.researchDefinition;
      case 'ResearchElementDefinition':
        return ExtendedResourceTypesEnum.researchElementDefinition;
      case 'RiskEvidenceSynthesis':
        return ExtendedResourceTypesEnum.riskEvidenceSynthesis;
      case 'Sequence':
        return ExtendedResourceTypesEnum.sequence;
      case 'ServiceDefinition':
        return ExtendedResourceTypesEnum.serviceDefinition;
      case 'SubstanceSpecification':
        return ExtendedResourceTypesEnum.substanceSpecification;
    }
    return null;
  }
}

/// Current and past FHIR resource types (deleted or renamed), and
/// additional resource types. Note that the binding to additional
/// resources is not version fixed, and will change over time
class ExtendedResourceTypes extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const ExtendedResourceTypes._({
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
  factory ExtendedResourceTypes(
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
    final valueEnum = ExtendedResourceTypesEnum.fromString(valueString);
    return ExtendedResourceTypes._(
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

  /// Factory constructor to create [ExtendedResourceTypes]
  /// from JSON.
  factory ExtendedResourceTypes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = ExtendedResourceTypesEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExtendedResourceTypes._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ExtendedResourceTypes cannot be constructed from JSON.',
      );
    }
    return ExtendedResourceTypes._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for ExtendedResourceTypes
  final ExtendedResourceTypesEnum? valueEnum;

  /// BodySite
  static const ExtendedResourceTypes bodySite = ExtendedResourceTypes._(
    valueString: 'BodySite',
    valueEnum: ExtendedResourceTypesEnum.bodySite,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'BodySite',
    ),
  );

  /// CatalogEntry
  static const ExtendedResourceTypes catalogEntry = ExtendedResourceTypes._(
    valueString: 'CatalogEntry',
    valueEnum: ExtendedResourceTypesEnum.catalogEntry,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'CatalogEntry',
    ),
  );

  /// Conformance
  static const ExtendedResourceTypes conformance = ExtendedResourceTypes._(
    valueString: 'Conformance',
    valueEnum: ExtendedResourceTypesEnum.conformance,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Conformance',
    ),
  );

  /// DataElement
  static const ExtendedResourceTypes dataElement = ExtendedResourceTypes._(
    valueString: 'DataElement',
    valueEnum: ExtendedResourceTypesEnum.dataElement,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'DataElement',
    ),
  );

  /// DeviceComponent
  static const ExtendedResourceTypes deviceComponent = ExtendedResourceTypes._(
    valueString: 'DeviceComponent',
    valueEnum: ExtendedResourceTypesEnum.deviceComponent,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'DeviceComponent',
    ),
  );

  /// DeviceUseRequest
  static const ExtendedResourceTypes deviceUseRequest = ExtendedResourceTypes._(
    valueString: 'DeviceUseRequest',
    valueEnum: ExtendedResourceTypesEnum.deviceUseRequest,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'DeviceUseRequest',
    ),
  );

  /// DeviceUseStatement
  static const ExtendedResourceTypes deviceUseStatement =
      ExtendedResourceTypes._(
    valueString: 'DeviceUseStatement',
    valueEnum: ExtendedResourceTypesEnum.deviceUseStatement,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'DeviceUseStatement',
    ),
  );

  /// DiagnosticOrder
  static const ExtendedResourceTypes diagnosticOrder = ExtendedResourceTypes._(
    valueString: 'DiagnosticOrder',
    valueEnum: ExtendedResourceTypesEnum.diagnosticOrder,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'DiagnosticOrder',
    ),
  );

  /// DocumentManifest
  static const ExtendedResourceTypes documentManifest = ExtendedResourceTypes._(
    valueString: 'DocumentManifest',
    valueEnum: ExtendedResourceTypesEnum.documentManifest,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'DocumentManifest',
    ),
  );

  /// EffectEvidenceSynthesis
  static const ExtendedResourceTypes effectEvidenceSynthesis =
      ExtendedResourceTypes._(
    valueString: 'EffectEvidenceSynthesis',
    valueEnum: ExtendedResourceTypesEnum.effectEvidenceSynthesis,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'EffectEvidenceSynthesis',
    ),
  );

  /// EligibilityRequest
  static const ExtendedResourceTypes eligibilityRequest =
      ExtendedResourceTypes._(
    valueString: 'EligibilityRequest',
    valueEnum: ExtendedResourceTypesEnum.eligibilityRequest,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'EligibilityRequest',
    ),
  );

  /// EligibilityResponse
  static const ExtendedResourceTypes eligibilityResponse =
      ExtendedResourceTypes._(
    valueString: 'EligibilityResponse',
    valueEnum: ExtendedResourceTypesEnum.eligibilityResponse,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'EligibilityResponse',
    ),
  );

  /// ExpansionProfile
  static const ExtendedResourceTypes expansionProfile = ExtendedResourceTypes._(
    valueString: 'ExpansionProfile',
    valueEnum: ExtendedResourceTypesEnum.expansionProfile,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'ExpansionProfile',
    ),
  );

  /// ImagingManifest
  static const ExtendedResourceTypes imagingManifest = ExtendedResourceTypes._(
    valueString: 'ImagingManifest',
    valueEnum: ExtendedResourceTypesEnum.imagingManifest,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'ImagingManifest',
    ),
  );

  /// ImagingObjectSelection
  static const ExtendedResourceTypes imagingObjectSelection =
      ExtendedResourceTypes._(
    valueString: 'ImagingObjectSelection',
    valueEnum: ExtendedResourceTypesEnum.imagingObjectSelection,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'ImagingObjectSelection',
    ),
  );

  /// Media
  static const ExtendedResourceTypes media = ExtendedResourceTypes._(
    valueString: 'Media',
    valueEnum: ExtendedResourceTypesEnum.media,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Media',
    ),
  );

  /// MedicationOrder
  static const ExtendedResourceTypes medicationOrder = ExtendedResourceTypes._(
    valueString: 'MedicationOrder',
    valueEnum: ExtendedResourceTypesEnum.medicationOrder,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'MedicationOrder',
    ),
  );

  /// MedicationUsage
  static const ExtendedResourceTypes medicationUsage = ExtendedResourceTypes._(
    valueString: 'MedicationUsage',
    valueEnum: ExtendedResourceTypesEnum.medicationUsage,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'MedicationUsage',
    ),
  );

  /// MedicinalProduct
  static const ExtendedResourceTypes medicinalProduct = ExtendedResourceTypes._(
    valueString: 'MedicinalProduct',
    valueEnum: ExtendedResourceTypesEnum.medicinalProduct,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'MedicinalProduct',
    ),
  );

  /// MedicinalProductAuthorization
  static const ExtendedResourceTypes medicinalProductAuthorization =
      ExtendedResourceTypes._(
    valueString: 'MedicinalProductAuthorization',
    valueEnum: ExtendedResourceTypesEnum.medicinalProductAuthorization,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'MedicinalProductAuthorization',
    ),
  );

  /// MedicinalProductContraindication
  static const ExtendedResourceTypes medicinalProductContraindication =
      ExtendedResourceTypes._(
    valueString: 'MedicinalProductContraindication',
    valueEnum: ExtendedResourceTypesEnum.medicinalProductContraindication,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'MedicinalProductContraindication',
    ),
  );

  /// MedicinalProductIndication
  static const ExtendedResourceTypes medicinalProductIndication =
      ExtendedResourceTypes._(
    valueString: 'MedicinalProductIndication',
    valueEnum: ExtendedResourceTypesEnum.medicinalProductIndication,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'MedicinalProductIndication',
    ),
  );

  /// MedicinalProductIngredient
  static const ExtendedResourceTypes medicinalProductIngredient =
      ExtendedResourceTypes._(
    valueString: 'MedicinalProductIngredient',
    valueEnum: ExtendedResourceTypesEnum.medicinalProductIngredient,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'MedicinalProductIngredient',
    ),
  );

  /// MedicinalProductInteraction
  static const ExtendedResourceTypes medicinalProductInteraction =
      ExtendedResourceTypes._(
    valueString: 'MedicinalProductInteraction',
    valueEnum: ExtendedResourceTypesEnum.medicinalProductInteraction,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'MedicinalProductInteraction',
    ),
  );

  /// MedicinalProductManufactured
  static const ExtendedResourceTypes medicinalProductManufactured =
      ExtendedResourceTypes._(
    valueString: 'MedicinalProductManufactured',
    valueEnum: ExtendedResourceTypesEnum.medicinalProductManufactured,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'MedicinalProductManufactured',
    ),
  );

  /// MedicinalProductPackaged
  static const ExtendedResourceTypes medicinalProductPackaged =
      ExtendedResourceTypes._(
    valueString: 'MedicinalProductPackaged',
    valueEnum: ExtendedResourceTypesEnum.medicinalProductPackaged,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'MedicinalProductPackaged',
    ),
  );

  /// MedicinalProductPharmaceutical
  static const ExtendedResourceTypes medicinalProductPharmaceutical =
      ExtendedResourceTypes._(
    valueString: 'MedicinalProductPharmaceutical',
    valueEnum: ExtendedResourceTypesEnum.medicinalProductPharmaceutical,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'MedicinalProductPharmaceutical',
    ),
  );

  /// MedicinalProductUndesirableEffect
  static const ExtendedResourceTypes medicinalProductUndesirableEffect =
      ExtendedResourceTypes._(
    valueString: 'MedicinalProductUndesirableEffect',
    valueEnum: ExtendedResourceTypesEnum.medicinalProductUndesirableEffect,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'MedicinalProductUndesirableEffect',
    ),
  );

  /// Order
  static const ExtendedResourceTypes order = ExtendedResourceTypes._(
    valueString: 'Order',
    valueEnum: ExtendedResourceTypesEnum.order,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Order',
    ),
  );

  /// OrderResponse
  static const ExtendedResourceTypes orderResponse = ExtendedResourceTypes._(
    valueString: 'OrderResponse',
    valueEnum: ExtendedResourceTypesEnum.orderResponse,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'OrderResponse',
    ),
  );

  /// ProcedureRequest
  static const ExtendedResourceTypes procedureRequest = ExtendedResourceTypes._(
    valueString: 'ProcedureRequest',
    valueEnum: ExtendedResourceTypesEnum.procedureRequest,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'ProcedureRequest',
    ),
  );

  /// ProcessRequest
  static const ExtendedResourceTypes processRequest = ExtendedResourceTypes._(
    valueString: 'ProcessRequest',
    valueEnum: ExtendedResourceTypesEnum.processRequest,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'ProcessRequest',
    ),
  );

  /// ProcessResponse
  static const ExtendedResourceTypes processResponse = ExtendedResourceTypes._(
    valueString: 'ProcessResponse',
    valueEnum: ExtendedResourceTypesEnum.processResponse,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'ProcessResponse',
    ),
  );

  /// ReferralRequest
  static const ExtendedResourceTypes referralRequest = ExtendedResourceTypes._(
    valueString: 'ReferralRequest',
    valueEnum: ExtendedResourceTypesEnum.referralRequest,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'ReferralRequest',
    ),
  );

  /// RequestGroup
  static const ExtendedResourceTypes requestGroup = ExtendedResourceTypes._(
    valueString: 'RequestGroup',
    valueEnum: ExtendedResourceTypesEnum.requestGroup,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'RequestGroup',
    ),
  );

  /// ResearchDefinition
  static const ExtendedResourceTypes researchDefinition =
      ExtendedResourceTypes._(
    valueString: 'ResearchDefinition',
    valueEnum: ExtendedResourceTypesEnum.researchDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'ResearchDefinition',
    ),
  );

  /// ResearchElementDefinition
  static const ExtendedResourceTypes researchElementDefinition =
      ExtendedResourceTypes._(
    valueString: 'ResearchElementDefinition',
    valueEnum: ExtendedResourceTypesEnum.researchElementDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'ResearchElementDefinition',
    ),
  );

  /// RiskEvidenceSynthesis
  static const ExtendedResourceTypes riskEvidenceSynthesis =
      ExtendedResourceTypes._(
    valueString: 'RiskEvidenceSynthesis',
    valueEnum: ExtendedResourceTypesEnum.riskEvidenceSynthesis,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'RiskEvidenceSynthesis',
    ),
  );

  /// Sequence
  static const ExtendedResourceTypes sequence = ExtendedResourceTypes._(
    valueString: 'Sequence',
    valueEnum: ExtendedResourceTypesEnum.sequence,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Sequence',
    ),
  );

  /// ServiceDefinition
  static const ExtendedResourceTypes serviceDefinition =
      ExtendedResourceTypes._(
    valueString: 'ServiceDefinition',
    valueEnum: ExtendedResourceTypesEnum.serviceDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'ServiceDefinition',
    ),
  );

  /// SubstanceSpecification
  static const ExtendedResourceTypes substanceSpecification =
      ExtendedResourceTypes._(
    valueString: 'SubstanceSpecification',
    valueEnum: ExtendedResourceTypesEnum.substanceSpecification,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'SubstanceSpecification',
    ),
  );

  /// List of all enum-like values
  static final List<ExtendedResourceTypes> values = [
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
  ExtendedResourceTypes withElement(Element? newElement) {
    return ExtendedResourceTypes._(
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
  ExtendedResourceTypes clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  ExtendedResourceTypesCopyWithImpl<ExtendedResourceTypes> get copyWith =>
      ExtendedResourceTypesCopyWithImpl<ExtendedResourceTypes>(
        this,
        (v) => v as ExtendedResourceTypes,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class ExtendedResourceTypesCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  ExtendedResourceTypesCopyWithImpl(super._value, super._then);

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
      ExtendedResourceTypes(
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
