// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Member {

 int? get id; int? get memberId; int get hubId; String get hubName; MemberRole get roleInHub; MemberStatus get status; int get fanHubScore; DateTime? get joinedAt; String? get title; int? get userId; String? get username; String? get email; String? get displayName; String? get avatarUrl; String? get frameUrl;
/// Create a copy of Member
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MemberCopyWith<Member> get copyWith => _$MemberCopyWithImpl<Member>(this as Member, _$identity);

  /// Serializes this Member to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Member&&(identical(other.id, id) || other.id == id)&&(identical(other.memberId, memberId) || other.memberId == memberId)&&(identical(other.hubId, hubId) || other.hubId == hubId)&&(identical(other.hubName, hubName) || other.hubName == hubName)&&(identical(other.roleInHub, roleInHub) || other.roleInHub == roleInHub)&&(identical(other.status, status) || other.status == status)&&(identical(other.fanHubScore, fanHubScore) || other.fanHubScore == fanHubScore)&&(identical(other.joinedAt, joinedAt) || other.joinedAt == joinedAt)&&(identical(other.title, title) || other.title == title)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.frameUrl, frameUrl) || other.frameUrl == frameUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,memberId,hubId,hubName,roleInHub,status,fanHubScore,joinedAt,title,userId,username,email,displayName,avatarUrl,frameUrl);

@override
String toString() {
  return 'Member(id: $id, memberId: $memberId, hubId: $hubId, hubName: $hubName, roleInHub: $roleInHub, status: $status, fanHubScore: $fanHubScore, joinedAt: $joinedAt, title: $title, userId: $userId, username: $username, email: $email, displayName: $displayName, avatarUrl: $avatarUrl, frameUrl: $frameUrl)';
}


}

