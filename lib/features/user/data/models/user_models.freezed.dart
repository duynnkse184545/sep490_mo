// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$User {

 int get userId; String get username; String get email; String? get displayName; String? get avatarUrl; String? get frameUrl; String get bio; UserRole get role; int get points; int get paidPoints; String? get translateLanguage; DateTime get createdAt; DateTime get updatedAt; bool get isActive; int get totalBadges; int get totalFanHubs; int get totalReceivedGifts; List<dynamic>? get displayBadges; List<dynamic>? get allBadges;
/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserCopyWith<User> get copyWith => _$UserCopyWithImpl<User>(this as User, _$identity);

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is User&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.frameUrl, frameUrl) || other.frameUrl == frameUrl)&&(identical(other.bio, bio) || other.bio == bio)&&(identical(other.role, role) || other.role == role)&&(identical(other.points, points) || other.points == points)&&(identical(other.paidPoints, paidPoints) || other.paidPoints == paidPoints)&&(identical(other.translateLanguage, translateLanguage) || other.translateLanguage == translateLanguage)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.totalBadges, totalBadges) || other.totalBadges == totalBadges)&&(identical(other.totalFanHubs, totalFanHubs) || other.totalFanHubs == totalFanHubs)&&(identical(other.totalReceivedGifts, totalReceivedGifts) || other.totalReceivedGifts == totalReceivedGifts)&&const DeepCollectionEquality().equals(other.displayBadges, displayBadges)&&const DeepCollectionEquality().equals(other.allBadges, allBadges));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,userId,username,email,displayName,avatarUrl,frameUrl,bio,role,points,paidPoints,translateLanguage,createdAt,updatedAt,isActive,totalBadges,totalFanHubs,totalReceivedGifts,const DeepCollectionEquality().hash(displayBadges),const DeepCollectionEquality().hash(allBadges)]);

@override
String toString() {
  return 'User(userId: $userId, username: $username, email: $email, displayName: $displayName, avatarUrl: $avatarUrl, frameUrl: $frameUrl, bio: $bio, role: $role, points: $points, paidPoints: $paidPoints, translateLanguage: $translateLanguage, createdAt: $createdAt, updatedAt: $updatedAt, isActive: $isActive, totalBadges: $totalBadges, totalFanHubs: $totalFanHubs, totalReceivedGifts: $totalReceivedGifts, displayBadges: $displayBadges, allBadges: $allBadges)';
}


}

