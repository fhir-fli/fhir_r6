// ignore_for_file: unused_element_parameter, non_constant_identifier_names, lines_longer_than_80_chars
part of '../primitive_types.dart';

/// Actual enum for MedicationKnowledgeStatusCodes
enum MedicationKnowledgeStatusCodesBuilderEnum {
  /// active
  active,

  /// entered-in-error
  enteredInError,

  /// inactive
  inactive,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case MedicationKnowledgeStatusCodesBuilderEnum.active:
        return 'active';
      case MedicationKnowledgeStatusCodesBuilderEnum.enteredInError:
        return 'entered-in-error';
      case MedicationKnowledgeStatusCodesBuilderEnum.inactive:
        return 'inactive';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static MedicationKnowledgeStatusCodesBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return MedicationKnowledgeStatusCodesBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static MedicationKnowledgeStatusCodesBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'active':
        return MedicationKnowledgeStatusCodesBuilderEnum.active;
      case 'entered-in-error':
        return MedicationKnowledgeStatusCodesBuilderEnum.enteredInError;
      case 'inactive':
        return MedicationKnowledgeStatusCodesBuilderEnum.inactive;
    }
    return null;
  }
}

/// MedicationKnowledge Status Codes
class MedicationKnowledgeStatusCodesBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  MedicationKnowledgeStatusCodesBuilder._({
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
  factory MedicationKnowledgeStatusCodesBuilder(
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
    final valueEnum = MedicationKnowledgeStatusCodesBuilderEnum.fromString(
      valueString,
    );
    return MedicationKnowledgeStatusCodesBuilder._(
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

  /// Create empty [MedicationKnowledgeStatusCodesBuilder]
  /// with element only
  factory MedicationKnowledgeStatusCodesBuilder.empty() =>
      MedicationKnowledgeStatusCodesBuilder._(valueString: null);

  /// Factory constructor to create
  /// [MedicationKnowledgeStatusCodesBuilder] from JSON.
  factory MedicationKnowledgeStatusCodesBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationKnowledgeStatusCodesBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'MedicationKnowledgeStatusCodesBuilder cannot be constructed from JSON.',
      );
    }
    return MedicationKnowledgeStatusCodesBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for MedicationKnowledgeStatusCodesBuilder
  final MedicationKnowledgeStatusCodesBuilderEnum? valueEnum;

  /// active
  static MedicationKnowledgeStatusCodesBuilder active =
      MedicationKnowledgeStatusCodesBuilder._(
    valueString: 'active',
    valueEnum: MedicationKnowledgeStatusCodesBuilderEnum.active,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationknowledge-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Active',
    ),
  );

  /// entered_in_error
  static MedicationKnowledgeStatusCodesBuilder enteredInError =
      MedicationKnowledgeStatusCodesBuilder._(
    valueString: 'entered-in-error',
    valueEnum: MedicationKnowledgeStatusCodesBuilderEnum.enteredInError,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationknowledge-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Entered in Error',
    ),
  );

  /// inactive
  static MedicationKnowledgeStatusCodesBuilder inactive =
      MedicationKnowledgeStatusCodesBuilder._(
    valueString: 'inactive',
    valueEnum: MedicationKnowledgeStatusCodesBuilderEnum.inactive,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationknowledge-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Inactive',
    ),
  );

  /// For instances where an Element is present but not value
  static MedicationKnowledgeStatusCodesBuilder elementOnly =
      MedicationKnowledgeStatusCodesBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<MedicationKnowledgeStatusCodesBuilder> values = [
    active,
    enteredInError,
    inactive,
  ];

  /// Returns the enum value with an element attached
  MedicationKnowledgeStatusCodesBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return MedicationKnowledgeStatusCodesBuilder._(
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
