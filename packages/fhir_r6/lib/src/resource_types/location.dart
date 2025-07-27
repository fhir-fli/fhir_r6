import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'location.g.dart';

/// [Location]
/// Details and position information for a place where services are
/// provided and resources and participants may be stored, found,
/// contained, or accommodated.
class Location extends DomainResource {
  /// Primary constructor for
  /// [Location]

  const Location({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.status,
    this.operationalStatus,
    this.name,
    this.alias,
    this.description,
    this.mode,
    this.type,
    this.contact,
    this.address,
    this.form,
    this.position,
    this.managingOrganization,
    this.partOf,
    this.characteristic,
    this.hoursOfOperation,
    this.virtualService,
    this.endpoint,
  }) : super(
          resourceType: R5ResourceType.Location,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Location.fromJson(
    Map<String, dynamic> json,
  ) {
    return Location(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
      ),
      language: JsonParser.parsePrimitive<AllLanguages>(
        json,
        'language',
        AllLanguages.fromJson,
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<LocationStatus>(
        json,
        'status',
        LocationStatus.fromJson,
      ),
      operationalStatus: JsonParser.parseObject<Coding>(
        json,
        'operationalStatus',
        Coding.fromJson,
      ),
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
      ),
      alias: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'alias',
        FhirString.fromJson,
      ),
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
      ),
      mode: JsonParser.parsePrimitive<LocationMode>(
        json,
        'mode',
        LocationMode.fromJson,
      ),
      type: (json['type'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      contact: (json['contact'] as List<dynamic>?)
          ?.map<ExtendedContactDetail>(
            (v) => ExtendedContactDetail.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      address: JsonParser.parseObject<Address>(
        json,
        'address',
        Address.fromJson,
      ),
      form: JsonParser.parseObject<CodeableConcept>(
        json,
        'form',
        CodeableConcept.fromJson,
      ),
      position: JsonParser.parseObject<LocationPosition>(
        json,
        'position',
        LocationPosition.fromJson,
      ),
      managingOrganization: JsonParser.parseObject<Reference>(
        json,
        'managingOrganization',
        Reference.fromJson,
      ),
      partOf: JsonParser.parseObject<Reference>(
        json,
        'partOf',
        Reference.fromJson,
      ),
      characteristic: (json['characteristic'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      hoursOfOperation: (json['hoursOfOperation'] as List<dynamic>?)
          ?.map<Availability>(
            (v) => Availability.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      virtualService: (json['virtualService'] as List<dynamic>?)
          ?.map<VirtualServiceDetail>(
            (v) => VirtualServiceDetail.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      endpoint: (json['endpoint'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [Location]
  /// from a [String] or [YamlMap] object
  factory Location.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Location.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Location.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Location '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Location]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Location.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return Location.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Location';

  /// [identifier]
  /// Unique code or number identifying the location to its users.
  final List<Identifier>? identifier;

  /// [status]
  /// The status property covers the general availability of the resource,
  /// not the current value which may be covered by the operationStatus, or
  /// by a schedule/slots if they are configured for the location.
  final LocationStatus? status;

  /// [operationalStatus]
  /// The operational status covers operation values most relevant to beds
  /// (but can also apply to rooms/units/chairs/etc. such as an isolation
  /// unit/dialysis chair). This typically covers concepts such as
  /// contamination, housekeeping, and other activities like maintenance.
  final Coding? operationalStatus;

  /// [name]
  /// Name of the location as used by humans. Does not need to be unique.
  final FhirString? name;

  /// [alias]
  /// A list of alternate names that the location is known as, or was known
  /// as, in the past.
  final List<FhirString>? alias;

  /// [description]
  /// Description of the Location, which helps in finding or referencing the
  /// place.
  final FhirMarkdown? description;

  /// [mode]
  /// Indicates whether a resource instance represents a specific location or
  /// a class of locations.
  final LocationMode? mode;

  /// [type]
  /// Indicates the type of function performed at the location.
  final List<CodeableConcept>? type;

  /// [contact]
  /// The contact details of communication devices available at the location.
  /// This can include addresses, phone numbers, fax numbers, mobile numbers,
  /// email addresses and web sites.
  final List<ExtendedContactDetail>? contact;

  /// [address]
  /// Physical location.
  final Address? address;

  /// [form]
  /// Physical form of the location, e.g. building, room, vehicle, road,
  /// virtual.
  final CodeableConcept? form;

  /// [position]
  /// The absolute geographic location of the Location, expressed using the
  /// WGS84 datum (This is the same co-ordinate system used in KML).
  final LocationPosition? position;

  /// [managingOrganization]
  /// The organization responsible for the provisioning and upkeep of the
  /// location.
  final Reference? managingOrganization;

  /// [partOf]
  /// Another Location of which this Location is physically a part of.
  final Reference? partOf;

  /// [characteristic]
  /// Collection of characteristics (attributes).
  final List<CodeableConcept>? characteristic;

  /// [hoursOfOperation]
  /// What days/times during a week is this location usually open, and any
  /// exceptions where the location is not available.
  final List<Availability>? hoursOfOperation;

  /// [virtualService]
  /// Connection details of a virtual service (e.g. shared conference call
  /// facility with dedicated number/details).
  final List<VirtualServiceDetail>? virtualService;

  /// [endpoint]
  /// Technical endpoints providing access to services operated for the
  /// location.
  final List<Reference>? endpoint;
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

    json['resourceType'] = resourceType.toJson();
    addField(
      'id',
      id,
    );
    addField(
      'meta',
      meta,
    );
    addField(
      'implicitRules',
      implicitRules,
    );
    addField(
      'language',
      language,
    );
    addField(
      'text',
      text,
    );
    addField(
      'contained',
      contained,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'identifier',
      identifier,
    );
    addField(
      'status',
      status,
    );
    addField(
      'operationalStatus',
      operationalStatus,
    );
    addField(
      'name',
      name,
    );
    addField(
      'alias',
      alias,
    );
    addField(
      'description',
      description,
    );
    addField(
      'mode',
      mode,
    );
    addField(
      'type',
      type,
    );
    addField(
      'contact',
      contact,
    );
    addField(
      'address',
      address,
    );
    addField(
      'form',
      form,
    );
    addField(
      'position',
      position,
    );
    addField(
      'managingOrganization',
      managingOrganization,
    );
    addField(
      'partOf',
      partOf,
    );
    addField(
      'characteristic',
      characteristic,
    );
    addField(
      'hoursOfOperation',
      hoursOfOperation,
    );
    addField(
      'virtualService',
      virtualService,
    );
    addField(
      'endpoint',
      endpoint,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'meta',
      'implicitRules',
      'language',
      'text',
      'contained',
      'extension',
      'modifierExtension',
      'identifier',
      'status',
      'operationalStatus',
      'name',
      'alias',
      'description',
      'mode',
      'type',
      'contact',
      'address',
      'form',
      'position',
      'managingOrganization',
      'partOf',
      'characteristic',
      'hoursOfOperation',
      'virtualService',
      'endpoint',
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
      case 'meta':
        if (meta != null) {
          fields.add(meta!);
        }
      case 'implicitRules':
        if (implicitRules != null) {
          fields.add(implicitRules!);
        }
      case 'language':
        if (language != null) {
          fields.add(language!);
        }
      case 'text':
        if (text != null) {
          fields.add(text!);
        }
      case 'contained':
        if (contained != null) {
          fields.addAll(contained!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'operationalStatus':
        if (operationalStatus != null) {
          fields.add(operationalStatus!);
        }
      case 'name':
        if (name != null) {
          fields.add(name!);
        }
      case 'alias':
        if (alias != null) {
          fields.addAll(alias!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'mode':
        if (mode != null) {
          fields.add(mode!);
        }
      case 'type':
        if (type != null) {
          fields.addAll(type!);
        }
      case 'contact':
        if (contact != null) {
          fields.addAll(contact!);
        }
      case 'address':
        if (address != null) {
          fields.add(address!);
        }
      case 'form':
        if (form != null) {
          fields.add(form!);
        }
      case 'position':
        if (position != null) {
          fields.add(position!);
        }
      case 'managingOrganization':
        if (managingOrganization != null) {
          fields.add(managingOrganization!);
        }
      case 'partOf':
        if (partOf != null) {
          fields.add(partOf!);
        }
      case 'characteristic':
        if (characteristic != null) {
          fields.addAll(characteristic!);
        }
      case 'hoursOfOperation':
        if (hoursOfOperation != null) {
          fields.addAll(hoursOfOperation!);
        }
      case 'virtualService':
        if (virtualService != null) {
          fields.addAll(virtualService!);
        }
      case 'endpoint':
        if (endpoint != null) {
          fields.addAll(endpoint!);
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
  Location clone() => copyWith();

  /// Copy function for [Location]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $LocationCopyWith<Location> get copyWith => _$LocationCopyWithImpl<Location>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Location) {
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
    if (!equalsDeepWithNull(
      meta,
      o.meta,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      implicitRules,
      o.implicitRules,
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
      text,
      o.text,
    )) {
      return false;
    }
    if (!listEquals<Resource>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      operationalStatus,
      o.operationalStatus,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      name,
      o.name,
    )) {
      return false;
    }
    if (!listEquals<FhirString>(
      alias,
      o.alias,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      mode,
      o.mode,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      type,
      o.type,
    )) {
      return false;
    }
    if (!listEquals<ExtendedContactDetail>(
      contact,
      o.contact,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      address,
      o.address,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      form,
      o.form,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      position,
      o.position,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      managingOrganization,
      o.managingOrganization,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      partOf,
      o.partOf,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      characteristic,
      o.characteristic,
    )) {
      return false;
    }
    if (!listEquals<Availability>(
      hoursOfOperation,
      o.hoursOfOperation,
    )) {
      return false;
    }
    if (!listEquals<VirtualServiceDetail>(
      virtualService,
      o.virtualService,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      endpoint,
      o.endpoint,
    )) {
      return false;
    }
    return true;
  }
}

/// [LocationPosition]
/// The absolute geographic location of the Location, expressed using the
/// WGS84 datum (This is the same co-ordinate system used in KML).
class LocationPosition extends BackboneElement {
  /// Primary constructor for
  /// [LocationPosition]

  const LocationPosition({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.longitude,
    required this.latitude,
    this.altitude,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory LocationPosition.fromJson(
    Map<String, dynamic> json,
  ) {
    return LocationPosition(
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
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      longitude: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'longitude',
        FhirDecimal.fromJson,
      )!,
      latitude: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'latitude',
        FhirDecimal.fromJson,
      )!,
      altitude: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'altitude',
        FhirDecimal.fromJson,
      ),
    );
  }

  /// Deserialize [LocationPosition]
  /// from a [String] or [YamlMap] object
  factory LocationPosition.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return LocationPosition.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return LocationPosition.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'LocationPosition '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [LocationPosition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory LocationPosition.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return LocationPosition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'LocationPosition';

  /// [longitude]
  /// Longitude. The value domain and the interpretation are the same as for
  /// the text of the longitude element in KML (see notes on Location main
  /// page).
  final FhirDecimal longitude;

  /// [latitude]
  /// Latitude. The value domain and the interpretation are the same as for
  /// the text of the latitude element in KML (see notes on Location main
  /// page).
  final FhirDecimal latitude;

  /// [altitude]
  /// Altitude. The value domain and the interpretation are the same as for
  /// the text of the altitude element in KML (see notes on Location main
  /// page).
  final FhirDecimal? altitude;
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
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'longitude',
      longitude,
    );
    addField(
      'latitude',
      latitude,
    );
    addField(
      'altitude',
      altitude,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'longitude',
      'latitude',
      'altitude',
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
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'longitude':
        fields.add(longitude);
      case 'latitude':
        fields.add(latitude);
      case 'altitude':
        if (altitude != null) {
          fields.add(altitude!);
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
  LocationPosition clone() => copyWith();

  /// Copy function for [LocationPosition]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $LocationPositionCopyWith<LocationPosition> get copyWith =>
      _$LocationPositionCopyWithImpl<LocationPosition>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! LocationPosition) {
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
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      longitude,
      o.longitude,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      latitude,
      o.latitude,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      altitude,
      o.altitude,
    )) {
      return false;
    }
    return true;
  }
}