/// @nodoc
abstract mixin class $UserCopyWith<$Res>  {
  factory $UserCopyWith(User value, $Res Function(User) _then) = _$UserCopyWithImpl;
@useResult
$Res call({
 int userId, String username, String email, String? displayName, String? avatarUrl, String? frameUrl, String bio, UserRole role, int points, int paidPoints, String? translateLanguage, DateTime createdAt, DateTime updatedAt, bool isActive, int totalBadges, int totalFanHubs, int totalReceivedGifts, List<dynamic>? displayBadges, List<dynamic>? allBadges
});




}
/// @nodoc
class _$UserCopyWithImpl<$Res>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._self, this._then);

  final User _self;
  final $Res Function(User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? username = null,Object? email = null,Object? displayName = freezed,Object? avatarUrl = freezed,Object? frameUrl = freezed,Object? bio = null,Object? role = null,Object? points = null,Object? paidPoints = null,Object? translateLanguage = freezed,Object? createdAt = null,Object? updatedAt = null,Object? isActive = null,Object? totalBadges = null,Object? totalFanHubs = null,Object? totalReceivedGifts = null,Object? displayBadges = freezed,Object? allBadges = freezed,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,frameUrl: freezed == frameUrl ? _self.frameUrl : frameUrl // ignore: cast_nullable_to_non_nullable
as String?,bio: null == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as UserRole,points: null == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as int,paidPoints: null == paidPoints ? _self.paidPoints : paidPoints // ignore: cast_nullable_to_non_nullable
as int,translateLanguage: freezed == translateLanguage ? _self.translateLanguage : translateLanguage // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,totalBadges: null == totalBadges ? _self.totalBadges : totalBadges // ignore: cast_nullable_to_non_nullable
as int,totalFanHubs: null == totalFanHubs ? _self.totalFanHubs : totalFanHubs // ignore: cast_nullable_to_non_nullable
as int,totalReceivedGifts: null == totalReceivedGifts ? _self.totalReceivedGifts : totalReceivedGifts // ignore: cast_nullable_to_non_nullable
as int,displayBadges: freezed == displayBadges ? _self.displayBadges : displayBadges // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,allBadges: freezed == allBadges ? _self.allBadges : allBadges // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [User].
extension UserPatterns on User {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _User value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _User() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _User value)  $default,){
final _that = this;
switch (_that) {
case _User():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _User value)?  $default,){
final _that = this;
switch (_that) {
case _User() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int userId,  String username,  String email,  String? displayName,  String? avatarUrl,  String? frameUrl,  String bio,  UserRole role,  int points,  int paidPoints,  String? translateLanguage,  DateTime createdAt,  DateTime updatedAt,  bool isActive,  int totalBadges,  int totalFanHubs,  int totalReceivedGifts,  List<dynamic>? displayBadges,  List<dynamic>? allBadges)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.userId,_that.username,_that.email,_that.displayName,_that.avatarUrl,_that.frameUrl,_that.bio,_that.role,_that.points,_that.paidPoints,_that.translateLanguage,_that.createdAt,_that.updatedAt,_that.isActive,_that.totalBadges,_that.totalFanHubs,_that.totalReceivedGifts,_that.displayBadges,_that.allBadges);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int userId,  String username,  String email,  String? displayName,  String? avatarUrl,  String? frameUrl,  String bio,  UserRole role,  int points,  int paidPoints,  String? translateLanguage,  DateTime createdAt,  DateTime updatedAt,  bool isActive,  int totalBadges,  int totalFanHubs,  int totalReceivedGifts,  List<dynamic>? displayBadges,  List<dynamic>? allBadges)  $default,) {final _that = this;
switch (_that) {
case _User():
return $default(_that.userId,_that.username,_that.email,_that.displayName,_that.avatarUrl,_that.frameUrl,_that.bio,_that.role,_that.points,_that.paidPoints,_that.translateLanguage,_that.createdAt,_that.updatedAt,_that.isActive,_that.totalBadges,_that.totalFanHubs,_that.totalReceivedGifts,_that.displayBadges,_that.allBadges);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int userId,  String username,  String email,  String? displayName,  String? avatarUrl,  String? frameUrl,  String bio,  UserRole role,  int points,  int paidPoints,  String? translateLanguage,  DateTime createdAt,  DateTime updatedAt,  bool isActive,  int totalBadges,  int totalFanHubs,  int totalReceivedGifts,  List<dynamic>? displayBadges,  List<dynamic>? allBadges)?  $default,) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.userId,_that.username,_that.email,_that.displayName,_that.avatarUrl,_that.frameUrl,_that.bio,_that.role,_that.points,_that.paidPoints,_that.translateLanguage,_that.createdAt,_that.updatedAt,_that.isActive,_that.totalBadges,_that.totalFanHubs,_that.totalReceivedGifts,_that.displayBadges,_that.allBadges);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _User implements User {
  const _User({required this.userId, required this.username, required this.email, this.displayName, this.avatarUrl, this.frameUrl, required this.bio, required this.role, required this.points, required this.paidPoints, this.translateLanguage, required this.createdAt, required this.updatedAt, required this.isActive, required this.totalBadges, required this.totalFanHubs, required this.totalReceivedGifts, final  List<dynamic>? displayBadges, final  List<dynamic>? allBadges}): _displayBadges = displayBadges,_allBadges = allBadges;
  factory _User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

@override final  int userId;
@override final  String username;
@override final  String email;
@override final  String? displayName;
@override final  String? avatarUrl;
@override final  String? frameUrl;
@override final  String bio;
@override final  UserRole role;
@override final  int points;
@override final  int paidPoints;
@override final  String? translateLanguage;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override final  bool isActive;
@override final  int totalBadges;
@override final  int totalFanHubs;
@override final  int totalReceivedGifts;
 final  List<dynamic>? _displayBadges;
@override List<dynamic>? get displayBadges {
  final value = _displayBadges;
  if (value == null) return null;
  if (_displayBadges is EqualUnmodifiableListView) return _displayBadges;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _allBadges;
@override List<dynamic>? get allBadges {
  final value = _allBadges;
  if (value == null) return null;
  if (_allBadges is EqualUnmodifiableListView) return _allBadges;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserCopyWith<_User> get copyWith => __$UserCopyWithImpl<_User>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _User&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.frameUrl, frameUrl) || other.frameUrl == frameUrl)&&(identical(other.bio, bio) || other.bio == bio)&&(identical(other.role, role) || other.role == role)&&(identical(other.points, points) || other.points == points)&&(identical(other.paidPoints, paidPoints) || other.paidPoints == paidPoints)&&(identical(other.translateLanguage, translateLanguage) || other.translateLanguage == translateLanguage)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.totalBadges, totalBadges) || other.totalBadges == totalBadges)&&(identical(other.totalFanHubs, totalFanHubs) || other.totalFanHubs == totalFanHubs)&&(identical(other.totalReceivedGifts, totalReceivedGifts) || other.totalReceivedGifts == totalReceivedGifts)&&const DeepCollectionEquality().equals(other._displayBadges, _displayBadges)&&const DeepCollectionEquality().equals(other._allBadges, _allBadges));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,userId,username,email,displayName,avatarUrl,frameUrl,bio,role,points,paidPoints,translateLanguage,createdAt,updatedAt,isActive,totalBadges,totalFanHubs,totalReceivedGifts,const DeepCollectionEquality().hash(_displayBadges),const DeepCollectionEquality().hash(_allBadges)]);

