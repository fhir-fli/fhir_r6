// ignore_for_file: unused_element_parameter, non_constant_identifier_names, lines_longer_than_80_chars
part of '../primitive_types.dart';

/// Actual enum for LinkRelationTypes
enum LinkRelationTypesEnum {
  /// about
  about,

  /// acl
  acl,

  /// alternate
  alternate,

  /// amphtml
  amphtml,

  /// appendix
  appendix,

  /// apple-touch-icon
  appleTouchIcon,

  /// apple-touch-startup-image
  appleTouchStartupImage,

  /// archives
  archives,

  /// author
  author,

  /// blocked-by
  blockedBy,

  /// bookmark
  bookmark,

  /// canonical
  canonical,

  /// chapter
  chapter,

  /// cite-as
  citeAs,

  /// collection
  collection,

  /// contents
  contents,

  /// convertedFrom
  convertedFrom,

  /// copyright
  copyright,

  /// create-form
  createForm,

  /// current
  current,

  /// describedby
  describedby,

  /// describes
  describes,

  /// disclosure
  disclosure,

  /// dns-prefetch
  dnsPrefetch,

  /// duplicate
  duplicate,

  /// edit
  edit,

  /// edit-form
  editForm,

  /// edit-media
  editMedia,

  /// enclosure
  enclosure,

  /// external
  external_,

  /// first
  first,

  /// glossary
  glossary,

  /// help
  help,

  /// hosts
  hosts,

  /// hub
  hub,

  /// icon
  icon,

  /// index
  index_,

  /// intervalAfter
  intervalAfter,

  /// intervalBefore
  intervalBefore,

  /// intervalContains
  intervalContains,

  /// intervalDisjoint
  intervalDisjoint,

  /// intervalDuring
  intervalDuring,

  /// intervalEquals
  intervalEquals,

  /// intervalFinishedBy
  intervalFinishedBy,

  /// intervalFinishes
  intervalFinishes,

  /// intervalIn
  intervalIn,

  /// intervalMeets
  intervalMeets,

  /// intervalMetBy
  intervalMetBy,

  /// intervalOverlappedBy
  intervalOverlappedBy,

  /// intervalOverlaps
  intervalOverlaps,

  /// intervalStartedBy
  intervalStartedBy,

  /// intervalStarts
  intervalStarts,

  /// item
  item,

  /// last
  last,

  /// latest-version
  latestVersion,

  /// license
  license,

  /// linkset
  linkset,

  /// lrdd
  lrdd,

  /// manifest
  manifest,

  /// mask-icon
  maskIcon,

  /// media-feed
  mediaFeed,

  /// memento
  memento,

  /// micropub
  micropub,

  /// modulepreload
  modulepreload,

  /// monitor
  monitor,

  /// monitor-group
  monitorGroup,

  /// next
  next,

  /// next-archive
  nextArchive,

  /// nofollow
  nofollow,

  /// noopener
  noopener,

  /// noreferrer
  noreferrer,

  /// opener
  opener,

  /// openid2.local_id
  openid2LocalId,

  /// openid2.provider
  openid2Provider,

  /// original
  original,

  /// P3Pv1
  p3Pv1,

  /// payment
  payment,

  /// pingback
  pingback,

  /// preconnect
  preconnect,

  /// predecessor-version
  predecessorVersion,

  /// prefetch
  prefetch,

  /// preload
  preload,

  /// prerender
  prerender,

  /// prev
  prev,

  /// preview
  preview,

  /// previous
  previous,

  /// prev-archive
  prevArchive,

  /// privacy-policy
  privacyPolicy,

  /// profile
  profile,

  /// publication
  publication,

  /// related
  related,

  /// restconf
  restconf,

  /// replies
  replies,

  /// ruleinput
  ruleinput,

  /// search
  search,

  /// section
  section,

  /// self
  self,

  /// service
  service,

  /// service-desc
  serviceDesc,

  /// service-doc
  serviceDoc,

  /// service-meta
  serviceMeta,

  /// sponsored
  sponsored,

  /// start
  start,

  /// status
  status,

  /// stylesheet
  stylesheet,

  /// subsection
  subsection,

  /// successor-version
  successorVersion,

  /// sunset
  sunset,

  /// tag
  tag,

  /// terms-of-service
  termsOfService,

  /// timegate
  timegate,

  /// timemap
  timemap,

  /// type
  type,

  /// ugc
  ugc,

  /// up
  up,

  /// version-history
  versionHistory,

  /// via
  via,

  /// webmention
  webmention,

  /// working-copy
  workingCopy,

