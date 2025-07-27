// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'monetary_component.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $MonetaryComponentCopyWith<T> extends $DataTypeCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    PriceComponentType? type,
    CodeableConcept? code,
    FhirDecimal? factor,
    Money? amount,
    bool? disallowExtensions,
  });
}

class _$MonetaryComponentCopyWithImpl<T>
    implements $MonetaryComponentCopyWith<T> {
  final MonetaryComponent _value;
  final T Function(MonetaryComponent) _then;

  _$MonetaryComponentCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? type = fhirSentinel,
    Object? code = fhirSentinel,
    Object? factor = fhirSentinel,
    Object? amount = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MonetaryComponent(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : (type as PriceComponentType?) ?? _value.type,
        code: identical(code, fhirSentinel)
            ? _value.code
            : code as CodeableConcept?,
        factor: identical(factor, fhirSentinel)
            ? _value.factor
            : factor as FhirDecimal?,
        amount:
            identical(amount, fhirSentinel) ? _value.amount : amount as Money?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MonetaryComponentCopyWithExtension on MonetaryComponent {
  $MonetaryComponentCopyWith<MonetaryComponent> get copyWith =>
      _$MonetaryComponentCopyWithImpl<MonetaryComponent>(
        this,
        (value) => value,
      );
}
