// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ImagingSelectionStatus
enum ImagingSelectionStatusBuilderEnum {
  /// available
  available,

  /// entered-in-error
  enteredInError,

  /// unknown
  unknown,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ImagingSelectionStatusBuilderEnum.available:
        return 'available';
      case ImagingSelectionStatusBuilderEnum.enteredInError:
        return 'entered-in-error';
      case ImagingSelectionStatusBuilderEnum.unknown:
        return 'unknown';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ImagingSelectionStatusBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return ImagingSelectionStatusBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ImagingSelectionStatusBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'available':
        return ImagingSelectionStatusBuilderEnum.available;
      case 'entered-in-error':
        return ImagingSelectionStatusBuilderEnum.enteredInError;
      case 'unknown':
        return ImagingSelectionStatusBuilderEnum.unknown;
    }
    return null;
  }
}

/// The status of the ImagingSelection.
class ImagingSelectionStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ImagingSelectionStatusBuilder._({
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
  factory ImagingSelectionStatusBuilder(
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
    final valueEnum = ImagingSelectionStatusBuilderEnum.fromString(
      valueString,
    );
    return ImagingSelectionStatusBuilder._(
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

  /// Create empty [ImagingSelectionStatusBuilder]
  /// with element only
  factory ImagingSelectionStatusBuilder.empty() =>
      ImagingSelectionStatusBuilder._(valueString: null);

  /// Factory constructor to create
  /// [ImagingSelectionStatusBuilder] from JSON.
  factory ImagingSelectionStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImagingSelectionStatusBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ImagingSelectionStatusBuilder cannot be constructed from JSON.',
      );
    }
    return ImagingSelectionStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for ImagingSelectionStatusBuilder
  final ImagingSelectionStatusBuilderEnum? valueEnum;

  /// available
  static ImagingSelectionStatusBuilder available =
      ImagingSelectionStatusBuilder._(
    valueString: 'available',
    valueEnum: ImagingSelectionStatusBuilderEnum.available,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/imagingselection-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Available',
    ),
  );

  /// entered_in_error
  static ImagingSelectionStatusBuilder enteredInError =
      ImagingSelectionStatusBuilder._(
    valueString: 'entered-in-error',
    valueEnum: ImagingSelectionStatusBuilderEnum.enteredInError,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/imagingselection-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Entered in Error',
    ),
  );

  /// unknown
  static ImagingSelectionStatusBuilder unknown =
      ImagingSelectionStatusBuilder._(
    valueString: 'unknown',
    valueEnum: ImagingSelectionStatusBuilderEnum.unknown,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/imagingselection-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Unknown',
    ),
  );

  /// For instances where an Element is present but not value
  static ImagingSelectionStatusBuilder elementOnly =
      ImagingSelectionStatusBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<ImagingSelectionStatusBuilder> values = [
    available,
    enteredInError,
    unknown,
  ];

  /// Returns the enum value with an element attached
  ImagingSelectionStatusBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ImagingSelectionStatusBuilder._(
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