  /// working-copy-of
  workingCopyOf,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case LinkRelationTypesEnum.about:
        return 'about';
      case LinkRelationTypesEnum.acl:
        return 'acl';
      case LinkRelationTypesEnum.alternate:
        return 'alternate';
      case LinkRelationTypesEnum.amphtml:
        return 'amphtml';
      case LinkRelationTypesEnum.appendix:
        return 'appendix';
      case LinkRelationTypesEnum.appleTouchIcon:
        return 'apple-touch-icon';
      case LinkRelationTypesEnum.appleTouchStartupImage:
        return 'apple-touch-startup-image';
      case LinkRelationTypesEnum.archives:
        return 'archives';
      case LinkRelationTypesEnum.author:
        return 'author';
      case LinkRelationTypesEnum.blockedBy:
        return 'blocked-by';
      case LinkRelationTypesEnum.bookmark:
        return 'bookmark';
      case LinkRelationTypesEnum.canonical:
        return 'canonical';
      case LinkRelationTypesEnum.chapter:
        return 'chapter';
      case LinkRelationTypesEnum.citeAs:
        return 'cite-as';
      case LinkRelationTypesEnum.collection:
        return 'collection';
      case LinkRelationTypesEnum.contents:
        return 'contents';
      case LinkRelationTypesEnum.convertedFrom:
        return 'convertedFrom';
      case LinkRelationTypesEnum.copyright:
        return 'copyright';
      case LinkRelationTypesEnum.createForm:
        return 'create-form';
      case LinkRelationTypesEnum.current:
        return 'current';
      case LinkRelationTypesEnum.describedby:
        return 'describedby';
      case LinkRelationTypesEnum.describes:
        return 'describes';
      case LinkRelationTypesEnum.disclosure:
        return 'disclosure';
      case LinkRelationTypesEnum.dnsPrefetch:
        return 'dns-prefetch';
      case LinkRelationTypesEnum.duplicate:
        return 'duplicate';
      case LinkRelationTypesEnum.edit:
        return 'edit';
      case LinkRelationTypesEnum.editForm:
        return 'edit-form';
      case LinkRelationTypesEnum.editMedia:
        return 'edit-media';
      case LinkRelationTypesEnum.enclosure:
        return 'enclosure';
      case LinkRelationTypesEnum.external_:
        return 'external';
      case LinkRelationTypesEnum.first:
        return 'first';
      case LinkRelationTypesEnum.glossary:
        return 'glossary';
      case LinkRelationTypesEnum.help:
        return 'help';
      case LinkRelationTypesEnum.hosts:
        return 'hosts';
      case LinkRelationTypesEnum.hub:
        return 'hub';
      case LinkRelationTypesEnum.icon:
        return 'icon';
      case LinkRelationTypesEnum.index_:
        return 'index';
      case LinkRelationTypesEnum.intervalAfter:
        return 'intervalAfter';
      case LinkRelationTypesEnum.intervalBefore:
        return 'intervalBefore';
      case LinkRelationTypesEnum.intervalContains:
        return 'intervalContains';
      case LinkRelationTypesEnum.intervalDisjoint:
        return 'intervalDisjoint';
      case LinkRelationTypesEnum.intervalDuring:
        return 'intervalDuring';
      case LinkRelationTypesEnum.intervalEquals:
        return 'intervalEquals';
      case LinkRelationTypesEnum.intervalFinishedBy:
        return 'intervalFinishedBy';
      case LinkRelationTypesEnum.intervalFinishes:
        return 'intervalFinishes';
      case LinkRelationTypesEnum.intervalIn:
        return 'intervalIn';
      case LinkRelationTypesEnum.intervalMeets:
        return 'intervalMeets';
      case LinkRelationTypesEnum.intervalMetBy:
        return 'intervalMetBy';
      case LinkRelationTypesEnum.intervalOverlappedBy:
        return 'intervalOverlappedBy';
      case LinkRelationTypesEnum.intervalOverlaps:
        return 'intervalOverlaps';
      case LinkRelationTypesEnum.intervalStartedBy:
        return 'intervalStartedBy';
      case LinkRelationTypesEnum.intervalStarts:
        return 'intervalStarts';
      case LinkRelationTypesEnum.item:
        return 'item';
      case LinkRelationTypesEnum.last:
        return 'last';
      case LinkRelationTypesEnum.latestVersion:
        return 'latest-version';
      case LinkRelationTypesEnum.license:
        return 'license';
      case LinkRelationTypesEnum.linkset:
        return 'linkset';
      case LinkRelationTypesEnum.lrdd:
        return 'lrdd';
      case LinkRelationTypesEnum.manifest:
        return 'manifest';
      case LinkRelationTypesEnum.maskIcon:
        return 'mask-icon';
      case LinkRelationTypesEnum.mediaFeed:
        return 'media-feed';
      case LinkRelationTypesEnum.memento:
        return 'memento';
      case LinkRelationTypesEnum.micropub:
        return 'micropub';
      case LinkRelationTypesEnum.modulepreload:
        return 'modulepreload';
      case LinkRelationTypesEnum.monitor:
        return 'monitor';
      case LinkRelationTypesEnum.monitorGroup:
        return 'monitor-group';
      case LinkRelationTypesEnum.next:
        return 'next';
      case LinkRelationTypesEnum.nextArchive:
        return 'next-archive';
      case LinkRelationTypesEnum.nofollow:
        return 'nofollow';
      case LinkRelationTypesEnum.noopener:
        return 'noopener';
      case LinkRelationTypesEnum.noreferrer:
        return 'noreferrer';
      case LinkRelationTypesEnum.opener:
        return 'opener';
      case LinkRelationTypesEnum.openid2LocalId:
        return 'openid2.local_id';
      case LinkRelationTypesEnum.openid2Provider:
        return 'openid2.provider';
      case LinkRelationTypesEnum.original:
        return 'original';
      case LinkRelationTypesEnum.p3Pv1:
        return 'P3Pv1';
      case LinkRelationTypesEnum.payment:
        return 'payment';
      case LinkRelationTypesEnum.pingback:
        return 'pingback';
      case LinkRelationTypesEnum.preconnect:
        return 'preconnect';
      case LinkRelationTypesEnum.predecessorVersion:
        return 'predecessor-version';
      case LinkRelationTypesEnum.prefetch:
        return 'prefetch';
      case LinkRelationTypesEnum.preload:
        return 'preload';
      case LinkRelationTypesEnum.prerender:
        return 'prerender';
      case LinkRelationTypesEnum.prev:
        return 'prev';
      case LinkRelationTypesEnum.preview:
        return 'preview';
      case LinkRelationTypesEnum.previous:
        return 'previous';
      case LinkRelationTypesEnum.prevArchive:
        return 'prev-archive';
      case LinkRelationTypesEnum.privacyPolicy:
        return 'privacy-policy';
      case LinkRelationTypesEnum.profile:
        return 'profile';
      case LinkRelationTypesEnum.publication:
        return 'publication';
      case LinkRelationTypesEnum.related:
        return 'related';
      case LinkRelationTypesEnum.restconf:
        return 'restconf';
      case LinkRelationTypesEnum.replies:
        return 'replies';
      case LinkRelationTypesEnum.ruleinput:
        return 'ruleinput';
      case LinkRelationTypesEnum.search:
        return 'search';
      case LinkRelationTypesEnum.section:
        return 'section';
      case LinkRelationTypesEnum.self:
        return 'self';
      case LinkRelationTypesEnum.service:
        return 'service';
      case LinkRelationTypesEnum.serviceDesc:
        return 'service-desc';
      case LinkRelationTypesEnum.serviceDoc:
        return 'service-doc';
      case LinkRelationTypesEnum.serviceMeta:
        return 'service-meta';
      case LinkRelationTypesEnum.sponsored:
        return 'sponsored';
      case LinkRelationTypesEnum.start:
        return 'start';
      case LinkRelationTypesEnum.status:
        return 'status';
      case LinkRelationTypesEnum.stylesheet:
        return 'stylesheet';
      case LinkRelationTypesEnum.subsection:
        return 'subsection';
      case LinkRelationTypesEnum.successorVersion:
        return 'successor-version';
      case LinkRelationTypesEnum.sunset:
        return 'sunset';
      case LinkRelationTypesEnum.tag:
        return 'tag';
      case LinkRelationTypesEnum.termsOfService:
        return 'terms-of-service';
      case LinkRelationTypesEnum.timegate:
        return 'timegate';
      case LinkRelationTypesEnum.timemap:
        return 'timemap';
      case LinkRelationTypesEnum.type:
        return 'type';
      case LinkRelationTypesEnum.ugc:
        return 'ugc';
      case LinkRelationTypesEnum.up:
        return 'up';
      case LinkRelationTypesEnum.versionHistory:
        return 'version-history';
      case LinkRelationTypesEnum.via:
        return 'via';
      case LinkRelationTypesEnum.webmention:
        return 'webmention';
      case LinkRelationTypesEnum.workingCopy:
        return 'working-copy';
      case LinkRelationTypesEnum.workingCopyOf:
        return 'working-copy-of';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static LinkRelationTypesEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return LinkRelationTypesEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static LinkRelationTypesEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'about':
        return LinkRelationTypesEnum.about;
      case 'acl':
        return LinkRelationTypesEnum.acl;
      case 'alternate':
        return LinkRelationTypesEnum.alternate;
      case 'amphtml':
        return LinkRelationTypesEnum.amphtml;
      case 'appendix':
        return LinkRelationTypesEnum.appendix;
      case 'apple-touch-icon':
        return LinkRelationTypesEnum.appleTouchIcon;
      case 'apple-touch-startup-image':
        return LinkRelationTypesEnum.appleTouchStartupImage;
      case 'archives':
        return LinkRelationTypesEnum.archives;
      case 'author':
        return LinkRelationTypesEnum.author;
      case 'blocked-by':
        return LinkRelationTypesEnum.blockedBy;
      case 'bookmark':
        return LinkRelationTypesEnum.bookmark;
      case 'canonical':
        return LinkRelationTypesEnum.canonical;
      case 'chapter':
        return LinkRelationTypesEnum.chapter;
      case 'cite-as':
        return LinkRelationTypesEnum.citeAs;
      case 'collection':
        return LinkRelationTypesEnum.collection;
      case 'contents':
        return LinkRelationTypesEnum.contents;
      case 'convertedFrom':
        return LinkRelationTypesEnum.convertedFrom;
      case 'copyright':
        return LinkRelationTypesEnum.copyright;
      case 'create-form':
        return LinkRelationTypesEnum.createForm;
      case 'current':
        return LinkRelationTypesEnum.current;
      case 'describedby':
        return LinkRelationTypesEnum.describedby;
      case 'describes':
        return LinkRelationTypesEnum.describes;
      case 'disclosure':
        return LinkRelationTypesEnum.disclosure;
      case 'dns-prefetch':
        return LinkRelationTypesEnum.dnsPrefetch;
      case 'duplicate':
        return LinkRelationTypesEnum.duplicate;
      case 'edit':
        return LinkRelationTypesEnum.edit;
      case 'edit-form':
        return LinkRelationTypesEnum.editForm;
      case 'edit-media':
        return LinkRelationTypesEnum.editMedia;
      case 'enclosure':
        return LinkRelationTypesEnum.enclosure;
      case 'external':
        return LinkRelationTypesEnum.external_;
      case 'first':
        return LinkRelationTypesEnum.first;
      case 'glossary':
        return LinkRelationTypesEnum.glossary;
      case 'help':
        return LinkRelationTypesEnum.help;
      case 'hosts':
        return LinkRelationTypesEnum.hosts;
      case 'hub':
        return LinkRelationTypesEnum.hub;
      case 'icon':
        return LinkRelationTypesEnum.icon;
      case 'index':
        return LinkRelationTypesEnum.index_;
      case 'intervalAfter':
        return LinkRelationTypesEnum.intervalAfter;
      case 'intervalBefore':
        return LinkRelationTypesEnum.intervalBefore;
      case 'intervalContains':
        return LinkRelationTypesEnum.intervalContains;
      case 'intervalDisjoint':
        return LinkRelationTypesEnum.intervalDisjoint;
      case 'intervalDuring':
        return LinkRelationTypesEnum.intervalDuring;
      case 'intervalEquals':
        return LinkRelationTypesEnum.intervalEquals;
      case 'intervalFinishedBy':
        return LinkRelationTypesEnum.intervalFinishedBy;
      case 'intervalFinishes':
        return LinkRelationTypesEnum.intervalFinishes;
      case 'intervalIn':
        return LinkRelationTypesEnum.intervalIn;
      case 'intervalMeets':
        return LinkRelationTypesEnum.intervalMeets;
      case 'intervalMetBy':
        return LinkRelationTypesEnum.intervalMetBy;
      case 'intervalOverlappedBy':
        return LinkRelationTypesEnum.intervalOverlappedBy;
      case 'intervalOverlaps':
        return LinkRelationTypesEnum.intervalOverlaps;
      case 'intervalStartedBy':
        return LinkRelationTypesEnum.intervalStartedBy;
      case 'intervalStarts':
        return LinkRelationTypesEnum.intervalStarts;
      case 'item':
        return LinkRelationTypesEnum.item;
      case 'last':
        return LinkRelationTypesEnum.last;
      case 'latest-version':
        return LinkRelationTypesEnum.latestVersion;
      case 'license':
        return LinkRelationTypesEnum.license;
      case 'linkset':
        return LinkRelationTypesEnum.linkset;
      case 'lrdd':
        return LinkRelationTypesEnum.lrdd;
      case 'manifest':
        return LinkRelationTypesEnum.manifest;
      case 'mask-icon':
        return LinkRelationTypesEnum.maskIcon;
      case 'media-feed':
        return LinkRelationTypesEnum.mediaFeed;
      case 'memento':
        return LinkRelationTypesEnum.memento;
      case 'micropub':
        return LinkRelationTypesEnum.micropub;
      case 'modulepreload':
        return LinkRelationTypesEnum.modulepreload;
      case 'monitor':
        return LinkRelationTypesEnum.monitor;
      case 'monitor-group':
        return LinkRelationTypesEnum.monitorGroup;
      case 'next':
        return LinkRelationTypesEnum.next;
      case 'next-archive':
        return LinkRelationTypesEnum.nextArchive;
      case 'nofollow':
        return LinkRelationTypesEnum.nofollow;
      case 'noopener':
        return LinkRelationTypesEnum.noopener;
      case 'noreferrer':
        return LinkRelationTypesEnum.noreferrer;
      case 'opener':
        return LinkRelationTypesEnum.opener;
      case 'openid2.local_id':
        return LinkRelationTypesEnum.openid2LocalId;
      case 'openid2.provider':
        return LinkRelationTypesEnum.openid2Provider;
      case 'original':
        return LinkRelationTypesEnum.original;
      case 'P3Pv1':
        return LinkRelationTypesEnum.p3Pv1;
      case 'payment':
        return LinkRelationTypesEnum.payment;
      case 'pingback':
        return LinkRelationTypesEnum.pingback;
      case 'preconnect':
        return LinkRelationTypesEnum.preconnect;
      case 'predecessor-version':
        return LinkRelationTypesEnum.predecessorVersion;
      case 'prefetch':
        return LinkRelationTypesEnum.prefetch;
      case 'preload':
        return LinkRelationTypesEnum.preload;
      case 'prerender':
        return LinkRelationTypesEnum.prerender;
      case 'prev':
        return LinkRelationTypesEnum.prev;
      case 'preview':
        return LinkRelationTypesEnum.preview;
      case 'previous':
        return LinkRelationTypesEnum.previous;
      case 'prev-archive':
        return LinkRelationTypesEnum.prevArchive;
      case 'privacy-policy':
        return LinkRelationTypesEnum.privacyPolicy;
      case 'profile':
        return LinkRelationTypesEnum.profile;
      case 'publication':
        return LinkRelationTypesEnum.publication;
      case 'related':
        return LinkRelationTypesEnum.related;
      case 'restconf':
        return LinkRelationTypesEnum.restconf;
      case 'replies':
        return LinkRelationTypesEnum.replies;
      case 'ruleinput':
        return LinkRelationTypesEnum.ruleinput;
      case 'search':
        return LinkRelationTypesEnum.search;
      case 'section':
        return LinkRelationTypesEnum.section;
      case 'self':
        return LinkRelationTypesEnum.self;
      case 'service':
        return LinkRelationTypesEnum.service;
      case 'service-desc':
        return LinkRelationTypesEnum.serviceDesc;
      case 'service-doc':
        return LinkRelationTypesEnum.serviceDoc;
      case 'service-meta':
        return LinkRelationTypesEnum.serviceMeta;
      case 'sponsored':
        return LinkRelationTypesEnum.sponsored;
      case 'start':
        return LinkRelationTypesEnum.start;
      case 'status':
        return LinkRelationTypesEnum.status;
      case 'stylesheet':
        return LinkRelationTypesEnum.stylesheet;
      case 'subsection':
        return LinkRelationTypesEnum.subsection;
      case 'successor-version':
        return LinkRelationTypesEnum.successorVersion;
      case 'sunset':
        return LinkRelationTypesEnum.sunset;
      case 'tag':
        return LinkRelationTypesEnum.tag;
      case 'terms-of-service':
        return LinkRelationTypesEnum.termsOfService;
      case 'timegate':
        return LinkRelationTypesEnum.timegate;
      case 'timemap':
        return LinkRelationTypesEnum.timemap;
      case 'type':
        return LinkRelationTypesEnum.type;
      case 'ugc':
        return LinkRelationTypesEnum.ugc;
      case 'up':
        return LinkRelationTypesEnum.up;
      case 'version-history':
        return LinkRelationTypesEnum.versionHistory;
      case 'via':
        return LinkRelationTypesEnum.via;
      case 'webmention':
        return LinkRelationTypesEnum.webmention;
      case 'working-copy':
        return LinkRelationTypesEnum.workingCopy;
      case 'working-copy-of':
        return LinkRelationTypesEnum.workingCopyOf;
    }
    return null;
  }
}