/// @nodoc
abstract mixin class $MemberCopyWith<$Res>  {
  factory $MemberCopyWith(Member value, $Res Function(Member) _then) = _$MemberCopyWithImpl;
@useResult
$Res call({
 int? id, int? memberId, int hubId, String hubName, MemberRole roleInHub, MemberStatus status, int fanHubScore, DateTime? joinedAt, String? title, int? userId, String? username, String? email, String? displayName, String? avatarUrl, String? frameUrl
});




}
/// @nodoc
class _$MemberCopyWithImpl<$Res>
    implements $MemberCopyWith<$Res> {
  _$MemberCopyWithImpl(this._self, this._then);

  final Member _self;
  final $Res Function(Member) _then;

/// Create a copy of Member
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? memberId = freezed,Object? hubId = null,Object? hubName = null,Object? roleInHub = null,Object? status = null,Object? fanHubScore = null,Object? joinedAt = freezed,Object? title = freezed,Object? userId = freezed,Object? username = freezed,Object? email = freezed,Object? displayName = freezed,Object? avatarUrl = freezed,Object? frameUrl = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,memberId: freezed == memberId ? _self.memberId : memberId // ignore: cast_nullable_to_non_nullable
as int?,hubId: null == hubId ? _self.hubId : hubId // ignore: cast_nullable_to_non_nullable
as int,hubName: null == hubName ? _self.hubName : hubName // ignore: cast_nullable_to_non_nullable
as String,roleInHub: null == roleInHub ? _self.roleInHub : roleInHub // ignore: cast_nullable_to_non_nullable
as MemberRole,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MemberStatus,fanHubScore: null == fanHubScore ? _self.fanHubScore : fanHubScore // ignore: cast_nullable_to_non_nullable
as int,joinedAt: freezed == joinedAt ? _self.joinedAt : joinedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,frameUrl: freezed == frameUrl ? _self.frameUrl : frameUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Member].
extension MemberPatterns on Member {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Member value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Member() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Member value)  $default,){
final _that = this;
switch (_that) {
case _Member():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Member value)?  $default,){
final _that = this;
switch (_that) {
case _Member() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int? memberId,  int hubId,  String hubName,  MemberRole roleInHub,  MemberStatus status,  int fanHubScore,  DateTime? joinedAt,  String? title,  int? userId,  String? username,  String? email,  String? displayName,  String? avatarUrl,  String? frameUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Member() when $default != null:
return $default(_that.id,_that.memberId,_that.hubId,_that.hubName,_that.roleInHub,_that.status,_that.fanHubScore,_that.joinedAt,_that.title,_that.userId,_that.username,_that.email,_that.displayName,_that.avatarUrl,_that.frameUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int? memberId,  int hubId,  String hubName,  MemberRole roleInHub,  MemberStatus status,  int fanHubScore,  DateTime? joinedAt,  String? title,  int? userId,  String? username,  String? email,  String? displayName,  String? avatarUrl,  String? frameUrl)  $default,) {final _that = this;
switch (_that) {
case _Member():
return $default(_that.id,_that.memberId,_that.hubId,_that.hubName,_that.roleInHub,_that.status,_that.fanHubScore,_that.joinedAt,_that.title,_that.userId,_that.username,_that.email,_that.displayName,_that.avatarUrl,_that.frameUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int? memberId,  int hubId,  String hubName,  MemberRole roleInHub,  MemberStatus status,  int fanHubScore,  DateTime? joinedAt,  String? title,  int? userId,  String? username,  String? email,  String? displayName,  String? avatarUrl,  String? frameUrl)?  $default,) {final _that = this;
switch (_that) {
case _Member() when $default != null:
return $default(_that.id,_that.memberId,_that.hubId,_that.hubName,_that.roleInHub,_that.status,_that.fanHubScore,_that.joinedAt,_that.title,_that.userId,_that.username,_that.email,_that.displayName,_that.avatarUrl,_that.frameUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Member implements Member {
  const _Member({this.id, this.memberId, required this.hubId, required this.hubName, required this.roleInHub, required this.status, required this.fanHubScore, this.joinedAt, this.title, this.userId, this.username, this.email, this.displayName, this.avatarUrl, this.frameUrl});
  factory _Member.fromJson(Map<String, dynamic> json) => _$MemberFromJson(json);

@override final  int? id;
@override final  int? memberId;
@override final  int hubId;
@override final  String hubName;
@override final  MemberRole roleInHub;
@override final  MemberStatus status;
@override final  int fanHubScore;
@override final  DateTime? joinedAt;
@override final  String? title;
@override final  int? userId;
@override final  String? username;
@override final  String? email;
@override final  String? displayName;
@override final  String? avatarUrl;
@override final  String? frameUrl;

/// Create a copy of Member
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MemberCopyWith<_Member> get copyWith => __$MemberCopyWithImpl<_Member>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MemberToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Member&&(identical(other.id, id) || other.id == id)&&(identical(other.memberId, memberId) || other.memberId == memberId)&&(identical(other.hubId, hubId) || other.hubId == hubId)&&(identical(other.hubName, hubName) || other.hubName == hubName)&&(identical(other.roleInHub, roleInHub) || other.roleInHub == roleInHub)&&(identical(other.status, status) || other.status == status)&&(identical(other.fanHubScore, fanHubScore) || other.fanHubScore == fanHubScore)&&(identical(other.joinedAt, joinedAt) || other.joinedAt == joinedAt)&&(identical(other.title, title) || other.title == title)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.frameUrl, frameUrl) || other.frameUrl == frameUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,memberId,hubId,hubName,roleInHub,status,fanHubScore,joinedAt,title,userId,username,email,displayName,avatarUrl,frameUrl);

@override
String toString() {
  return 'Member(id: $id, memberId: $memberId, hubId: $hubId, hubName: $hubName, roleInHub: $roleInHub, status: $status, fanHubScore: $fanHubScore, joinedAt: $joinedAt, title: $title, userId: $userId, username: $username, email: $email, displayName: $displayName, avatarUrl: $avatarUrl, frameUrl: $frameUrl)';
}


}

/// @nodoc
abstract mixin class _$MemberCopyWith<$Res> implements $MemberCopyWith<$Res> {
  factory _$MemberCopyWith(_Member value, $Res Function(_Member) _then) = __$MemberCopyWithImpl;
@override @useResult
$Res call({
 int? id, int? memberId, int hubId, String hubName, MemberRole roleInHub, MemberStatus status, int fanHubScore, DateTime? joinedAt, String? title, int? userId, String? username, String? email, String? displayName, String? avatarUrl, String? frameUrl
});




}
/// @nodoc
class __$MemberCopyWithImpl<$Res>
    implements _$MemberCopyWith<$Res> {
  __$MemberCopyWithImpl(this._self, this._then);

  final _Member _self;
  final $Res Function(_Member) _then;

/// Create a copy of Member
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? memberId = freezed,Object? hubId = null,Object? hubName = null,Object? roleInHub = null,Object? status = null,Object? fanHubScore = null,Object? joinedAt = freezed,Object? title = freezed,Object? userId = freezed,Object? username = freezed,Object? email = freezed,Object? displayName = freezed,Object? avatarUrl = freezed,Object? frameUrl = freezed,}) {
  return _then(_Member(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,memberId: freezed == memberId ? _self.memberId : memberId // ignore: cast_nullable_to_non_nullable
as int?,hubId: null == hubId ? _self.hubId : hubId // ignore: cast_nullable_to_non_nullable
as int,hubName: null == hubName ? _self.hubName : hubName // ignore: cast_nullable_to_non_nullable
as String,roleInHub: null == roleInHub ? _self.roleInHub : roleInHub // ignore: cast_nullable_to_non_nullable
as MemberRole,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MemberStatus,fanHubScore: null == fanHubScore ? _self.fanHubScore : fanHubScore // ignore: cast_nullable_to_non_nullable
as int,joinedAt: freezed == joinedAt ? _self.joinedAt : joinedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,frameUrl: freezed == frameUrl ? _self.frameUrl : frameUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$MemberCheckingResponse {

 bool get isMember; MemberRole? get roleInHub; MemberStatus? get status;
/// Create a copy of MemberCheckingResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MemberCheckingResponseCopyWith<MemberCheckingResponse> get copyWith => _$MemberCheckingResponseCopyWithImpl<MemberCheckingResponse>(this as MemberCheckingResponse, _$identity);

  /// Serializes this MemberCheckingResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MemberCheckingResponse&&(identical(other.isMember, isMember) || other.isMember == isMember)&&(identical(other.roleInHub, roleInHub) || other.roleInHub == roleInHub)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isMember,roleInHub,status);

@override
String toString() {
  return 'MemberCheckingResponse(isMember: $isMember, roleInHub: $roleInHub, status: $status)';
}


}

/// @nodoc
abstract mixin class $MemberCheckingResponseCopyWith<$Res>  {
  factory $MemberCheckingResponseCopyWith(MemberCheckingResponse value, $Res Function(MemberCheckingResponse) _then) = _$MemberCheckingResponseCopyWithImpl;
@useResult
$Res call({
 bool isMember, MemberRole? roleInHub, MemberStatus? status
});




}
/// @nodoc
class _$MemberCheckingResponseCopyWithImpl<$Res>
    implements $MemberCheckingResponseCopyWith<$Res> {
  _$MemberCheckingResponseCopyWithImpl(this._self, this._then);

  final MemberCheckingResponse _self;
  final $Res Function(MemberCheckingResponse) _then;

/// Create a copy of MemberCheckingResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isMember = null,Object? roleInHub = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
isMember: null == isMember ? _self.isMember : isMember // ignore: cast_nullable_to_non_nullable
as bool,roleInHub: freezed == roleInHub ? _self.roleInHub : roleInHub // ignore: cast_nullable_to_non_nullable
as MemberRole?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MemberStatus?,
  ));
}

}


/// Adds pattern-matching-related methods to [MemberCheckingResponse].
extension MemberCheckingResponsePatterns on MemberCheckingResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MemberCheckingResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MemberCheckingResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MemberCheckingResponse value)  $default,){
final _that = this;
switch (_that) {
case _MemberCheckingResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MemberCheckingResponse value)?  $default,){
final _that = this;
switch (_that) {
case _MemberCheckingResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isMember,  MemberRole? roleInHub,  MemberStatus? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MemberCheckingResponse() when $default != null:
return $default(_that.isMember,_that.roleInHub,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isMember,  MemberRole? roleInHub,  MemberStatus? status)  $default,) {final _that = this;
switch (_that) {
case _MemberCheckingResponse():
return $default(_that.isMember,_that.roleInHub,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isMember,  MemberRole? roleInHub,  MemberStatus? status)?  $default,) {final _that = this;
switch (_that) {
case _MemberCheckingResponse() when $default != null:
return $default(_that.isMember,_that.roleInHub,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MemberCheckingResponse implements MemberCheckingResponse {
  const _MemberCheckingResponse({required this.isMember, this.roleInHub, this.status});
  factory _MemberCheckingResponse.fromJson(Map<String, dynamic> json) => _$MemberCheckingResponseFromJson(json);

@override final  bool isMember;
@override final  MemberRole? roleInHub;
@override final  MemberStatus? status;

/// Create a copy of MemberCheckingResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MemberCheckingResponseCopyWith<_MemberCheckingResponse> get copyWith => __$MemberCheckingResponseCopyWithImpl<_MemberCheckingResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MemberCheckingResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MemberCheckingResponse&&(identical(other.isMember, isMember) || other.isMember == isMember)&&(identical(other.roleInHub, roleInHub) || other.roleInHub == roleInHub)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isMember,roleInHub,status);

@override
String toString() {
  return 'MemberCheckingResponse(isMember: $isMember, roleInHub: $roleInHub, status: $status)';
}


}

/// @nodoc
abstract mixin class _$MemberCheckingResponseCopyWith<$Res> implements $MemberCheckingResponseCopyWith<$Res> {
  factory _$MemberCheckingResponseCopyWith(_MemberCheckingResponse value, $Res Function(_MemberCheckingResponse) _then) = __$MemberCheckingResponseCopyWithImpl;
@override @useResult
$Res call({
 bool isMember, MemberRole? roleInHub, MemberStatus? status
});




}
/// @nodoc
class __$MemberCheckingResponseCopyWithImpl<$Res>
    implements _$MemberCheckingResponseCopyWith<$Res> {
  __$MemberCheckingResponseCopyWithImpl(this._self, this._then);

  final _MemberCheckingResponse _self;
  final $Res Function(_MemberCheckingResponse) _then;

/// Create a copy of MemberCheckingResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isMember = null,Object? roleInHub = freezed,Object? status = freezed,}) {
  return _then(_MemberCheckingResponse(
isMember: null == isMember ? _self.isMember : isMember // ignore: cast_nullable_to_non_nullable
as bool,roleInHub: freezed == roleInHub ? _self.roleInHub : roleInHub // ignore: cast_nullable_to_non_nullable
as MemberRole?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MemberStatus?,
  ));
}


}


/// @nodoc
mixin _$BanRequest {

 int get fanHubMemberId; String get reason; BanType get banType; DateTime get bannedUntil;
/// Create a copy of BanRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BanRequestCopyWith<BanRequest> get copyWith => _$BanRequestCopyWithImpl<BanRequest>(this as BanRequest, _$identity);

  /// Serializes this BanRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BanRequest&&(identical(other.fanHubMemberId, fanHubMemberId) || other.fanHubMemberId == fanHubMemberId)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.banType, banType) || other.banType == banType)&&(identical(other.bannedUntil, bannedUntil) || other.bannedUntil == bannedUntil));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fanHubMemberId,reason,banType,bannedUntil);

@override
String toString() {
  return 'BanRequest(fanHubMemberId: $fanHubMemberId, reason: $reason, banType: $banType, bannedUntil: $bannedUntil)';
}


}

/// @nodoc
abstract mixin class $BanRequestCopyWith<$Res>  {
  factory $BanRequestCopyWith(BanRequest value, $Res Function(BanRequest) _then) = _$BanRequestCopyWithImpl;
@useResult
$Res call({
 int fanHubMemberId, String reason, BanType banType, DateTime bannedUntil
});




}
/// @nodoc
class _$BanRequestCopyWithImpl<$Res>
    implements $BanRequestCopyWith<$Res> {
  _$BanRequestCopyWithImpl(this._self, this._then);

  final BanRequest _self;
  final $Res Function(BanRequest) _then;

/// Create a copy of BanRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fanHubMemberId = null,Object? reason = null,Object? banType = null,Object? bannedUntil = null,}) {
  return _then(_self.copyWith(
fanHubMemberId: null == fanHubMemberId ? _self.fanHubMemberId : fanHubMemberId // ignore: cast_nullable_to_non_nullable
as int,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,banType: null == banType ? _self.banType : banType // ignore: cast_nullable_to_non_nullable
as BanType,bannedUntil: null == bannedUntil ? _self.bannedUntil : bannedUntil // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [BanRequest].
extension BanRequestPatterns on BanRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BanRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BanRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BanRequest value)  $default,){
final _that = this;
switch (_that) {
case _BanRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BanRequest value)?  $default,){
final _that = this;
switch (_that) {
case _BanRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int fanHubMemberId,  String reason,  BanType banType,  DateTime bannedUntil)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BanRequest() when $default != null:
return $default(_that.fanHubMemberId,_that.reason,_that.banType,_that.bannedUntil);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int fanHubMemberId,  String reason,  BanType banType,  DateTime bannedUntil)  $default,) {final _that = this;
switch (_that) {
case _BanRequest():
return $default(_that.fanHubMemberId,_that.reason,_that.banType,_that.bannedUntil);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int fanHubMemberId,  String reason,  BanType banType,  DateTime bannedUntil)?  $default,) {final _that = this;
switch (_that) {
case _BanRequest() when $default != null:
return $default(_that.fanHubMemberId,_that.reason,_that.banType,_that.bannedUntil);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BanRequest implements BanRequest {
  const _BanRequest({required this.fanHubMemberId, required this.reason, required this.banType, required this.bannedUntil});
  factory _BanRequest.fromJson(Map<String, dynamic> json) => _$BanRequestFromJson(json);

@override final  int fanHubMemberId;
@override final  String reason;
@override final  BanType banType;
@override final  DateTime bannedUntil;

/// Create a copy of BanRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BanRequestCopyWith<_BanRequest> get copyWith => __$BanRequestCopyWithImpl<_BanRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BanRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BanRequest&&(identical(other.fanHubMemberId, fanHubMemberId) || other.fanHubMemberId == fanHubMemberId)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.banType, banType) || other.banType == banType)&&(identical(other.bannedUntil, bannedUntil) || other.bannedUntil == bannedUntil));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fanHubMemberId,reason,banType,bannedUntil);

@override
String toString() {
  return 'BanRequest(fanHubMemberId: $fanHubMemberId, reason: $reason, banType: $banType, bannedUntil: $bannedUntil)';
}


}

/// @nodoc
abstract mixin class _$BanRequestCopyWith<$Res> implements $BanRequestCopyWith<$Res> {
  factory _$BanRequestCopyWith(_BanRequest value, $Res Function(_BanRequest) _then) = __$BanRequestCopyWithImpl;
@override @useResult
$Res call({
 int fanHubMemberId, String reason, BanType banType, DateTime bannedUntil
});




}
/// @nodoc
class __$BanRequestCopyWithImpl<$Res>
    implements _$BanRequestCopyWith<$Res> {
  __$BanRequestCopyWithImpl(this._self, this._then);

  final _BanRequest _self;
  final $Res Function(_BanRequest) _then;

/// Create a copy of BanRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fanHubMemberId = null,Object? reason = null,Object? banType = null,Object? bannedUntil = null,}) {
  return _then(_BanRequest(
fanHubMemberId: null == fanHubMemberId ? _self.fanHubMemberId : fanHubMemberId // ignore: cast_nullable_to_non_nullable
as int,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,banType: null == banType ? _self.banType : banType // ignore: cast_nullable_to_non_nullable
as BanType,bannedUntil: null == bannedUntil ? _self.bannedUntil : bannedUntil // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
