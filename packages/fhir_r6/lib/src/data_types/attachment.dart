import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'attachment.g.dart';

/// [Attachment]
/// For referring to data content defined in other formats.
class Attachment extends DataType
    implements
        ValueXAdministrableProductDefinitionProperty,
        ValueXBiologicallyDerivedProductProperty,
        ValueXClaimSupportingInfo,
        ContentXCommunicationPayload,
        ContentXCommunicationRequestPayload,
        LegallyBindingXContract,
        ValueXContractAnswer,
        ContentXContractFriendly,
        ContentXContractLegal,
        ContentXContractRule,
        ValueXDeviceProperty,
        ValueXDeviceDefinitionProperty,
        ValueXExplanationOfBenefitSupportingInfo,
        ValueXManufacturedItemDefinitionProperty,
        ValueXMedicationKnowledgeDrugCharacteristic,
        ValueXMedicinalProductDefinitionCharacteristic,
        ValueXNutritionProductCharacteristic,
        ValueXObservation,
        ValueXObservationComponent,
        ValueXPackagedProductDefinitionProperty,
        ValueXParametersParameter,
        ValueXQuestionnaireInitial,
        ValueXQuestionnaireResponseAnswer,
        ValueXSubstanceDefinitionProperty,
        ValueXTaskInput,
        ValueXTaskOutput,
        ValueXTransportInput,
        ValueXTransportOutput,
        DefaultValueXElementDefinition,
        FixedXElementDefinition,
        PatternXElementDefinition,
        ValueXElementDefinitionExample,
        ValueXExtension {
  /// Primary constructor for
  /// [Attachment]

  const Attachment({
    super.id,
    super.extension_,
    this.contentType,
    this.language,
    this.data,
    this.url,
    this.size,
    this.hash,
    this.title,
    this.creation,
    this.height,
    this.width,
    this.frames,
    this.duration,
    this.pages,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Attachment.fromJson(
    Map<String, dynamic> json,
  ) {
    return Attachment(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      contentType: JsonParser.parsePrimitive<FhirCode>(
        json,
        'contentType',
        FhirCode.fromJson,
      ),
      language: JsonParser.parsePrimitive<AllLanguages>(
        json,
        'language',
        AllLanguages.fromJson,
      ),
      data: JsonParser.parsePrimitive<FhirBase64Binary>(
        json,
        'data',
        FhirBase64Binary.fromJson,
      ),
      url: JsonParser.parsePrimitive<FhirUrl>(
        json,
        'url',
        FhirUrl.fromJson,
      ),
      size: JsonParser.parsePrimitive<FhirInteger64>(
        json,
        'size',
        FhirInteger64.fromJson,
      ),
      hash: JsonParser.parsePrimitive<FhirBase64Binary>(
        json,
        'hash',
        FhirBase64Binary.fromJson,
      ),
      title: JsonParser.parsePrimitive<FhirString>(
        json,
        'title',
        FhirString.fromJson,
      ),
      creation: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'creation',
        FhirDateTime.fromJson,
      ),
      height: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'height',
        FhirPositiveInt.fromJson,
      ),
      width: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'width',
        FhirPositiveInt.fromJson,
      ),
      frames: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'frames',
        FhirPositiveInt.fromJson,
      ),
      duration: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'duration',
        FhirDecimal.fromJson,
      ),
      pages: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'pages',
        FhirPositiveInt.fromJson,
      ),
    );
  }

  /// Deserialize [Attachment]
  /// from a [String] or [YamlMap] object
  factory Attachment.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Attachment.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Attachment.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Attachment '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Attachment]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Attachment.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return Attachment.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Attachment';

  /// [contentType]
  /// Identifies the type of the data in the attachment and allows a method
  /// to be chosen to interpret or render the data. Includes mime type
  /// parameters such as charset where appropriate.
  final FhirCode? contentType;

  /// [language]
  /// The human language of the content. The value can be any valid value
  /// according to BCP 47.
  final AllLanguages? language;

  /// [data]
  /// The actual data of the attachment - a sequence of bytes, base64
  /// encoded.
  final FhirBase64Binary? data;

  /// [url]
  /// A location where the data can be accessed.
  final FhirUrl? url;

  /// [size]
  /// The number of bytes of data that make up this attachment (before base64
  /// encoding, if that is done).
  final FhirInteger64? size;

  /// [hash]
  /// The calculated hash of the data using SHA-1. Represented using base64.
  final FhirBase64Binary? hash;

  /// [title]
  /// A label or set of text to display in place of the data.
  final FhirString? title;

  /// [creation]
  /// The date that the attachment was first created.
  final FhirDateTime? creation;

  /// [height]
  /// Height of the image in pixels (photo/video).
  final FhirPositiveInt? height;

  /// [width]
  /// Width of the image in pixels (photo/video).
  final FhirPositiveInt? width;

  /// [frames]
  /// The number of frames in a photo. This is used with a multi-page fax, or
  /// an imaging acquisition context that takes multiple slices in a single
  /// image, or an animated gif. If there is more than one frame, this SHALL
  /// have a value in order to alert interface software that a multi-frame
  /// capable rendering widget is required.
  final FhirPositiveInt? frames;

  /// [duration]
  /// The duration of the recording in seconds - for audio and video.
  final FhirDecimal? duration;

  /// [pages]
  /// The number of pages when printed.
  final FhirPositiveInt? pages;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          final hasAnyValues = tempList.any((v) => v != null);
          if (hasAnyValues) {
            json[key] = tempList;
          }
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'contentType',
      contentType,
    );
    addField(
      'language',
      language,
    );
    addField(
      'data',
      data,
    );
    addField(
      'url',
      url,
    );
    addField(
      'size',
      size,
    );
    addField(
      'hash',
      hash,
    );
    addField(
      'title',
      title,
    );
    addField(
      'creation',
      creation,
    );
    addField(
      'height',
      height,
    );
    addField(
      'width',
      width,
    );
    addField(
      'frames',
      frames,
    );
    addField(
      'duration',
      duration,
    );
    addField(
      'pages',
      pages,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'contentType',
      'language',
      'data',
      'url',
      'size',
      'hash',
      'title',
      'creation',
      'height',
      'width',
      'frames',
      'duration',
      'pages',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'contentType':
        if (contentType != null) {
          fields.add(contentType!);
        }
      case 'language':
        if (language != null) {
          fields.add(language!);
        }
      case 'data':
        if (data != null) {
          fields.add(data!);
        }
      case 'url':
        if (url != null) {
          fields.add(url!);
        }
      case 'size':
        if (size != null) {
          fields.add(size!);
        }
      case 'hash':
        if (hash != null) {
          fields.add(hash!);
        }
      case 'title':
        if (title != null) {
          fields.add(title!);
        }
      case 'creation':
        if (creation != null) {
          fields.add(creation!);
        }
      case 'height':
        if (height != null) {
          fields.add(height!);
        }
      case 'width':
        if (width != null) {
          fields.add(width!);
        }
      case 'frames':
        if (frames != null) {
          fields.add(frames!);
        }
      case 'duration':
        if (duration != null) {
          fields.add(duration!);
        }
      case 'pages':
        if (pages != null) {
          fields.add(pages!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  Attachment clone() => copyWith();

  /// Copy function for [Attachment]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $AttachmentCopyWith<Attachment> get copyWith =>
      _$AttachmentCopyWithImpl<Attachment>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Attachment) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      contentType,
      o.contentType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      language,
      o.language,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      data,
      o.data,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      url,
      o.url,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      size,
      o.size,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      hash,
      o.hash,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      title,
      o.title,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      creation,
      o.creation,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      height,
      o.height,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      width,
      o.width,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      frames,
      o.frames,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      duration,
      o.duration,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      pages,
      o.pages,
    )) {
      return false;
    }
    return true;
  }
}