/// Link Relation Types defined at
/// https://www.iana.org/assignments/link-relations/link-relations.xhtml#link-relations-1
class LinkRelationTypes extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const LinkRelationTypes._({
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
  factory LinkRelationTypes(
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
    final valueEnum = LinkRelationTypesEnum.fromString(valueString);
    return LinkRelationTypes._(
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

  /// Factory constructor to create [LinkRelationTypes]
  /// from JSON.
  factory LinkRelationTypes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = LinkRelationTypesEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return LinkRelationTypes._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'LinkRelationTypes cannot be constructed from JSON.',
      );
    }
    return LinkRelationTypes._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for LinkRelationTypes
  final LinkRelationTypesEnum? valueEnum;

  /// about
  static const LinkRelationTypes about = LinkRelationTypes._(
    valueString: 'about',
    valueEnum: LinkRelationTypesEnum.about,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          "Refers to a resource that is the subject of the link's context.",
    ),
  );

  /// acl
  static const LinkRelationTypes acl = LinkRelationTypes._(
    valueString: 'acl',
    valueEnum: LinkRelationTypesEnum.acl,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'Asserts that the link target provides an access control description for the link context.',
    ),
  );

  /// alternate
  static const LinkRelationTypes alternate = LinkRelationTypes._(
    valueString: 'alternate',
    valueEnum: LinkRelationTypesEnum.alternate,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Refers to a substitute for this context',
    ),
  );

  /// amphtml
  static const LinkRelationTypes amphtml = LinkRelationTypes._(
    valueString: 'amphtml',
    valueEnum: LinkRelationTypesEnum.amphtml,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'Used to reference alternative content that uses the AMP profile of the HTML format.',
    ),
  );

  /// appendix
  static const LinkRelationTypes appendix = LinkRelationTypes._(
    valueString: 'appendix',
    valueEnum: LinkRelationTypesEnum.appendix,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Refers to an appendix.',
    ),
  );

  /// apple_touch_icon
  static const LinkRelationTypes appleTouchIcon = LinkRelationTypes._(
    valueString: 'apple-touch-icon',
    valueEnum: LinkRelationTypesEnum.appleTouchIcon,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Refers to an icon for the context. Synonym for icon.',
    ),
  );

  /// apple_touch_startup_image
  static const LinkRelationTypes appleTouchStartupImage = LinkRelationTypes._(
    valueString: 'apple-touch-startup-image',
    valueEnum: LinkRelationTypesEnum.appleTouchStartupImage,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Refers to a launch screen for the context.',
    ),
  );

  /// archives
  static const LinkRelationTypes archives = LinkRelationTypes._(
    valueString: 'archives',
    valueEnum: LinkRelationTypesEnum.archives,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'Refers to a collection of records, documents, or other materials of historical interest.',
    ),
  );

  /// author
  static const LinkRelationTypes author = LinkRelationTypes._(
    valueString: 'author',
    valueEnum: LinkRelationTypesEnum.author,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: "Refers to the context's author.",
    ),
  );

  /// blocked_by
  static const LinkRelationTypes blockedBy = LinkRelationTypes._(
    valueString: 'blocked-by',
    valueEnum: LinkRelationTypesEnum.blockedBy,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'Identifies the entity that blocks access to a resource following receipt of a legal demand.',
    ),
  );

  /// bookmark
  static const LinkRelationTypes bookmark = LinkRelationTypes._(
    valueString: 'bookmark',
    valueEnum: LinkRelationTypesEnum.bookmark,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Gives a permanent link to use for bookmarking purposes.',
    ),
  );

  /// canonical
  static const LinkRelationTypes canonical = LinkRelationTypes._(
    valueString: 'canonical',
    valueEnum: LinkRelationTypesEnum.canonical,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'Designates the preferred version of a resource (the IRI and its contents).',
    ),
  );

  /// chapter
  static const LinkRelationTypes chapter = LinkRelationTypes._(
    valueString: 'chapter',
    valueEnum: LinkRelationTypesEnum.chapter,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Refers to a chapter in a collection of resources.',
    ),
  );

  /// cite_as
  static const LinkRelationTypes citeAs = LinkRelationTypes._(
    valueString: 'cite-as',
    valueEnum: LinkRelationTypesEnum.citeAs,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'Indicates that the link target is preferred over the link context for the purpose of permanent citation.',
    ),
  );

  /// collection
  static const LinkRelationTypes collection = LinkRelationTypes._(
    valueString: 'collection',
    valueEnum: LinkRelationTypesEnum.collection,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'The target IRI points to a resource which represents the collection resource for the context IRI.',
    ),
  );

  /// contents
  static const LinkRelationTypes contents = LinkRelationTypes._(
    valueString: 'contents',
    valueEnum: LinkRelationTypesEnum.contents,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Refers to a table of contents.',
    ),
  );

  /// convertedFrom
  static const LinkRelationTypes convertedFrom = LinkRelationTypes._(
    valueString: 'convertedFrom',
    valueEnum: LinkRelationTypesEnum.convertedFrom,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'The document linked to was later converted to the document that contains this link relation. For example, an RFC can have a link to the Internet-Draft that became the RFC; in that case, the link relation would be "convertedFrom".',
    ),
  );

  /// copyright
  static const LinkRelationTypes copyright = LinkRelationTypes._(
    valueString: 'copyright',
    valueEnum: LinkRelationTypesEnum.copyright,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          "Refers to a copyright statement that applies to the link's context.",
    ),
  );

  /// create_form
  static const LinkRelationTypes createForm = LinkRelationTypes._(
    valueString: 'create-form',
    valueEnum: LinkRelationTypesEnum.createForm,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'The target IRI points to a resource where a submission form can be obtained.',
    ),
  );

  /// current
  static const LinkRelationTypes current = LinkRelationTypes._(
    valueString: 'current',
    valueEnum: LinkRelationTypesEnum.current,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'Refers to a resource containing the most recent item(s) in a collection of resources.',
    ),
  );

  /// describedby
  static const LinkRelationTypes describedby = LinkRelationTypes._(
    valueString: 'describedby',
    valueEnum: LinkRelationTypesEnum.describedby,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          "Refers to a resource providing information about the link's context.",
    ),
  );

  /// describes
  static const LinkRelationTypes describes = LinkRelationTypes._(
    valueString: 'describes',
    valueEnum: LinkRelationTypesEnum.describes,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          "The relationship A 'describes' B asserts that resource A provides a description of resource B. There are no constraints on the format or representation of either A or B, neither are there any further constraints on either resource.",
    ),
  );

  /// disclosure
  static const LinkRelationTypes disclosure = LinkRelationTypes._(
    valueString: 'disclosure',
    valueEnum: LinkRelationTypesEnum.disclosure,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          "Refers to a list of patent disclosures made with respect to material for which 'disclosure' relation is specified.",
    ),
  );

  /// dns_prefetch
  static const LinkRelationTypes dnsPrefetch = LinkRelationTypes._(
    valueString: 'dns-prefetch',
    valueEnum: LinkRelationTypesEnum.dnsPrefetch,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'Used to indicate an origin that will be used to fetch required resources for the link context, and that the user agent ought to resolve as early as possible.',
    ),
  );

  /// duplicate
  static const LinkRelationTypes duplicate = LinkRelationTypes._(
    valueString: 'duplicate',
    valueEnum: LinkRelationTypesEnum.duplicate,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'Refers to a resource whose available representations are byte-for-byte identical with the corresponding representations of the context IRI.',
    ),
  );

  /// edit
  static const LinkRelationTypes edit = LinkRelationTypes._(
    valueString: 'edit',
    valueEnum: LinkRelationTypesEnum.edit,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          "Refers to a resource that can be used to edit the link's context.",
    ),
  );

  /// edit_form
  static const LinkRelationTypes editForm = LinkRelationTypes._(
    valueString: 'edit-form',
    valueEnum: LinkRelationTypesEnum.editForm,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'The target IRI points to a resource where a submission form for editing associated resource can be obtained.',
    ),
  );

  /// edit_media
  static const LinkRelationTypes editMedia = LinkRelationTypes._(
    valueString: 'edit-media',
    valueEnum: LinkRelationTypesEnum.editMedia,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          "Refers to a resource that can be used to edit media associated with the link's context.",
    ),
  );

  /// enclosure
  static const LinkRelationTypes enclosure = LinkRelationTypes._(
    valueString: 'enclosure',
    valueEnum: LinkRelationTypesEnum.enclosure,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'Identifies a related resource that is potentially large and might require special handling.',
    ),
  );

  /// external_
  static const LinkRelationTypes external_ = LinkRelationTypes._(
    valueString: 'external',
    valueEnum: LinkRelationTypesEnum.external_,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'Refers to a resource that is not part of the same site as the current context.',
    ),
  );

  /// first
  static const LinkRelationTypes first = LinkRelationTypes._(
    valueString: 'first',
    valueEnum: LinkRelationTypesEnum.first,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'An IRI that refers to the furthest preceding resource in a series of resources.',
    ),
  );

  /// glossary
  static const LinkRelationTypes glossary = LinkRelationTypes._(
    valueString: 'glossary',
    valueEnum: LinkRelationTypesEnum.glossary,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Refers to a glossary of terms.',
    ),
  );

  /// help
  static const LinkRelationTypes help = LinkRelationTypes._(
    valueString: 'help',
    valueEnum: LinkRelationTypesEnum.help,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Refers to context-sensitive help.',
    ),
  );

  /// hosts
  static const LinkRelationTypes hosts = LinkRelationTypes._(
    valueString: 'hosts',
    valueEnum: LinkRelationTypesEnum.hosts,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'Refers to a resource hosted by the server indicated by the link context.',
    ),
  );

  /// hub
  static const LinkRelationTypes hub = LinkRelationTypes._(
    valueString: 'hub',
    valueEnum: LinkRelationTypesEnum.hub,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'Refers to a hub that enables registration for notification of updates to the context.',
    ),
  );

  /// icon
  static const LinkRelationTypes icon = LinkRelationTypes._(
    valueString: 'icon',
    valueEnum: LinkRelationTypesEnum.icon,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: "Refers to an icon representing the link's context.",
    ),
  );

  /// index_
  static const LinkRelationTypes index_ = LinkRelationTypes._(
    valueString: 'index',
    valueEnum: LinkRelationTypesEnum.index_,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Refers to an index.',
    ),
  );

  /// intervalAfter
  static const LinkRelationTypes intervalAfter = LinkRelationTypes._(
    valueString: 'intervalAfter',
    valueEnum: LinkRelationTypesEnum.intervalAfter,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'refers to a resource associated with a time interval that ends before the beginning of the time interval associated with the context resource',
    ),
  );

  /// intervalBefore
  static const LinkRelationTypes intervalBefore = LinkRelationTypes._(
    valueString: 'intervalBefore',
    valueEnum: LinkRelationTypesEnum.intervalBefore,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'refers to a resource associated with a time interval that begins after the end of the time interval associated with the context resource',
    ),
  );

  /// intervalContains
  static const LinkRelationTypes intervalContains = LinkRelationTypes._(
    valueString: 'intervalContains',
    valueEnum: LinkRelationTypesEnum.intervalContains,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'refers to a resource associated with a time interval that begins after the beginning of the time interval associated with the context resource, and ends before the end of the time interval associated with the context resource',
    ),
  );

  /// intervalDisjoint
  static const LinkRelationTypes intervalDisjoint = LinkRelationTypes._(
    valueString: 'intervalDisjoint',
    valueEnum: LinkRelationTypesEnum.intervalDisjoint,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'refers to a resource associated with a time interval that begins after the end of the time interval associated with the context resource, or ends before the beginning of the time interval associated with the context resource',
    ),
  );

  /// intervalDuring
  static const LinkRelationTypes intervalDuring = LinkRelationTypes._(
    valueString: 'intervalDuring',
    valueEnum: LinkRelationTypesEnum.intervalDuring,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'refers to a resource associated with a time interval that begins before the beginning of the time interval associated with the context resource, and ends after the end of the time interval associated with the context resource',
    ),
  );

  /// intervalEquals
  static const LinkRelationTypes intervalEquals = LinkRelationTypes._(
    valueString: 'intervalEquals',
    valueEnum: LinkRelationTypesEnum.intervalEquals,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'refers to a resource associated with a time interval whose beginning coincides with the beginning of the time interval associated with the context resource, and whose end coincides with the end of the time interval associated with the context resource',
    ),
  );

  /// intervalFinishedBy
  static const LinkRelationTypes intervalFinishedBy = LinkRelationTypes._(
    valueString: 'intervalFinishedBy',
    valueEnum: LinkRelationTypesEnum.intervalFinishedBy,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'refers to a resource associated with a time interval that begins after the beginning of the time interval associated with the context resource, and whose end coincides with the end of the time interval associated with the context resource',
    ),
  );

  /// intervalFinishes
  static const LinkRelationTypes intervalFinishes = LinkRelationTypes._(
    valueString: 'intervalFinishes',
    valueEnum: LinkRelationTypesEnum.intervalFinishes,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'refers to a resource associated with a time interval that begins before the beginning of the time interval associated with the context resource, and whose end coincides with the end of the time interval associated with the context resource',
    ),
  );

  /// intervalIn
  static const LinkRelationTypes intervalIn = LinkRelationTypes._(
    valueString: 'intervalIn',
    valueEnum: LinkRelationTypesEnum.intervalIn,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'refers to a resource associated with a time interval that begins before or is coincident with the beginning of the time interval associated with the context resource, and ends after or is coincident with the end of the time interval associated with the context resource',
    ),
  );

  /// intervalMeets
  static const LinkRelationTypes intervalMeets = LinkRelationTypes._(
    valueString: 'intervalMeets',
    valueEnum: LinkRelationTypesEnum.intervalMeets,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'refers to a resource associated with a time interval whose beginning coincides with the end of the time interval associated with the context resource',
    ),
  );

  /// intervalMetBy
  static const LinkRelationTypes intervalMetBy = LinkRelationTypes._(
    valueString: 'intervalMetBy',
    valueEnum: LinkRelationTypesEnum.intervalMetBy,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'refers to a resource associated with a time interval whose end coincides with the beginning of the time interval associated with the context resource',
    ),
  );

  /// intervalOverlappedBy
  static const LinkRelationTypes intervalOverlappedBy = LinkRelationTypes._(
    valueString: 'intervalOverlappedBy',
    valueEnum: LinkRelationTypesEnum.intervalOverlappedBy,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'refers to a resource associated with a time interval that begins before the beginning of the time interval associated with the context resource, and ends after the beginning of the time interval associated with the context resource',
    ),
  );

  /// intervalOverlaps
  static const LinkRelationTypes intervalOverlaps = LinkRelationTypes._(
    valueString: 'intervalOverlaps',
    valueEnum: LinkRelationTypesEnum.intervalOverlaps,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'refers to a resource associated with a time interval that begins before the end of the time interval associated with the context resource, and ends after the end of the time interval associated with the context resource',
    ),
  );

  /// intervalStartedBy
  static const LinkRelationTypes intervalStartedBy = LinkRelationTypes._(
    valueString: 'intervalStartedBy',
    valueEnum: LinkRelationTypesEnum.intervalStartedBy,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'refers to a resource associated with a time interval whose beginning coincides with the beginning of the time interval associated with the context resource, and ends before the end of the time interval associated with the context resource',
    ),
  );

  /// intervalStarts
  static const LinkRelationTypes intervalStarts = LinkRelationTypes._(
    valueString: 'intervalStarts',
    valueEnum: LinkRelationTypesEnum.intervalStarts,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'refers to a resource associated with a time interval whose beginning coincides with the beginning of the time interval associated with the context resource, and ends after the end of the time interval associated with the context resource',
    ),
  );

  /// item
  static const LinkRelationTypes item = LinkRelationTypes._(
    valueString: 'item',
    valueEnum: LinkRelationTypesEnum.item,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'The target IRI points to a resource that is a member of the collection represented by the context IRI.',
    ),
  );

  /// last
  static const LinkRelationTypes last = LinkRelationTypes._(
    valueString: 'last',
    valueEnum: LinkRelationTypesEnum.last,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'An IRI that refers to the furthest following resource in a series of resources.',
    ),
  );

  /// latest_version
  static const LinkRelationTypes latestVersion = LinkRelationTypes._(
    valueString: 'latest-version',
    valueEnum: LinkRelationTypesEnum.latestVersion,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'Points to a resource containing the latest (e.g., current) version of the context.',
    ),
  );

  /// license
  static const LinkRelationTypes license = LinkRelationTypes._(
    valueString: 'license',
    valueEnum: LinkRelationTypesEnum.license,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Refers to a license associated with this context.',
    ),
  );

  /// linkset
  static const LinkRelationTypes linkset = LinkRelationTypes._(
    valueString: 'linkset',
    valueEnum: LinkRelationTypesEnum.linkset,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'The link target of a link with the "linkset" relation type provides a set of links, including links in which the link context of the link participates.',
    ),
  );

  /// lrdd
  static const LinkRelationTypes lrdd = LinkRelationTypes._(
    valueString: 'lrdd',
    valueEnum: LinkRelationTypesEnum.lrdd,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          "Refers to further information about the link's context, expressed as a LRDD (\"Link-based Resource Descriptor Document\") resource. See for information about processing this relation type in host-meta documents. When used elsewhere, it refers to additional links and other metadata. Multiple instances indicate additional LRDD resources. LRDD resources MUST have an \"application/xrd+xml\" representation, and MAY have others.",
    ),
  );

  /// manifest
  static const LinkRelationTypes manifest = LinkRelationTypes._(
    valueString: 'manifest',
    valueEnum: LinkRelationTypesEnum.manifest,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Links to a manifest file for the context.',
    ),
  );

  /// mask_icon
  static const LinkRelationTypes maskIcon = LinkRelationTypes._(
    valueString: 'mask-icon',
    valueEnum: LinkRelationTypesEnum.maskIcon,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'Refers to a mask that can be applied to the icon for the context.',
    ),
  );

  /// media_feed
  static const LinkRelationTypes mediaFeed = LinkRelationTypes._(
    valueString: 'media-feed',
    valueEnum: LinkRelationTypesEnum.mediaFeed,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'Refers to a feed of personalised media recommendations relevant to the link context.',
    ),
  );

  /// memento
  static const LinkRelationTypes memento = LinkRelationTypes._(
    valueString: 'memento',
    valueEnum: LinkRelationTypesEnum.memento,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'The Target IRI points to a Memento, a fixed resource that will not change state anymore.',
    ),
  );

  /// micropub
  static const LinkRelationTypes micropub = LinkRelationTypes._(
    valueString: 'micropub',
    valueEnum: LinkRelationTypesEnum.micropub,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: "Links to the context's Micropub endpoint.",
    ),
  );

  /// modulepreload
  static const LinkRelationTypes modulepreload = LinkRelationTypes._(
    valueString: 'modulepreload',
    valueEnum: LinkRelationTypesEnum.modulepreload,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'Refers to a module that the user agent is to preemptively fetch and store for use in the current context.',
    ),
  );

  /// monitor
  static const LinkRelationTypes monitor = LinkRelationTypes._(
    valueString: 'monitor',
    valueEnum: LinkRelationTypesEnum.monitor,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'Refers to a resource that can be used to monitor changes in an HTTP resource.',
    ),
  );

  /// monitor_group
  static const LinkRelationTypes monitorGroup = LinkRelationTypes._(
    valueString: 'monitor-group',
    valueEnum: LinkRelationTypesEnum.monitorGroup,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'Refers to a resource that can be used to monitor changes in a specified group of HTTP resources.',
    ),
  );

  /// next
  static const LinkRelationTypes next = LinkRelationTypes._(
    valueString: 'next',
    valueEnum: LinkRelationTypesEnum.next,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          "Indicates that the link's context is a part of a series, and that the next in the series is the link target.",
    ),
  );

  /// next_archive
  static const LinkRelationTypes nextArchive = LinkRelationTypes._(
    valueString: 'next-archive',
    valueEnum: LinkRelationTypesEnum.nextArchive,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Refers to the immediately following archive resource.',
    ),
  );

  /// nofollow
  static const LinkRelationTypes nofollow = LinkRelationTypes._(
    valueString: 'nofollow',
    valueEnum: LinkRelationTypesEnum.nofollow,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'Indicates that the context’s original author or publisher does not endorse the link target.',
    ),
  );

  /// noopener
  static const LinkRelationTypes noopener = LinkRelationTypes._(
    valueString: 'noopener',
    valueEnum: LinkRelationTypesEnum.noopener,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'Indicates that any newly created top-level browsing context which results from following the link will not be an auxiliary browsing context.',
    ),
  );

  /// noreferrer
  static const LinkRelationTypes noreferrer = LinkRelationTypes._(
    valueString: 'noreferrer',
    valueEnum: LinkRelationTypesEnum.noreferrer,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'Indicates that no referrer information is to be leaked when following the link.',
    ),
  );

  /// opener
  static const LinkRelationTypes opener = LinkRelationTypes._(
    valueString: 'opener',
    valueEnum: LinkRelationTypesEnum.opener,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'Indicates that any newly created top-level browsing context which results from following the link will be an auxiliary browsing context.',
    ),
  );

  /// openid2_local_id
  static const LinkRelationTypes openid2LocalId = LinkRelationTypes._(
    valueString: 'openid2.local_id',
    valueEnum: LinkRelationTypesEnum.openid2LocalId,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'Refers to an OpenID Authentication server on which the context relies for an assertion that the end user controls an Identifier.',
    ),
  );

  /// openid2_provider
  static const LinkRelationTypes openid2Provider = LinkRelationTypes._(
    valueString: 'openid2.provider',
    valueEnum: LinkRelationTypesEnum.openid2Provider,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'Refers to a resource which accepts OpenID Authentication protocol messages for the context.',
    ),
  );

  /// original
  static const LinkRelationTypes original = LinkRelationTypes._(
    valueString: 'original',
    valueEnum: LinkRelationTypesEnum.original,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'The Target IRI points to an Original Resource.',
    ),
  );

  /// P3Pv1
  static const LinkRelationTypes p3Pv1 = LinkRelationTypes._(
    valueString: 'P3Pv1',
    valueEnum: LinkRelationTypesEnum.p3Pv1,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Refers to a P3P privacy policy for the context.',
    ),
  );

  /// payment
  static const LinkRelationTypes payment = LinkRelationTypes._(
    valueString: 'payment',
    valueEnum: LinkRelationTypesEnum.payment,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Indicates a resource where payment is accepted.',
    ),
  );

  /// pingback
  static const LinkRelationTypes pingback = LinkRelationTypes._(
    valueString: 'pingback',
    valueEnum: LinkRelationTypesEnum.pingback,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'Gives the address of the pingback resource for the link context.',
    ),
  );

  /// preconnect
  static const LinkRelationTypes preconnect = LinkRelationTypes._(
    valueString: 'preconnect',
    valueEnum: LinkRelationTypesEnum.preconnect,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'Used to indicate an origin that will be used to fetch required resources for the link context. Initiating an early connection, which includes the DNS lookup, TCP handshake, and optional TLS negotiation, allows the user agent to mask the high latency costs of establishing a connection.',
    ),
  );

  /// predecessor_version
  static const LinkRelationTypes predecessorVersion = LinkRelationTypes._(
    valueString: 'predecessor-version',
    valueEnum: LinkRelationTypesEnum.predecessorVersion,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'Points to a resource containing the predecessor version in the version history.',
    ),
  );

  /// prefetch
  static const LinkRelationTypes prefetch = LinkRelationTypes._(
    valueString: 'prefetch',
    valueEnum: LinkRelationTypesEnum.prefetch,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'The prefetch link relation type is used to identify a resource that might be required by the next navigation from the link context, and that the user agent ought to fetch, such that the user agent can deliver a faster response once the resource is requested in the future.',
    ),
  );

  /// preload
  static const LinkRelationTypes preload = LinkRelationTypes._(
    valueString: 'preload',
    valueEnum: LinkRelationTypesEnum.preload,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          "Refers to a resource that should be loaded early in the processing of the link's context, without blocking rendering.",
    ),
  );

  /// prerender
  static const LinkRelationTypes prerender = LinkRelationTypes._(
    valueString: 'prerender',
    valueEnum: LinkRelationTypesEnum.prerender,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'Used to identify a resource that might be required by the next navigation from the link context, and that the user agent ought to fetch and execute, such that the user agent can deliver a faster response once the resource is requested in the future.',
    ),
  );

  /// prev
  static const LinkRelationTypes prev = LinkRelationTypes._(
    valueString: 'prev',
    valueEnum: LinkRelationTypesEnum.prev,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          "Indicates that the link's context is a part of a series, and that the previous in the series is the link target.",
    ),
  );

  /// preview
  static const LinkRelationTypes preview = LinkRelationTypes._(
    valueString: 'preview',
    valueEnum: LinkRelationTypesEnum.preview,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          "Refers to a resource that provides a preview of the link's context.",
    ),
  );

  /// previous
  static const LinkRelationTypes previous = LinkRelationTypes._(
    valueString: 'previous',
    valueEnum: LinkRelationTypesEnum.previous,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'Refers to the previous resource in an ordered series of resources. Synonym for "prev".',
    ),
  );

  /// prev_archive
  static const LinkRelationTypes prevArchive = LinkRelationTypes._(
    valueString: 'prev-archive',
    valueEnum: LinkRelationTypesEnum.prevArchive,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Refers to the immediately preceding archive resource.',
    ),
  );

  /// privacy_policy
  static const LinkRelationTypes privacyPolicy = LinkRelationTypes._(
    valueString: 'privacy-policy',
    valueEnum: LinkRelationTypesEnum.privacyPolicy,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          "Refers to a privacy policy associated with the link's context.",
    ),
  );

  /// profile
  static const LinkRelationTypes profile = LinkRelationTypes._(
    valueString: 'profile',
    valueEnum: LinkRelationTypesEnum.profile,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'Identifying that a resource representation conforms to a certain profile, without affecting the non-profile semantics of the resource representation.',
    ),
  );

  /// publication
  static const LinkRelationTypes publication = LinkRelationTypes._(
    valueString: 'publication',
    valueEnum: LinkRelationTypesEnum.publication,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'Links to a publication manifest. A manifest represents structured information about a publication, such as informative metadata, a list of resources, and a default reading order.',
    ),
  );

  /// related
  static const LinkRelationTypes related = LinkRelationTypes._(
    valueString: 'related',
    valueEnum: LinkRelationTypesEnum.related,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Identifies a related resource.',
    ),
  );

  /// restconf
  static const LinkRelationTypes restconf = LinkRelationTypes._(
    valueString: 'restconf',
    valueEnum: LinkRelationTypesEnum.restconf,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'Identifies the root of RESTCONF API as configured on this HTTP server. The "restconf" relation defines the root of the API defined in RFC8040. Subsequent revisions of RESTCONF will use alternate relation values to support protocol versioning.',
    ),
  );

  /// replies
  static const LinkRelationTypes replies = LinkRelationTypes._(
    valueString: 'replies',
    valueEnum: LinkRelationTypesEnum.replies,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'Identifies a resource that is a reply to the context of the link.',
    ),
  );

  /// ruleinput
  static const LinkRelationTypes ruleinput = LinkRelationTypes._(
    valueString: 'ruleinput',
    valueEnum: LinkRelationTypesEnum.ruleinput,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'The resource identified by the link target provides an input value to an instance of a rule, where the resource which represents the rule instance is identified by the link context.',
    ),
  );

  /// search
  static const LinkRelationTypes search = LinkRelationTypes._(
    valueString: 'search',
    valueEnum: LinkRelationTypesEnum.search,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          "Refers to a resource that can be used to search through the link's context and related resources.",
    ),
  );

  /// section
  static const LinkRelationTypes section = LinkRelationTypes._(
    valueString: 'section',
    valueEnum: LinkRelationTypesEnum.section,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Refers to a section in a collection of resources.',
    ),
  );

  /// self
  static const LinkRelationTypes self = LinkRelationTypes._(
    valueString: 'self',
    valueEnum: LinkRelationTypesEnum.self,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: "Conveys an identifier for the link's context.",
    ),
  );

  /// service
  static const LinkRelationTypes service = LinkRelationTypes._(
    valueString: 'service',
    valueEnum: LinkRelationTypesEnum.service,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'Indicates a URI that can be used to retrieve a service document.',
    ),
  );

  /// service_desc
  static const LinkRelationTypes serviceDesc = LinkRelationTypes._(
    valueString: 'service-desc',
    valueEnum: LinkRelationTypesEnum.serviceDesc,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'Identifies service description for the context that is primarily intended for consumption by machines.',
    ),
  );

  /// service_doc
  static const LinkRelationTypes serviceDoc = LinkRelationTypes._(
    valueString: 'service-doc',
    valueEnum: LinkRelationTypesEnum.serviceDoc,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'Identifies service documentation for the context that is primarily intended for human consumption.',
    ),
  );

  /// service_meta
  static const LinkRelationTypes serviceMeta = LinkRelationTypes._(
    valueString: 'service-meta',
    valueEnum: LinkRelationTypesEnum.serviceMeta,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'Identifies general metadata for the context that is primarily intended for consumption by machines.',
    ),
  );

  /// sponsored
  static const LinkRelationTypes sponsored = LinkRelationTypes._(
    valueString: 'sponsored',
    valueEnum: LinkRelationTypesEnum.sponsored,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'Refers to a resource that is within a context that is sponsored (such as advertising or another compensation agreement).',
    ),
  );

  /// start
  static const LinkRelationTypes start = LinkRelationTypes._(
    valueString: 'start',
    valueEnum: LinkRelationTypesEnum.start,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Refers to the first resource in a collection of resources.',
    ),
  );

  /// status
  static const LinkRelationTypes status = LinkRelationTypes._(
    valueString: 'status',
    valueEnum: LinkRelationTypesEnum.status,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          "Identifies a resource that represents the context's status.",
    ),
  );

  /// stylesheet
  static const LinkRelationTypes stylesheet = LinkRelationTypes._(
    valueString: 'stylesheet',
    valueEnum: LinkRelationTypesEnum.stylesheet,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Refers to a stylesheet.',
    ),
  );

  /// subsection
  static const LinkRelationTypes subsection = LinkRelationTypes._(
    valueString: 'subsection',
    valueEnum: LinkRelationTypesEnum.subsection,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'Refers to a resource serving as a subsection in a collection of resources.',
    ),
  );

  /// successor_version
  static const LinkRelationTypes successorVersion = LinkRelationTypes._(
    valueString: 'successor-version',
    valueEnum: LinkRelationTypesEnum.successorVersion,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'Points to a resource containing the successor version in the version history.',
    ),
  );

  /// sunset
  static const LinkRelationTypes sunset = LinkRelationTypes._(
    valueString: 'sunset',
    valueEnum: LinkRelationTypesEnum.sunset,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          "Identifies a resource that provides information about the context's retirement policy.",
    ),
  );

  /// tag
  static const LinkRelationTypes tag = LinkRelationTypes._(
    valueString: 'tag',
    valueEnum: LinkRelationTypesEnum.tag,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'Gives a tag (identified by the given address) that applies to the current document.',
    ),
  );

  /// terms_of_service
  static const LinkRelationTypes termsOfService = LinkRelationTypes._(
    valueString: 'terms-of-service',
    valueEnum: LinkRelationTypesEnum.termsOfService,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          "Refers to the terms of service associated with the link's context.",
    ),
  );

  /// timegate
  static const LinkRelationTypes timegate = LinkRelationTypes._(
    valueString: 'timegate',
    valueEnum: LinkRelationTypesEnum.timegate,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'The Target IRI points to a TimeGate for an Original Resource.',
    ),
  );

  /// timemap
  static const LinkRelationTypes timemap = LinkRelationTypes._(
    valueString: 'timemap',
    valueEnum: LinkRelationTypesEnum.timemap,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'The Target IRI points to a TimeMap for an Original Resource.',
    ),
  );

  /// type
  static const LinkRelationTypes type = LinkRelationTypes._(
    valueString: 'type',
    valueEnum: LinkRelationTypesEnum.type,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          "Refers to a resource identifying the abstract semantic type of which the link's context is considered to be an instance.",
    ),
  );

  /// ugc
  static const LinkRelationTypes ugc = LinkRelationTypes._(
    valueString: 'ugc',
    valueEnum: LinkRelationTypesEnum.ugc,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'Refers to a resource that is within a context that is User Generated Content.',
    ),
  );

  /// up
  static const LinkRelationTypes up = LinkRelationTypes._(
    valueString: 'up',
    valueEnum: LinkRelationTypesEnum.up,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Refers to a parent document in a hierarchy of documents.',
    ),
  );

  /// version_history
  static const LinkRelationTypes versionHistory = LinkRelationTypes._(
    valueString: 'version-history',
    valueEnum: LinkRelationTypesEnum.versionHistory,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'Points to a resource containing the version history for the context.',
    ),
  );

  /// via
  static const LinkRelationTypes via = LinkRelationTypes._(
    valueString: 'via',
    valueEnum: LinkRelationTypesEnum.via,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          "Identifies a resource that is the source of the information in the link's context.",
    ),
  );

  /// webmention
  static const LinkRelationTypes webmention = LinkRelationTypes._(
    valueString: 'webmention',
    valueEnum: LinkRelationTypesEnum.webmention,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'Identifies a target URI that supports the Webmention protocol. This allows clients that mention a resource in some form of publishing process to contact that endpoint and inform it that this resource has been mentioned.',
    ),
  );

  /// working_copy
  static const LinkRelationTypes workingCopy = LinkRelationTypes._(
    valueString: 'working-copy',
    valueEnum: LinkRelationTypesEnum.workingCopy,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Points to a working copy for this resource.',
    ),
  );

  /// working_copy_of
  static const LinkRelationTypes workingCopyOf = LinkRelationTypes._(
    valueString: 'working-copy-of',
    valueEnum: LinkRelationTypesEnum.workingCopyOf,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/iana-link-relations',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString:
          'Points to the versioned resource from which this working copy was obtained.',
    ),
  );

  /// List of all enum-like values
  static final List<LinkRelationTypes> values = [
    about,
    acl,
    alternate,
    amphtml,
    appendix,
    appleTouchIcon,
    appleTouchStartupImage,
    archives,
    author,
    blockedBy,
    bookmark,
    canonical,
    chapter,
    citeAs,
    collection,
    contents,
    convertedFrom,
    copyright,
    createForm,
    current,
    describedby,
    describes,
    disclosure,
    dnsPrefetch,
    duplicate,
    edit,
    editForm,
    editMedia,
    enclosure,
    external_,
    first,
    glossary,
    help,
    hosts,
    hub,
    icon,
    index_,
    intervalAfter,
    intervalBefore,
    intervalContains,
    intervalDisjoint,
    intervalDuring,
    intervalEquals,
    intervalFinishedBy,
    intervalFinishes,
    intervalIn,
    intervalMeets,
    intervalMetBy,
    intervalOverlappedBy,
    intervalOverlaps,
    intervalStartedBy,
    intervalStarts,
    item,
    last,
    latestVersion,
    license,
    linkset,
    lrdd,
    manifest,
    maskIcon,
    mediaFeed,
    memento,
    micropub,
    modulepreload,
    monitor,
    monitorGroup,
    next,
    nextArchive,
    nofollow,
    noopener,
    noreferrer,
    opener,
    openid2LocalId,
    openid2Provider,
    original,
    p3Pv1,
    payment,
    pingback,
    preconnect,
    predecessorVersion,
    prefetch,
    preload,
    prerender,
    prev,
    preview,
    previous,
    prevArchive,
    privacyPolicy,
    profile,
    publication,
    related,
    restconf,
    replies,
    ruleinput,
    search,
    section,
    self,
    service,
    serviceDesc,
    serviceDoc,
    serviceMeta,
    sponsored,
    start,
    status,
    stylesheet,
    subsection,
    successorVersion,
    sunset,
    tag,
    termsOfService,
    timegate,
    timemap,
    type,
    ugc,
    up,
    versionHistory,
    via,
    webmention,
    workingCopy,
    workingCopyOf,
  ];

  /// Returns the enum value with an element attached
  LinkRelationTypes withElement(Element? newElement) {
    return LinkRelationTypes._(
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
  LinkRelationTypes clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  LinkRelationTypesCopyWithImpl<LinkRelationTypes> get copyWith =>
      LinkRelationTypesCopyWithImpl<LinkRelationTypes>(
        this,
        (v) => v as LinkRelationTypes,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class LinkRelationTypesCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  LinkRelationTypesCopyWithImpl(super._value, super._then);

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
      LinkRelationTypes(
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
