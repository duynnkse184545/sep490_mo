// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'join_questions_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$JoinQuestions {

 int get id; int get hubId; String get content; int get orderNumber; DateTime get createdAt;
/// Create a copy of JoinQuestions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JoinQuestionsCopyWith<JoinQuestions> get copyWith => _$JoinQuestionsCopyWithImpl<JoinQuestions>(this as JoinQuestions, _$identity);

  /// Serializes this JoinQuestions to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JoinQuestions&&(identical(other.id, id) || other.id == id)&&(identical(other.hubId, hubId) || other.hubId == hubId)&&(identical(other.content, content) || other.content == content)&&(identical(other.orderNumber, orderNumber) || other.orderNumber == orderNumber)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,hubId,content,orderNumber,createdAt);

@override
String toString() {
  return 'JoinQuestions(id: $id, hubId: $hubId, content: $content, orderNumber: $orderNumber, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $JoinQuestionsCopyWith<$Res>  {
  factory $JoinQuestionsCopyWith(JoinQuestions value, $Res Function(JoinQuestions) _then) = _$JoinQuestionsCopyWithImpl;
@useResult
$Res call({
 int id, int hubId, String content, int orderNumber, DateTime createdAt
});




}
/// @nodoc
class _$JoinQuestionsCopyWithImpl<$Res>
    implements $JoinQuestionsCopyWith<$Res> {
  _$JoinQuestionsCopyWithImpl(this._self, this._then);

  final JoinQuestions _self;
  final $Res Function(JoinQuestions) _then;

/// Create a copy of JoinQuestions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? hubId = null,Object? content = null,Object? orderNumber = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,hubId: null == hubId ? _self.hubId : hubId // ignore: cast_nullable_to_non_nullable
as int,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,orderNumber: null == orderNumber ? _self.orderNumber : orderNumber // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [JoinQuestions].
extension JoinQuestionsPatterns on JoinQuestions {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _JoinQuestions value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _JoinQuestions() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _JoinQuestions value)  $default,){
final _that = this;
switch (_that) {
case _JoinQuestions():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _JoinQuestions value)?  $default,){
final _that = this;
switch (_that) {
case _JoinQuestions() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int hubId,  String content,  int orderNumber,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _JoinQuestions() when $default != null:
return $default(_that.id,_that.hubId,_that.content,_that.orderNumber,_that.createdAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int hubId,  String content,  int orderNumber,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _JoinQuestions():
return $default(_that.id,_that.hubId,_that.content,_that.orderNumber,_that.createdAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int hubId,  String content,  int orderNumber,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _JoinQuestions() when $default != null:
return $default(_that.id,_that.hubId,_that.content,_that.orderNumber,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _JoinQuestions implements JoinQuestions {
  const _JoinQuestions({required this.id, required this.hubId, required this.content, required this.orderNumber, required this.createdAt});
  factory _JoinQuestions.fromJson(Map<String, dynamic> json) => _$JoinQuestionsFromJson(json);

@override final  int id;
@override final  int hubId;
@override final  String content;
@override final  int orderNumber;
@override final  DateTime createdAt;

/// Create a copy of JoinQuestions
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$JoinQuestionsCopyWith<_JoinQuestions> get copyWith => __$JoinQuestionsCopyWithImpl<_JoinQuestions>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$JoinQuestionsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _JoinQuestions&&(identical(other.id, id) || other.id == id)&&(identical(other.hubId, hubId) || other.hubId == hubId)&&(identical(other.content, content) || other.content == content)&&(identical(other.orderNumber, orderNumber) || other.orderNumber == orderNumber)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,hubId,content,orderNumber,createdAt);

@override
String toString() {
  return 'JoinQuestions(id: $id, hubId: $hubId, content: $content, orderNumber: $orderNumber, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$JoinQuestionsCopyWith<$Res> implements $JoinQuestionsCopyWith<$Res> {
  factory _$JoinQuestionsCopyWith(_JoinQuestions value, $Res Function(_JoinQuestions) _then) = __$JoinQuestionsCopyWithImpl;
@override @useResult
$Res call({
 int id, int hubId, String content, int orderNumber, DateTime createdAt
});




}
/// @nodoc
class __$JoinQuestionsCopyWithImpl<$Res>
    implements _$JoinQuestionsCopyWith<$Res> {
  __$JoinQuestionsCopyWithImpl(this._self, this._then);

  final _JoinQuestions _self;
  final $Res Function(_JoinQuestions) _then;

/// Create a copy of JoinQuestions
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? hubId = null,Object? content = null,Object? orderNumber = null,Object? createdAt = null,}) {
  return _then(_JoinQuestions(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,hubId: null == hubId ? _self.hubId : hubId // ignore: cast_nullable_to_non_nullable
as int,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,orderNumber: null == orderNumber ? _self.orderNumber : orderNumber // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$CreateQuestionRequest {

 String get content; int get orderNumber;
/// Create a copy of CreateQuestionRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateQuestionRequestCopyWith<CreateQuestionRequest> get copyWith => _$CreateQuestionRequestCopyWithImpl<CreateQuestionRequest>(this as CreateQuestionRequest, _$identity);

  /// Serializes this CreateQuestionRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateQuestionRequest&&(identical(other.content, content) || other.content == content)&&(identical(other.orderNumber, orderNumber) || other.orderNumber == orderNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,content,orderNumber);

@override
String toString() {
  return 'CreateQuestionRequest(content: $content, orderNumber: $orderNumber)';
}


}

/// @nodoc
abstract mixin class $CreateQuestionRequestCopyWith<$Res>  {
  factory $CreateQuestionRequestCopyWith(CreateQuestionRequest value, $Res Function(CreateQuestionRequest) _then) = _$CreateQuestionRequestCopyWithImpl;
@useResult
$Res call({
 String content, int orderNumber
});




}
/// @nodoc
class _$CreateQuestionRequestCopyWithImpl<$Res>
    implements $CreateQuestionRequestCopyWith<$Res> {
  _$CreateQuestionRequestCopyWithImpl(this._self, this._then);

  final CreateQuestionRequest _self;
  final $Res Function(CreateQuestionRequest) _then;

/// Create a copy of CreateQuestionRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? content = null,Object? orderNumber = null,}) {
  return _then(_self.copyWith(
content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,orderNumber: null == orderNumber ? _self.orderNumber : orderNumber // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateQuestionRequest].
extension CreateQuestionRequestPatterns on CreateQuestionRequest {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateQuestionRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateQuestionRequest() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateQuestionRequest value)  $default,){
final _that = this;
switch (_that) {
case _CreateQuestionRequest():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateQuestionRequest value)?  $default,){
final _that = this;
switch (_that) {
case _CreateQuestionRequest() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String content,  int orderNumber)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateQuestionRequest() when $default != null:
return $default(_that.content,_that.orderNumber);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String content,  int orderNumber)  $default,) {final _that = this;
switch (_that) {
case _CreateQuestionRequest():
return $default(_that.content,_that.orderNumber);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String content,  int orderNumber)?  $default,) {final _that = this;
switch (_that) {
case _CreateQuestionRequest() when $default != null:
return $default(_that.content,_that.orderNumber);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateQuestionRequest implements CreateQuestionRequest {
  const _CreateQuestionRequest({required this.content, required this.orderNumber});
  factory _CreateQuestionRequest.fromJson(Map<String, dynamic> json) => _$CreateQuestionRequestFromJson(json);

@override final  String content;
@override final  int orderNumber;

/// Create a copy of CreateQuestionRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateQuestionRequestCopyWith<_CreateQuestionRequest> get copyWith => __$CreateQuestionRequestCopyWithImpl<_CreateQuestionRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateQuestionRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateQuestionRequest&&(identical(other.content, content) || other.content == content)&&(identical(other.orderNumber, orderNumber) || other.orderNumber == orderNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,content,orderNumber);

@override
String toString() {
  return 'CreateQuestionRequest(content: $content, orderNumber: $orderNumber)';
}


}

/// @nodoc
abstract mixin class _$CreateQuestionRequestCopyWith<$Res> implements $CreateQuestionRequestCopyWith<$Res> {
  factory _$CreateQuestionRequestCopyWith(_CreateQuestionRequest value, $Res Function(_CreateQuestionRequest) _then) = __$CreateQuestionRequestCopyWithImpl;
@override @useResult
$Res call({
 String content, int orderNumber
});




}
/// @nodoc
class __$CreateQuestionRequestCopyWithImpl<$Res>
    implements _$CreateQuestionRequestCopyWith<$Res> {
  __$CreateQuestionRequestCopyWithImpl(this._self, this._then);

  final _CreateQuestionRequest _self;
  final $Res Function(_CreateQuestionRequest) _then;

/// Create a copy of CreateQuestionRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? content = null,Object? orderNumber = null,}) {
  return _then(_CreateQuestionRequest(
content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,orderNumber: null == orderNumber ? _self.orderNumber : orderNumber // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$UpdateQuestionRequest {

 String? get content; int? get orderNumber;
/// Create a copy of UpdateQuestionRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateQuestionRequestCopyWith<UpdateQuestionRequest> get copyWith => _$UpdateQuestionRequestCopyWithImpl<UpdateQuestionRequest>(this as UpdateQuestionRequest, _$identity);

  /// Serializes this UpdateQuestionRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateQuestionRequest&&(identical(other.content, content) || other.content == content)&&(identical(other.orderNumber, orderNumber) || other.orderNumber == orderNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,content,orderNumber);

@override
String toString() {
  return 'UpdateQuestionRequest(content: $content, orderNumber: $orderNumber)';
}


}

/// @nodoc
abstract mixin class $UpdateQuestionRequestCopyWith<$Res>  {
  factory $UpdateQuestionRequestCopyWith(UpdateQuestionRequest value, $Res Function(UpdateQuestionRequest) _then) = _$UpdateQuestionRequestCopyWithImpl;
@useResult
$Res call({
 String? content, int? orderNumber
});




}
/// @nodoc
class _$UpdateQuestionRequestCopyWithImpl<$Res>
    implements $UpdateQuestionRequestCopyWith<$Res> {
  _$UpdateQuestionRequestCopyWithImpl(this._self, this._then);

  final UpdateQuestionRequest _self;
  final $Res Function(UpdateQuestionRequest) _then;

/// Create a copy of UpdateQuestionRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? content = freezed,Object? orderNumber = freezed,}) {
  return _then(_self.copyWith(
content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,orderNumber: freezed == orderNumber ? _self.orderNumber : orderNumber // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateQuestionRequest].
extension UpdateQuestionRequestPatterns on UpdateQuestionRequest {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateQuestionRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateQuestionRequest() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateQuestionRequest value)  $default,){
final _that = this;
switch (_that) {
case _UpdateQuestionRequest():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateQuestionRequest value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateQuestionRequest() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? content,  int? orderNumber)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateQuestionRequest() when $default != null:
return $default(_that.content,_that.orderNumber);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? content,  int? orderNumber)  $default,) {final _that = this;
switch (_that) {
case _UpdateQuestionRequest():
return $default(_that.content,_that.orderNumber);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? content,  int? orderNumber)?  $default,) {final _that = this;
switch (_that) {
case _UpdateQuestionRequest() when $default != null:
return $default(_that.content,_that.orderNumber);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateQuestionRequest implements UpdateQuestionRequest {
  const _UpdateQuestionRequest({this.content, this.orderNumber});
  factory _UpdateQuestionRequest.fromJson(Map<String, dynamic> json) => _$UpdateQuestionRequestFromJson(json);

@override final  String? content;
@override final  int? orderNumber;

/// Create a copy of UpdateQuestionRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateQuestionRequestCopyWith<_UpdateQuestionRequest> get copyWith => __$UpdateQuestionRequestCopyWithImpl<_UpdateQuestionRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateQuestionRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateQuestionRequest&&(identical(other.content, content) || other.content == content)&&(identical(other.orderNumber, orderNumber) || other.orderNumber == orderNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,content,orderNumber);

@override
String toString() {
  return 'UpdateQuestionRequest(content: $content, orderNumber: $orderNumber)';
}


}

/// @nodoc
abstract mixin class _$UpdateQuestionRequestCopyWith<$Res> implements $UpdateQuestionRequestCopyWith<$Res> {
  factory _$UpdateQuestionRequestCopyWith(_UpdateQuestionRequest value, $Res Function(_UpdateQuestionRequest) _then) = __$UpdateQuestionRequestCopyWithImpl;
@override @useResult
$Res call({
 String? content, int? orderNumber
});




}
/// @nodoc
class __$UpdateQuestionRequestCopyWithImpl<$Res>
    implements _$UpdateQuestionRequestCopyWith<$Res> {
  __$UpdateQuestionRequestCopyWithImpl(this._self, this._then);

  final _UpdateQuestionRequest _self;
  final $Res Function(_UpdateQuestionRequest) _then;

/// Create a copy of UpdateQuestionRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? content = freezed,Object? orderNumber = freezed,}) {
  return _then(_UpdateQuestionRequest(
content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,orderNumber: freezed == orderNumber ? _self.orderNumber : orderNumber // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$JoinAnswersRequest {

 int get questionId; String get content;
/// Create a copy of JoinAnswersRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JoinAnswersRequestCopyWith<JoinAnswersRequest> get copyWith => _$JoinAnswersRequestCopyWithImpl<JoinAnswersRequest>(this as JoinAnswersRequest, _$identity);

  /// Serializes this JoinAnswersRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JoinAnswersRequest&&(identical(other.questionId, questionId) || other.questionId == questionId)&&(identical(other.content, content) || other.content == content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,questionId,content);

@override
String toString() {
  return 'JoinAnswersRequest(questionId: $questionId, content: $content)';
}


}

/// @nodoc
abstract mixin class $JoinAnswersRequestCopyWith<$Res>  {
  factory $JoinAnswersRequestCopyWith(JoinAnswersRequest value, $Res Function(JoinAnswersRequest) _then) = _$JoinAnswersRequestCopyWithImpl;
@useResult
$Res call({
 int questionId, String content
});




}
/// @nodoc
class _$JoinAnswersRequestCopyWithImpl<$Res>
    implements $JoinAnswersRequestCopyWith<$Res> {
  _$JoinAnswersRequestCopyWithImpl(this._self, this._then);

  final JoinAnswersRequest _self;
  final $Res Function(JoinAnswersRequest) _then;

/// Create a copy of JoinAnswersRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? questionId = null,Object? content = null,}) {
  return _then(_self.copyWith(
questionId: null == questionId ? _self.questionId : questionId // ignore: cast_nullable_to_non_nullable
as int,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [JoinAnswersRequest].
extension JoinAnswersRequestPatterns on JoinAnswersRequest {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _JoinAnswersRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _JoinAnswersRequest() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _JoinAnswersRequest value)  $default,){
final _that = this;
switch (_that) {
case _JoinAnswersRequest():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _JoinAnswersRequest value)?  $default,){
final _that = this;
switch (_that) {
case _JoinAnswersRequest() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int questionId,  String content)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _JoinAnswersRequest() when $default != null:
return $default(_that.questionId,_that.content);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int questionId,  String content)  $default,) {final _that = this;
switch (_that) {
case _JoinAnswersRequest():
return $default(_that.questionId,_that.content);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int questionId,  String content)?  $default,) {final _that = this;
switch (_that) {
case _JoinAnswersRequest() when $default != null:
return $default(_that.questionId,_that.content);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _JoinAnswersRequest implements JoinAnswersRequest {
  const _JoinAnswersRequest({required this.questionId, required this.content});
  factory _JoinAnswersRequest.fromJson(Map<String, dynamic> json) => _$JoinAnswersRequestFromJson(json);

@override final  int questionId;
@override final  String content;

/// Create a copy of JoinAnswersRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$JoinAnswersRequestCopyWith<_JoinAnswersRequest> get copyWith => __$JoinAnswersRequestCopyWithImpl<_JoinAnswersRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$JoinAnswersRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _JoinAnswersRequest&&(identical(other.questionId, questionId) || other.questionId == questionId)&&(identical(other.content, content) || other.content == content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,questionId,content);

@override
String toString() {
  return 'JoinAnswersRequest(questionId: $questionId, content: $content)';
}


}

/// @nodoc
abstract mixin class _$JoinAnswersRequestCopyWith<$Res> implements $JoinAnswersRequestCopyWith<$Res> {
  factory _$JoinAnswersRequestCopyWith(_JoinAnswersRequest value, $Res Function(_JoinAnswersRequest) _then) = __$JoinAnswersRequestCopyWithImpl;
@override @useResult
$Res call({
 int questionId, String content
});




}
/// @nodoc
class __$JoinAnswersRequestCopyWithImpl<$Res>
    implements _$JoinAnswersRequestCopyWith<$Res> {
  __$JoinAnswersRequestCopyWithImpl(this._self, this._then);

  final _JoinAnswersRequest _self;
  final $Res Function(_JoinAnswersRequest) _then;

/// Create a copy of JoinAnswersRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? questionId = null,Object? content = null,}) {
  return _then(_JoinAnswersRequest(
questionId: null == questionId ? _self.questionId : questionId // ignore: cast_nullable_to_non_nullable
as int,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
