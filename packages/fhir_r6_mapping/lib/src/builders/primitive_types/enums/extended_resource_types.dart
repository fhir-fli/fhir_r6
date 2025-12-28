// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ExtendedResourceTypes
enum ExtendedResourceTypesBuilderEnum {
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
      case ExtendedResourceTypesBuilderEnum.bodySite:
        return 'BodySite';
      case ExtendedResourceTypesBuilderEnum.catalogEntry:
        return 'CatalogEntry';
      case ExtendedResourceTypesBuilderEnum.conformance:
        return 'Conformance';
      case ExtendedResourceTypesBuilderEnum.dataElement:
        return 'DataElement';
      case ExtendedResourceTypesBuilderEnum.deviceComponent:
        return 'DeviceComponent';
      case ExtendedResourceTypesBuilderEnum.deviceUseRequest:
        return 'DeviceUseRequest';
      case ExtendedResourceTypesBuilderEnum.deviceUseStatement:
        return 'DeviceUseStatement';
      case ExtendedResourceTypesBuilderEnum.diagnosticOrder:
        return 'DiagnosticOrder';
      case ExtendedResourceTypesBuilderEnum.documentManifest:
        return 'DocumentManifest';
      case ExtendedResourceTypesBuilderEnum.effectEvidenceSynthesis:
        return 'EffectEvidenceSynthesis';
      case ExtendedResourceTypesBuilderEnum.eligibilityRequest:
        return 'EligibilityRequest';
      case ExtendedResourceTypesBuilderEnum.eligibilityResponse:
        return 'EligibilityResponse';
      case ExtendedResourceTypesBuilderEnum.expansionProfile:
        return 'ExpansionProfile';
      case ExtendedResourceTypesBuilderEnum.imagingManifest:
        return 'ImagingManifest';
      case ExtendedResourceTypesBuilderEnum.imagingObjectSelection:
        return 'ImagingObjectSelection';
      case ExtendedResourceTypesBuilderEnum.media:
        return 'Media';
      case ExtendedResourceTypesBuilderEnum.medicationOrder:
        return 'MedicationOrder';
      case ExtendedResourceTypesBuilderEnum.medicationUsage:
        return 'MedicationUsage';
      case ExtendedResourceTypesBuilderEnum.medicinalProduct:
        return 'MedicinalProduct';
      case ExtendedResourceTypesBuilderEnum.medicinalProductAuthorization:
        return 'MedicinalProductAuthorization';
      case ExtendedResourceTypesBuilderEnum.medicinalProductContraindication:
        return 'MedicinalProductContraindication';
      case ExtendedResourceTypesBuilderEnum.medicinalProductIndication:
        return 'MedicinalProductIndication';
      case ExtendedResourceTypesBuilderEnum.medicinalProductIngredient:
        return 'MedicinalProductIngredient';
      case ExtendedResourceTypesBuilderEnum.medicinalProductInteraction:
        return 'MedicinalProductInteraction';
      case ExtendedResourceTypesBuilderEnum.medicinalProductManufactured:
        return 'MedicinalProductManufactured';
      case ExtendedResourceTypesBuilderEnum.medicinalProductPackaged:
        return 'MedicinalProductPackaged';
      case ExtendedResourceTypesBuilderEnum.medicinalProductPharmaceutical:
        return 'MedicinalProductPharmaceutical';
      case ExtendedResourceTypesBuilderEnum.medicinalProductUndesirableEffect:
        return 'MedicinalProductUndesirableEffect';
      case ExtendedResourceTypesBuilderEnum.order:
        return 'Order';
      case ExtendedResourceTypesBuilderEnum.orderResponse:
        return 'OrderResponse';
      case ExtendedResourceTypesBuilderEnum.procedureRequest:
        return 'ProcedureRequest';
      case ExtendedResourceTypesBuilderEnum.processRequest:
        return 'ProcessRequest';
      case ExtendedResourceTypesBuilderEnum.processResponse:
        return 'ProcessResponse';
      case ExtendedResourceTypesBuilderEnum.referralRequest:
        return 'ReferralRequest';
      case ExtendedResourceTypesBuilderEnum.requestGroup:
        return 'RequestGroup';
      case ExtendedResourceTypesBuilderEnum.researchDefinition:
        return 'ResearchDefinition';
      case ExtendedResourceTypesBuilderEnum.researchElementDefinition:
        return 'ResearchElementDefinition';
      case ExtendedResourceTypesBuilderEnum.riskEvidenceSynthesis:
        return 'RiskEvidenceSynthesis';
      case ExtendedResourceTypesBuilderEnum.sequence:
        return 'Sequence';
      case ExtendedResourceTypesBuilderEnum.serviceDefinition:
        return 'ServiceDefinition';
      case ExtendedResourceTypesBuilderEnum.substanceSpecification:
        return 'SubstanceSpecification';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ExtendedResourceTypesBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return ExtendedResourceTypesBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ExtendedResourceTypesBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'BodySite':
        return ExtendedResourceTypesBuilderEnum.bodySite;
      case 'CatalogEntry':
        return ExtendedResourceTypesBuilderEnum.catalogEntry;
      case 'Conformance':
        return ExtendedResourceTypesBuilderEnum.conformance;
      case 'DataElement':
        return ExtendedResourceTypesBuilderEnum.dataElement;
      case 'DeviceComponent':
        return ExtendedResourceTypesBuilderEnum.deviceComponent;
      case 'DeviceUseRequest':
        return ExtendedResourceTypesBuilderEnum.deviceUseRequest;
      case 'DeviceUseStatement':
        return ExtendedResourceTypesBuilderEnum.deviceUseStatement;
      case 'DiagnosticOrder':
        return ExtendedResourceTypesBuilderEnum.diagnosticOrder;
      case 'DocumentManifest':
        return ExtendedResourceTypesBuilderEnum.documentManifest;
      case 'EffectEvidenceSynthesis':
        return ExtendedResourceTypesBuilderEnum.effectEvidenceSynthesis;
      case 'EligibilityRequest':
        return ExtendedResourceTypesBuilderEnum.eligibilityRequest;
      case 'EligibilityResponse':
        return ExtendedResourceTypesBuilderEnum.eligibilityResponse;
      case 'ExpansionProfile':
        return ExtendedResourceTypesBuilderEnum.expansionProfile;
      case 'ImagingManifest':
        return ExtendedResourceTypesBuilderEnum.imagingManifest;
      case 'ImagingObjectSelection':
        return ExtendedResourceTypesBuilderEnum.imagingObjectSelection;
      case 'Media':
        return ExtendedResourceTypesBuilderEnum.media;
      case 'MedicationOrder':
        return ExtendedResourceTypesBuilderEnum.medicationOrder;
      case 'MedicationUsage':
        return ExtendedResourceTypesBuilderEnum.medicationUsage;
      case 'MedicinalProduct':
        return ExtendedResourceTypesBuilderEnum.medicinalProduct;
      case 'MedicinalProductAuthorization':
        return ExtendedResourceTypesBuilderEnum.medicinalProductAuthorization;
      case 'MedicinalProductContraindication':
        return ExtendedResourceTypesBuilderEnum
            .medicinalProductContraindication;
      case 'MedicinalProductIndication':
        return ExtendedResourceTypesBuilderEnum.medicinalProductIndication;
      case 'MedicinalProductIngredient':
        return ExtendedResourceTypesBuilderEnum.medicinalProductIngredient;
      case 'MedicinalProductInteraction':
        return ExtendedResourceTypesBuilderEnum.medicinalProductInteraction;
      case 'MedicinalProductManufactured':
        return ExtendedResourceTypesBuilderEnum.medicinalProductManufactured;
      case 'MedicinalProductPackaged':
        return ExtendedResourceTypesBuilderEnum.medicinalProductPackaged;
      case 'MedicinalProductPharmaceutical':
        return ExtendedResourceTypesBuilderEnum.medicinalProductPharmaceutical;
      case 'MedicinalProductUndesirableEffect':
        return ExtendedResourceTypesBuilderEnum
            .medicinalProductUndesirableEffect;
      case 'Order':
        return ExtendedResourceTypesBuilderEnum.order;
      case 'OrderResponse':
        return ExtendedResourceTypesBuilderEnum.orderResponse;
      case 'ProcedureRequest':
        return ExtendedResourceTypesBuilderEnum.procedureRequest;
      case 'ProcessRequest':
        return ExtendedResourceTypesBuilderEnum.processRequest;
      case 'ProcessResponse':
        return ExtendedResourceTypesBuilderEnum.processResponse;
      case 'ReferralRequest':
        return ExtendedResourceTypesBuilderEnum.referralRequest;
      case 'RequestGroup':
        return ExtendedResourceTypesBuilderEnum.requestGroup;
      case 'ResearchDefinition':
        return ExtendedResourceTypesBuilderEnum.researchDefinition;
      case 'ResearchElementDefinition':
        return ExtendedResourceTypesBuilderEnum.researchElementDefinition;
      case 'RiskEvidenceSynthesis':
        return ExtendedResourceTypesBuilderEnum.riskEvidenceSynthesis;
      case 'Sequence':
        return ExtendedResourceTypesBuilderEnum.sequence;
      case 'ServiceDefinition':
        return ExtendedResourceTypesBuilderEnum.serviceDefinition;
      case 'SubstanceSpecification':
        return ExtendedResourceTypesBuilderEnum.substanceSpecification;
    }
    return null;
  }
}

