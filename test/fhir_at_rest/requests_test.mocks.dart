// Mocks generated by Mockito 5.4.4 from annotations
// in fhir_r6/test/fhir_at_rest/requests_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:fhir_primitives/fhir_primitives.dart' as _i6;
import 'package:fhir_r6/fhir_r6.dart' as _i2;
import 'package:http/http.dart' as _i5;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i3;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeUri_0 extends _i1.SmartFake implements Uri {
  _FakeUri_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _Fake$FhirRequestCopyWith_1<$Res> extends _i1.SmartFake
    implements _i2.$FhirRequestCopyWith<$Res> {
  _Fake$FhirRequestCopyWith_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeResource_2 extends _i1.SmartFake implements _i2.Resource {
  _FakeResource_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeFhirHttpRequest_3 extends _i1.SmartFake
    implements _i2.FhirHttpRequest {
  _FakeFhirHttpRequest_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [FhirRequest].
///
/// See the documentation for Mockito's code generation for more information.
class MockFhirRequest extends _i1.Mock implements _i2.FhirRequest {
  MockFhirRequest() {
    _i1.throwOnMissingStub(this);
  }

  @override
  String get url => (super.noSuchMethod(
        Invocation.getter(#url),
        returnValue: _i3.dummyValue<String>(
          this,
          Invocation.getter(#url),
        ),
      ) as String);

  @override
  Uri get base => (super.noSuchMethod(
        Invocation.getter(#base),
        returnValue: _FakeUri_0(
          this,
          Invocation.getter(#base),
        ),
      ) as Uri);

  @override
  _i2.Summary get summary => (super.noSuchMethod(
        Invocation.getter(#summary),
        returnValue: _i2.Summary.true_,
      ) as _i2.Summary);

  @override
  List<String> get elements => (super.noSuchMethod(
        Invocation.getter(#elements),
        returnValue: <String>[],
      ) as List<String>);

  @override
  List<String> get parameters => (super.noSuchMethod(
        Invocation.getter(#parameters),
        returnValue: <String>[],
      ) as List<String>);

  @override
  String get accept => (super.noSuchMethod(
        Invocation.getter(#accept),
        returnValue: _i3.dummyValue<String>(
          this,
          Invocation.getter(#accept),
        ),
      ) as String);

  @override
  _i2.$FhirRequestCopyWith<_i2.FhirRequest> get copyWith => (super.noSuchMethod(
        Invocation.getter(#copyWith),
        returnValue: _Fake$FhirRequestCopyWith_1<_i2.FhirRequest>(
          this,
          Invocation.getter(#copyWith),
        ),
      ) as _i2.$FhirRequestCopyWith<_i2.FhirRequest>);

  @override
  String toJsonString() => (super.noSuchMethod(
        Invocation.method(
          #toJsonString,
          [],
        ),
        returnValue: _i3.dummyValue<String>(
          this,
          Invocation.method(
            #toJsonString,
            [],
          ),
        ),
      ) as String);

  @override
  _i4.Future<_i2.Resource> request({Map<String, String>? headers}) =>
      (super.noSuchMethod(
        Invocation.method(
          #request,
          [],
          {#headers: headers},
        ),
        returnValue: _i4.Future<_i2.Resource>.value(_FakeResource_2(
          this,
          Invocation.method(
            #request,
            [],
            {#headers: headers},
          ),
        )),
      ) as _i4.Future<_i2.Resource>);

  @override
  _i2.FhirHttpRequest toFhirHttpRequest({Map<String, String>? headers}) =>
      (super.noSuchMethod(
        Invocation.method(
          #toFhirHttpRequest,
          [],
          {#headers: headers},
        ),
        returnValue: _FakeFhirHttpRequest_3(
          this,
          Invocation.method(
            #toFhirHttpRequest,
            [],
            {#headers: headers},
          ),
        ),
      ) as _i2.FhirHttpRequest);

  @override
  String uri({List<String>? parameters = const []}) => (super.noSuchMethod(
        Invocation.method(
          #uri,
          [],
          {#parameters: parameters},
        ),
        returnValue: _i3.dummyValue<String>(
          this,
          Invocation.method(
            #uri,
            [],
            {#parameters: parameters},
          ),
        ),
      ) as String);

  @override
  String formData({List<String>? parameters = const []}) => (super.noSuchMethod(
        Invocation.method(
          #formData,
          [],
          {#parameters: parameters},
        ),
        returnValue: _i3.dummyValue<String>(
          this,
          Invocation.method(
            #formData,
            [],
            {#parameters: parameters},
          ),
        ),
      ) as String);

  @override
  TResult when<TResult extends Object?>({
    required TResult Function(
      Uri,
      _i2.R6ResourceType,
      String,
      bool?,
      _i2.Summary,
      String?,
      List<String>,
      List<String>,
      _i2.SupportedMimeType?,
      String,
      _i5.Client?,
      Map<String, String>?,
    )? read,
    required TResult Function(
      Uri,
      _i2.R6ResourceType,
      String,
      _i6.FhirId,
      bool?,
      _i2.Summary,
      String?,
      List<String>,
      List<String>,
      _i2.SupportedMimeType?,
      String,
      _i5.Client?,
      Map<String, String>?,
    )? vRead,
    required TResult Function(
      Uri,
      _i2.Resource,
      bool?,
      _i2.Summary,
      String?,
      List<String>,
      List<String>,
      _i2.SupportedMimeType?,
      String,
      _i5.Client?,
      Map<String, String>?,
    )? update,
    required TResult Function(
      Uri,
      _i2.Resource,
      bool?,
      _i2.Summary,
      String?,
      List<String>,
      List<String>,
      _i2.SupportedMimeType?,
      String,
      _i5.Client?,
      Map<String, String>?,
    )? patch,
    required TResult Function(
      Uri,
      _i2.R6ResourceType,
      String,
      bool?,
      _i2.Summary,
      String?,
      List<String>,
      List<String>,
      _i2.SupportedMimeType?,
      String,
      _i5.Client?,
      Map<String, String>?,
    )? delete,
    required TResult Function(
      Uri,
      _i2.Resource,
      bool?,
      _i2.Summary,
      String?,
      List<String>,
      List<String>,
      _i2.SupportedMimeType?,
      String,
      _i5.Client?,
      Map<String, String>?,
    )? create,
    required TResult Function(
      Uri,
      _i2.R6ResourceType,
      bool?,
      _i2.Summary,
      String?,
      List<String>,
      List<String>,
      bool,
      _i2.RestfulRequest,
      _i2.SupportedMimeType?,
      String,
      _i5.Client?,
      Map<String, String>?,
    )? search,
    required TResult Function(
      Uri,
      bool?,
      _i2.Summary,
      String?,
      List<String>,
      List<String>,
      _i2.SupportedMimeType?,
      String,
      _i5.Client?,
      Map<String, String>?,
    )? searchAll,
    required TResult Function(
      Uri,
      bool?,
      _i2.Summary,
      String?,
      List<String>,
      List<String>,
      _i2.Mode,
      _i2.SupportedMimeType?,
      String,
      _i5.Client?,
      Map<String, String>?,
    )? capabilities,
    required TResult Function(
      Uri,
      bool?,
      _i2.Summary,
      String?,
      List<String>,
      List<String>,
      _i2.Bundle,
      _i2.SupportedMimeType?,
      String,
      _i5.Client?,
      Map<String, String>?,
    )? transaction,
    required TResult Function(
      Uri,
      bool?,
      _i2.Summary,
      String?,
      List<String>,
      List<String>,
      _i2.Bundle,
      _i2.SupportedMimeType?,
      String,
      _i5.Client?,
      Map<String, String>?,
    )? batch,
    required TResult Function(
      Uri,
      _i2.R6ResourceType,
      String,
      bool?,
      _i2.Summary,
      String?,
      List<String>,
      List<String>,
      int?,
      _i6.FhirInstant?,
      _i6.FhirDateTime?,
      String?,
      _i2.SupportedMimeType?,
      String,
      _i5.Client?,
      Map<String, String>?,
    )? history,
    required TResult Function(
      Uri,
      _i2.R6ResourceType,
      bool?,
      _i2.Summary,
      String?,
      List<String>,
      List<String>,
      int?,
      _i6.FhirInstant?,
      _i6.FhirDateTime?,
      String?,
      _i2.SupportedMimeType?,
      String,
      _i5.Client?,
      Map<String, String>?,
    )? historyType,
    required TResult Function(
      Uri,
      bool?,
      _i2.Summary,
      String?,
      List<String>,
      List<String>,
      int?,
      _i6.FhirInstant?,
      _i6.FhirDateTime?,
      String?,
      _i2.SupportedMimeType?,
      String,
      _i5.Client?,
      Map<String, String>?,
    )? historyAll,
    required TResult Function(
      Uri,
      _i2.R6ResourceType?,
      String?,
      bool?,
      _i2.Summary,
      String?,
      List<String>,
      List<String>,
      _i2.Parameters?,
      String,
      bool,
      bool,
      _i2.SupportedMimeType?,
      String,
      _i5.Client?,
      Map<String, String>?,
    )? operation,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #when,
          [],
          {
            #read: read,
            #vRead: vRead,
            #update: update,
            #patch: patch,
            #delete: delete,
            #create: create,
            #search: search,
            #searchAll: searchAll,
            #capabilities: capabilities,
            #transaction: transaction,
            #batch: batch,
            #history: history,
            #historyType: historyType,
            #historyAll: historyAll,
            #operation: operation,
          },
        ),
        returnValue: _i3.dummyValue<TResult>(
          this,
          Invocation.method(
            #when,
            [],
            {
              #read: read,
              #vRead: vRead,
              #update: update,
              #patch: patch,
              #delete: delete,
              #create: create,
              #search: search,
              #searchAll: searchAll,
              #capabilities: capabilities,
              #transaction: transaction,
              #batch: batch,
              #history: history,
              #historyType: historyType,
              #historyAll: historyAll,
              #operation: operation,
            },
          ),
        ),
      ) as TResult);

  @override
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      Uri,
      _i2.R6ResourceType,
      String,
      bool?,
      _i2.Summary,
      String?,
      List<String>,
      List<String>,
      _i2.SupportedMimeType?,
      String,
      _i5.Client?,
      Map<String, String>?,
    )? read,
    TResult Function(
      Uri,
      _i2.R6ResourceType,
      String,
      _i6.FhirId,
      bool?,
      _i2.Summary,
      String?,
      List<String>,
      List<String>,
      _i2.SupportedMimeType?,
      String,
      _i5.Client?,
      Map<String, String>?,
    )? vRead,
    TResult Function(
      Uri,
      _i2.Resource,
      bool?,
      _i2.Summary,
      String?,
      List<String>,
      List<String>,
      _i2.SupportedMimeType?,
      String,
      _i5.Client?,
      Map<String, String>?,
    )? update,
    TResult Function(
      Uri,
      _i2.Resource,
      bool?,
      _i2.Summary,
      String?,
      List<String>,
      List<String>,
      _i2.SupportedMimeType?,
      String,
      _i5.Client?,
      Map<String, String>?,
    )? patch,
    TResult Function(
      Uri,
      _i2.R6ResourceType,
      String,
      bool?,
      _i2.Summary,
      String?,
      List<String>,
      List<String>,
      _i2.SupportedMimeType?,
      String,
      _i5.Client?,
      Map<String, String>?,
    )? delete,
    TResult Function(
      Uri,
      _i2.Resource,
      bool?,
      _i2.Summary,
      String?,
      List<String>,
      List<String>,
      _i2.SupportedMimeType?,
      String,
      _i5.Client?,
      Map<String, String>?,
    )? create,
    TResult Function(
      Uri,
      _i2.R6ResourceType,
      bool?,
      _i2.Summary,
      String?,
      List<String>,
      List<String>,
      bool,
      _i2.RestfulRequest,
      _i2.SupportedMimeType?,
      String,
      _i5.Client?,
      Map<String, String>?,
    )? search,
    TResult Function(
      Uri,
      bool?,
      _i2.Summary,
      String?,
      List<String>,
      List<String>,
      _i2.SupportedMimeType?,
      String,
      _i5.Client?,
      Map<String, String>?,
    )? searchAll,
    TResult Function(
      Uri,
      bool?,
      _i2.Summary,
      String?,
      List<String>,
      List<String>,
      _i2.Mode,
      _i2.SupportedMimeType?,
      String,
      _i5.Client?,
      Map<String, String>?,
    )? capabilities,
    TResult Function(
      Uri,
      bool?,
      _i2.Summary,
      String?,
      List<String>,
      List<String>,
      _i2.Bundle,
      _i2.SupportedMimeType?,
      String,
      _i5.Client?,
      Map<String, String>?,
    )? transaction,
    TResult Function(
      Uri,
      bool?,
      _i2.Summary,
      String?,
      List<String>,
      List<String>,
      _i2.Bundle,
      _i2.SupportedMimeType?,
      String,
      _i5.Client?,
      Map<String, String>?,
    )? batch,
    TResult Function(
      Uri,
      _i2.R6ResourceType,
      String,
      bool?,
      _i2.Summary,
      String?,
      List<String>,
      List<String>,
      int?,
      _i6.FhirInstant?,
      _i6.FhirDateTime?,
      String?,
      _i2.SupportedMimeType?,
      String,
      _i5.Client?,
      Map<String, String>?,
    )? history,
    TResult Function(
      Uri,
      _i2.R6ResourceType,
      bool?,
      _i2.Summary,
      String?,
      List<String>,
      List<String>,
      int?,
      _i6.FhirInstant?,
      _i6.FhirDateTime?,
      String?,
      _i2.SupportedMimeType?,
      String,
      _i5.Client?,
      Map<String, String>?,
    )? historyType,
    TResult Function(
      Uri,
      bool?,
      _i2.Summary,
      String?,
      List<String>,
      List<String>,
      int?,
      _i6.FhirInstant?,
      _i6.FhirDateTime?,
      String?,
      _i2.SupportedMimeType?,
      String,
      _i5.Client?,
      Map<String, String>?,
    )? historyAll,
    TResult Function(
      Uri,
      _i2.R6ResourceType?,
      String?,
      bool?,
      _i2.Summary,
      String?,
      List<String>,
      List<String>,
      _i2.Parameters?,
      String,
      bool,
      bool,
      _i2.SupportedMimeType?,
      String,
      _i5.Client?,
      Map<String, String>?,
    )? operation,
    required TResult Function()? orElse,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #maybeWhen,
          [],
          {
            #read: read,
            #vRead: vRead,
            #update: update,
            #patch: patch,
            #delete: delete,
            #create: create,
            #search: search,
            #searchAll: searchAll,
            #capabilities: capabilities,
            #transaction: transaction,
            #batch: batch,
            #history: history,
            #historyType: historyType,
            #historyAll: historyAll,
            #operation: operation,
            #orElse: orElse,
          },
        ),
        returnValue: _i3.dummyValue<TResult>(
          this,
          Invocation.method(
            #maybeWhen,
            [],
            {
              #read: read,
              #vRead: vRead,
              #update: update,
              #patch: patch,
              #delete: delete,
              #create: create,
              #search: search,
              #searchAll: searchAll,
              #capabilities: capabilities,
              #transaction: transaction,
              #batch: batch,
              #history: history,
              #historyType: historyType,
              #historyAll: historyAll,
              #operation: operation,
              #orElse: orElse,
            },
          ),
        ),
      ) as TResult);

  @override
  TResult map<TResult extends Object?>({
    required TResult Function(_i2.FhirReadRequest)? read,
    required TResult Function(_i2.FhirVReadRequest)? vRead,
    required TResult Function(_i2.FhirUpdateRequest)? update,
    required TResult Function(_i2.FhirPatchRequest)? patch,
    required TResult Function(_i2.FhirDeleteRequest)? delete,
    required TResult Function(_i2.FhirCreateRequest)? create,
    required TResult Function(_i2.FhirSearchRequest)? search,
    required TResult Function(_i2.FhirSearchAllRequest)? searchAll,
    required TResult Function(_i2.FhirCapabilitiesRequest)? capabilities,
    required TResult Function(_i2.FhirTransactionRequest)? transaction,
    required TResult Function(_i2.FhirBatchRequest)? batch,
    required TResult Function(_i2.FhirHistoryRequest)? history,
    required TResult Function(_i2.FhirHistoryTypeRequest)? historyType,
    required TResult Function(_i2.FhirHistoryAllRequest)? historyAll,
    required TResult Function(_i2.FhirOperationRequest)? operation,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #map,
          [],
          {
            #read: read,
            #vRead: vRead,
            #update: update,
            #patch: patch,
            #delete: delete,
            #create: create,
            #search: search,
            #searchAll: searchAll,
            #capabilities: capabilities,
            #transaction: transaction,
            #batch: batch,
            #history: history,
            #historyType: historyType,
            #historyAll: historyAll,
            #operation: operation,
          },
        ),
        returnValue: _i3.dummyValue<TResult>(
          this,
          Invocation.method(
            #map,
            [],
            {
              #read: read,
              #vRead: vRead,
              #update: update,
              #patch: patch,
              #delete: delete,
              #create: create,
              #search: search,
              #searchAll: searchAll,
              #capabilities: capabilities,
              #transaction: transaction,
              #batch: batch,
              #history: history,
              #historyType: historyType,
              #historyAll: historyAll,
              #operation: operation,
            },
          ),
        ),
      ) as TResult);

  @override
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_i2.FhirReadRequest)? read,
    TResult Function(_i2.FhirVReadRequest)? vRead,
    TResult Function(_i2.FhirUpdateRequest)? update,
    TResult Function(_i2.FhirPatchRequest)? patch,
    TResult Function(_i2.FhirDeleteRequest)? delete,
    TResult Function(_i2.FhirCreateRequest)? create,
    TResult Function(_i2.FhirSearchRequest)? search,
    TResult Function(_i2.FhirSearchAllRequest)? searchAll,
    TResult Function(_i2.FhirCapabilitiesRequest)? capabilities,
    TResult Function(_i2.FhirTransactionRequest)? transaction,
    TResult Function(_i2.FhirBatchRequest)? batch,
    TResult Function(_i2.FhirHistoryRequest)? history,
    TResult Function(_i2.FhirHistoryTypeRequest)? historyType,
    TResult Function(_i2.FhirHistoryAllRequest)? historyAll,
    TResult Function(_i2.FhirOperationRequest)? operation,
    required TResult Function()? orElse,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #maybeMap,
          [],
          {
            #read: read,
            #vRead: vRead,
            #update: update,
            #patch: patch,
            #delete: delete,
            #create: create,
            #search: search,
            #searchAll: searchAll,
            #capabilities: capabilities,
            #transaction: transaction,
            #batch: batch,
            #history: history,
            #historyType: historyType,
            #historyAll: historyAll,
            #operation: operation,
            #orElse: orElse,
          },
        ),
        returnValue: _i3.dummyValue<TResult>(
          this,
          Invocation.method(
            #maybeMap,
            [],
            {
              #read: read,
              #vRead: vRead,
              #update: update,
              #patch: patch,
              #delete: delete,
              #create: create,
              #search: search,
              #searchAll: searchAll,
              #capabilities: capabilities,
              #transaction: transaction,
              #batch: batch,
              #history: history,
              #historyType: historyType,
              #historyAll: historyAll,
              #operation: operation,
              #orElse: orElse,
            },
          ),
        ),
      ) as TResult);

  @override
  Map<String, dynamic> toJson() => (super.noSuchMethod(
        Invocation.method(
          #toJson,
          [],
        ),
        returnValue: <String, dynamic>{},
      ) as Map<String, dynamic>);
}
