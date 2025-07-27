import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'virtual_service_detail.g.dart';

/// [VirtualServiceDetail]
/// Virtual Service Contact Details.
class VirtualServiceDetail extends DataType {
  /// Primary constructor for
  /// [VirtualServiceDetail]

  const VirtualServiceDetail({
    super.id,
    super.extension_,
    this.channelType,
    AddressXVirtualServiceDetail? addressX,
    FhirUrl? addressUrl,
    FhirString? addressString,
    ContactPoint? addressContactPoint,
    ExtendedContactDetail? addressExtendedContactDetail,
    this.additionalInfo,
    this.maxParticipants,
    this.sessionKey,
    super.disallowExtensions,
  }) : addressX = addressX ??
            addressUrl ??
            addressString ??
            addressContactPoint ??
            addressExtendedContactDetail;

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory VirtualServiceDetail.fromJson(
    Map<String, dynamic> json,
  ) {
    return VirtualServiceDetail(
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
      channelType: JsonParser.parseObject<Coding>(
        json,
        'channelType',
        Coding.fromJson,
      ),
      addressX: JsonParser.parsePolymorphic<AddressXVirtualServiceDetail>(
        json,
        {
          'addressUrl': FhirUrl.fromJson,
          'addressString': FhirString.fromJson,
          'addressContactPoint': ContactPoint.fromJson,
          'addressExtendedContactDetail': ExtendedContactDetail.fromJson,
        },
      ),
      additionalInfo: JsonParser.parsePrimitiveList<FhirUrl>(
        json,
        'additionalInfo',
        FhirUrl.fromJson,
      ),
      maxParticipants: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'maxParticipants',
        FhirPositiveInt.fromJson,
      ),
      sessionKey: JsonParser.parsePrimitive<FhirString>(
        json,
        'sessionKey',
        FhirString.fromJson,
      ),
    );
  }

  /// Deserialize [VirtualServiceDetail]
  /// from a [String] or [YamlMap] object
  factory VirtualServiceDetail.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return VirtualServiceDetail.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return VirtualServiceDetail.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'VirtualServiceDetail '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [VirtualServiceDetail]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory VirtualServiceDetail.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return VirtualServiceDetail.fromJson(json);
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
  final Coding? channelType;

  /// [addressX]
  /// What address or number needs to be used for a user to connect to the
  /// virtual service to join. The channelType informs as to which datatype
  /// is appropriate to use (requires knowledge of the specific type).
  final AddressXVirtualServiceDetail? addressX;

  /// Getter for [addressUrl] as a FhirUrl
  FhirUrl? get addressUrl => addressX?.isAs<FhirUrl>();

  /// Getter for [addressString] as a FhirString
  FhirString? get addressString => addressX?.isAs<FhirString>();

  /// Getter for [addressContactPoint] as a ContactPoint
  ContactPoint? get addressContactPoint => addressX?.isAs<ContactPoint>();

  /// Getter for [addressExtendedContactDetail] as a ExtendedContactDetail
  ExtendedContactDetail? get addressExtendedContactDetail =>
      addressX?.isAs<ExtendedContactDetail>();

  /// [additionalInfo]
  /// Address to see alternative connection details.
  final List<FhirUrl>? additionalInfo;

  /// [maxParticipants]
  /// Maximum number of participants supported by the virtual service.
  final FhirPositiveInt? maxParticipants;

  /// [sessionKey]
  /// Session Key required by the virtual service.
  final FhirString? sessionKey;
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
      'channelType',
      channelType,
    );
    if (addressX != null) {
      final fhirType = addressX!.fhirType;
      addField(
        'address${fhirType.capitalize()}',
        addressX,
      );
    }

    addField(
      'additionalInfo',
      additionalInfo,
    );
    addField(
      'maxParticipants',
      maxParticipants,
    );
    addField(
      'sessionKey',
      sessionKey,
    );
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
      case 'channelType':
        if (channelType != null) {
          fields.add(channelType!);
        }
      case 'address':
        fields.add(addressX!);
      case 'addressX':
        fields.add(addressX!);
      case 'addressUrl':
        if (addressX is FhirUrl) {
          fields.add(addressX!);
        }
      case 'addressString':
        if (addressX is FhirString) {
          fields.add(addressX!);
        }
      case 'addressContactPoint':
        if (addressX is ContactPoint) {
          fields.add(addressX!);
        }
      case 'addressExtendedContactDetail':
        if (addressX is ExtendedContactDetail) {
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  VirtualServiceDetail clone() => copyWith();

  /// Copy function for [VirtualServiceDetail]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $VirtualServiceDetailCopyWith<VirtualServiceDetail> get copyWith =>
      _$VirtualServiceDetailCopyWithImpl<VirtualServiceDetail>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! VirtualServiceDetail) {
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
    if (!listEquals<FhirUrl>(
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
