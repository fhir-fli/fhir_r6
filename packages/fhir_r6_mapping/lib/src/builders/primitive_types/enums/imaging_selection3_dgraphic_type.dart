// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ImagingSelection3DGraphicType
enum ImagingSelection3DGraphicTypeBuilderEnum {
  /// point
  point,

  /// multipoint
  multipoint,

  /// polyline
  polyline,

  /// polygon
  polygon,

  /// ellipse
  ellipse,

  /// ellipsoid
  ellipsoid,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ImagingSelection3DGraphicTypeBuilderEnum.point:
        return 'point';
      case ImagingSelection3DGraphicTypeBuilderEnum.multipoint:
        return 'multipoint';
      case ImagingSelection3DGraphicTypeBuilderEnum.polyline:
        return 'polyline';
      case ImagingSelection3DGraphicTypeBuilderEnum.polygon:
        return 'polygon';
      case ImagingSelection3DGraphicTypeBuilderEnum.ellipse:
        return 'ellipse';
      case ImagingSelection3DGraphicTypeBuilderEnum.ellipsoid:
        return 'ellipsoid';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ImagingSelection3DGraphicTypeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return ImagingSelection3DGraphicTypeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ImagingSelection3DGraphicTypeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'point':
        return ImagingSelection3DGraphicTypeBuilderEnum.point;
      case 'multipoint':
        return ImagingSelection3DGraphicTypeBuilderEnum.multipoint;
      case 'polyline':
        return ImagingSelection3DGraphicTypeBuilderEnum.polyline;
      case 'polygon':
        return ImagingSelection3DGraphicTypeBuilderEnum.polygon;
      case 'ellipse':
        return ImagingSelection3DGraphicTypeBuilderEnum.ellipse;
      case 'ellipsoid':
        return ImagingSelection3DGraphicTypeBuilderEnum.ellipsoid;
    }
    return null;
  }
}

/// The type of coordinates describing a 3D image region.
class ImagingSelection3DGraphicTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ImagingSelection3DGraphicTypeBuilder._({
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
  factory ImagingSelection3DGraphicTypeBuilder(
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
    final valueEnum = ImagingSelection3DGraphicTypeBuilderEnum.fromString(
      valueString,
    );
    return ImagingSelection3DGraphicTypeBuilder._(
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

  /// Create empty [ImagingSelection3DGraphicTypeBuilder]
  /// with element only
  factory ImagingSelection3DGraphicTypeBuilder.empty() =>
      ImagingSelection3DGraphicTypeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [ImagingSelection3DGraphicTypeBuilder] from JSON.
  factory ImagingSelection3DGraphicTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImagingSelection3DGraphicTypeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ImagingSelection3DGraphicTypeBuilder cannot be constructed from JSON.',
      );
    }
    return ImagingSelection3DGraphicTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for ImagingSelection3DGraphicTypeBuilder
  final ImagingSelection3DGraphicTypeBuilderEnum? valueEnum;

  /// point
  static ImagingSelection3DGraphicTypeBuilder point =
      ImagingSelection3DGraphicTypeBuilder._(
    valueString: 'point',
    valueEnum: ImagingSelection3DGraphicTypeBuilderEnum.point,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/imagingselection-3dgraphictype',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'POINT',
    ),
  );

  /// multipoint
  static ImagingSelection3DGraphicTypeBuilder multipoint =
      ImagingSelection3DGraphicTypeBuilder._(
    valueString: 'multipoint',
    valueEnum: ImagingSelection3DGraphicTypeBuilderEnum.multipoint,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/imagingselection-3dgraphictype',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'MULTIPOINT',
    ),
  );

  /// polyline
  static ImagingSelection3DGraphicTypeBuilder polyline =
      ImagingSelection3DGraphicTypeBuilder._(
    valueString: 'polyline',
    valueEnum: ImagingSelection3DGraphicTypeBuilderEnum.polyline,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/imagingselection-3dgraphictype',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'POLYLINE',
    ),
  );

  /// polygon
  static ImagingSelection3DGraphicTypeBuilder polygon =
      ImagingSelection3DGraphicTypeBuilder._(
    valueString: 'polygon',
    valueEnum: ImagingSelection3DGraphicTypeBuilderEnum.polygon,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/imagingselection-3dgraphictype',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'POLYGON',
    ),
  );

  /// ellipse
  static ImagingSelection3DGraphicTypeBuilder ellipse =
      ImagingSelection3DGraphicTypeBuilder._(
    valueString: 'ellipse',
    valueEnum: ImagingSelection3DGraphicTypeBuilderEnum.ellipse,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/imagingselection-3dgraphictype',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'ELLIPSE',
    ),
  );

  /// ellipsoid
  static ImagingSelection3DGraphicTypeBuilder ellipsoid =
      ImagingSelection3DGraphicTypeBuilder._(
    valueString: 'ellipsoid',
    valueEnum: ImagingSelection3DGraphicTypeBuilderEnum.ellipsoid,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/imagingselection-3dgraphictype',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'ELLIPSOID',
    ),
  );

  /// For instances where an Element is present but not value
  static ImagingSelection3DGraphicTypeBuilder elementOnly =
      ImagingSelection3DGraphicTypeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<ImagingSelection3DGraphicTypeBuilder> values = [
    point,
    multipoint,
    polyline,
    polygon,
    ellipse,
    ellipsoid,
  ];

  /// Returns the enum value with an element attached
  ImagingSelection3DGraphicTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ImagingSelection3DGraphicTypeBuilder._(
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