/// Current and past FHIR resource types (deleted or renamed), and
/// additional resource types. Note that the binding to additional
/// resources is not version fixed, and will change over time
class ExtendedResourceTypesBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ExtendedResourceTypesBuilder._({
    required super.valueString,
    this.valueEnum,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory ExtendedResourceTypesBuilder(
    String? rawValue, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCodeBuilder._validateCode(rawValue) : null;
    final valueEnum = ExtendedResourceTypesBuilderEnum.fromString(
      valueString,
    );
    return ExtendedResourceTypesBuilder._(
      valueString: valueString,
      valueEnum: valueEnum,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Create empty [ExtendedResourceTypesBuilder]
  /// with element only
  factory ExtendedResourceTypesBuilder.empty() =>
      ExtendedResourceTypesBuilder._(valueString: null);

  /// Factory constructor to create
  /// [ExtendedResourceTypesBuilder] from JSON.
  factory ExtendedResourceTypesBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExtendedResourceTypesBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ExtendedResourceTypesBuilder cannot be constructed from JSON.',
      );
    }
    return ExtendedResourceTypesBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for ExtendedResourceTypesBuilder
  final ExtendedResourceTypesBuilderEnum? valueEnum;

  /// BodySite
  static ExtendedResourceTypesBuilder bodySite = ExtendedResourceTypesBuilder._(
    valueString: 'BodySite',
    valueEnum: ExtendedResourceTypesBuilderEnum.bodySite,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'BodySite',
    ),
  );

  /// CatalogEntry
  static ExtendedResourceTypesBuilder catalogEntry =
      ExtendedResourceTypesBuilder._(
    valueString: 'CatalogEntry',
    valueEnum: ExtendedResourceTypesBuilderEnum.catalogEntry,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'CatalogEntry',
    ),
  );

  /// Conformance
  static ExtendedResourceTypesBuilder conformance =
      ExtendedResourceTypesBuilder._(
    valueString: 'Conformance',
    valueEnum: ExtendedResourceTypesBuilderEnum.conformance,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Conformance',
    ),
  );

  /// DataElement
  static ExtendedResourceTypesBuilder dataElement =
      ExtendedResourceTypesBuilder._(
    valueString: 'DataElement',
    valueEnum: ExtendedResourceTypesBuilderEnum.dataElement,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'DataElement',
    ),
  );

  /// DeviceComponent
  static ExtendedResourceTypesBuilder deviceComponent =
      ExtendedResourceTypesBuilder._(
    valueString: 'DeviceComponent',
    valueEnum: ExtendedResourceTypesBuilderEnum.deviceComponent,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'DeviceComponent',
    ),
  );

  /// DeviceUseRequest
  static ExtendedResourceTypesBuilder deviceUseRequest =
      ExtendedResourceTypesBuilder._(
    valueString: 'DeviceUseRequest',
    valueEnum: ExtendedResourceTypesBuilderEnum.deviceUseRequest,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'DeviceUseRequest',
    ),
  );

  /// DeviceUseStatement
  static ExtendedResourceTypesBuilder deviceUseStatement =
      ExtendedResourceTypesBuilder._(
    valueString: 'DeviceUseStatement',
    valueEnum: ExtendedResourceTypesBuilderEnum.deviceUseStatement,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'DeviceUseStatement',
    ),
  );

  /// DiagnosticOrder
  static ExtendedResourceTypesBuilder diagnosticOrder =
      ExtendedResourceTypesBuilder._(
    valueString: 'DiagnosticOrder',
    valueEnum: ExtendedResourceTypesBuilderEnum.diagnosticOrder,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'DiagnosticOrder',
    ),
  );

  /// DocumentManifest
  static ExtendedResourceTypesBuilder documentManifest =
      ExtendedResourceTypesBuilder._(
    valueString: 'DocumentManifest',
    valueEnum: ExtendedResourceTypesBuilderEnum.documentManifest,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'DocumentManifest',
    ),
  );

  /// EffectEvidenceSynthesis
  static ExtendedResourceTypesBuilder effectEvidenceSynthesis =
      ExtendedResourceTypesBuilder._(
    valueString: 'EffectEvidenceSynthesis',
    valueEnum: ExtendedResourceTypesBuilderEnum.effectEvidenceSynthesis,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'EffectEvidenceSynthesis',
    ),
  );

  /// EligibilityRequest
  static ExtendedResourceTypesBuilder eligibilityRequest =
      ExtendedResourceTypesBuilder._(
    valueString: 'EligibilityRequest',
    valueEnum: ExtendedResourceTypesBuilderEnum.eligibilityRequest,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'EligibilityRequest',
    ),
  );

  /// EligibilityResponse
  static ExtendedResourceTypesBuilder eligibilityResponse =
      ExtendedResourceTypesBuilder._(
    valueString: 'EligibilityResponse',
    valueEnum: ExtendedResourceTypesBuilderEnum.eligibilityResponse,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'EligibilityResponse',
    ),
  );

  /// ExpansionProfile
  static ExtendedResourceTypesBuilder expansionProfile =
      ExtendedResourceTypesBuilder._(
    valueString: 'ExpansionProfile',
    valueEnum: ExtendedResourceTypesBuilderEnum.expansionProfile,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'ExpansionProfile',
    ),
  );

  /// ImagingManifest
  static ExtendedResourceTypesBuilder imagingManifest =
      ExtendedResourceTypesBuilder._(
    valueString: 'ImagingManifest',
    valueEnum: ExtendedResourceTypesBuilderEnum.imagingManifest,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'ImagingManifest',
    ),
  );

  /// ImagingObjectSelection
  static ExtendedResourceTypesBuilder imagingObjectSelection =
      ExtendedResourceTypesBuilder._(
    valueString: 'ImagingObjectSelection',
    valueEnum: ExtendedResourceTypesBuilderEnum.imagingObjectSelection,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'ImagingObjectSelection',
    ),
  );

  /// Media
  static ExtendedResourceTypesBuilder media = ExtendedResourceTypesBuilder._(
    valueString: 'Media',
    valueEnum: ExtendedResourceTypesBuilderEnum.media,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Media',
    ),
  );

  /// MedicationOrder
  static ExtendedResourceTypesBuilder medicationOrder =
      ExtendedResourceTypesBuilder._(
    valueString: 'MedicationOrder',
    valueEnum: ExtendedResourceTypesBuilderEnum.medicationOrder,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'MedicationOrder',
    ),
  );

  /// MedicationUsage
  static ExtendedResourceTypesBuilder medicationUsage =
      ExtendedResourceTypesBuilder._(
    valueString: 'MedicationUsage',
    valueEnum: ExtendedResourceTypesBuilderEnum.medicationUsage,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'MedicationUsage',
    ),
  );

  /// MedicinalProduct
  static ExtendedResourceTypesBuilder medicinalProduct =
      ExtendedResourceTypesBuilder._(
    valueString: 'MedicinalProduct',
    valueEnum: ExtendedResourceTypesBuilderEnum.medicinalProduct,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'MedicinalProduct',
    ),
  );

  /// MedicinalProductAuthorization
  static ExtendedResourceTypesBuilder medicinalProductAuthorization =
      ExtendedResourceTypesBuilder._(
    valueString: 'MedicinalProductAuthorization',
    valueEnum: ExtendedResourceTypesBuilderEnum.medicinalProductAuthorization,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'MedicinalProductAuthorization',
    ),
  );

  /// MedicinalProductContraindication
  static ExtendedResourceTypesBuilder medicinalProductContraindication =
      ExtendedResourceTypesBuilder._(
    valueString: 'MedicinalProductContraindication',
    valueEnum:
        ExtendedResourceTypesBuilderEnum.medicinalProductContraindication,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'MedicinalProductContraindication',
    ),
  );

  /// MedicinalProductIndication
  static ExtendedResourceTypesBuilder medicinalProductIndication =
      ExtendedResourceTypesBuilder._(
    valueString: 'MedicinalProductIndication',
    valueEnum: ExtendedResourceTypesBuilderEnum.medicinalProductIndication,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'MedicinalProductIndication',
    ),
  );

  /// MedicinalProductIngredient
  static ExtendedResourceTypesBuilder medicinalProductIngredient =
      ExtendedResourceTypesBuilder._(
    valueString: 'MedicinalProductIngredient',
    valueEnum: ExtendedResourceTypesBuilderEnum.medicinalProductIngredient,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'MedicinalProductIngredient',
    ),
  );

  /// MedicinalProductInteraction
  static ExtendedResourceTypesBuilder medicinalProductInteraction =
      ExtendedResourceTypesBuilder._(
    valueString: 'MedicinalProductInteraction',
    valueEnum: ExtendedResourceTypesBuilderEnum.medicinalProductInteraction,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'MedicinalProductInteraction',
    ),
  );

  /// MedicinalProductManufactured
  static ExtendedResourceTypesBuilder medicinalProductManufactured =
      ExtendedResourceTypesBuilder._(
    valueString: 'MedicinalProductManufactured',
    valueEnum: ExtendedResourceTypesBuilderEnum.medicinalProductManufactured,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'MedicinalProductManufactured',
    ),
  );

  /// MedicinalProductPackaged
  static ExtendedResourceTypesBuilder medicinalProductPackaged =
      ExtendedResourceTypesBuilder._(
    valueString: 'MedicinalProductPackaged',
    valueEnum: ExtendedResourceTypesBuilderEnum.medicinalProductPackaged,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'MedicinalProductPackaged',
    ),
  );

  /// MedicinalProductPharmaceutical
  static ExtendedResourceTypesBuilder medicinalProductPharmaceutical =
      ExtendedResourceTypesBuilder._(
    valueString: 'MedicinalProductPharmaceutical',
    valueEnum: ExtendedResourceTypesBuilderEnum.medicinalProductPharmaceutical,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'MedicinalProductPharmaceutical',
    ),
  );

  /// MedicinalProductUndesirableEffect
  static ExtendedResourceTypesBuilder medicinalProductUndesirableEffect =
      ExtendedResourceTypesBuilder._(
    valueString: 'MedicinalProductUndesirableEffect',
    valueEnum:
        ExtendedResourceTypesBuilderEnum.medicinalProductUndesirableEffect,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'MedicinalProductUndesirableEffect',
    ),
  );

  /// Order
  static ExtendedResourceTypesBuilder order = ExtendedResourceTypesBuilder._(
    valueString: 'Order',
    valueEnum: ExtendedResourceTypesBuilderEnum.order,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Order',
    ),
  );

  /// OrderResponse
  static ExtendedResourceTypesBuilder orderResponse =
      ExtendedResourceTypesBuilder._(
    valueString: 'OrderResponse',
    valueEnum: ExtendedResourceTypesBuilderEnum.orderResponse,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'OrderResponse',
    ),
  );

  /// ProcedureRequest
  static ExtendedResourceTypesBuilder procedureRequest =
      ExtendedResourceTypesBuilder._(
    valueString: 'ProcedureRequest',
    valueEnum: ExtendedResourceTypesBuilderEnum.procedureRequest,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'ProcedureRequest',
    ),
  );

  /// ProcessRequest
  static ExtendedResourceTypesBuilder processRequest =
      ExtendedResourceTypesBuilder._(
    valueString: 'ProcessRequest',
    valueEnum: ExtendedResourceTypesBuilderEnum.processRequest,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'ProcessRequest',
    ),
  );

  /// ProcessResponse
  static ExtendedResourceTypesBuilder processResponse =
      ExtendedResourceTypesBuilder._(
    valueString: 'ProcessResponse',
    valueEnum: ExtendedResourceTypesBuilderEnum.processResponse,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'ProcessResponse',
    ),
  );

  /// ReferralRequest
  static ExtendedResourceTypesBuilder referralRequest =
      ExtendedResourceTypesBuilder._(
    valueString: 'ReferralRequest',
    valueEnum: ExtendedResourceTypesBuilderEnum.referralRequest,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'ReferralRequest',
    ),
  );

  /// RequestGroup
  static ExtendedResourceTypesBuilder requestGroup =
      ExtendedResourceTypesBuilder._(
    valueString: 'RequestGroup',
    valueEnum: ExtendedResourceTypesBuilderEnum.requestGroup,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'RequestGroup',
    ),
  );

  /// ResearchDefinition
  static ExtendedResourceTypesBuilder researchDefinition =
      ExtendedResourceTypesBuilder._(
    valueString: 'ResearchDefinition',
    valueEnum: ExtendedResourceTypesBuilderEnum.researchDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'ResearchDefinition',
    ),
  );

  /// ResearchElementDefinition
  static ExtendedResourceTypesBuilder researchElementDefinition =
      ExtendedResourceTypesBuilder._(
    valueString: 'ResearchElementDefinition',
    valueEnum: ExtendedResourceTypesBuilderEnum.researchElementDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'ResearchElementDefinition',
    ),
  );

  /// RiskEvidenceSynthesis
  static ExtendedResourceTypesBuilder riskEvidenceSynthesis =
      ExtendedResourceTypesBuilder._(
    valueString: 'RiskEvidenceSynthesis',
    valueEnum: ExtendedResourceTypesBuilderEnum.riskEvidenceSynthesis,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'RiskEvidenceSynthesis',
    ),
  );

  /// Sequence
  static ExtendedResourceTypesBuilder sequence = ExtendedResourceTypesBuilder._(
    valueString: 'Sequence',
    valueEnum: ExtendedResourceTypesBuilderEnum.sequence,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Sequence',
    ),
  );

  /// ServiceDefinition
  static ExtendedResourceTypesBuilder serviceDefinition =
      ExtendedResourceTypesBuilder._(
    valueString: 'ServiceDefinition',
    valueEnum: ExtendedResourceTypesBuilderEnum.serviceDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'ServiceDefinition',
    ),
  );

  /// SubstanceSpecification
  static ExtendedResourceTypesBuilder substanceSpecification =
      ExtendedResourceTypesBuilder._(
    valueString: 'SubstanceSpecification',
    valueEnum: ExtendedResourceTypesBuilderEnum.substanceSpecification,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/extended-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'SubstanceSpecification',
    ),
  );

  /// For instances where an Element is present but not value
  static ExtendedResourceTypesBuilder elementOnly =
      ExtendedResourceTypesBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<ExtendedResourceTypesBuilder> values = [
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
  ExtendedResourceTypesBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ExtendedResourceTypesBuilder._(
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
}