@override
String toString() {
  return 'User(userId: $userId, username: $username, email: $email, displayName: $displayName, avatarUrl: $avatarUrl, frameUrl: $frameUrl, bio: $bio, role: $role, points: $points, paidPoints: $paidPoints, translateLanguage: $translateLanguage, createdAt: $createdAt, updatedAt: $updatedAt, isActive: $isActive, totalBadges: $totalBadges, totalFanHubs: $totalFanHubs, totalReceivedGifts: $totalReceivedGifts, displayBadges: $displayBadges, allBadges: $allBadges)';
}


}

/// @nodoc
abstract mixin class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) _then) = __$UserCopyWithImpl;
@override @useResult
$Res call({
 int userId, String username, String email, String? displayName, String? avatarUrl, String? frameUrl, String bio, UserRole role, int points, int paidPoints, String? translateLanguage, DateTime createdAt, DateTime updatedAt, bool isActive, int totalBadges, int totalFanHubs, int totalReceivedGifts, List<dynamic>? displayBadges, List<dynamic>? allBadges
});




}
/// @nodoc
class __$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(this._self, this._then);

  final _User _self;
  final $Res Function(_User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? username = null,Object? email = null,Object? displayName = freezed,Object? avatarUrl = freezed,Object? frameUrl = freezed,Object? bio = null,Object? role = null,Object? points = null,Object? paidPoints = null,Object? translateLanguage = freezed,Object? createdAt = null,Object? updatedAt = null,Object? isActive = null,Object? totalBadges = null,Object? totalFanHubs = null,Object? totalReceivedGifts = null,Object? displayBadges = freezed,Object? allBadges = freezed,}) {
  return _then(_User(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,frameUrl: freezed == frameUrl ? _self.frameUrl : frameUrl // ignore: cast_nullable_to_non_nullable
as String?,bio: null == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as UserRole,points: null == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as int,paidPoints: null == paidPoints ? _self.paidPoints : paidPoints // ignore: cast_nullable_to_non_nullable
as int,translateLanguage: freezed == translateLanguage ? _self.translateLanguage : translateLanguage // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,totalBadges: null == totalBadges ? _self.totalBadges : totalBadges // ignore: cast_nullable_to_non_nullable
as int,totalFanHubs: null == totalFanHubs ? _self.totalFanHubs : totalFanHubs // ignore: cast_nullable_to_non_nullable
as int,totalReceivedGifts: null == totalReceivedGifts ? _self.totalReceivedGifts : totalReceivedGifts // ignore: cast_nullable_to_non_nullable
as int,displayBadges: freezed == displayBadges ? _self._displayBadges : displayBadges // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,allBadges: freezed == allBadges ? _self._allBadges : allBadges // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,
  ));
}


}


