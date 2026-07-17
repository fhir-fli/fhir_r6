import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'group.g.dart';

/// [FhirGroup]
/// Represents a defined collection of entities that may be discussed or
/// acted upon collectively but which are not typically expected to act
/// collectively. These collections are also not typically formally or
/// legally recognized.
///
/// NOTE: Group may be used to define families or households, which in some
/// circumstances may act collectively or have a degree of legal or formal
/// recognition. This should be considered an exception. When Group is used
/// for types of entities other than Patient or RelatedPerson, the
/// expectation remains that the Group will not act collectively or have
/// formal recognition - use Organization if these behaviors are needed.
///
/// For example, it is possible for a 'family' Group to be a performer of
/// an Observation or owner of a Task. However, this is not permitted for a
/// Group made up of Practitioners, PractitionerRoles or Organizations.
/// Organization or CareTeam would need to be used instead. A Group of
/// Practitioners could, however, be a subject of an Observation.
class FhirGroup extends DomainResource {
  /// Primary constructor for
  /// [FhirGroup]

  const FhirGroup({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.url,
    this.identifier,
    this.version,
    VersionAlgorithmXGroup? versionAlgorithmX,
    FhirString? versionAlgorithmString,
    Coding? versionAlgorithmCoding,
    this.name,
    this.title,
    this.status,
    this.experimental,
    this.date,
    this.publisher,
    this.contact,
    this.description,
    this.useContext,
    this.purpose,
    this.copyright,
    this.copyrightLabel,
    this.type,
    required this.membership,
    this.code,
    this.quantity,
    this.managingEntity,
    this.combinationMethod,
    this.combinationThreshold,
    this.characteristic,
    this.member,
  })  : versionAlgorithmX = versionAlgorithmX ??
            versionAlgorithmString ??
            versionAlgorithmCoding,
        super(
          resourceType: R6ResourceType.FhirGroup,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory FhirGroup.fromJson(
    Map<String, dynamic> json,
  ) {
    return FhirGroup(
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
      url: JsonParser.parsePrimitive<FhirUri>(
        json,
        'url',
        FhirUri.fromJson,
      ),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      version: JsonParser.parsePrimitive<FhirString>(
        json,
        'version',
        FhirString.fromJson,
      ),
      versionAlgorithmX: JsonParser.parsePolymorphic<VersionAlgorithmXGroup>(
        json,
        {
          'versionAlgorithmString': FhirString.fromJson,
          'versionAlgorithmCoding': Coding.fromJson,
        },
      ),
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
      ),
      title: JsonParser.parsePrimitive<FhirString>(
        json,
        'title',
        FhirString.fromJson,
      ),
      status: JsonParser.parsePrimitive<PublicationStatus>(
        json,
        'status',
        PublicationStatus.fromJson,
      ),
      experimental: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'experimental',
        FhirBoolean.fromJson,
      ),
      date: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'date',
        FhirDateTime.fromJson,
      ),
      publisher: JsonParser.parsePrimitive<FhirString>(
        json,
        'publisher',
        FhirString.fromJson,
      ),
      contact: (json['contact'] as List<dynamic>?)
          ?.map<ContactDetail>(
            (v) => ContactDetail.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
      ),
      useContext: (json['useContext'] as List<dynamic>?)
          ?.map<UsageContext>(
            (v) => UsageContext.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      purpose: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'purpose',
        FhirMarkdown.fromJson,
      ),
      copyright: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'copyright',
        FhirMarkdown.fromJson,
      ),
      copyrightLabel: JsonParser.parsePrimitive<FhirString>(
        json,
        'copyrightLabel',
        FhirString.fromJson,
      ),
      type: JsonParser.parsePrimitive<GroupType>(
        json,
        'type',
        GroupType.fromJson,
      ),
      membership: JsonParser.parsePrimitive<GroupMembershipBasis>(
        json,
        'membership',
        GroupMembershipBasis.fromJson,
      )!,
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
      ),
      quantity: JsonParser.parsePrimitive<FhirUnsignedInt>(
        json,
        'quantity',
        FhirUnsignedInt.fromJson,
      ),
      managingEntity: JsonParser.parseObject<Reference>(
        json,
        'managingEntity',
        Reference.fromJson,
      ),
      combinationMethod:
          JsonParser.parsePrimitive<GroupCharacteristicCombination>(
        json,
        'combinationMethod',
        GroupCharacteristicCombination.fromJson,
      ),
      combinationThreshold: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'combinationThreshold',
        FhirPositiveInt.fromJson,
      ),
      characteristic: (json['characteristic'] as List<dynamic>?)
          ?.map<GroupCharacteristic>(
            (v) => GroupCharacteristic.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      member: (json['member'] as List<dynamic>?)
          ?.map<GroupMember>(
            (v) => GroupMember.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [FhirGroup]
  /// from a [String] or [YamlMap] object
  factory FhirGroup.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return FhirGroup.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return FhirGroup.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'FhirGroup '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [FhirGroup]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory FhirGroup.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return FhirGroup.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Group';

  /// [url]
  /// An absolute URI that is used to identify this Group when it is
  /// referenced in a specification, model, design or an instance; also
  /// called its canonical identifier. This SHOULD be globally unique and
  /// SHOULD be a literal address at which an authoritative instance of this
  /// Group is (or will be) published. This URL can be the target of a
  /// canonical reference. It SHALL remain the same when the Group is stored
  /// on different servers.
  final FhirUri? url;

  /// [identifier]
  /// Business identifiers assigned to this participant by one of the
  /// applications involved. These identifiers remain constant as the
  /// resource is updated and propagates from server to server.
  final List<Identifier>? identifier;

  /// [version]
  /// The identifier that is used to identify this version of the Group when
  /// it is referenced in a specification, model, design or instance. This is
  /// an arbitrary value managed by the Group author and is not expected to
  /// be globally unique. For example, it might be a timestamp (e.g.
  /// yyyymmdd) if a managed version is not available. There is also no
  /// expectation that versions can be placed in a lexicographical sequence
  /// without additional knowledge.
  final FhirString? version;

  /// [versionAlgorithmX]
  /// Indicates the mechanism used to compare versions to determine which is
  /// more current.
  final VersionAlgorithmXGroup? versionAlgorithmX;

  /// Getter for [versionAlgorithmString] as a FhirString
  FhirString? get versionAlgorithmString =>
      versionAlgorithmX?.isAs<FhirString>();

  /// Getter for [versionAlgorithmCoding] as a Coding
  Coding? get versionAlgorithmCoding => versionAlgorithmX?.isAs<Coding>();

  /// [name]
  /// A label assigned to the group for human identification and
  /// communication.
  final FhirString? name;

  /// [title]
  /// A short, descriptive, user-friendly title for the Group.
  final FhirString? title;

  /// [status]
  /// The current state of this Group.
  final PublicationStatus? status;

  /// [experimental]
  /// A Boolean value to indicate that this Group is authored for testing
  /// purposes (or education/evaluation/marketing) and no version of this
  /// resource will ever be intended for genuine usage.
  final FhirBoolean? experimental;

  /// [date]
  /// The date (and optionally time) when the Group was last significantly
  /// changed. The date must change when the business version changes and it
  /// must change if the status code changes. In addition, it should change
  /// when the substantive content of the Group changes.
  final FhirDateTime? date;

  /// [publisher]
  /// The name of the organization or individual responsible for the release
  /// and ongoing maintenance of the Group.
  final FhirString? publisher;

  /// [contact]
  /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  final List<ContactDetail>? contact;

  /// [description]
  /// Explanation of what the group represents and how it is intended to be
  /// used.
  final FhirMarkdown? description;

  /// [useContext]
  /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories
  /// (gender, age, ...) or may be references to specific programs (insurance
  /// plans, studies, ...) and may be used to assist with indexing and
  /// searching for appropriate Groups.
  final List<UsageContext>? useContext;

  /// [purpose]
  /// Explanation of why this Group is needed and why it has been designed as
  /// it has.
  final FhirMarkdown? purpose;

  /// [copyright]
  /// A copyright statement relating to the Group and/or its contents.
  /// Copyright statements are generally legal restrictions on the use and
  /// publishing of the Group.
  final FhirMarkdown? copyright;

  /// [copyrightLabel]
  /// A short string (<50 characters), suitable for inclusion in a page
  /// footer that identifies the copyright holder, effective period, and
  /// optionally whether rights are resctricted. (e.g. 'All rights reserved',
  /// 'Some rights reserved').
  final FhirString? copyrightLabel;

  /// [type]
  /// Identifies the broad classification of the kind of resources the group
  /// includes.
  final GroupType? type;

  /// [membership]
  /// Basis for membership in the Group:
  ///
  /// * 'definitional': The Group.characteristics specified are both
  /// necessary and sufficient to determine membership. All entities that
  /// meet the criteria are considered to be members of the group, whether
  /// referenced by the group or not. If members are present, they are
  /// individuals that happen to be known as meeting the
  /// Group.characteristics. The list cannot be presumed to be complete.
  /// * 'conceptual': The Group.characteristics specified are both necessary
  /// and sufficient to determine membership. The 'conceptual' Group is a
  /// 'definitional' Group in which the Group.type is not bound to FHIR
  /// types.
  /// * 'enumerated': The Group.characteristics are necessary but not
  /// sufficient to determine membership. Membership is determined by being
  /// listed as one of the Group.member.
  final GroupMembershipBasis membership;

  /// [code]
  /// A code that describes the use of the group. The use of the group
  /// usually dictates what kind of entities can be members of the group.
  final CodeableConcept? code;

  /// [quantity]
  /// A count of the number of resource instances that are part of the group.
  final FhirUnsignedInt? quantity;

  /// [managingEntity]
  /// Entity responsible for defining and maintaining Group characteristics
  /// and/or registered members.
  final Reference? managingEntity;

  /// [combinationMethod]
  /// Used to specify how two or more characteristics are combined.
  final GroupCharacteristicCombination? combinationMethod;

  /// [combinationThreshold]
  /// Provides the value of "n" when "at-least" or "at-most" codes are used
  /// for combinationMethod.
  final FhirPositiveInt? combinationThreshold;

  /// [characteristic]
  /// Identifies traits whose presence r absence is shared by members of the
  /// group.
  final List<GroupCharacteristic>? characteristic;

  /// [member]
  /// Identifies the resource instances that are members of the group.
  final List<GroupMember>? member;
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
      'url',
      url,
    );
    addField(
      'identifier',
      identifier,
    );
    addField(
      'version',
      version,
    );
    if (versionAlgorithmX != null) {
      final fhirType = versionAlgorithmX!.fhirType;
      addField(
        'versionAlgorithm${fhirType.capitalize()}',
        versionAlgorithmX,
      );
    }

    addField(
      'name',
      name,
    );
    addField(
      'title',
      title,
    );
    addField(
      'status',
      status,
    );
    addField(
      'experimental',
      experimental,
    );
    addField(
      'date',
      date,
    );
    addField(
      'publisher',
      publisher,
    );
    addField(
      'contact',
      contact,
    );
    addField(
      'description',
      description,
    );
    addField(
      'useContext',
      useContext,
    );
    addField(
      'purpose',
      purpose,
    );
    addField(
      'copyright',
      copyright,
    );
    addField(
      'copyrightLabel',
      copyrightLabel,
    );
    addField(
      'type',
      type,
    );
    addField(
      'membership',
      membership,
    );
    addField(
      'code',
      code,
    );
    addField(
      'quantity',
      quantity,
    );
    addField(
      'managingEntity',
      managingEntity,
    );
    addField(
      'combinationMethod',
      combinationMethod,
    );
    addField(
      'combinationThreshold',
      combinationThreshold,
    );
    addField(
      'characteristic',
      characteristic,
    );
    addField(
      'member',
      member,
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
      'url',
      'identifier',
      'version',
      'versionAlgorithmX',
      'name',
      'title',
      'status',
      'experimental',
      'date',
      'publisher',
      'contact',
      'description',
      'useContext',
      'purpose',
      'copyright',
      'copyrightLabel',
      'type',
      'membership',
      'code',
      'quantity',
      'managingEntity',
      'combinationMethod',
      'combinationThreshold',
      'characteristic',
      'member',
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
      case 'url':
        if (url != null) {
          fields.add(url!);
        }
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
        }
      case 'version':
        if (version != null) {
          fields.add(version!);
        }
      case 'versionAlgorithm':
        if (versionAlgorithmX != null) {
          fields.add(versionAlgorithmX!);
        }
      case 'versionAlgorithmX':
        if (versionAlgorithmX != null) {
          fields.add(versionAlgorithmX!);
        }
      case 'versionAlgorithmString':
        if (versionAlgorithmX is FhirString) {
          fields.add(versionAlgorithmX!);
        }
      case 'versionAlgorithmCoding':
        if (versionAlgorithmX is Coding) {
          fields.add(versionAlgorithmX!);
        }
      case 'name':
        if (name != null) {
          fields.add(name!);
        }
      case 'title':
        if (title != null) {
          fields.add(title!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'experimental':
        if (experimental != null) {
          fields.add(experimental!);
        }
      case 'date':
        if (date != null) {
          fields.add(date!);
        }
      case 'publisher':
        if (publisher != null) {
          fields.add(publisher!);
        }
      case 'contact':
        if (contact != null) {
          fields.addAll(contact!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'useContext':
        if (useContext != null) {
          fields.addAll(useContext!);
        }
      case 'purpose':
        if (purpose != null) {
          fields.add(purpose!);
        }
      case 'copyright':
        if (copyright != null) {
          fields.add(copyright!);
        }
      case 'copyrightLabel':
        if (copyrightLabel != null) {
          fields.add(copyrightLabel!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'membership':
        fields.add(membership);
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'quantity':
        if (quantity != null) {
          fields.add(quantity!);
        }
      case 'managingEntity':
        if (managingEntity != null) {
          fields.add(managingEntity!);
        }
      case 'combinationMethod':
        if (combinationMethod != null) {
          fields.add(combinationMethod!);
        }
      case 'combinationThreshold':
        if (combinationThreshold != null) {
          fields.add(combinationThreshold!);
        }
      case 'characteristic':
        if (characteristic != null) {
          fields.addAll(characteristic!);
        }
      case 'member':
        if (member != null) {
          fields.addAll(member!);
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
  FhirGroup clone() => copyWith();

  /// Copy function for [FhirGroup]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $FhirGroupCopyWith<FhirGroup> get copyWith =>
      _$FhirGroupCopyWithImpl<FhirGroup>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! FhirGroup) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      meta,
      o.meta,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      implicitRules,
      o.implicitRules,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      language,
      o.language,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      text,
      o.text,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Resource>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      url,
      o.url,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      version,
      o.version,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      versionAlgorithmX,
      o.versionAlgorithmX,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      name,
      o.name,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      title,
      o.title,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      experimental,
      o.experimental,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      date,
      o.date,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      publisher,
      o.publisher,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<ContactDetail>(
      contact,
      o.contact,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<UsageContext>(
      useContext,
      o.useContext,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      purpose,
      o.purpose,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      copyright,
      o.copyright,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      copyrightLabel,
      o.copyrightLabel,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      membership,
      o.membership,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      code,
      o.code,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      quantity,
      o.quantity,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      managingEntity,
      o.managingEntity,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      combinationMethod,
      o.combinationMethod,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      combinationThreshold,
      o.combinationThreshold,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<GroupCharacteristic>(
      characteristic,
      o.characteristic,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<GroupMember>(
      member,
      o.member,
    )) {
      return false;
    }
    return true;
  }
}

/// [GroupCharacteristic]
/// Identifies traits whose presence r absence is shared by members of the
/// group.
class GroupCharacteristic extends BackboneElement {
  /// Primary constructor for
  /// [GroupCharacteristic]

  const GroupCharacteristic({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    required this.valueX,
    required this.exclude,
    this.description,
    this.method,
    DeterminedByXGroupCharacteristic? determinedByX,
    Reference? determinedByReference,
    FhirExpression? determinedByExpression,
    this.offset,
    InstancesXGroupCharacteristic? instancesX,
    FhirUnsignedInt? instancesUnsignedInt,
    Range? instancesRange,
    DurationXGroupCharacteristic? durationX,
    FhirDuration? durationDuration,
    Range? durationRange,
    this.period,
    this.timing,
    super.disallowExtensions,
  })  : determinedByX =
            determinedByX ?? determinedByReference ?? determinedByExpression,
        instancesX = instancesX ?? instancesUnsignedInt ?? instancesRange,
        durationX = durationX ?? durationDuration ?? durationRange,
        super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory GroupCharacteristic.fromJson(
    Map<String, dynamic> json,
  ) {
    return GroupCharacteristic(
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
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
      )!,
      valueX: JsonParser.parsePolymorphic<ValueXGroupCharacteristic>(
        json,
        {
          'valueCodeableConcept': CodeableConcept.fromJson,
          'valueBoolean': FhirBoolean.fromJson,
          'valueQuantity': Quantity.fromJson,
          'valueRange': Range.fromJson,
          'valueReference': Reference.fromJson,
          'valueUri': FhirUri.fromJson,
          'valueExpression': FhirExpression.fromJson,
        },
      )!,
      exclude: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'exclude',
        FhirBoolean.fromJson,
      )!,
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
      ),
      method: (json['method'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      determinedByX:
          JsonParser.parsePolymorphic<DeterminedByXGroupCharacteristic>(
        json,
        {
          'determinedByReference': Reference.fromJson,
          'determinedByExpression': FhirExpression.fromJson,
        },
      ),
      offset: JsonParser.parseObject<CodeableConcept>(
        json,
        'offset',
        CodeableConcept.fromJson,
      ),
      instancesX: JsonParser.parsePolymorphic<InstancesXGroupCharacteristic>(
        json,
        {
          'instancesUnsignedInt': FhirUnsignedInt.fromJson,
          'instancesRange': Range.fromJson,
        },
      ),
      durationX: JsonParser.parsePolymorphic<DurationXGroupCharacteristic>(
        json,
        {
          'durationDuration': FhirDuration.fromJson,
          'durationRange': Range.fromJson,
        },
      ),
      period: JsonParser.parseObject<Period>(
        json,
        'period',
        Period.fromJson,
      ),
      timing: (json['timing'] as List<dynamic>?)
          ?.map<RelativeTime>(
            (v) => RelativeTime.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [GroupCharacteristic]
  /// from a [String] or [YamlMap] object
  factory GroupCharacteristic.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return GroupCharacteristic.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return GroupCharacteristic.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'GroupCharacteristic '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [GroupCharacteristic]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory GroupCharacteristic.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return GroupCharacteristic.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'GroupCharacteristic';

  /// [code]
  /// A code that identifies the kind of trait being asserted.
  final CodeableConcept code;

  /// [valueX]
  /// The value of the trait that holds (or does not hold - see 'exclude')
  /// for members of the group.
  final ValueXGroupCharacteristic valueX;

  /// Getter for [valueCodeableConcept] as a CodeableConcept
  CodeableConcept? get valueCodeableConcept => valueX.isAs<CodeableConcept>();

  /// Getter for [valueBoolean] as a FhirBoolean
  FhirBoolean? get valueBoolean => valueX.isAs<FhirBoolean>();

  /// Getter for [valueQuantity] as a Quantity
  Quantity? get valueQuantity => valueX.isAs<Quantity>();

  /// Getter for [valueRange] as a Range
  Range? get valueRange => valueX.isAs<Range>();

  /// Getter for [valueReference] as a Reference
  Reference? get valueReference => valueX.isAs<Reference>();

  /// Getter for [valueUri] as a FhirUri
  FhirUri? get valueUri => valueX.isAs<FhirUri>();

  /// Getter for [valueExpression] as a FhirExpression
  FhirExpression? get valueExpression => valueX.isAs<FhirExpression>();

  /// [exclude]
  /// If true, indicates the characteristic is one that is NOT held by
  /// members of the group.
  final FhirBoolean exclude;

  /// [description]
  /// A short, natural language description of the characteristic that could
  /// be used to communicate the criteria to an end-user.
  final FhirMarkdown? description;

  /// [method]
  /// Method for how the characteristic value was determined.
  final List<CodeableConcept>? method;

  /// [determinedByX]
  /// Defines the characteristic (without using type and value) by either a
  /// Reference or an Expression.
  final DeterminedByXGroupCharacteristic? determinedByX;

  /// Getter for [determinedByReference] as a Reference
  Reference? get determinedByReference => determinedByX?.isAs<Reference>();

  /// Getter for [determinedByExpression] as a FhirExpression
  FhirExpression? get determinedByExpression =>
      determinedByX?.isAs<FhirExpression>();

  /// [offset]
  /// Defines the reference point for comparison when other than 0.
  final CodeableConcept? offset;

  /// [instancesX]
  /// Number of occurrences meeting the characteristic.
  final InstancesXGroupCharacteristic? instancesX;

  /// Getter for [instancesUnsignedInt] as a FhirUnsignedInt
  FhirUnsignedInt? get instancesUnsignedInt =>
      instancesX?.isAs<FhirUnsignedInt>();

  /// Getter for [instancesRange] as a Range
  Range? get instancesRange => instancesX?.isAs<Range>();

  /// [durationX]
  /// Length of time in which the characteristic is met.
  final DurationXGroupCharacteristic? durationX;

  /// Getter for [durationDuration] as a FhirDuration
  FhirDuration? get durationDuration => durationX?.isAs<FhirDuration>();

  /// Getter for [durationRange] as a Range
  Range? get durationRange => durationX?.isAs<Range>();

  /// [period]
  /// The period over which the characteristic is tested; e.g. the patient
  /// had an operation during the month of June.
  final Period? period;

  /// [timing]
  /// Timing in which the characteristic is determined.
  final List<RelativeTime>? timing;
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
      'code',
      code,
    );
    final valueXFhirType = valueX.fhirType;
    addField(
      'value${valueXFhirType.capitalize()}',
      valueX,
    );

    addField(
      'exclude',
      exclude,
    );
    addField(
      'description',
      description,
    );
    addField(
      'method',
      method,
    );
    if (determinedByX != null) {
      final fhirType = determinedByX!.fhirType;
      addField(
        'determinedBy${fhirType.capitalize()}',
        determinedByX,
      );
    }

    addField(
      'offset',
      offset,
    );
    if (instancesX != null) {
      final fhirType = instancesX!.fhirType;
      addField(
        'instances${fhirType.capitalize()}',
        instancesX,
      );
    }

    if (durationX != null) {
      final fhirType = durationX!.fhirType;
      addField(
        'duration${fhirType.capitalize()}',
        durationX,
      );
    }

    addField(
      'period',
      period,
    );
    addField(
      'timing',
      timing,
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
      'code',
      'valueX',
      'exclude',
      'description',
      'method',
      'determinedByX',
      'offset',
      'instancesX',
      'durationX',
      'period',
      'timing',
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
      case 'code':
        fields.add(code);
      case 'value':
        fields.add(valueX);
      case 'valueX':
        fields.add(valueX);
      case 'valueCodeableConcept':
        if (valueX is CodeableConcept) {
          fields.add(valueX);
        }
      case 'valueBoolean':
        if (valueX is FhirBoolean) {
          fields.add(valueX);
        }
      case 'valueQuantity':
        if (valueX is Quantity) {
          fields.add(valueX);
        }
      case 'valueRange':
        if (valueX is Range) {
          fields.add(valueX);
        }
      case 'valueReference':
        if (valueX is Reference) {
          fields.add(valueX);
        }
      case 'valueUri':
        if (valueX is FhirUri) {
          fields.add(valueX);
        }
      case 'valueExpression':
        if (valueX is FhirExpression) {
          fields.add(valueX);
        }
      case 'exclude':
        fields.add(exclude);
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'method':
        if (method != null) {
          fields.addAll(method!);
        }
      case 'determinedBy':
        if (determinedByX != null) {
          fields.add(determinedByX!);
        }
      case 'determinedByX':
        if (determinedByX != null) {
          fields.add(determinedByX!);
        }
      case 'determinedByReference':
        if (determinedByX is Reference) {
          fields.add(determinedByX!);
        }
      case 'determinedByExpression':
        if (determinedByX is FhirExpression) {
          fields.add(determinedByX!);
        }
      case 'offset':
        if (offset != null) {
          fields.add(offset!);
        }
      case 'instances':
        if (instancesX != null) {
          fields.add(instancesX!);
        }
      case 'instancesX':
        if (instancesX != null) {
          fields.add(instancesX!);
        }
      case 'instancesUnsignedInt':
        if (instancesX is FhirUnsignedInt) {
          fields.add(instancesX!);
        }
      case 'instancesRange':
        if (instancesX is Range) {
          fields.add(instancesX!);
        }
      case 'duration':
        if (durationX != null) {
          fields.add(durationX!);
        }
      case 'durationX':
        if (durationX != null) {
          fields.add(durationX!);
        }
      case 'durationDuration':
        if (durationX is FhirDuration) {
          fields.add(durationX!);
        }
      case 'durationRange':
        if (durationX is Range) {
          fields.add(durationX!);
        }
      case 'period':
        if (period != null) {
          fields.add(period!);
        }
      case 'timing':
        if (timing != null) {
          fields.addAll(timing!);
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
  GroupCharacteristic clone() => copyWith();

  /// Copy function for [GroupCharacteristic]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $GroupCharacteristicCopyWith<GroupCharacteristic> get copyWith =>
      _$GroupCharacteristicCopyWithImpl<GroupCharacteristic>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! GroupCharacteristic) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      code,
      o.code,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      valueX,
      o.valueX,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      exclude,
      o.exclude,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<CodeableConcept>(
      method,
      o.method,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      determinedByX,
      o.determinedByX,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      offset,
      o.offset,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      instancesX,
      o.instancesX,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      durationX,
      o.durationX,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      period,
      o.period,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<RelativeTime>(
      timing,
      o.timing,
    )) {
      return false;
    }
    return true;
  }
}

/// [GroupMember]
/// Identifies the resource instances that are members of the group.
class GroupMember extends BackboneElement {
  /// Primary constructor for
  /// [GroupMember]

  const GroupMember({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.entity,
    this.involvement,
    this.period,
    this.inactive,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory GroupMember.fromJson(
    Map<String, dynamic> json,
  ) {
    return GroupMember(
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
      entity: JsonParser.parseObject<Reference>(
        json,
        'entity',
        Reference.fromJson,
      )!,
      involvement: (json['involvement'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      period: JsonParser.parseObject<Period>(
        json,
        'period',
        Period.fromJson,
      ),
      inactive: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'inactive',
        FhirBoolean.fromJson,
      ),
    );
  }

  /// Deserialize [GroupMember]
  /// from a [String] or [YamlMap] object
  factory GroupMember.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return GroupMember.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return GroupMember.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'GroupMember '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [GroupMember]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory GroupMember.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return GroupMember.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'GroupMember';

  /// [entity]
  /// A reference to the entity that is a member of the group. Must be
  /// consistent with Group.type. If the entity is another group, then the
  /// type must be the same.
  final Reference entity;

  /// [involvement]
  /// A code that describes how a user is involved in the group. Some groups
  /// (e.g. exposure-group) typically don't have variance between members, or
  /// it is not tracked, while for other groups (e.g. family, household) this
  /// may be meaningful.
  final List<CodeableConcept>? involvement;

  /// [period]
  /// The period that the member was in the group, if known.
  final Period? period;

  /// [inactive]
  /// A flag to indicate that the member is no longer in the group, but
  /// previously may have been a member.
  final FhirBoolean? inactive;
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
      'entity',
      entity,
    );
    addField(
      'involvement',
      involvement,
    );
    addField(
      'period',
      period,
    );
    addField(
      'inactive',
      inactive,
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
      'entity',
      'involvement',
      'period',
      'inactive',
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
      case 'entity':
        fields.add(entity);
      case 'involvement':
        if (involvement != null) {
          fields.addAll(involvement!);
        }
      case 'period':
        if (period != null) {
          fields.add(period!);
        }
      case 'inactive':
        if (inactive != null) {
          fields.add(inactive!);
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
  GroupMember clone() => copyWith();

  /// Copy function for [GroupMember]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $GroupMemberCopyWith<GroupMember> get copyWith =>
      _$GroupMemberCopyWithImpl<GroupMember>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! GroupMember) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      entity,
      o.entity,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<CodeableConcept>(
      involvement,
      o.involvement,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      period,
      o.period,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      inactive,
      o.inactive,
    )) {
      return false;
    }
    return true;
  }
}
