import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart'
    show
        FhirGroup,
        GroupCharacteristic,
        GroupMember,
        R6ResourceType,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r6_mapping/fhir_r6_mapping.dart';
import 'package:yaml/yaml.dart';

/// [FhirGroupBuilder]
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
class FhirGroupBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [FhirGroupBuilder]

  FhirGroupBuilder({
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
    VersionAlgorithmXGroupBuilder? versionAlgorithmX,
    FhirStringBuilder? versionAlgorithmString,
    CodingBuilder? versionAlgorithmCoding,
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
    this.membership,
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
          objectPath: 'Group',
          resourceType: R6ResourceType.FhirGroup,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory FhirGroupBuilder.empty() => FhirGroupBuilder(
        membership: GroupMembershipBasisBuilder.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory FhirGroupBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Group';
    return FhirGroupBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMetaBuilder>(
        json,
        'meta',
        FhirMetaBuilder.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'implicitRules',
        FhirUriBuilder.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<AllLanguagesBuilder>(
        json,
        'language',
        AllLanguagesBuilder.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parseObject<NarrativeBuilder>(
        json,
        'text',
        NarrativeBuilder.fromJson,
        '$objectPath.text',
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<ResourceBuilder>(
            (v) => ResourceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contained',
              },
            ),
          )
          .toList(),
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
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      url: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'url',
        FhirUriBuilder.fromJson,
        '$objectPath.url',
      ),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<IdentifierBuilder>(
            (v) => IdentifierBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.identifier',
              },
            ),
          )
          .toList(),
      version: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'version',
        FhirStringBuilder.fromJson,
        '$objectPath.version',
      ),
      versionAlgorithmX:
          JsonParser.parsePolymorphic<VersionAlgorithmXGroupBuilder>(
        json,
        {
          'versionAlgorithmString': FhirStringBuilder.fromJson,
          'versionAlgorithmCoding': CodingBuilder.fromJson,
        },
        objectPath,
      ),
      name: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'name',
        FhirStringBuilder.fromJson,
        '$objectPath.name',
      ),
      title: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'title',
        FhirStringBuilder.fromJson,
        '$objectPath.title',
      ),
      status: JsonParser.parsePrimitive<PublicationStatusBuilder>(
        json,
        'status',
        PublicationStatusBuilder.fromJson,
        '$objectPath.status',
      ),
      experimental: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'experimental',
        FhirBooleanBuilder.fromJson,
        '$objectPath.experimental',
      ),
      date: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'date',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.date',
      ),
      publisher: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'publisher',
        FhirStringBuilder.fromJson,
        '$objectPath.publisher',
      ),
      contact: (json['contact'] as List<dynamic>?)
          ?.map<ContactDetailBuilder>(
            (v) => ContactDetailBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contact',
              },
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'description',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.description',
      ),
      useContext: (json['useContext'] as List<dynamic>?)
          ?.map<UsageContextBuilder>(
            (v) => UsageContextBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.useContext',
              },
            ),
          )
          .toList(),
      purpose: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'purpose',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.purpose',
      ),
      copyright: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'copyright',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.copyright',
      ),
      copyrightLabel: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'copyrightLabel',
        FhirStringBuilder.fromJson,
        '$objectPath.copyrightLabel',
      ),
      type: JsonParser.parsePrimitive<GroupTypeBuilder>(
        json,
        'type',
        GroupTypeBuilder.fromJson,
        '$objectPath.type',
      ),
      membership: JsonParser.parsePrimitive<GroupMembershipBasisBuilder>(
        json,
        'membership',
        GroupMembershipBasisBuilder.fromJson,
        '$objectPath.membership',
      ),
      code: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'code',
        CodeableConceptBuilder.fromJson,
        '$objectPath.code',
      ),
      quantity: JsonParser.parsePrimitive<FhirUnsignedIntBuilder>(
        json,
        'quantity',
        FhirUnsignedIntBuilder.fromJson,
        '$objectPath.quantity',
      ),
      managingEntity: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'managingEntity',
        ReferenceBuilder.fromJson,
        '$objectPath.managingEntity',
      ),
      combinationMethod:
          JsonParser.parsePrimitive<GroupCharacteristicCombinationBuilder>(
        json,
        'combinationMethod',
        GroupCharacteristicCombinationBuilder.fromJson,
        '$objectPath.combinationMethod',
      ),
      combinationThreshold: JsonParser.parsePrimitive<FhirPositiveIntBuilder>(
        json,
        'combinationThreshold',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.combinationThreshold',
      ),
      characteristic: (json['characteristic'] as List<dynamic>?)
          ?.map<GroupCharacteristicBuilder>(
            (v) => GroupCharacteristicBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.characteristic',
              },
            ),
          )
          .toList(),
      member: (json['member'] as List<dynamic>?)
          ?.map<GroupMemberBuilder>(
            (v) => GroupMemberBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.member',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [FhirGroupBuilder]
  /// from a [String] or [YamlMap] object
  factory FhirGroupBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return FhirGroupBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return FhirGroupBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'FhirGroupBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [FhirGroupBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory FhirGroupBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return FhirGroupBuilder.fromJson(json);
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
  FhirUriBuilder? url;

  /// [identifier]
  /// Business identifiers assigned to this participant by one of the
  /// applications involved. These identifiers remain constant as the
  /// resource is updated and propagates from server to server.
  List<IdentifierBuilder>? identifier;

  /// [version]
  /// The identifier that is used to identify this version of the Group when
  /// it is referenced in a specification, model, design or instance. This is
  /// an arbitrary value managed by the Group author and is not expected to
  /// be globally unique. For example, it might be a timestamp (e.g.
  /// yyyymmdd) if a managed version is not available. There is also no
  /// expectation that versions can be placed in a lexicographical sequence
  /// without additional knowledge.
  FhirStringBuilder? version;

  /// [versionAlgorithmX]
  /// Indicates the mechanism used to compare versions to determine which is
  /// more current.
  VersionAlgorithmXGroupBuilder? versionAlgorithmX;

  /// Getter for [versionAlgorithmString] as a FhirStringBuilder
  FhirStringBuilder? get versionAlgorithmString =>
      versionAlgorithmX?.isAs<FhirStringBuilder>();

  /// Getter for [versionAlgorithmCoding] as a CodingBuilder
  CodingBuilder? get versionAlgorithmCoding =>
      versionAlgorithmX?.isAs<CodingBuilder>();

  /// [name]
  /// A label assigned to the group for human identification and
  /// communication.
  FhirStringBuilder? name;

  /// [title]
  /// A short, descriptive, user-friendly title for the Group.
  FhirStringBuilder? title;

  /// [status]
  /// The current state of this Group.
  PublicationStatusBuilder? status;

  /// [experimental]
  /// A Boolean value to indicate that this Group is authored for testing
  /// purposes (or education/evaluation/marketing) and no version of this
  /// resource will ever be intended for genuine usage.
  FhirBooleanBuilder? experimental;

  /// [date]
  /// The date (and optionally time) when the Group was last significantly
  /// changed. The date must change when the business version changes and it
  /// must change if the status code changes. In addition, it should change
  /// when the substantive content of the Group changes.
  FhirDateTimeBuilder? date;

  /// [publisher]
  /// The name of the organization or individual responsible for the release
  /// and ongoing maintenance of the Group.
  FhirStringBuilder? publisher;

  /// [contact]
  /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  List<ContactDetailBuilder>? contact;

  /// [description]
  /// Explanation of what the group represents and how it is intended to be
  /// used.
  FhirMarkdownBuilder? description;

  /// [useContext]
  /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories
  /// (gender, age, ...) or may be references to specific programs (insurance
  /// plans, studies, ...) and may be used to assist with indexing and
  /// searching for appropriate Groups.
  List<UsageContextBuilder>? useContext;

  /// [purpose]
  /// Explanation of why this Group is needed and why it has been designed as
  /// it has.
  FhirMarkdownBuilder? purpose;

  /// [copyright]
  /// A copyright statement relating to the Group and/or its contents.
  /// Copyright statements are generally legal restrictions on the use and
  /// publishing of the Group.
  FhirMarkdownBuilder? copyright;

  /// [copyrightLabel]
  /// A short string (<50 characters), suitable for inclusion in a page
  /// footer that identifies the copyright holder, effective period, and
  /// optionally whether rights are resctricted. (e.g. 'All rights reserved',
  /// 'Some rights reserved').
  FhirStringBuilder? copyrightLabel;

  /// [type]
  /// Identifies the broad classification of the kind of resources the group
  /// includes.
  GroupTypeBuilder? type;

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
  GroupMembershipBasisBuilder? membership;

  /// [code]
  /// A code that describes the use of the group. The use of the group
  /// usually dictates what kind of entities can be members of the group.
  CodeableConceptBuilder? code;

  /// [quantity]
  /// A count of the number of resource instances that are part of the group.
  FhirUnsignedIntBuilder? quantity;

  /// [managingEntity]
  /// Entity responsible for defining and maintaining Group characteristics
  /// and/or registered members.
  ReferenceBuilder? managingEntity;

  /// [combinationMethod]
  /// Used to specify how two or more characteristics are combined.
  GroupCharacteristicCombinationBuilder? combinationMethod;

  /// [combinationThreshold]
  /// Provides the value of "n" when "at-least" or "at-most" codes are used
  /// for combinationMethod.
  FhirPositiveIntBuilder? combinationThreshold;

  /// [characteristic]
  /// Identifies traits whose presence r absence is shared by members of the
  /// group.
  List<GroupCharacteristicBuilder>? characteristic;

  /// [member]
  /// Identifies the resource instances that are members of the group.
  List<GroupMemberBuilder>? member;

  /// Converts a [FhirGroupBuilder]
  /// to [FhirGroup]
  @override
  FhirGroup build() => FhirGroup.fromJson(toJson());

  /// Converts a [FhirGroupBuilder]
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

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    addField('meta', meta);
    addField('implicitRules', implicitRules);
    addField('language', language);
    addField('text', text);
    addField('contained', contained);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('url', url);
    addField('identifier', identifier);
    addField('version', version);
    if (versionAlgorithmX != null) {
      final fhirType = versionAlgorithmX!.fhirType;
      addField(
        'versionAlgorithm${fhirType.capitalizeFirstLetter()}',
        versionAlgorithmX,
      );
    }

    addField('name', name);
    addField('title', title);
    addField('status', status);
    addField('experimental', experimental);
    addField('date', date);
    addField('publisher', publisher);
    addField('contact', contact);
    addField('description', description);
    addField('useContext', useContext);
    addField('purpose', purpose);
    addField('copyright', copyright);
    addField('copyrightLabel', copyrightLabel);
    addField('type', type);
    addField('membership', membership);
    addField('code', code);
    addField('quantity', quantity);
    addField('managingEntity', managingEntity);
    addField('combinationMethod', combinationMethod);
    addField('combinationThreshold', combinationThreshold);
    addField('characteristic', characteristic);
    addField('member', member);
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
        if (versionAlgorithmX is FhirStringBuilder) {
          fields.add(versionAlgorithmX!);
        }
      case 'versionAlgorithmCoding':
        if (versionAlgorithmX is CodingBuilder) {
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
        if (membership != null) {
          fields.add(membership!);
        }
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
      case 'meta':
        {
          if (child is FhirMetaBuilder) {
            meta = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'implicitRules':
        {
          if (child is FhirUriBuilder) {
            implicitRules = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                implicitRules = converted;
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
      case 'text':
        {
          if (child is NarrativeBuilder) {
            text = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'contained':
        {
          if (child is List<ResourceBuilder>) {
            // Replace or create new list
            contained = child;
            return;
          } else if (child is ResourceBuilder) {
            // Add single element to existing list or create new list
            contained = [
              ...(contained ?? []),
              child,
            ];
            return;
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
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'url':
        {
          if (child is FhirUriBuilder) {
            url = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
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
      case 'identifier':
        {
          if (child is List<IdentifierBuilder>) {
            // Replace or create new list
            identifier = child;
            return;
          } else if (child is IdentifierBuilder) {
            // Add single element to existing list or create new list
            identifier = [
              ...(identifier ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'version':
        {
          if (child is FhirStringBuilder) {
            version = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                version = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'versionAlgorithm':
      case 'versionAlgorithmX':
        {
          if (child is VersionAlgorithmXGroupBuilder) {
            versionAlgorithmX = child;
            return;
          } else {
            if (child is FhirStringBuilder) {
              versionAlgorithmX = child;
              return;
            }
            if (child is CodingBuilder) {
              versionAlgorithmX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'versionAlgorithmString':
        {
          if (child is FhirStringBuilder) {
            versionAlgorithmX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'versionAlgorithmCoding':
        {
          if (child is CodingBuilder) {
            versionAlgorithmX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'name':
        {
          if (child is FhirStringBuilder) {
            name = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                name = converted;
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
      case 'status':
        {
          if (child is PublicationStatusBuilder) {
            status = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = PublicationStatusBuilder(stringValue);
                status = converted;
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
      case 'experimental':
        {
          if (child is FhirBooleanBuilder) {
            experimental = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                experimental = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'date':
        {
          if (child is FhirDateTimeBuilder) {
            date = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                date = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'publisher':
        {
          if (child is FhirStringBuilder) {
            publisher = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                publisher = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'contact':
        {
          if (child is List<ContactDetailBuilder>) {
            // Replace or create new list
            contact = child;
            return;
          } else if (child is ContactDetailBuilder) {
            // Add single element to existing list or create new list
            contact = [
              ...(contact ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'description':
        {
          if (child is FhirMarkdownBuilder) {
            description = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
              if (converted != null) {
                description = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'useContext':
        {
          if (child is List<UsageContextBuilder>) {
            // Replace or create new list
            useContext = child;
            return;
          } else if (child is UsageContextBuilder) {
            // Add single element to existing list or create new list
            useContext = [
              ...(useContext ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'purpose':
        {
          if (child is FhirMarkdownBuilder) {
            purpose = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
              if (converted != null) {
                purpose = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'copyright':
        {
          if (child is FhirMarkdownBuilder) {
            copyright = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
              if (converted != null) {
                copyright = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'copyrightLabel':
        {
          if (child is FhirStringBuilder) {
            copyrightLabel = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                copyrightLabel = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is GroupTypeBuilder) {
            type = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = GroupTypeBuilder(stringValue);
                type = converted;
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
      case 'membership':
        {
          if (child is GroupMembershipBasisBuilder) {
            membership = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = GroupMembershipBasisBuilder(stringValue);
                membership = converted;
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
      case 'code':
        {
          if (child is CodeableConceptBuilder) {
            code = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'quantity':
        {
          if (child is FhirUnsignedIntBuilder) {
            quantity = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirUnsignedIntBuilder.tryParse(numValue);
                if (converted != null) {
                  quantity = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'managingEntity':
        {
          if (child is ReferenceBuilder) {
            managingEntity = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'combinationMethod':
        {
          if (child is GroupCharacteristicCombinationBuilder) {
            combinationMethod = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted =
                    GroupCharacteristicCombinationBuilder(stringValue);
                combinationMethod = converted;
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
      case 'combinationThreshold':
        {
          if (child is FhirPositiveIntBuilder) {
            combinationThreshold = child;
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
                  combinationThreshold = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'characteristic':
        {
          if (child is List<GroupCharacteristicBuilder>) {
            // Replace or create new list
            characteristic = child;
            return;
          } else if (child is GroupCharacteristicBuilder) {
            // Add single element to existing list or create new list
            characteristic = [
              ...(characteristic ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'member':
        {
          if (child is List<GroupMemberBuilder>) {
            // Replace or create new list
            member = child;
            return;
          } else if (child is GroupMemberBuilder) {
            // Add single element to existing list or create new list
            member = [
              ...(member ?? []),
              child,
            ];
            return;
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
      case 'meta':
        return ['FhirMetaBuilder'];
      case 'implicitRules':
        return ['FhirUriBuilder'];
      case 'language':
        return ['FhirCodeEnumBuilder'];
      case 'text':
        return ['NarrativeBuilder'];
      case 'contained':
        return ['ResourceBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'url':
        return ['FhirUriBuilder'];
      case 'identifier':
        return ['IdentifierBuilder'];
      case 'version':
        return ['FhirStringBuilder'];
      case 'versionAlgorithm':
      case 'versionAlgorithmX':
        return [
          'FhirStringBuilder',
          'CodingBuilder',
        ];
      case 'versionAlgorithmString':
        return ['FhirStringBuilder'];
      case 'versionAlgorithmCoding':
        return ['CodingBuilder'];
      case 'name':
        return ['FhirStringBuilder'];
      case 'title':
        return ['FhirStringBuilder'];
      case 'status':
        return ['FhirCodeEnumBuilder'];
      case 'experimental':
        return ['FhirBooleanBuilder'];
      case 'date':
        return ['FhirDateTimeBuilder'];
      case 'publisher':
        return ['FhirStringBuilder'];
      case 'contact':
        return ['ContactDetailBuilder'];
      case 'description':
        return ['FhirMarkdownBuilder'];
      case 'useContext':
        return ['UsageContextBuilder'];
      case 'purpose':
        return ['FhirMarkdownBuilder'];
      case 'copyright':
        return ['FhirMarkdownBuilder'];
      case 'copyrightLabel':
        return ['FhirStringBuilder'];
      case 'type':
        return ['FhirCodeEnumBuilder'];
      case 'membership':
        return ['FhirCodeEnumBuilder'];
      case 'code':
        return ['CodeableConceptBuilder'];
      case 'quantity':
        return ['FhirUnsignedIntBuilder'];
      case 'managingEntity':
        return ['ReferenceBuilder'];
      case 'combinationMethod':
        return ['FhirCodeEnumBuilder'];
      case 'combinationThreshold':
        return ['FhirPositiveIntBuilder'];
      case 'characteristic':
        return ['GroupCharacteristicBuilder'];
      case 'member':
        return ['GroupMemberBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [FhirGroupBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'meta':
        {
          meta = FhirMetaBuilder.empty();
          return;
        }
      case 'implicitRules':
        {
          implicitRules = FhirUriBuilder.empty();
          return;
        }
      case 'language':
        {
          language = AllLanguagesBuilder.empty();
          return;
        }
      case 'text':
        {
          text = NarrativeBuilder.empty();
          return;
        }
      case 'contained':
        {
          contained = <ResourceBuilder>[];
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'url':
        {
          url = FhirUriBuilder.empty();
          return;
        }
      case 'identifier':
        {
          identifier = <IdentifierBuilder>[];
          return;
        }
      case 'version':
        {
          version = FhirStringBuilder.empty();
          return;
        }
      case 'versionAlgorithm':
      case 'versionAlgorithmX':
      case 'versionAlgorithmString':
        {
          versionAlgorithmX = FhirStringBuilder.empty();
          return;
        }
      case 'versionAlgorithmCoding':
        {
          versionAlgorithmX = CodingBuilder.empty();
          return;
        }
      case 'name':
        {
          name = FhirStringBuilder.empty();
          return;
        }
      case 'title':
        {
          title = FhirStringBuilder.empty();
          return;
        }
      case 'status':
        {
          status = PublicationStatusBuilder.empty();
          return;
        }
      case 'experimental':
        {
          experimental = FhirBooleanBuilder.empty();
          return;
        }
      case 'date':
        {
          date = FhirDateTimeBuilder.empty();
          return;
        }
      case 'publisher':
        {
          publisher = FhirStringBuilder.empty();
          return;
        }
      case 'contact':
        {
          contact = <ContactDetailBuilder>[];
          return;
        }
      case 'description':
        {
          description = FhirMarkdownBuilder.empty();
          return;
        }
      case 'useContext':
        {
          useContext = <UsageContextBuilder>[];
          return;
        }
      case 'purpose':
        {
          purpose = FhirMarkdownBuilder.empty();
          return;
        }
      case 'copyright':
        {
          copyright = FhirMarkdownBuilder.empty();
          return;
        }
      case 'copyrightLabel':
        {
          copyrightLabel = FhirStringBuilder.empty();
          return;
        }
      case 'type':
        {
          type = GroupTypeBuilder.empty();
          return;
        }
      case 'membership':
        {
          membership = GroupMembershipBasisBuilder.empty();
          return;
        }
      case 'code':
        {
          code = CodeableConceptBuilder.empty();
          return;
        }
      case 'quantity':
        {
          quantity = FhirUnsignedIntBuilder.empty();
          return;
        }
      case 'managingEntity':
        {
          managingEntity = ReferenceBuilder.empty();
          return;
        }
      case 'combinationMethod':
        {
          combinationMethod = GroupCharacteristicCombinationBuilder.empty();
          return;
        }
      case 'combinationThreshold':
        {
          combinationThreshold = FhirPositiveIntBuilder.empty();
          return;
        }
      case 'characteristic':
        {
          characteristic = <GroupCharacteristicBuilder>[];
          return;
        }
      case 'member':
        {
          member = <GroupMemberBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  FhirGroupBuilder clone() => throw UnimplementedError();
  @override
  FhirGroupBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    AllLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirUriBuilder? url,
    List<IdentifierBuilder>? identifier,
    FhirStringBuilder? version,
    VersionAlgorithmXGroupBuilder? versionAlgorithmX,
    FhirStringBuilder? name,
    FhirStringBuilder? title,
    PublicationStatusBuilder? status,
    FhirBooleanBuilder? experimental,
    FhirDateTimeBuilder? date,
    FhirStringBuilder? publisher,
    List<ContactDetailBuilder>? contact,
    FhirMarkdownBuilder? description,
    List<UsageContextBuilder>? useContext,
    FhirMarkdownBuilder? purpose,
    FhirMarkdownBuilder? copyright,
    FhirStringBuilder? copyrightLabel,
    GroupTypeBuilder? type,
    GroupMembershipBasisBuilder? membership,
    CodeableConceptBuilder? code,
    FhirUnsignedIntBuilder? quantity,
    ReferenceBuilder? managingEntity,
    GroupCharacteristicCombinationBuilder? combinationMethod,
    FhirPositiveIntBuilder? combinationThreshold,
    List<GroupCharacteristicBuilder>? characteristic,
    List<GroupMemberBuilder>? member,
    FhirStringBuilder? versionAlgorithmString,
    CodingBuilder? versionAlgorithmCoding,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = FhirGroupBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      url: url ?? this.url,
      identifier: identifier ?? this.identifier,
      version: version ?? this.version,
      versionAlgorithmX: versionAlgorithmX ??
          versionAlgorithmString ??
          versionAlgorithmCoding ??
          this.versionAlgorithmX,
      name: name ?? this.name,
      title: title ?? this.title,
      status: status ?? this.status,
      experimental: experimental ?? this.experimental,
      date: date ?? this.date,
      publisher: publisher ?? this.publisher,
      contact: contact ?? this.contact,
      description: description ?? this.description,
      useContext: useContext ?? this.useContext,
      purpose: purpose ?? this.purpose,
      copyright: copyright ?? this.copyright,
      copyrightLabel: copyrightLabel ?? this.copyrightLabel,
      type: type ?? this.type,
      membership: membership ?? this.membership,
      code: code ?? this.code,
      quantity: quantity ?? this.quantity,
      managingEntity: managingEntity ?? this.managingEntity,
      combinationMethod: combinationMethod ?? this.combinationMethod,
      combinationThreshold: combinationThreshold ?? this.combinationThreshold,
      characteristic: characteristic ?? this.characteristic,
      member: member ?? this.member,
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
    if (o is! FhirGroupBuilder) {
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
    if (!listEquals<ResourceBuilder>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      url,
      o.url,
    )) {
      return false;
    }
    if (!listEquals<IdentifierBuilder>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      version,
      o.version,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      versionAlgorithmX,
      o.versionAlgorithmX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      name,
      o.name,
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
      status,
      o.status,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      experimental,
      o.experimental,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      date,
      o.date,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      publisher,
      o.publisher,
    )) {
      return false;
    }
    if (!listEquals<ContactDetailBuilder>(
      contact,
      o.contact,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!listEquals<UsageContextBuilder>(
      useContext,
      o.useContext,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      purpose,
      o.purpose,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      copyright,
      o.copyright,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      copyrightLabel,
      o.copyrightLabel,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      membership,
      o.membership,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      code,
      o.code,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      quantity,
      o.quantity,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      managingEntity,
      o.managingEntity,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      combinationMethod,
      o.combinationMethod,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      combinationThreshold,
      o.combinationThreshold,
    )) {
      return false;
    }
    if (!listEquals<GroupCharacteristicBuilder>(
      characteristic,
      o.characteristic,
    )) {
      return false;
    }
    if (!listEquals<GroupMemberBuilder>(
      member,
      o.member,
    )) {
      return false;
    }
    return true;
  }
}

/// [GroupCharacteristicBuilder]
/// Identifies traits whose presence r absence is shared by members of the
/// group.
class GroupCharacteristicBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [GroupCharacteristicBuilder]

  GroupCharacteristicBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    ValueXGroupCharacteristicBuilder? valueX,
    CodeableConceptBuilder? valueCodeableConcept,
    FhirBooleanBuilder? valueBoolean,
    QuantityBuilder? valueQuantity,
    RangeBuilder? valueRange,
    ReferenceBuilder? valueReference,
    FhirUriBuilder? valueUri,
    FhirExpressionBuilder? valueExpression,
    this.exclude,
    this.description,
    this.method,
    DeterminedByXGroupCharacteristicBuilder? determinedByX,
    ReferenceBuilder? determinedByReference,
    FhirExpressionBuilder? determinedByExpression,
    this.offset,
    InstancesXGroupCharacteristicBuilder? instancesX,
    FhirUnsignedIntBuilder? instancesUnsignedInt,
    RangeBuilder? instancesRange,
    DurationXGroupCharacteristicBuilder? durationX,
    FhirDurationBuilder? durationDuration,
    RangeBuilder? durationRange,
    this.period,
    this.timing,
    super.disallowExtensions,
  })  : valueX = valueX ??
            valueCodeableConcept ??
            valueBoolean ??
            valueQuantity ??
            valueRange ??
            valueReference ??
            valueUri ??
            valueExpression,
        determinedByX =
            determinedByX ?? determinedByReference ?? determinedByExpression,
        instancesX = instancesX ?? instancesUnsignedInt ?? instancesRange,
        durationX = durationX ?? durationDuration ?? durationRange,
        super(
          objectPath: 'Group.characteristic',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory GroupCharacteristicBuilder.empty() => GroupCharacteristicBuilder(
        code: CodeableConceptBuilder.empty(),
        valueX: CodeableConceptBuilder.empty(),
        exclude: FhirBooleanBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory GroupCharacteristicBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Group.characteristic';
    return GroupCharacteristicBuilder(
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
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      code: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'code',
        CodeableConceptBuilder.fromJson,
        '$objectPath.code',
      ),
      valueX: JsonParser.parsePolymorphic<ValueXGroupCharacteristicBuilder>(
        json,
        {
          'valueCodeableConcept': CodeableConceptBuilder.fromJson,
          'valueBoolean': FhirBooleanBuilder.fromJson,
          'valueQuantity': QuantityBuilder.fromJson,
          'valueRange': RangeBuilder.fromJson,
          'valueReference': ReferenceBuilder.fromJson,
          'valueUri': FhirUriBuilder.fromJson,
          'valueExpression': FhirExpressionBuilder.fromJson,
        },
        objectPath,
      ),
      exclude: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'exclude',
        FhirBooleanBuilder.fromJson,
        '$objectPath.exclude',
      ),
      description: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'description',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.description',
      ),
      method: (json['method'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.method',
              },
            ),
          )
          .toList(),
      determinedByX:
          JsonParser.parsePolymorphic<DeterminedByXGroupCharacteristicBuilder>(
        json,
        {
          'determinedByReference': ReferenceBuilder.fromJson,
          'determinedByExpression': FhirExpressionBuilder.fromJson,
        },
        objectPath,
      ),
      offset: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'offset',
        CodeableConceptBuilder.fromJson,
        '$objectPath.offset',
      ),
      instancesX:
          JsonParser.parsePolymorphic<InstancesXGroupCharacteristicBuilder>(
        json,
        {
          'instancesUnsignedInt': FhirUnsignedIntBuilder.fromJson,
          'instancesRange': RangeBuilder.fromJson,
        },
        objectPath,
      ),
      durationX:
          JsonParser.parsePolymorphic<DurationXGroupCharacteristicBuilder>(
        json,
        {
          'durationDuration': FhirDurationBuilder.fromJson,
          'durationRange': RangeBuilder.fromJson,
        },
        objectPath,
      ),
      period: JsonParser.parseObject<PeriodBuilder>(
        json,
        'period',
        PeriodBuilder.fromJson,
        '$objectPath.period',
      ),
      timing: (json['timing'] as List<dynamic>?)
          ?.map<RelativeTimeBuilder>(
            (v) => RelativeTimeBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.timing',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [GroupCharacteristicBuilder]
  /// from a [String] or [YamlMap] object
  factory GroupCharacteristicBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return GroupCharacteristicBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return GroupCharacteristicBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'GroupCharacteristicBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [GroupCharacteristicBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory GroupCharacteristicBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return GroupCharacteristicBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'GroupCharacteristic';

  /// [code]
  /// A code that identifies the kind of trait being asserted.
  CodeableConceptBuilder? code;

  /// [valueX]
  /// The value of the trait that holds (or does not hold - see 'exclude')
  /// for members of the group.
  ValueXGroupCharacteristicBuilder? valueX;

  /// Getter for [valueCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get valueCodeableConcept =>
      valueX?.isAs<CodeableConceptBuilder>();

  /// Getter for [valueBoolean] as a FhirBooleanBuilder
  FhirBooleanBuilder? get valueBoolean => valueX?.isAs<FhirBooleanBuilder>();

  /// Getter for [valueQuantity] as a QuantityBuilder
  QuantityBuilder? get valueQuantity => valueX?.isAs<QuantityBuilder>();

  /// Getter for [valueRange] as a RangeBuilder
  RangeBuilder? get valueRange => valueX?.isAs<RangeBuilder>();

  /// Getter for [valueReference] as a ReferenceBuilder
  ReferenceBuilder? get valueReference => valueX?.isAs<ReferenceBuilder>();

  /// Getter for [valueUri] as a FhirUriBuilder
  FhirUriBuilder? get valueUri => valueX?.isAs<FhirUriBuilder>();

  /// Getter for [valueExpression] as a FhirExpressionBuilder
  FhirExpressionBuilder? get valueExpression =>
      valueX?.isAs<FhirExpressionBuilder>();

  /// [exclude]
  /// If true, indicates the characteristic is one that is NOT held by
  /// members of the group.
  FhirBooleanBuilder? exclude;

  /// [description]
  /// A short, natural language description of the characteristic that could
  /// be used to communicate the criteria to an end-user.
  FhirMarkdownBuilder? description;

  /// [method]
  /// Method for how the characteristic value was determined.
  List<CodeableConceptBuilder>? method;

  /// [determinedByX]
  /// Defines the characteristic (without using type and value) by either a
  /// Reference or an Expression.
  DeterminedByXGroupCharacteristicBuilder? determinedByX;

  /// Getter for [determinedByReference] as a ReferenceBuilder
  ReferenceBuilder? get determinedByReference =>
      determinedByX?.isAs<ReferenceBuilder>();

  /// Getter for [determinedByExpression] as a FhirExpressionBuilder
  FhirExpressionBuilder? get determinedByExpression =>
      determinedByX?.isAs<FhirExpressionBuilder>();

  /// [offset]
  /// Defines the reference point for comparison when other than 0.
  CodeableConceptBuilder? offset;

  /// [instancesX]
  /// Number of occurrences meeting the characteristic.
  InstancesXGroupCharacteristicBuilder? instancesX;

  /// Getter for [instancesUnsignedInt] as a FhirUnsignedIntBuilder
  FhirUnsignedIntBuilder? get instancesUnsignedInt =>
      instancesX?.isAs<FhirUnsignedIntBuilder>();

  /// Getter for [instancesRange] as a RangeBuilder
  RangeBuilder? get instancesRange => instancesX?.isAs<RangeBuilder>();

  /// [durationX]
  /// Length of time in which the characteristic is met.
  DurationXGroupCharacteristicBuilder? durationX;

  /// Getter for [durationDuration] as a FhirDurationBuilder
  FhirDurationBuilder? get durationDuration =>
      durationX?.isAs<FhirDurationBuilder>();

  /// Getter for [durationRange] as a RangeBuilder
  RangeBuilder? get durationRange => durationX?.isAs<RangeBuilder>();

  /// [period]
  /// The period over which the characteristic is tested; e.g. the patient
  /// had an operation during the month of June.
  PeriodBuilder? period;

  /// [timing]
  /// Timing in which the characteristic is determined.
  List<RelativeTimeBuilder>? timing;

  /// Converts a [GroupCharacteristicBuilder]
  /// to [GroupCharacteristic]
  @override
  GroupCharacteristic build() => GroupCharacteristic.fromJson(toJson());

  /// Converts a [GroupCharacteristicBuilder]
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
    addField('modifierExtension', modifierExtension);
    addField('code', code);
    if (valueX != null) {
      final fhirType = valueX!.fhirType;
      addField('value${fhirType.capitalizeFirstLetter()}', valueX);
    }

    addField('exclude', exclude);
    addField('description', description);
    addField('method', method);
    if (determinedByX != null) {
      final fhirType = determinedByX!.fhirType;
      addField(
        'determinedBy${fhirType.capitalizeFirstLetter()}',
        determinedByX,
      );
    }

    addField('offset', offset);
    if (instancesX != null) {
      final fhirType = instancesX!.fhirType;
      addField('instances${fhirType.capitalizeFirstLetter()}', instancesX);
    }

    if (durationX != null) {
      final fhirType = durationX!.fhirType;
      addField('duration${fhirType.capitalizeFirstLetter()}', durationX);
    }

    addField('period', period);
    addField('timing', timing);
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
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'value':
        if (valueX != null) {
          fields.add(valueX!);
        }
      case 'valueX':
        if (valueX != null) {
          fields.add(valueX!);
        }
      case 'valueCodeableConcept':
        if (valueX is CodeableConceptBuilder) {
          fields.add(valueX!);
        }
      case 'valueBoolean':
        if (valueX is FhirBooleanBuilder) {
          fields.add(valueX!);
        }
      case 'valueQuantity':
        if (valueX is QuantityBuilder) {
          fields.add(valueX!);
        }
      case 'valueRange':
        if (valueX is RangeBuilder) {
          fields.add(valueX!);
        }
      case 'valueReference':
        if (valueX is ReferenceBuilder) {
          fields.add(valueX!);
        }
      case 'valueUri':
        if (valueX is FhirUriBuilder) {
          fields.add(valueX!);
        }
      case 'valueExpression':
        if (valueX is FhirExpressionBuilder) {
          fields.add(valueX!);
        }
      case 'exclude':
        if (exclude != null) {
          fields.add(exclude!);
        }
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
        if (determinedByX is ReferenceBuilder) {
          fields.add(determinedByX!);
        }
      case 'determinedByExpression':
        if (determinedByX is FhirExpressionBuilder) {
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
        if (instancesX is FhirUnsignedIntBuilder) {
          fields.add(instancesX!);
        }
      case 'instancesRange':
        if (instancesX is RangeBuilder) {
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
        if (durationX is FhirDurationBuilder) {
          fields.add(durationX!);
        }
      case 'durationRange':
        if (durationX is RangeBuilder) {
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
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'code':
        {
          if (child is CodeableConceptBuilder) {
            code = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'value':
      case 'valueX':
        {
          if (child is ValueXGroupCharacteristicBuilder) {
            valueX = child;
            return;
          } else {
            if (child is CodeableConceptBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirBooleanBuilder) {
              valueX = child;
              return;
            }
            if (child is QuantityBuilder) {
              valueX = child;
              return;
            }
            if (child is RangeBuilder) {
              valueX = child;
              return;
            }
            if (child is ReferenceBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirUriBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirExpressionBuilder) {
              valueX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'valueCodeableConcept':
        {
          if (child is CodeableConceptBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueBoolean':
        {
          if (child is FhirBooleanBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueQuantity':
        {
          if (child is QuantityBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueRange':
        {
          if (child is RangeBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueReference':
        {
          if (child is ReferenceBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueUri':
        {
          if (child is FhirUriBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueExpression':
        {
          if (child is FhirExpressionBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'exclude':
        {
          if (child is FhirBooleanBuilder) {
            exclude = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                exclude = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'description':
        {
          if (child is FhirMarkdownBuilder) {
            description = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
              if (converted != null) {
                description = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'method':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            method = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            method = [
              ...(method ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'determinedBy':
      case 'determinedByX':
        {
          if (child is DeterminedByXGroupCharacteristicBuilder) {
            determinedByX = child;
            return;
          } else {
            if (child is ReferenceBuilder) {
              determinedByX = child;
              return;
            }
            if (child is FhirExpressionBuilder) {
              determinedByX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'determinedByReference':
        {
          if (child is ReferenceBuilder) {
            determinedByX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'determinedByExpression':
        {
          if (child is FhirExpressionBuilder) {
            determinedByX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'offset':
        {
          if (child is CodeableConceptBuilder) {
            offset = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'instances':
      case 'instancesX':
        {
          if (child is InstancesXGroupCharacteristicBuilder) {
            instancesX = child;
            return;
          } else {
            if (child is FhirUnsignedIntBuilder) {
              instancesX = child;
              return;
            }
            if (child is RangeBuilder) {
              instancesX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'instancesUnsignedInt':
        {
          if (child is FhirUnsignedIntBuilder) {
            instancesX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'instancesRange':
        {
          if (child is RangeBuilder) {
            instancesX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'duration':
      case 'durationX':
        {
          if (child is DurationXGroupCharacteristicBuilder) {
            durationX = child;
            return;
          } else {
            if (child is FhirDurationBuilder) {
              durationX = child;
              return;
            }
            if (child is RangeBuilder) {
              durationX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'durationDuration':
        {
          if (child is FhirDurationBuilder) {
            durationX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'durationRange':
        {
          if (child is RangeBuilder) {
            durationX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'period':
        {
          if (child is PeriodBuilder) {
            period = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'timing':
        {
          if (child is List<RelativeTimeBuilder>) {
            // Replace or create new list
            timing = child;
            return;
          } else if (child is RelativeTimeBuilder) {
            // Add single element to existing list or create new list
            timing = [
              ...(timing ?? []),
              child,
            ];
            return;
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
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'code':
        return ['CodeableConceptBuilder'];
      case 'value':
      case 'valueX':
        return [
          'CodeableConceptBuilder',
          'FhirBooleanBuilder',
          'QuantityBuilder',
          'RangeBuilder',
          'ReferenceBuilder',
          'FhirUriBuilder',
          'FhirExpressionBuilder',
        ];
      case 'valueCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'valueBoolean':
        return ['FhirBooleanBuilder'];
      case 'valueQuantity':
        return ['QuantityBuilder'];
      case 'valueRange':
        return ['RangeBuilder'];
      case 'valueReference':
        return ['ReferenceBuilder'];
      case 'valueUri':
        return ['FhirUriBuilder'];
      case 'valueExpression':
        return ['FhirExpressionBuilder'];
      case 'exclude':
        return ['FhirBooleanBuilder'];
      case 'description':
        return ['FhirMarkdownBuilder'];
      case 'method':
        return ['CodeableConceptBuilder'];
      case 'determinedBy':
      case 'determinedByX':
        return [
          'ReferenceBuilder',
          'FhirExpressionBuilder',
        ];
      case 'determinedByReference':
        return ['ReferenceBuilder'];
      case 'determinedByExpression':
        return ['FhirExpressionBuilder'];
      case 'offset':
        return ['CodeableConceptBuilder'];
      case 'instances':
      case 'instancesX':
        return [
          'FhirUnsignedIntBuilder',
          'RangeBuilder',
        ];
      case 'instancesUnsignedInt':
        return ['FhirUnsignedIntBuilder'];
      case 'instancesRange':
        return ['RangeBuilder'];
      case 'duration':
      case 'durationX':
        return [
          'FhirDurationBuilder',
          'RangeBuilder',
        ];
      case 'durationDuration':
        return ['FhirDurationBuilder'];
      case 'durationRange':
        return ['RangeBuilder'];
      case 'period':
        return ['PeriodBuilder'];
      case 'timing':
        return ['RelativeTimeBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [GroupCharacteristicBuilder]
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
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'code':
        {
          code = CodeableConceptBuilder.empty();
          return;
        }
      case 'value':
      case 'valueX':
      case 'valueCodeableConcept':
        {
          valueX = CodeableConceptBuilder.empty();
          return;
        }
      case 'valueBoolean':
        {
          valueX = FhirBooleanBuilder.empty();
          return;
        }
      case 'valueQuantity':
        {
          valueX = QuantityBuilder.empty();
          return;
        }
      case 'valueRange':
        {
          valueX = RangeBuilder.empty();
          return;
        }
      case 'valueReference':
        {
          valueX = ReferenceBuilder.empty();
          return;
        }
      case 'valueUri':
        {
          valueX = FhirUriBuilder.empty();
          return;
        }
      case 'valueExpression':
        {
          valueX = FhirExpressionBuilder.empty();
          return;
        }
      case 'exclude':
        {
          exclude = FhirBooleanBuilder.empty();
          return;
        }
      case 'description':
        {
          description = FhirMarkdownBuilder.empty();
          return;
        }
      case 'method':
        {
          method = <CodeableConceptBuilder>[];
          return;
        }
      case 'determinedBy':
      case 'determinedByX':
      case 'determinedByReference':
        {
          determinedByX = ReferenceBuilder.empty();
          return;
        }
      case 'determinedByExpression':
        {
          determinedByX = FhirExpressionBuilder.empty();
          return;
        }
      case 'offset':
        {
          offset = CodeableConceptBuilder.empty();
          return;
        }
      case 'instances':
      case 'instancesX':
      case 'instancesUnsignedInt':
        {
          instancesX = FhirUnsignedIntBuilder.empty();
          return;
        }
      case 'instancesRange':
        {
          instancesX = RangeBuilder.empty();
          return;
        }
      case 'duration':
      case 'durationX':
      case 'durationDuration':
        {
          durationX = FhirDurationBuilder.empty();
          return;
        }
      case 'durationRange':
        {
          durationX = RangeBuilder.empty();
          return;
        }
      case 'period':
        {
          period = PeriodBuilder.empty();
          return;
        }
      case 'timing':
        {
          timing = <RelativeTimeBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  GroupCharacteristicBuilder clone() => throw UnimplementedError();
  @override
  GroupCharacteristicBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? code,
    ValueXGroupCharacteristicBuilder? valueX,
    FhirBooleanBuilder? exclude,
    FhirMarkdownBuilder? description,
    List<CodeableConceptBuilder>? method,
    DeterminedByXGroupCharacteristicBuilder? determinedByX,
    CodeableConceptBuilder? offset,
    InstancesXGroupCharacteristicBuilder? instancesX,
    DurationXGroupCharacteristicBuilder? durationX,
    PeriodBuilder? period,
    List<RelativeTimeBuilder>? timing,
    CodeableConceptBuilder? valueCodeableConcept,
    FhirBooleanBuilder? valueBoolean,
    QuantityBuilder? valueQuantity,
    RangeBuilder? valueRange,
    ReferenceBuilder? valueReference,
    FhirUriBuilder? valueUri,
    FhirExpressionBuilder? valueExpression,
    ReferenceBuilder? determinedByReference,
    FhirExpressionBuilder? determinedByExpression,
    FhirUnsignedIntBuilder? instancesUnsignedInt,
    RangeBuilder? instancesRange,
    FhirDurationBuilder? durationDuration,
    RangeBuilder? durationRange,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = GroupCharacteristicBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      valueX: valueX ??
          valueCodeableConcept ??
          valueBoolean ??
          valueQuantity ??
          valueRange ??
          valueReference ??
          valueUri ??
          valueExpression ??
          this.valueX,
      exclude: exclude ?? this.exclude,
      description: description ?? this.description,
      method: method ?? this.method,
      determinedByX: determinedByX ??
          determinedByReference ??
          determinedByExpression ??
          this.determinedByX,
      offset: offset ?? this.offset,
      instancesX: instancesX ??
          instancesUnsignedInt ??
          instancesRange ??
          this.instancesX,
      durationX:
          durationX ?? durationDuration ?? durationRange ?? this.durationX,
      period: period ?? this.period,
      timing: timing ?? this.timing,
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
    if (o is! GroupCharacteristicBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      code,
      o.code,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      valueX,
      o.valueX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      exclude,
      o.exclude,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      method,
      o.method,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      determinedByX,
      o.determinedByX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      offset,
      o.offset,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      instancesX,
      o.instancesX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      durationX,
      o.durationX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      period,
      o.period,
    )) {
      return false;
    }
    if (!listEquals<RelativeTimeBuilder>(
      timing,
      o.timing,
    )) {
      return false;
    }
    return true;
  }
}

/// [GroupMemberBuilder]
/// Identifies the resource instances that are members of the group.
class GroupMemberBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [GroupMemberBuilder]

  GroupMemberBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.entity,
    this.involvement,
    this.period,
    this.inactive,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Group.member',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory GroupMemberBuilder.empty() => GroupMemberBuilder(
        entity: ReferenceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory GroupMemberBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Group.member';
    return GroupMemberBuilder(
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
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      entity: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'entity',
        ReferenceBuilder.fromJson,
        '$objectPath.entity',
      ),
      involvement: (json['involvement'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.involvement',
              },
            ),
          )
          .toList(),
      period: JsonParser.parseObject<PeriodBuilder>(
        json,
        'period',
        PeriodBuilder.fromJson,
        '$objectPath.period',
      ),
      inactive: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'inactive',
        FhirBooleanBuilder.fromJson,
        '$objectPath.inactive',
      ),
    );
  }

  /// Deserialize [GroupMemberBuilder]
  /// from a [String] or [YamlMap] object
  factory GroupMemberBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return GroupMemberBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return GroupMemberBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'GroupMemberBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [GroupMemberBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory GroupMemberBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return GroupMemberBuilder.fromJson(json);
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
  ReferenceBuilder? entity;

  /// [involvement]
  /// A code that describes how a user is involved in the group. Some groups
  /// (e.g. exposure-group) typically don't have variance between members, or
  /// it is not tracked, while for other groups (e.g. family, household) this
  /// may be meaningful.
  List<CodeableConceptBuilder>? involvement;

  /// [period]
  /// The period that the member was in the group, if known.
  PeriodBuilder? period;

  /// [inactive]
  /// A flag to indicate that the member is no longer in the group, but
  /// previously may have been a member.
  FhirBooleanBuilder? inactive;

  /// Converts a [GroupMemberBuilder]
  /// to [GroupMember]
  @override
  GroupMember build() => GroupMember.fromJson(toJson());

  /// Converts a [GroupMemberBuilder]
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
    addField('modifierExtension', modifierExtension);
    addField('entity', entity);
    addField('involvement', involvement);
    addField('period', period);
    addField('inactive', inactive);
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
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'entity':
        if (entity != null) {
          fields.add(entity!);
        }
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
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'entity':
        {
          if (child is ReferenceBuilder) {
            entity = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'involvement':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            involvement = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            involvement = [
              ...(involvement ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'period':
        {
          if (child is PeriodBuilder) {
            period = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'inactive':
        {
          if (child is FhirBooleanBuilder) {
            inactive = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                inactive = converted;
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
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'entity':
        return ['ReferenceBuilder'];
      case 'involvement':
        return ['CodeableConceptBuilder'];
      case 'period':
        return ['PeriodBuilder'];
      case 'inactive':
        return ['FhirBooleanBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [GroupMemberBuilder]
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
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'entity':
        {
          entity = ReferenceBuilder.empty();
          return;
        }
      case 'involvement':
        {
          involvement = <CodeableConceptBuilder>[];
          return;
        }
      case 'period':
        {
          period = PeriodBuilder.empty();
          return;
        }
      case 'inactive':
        {
          inactive = FhirBooleanBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  GroupMemberBuilder clone() => throw UnimplementedError();
  @override
  GroupMemberBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    ReferenceBuilder? entity,
    List<CodeableConceptBuilder>? involvement,
    PeriodBuilder? period,
    FhirBooleanBuilder? inactive,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = GroupMemberBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      entity: entity ?? this.entity,
      involvement: involvement ?? this.involvement,
      period: period ?? this.period,
      inactive: inactive ?? this.inactive,
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
    if (o is! GroupMemberBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      entity,
      o.entity,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      involvement,
      o.involvement,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      period,
      o.period,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      inactive,
      o.inactive,
    )) {
      return false;
    }
    return true;
  }
}
