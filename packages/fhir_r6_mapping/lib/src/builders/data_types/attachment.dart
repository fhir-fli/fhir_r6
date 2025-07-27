import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart'
    show Attachment, yamlMapToJson, yamlToJson;
import 'package:fhir_r6_mapping/fhir_r6_mapping.dart';
import 'package:yaml/yaml.dart';

/// [AttachmentBuilder]
/// For referring to data content defined in other formats.
class AttachmentBuilder extends DataTypeBuilder
    implements
        ValueXAdministrableProductDefinitionPropertyBuilder,
        ValueXBiologicallyDerivedProductPropertyBuilder,
        ValueXClaimSupportingInfoBuilder,
        ContentXCommunicationPayloadBuilder,
        ContentXCommunicationRequestPayloadBuilder,
        LegallyBindingXContractBuilder,
        ValueXContractAnswerBuilder,
        ContentXContractFriendlyBuilder,
        ContentXContractLegalBuilder,
        ContentXContractRuleBuilder,
        ValueXDevicePropertyBuilder,
        ValueXDeviceDefinitionPropertyBuilder,
        ValueXExplanationOfBenefitSupportingInfoBuilder,
        ValueXManufacturedItemDefinitionPropertyBuilder,
        ValueXMedicationKnowledgeDrugCharacteristicBuilder,
        ValueXMedicinalProductDefinitionCharacteristicBuilder,
        ValueXNutritionProductCharacteristicBuilder,
        ValueXObservationBuilder,
        ValueXObservationComponentBuilder,
        ValueXPackagedProductDefinitionPropertyBuilder,
        ValueXParametersParameterBuilder,
        ValueXQuestionnaireInitialBuilder,
        ValueXQuestionnaireResponseAnswerBuilder,
        ValueXSubstanceDefinitionPropertyBuilder,
        ValueXTaskInputBuilder,
        ValueXTaskOutputBuilder,
        ValueXTransportInputBuilder,
        ValueXTransportOutputBuilder,
        DefaultValueXElementDefinitionBuilder,
        FixedXElementDefinitionBuilder,
        PatternXElementDefinitionBuilder,
        ValueXElementDefinitionExampleBuilder,
        ValueXExtensionBuilder {
  /// Primary constructor for
  /// [AttachmentBuilder]

  AttachmentBuilder({
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
    super.objectPath = 'AttachmentBuilder',
  });

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory AttachmentBuilder.empty() => AttachmentBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AttachmentBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'Attachment';
    return AttachmentBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      contentType: JsonParser.parsePrimitive<FhirCodeBuilder>(
        json,
        'contentType',
        FhirCodeBuilder.fromJson,
        '$objectPath.contentType',
      ),
      language: JsonParser.parsePrimitive<AllLanguagesBuilder>(
        json,
        'language',
        AllLanguagesBuilder.fromJson,
        '$objectPath.language',
      ),
      data: JsonParser.parsePrimitive<FhirBase64BinaryBuilder>(
        json,
        'data',
        FhirBase64BinaryBuilder.fromJson,
        '$objectPath.data',
      ),
      url: JsonParser.parsePrimitive<FhirUrlBuilder>(
        json,
        'url',
        FhirUrlBuilder.fromJson,
        '$objectPath.url',
      ),
      size: JsonParser.parsePrimitive<FhirInteger64Builder>(
        json,
        'size',
        FhirInteger64Builder.fromJson,
        '$objectPath.size',
      ),
      hash: JsonParser.parsePrimitive<FhirBase64BinaryBuilder>(
        json,
        'hash',
        FhirBase64BinaryBuilder.fromJson,
        '$objectPath.hash',
      ),
      title: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'title',
        FhirStringBuilder.fromJson,
        '$objectPath.title',
      ),
      creation: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'creation',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.creation',
      ),
      height: JsonParser.parsePrimitive<FhirPositiveIntBuilder>(
        json,
        'height',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.height',
      ),
      width: JsonParser.parsePrimitive<FhirPositiveIntBuilder>(
        json,
        'width',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.width',
      ),
      frames: JsonParser.parsePrimitive<FhirPositiveIntBuilder>(
        json,
        'frames',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.frames',
      ),
      duration: JsonParser.parsePrimitive<FhirDecimalBuilder>(
        json,
        'duration',
        FhirDecimalBuilder.fromJson,
        '$objectPath.duration',
      ),
      pages: JsonParser.parsePrimitive<FhirPositiveIntBuilder>(
        json,
        'pages',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.pages',
      ),
    );
  }

  /// Deserialize [AttachmentBuilder]
  /// from a [String] or [YamlMap] object
  factory AttachmentBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AttachmentBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AttachmentBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AttachmentBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AttachmentBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AttachmentBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AttachmentBuilder.fromJson(json);
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
  FhirCodeBuilder? contentType;

  /// [language]
  /// The human language of the content. The value can be any valid value
  /// according to BCP 47.
  AllLanguagesBuilder? language;

  /// [data]
  /// The actual data of the attachment - a sequence of bytes, base64
  /// encoded.
  FhirBase64BinaryBuilder? data;

  /// [url]
  /// A location where the data can be accessed.
  FhirUrlBuilder? url;

  /// [size]
  /// The number of bytes of data that make up this attachment (before base64
  /// encoding, if that is done).
  FhirInteger64Builder? size;

  /// [hash]
  /// The calculated hash of the data using SHA-1. Represented using base64.
  FhirBase64BinaryBuilder? hash;

  /// [title]
  /// A label or set of text to display in place of the data.
  FhirStringBuilder? title;

  /// [creation]
  /// The date that the attachment was first created.
  FhirDateTimeBuilder? creation;

  /// [height]
  /// Height of the image in pixels (photo/video).
  FhirPositiveIntBuilder? height;

  /// [width]
  /// Width of the image in pixels (photo/video).
  FhirPositiveIntBuilder? width;

  /// [frames]
  /// The number of frames in a photo. This is used with a multi-page fax, or
  /// an imaging acquisition context that takes multiple slices in a single
  /// image, or an animated gif. If there is more than one frame, this SHALL
  /// have a value in order to alert interface software that a multi-frame
  /// capable rendering widget is required.
  FhirPositiveIntBuilder? frames;

  /// [duration]
  /// The duration of the recording in seconds - for audio and video.
  FhirDecimalBuilder? duration;

  /// [pages]
  /// The number of pages when printed.
  FhirPositiveIntBuilder? pages;

  /// Converts a [AttachmentBuilder]
  /// to [Attachment]
  @override
  Attachment build() => Attachment.fromJson(toJson());

  /// Converts a [AttachmentBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('contentType', contentType);
    addField('language', language);
    addField('data', data);
    addField('url', url);
    addField('size', size);
    addField('hash', hash);
    addField('title', title);
    addField('creation', creation);
    addField('height', height);
    addField('width', width);
    addField('frames', frames);
    addField('duration', duration);
    addField('pages', pages);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'contentType':
        {
          if (child is FhirCodeBuilder) {
            contentType = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirCodeBuilder.tryParse(stringValue);
              if (converted != null) {
                contentType = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'language':
        {
          if (child is AllLanguagesBuilder) {
            language = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = AllLanguagesBuilder(stringValue);
                language = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'data':
        {
          if (child is FhirBase64BinaryBuilder) {
            data = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBase64BinaryBuilder.tryParse(stringValue);
              if (converted != null) {
                data = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'url':
        {
          if (child is FhirUrlBuilder) {
            url = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUrlBuilder.tryParse(stringValue);
              if (converted != null) {
                url = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'size':
        {
          if (child is FhirInteger64Builder) {
            size = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirInteger64Builder.tryParse(stringValue);
              if (converted != null) {
                size = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'hash':
        {
          if (child is FhirBase64BinaryBuilder) {
            hash = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBase64BinaryBuilder.tryParse(stringValue);
              if (converted != null) {
                hash = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'title':
        {
          if (child is FhirStringBuilder) {
            title = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                title = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'creation':
        {
          if (child is FhirDateTimeBuilder) {
            creation = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                creation = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'height':
        {
          if (child is FhirPositiveIntBuilder) {
            height = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirPositiveIntBuilder.tryParse(numValue);
                if (converted != null) {
                  height = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'width':
        {
          if (child is FhirPositiveIntBuilder) {
            width = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirPositiveIntBuilder.tryParse(numValue);
                if (converted != null) {
                  width = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'frames':
        {
          if (child is FhirPositiveIntBuilder) {
            frames = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirPositiveIntBuilder.tryParse(numValue);
                if (converted != null) {
                  frames = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'duration':
        {
          if (child is FhirDecimalBuilder) {
            duration = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirDecimalBuilder.tryParse(numValue);
                if (converted != null) {
                  duration = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'pages':
        {
          if (child is FhirPositiveIntBuilder) {
            pages = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirPositiveIntBuilder.tryParse(numValue);
                if (converted != null) {
                  pages = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'contentType':
        return ['FhirCodeBuilder'];
      case 'language':
        return ['FhirCodeEnumBuilder'];
      case 'data':
        return ['FhirBase64BinaryBuilder'];
      case 'url':
        return ['FhirUrlBuilder'];
      case 'size':
        return ['FhirInteger64Builder'];
      case 'hash':
        return ['FhirBase64BinaryBuilder'];
      case 'title':
        return ['FhirStringBuilder'];
      case 'creation':
        return ['FhirDateTimeBuilder'];
      case 'height':
        return ['FhirPositiveIntBuilder'];
      case 'width':
        return ['FhirPositiveIntBuilder'];
      case 'frames':
        return ['FhirPositiveIntBuilder'];
      case 'duration':
        return ['FhirDecimalBuilder'];
      case 'pages':
        return ['FhirPositiveIntBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [AttachmentBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'contentType':
        {
          contentType = FhirCodeBuilder.empty();
          return;
        }
      case 'language':
        {
          language = AllLanguagesBuilder.empty();
          return;
        }
      case 'data':
        {
          data = FhirBase64BinaryBuilder.empty();
          return;
        }
      case 'url':
        {
          url = FhirUrlBuilder.empty();
          return;
        }
      case 'size':
        {
          size = FhirInteger64Builder.empty();
          return;
        }
      case 'hash':
        {
          hash = FhirBase64BinaryBuilder.empty();
          return;
        }
      case 'title':
        {
          title = FhirStringBuilder.empty();
          return;
        }
      case 'creation':
        {
          creation = FhirDateTimeBuilder.empty();
          return;
        }
      case 'height':
        {
          height = FhirPositiveIntBuilder.empty();
          return;
        }
      case 'width':
        {
          width = FhirPositiveIntBuilder.empty();
          return;
        }
      case 'frames':
        {
          frames = FhirPositiveIntBuilder.empty();
          return;
        }
      case 'duration':
        {
          duration = FhirDecimalBuilder.empty();
          return;
        }
      case 'pages':
        {
          pages = FhirPositiveIntBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  AttachmentBuilder clone() => throw UnimplementedError();
  @override
  AttachmentBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    FhirCodeBuilder? contentType,
    AllLanguagesBuilder? language,
    FhirBase64BinaryBuilder? data,
    FhirUrlBuilder? url,
    FhirInteger64Builder? size,
    FhirBase64BinaryBuilder? hash,
    FhirStringBuilder? title,
    FhirDateTimeBuilder? creation,
    FhirPositiveIntBuilder? height,
    FhirPositiveIntBuilder? width,
    FhirPositiveIntBuilder? frames,
    FhirDecimalBuilder? duration,
    FhirPositiveIntBuilder? pages,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    final newResult = AttachmentBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      contentType: contentType ?? this.contentType,
      language: language ?? this.language,
      data: data ?? this.data,
      url: url ?? this.url,
      size: size ?? this.size,
      hash: hash ?? this.hash,
      title: title ?? this.title,
      creation: creation ?? this.creation,
      height: height ?? this.height,
      width: width ?? this.width,
      frames: frames ?? this.frames,
      duration: duration ?? this.duration,
      pages: pages ?? this.pages,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! AttachmentBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
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
