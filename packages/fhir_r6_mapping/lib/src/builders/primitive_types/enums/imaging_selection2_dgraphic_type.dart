// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ImagingSelection2DGraphicType
enum ImagingSelection2DGraphicTypeBuilderEnum {
  /// point
  point,

  /// polyline
  polyline,

  /// interpolated
  interpolated,

  /// circle
  circle,

  /// ellipse
  ellipse,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ImagingSelection2DGraphicTypeBuilderEnum.point:
        return 'point';
      case ImagingSelection2DGraphicTypeBuilderEnum.polyline:
        return 'polyline';
      case ImagingSelection2DGraphicTypeBuilderEnum.interpolated:
        return 'interpolated';
      case ImagingSelection2DGraphicTypeBuilderEnum.circle:
        return 'circle';
      case ImagingSelection2DGraphicTypeBuilderEnum.ellipse:
        return 'ellipse';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ImagingSelection2DGraphicTypeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return ImagingSelection2DGraphicTypeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ImagingSelection2DGraphicTypeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'point':
        return ImagingSelection2DGraphicTypeBuilderEnum.point;
      case 'polyline':
        return ImagingSelection2DGraphicTypeBuilderEnum.polyline;
      case 'interpolated':
        return ImagingSelection2DGraphicTypeBuilderEnum.interpolated;
      case 'circle':
        return ImagingSelection2DGraphicTypeBuilderEnum.circle;
      case 'ellipse':
        return ImagingSelection2DGraphicTypeBuilderEnum.ellipse;
    }
    return null;
  }
}

/// The type of 2D coordinates describing a 2D image region.
class ImagingSelection2DGraphicTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ImagingSelection2DGraphicTypeBuilder._({
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
  factory ImagingSelection2DGraphicTypeBuilder(
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
    final valueEnum = ImagingSelection2DGraphicTypeBuilderEnum.fromString(
      valueString,
    );
    return ImagingSelection2DGraphicTypeBuilder._(
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

  /// Create empty [ImagingSelection2DGraphicTypeBuilder]
  /// with element only
  factory ImagingSelection2DGraphicTypeBuilder.empty() =>
      ImagingSelection2DGraphicTypeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [ImagingSelection2DGraphicTypeBuilder] from JSON.
  factory ImagingSelection2DGraphicTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImagingSelection2DGraphicTypeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ImagingSelection2DGraphicTypeBuilder cannot be constructed from JSON.',
      );
    }
    return ImagingSelection2DGraphicTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for ImagingSelection2DGraphicTypeBuilder
  final ImagingSelection2DGraphicTypeBuilderEnum? valueEnum;

  /// point
  static ImagingSelection2DGraphicTypeBuilder point =
      ImagingSelection2DGraphicTypeBuilder._(
    valueString: 'point',
    valueEnum: ImagingSelection2DGraphicTypeBuilderEnum.point,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/imagingselection-2dgraphictype',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'POINT',
    ),
  );

  /// polyline
  static ImagingSelection2DGraphicTypeBuilder polyline =
      ImagingSelection2DGraphicTypeBuilder._(
    valueString: 'polyline',
    valueEnum: ImagingSelection2DGraphicTypeBuilderEnum.polyline,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/imagingselection-2dgraphictype',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'POLYLINE',
    ),
  );

  /// interpolated
  static ImagingSelection2DGraphicTypeBuilder interpolated =
      ImagingSelection2DGraphicTypeBuilder._(
    valueString: 'interpolated',
    valueEnum: ImagingSelection2DGraphicTypeBuilderEnum.interpolated,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/imagingselection-2dgraphictype',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'INTERPOLATED',
    ),
  );

  /// circle
  static ImagingSelection2DGraphicTypeBuilder circle =
      ImagingSelection2DGraphicTypeBuilder._(
    valueString: 'circle',
    valueEnum: ImagingSelection2DGraphicTypeBuilderEnum.circle,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/imagingselection-2dgraphictype',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'CIRCLE',
    ),
  );

  /// ellipse
  static ImagingSelection2DGraphicTypeBuilder ellipse =
      ImagingSelection2DGraphicTypeBuilder._(
    valueString: 'ellipse',
    valueEnum: ImagingSelection2DGraphicTypeBuilderEnum.ellipse,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/imagingselection-2dgraphictype',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'ELLIPSE',
    ),
  );

  /// For instances where an Element is present but not value
  static ImagingSelection2DGraphicTypeBuilder elementOnly =
      ImagingSelection2DGraphicTypeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<ImagingSelection2DGraphicTypeBuilder> values = [
    point,
    polyline,
    interpolated,
    circle,
    ellipse,
  ];

  /// Returns the enum value with an element attached
  ImagingSelection2DGraphicTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ImagingSelection2DGraphicTypeBuilder._(
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
