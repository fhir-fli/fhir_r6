// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ImagingSelection2DGraphicType
enum ImagingSelection2DGraphicTypeEnum {
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
      case ImagingSelection2DGraphicTypeEnum.point:
        return 'point';
      case ImagingSelection2DGraphicTypeEnum.polyline:
        return 'polyline';
      case ImagingSelection2DGraphicTypeEnum.interpolated:
        return 'interpolated';
      case ImagingSelection2DGraphicTypeEnum.circle:
        return 'circle';
      case ImagingSelection2DGraphicTypeEnum.ellipse:
        return 'ellipse';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ImagingSelection2DGraphicTypeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return ImagingSelection2DGraphicTypeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ImagingSelection2DGraphicTypeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'point':
        return ImagingSelection2DGraphicTypeEnum.point;
      case 'polyline':
        return ImagingSelection2DGraphicTypeEnum.polyline;
      case 'interpolated':
        return ImagingSelection2DGraphicTypeEnum.interpolated;
      case 'circle':
        return ImagingSelection2DGraphicTypeEnum.circle;
      case 'ellipse':
        return ImagingSelection2DGraphicTypeEnum.ellipse;
    }
    return null;
  }
}

/// The type of 2D coordinates describing a 2D image region.
class ImagingSelection2DGraphicType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const ImagingSelection2DGraphicType._({
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
  factory ImagingSelection2DGraphicType(
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
    final valueEnum = ImagingSelection2DGraphicTypeEnum.fromString(valueString);
    return ImagingSelection2DGraphicType._(
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

  /// Factory constructor to create [ImagingSelection2DGraphicType]
  /// from JSON.
  factory ImagingSelection2DGraphicType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = ImagingSelection2DGraphicTypeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImagingSelection2DGraphicType._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ImagingSelection2DGraphicType cannot be constructed from JSON.',
      );
    }
    return ImagingSelection2DGraphicType._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for ImagingSelection2DGraphicType
  final ImagingSelection2DGraphicTypeEnum? valueEnum;

  /// point
  static const ImagingSelection2DGraphicType point =
      ImagingSelection2DGraphicType._(
    valueString: 'point',
    valueEnum: ImagingSelection2DGraphicTypeEnum.point,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/imagingselection-2dgraphictype',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'POINT',
    ),
  );

  /// polyline
  static const ImagingSelection2DGraphicType polyline =
      ImagingSelection2DGraphicType._(
    valueString: 'polyline',
    valueEnum: ImagingSelection2DGraphicTypeEnum.polyline,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/imagingselection-2dgraphictype',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'POLYLINE',
    ),
  );

  /// interpolated
  static const ImagingSelection2DGraphicType interpolated =
      ImagingSelection2DGraphicType._(
    valueString: 'interpolated',
    valueEnum: ImagingSelection2DGraphicTypeEnum.interpolated,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/imagingselection-2dgraphictype',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'INTERPOLATED',
    ),
  );

  /// circle
  static const ImagingSelection2DGraphicType circle =
      ImagingSelection2DGraphicType._(
    valueString: 'circle',
    valueEnum: ImagingSelection2DGraphicTypeEnum.circle,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/imagingselection-2dgraphictype',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'CIRCLE',
    ),
  );

  /// ellipse
  static const ImagingSelection2DGraphicType ellipse =
      ImagingSelection2DGraphicType._(
    valueString: 'ellipse',
    valueEnum: ImagingSelection2DGraphicTypeEnum.ellipse,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/imagingselection-2dgraphictype',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'ELLIPSE',
    ),
  );

  /// List of all enum-like values
  static final List<ImagingSelection2DGraphicType> values = [
    point,
    polyline,
    interpolated,
    circle,
    ellipse,
  ];

  /// Returns the enum value with an element attached
  ImagingSelection2DGraphicType withElement(Element? newElement) {
    return ImagingSelection2DGraphicType._(
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
  ImagingSelection2DGraphicType clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  ImagingSelection2DGraphicTypeCopyWithImpl<ImagingSelection2DGraphicType>
      get copyWith => ImagingSelection2DGraphicTypeCopyWithImpl<
              ImagingSelection2DGraphicType>(
            this,
            (v) => v as ImagingSelection2DGraphicType,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class ImagingSelection2DGraphicTypeCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  ImagingSelection2DGraphicTypeCopyWithImpl(super._value, super._then);

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
      ImagingSelection2DGraphicType(
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
