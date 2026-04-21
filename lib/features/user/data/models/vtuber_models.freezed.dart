// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vtuber_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VtuberApplication {

 int get id; int get userId; String get username; String get channelName; String get channelLink; VtuberApplicationStatus get status; String? get reason; int? get reviewerId; String? get reviewerUsername; DateTime get createdAt; DateTime? get reviewAt;
/// Create a copy of VtuberApplication
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VtuberApplicationCopyWith<VtuberApplication> get copyWith => _$VtuberApplicationCopyWithImpl<VtuberApplication>(this as VtuberApplication, _$identity);

  /// Serializes this VtuberApplication to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VtuberApplication&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.username, username) || other.username == username)&&(identical(other.channelName, channelName) || other.channelName == channelName)&&(identical(other.channelLink, channelLink) || other.channelLink == channelLink)&&(identical(other.status, status) || other.status == status)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.reviewerId, reviewerId) || other.reviewerId == reviewerId)&&(identical(other.reviewerUsername, reviewerUsername) || other.reviewerUsername == reviewerUsername)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.reviewAt, reviewAt) || other.reviewAt == reviewAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,username,channelName,channelLink,status,reason,reviewerId,reviewerUsername,createdAt,reviewAt);

@override
String toString() {
  return 'VtuberApplication(id: $id, userId: $userId, username: $username, channelName: $channelName, channelLink: $channelLink, status: $status, reason: $reason, reviewerId: $reviewerId, reviewerUsername: $reviewerUsername, createdAt: $createdAt, reviewAt: $reviewAt)';
}


}

/// @nodoc
abstract mixin class $VtuberApplicationCopyWith<$Res>  {
  factory $VtuberApplicationCopyWith(VtuberApplication value, $Res Function(VtuberApplication) _then) = _$VtuberApplicationCopyWithImpl;
@useResult
$Res call({
 int id, int userId, String username, String channelName, String channelLink, VtuberApplicationStatus status, String? reason, int? reviewerId, String? reviewerUsername, DateTime createdAt, DateTime? reviewAt
});




}
/// @nodoc
class _$VtuberApplicationCopyWithImpl<$Res>
    implements $VtuberApplicationCopyWith<$Res> {
  _$VtuberApplicationCopyWithImpl(this._self, this._then);

  final VtuberApplication _self;
  final $Res Function(VtuberApplication) _then;

/// Create a copy of VtuberApplication
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? username = null,Object? channelName = null,Object? channelLink = null,Object? status = null,Object? reason = freezed,Object? reviewerId = freezed,Object? reviewerUsername = freezed,Object? createdAt = null,Object? reviewAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,channelName: null == channelName ? _self.channelName : channelName // ignore: cast_nullable_to_non_nullable
as String,channelLink: null == channelLink ? _self.channelLink : channelLink // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as VtuberApplicationStatus,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,reviewerId: freezed == reviewerId ? _self.reviewerId : reviewerId // ignore: cast_nullable_to_non_nullable
as int?,reviewerUsername: freezed == reviewerUsername ? _self.reviewerUsername : reviewerUsername // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,reviewAt: freezed == reviewAt ? _self.reviewAt : reviewAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [VtuberApplication].
extension VtuberApplicationPatterns on VtuberApplication {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VtuberApplication value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VtuberApplication() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VtuberApplication value)  $default,){
final _that = this;
switch (_that) {
case _VtuberApplication():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VtuberApplication value)?  $default,){
final _that = this;
switch (_that) {
case _VtuberApplication() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int userId,  String username,  String channelName,  String channelLink,  VtuberApplicationStatus status,  String? reason,  int? reviewerId,  String? reviewerUsername,  DateTime createdAt,  DateTime? reviewAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VtuberApplication() when $default != null:
return $default(_that.id,_that.userId,_that.username,_that.channelName,_that.channelLink,_that.status,_that.reason,_that.reviewerId,_that.reviewerUsername,_that.createdAt,_that.reviewAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int userId,  String username,  String channelName,  String channelLink,  VtuberApplicationStatus status,  String? reason,  int? reviewerId,  String? reviewerUsername,  DateTime createdAt,  DateTime? reviewAt)  $default,) {final _that = this;
switch (_that) {
case _VtuberApplication():
return $default(_that.id,_that.userId,_that.username,_that.channelName,_that.channelLink,_that.status,_that.reason,_that.reviewerId,_that.reviewerUsername,_that.createdAt,_that.reviewAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int userId,  String username,  String channelName,  String channelLink,  VtuberApplicationStatus status,  String? reason,  int? reviewerId,  String? reviewerUsername,  DateTime createdAt,  DateTime? reviewAt)?  $default,) {final _that = this;
switch (_that) {
case _VtuberApplication() when $default != null:
return $default(_that.id,_that.userId,_that.username,_that.channelName,_that.channelLink,_that.status,_that.reason,_that.reviewerId,_that.reviewerUsername,_that.createdAt,_that.reviewAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VtuberApplication implements VtuberApplication {
  const _VtuberApplication({required this.id, required this.userId, required this.username, required this.channelName, required this.channelLink, required this.status, this.reason, this.reviewerId, this.reviewerUsername, required this.createdAt, this.reviewAt});
  factory _VtuberApplication.fromJson(Map<String, dynamic> json) => _$VtuberApplicationFromJson(json);

@override final  int id;
@override final  int userId;
@override final  String username;
@override final  String channelName;
@override final  String channelLink;
@override final  VtuberApplicationStatus status;
@override final  String? reason;
@override final  int? reviewerId;
@override final  String? reviewerUsername;
@override final  DateTime createdAt;
@override final  DateTime? reviewAt;

/// Create a copy of VtuberApplication
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VtuberApplicationCopyWith<_VtuberApplication> get copyWith => __$VtuberApplicationCopyWithImpl<_VtuberApplication>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VtuberApplicationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VtuberApplication&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.username, username) || other.username == username)&&(identical(other.channelName, channelName) || other.channelName == channelName)&&(identical(other.channelLink, channelLink) || other.channelLink == channelLink)&&(identical(other.status, status) || other.status == status)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.reviewerId, reviewerId) || other.reviewerId == reviewerId)&&(identical(other.reviewerUsername, reviewerUsername) || other.reviewerUsername == reviewerUsername)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.reviewAt, reviewAt) || other.reviewAt == reviewAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,username,channelName,channelLink,status,reason,reviewerId,reviewerUsername,createdAt,reviewAt);