/// @nodoc
mixin _$CreateProfileRequest {

 String get username; String get email; String? get displayName; String? get avatarUrl; String? get frameUrl; String? get bio; String? get translateLanguage;
/// Create a copy of CreateProfileRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateProfileRequestCopyWith<CreateProfileRequest> get copyWith => _$CreateProfileRequestCopyWithImpl<CreateProfileRequest>(this as CreateProfileRequest, _$identity);

  /// Serializes this CreateProfileRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateProfileRequest&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.frameUrl, frameUrl) || other.frameUrl == frameUrl)&&(identical(other.bio, bio) || other.bio == bio)&&(identical(other.translateLanguage, translateLanguage) || other.translateLanguage == translateLanguage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,username,email,displayName,avatarUrl,frameUrl,bio,translateLanguage);

@override
String toString() {
  return 'CreateProfileRequest(username: $username, email: $email, displayName: $displayName, avatarUrl: $avatarUrl, frameUrl: $frameUrl, bio: $bio, translateLanguage: $translateLanguage)';
}


}

/// @nodoc
abstract mixin class $CreateProfileRequestCopyWith<$Res>  {
  factory $CreateProfileRequestCopyWith(CreateProfileRequest value, $Res Function(CreateProfileRequest) _then) = _$CreateProfileRequestCopyWithImpl;
@useResult
$Res call({
 String username, String email, String? displayName, String? avatarUrl, String? frameUrl, String? bio, String? translateLanguage
});




}
/// @nodoc
class _$CreateProfileRequestCopyWithImpl<$Res>
    implements $CreateProfileRequestCopyWith<$Res> {
  _$CreateProfileRequestCopyWithImpl(this._self, this._then);

  final CreateProfileRequest _self;
  final $Res Function(CreateProfileRequest) _then;

/// Create a copy of CreateProfileRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? username = null,Object? email = null,Object? displayName = freezed,Object? avatarUrl = freezed,Object? frameUrl = freezed,Object? bio = freezed,Object? translateLanguage = freezed,}) {
  return _then(_self.copyWith(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,frameUrl: freezed == frameUrl ? _self.frameUrl : frameUrl // ignore: cast_nullable_to_non_nullable
as String?,bio: freezed == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String?,translateLanguage: freezed == translateLanguage ? _self.translateLanguage : translateLanguage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateProfileRequest].
extension CreateProfileRequestPatterns on CreateProfileRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateProfileRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateProfileRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateProfileRequest value)  $default,){
final _that = this;
switch (_that) {
case _CreateProfileRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateProfileRequest value)?  $default,){
final _that = this;
switch (_that) {
case _CreateProfileRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String username,  String email,  String? displayName,  String? avatarUrl,  String? frameUrl,  String? bio,  String? translateLanguage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateProfileRequest() when $default != null:
return $default(_that.username,_that.email,_that.displayName,_that.avatarUrl,_that.frameUrl,_that.bio,_that.translateLanguage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String username,  String email,  String? displayName,  String? avatarUrl,  String? frameUrl,  String? bio,  String? translateLanguage)  $default,) {final _that = this;
switch (_that) {
case _CreateProfileRequest():
return $default(_that.username,_that.email,_that.displayName,_that.avatarUrl,_that.frameUrl,_that.bio,_that.translateLanguage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String username,  String email,  String? displayName,  String? avatarUrl,  String? frameUrl,  String? bio,  String? translateLanguage)?  $default,) {final _that = this;
switch (_that) {
case _CreateProfileRequest() when $default != null:
return $default(_that.username,_that.email,_that.displayName,_that.avatarUrl,_that.frameUrl,_that.bio,_that.translateLanguage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateProfileRequest implements CreateProfileRequest {
  const _CreateProfileRequest({required this.username, required this.email, this.displayName, this.avatarUrl, this.frameUrl, this.bio, this.translateLanguage});
  factory _CreateProfileRequest.fromJson(Map<String, dynamic> json) => _$CreateProfileRequestFromJson(json);

@override final  String username;
@override final  String email;
@override final  String? displayName;
@override final  String? avatarUrl;
@override final  String? frameUrl;
@override final  String? bio;
@override final  String? translateLanguage;

/// Create a copy of CreateProfileRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateProfileRequestCopyWith<_CreateProfileRequest> get copyWith => __$CreateProfileRequestCopyWithImpl<_CreateProfileRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateProfileRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateProfileRequest&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.frameUrl, frameUrl) || other.frameUrl == frameUrl)&&(identical(other.bio, bio) || other.bio == bio)&&(identical(other.translateLanguage, translateLanguage) || other.translateLanguage == translateLanguage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,username,email,displayName,avatarUrl,frameUrl,bio,translateLanguage);

@override
String toString() {
  return 'CreateProfileRequest(username: $username, email: $email, displayName: $displayName, avatarUrl: $avatarUrl, frameUrl: $frameUrl, bio: $bio, translateLanguage: $translateLanguage)';
}


}

/// @nodoc
abstract mixin class _$CreateProfileRequestCopyWith<$Res> implements $CreateProfileRequestCopyWith<$Res> {
  factory _$CreateProfileRequestCopyWith(_CreateProfileRequest value, $Res Function(_CreateProfileRequest) _then) = __$CreateProfileRequestCopyWithImpl;
@override @useResult
$Res call({
 String username, String email, String? displayName, String? avatarUrl, String? frameUrl, String? bio, String? translateLanguage
});




}
/// @nodoc
class __$CreateProfileRequestCopyWithImpl<$Res>
    implements _$CreateProfileRequestCopyWith<$Res> {
  __$CreateProfileRequestCopyWithImpl(this._self, this._then);

  final _CreateProfileRequest _self;
  final $Res Function(_CreateProfileRequest) _then;

/// Create a copy of CreateProfileRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? username = null,Object? email = null,Object? displayName = freezed,Object? avatarUrl = freezed,Object? frameUrl = freezed,Object? bio = freezed,Object? translateLanguage = freezed,}) {
  return _then(_CreateProfileRequest(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,frameUrl: freezed == frameUrl ? _self.frameUrl : frameUrl // ignore: cast_nullable_to_non_nullable
as String?,bio: freezed == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String?,translateLanguage: freezed == translateLanguage ? _self.translateLanguage : translateLanguage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$UpdateProfileRequest {

 String? get email; String? get displayName; String? get bio; String? get translateLanguage;
/// Create a copy of UpdateProfileRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateProfileRequestCopyWith<UpdateProfileRequest> get copyWith => _$UpdateProfileRequestCopyWithImpl<UpdateProfileRequest>(this as UpdateProfileRequest, _$identity);

  /// Serializes this UpdateProfileRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateProfileRequest&&(identical(other.email, email) || other.email == email)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.bio, bio) || other.bio == bio)&&(identical(other.translateLanguage, translateLanguage) || other.translateLanguage == translateLanguage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,displayName,bio,translateLanguage);

@override
String toString() {
  return 'UpdateProfileRequest(email: $email, displayName: $displayName, bio: $bio, translateLanguage: $translateLanguage)';
}


}

/// @nodoc
abstract mixin class $UpdateProfileRequestCopyWith<$Res>  {
  factory $UpdateProfileRequestCopyWith(UpdateProfileRequest value, $Res Function(UpdateProfileRequest) _then) = _$UpdateProfileRequestCopyWithImpl;
@useResult
$Res call({
 String? email, String? displayName, String? bio, String? translateLanguage
});




}
/// @nodoc
class _$UpdateProfileRequestCopyWithImpl<$Res>
    implements $UpdateProfileRequestCopyWith<$Res> {
  _$UpdateProfileRequestCopyWithImpl(this._self, this._then);

  final UpdateProfileRequest _self;
  final $Res Function(UpdateProfileRequest) _then;

/// Create a copy of UpdateProfileRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = freezed,Object? displayName = freezed,Object? bio = freezed,Object? translateLanguage = freezed,}) {
  return _then(_self.copyWith(
email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,bio: freezed == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String?,translateLanguage: freezed == translateLanguage ? _self.translateLanguage : translateLanguage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateProfileRequest].
extension UpdateProfileRequestPatterns on UpdateProfileRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateProfileRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateProfileRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateProfileRequest value)  $default,){
final _that = this;
switch (_that) {
case _UpdateProfileRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateProfileRequest value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateProfileRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? email,  String? displayName,  String? bio,  String? translateLanguage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateProfileRequest() when $default != null:
return $default(_that.email,_that.displayName,_that.bio,_that.translateLanguage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? email,  String? displayName,  String? bio,  String? translateLanguage)  $default,) {final _that = this;
switch (_that) {
case _UpdateProfileRequest():
return $default(_that.email,_that.displayName,_that.bio,_that.translateLanguage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? email,  String? displayName,  String? bio,  String? translateLanguage)?  $default,) {final _that = this;
switch (_that) {
case _UpdateProfileRequest() when $default != null:
return $default(_that.email,_that.displayName,_that.bio,_that.translateLanguage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateProfileRequest implements UpdateProfileRequest {
  const _UpdateProfileRequest({this.email, this.displayName, this.bio, this.translateLanguage});
  factory _UpdateProfileRequest.fromJson(Map<String, dynamic> json) => _$UpdateProfileRequestFromJson(json);

@override final  String? email;
@override final  String? displayName;
@override final  String? bio;
@override final  String? translateLanguage;

/// Create a copy of UpdateProfileRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateProfileRequestCopyWith<_UpdateProfileRequest> get copyWith => __$UpdateProfileRequestCopyWithImpl<_UpdateProfileRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateProfileRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateProfileRequest&&(identical(other.email, email) || other.email == email)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.bio, bio) || other.bio == bio)&&(identical(other.translateLanguage, translateLanguage) || other.translateLanguage == translateLanguage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,displayName,bio,translateLanguage);

@override
String toString() {
  return 'UpdateProfileRequest(email: $email, displayName: $displayName, bio: $bio, translateLanguage: $translateLanguage)';
}


}

/// @nodoc
abstract mixin class _$UpdateProfileRequestCopyWith<$Res> implements $UpdateProfileRequestCopyWith<$Res> {
  factory _$UpdateProfileRequestCopyWith(_UpdateProfileRequest value, $Res Function(_UpdateProfileRequest) _then) = __$UpdateProfileRequestCopyWithImpl;
@override @useResult
$Res call({
 String? email, String? displayName, String? bio, String? translateLanguage
});




}
/// @nodoc
class __$UpdateProfileRequestCopyWithImpl<$Res>
    implements _$UpdateProfileRequestCopyWith<$Res> {
  __$UpdateProfileRequestCopyWithImpl(this._self, this._then);

  final _UpdateProfileRequest _self;
  final $Res Function(_UpdateProfileRequest) _then;

/// Create a copy of UpdateProfileRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = freezed,Object? displayName = freezed,Object? bio = freezed,Object? translateLanguage = freezed,}) {
  return _then(_UpdateProfileRequest(
email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,bio: freezed == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String?,translateLanguage: freezed == translateLanguage ? _self.translateLanguage : translateLanguage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$AvatarFrameRequest {

 String get avatar; String get frame;
/// Create a copy of AvatarFrameRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AvatarFrameRequestCopyWith<AvatarFrameRequest> get copyWith => _$AvatarFrameRequestCopyWithImpl<AvatarFrameRequest>(this as AvatarFrameRequest, _$identity);

  /// Serializes this AvatarFrameRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AvatarFrameRequest&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.frame, frame) || other.frame == frame));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,avatar,frame);

@override
String toString() {
  return 'AvatarFrameRequest(avatar: $avatar, frame: $frame)';
}


}

/// @nodoc
abstract mixin class $AvatarFrameRequestCopyWith<$Res>  {
  factory $AvatarFrameRequestCopyWith(AvatarFrameRequest value, $Res Function(AvatarFrameRequest) _then) = _$AvatarFrameRequestCopyWithImpl;
@useResult
$Res call({
 String avatar, String frame
});




}
/// @nodoc
class _$AvatarFrameRequestCopyWithImpl<$Res>
    implements $AvatarFrameRequestCopyWith<$Res> {
  _$AvatarFrameRequestCopyWithImpl(this._self, this._then);

  final AvatarFrameRequest _self;
  final $Res Function(AvatarFrameRequest) _then;

/// Create a copy of AvatarFrameRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? avatar = null,Object? frame = null,}) {
  return _then(_self.copyWith(
avatar: null == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String,frame: null == frame ? _self.frame : frame // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AvatarFrameRequest].
extension AvatarFrameRequestPatterns on AvatarFrameRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AvatarFrameRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AvatarFrameRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AvatarFrameRequest value)  $default,){
final _that = this;
switch (_that) {
case _AvatarFrameRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AvatarFrameRequest value)?  $default,){
final _that = this;
switch (_that) {
case _AvatarFrameRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String avatar,  String frame)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AvatarFrameRequest() when $default != null:
return $default(_that.avatar,_that.frame);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String avatar,  String frame)  $default,) {final _that = this;
switch (_that) {
case _AvatarFrameRequest():
return $default(_that.avatar,_that.frame);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String avatar,  String frame)?  $default,) {final _that = this;
switch (_that) {
case _AvatarFrameRequest() when $default != null:
return $default(_that.avatar,_that.frame);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AvatarFrameRequest implements AvatarFrameRequest {
  const _AvatarFrameRequest({required this.avatar, required this.frame});
  factory _AvatarFrameRequest.fromJson(Map<String, dynamic> json) => _$AvatarFrameRequestFromJson(json);

@override final  String avatar;
@override final  String frame;

/// Create a copy of AvatarFrameRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AvatarFrameRequestCopyWith<_AvatarFrameRequest> get copyWith => __$AvatarFrameRequestCopyWithImpl<_AvatarFrameRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AvatarFrameRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AvatarFrameRequest&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.frame, frame) || other.frame == frame));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,avatar,frame);

@override
String toString() {
  return 'AvatarFrameRequest(avatar: $avatar, frame: $frame)';
}


}

/// @nodoc
abstract mixin class _$AvatarFrameRequestCopyWith<$Res> implements $AvatarFrameRequestCopyWith<$Res> {
  factory _$AvatarFrameRequestCopyWith(_AvatarFrameRequest value, $Res Function(_AvatarFrameRequest) _then) = __$AvatarFrameRequestCopyWithImpl;
@override @useResult
$Res call({
 String avatar, String frame
});




}
/// @nodoc
class __$AvatarFrameRequestCopyWithImpl<$Res>
    implements _$AvatarFrameRequestCopyWith<$Res> {
  __$AvatarFrameRequestCopyWithImpl(this._self, this._then);

  final _AvatarFrameRequest _self;
  final $Res Function(_AvatarFrameRequest) _then;

/// Create a copy of AvatarFrameRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? avatar = null,Object? frame = null,}) {
  return _then(_AvatarFrameRequest(
avatar: null == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String,frame: null == frame ? _self.frame : frame // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
