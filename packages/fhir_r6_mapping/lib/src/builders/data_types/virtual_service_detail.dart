// ignore_for_file: lines_longer_than_80_chars

import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart'
    show VirtualServiceDetail, yamlMapToJson, yamlToJson;
import 'package:fhir_r6_mapping/fhir_r6_mapping.dart';
import 'package:yaml/yaml.dart';

/// [VirtualServiceDetailBuilder]
/// Virtual Service Contact Details.
class VirtualServiceDetailBuilder extends DataTypeBuilder {
  /// Primary constructor for
  /// [VirtualServiceDetailBuilder]

  VirtualServiceDetailBuilder({
    super.id,
    super.extension_,
    this.channelType,
    AddressXVirtualServiceDetailBuilder? addressX,
    FhirUrlBuilder? addressUrl,
    FhirStringBuilder? addressString,
    ContactPointBuilder? addressContactPoint,
    ExtendedContactDetailBuilder? addressExtendedContactDetail,
    this.additionalInfo,
    this.maxParticipants,
    this.sessionKey,
    super.disallowExtensions,
    super.objectPath = 'VirtualServiceDetailBuilder',
  }) : addressX = addressX ??
            addressUrl ??
            addressString ??
            addressContactPoint ??
            addressExtendedContactDetail;

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory VirtualServiceDetailBuilder.empty() => VirtualServiceDetailBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory VirtualServiceDetailBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath =
        json['resourceType'] as String? ?? 'VirtualServiceDetail';
    return VirtualServiceDetailBuilder(
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
      channelType: JsonParser.parseObject<CodingBuilder>(
        json,
        'channelType',
        CodingBuilder.fromJson,
        '$objectPath.channelType',
      ),
      addressX:
          JsonParser.parsePolymorphic<AddressXVirtualServiceDetailBuilder>(
        json,
        {
          'addressUrl': FhirUrlBuilder.fromJson,
          'addressString': FhirStringBuilder.fromJson,
          'addressContactPoint': ContactPointBuilder.fromJson,
          'addressExtendedContactDetail': ExtendedContactDetailBuilder.fromJson,
        },
        objectPath,
      ),
      additionalInfo: JsonParser.parsePrimitiveList<FhirUrlBuilder>(
        json,
        'additionalInfo',
        FhirUrlBuilder.fromJson,
        '$objectPath.additionalInfo',
      ),
      maxParticipants: JsonParser.parsePrimitive<FhirPositiveIntBuilder>(
        json,
        'maxParticipants',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.maxParticipants',
      ),
      sessionKey: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'sessionKey',
        FhirStringBuilder.fromJson,
        '$objectPath.sessionKey',
      ),
    );
  }

  /// Deserialize [VirtualServiceDetailBuilder]
  /// from a [String] or [YamlMap] object
  factory VirtualServiceDetailBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return VirtualServiceDetailBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return VirtualServiceDetailBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'VirtualServiceDetailBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [VirtualServiceDetailBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory VirtualServiceDetailBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return VirtualServiceDetailBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'VirtualServiceDetail';

  /// [channelType]
  /// The type of virtual service to connect to (i.e. Teams, Zoom, Specific
  /// VMR technology, WhatsApp).
  CodingBuilder? channelType;

  /// [addressX]
  /// What address or number needs to be used for a user to connect to the
  /// virtual service to join. The channelType informs as to which datatype
  /// is appropriate to use (requires knowledge of the specific type).
  AddressXVirtualServiceDetailBuilder? addressX;

  /// Getter for [addressUrl] as a FhirUrlBuilder
  FhirUrlBuilder? get addressUrl => addressX?.isAs<FhirUrlBuilder>();

  /// Getter for [addressString] as a FhirStringBuilder
  FhirStringBuilder? get addressString => addressX?.isAs<FhirStringBuilder>();

  /// Getter for [addressContactPoint] as a ContactPointBuilder
  ContactPointBuilder? get addressContactPoint =>
      addressX?.isAs<ContactPointBuilder>();

  /// Getter for [addressExtendedContactDetail] as a ExtendedContactDetailBuilder
  ExtendedContactDetailBuilder? get addressExtendedContactDetail =>
      addressX?.isAs<ExtendedContactDetailBuilder>();

  /// [additionalInfo]
  /// Address to see alternative connection details.
  List<FhirUrlBuilder>? additionalInfo;

  /// [maxParticipants]
  /// Maximum number of participants supported by the virtual service.
  FhirPositiveIntBuilder? maxParticipants;

  /// [sessionKey]
  /// Session Key required by the virtual service.
  FhirStringBuilder? sessionKey;

  /// Converts a [VirtualServiceDetailBuilder]
  /// to [VirtualServiceDetail]
  @override
  VirtualServiceDetail build() => VirtualServiceDetail.fromJson(toJson());

  /// Converts a [VirtualServiceDetailBuilder]
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
    addField('channelType', channelType);
    if (addressX != null) {
      final fhirType = addressX!.fhirType;
      addField('address${fhirType.capitalizeFirstLetter()}', addressX);
    }

    addField('additionalInfo', additionalInfo);
    addField('maxParticipants', maxParticipants);
    addField('sessionKey', sessionKey);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'channelType',
      'addressX',
      'additionalInfo',
      'maxParticipants',
      'sessionKey',
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
      case 'channelType':
        if (channelType != null) {
          fields.add(channelType!);
        }
      case 'address':
        if (addressX != null) {
          fields.add(addressX!);
        }
      case 'addressX':
        if (addressX != null) {
          fields.add(addressX!);
        }
      case 'addressUrl':
        if (addressX is FhirUrlBuilder) {
          fields.add(addressX!);
        }
      case 'addressString':
        if (addressX is FhirStringBuilder) {
          fields.add(addressX!);
        }
      case 'addressContactPoint':
        if (addressX is ContactPointBuilder) {
          fields.add(addressX!);
        }
      case 'addressExtendedContactDetail':
        if (addressX is ExtendedContactDetailBuilder) {
          fields.add(addressX!);
        }
      case 'additionalInfo':
        if (additionalInfo != null) {
          fields.addAll(additionalInfo!);
        }
      case 'maxParticipants':
        if (maxParticipants != null) {
          fields.add(maxParticipants!);
        }
      case 'sessionKey':
        if (sessionKey != null) {
          fields.add(sessionKey!);
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
      case 'channelType':
        {
          if (child is CodingBuilder) {
            channelType = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'address':
      case 'addressX':
        {
          if (child is AddressXVirtualServiceDetailBuilder) {
            addressX = child;
            return;
          } else {
            if (child is FhirUrlBuilder) {
              addressX = child;
              return;
            }
            if (child is FhirStringBuilder) {
              addressX = child;
              return;
            }
            if (child is ContactPointBuilder) {
              addressX = child;
              return;
            }
            if (child is ExtendedContactDetailBuilder) {
              addressX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'addressUrl':
        {
          if (child is FhirUrlBuilder) {
            addressX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'addressString':
        {
          if (child is FhirStringBuilder) {
            addressX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'addressContactPoint':
        {
          if (child is ContactPointBuilder) {
            addressX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'addressExtendedContactDetail':
        {
          if (child is ExtendedContactDetailBuilder) {
            addressX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'additionalInfo':
        {
          if (child is List<FhirUrlBuilder>) {
            // Replace or create new list
            additionalInfo = child;
            return;
          } else if (child is FhirUrlBuilder) {
            // Add single element to existing list or create new list
            additionalInfo = [
              ...(additionalInfo ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirUrlBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                final converted = FhirUrlBuilder.tryParse(stringValue);
                if (converted != null) {
                  convertedList.add(converted);
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              additionalInfo = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirUrlBuilder.tryParse(stringValue);
              if (converted != null) {
                additionalInfo = [
                  ...(additionalInfo ?? []),
                  converted,
                ];
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'maxParticipants':
        {
          if (child is FhirPositiveIntBuilder) {
            maxParticipants = child;
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
                  maxParticipants = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'sessionKey':
        {
          if (child is FhirStringBuilder) {
            sessionKey = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                sessionKey = converted;
                return;
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
      case 'channelType':
        return ['CodingBuilder'];
      case 'address':
      case 'addressX':
        return [
          'FhirUrlBuilder',
          'FhirStringBuilder',
          'ContactPointBuilder',
          'ExtendedContactDetailBuilder',
        ];
      case 'addressUrl':
        return ['FhirUrlBuilder'];
      case 'addressString':
        return ['FhirStringBuilder'];
      case 'addressContactPoint':
        return ['ContactPointBuilder'];
      case 'addressExtendedContactDetail':
        return ['ExtendedContactDetailBuilder'];
      case 'additionalInfo':
        return ['FhirUrlBuilder'];
      case 'maxParticipants':
        return ['FhirPositiveIntBuilder'];
      case 'sessionKey':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [VirtualServiceDetailBuilder]
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
      case 'channelType':
        {
          channelType = CodingBuilder.empty();
          return;
        }
      case 'address':
      case 'addressX':
      case 'addressUrl':
        {
          addressX = FhirUrlBuilder.empty();
          return;
        }
      case 'addressString':
        {
          addressX = FhirStringBuilder.empty();
          return;
        }
      case 'addressContactPoint':
        {
          addressX = ContactPointBuilder.empty();
          return;
        }
      case 'addressExtendedContactDetail':
        {
          addressX = ExtendedContactDetailBuilder.empty();
          return;
        }
      case 'additionalInfo':
        {
          additionalInfo = <FhirUrlBuilder>[];
          return;
        }
      case 'maxParticipants':
        {
          maxParticipants = FhirPositiveIntBuilder.empty();
          return;
        }
      case 'sessionKey':
        {
          sessionKey = FhirStringBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  VirtualServiceDetailBuilder clone() => throw UnimplementedError();
  @override
  VirtualServiceDetailBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    CodingBuilder? channelType,
    AddressXVirtualServiceDetailBuilder? addressX,
    List<FhirUrlBuilder>? additionalInfo,
    FhirPositiveIntBuilder? maxParticipants,
    FhirStringBuilder? sessionKey,
    FhirUrlBuilder? addressUrl,
    FhirStringBuilder? addressString,
    ContactPointBuilder? addressContactPoint,
    ExtendedContactDetailBuilder? addressExtendedContactDetail,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    final newResult = VirtualServiceDetailBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      channelType: channelType ?? this.channelType,
      addressX: addressX ??
          addressUrl ??
          addressString ??
          addressContactPoint ??
          addressExtendedContactDetail ??
          this.addressX,
      additionalInfo: additionalInfo ?? this.additionalInfo,
      maxParticipants: maxParticipants ?? this.maxParticipants,
      sessionKey: sessionKey ?? this.sessionKey,
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
    if (o is! VirtualServiceDetailBuilder) {
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
      channelType,
      o.channelType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      addressX,
      o.addressX,
    )) {
      return false;
    }
    if (!listEquals<FhirUrlBuilder>(
      additionalInfo,
      o.additionalInfo,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      maxParticipants,
      o.maxParticipants,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      sessionKey,
      o.sessionKey,
    )) {
      return false;
    }
    return true;
  }
}