@override
String toString() {
  return 'VtuberApplication(id: $id, userId: $userId, username: $username, channelName: $channelName, channelLink: $channelLink, status: $status, reason: $reason, reviewerId: $reviewerId, reviewerUsername: $reviewerUsername, createdAt: $createdAt, reviewAt: $reviewAt)';
}


}

/// @nodoc
abstract mixin class _$VtuberApplicationCopyWith<$Res> implements $VtuberApplicationCopyWith<$Res> {
  factory _$VtuberApplicationCopyWith(_VtuberApplication value, $Res Function(_VtuberApplication) _then) = __$VtuberApplicationCopyWithImpl;
@override @useResult
$Res call({
 int id, int userId, String username, String channelName, String channelLink, VtuberApplicationStatus status, String? reason, int? reviewerId, String? reviewerUsername, DateTime createdAt, DateTime? reviewAt
});




}
/// @nodoc
class __$VtuberApplicationCopyWithImpl<$Res>
    implements _$VtuberApplicationCopyWith<$Res> {
  __$VtuberApplicationCopyWithImpl(this._self, this._then);

  final _VtuberApplication _self;
  final $Res Function(_VtuberApplication) _then;

/// Create a copy of VtuberApplication
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? username = null,Object? channelName = null,Object? channelLink = null,Object? status = null,Object? reason = freezed,Object? reviewerId = freezed,Object? reviewerUsername = freezed,Object? createdAt = null,Object? reviewAt = freezed,}) {
  return _then(_VtuberApplication(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,channelName: null == channelName ? _self.channelName : channelName // ignore: cast_nullable_to_non_nullable
as String,channelLink: null == channelLink ? _self.channelLink : channelLink // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as VtuberApplicationStatus,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,reviewerId: freezed == reviewerId ? _self.reviewerId : reviewerId // ignore: cast_nullable_to_non_nullable
as int?,reviewerUsername: freezed == reviewerUsername ? _self.reviewerUsername : reviewerUsername // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,reviewAt: freezed == reviewAt ? _self.reviewAt : reviewAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$VtuberRegisterRequest {

 String get channelName; String get channelLink;
/// Create a copy of VtuberRegisterRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VtuberRegisterRequestCopyWith<VtuberRegisterRequest> get copyWith => _$VtuberRegisterRequestCopyWithImpl<VtuberRegisterRequest>(this as VtuberRegisterRequest, _$identity);

  /// Serializes this VtuberRegisterRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VtuberRegisterRequest&&(identical(other.channelName, channelName) || other.channelName == channelName)&&(identical(other.channelLink, channelLink) || other.channelLink == channelLink));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,channelName,channelLink);

@override
String toString() {
  return 'VtuberRegisterRequest(channelName: $channelName, channelLink: $channelLink)';
}


}

/// @nodoc
abstract mixin class $VtuberRegisterRequestCopyWith<$Res>  {
  factory $VtuberRegisterRequestCopyWith(VtuberRegisterRequest value, $Res Function(VtuberRegisterRequest) _then) = _$VtuberRegisterRequestCopyWithImpl;
@useResult
$Res call({
 String channelName, String channelLink
});




}
/// @nodoc
class _$VtuberRegisterRequestCopyWithImpl<$Res>
    implements $VtuberRegisterRequestCopyWith<$Res> {
  _$VtuberRegisterRequestCopyWithImpl(this._self, this._then);

  final VtuberRegisterRequest _self;
  final $Res Function(VtuberRegisterRequest) _then;

/// Create a copy of VtuberRegisterRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? channelName = null,Object? channelLink = null,}) {
  return _then(_self.copyWith(
channelName: null == channelName ? _self.channelName : channelName // ignore: cast_nullable_to_non_nullable
as String,channelLink: null == channelLink ? _self.channelLink : channelLink // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [VtuberRegisterRequest].
extension VtuberRegisterRequestPatterns on VtuberRegisterRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VtuberRegisterRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VtuberRegisterRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VtuberRegisterRequest value)  $default,){
final _that = this;
switch (_that) {
case _VtuberRegisterRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VtuberRegisterRequest value)?  $default,){
final _that = this;
switch (_that) {
case _VtuberRegisterRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String channelName,  String channelLink)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VtuberRegisterRequest() when $default != null:
return $default(_that.channelName,_that.channelLink);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String channelName,  String channelLink)  $default,) {final _that = this;
switch (_that) {
case _VtuberRegisterRequest():
return $default(_that.channelName,_that.channelLink);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String channelName,  String channelLink)?  $default,) {final _that = this;
switch (_that) {
case _VtuberRegisterRequest() when $default != null:
return $default(_that.channelName,_that.channelLink);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VtuberRegisterRequest implements VtuberRegisterRequest {
  const _VtuberRegisterRequest({required this.channelName, required this.channelLink});
  factory _VtuberRegisterRequest.fromJson(Map<String, dynamic> json) => _$VtuberRegisterRequestFromJson(json);

@override final  String channelName;
@override final  String channelLink;

/// Create a copy of VtuberRegisterRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VtuberRegisterRequestCopyWith<_VtuberRegisterRequest> get copyWith => __$VtuberRegisterRequestCopyWithImpl<_VtuberRegisterRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VtuberRegisterRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VtuberRegisterRequest&&(identical(other.channelName, channelName) || other.channelName == channelName)&&(identical(other.channelLink, channelLink) || other.channelLink == channelLink));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,channelName,channelLink);

@override
String toString() {
  return 'VtuberRegisterRequest(channelName: $channelName, channelLink: $channelLink)';
}


}

/// @nodoc
abstract mixin class _$VtuberRegisterRequestCopyWith<$Res> implements $VtuberRegisterRequestCopyWith<$Res> {
  factory _$VtuberRegisterRequestCopyWith(_VtuberRegisterRequest value, $Res Function(_VtuberRegisterRequest) _then) = __$VtuberRegisterRequestCopyWithImpl;
@override @useResult
$Res call({
 String channelName, String channelLink
});




}
/// @nodoc
class __$VtuberRegisterRequestCopyWithImpl<$Res>
    implements _$VtuberRegisterRequestCopyWith<$Res> {
  __$VtuberRegisterRequestCopyWithImpl(this._self, this._then);

  final _VtuberRegisterRequest _self;
  final $Res Function(_VtuberRegisterRequest) _then;

/// Create a copy of VtuberRegisterRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? channelName = null,Object? channelLink = null,}) {
  return _then(_VtuberRegisterRequest(
channelName: null == channelName ? _self.channelName : channelName // ignore: cast_nullable_to_non_nullable
as String,channelLink: null == channelLink ? _self.channelLink : channelLink // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
