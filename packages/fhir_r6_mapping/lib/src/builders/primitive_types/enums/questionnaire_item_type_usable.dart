// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for QuestionnaireItemTypeUsable
enum QuestionnaireItemTypeUsableBuilderEnum {
  /// group
  group,

  /// display
  display_,

  /// question
  question,

  /// boolean
  boolean,

  /// decimal
  decimal,

  /// integer
  integer,

  /// date
  date,

  /// dateTime
  dateTime,

  /// time
  time,

  /// string
  string,

  /// text
  text,

  /// url
  url,

  /// coding
  coding,

  /// attachment
  attachment,

  /// reference
  reference,

  /// quantity
  quantity,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case QuestionnaireItemTypeUsableBuilderEnum.group:
        return 'group';
      case QuestionnaireItemTypeUsableBuilderEnum.display_:
        return 'display';
      case QuestionnaireItemTypeUsableBuilderEnum.question:
        return 'question';
      case QuestionnaireItemTypeUsableBuilderEnum.boolean:
        return 'boolean';
      case QuestionnaireItemTypeUsableBuilderEnum.decimal:
        return 'decimal';
      case QuestionnaireItemTypeUsableBuilderEnum.integer:
        return 'integer';
      case QuestionnaireItemTypeUsableBuilderEnum.date:
        return 'date';
      case QuestionnaireItemTypeUsableBuilderEnum.dateTime:
        return 'dateTime';
      case QuestionnaireItemTypeUsableBuilderEnum.time:
        return 'time';
      case QuestionnaireItemTypeUsableBuilderEnum.string:
        return 'string';
      case QuestionnaireItemTypeUsableBuilderEnum.text:
        return 'text';
      case QuestionnaireItemTypeUsableBuilderEnum.url:
        return 'url';
      case QuestionnaireItemTypeUsableBuilderEnum.coding:
        return 'coding';
      case QuestionnaireItemTypeUsableBuilderEnum.attachment:
        return 'attachment';
      case QuestionnaireItemTypeUsableBuilderEnum.reference:
        return 'reference';
      case QuestionnaireItemTypeUsableBuilderEnum.quantity:
        return 'quantity';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static QuestionnaireItemTypeUsableBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return QuestionnaireItemTypeUsableBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static QuestionnaireItemTypeUsableBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'group':
        return QuestionnaireItemTypeUsableBuilderEnum.group;
      case 'display':
        return QuestionnaireItemTypeUsableBuilderEnum.display_;
      case 'question':
        return QuestionnaireItemTypeUsableBuilderEnum.question;
      case 'boolean':
        return QuestionnaireItemTypeUsableBuilderEnum.boolean;
      case 'decimal':
        return QuestionnaireItemTypeUsableBuilderEnum.decimal;
      case 'integer':
        return QuestionnaireItemTypeUsableBuilderEnum.integer;
      case 'date':
        return QuestionnaireItemTypeUsableBuilderEnum.date;
      case 'dateTime':
        return QuestionnaireItemTypeUsableBuilderEnum.dateTime;
      case 'time':
        return QuestionnaireItemTypeUsableBuilderEnum.time;
      case 'string':
        return QuestionnaireItemTypeUsableBuilderEnum.string;
      case 'text':
        return QuestionnaireItemTypeUsableBuilderEnum.text;
      case 'url':
        return QuestionnaireItemTypeUsableBuilderEnum.url;
      case 'coding':
        return QuestionnaireItemTypeUsableBuilderEnum.coding;
      case 'attachment':
        return QuestionnaireItemTypeUsableBuilderEnum.attachment;
      case 'reference':
        return QuestionnaireItemTypeUsableBuilderEnum.reference;
      case 'quantity':
        return QuestionnaireItemTypeUsableBuilderEnum.quantity;
    }
    return null;
  }
}

