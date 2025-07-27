// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ImagingSelection3DGraphicType
enum ImagingSelection3DGraphicTypeEnum {
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
      case ImagingSelection3DGraphicTypeEnum.point:
        return 'point';
      case ImagingSelection3DGraphicTypeEnum.multipoint:
        return 'multipoint';
      case ImagingSelection3DGraphicTypeEnum.polyline:
        return 'polyline';
      case ImagingSelection3DGraphicTypeEnum.polygon:
        return 'polygon';
      case ImagingSelection3DGraphicTypeEnum.ellipse:
        return 'ellipse';
      case ImagingSelection3DGraphicTypeEnum.ellipsoid:
        return 'ellipsoid';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ImagingSelection3DGraphicTypeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return ImagingSelection3DGraphicTypeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ImagingSelection3DGraphicTypeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'point':
        return ImagingSelection3DGraphicTypeEnum.point;
      case 'multipoint':
        return ImagingSelection3DGraphicTypeEnum.multipoint;
      case 'polyline':
        return ImagingSelection3DGraphicTypeEnum.polyline;
      case 'polygon':
        return ImagingSelection3DGraphicTypeEnum.polygon;
      case 'ellipse':
        return ImagingSelection3DGraphicTypeEnum.ellipse;
      case 'ellipsoid':
        return ImagingSelection3DGraphicTypeEnum.ellipsoid;
    }
    return null;
  }
}

/// The type of coordinates describing a 3D image region.
class ImagingSelection3DGraphicType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const ImagingSelection3DGraphicType._({
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
  factory ImagingSelection3DGraphicType(
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
    final valueEnum = ImagingSelection3DGraphicTypeEnum.fromString(valueString);
    return ImagingSelection3DGraphicType._(
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

  /// Factory constructor to create [ImagingSelection3DGraphicType]
  /// from JSON.
  factory ImagingSelection3DGraphicType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = ImagingSelection3DGraphicTypeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImagingSelection3DGraphicType._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ImagingSelection3DGraphicType cannot be constructed from JSON.',
      );
    }
    return ImagingSelection3DGraphicType._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for ImagingSelection3DGraphicType
  final ImagingSelection3DGraphicTypeEnum? valueEnum;

  /// point
  static const ImagingSelection3DGraphicType point =
      ImagingSelection3DGraphicType._(
    valueString: 'point',
    valueEnum: ImagingSelection3DGraphicTypeEnum.point,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/imagingselection-3dgraphictype',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'POINT',
    ),
  );

  /// multipoint
  static const ImagingSelection3DGraphicType multipoint =
      ImagingSelection3DGraphicType._(
    valueString: 'multipoint',
    valueEnum: ImagingSelection3DGraphicTypeEnum.multipoint,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/imagingselection-3dgraphictype',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'MULTIPOINT',
    ),
  );

  /// polyline
  static const ImagingSelection3DGraphicType polyline =
      ImagingSelection3DGraphicType._(
    valueString: 'polyline',
    valueEnum: ImagingSelection3DGraphicTypeEnum.polyline,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/imagingselection-3dgraphictype',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'POLYLINE',
    ),
  );

  /// polygon
  static const ImagingSelection3DGraphicType polygon =
      ImagingSelection3DGraphicType._(
    valueString: 'polygon',
    valueEnum: ImagingSelection3DGraphicTypeEnum.polygon,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/imagingselection-3dgraphictype',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'POLYGON',
    ),
  );

  /// ellipse
  static const ImagingSelection3DGraphicType ellipse =
      ImagingSelection3DGraphicType._(
    valueString: 'ellipse',
    valueEnum: ImagingSelection3DGraphicTypeEnum.ellipse,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/imagingselection-3dgraphictype',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ELLIPSE',
    ),
  );

  /// ellipsoid
  static const ImagingSelection3DGraphicType ellipsoid =
      ImagingSelection3DGraphicType._(
    valueString: 'ellipsoid',
    valueEnum: ImagingSelection3DGraphicTypeEnum.ellipsoid,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/imagingselection-3dgraphictype',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ELLIPSOID',
    ),
  );

  /// List of all enum-like values
  static final List<ImagingSelection3DGraphicType> values = [
    point,
    multipoint,
    polyline,
    polygon,
    ellipse,
    ellipsoid,
  ];

  /// Returns the enum value with an element attached
  ImagingSelection3DGraphicType withElement(Element? newElement) {
    return ImagingSelection3DGraphicType._(
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
  ImagingSelection3DGraphicType clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  ImagingSelection3DGraphicTypeCopyWithImpl<ImagingSelection3DGraphicType>
      get copyWith => ImagingSelection3DGraphicTypeCopyWithImpl<
              ImagingSelection3DGraphicType>(
            this,
            (v) => v as ImagingSelection3DGraphicType,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class ImagingSelection3DGraphicTypeCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  ImagingSelection3DGraphicTypeCopyWithImpl(super._value, super._then);

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
      ImagingSelection3DGraphicType(
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
