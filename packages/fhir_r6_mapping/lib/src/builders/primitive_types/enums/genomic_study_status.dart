// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for GenomicStudyStatus
enum GenomicStudyStatusBuilderEnum {
  /// registered
  registered,

  /// available
  available,

  /// cancelled
  cancelled,

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
      case GenomicStudyStatusBuilderEnum.registered:
        return 'registered';
      case GenomicStudyStatusBuilderEnum.available:
        return 'available';
      case GenomicStudyStatusBuilderEnum.cancelled:
        return 'cancelled';
      case GenomicStudyStatusBuilderEnum.enteredInError:
        return 'entered-in-error';
      case GenomicStudyStatusBuilderEnum.unknown:
        return 'unknown';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static GenomicStudyStatusBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return GenomicStudyStatusBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static GenomicStudyStatusBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'registered':
        return GenomicStudyStatusBuilderEnum.registered;
      case 'available':
        return GenomicStudyStatusBuilderEnum.available;
      case 'cancelled':
        return GenomicStudyStatusBuilderEnum.cancelled;
      case 'entered-in-error':
        return GenomicStudyStatusBuilderEnum.enteredInError;
      case 'unknown':
        return GenomicStudyStatusBuilderEnum.unknown;
    }
    return null;
  }
}

/// The status of the GenomicStudy.
class GenomicStudyStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  GenomicStudyStatusBuilder._({
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
  factory GenomicStudyStatusBuilder(
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
    final valueEnum = GenomicStudyStatusBuilderEnum.fromString(
      valueString,
    );
    return GenomicStudyStatusBuilder._(
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

  /// Create empty [GenomicStudyStatusBuilder]
  /// with element only
  factory GenomicStudyStatusBuilder.empty() =>
      GenomicStudyStatusBuilder._(valueString: null);

  /// Factory constructor to create
  /// [GenomicStudyStatusBuilder] from JSON.
  factory GenomicStudyStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GenomicStudyStatusBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'GenomicStudyStatusBuilder cannot be constructed from JSON.',
      );
    }
    return GenomicStudyStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for GenomicStudyStatusBuilder
  final GenomicStudyStatusBuilderEnum? valueEnum;

  /// registered
  static GenomicStudyStatusBuilder registered = GenomicStudyStatusBuilder._(
    valueString: 'registered',
    valueEnum: GenomicStudyStatusBuilderEnum.registered,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/genomicstudy-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Registered',
    ),
  );

  /// available
  static GenomicStudyStatusBuilder available = GenomicStudyStatusBuilder._(
    valueString: 'available',
    valueEnum: GenomicStudyStatusBuilderEnum.available,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/genomicstudy-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Available',
    ),
  );

  /// cancelled
  static GenomicStudyStatusBuilder cancelled = GenomicStudyStatusBuilder._(
    valueString: 'cancelled',
    valueEnum: GenomicStudyStatusBuilderEnum.cancelled,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/genomicstudy-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Cancelled',
    ),
  );

  /// entered_in_error
  static GenomicStudyStatusBuilder enteredInError = GenomicStudyStatusBuilder._(
    valueString: 'entered-in-error',
    valueEnum: GenomicStudyStatusBuilderEnum.enteredInError,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/genomicstudy-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Entered in Error',
    ),
  );

  /// unknown
  static GenomicStudyStatusBuilder unknown = GenomicStudyStatusBuilder._(
    valueString: 'unknown',
    valueEnum: GenomicStudyStatusBuilderEnum.unknown,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/genomicstudy-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Unknown',
    ),
  );

  /// For instances where an Element is present but not value
  static GenomicStudyStatusBuilder elementOnly = GenomicStudyStatusBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<GenomicStudyStatusBuilder> values = [
    registered,
    available,
    cancelled,
    enteredInError,
    unknown,
  ];

  /// Returns the enum value with an element attached
  GenomicStudyStatusBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return GenomicStudyStatusBuilder._(
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