/// Item types allowed to appear on Questionnaire.type (excludes the
/// abstract 'questionnaire' code.
class QuestionnaireItemTypeUsableBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  QuestionnaireItemTypeUsableBuilder._({
    required super.valueString,
    this.valueEnum,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory QuestionnaireItemTypeUsableBuilder(
    String? rawValue, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCodeBuilder._validateCode(rawValue) : null;
    final valueEnum = QuestionnaireItemTypeUsableBuilderEnum.fromString(
      valueString,
    );
    return QuestionnaireItemTypeUsableBuilder._(
      valueString: valueString,
      valueEnum: valueEnum,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Create empty [QuestionnaireItemTypeUsableBuilder]
  /// with element only
  factory QuestionnaireItemTypeUsableBuilder.empty() =>
      QuestionnaireItemTypeUsableBuilder._(valueString: null);

  /// Factory constructor to create
  /// [QuestionnaireItemTypeUsableBuilder] from JSON.
  factory QuestionnaireItemTypeUsableBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return QuestionnaireItemTypeUsableBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'QuestionnaireItemTypeUsableBuilder cannot be constructed from JSON.',
      );
    }
    return QuestionnaireItemTypeUsableBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for QuestionnaireItemTypeUsableBuilder
  final QuestionnaireItemTypeUsableBuilderEnum? valueEnum;

  /// group
  static QuestionnaireItemTypeUsableBuilder group =
      QuestionnaireItemTypeUsableBuilder._(
    valueString: 'group',
    valueEnum: QuestionnaireItemTypeUsableBuilderEnum.group,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/item-type-useable',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Group',
    ),
  );

  /// display_
  static QuestionnaireItemTypeUsableBuilder display_ =
      QuestionnaireItemTypeUsableBuilder._(
    valueString: 'display',
    valueEnum: QuestionnaireItemTypeUsableBuilderEnum.display_,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/item-type-useable',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Display',
    ),
  );

  /// question
  static QuestionnaireItemTypeUsableBuilder question =
      QuestionnaireItemTypeUsableBuilder._(
    valueString: 'question',
    valueEnum: QuestionnaireItemTypeUsableBuilderEnum.question,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/item-type-useable',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Question',
    ),
  );

  /// boolean
  static QuestionnaireItemTypeUsableBuilder boolean =
      QuestionnaireItemTypeUsableBuilder._(
    valueString: 'boolean',
    valueEnum: QuestionnaireItemTypeUsableBuilderEnum.boolean,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/item-type-useable',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Boolean',
    ),
  );

  /// decimal
  static QuestionnaireItemTypeUsableBuilder decimal =
      QuestionnaireItemTypeUsableBuilder._(
    valueString: 'decimal',
    valueEnum: QuestionnaireItemTypeUsableBuilderEnum.decimal,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/item-type-useable',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Decimal',
    ),
  );

  /// integer
  static QuestionnaireItemTypeUsableBuilder integer =
      QuestionnaireItemTypeUsableBuilder._(
    valueString: 'integer',
    valueEnum: QuestionnaireItemTypeUsableBuilderEnum.integer,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/item-type-useable',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Integer',
    ),
  );

  /// date
  static QuestionnaireItemTypeUsableBuilder date =
      QuestionnaireItemTypeUsableBuilder._(
    valueString: 'date',
    valueEnum: QuestionnaireItemTypeUsableBuilderEnum.date,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/item-type-useable',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Date',
    ),
  );

  /// dateTime
  static QuestionnaireItemTypeUsableBuilder dateTime =
      QuestionnaireItemTypeUsableBuilder._(
    valueString: 'dateTime',
    valueEnum: QuestionnaireItemTypeUsableBuilderEnum.dateTime,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/item-type-useable',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Date Time',
    ),
  );

  /// time
  static QuestionnaireItemTypeUsableBuilder time =
      QuestionnaireItemTypeUsableBuilder._(
    valueString: 'time',
    valueEnum: QuestionnaireItemTypeUsableBuilderEnum.time,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/item-type-useable',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Time',
    ),
  );

  /// string
  static QuestionnaireItemTypeUsableBuilder string =
      QuestionnaireItemTypeUsableBuilder._(
    valueString: 'string',
    valueEnum: QuestionnaireItemTypeUsableBuilderEnum.string,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/item-type-useable',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'String',
    ),
  );

  /// text
  static QuestionnaireItemTypeUsableBuilder text =
      QuestionnaireItemTypeUsableBuilder._(
    valueString: 'text',
    valueEnum: QuestionnaireItemTypeUsableBuilderEnum.text,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/item-type-useable',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Text',
    ),
  );

  /// url
  static QuestionnaireItemTypeUsableBuilder url =
      QuestionnaireItemTypeUsableBuilder._(
    valueString: 'url',
    valueEnum: QuestionnaireItemTypeUsableBuilderEnum.url,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/item-type-useable',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Url',
    ),
  );

  /// coding
  static QuestionnaireItemTypeUsableBuilder coding =
      QuestionnaireItemTypeUsableBuilder._(
    valueString: 'coding',
    valueEnum: QuestionnaireItemTypeUsableBuilderEnum.coding,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/item-type-useable',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Coding',
    ),
  );

  /// attachment
  static QuestionnaireItemTypeUsableBuilder attachment =
      QuestionnaireItemTypeUsableBuilder._(
    valueString: 'attachment',
    valueEnum: QuestionnaireItemTypeUsableBuilderEnum.attachment,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/item-type-useable',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Attachment',
    ),
  );

  /// reference
  static QuestionnaireItemTypeUsableBuilder reference =
      QuestionnaireItemTypeUsableBuilder._(
    valueString: 'reference',
    valueEnum: QuestionnaireItemTypeUsableBuilderEnum.reference,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/item-type-useable',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Reference',
    ),
  );

  /// quantity
  static QuestionnaireItemTypeUsableBuilder quantity =
      QuestionnaireItemTypeUsableBuilder._(
    valueString: 'quantity',
    valueEnum: QuestionnaireItemTypeUsableBuilderEnum.quantity,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/item-type-useable',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Quantity',
    ),
  );

  /// For instances where an Element is present but not value
  static QuestionnaireItemTypeUsableBuilder elementOnly =
      QuestionnaireItemTypeUsableBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<QuestionnaireItemTypeUsableBuilder> values = [
    group,
    display_,
    question,
    boolean,
    decimal,
    integer,
    date,
    dateTime,
    time,
    string,
    text,
    url,
    coding,
    attachment,
    reference,
    quantity,
  ];

  /// Returns the enum value with an element attached
  QuestionnaireItemTypeUsableBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return QuestionnaireItemTypeUsableBuilder._(
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
}
