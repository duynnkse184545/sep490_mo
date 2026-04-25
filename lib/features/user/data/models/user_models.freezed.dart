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

 int get userId; String get username; String get email; String? get displayName; String? get avatarUrl; String? get frameUrl; String get bio; UserRole get role; int get points; int get paidPoints; String? get translateLanguage; DateTime get createdAt; DateTime get updatedAt; bool get isActive; int get totalBadges; int get totalFanHubs; int get totalReceivedGifts; List<Badge>? get displayBadges; List<Badge>? get allBadges;
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
 int userId, String username, String email, String? displayName, String? avatarUrl, String? frameUrl, String bio, UserRole role, int points, int paidPoints, String? translateLanguage, DateTime createdAt, DateTime updatedAt, bool isActive, int totalBadges, int totalFanHubs, int totalReceivedGifts, List<Badge>? displayBadges, List<Badge>? allBadges
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
as List<Badge>?,allBadges: freezed == allBadges ? _self.allBadges : allBadges // ignore: cast_nullable_to_non_nullable
as List<Badge>?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int userId,  String username,  String email,  String? displayName,  String? avatarUrl,  String? frameUrl,  String bio,  UserRole role,  int points,  int paidPoints,  String? translateLanguage,  DateTime createdAt,  DateTime updatedAt,  bool isActive,  int totalBadges,  int totalFanHubs,  int totalReceivedGifts,  List<Badge>? displayBadges,  List<Badge>? allBadges)?  $default,{required TResult orElse(),}) {final _that = this;
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int userId,  String username,  String email,  String? displayName,  String? avatarUrl,  String? frameUrl,  String bio,  UserRole role,  int points,  int paidPoints,  String? translateLanguage,  DateTime createdAt,  DateTime updatedAt,  bool isActive,  int totalBadges,  int totalFanHubs,  int totalReceivedGifts,  List<Badge>? displayBadges,  List<Badge>? allBadges)  $default,) {final _that = this;
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int userId,  String username,  String email,  String? displayName,  String? avatarUrl,  String? frameUrl,  String bio,  UserRole role,  int points,  int paidPoints,  String? translateLanguage,  DateTime createdAt,  DateTime updatedAt,  bool isActive,  int totalBadges,  int totalFanHubs,  int totalReceivedGifts,  List<Badge>? displayBadges,  List<Badge>? allBadges)?  $default,) {final _that = this;
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
  const _User({required this.userId, required this.username, required this.email, this.displayName, this.avatarUrl, this.frameUrl, required this.bio, required this.role, required this.points, required this.paidPoints, this.translateLanguage, required this.createdAt, required this.updatedAt, required this.isActive, required this.totalBadges, required this.totalFanHubs, required this.totalReceivedGifts, final  List<Badge>? displayBadges, final  List<Badge>? allBadges}): _displayBadges = displayBadges,_allBadges = allBadges;
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
 final  List<Badge>? _displayBadges;
@override List<Badge>? get displayBadges {
  final value = _displayBadges;
  if (value == null) return null;
  if (_displayBadges is EqualUnmodifiableListView) return _displayBadges;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<Badge>? _allBadges;
@override List<Badge>? get allBadges {
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
 int userId, String username, String email, String? displayName, String? avatarUrl, String? frameUrl, String bio, UserRole role, int points, int paidPoints, String? translateLanguage, DateTime createdAt, DateTime updatedAt, bool isActive, int totalBadges, int totalFanHubs, int totalReceivedGifts, List<Badge>? displayBadges, List<Badge>? allBadges
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
as List<Badge>?,allBadges: freezed == allBadges ? _self._allBadges : allBadges // ignore: cast_nullable_to_non_nullable
as List<Badge>?,
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
mixin _$Badge {

 int get userBadgeId; int get badgeId; String get badgeName; String get description; String? get iconUrl; String get requirement; DateTime get acquiredAt; bool get isDisplay;
/// Create a copy of Badge
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BadgeCopyWith<Badge> get copyWith => _$BadgeCopyWithImpl<Badge>(this as Badge, _$identity);

  /// Serializes this Badge to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Badge&&(identical(other.userBadgeId, userBadgeId) || other.userBadgeId == userBadgeId)&&(identical(other.badgeId, badgeId) || other.badgeId == badgeId)&&(identical(other.badgeName, badgeName) || other.badgeName == badgeName)&&(identical(other.description, description) || other.description == description)&&(identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl)&&(identical(other.requirement, requirement) || other.requirement == requirement)&&(identical(other.acquiredAt, acquiredAt) || other.acquiredAt == acquiredAt)&&(identical(other.isDisplay, isDisplay) || other.isDisplay == isDisplay));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userBadgeId,badgeId,badgeName,description,iconUrl,requirement,acquiredAt,isDisplay);

@override
String toString() {
  return 'Badge(userBadgeId: $userBadgeId, badgeId: $badgeId, badgeName: $badgeName, description: $description, iconUrl: $iconUrl, requirement: $requirement, acquiredAt: $acquiredAt, isDisplay: $isDisplay)';
}


}

/// @nodoc
abstract mixin class $BadgeCopyWith<$Res>  {
  factory $BadgeCopyWith(Badge value, $Res Function(Badge) _then) = _$BadgeCopyWithImpl;
@useResult
$Res call({
 int userBadgeId, int badgeId, String badgeName, String description, String? iconUrl, String requirement, DateTime acquiredAt, bool isDisplay
});




}
/// @nodoc
class _$BadgeCopyWithImpl<$Res>
    implements $BadgeCopyWith<$Res> {
  _$BadgeCopyWithImpl(this._self, this._then);

  final Badge _self;
  final $Res Function(Badge) _then;

/// Create a copy of Badge
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userBadgeId = null,Object? badgeId = null,Object? badgeName = null,Object? description = null,Object? iconUrl = freezed,Object? requirement = null,Object? acquiredAt = null,Object? isDisplay = null,}) {
  return _then(_self.copyWith(
userBadgeId: null == userBadgeId ? _self.userBadgeId : userBadgeId // ignore: cast_nullable_to_non_nullable
as int,badgeId: null == badgeId ? _self.badgeId : badgeId // ignore: cast_nullable_to_non_nullable
as int,badgeName: null == badgeName ? _self.badgeName : badgeName // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,iconUrl: freezed == iconUrl ? _self.iconUrl : iconUrl // ignore: cast_nullable_to_non_nullable
as String?,requirement: null == requirement ? _self.requirement : requirement // ignore: cast_nullable_to_non_nullable
as String,acquiredAt: null == acquiredAt ? _self.acquiredAt : acquiredAt // ignore: cast_nullable_to_non_nullable
as DateTime,isDisplay: null == isDisplay ? _self.isDisplay : isDisplay // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [Badge].
extension BadgePatterns on Badge {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Badge value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Badge() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Badge value)  $default,){
final _that = this;
switch (_that) {
case _Badge():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Badge value)?  $default,){
final _that = this;
switch (_that) {
case _Badge() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int userBadgeId,  int badgeId,  String badgeName,  String description,  String? iconUrl,  String requirement,  DateTime acquiredAt,  bool isDisplay)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Badge() when $default != null:
return $default(_that.userBadgeId,_that.badgeId,_that.badgeName,_that.description,_that.iconUrl,_that.requirement,_that.acquiredAt,_that.isDisplay);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int userBadgeId,  int badgeId,  String badgeName,  String description,  String? iconUrl,  String requirement,  DateTime acquiredAt,  bool isDisplay)  $default,) {final _that = this;
switch (_that) {
case _Badge():
return $default(_that.userBadgeId,_that.badgeId,_that.badgeName,_that.description,_that.iconUrl,_that.requirement,_that.acquiredAt,_that.isDisplay);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int userBadgeId,  int badgeId,  String badgeName,  String description,  String? iconUrl,  String requirement,  DateTime acquiredAt,  bool isDisplay)?  $default,) {final _that = this;
switch (_that) {
case _Badge() when $default != null:
return $default(_that.userBadgeId,_that.badgeId,_that.badgeName,_that.description,_that.iconUrl,_that.requirement,_that.acquiredAt,_that.isDisplay);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Badge implements Badge {
  const _Badge({required this.userBadgeId, required this.badgeId, required this.badgeName, required this.description, this.iconUrl, required this.requirement, required this.acquiredAt, required this.isDisplay});
  factory _Badge.fromJson(Map<String, dynamic> json) => _$BadgeFromJson(json);

@override final  int userBadgeId;
@override final  int badgeId;
@override final  String badgeName;
@override final  String description;
@override final  String? iconUrl;
@override final  String requirement;
@override final  DateTime acquiredAt;
@override final  bool isDisplay;

/// Create a copy of Badge
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BadgeCopyWith<_Badge> get copyWith => __$BadgeCopyWithImpl<_Badge>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BadgeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Badge&&(identical(other.userBadgeId, userBadgeId) || other.userBadgeId == userBadgeId)&&(identical(other.badgeId, badgeId) || other.badgeId == badgeId)&&(identical(other.badgeName, badgeName) || other.badgeName == badgeName)&&(identical(other.description, description) || other.description == description)&&(identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl)&&(identical(other.requirement, requirement) || other.requirement == requirement)&&(identical(other.acquiredAt, acquiredAt) || other.acquiredAt == acquiredAt)&&(identical(other.isDisplay, isDisplay) || other.isDisplay == isDisplay));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userBadgeId,badgeId,badgeName,description,iconUrl,requirement,acquiredAt,isDisplay);

@override
String toString() {
  return 'Badge(userBadgeId: $userBadgeId, badgeId: $badgeId, badgeName: $badgeName, description: $description, iconUrl: $iconUrl, requirement: $requirement, acquiredAt: $acquiredAt, isDisplay: $isDisplay)';
}


}

/// @nodoc
abstract mixin class _$BadgeCopyWith<$Res> implements $BadgeCopyWith<$Res> {
  factory _$BadgeCopyWith(_Badge value, $Res Function(_Badge) _then) = __$BadgeCopyWithImpl;
@override @useResult
$Res call({
 int userBadgeId, int badgeId, String badgeName, String description, String? iconUrl, String requirement, DateTime acquiredAt, bool isDisplay
});




}
/// @nodoc
class __$BadgeCopyWithImpl<$Res>
    implements _$BadgeCopyWith<$Res> {
  __$BadgeCopyWithImpl(this._self, this._then);

  final _Badge _self;
  final $Res Function(_Badge) _then;

/// Create a copy of Badge
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userBadgeId = null,Object? badgeId = null,Object? badgeName = null,Object? description = null,Object? iconUrl = freezed,Object? requirement = null,Object? acquiredAt = null,Object? isDisplay = null,}) {
  return _then(_Badge(
userBadgeId: null == userBadgeId ? _self.userBadgeId : userBadgeId // ignore: cast_nullable_to_non_nullable
as int,badgeId: null == badgeId ? _self.badgeId : badgeId // ignore: cast_nullable_to_non_nullable
as int,badgeName: null == badgeName ? _self.badgeName : badgeName // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,iconUrl: freezed == iconUrl ? _self.iconUrl : iconUrl // ignore: cast_nullable_to_non_nullable
as String?,requirement: null == requirement ? _self.requirement : requirement // ignore: cast_nullable_to_non_nullable
as String,acquiredAt: null == acquiredAt ? _self.acquiredAt : acquiredAt // ignore: cast_nullable_to_non_nullable
as DateTime,isDisplay: null == isDisplay ? _self.isDisplay : isDisplay // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$Frame {

 int get userItemId; int get itemId; String get itemName; String? get description; String? get imageUrl; String get category; DateTime get obtainedAt;
/// Create a copy of Frame
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FrameCopyWith<Frame> get copyWith => _$FrameCopyWithImpl<Frame>(this as Frame, _$identity);

  /// Serializes this Frame to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Frame&&(identical(other.userItemId, userItemId) || other.userItemId == userItemId)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.itemName, itemName) || other.itemName == itemName)&&(identical(other.description, description) || other.description == description)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.category, category) || other.category == category)&&(identical(other.obtainedAt, obtainedAt) || other.obtainedAt == obtainedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userItemId,itemId,itemName,description,imageUrl,category,obtainedAt);

@override
String toString() {
  return 'Frame(userItemId: $userItemId, itemId: $itemId, itemName: $itemName, description: $description, imageUrl: $imageUrl, category: $category, obtainedAt: $obtainedAt)';
}


}

/// @nodoc
abstract mixin class $FrameCopyWith<$Res>  {
  factory $FrameCopyWith(Frame value, $Res Function(Frame) _then) = _$FrameCopyWithImpl;
@useResult
$Res call({
 int userItemId, int itemId, String itemName, String? description, String? imageUrl, String category, DateTime obtainedAt
});




}
/// @nodoc
class _$FrameCopyWithImpl<$Res>
    implements $FrameCopyWith<$Res> {
  _$FrameCopyWithImpl(this._self, this._then);

  final Frame _self;
  final $Res Function(Frame) _then;

/// Create a copy of Frame
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userItemId = null,Object? itemId = null,Object? itemName = null,Object? description = freezed,Object? imageUrl = freezed,Object? category = null,Object? obtainedAt = null,}) {
  return _then(_self.copyWith(
userItemId: null == userItemId ? _self.userItemId : userItemId // ignore: cast_nullable_to_non_nullable
as int,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as int,itemName: null == itemName ? _self.itemName : itemName // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,obtainedAt: null == obtainedAt ? _self.obtainedAt : obtainedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [Frame].
extension FramePatterns on Frame {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Frame value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Frame() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Frame value)  $default,){
final _that = this;
switch (_that) {
case _Frame():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Frame value)?  $default,){
final _that = this;
switch (_that) {
case _Frame() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int userItemId,  int itemId,  String itemName,  String? description,  String? imageUrl,  String category,  DateTime obtainedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Frame() when $default != null:
return $default(_that.userItemId,_that.itemId,_that.itemName,_that.description,_that.imageUrl,_that.category,_that.obtainedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int userItemId,  int itemId,  String itemName,  String? description,  String? imageUrl,  String category,  DateTime obtainedAt)  $default,) {final _that = this;
switch (_that) {
case _Frame():
return $default(_that.userItemId,_that.itemId,_that.itemName,_that.description,_that.imageUrl,_that.category,_that.obtainedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int userItemId,  int itemId,  String itemName,  String? description,  String? imageUrl,  String category,  DateTime obtainedAt)?  $default,) {final _that = this;
switch (_that) {
case _Frame() when $default != null:
return $default(_that.userItemId,_that.itemId,_that.itemName,_that.description,_that.imageUrl,_that.category,_that.obtainedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Frame implements Frame {
  const _Frame({required this.userItemId, required this.itemId, required this.itemName, this.description, this.imageUrl, required this.category, required this.obtainedAt});
  factory _Frame.fromJson(Map<String, dynamic> json) => _$FrameFromJson(json);

@override final  int userItemId;
@override final  int itemId;
@override final  String itemName;
@override final  String? description;
@override final  String? imageUrl;
@override final  String category;
@override final  DateTime obtainedAt;

/// Create a copy of Frame
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FrameCopyWith<_Frame> get copyWith => __$FrameCopyWithImpl<_Frame>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FrameToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Frame&&(identical(other.userItemId, userItemId) || other.userItemId == userItemId)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.itemName, itemName) || other.itemName == itemName)&&(identical(other.description, description) || other.description == description)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.category, category) || other.category == category)&&(identical(other.obtainedAt, obtainedAt) || other.obtainedAt == obtainedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userItemId,itemId,itemName,description,imageUrl,category,obtainedAt);

@override
String toString() {
  return 'Frame(userItemId: $userItemId, itemId: $itemId, itemName: $itemName, description: $description, imageUrl: $imageUrl, category: $category, obtainedAt: $obtainedAt)';
}


}

/// @nodoc
abstract mixin class _$FrameCopyWith<$Res> implements $FrameCopyWith<$Res> {
  factory _$FrameCopyWith(_Frame value, $Res Function(_Frame) _then) = __$FrameCopyWithImpl;
@override @useResult
$Res call({
 int userItemId, int itemId, String itemName, String? description, String? imageUrl, String category, DateTime obtainedAt
});




}
/// @nodoc
class __$FrameCopyWithImpl<$Res>
    implements _$FrameCopyWith<$Res> {
  __$FrameCopyWithImpl(this._self, this._then);

  final _Frame _self;
  final $Res Function(_Frame) _then;

/// Create a copy of Frame
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userItemId = null,Object? itemId = null,Object? itemName = null,Object? description = freezed,Object? imageUrl = freezed,Object? category = null,Object? obtainedAt = null,}) {
  return _then(_Frame(
userItemId: null == userItemId ? _self.userItemId : userItemId // ignore: cast_nullable_to_non_nullable
as int,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as int,itemName: null == itemName ? _self.itemName : itemName // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,obtainedAt: null == obtainedAt ? _self.obtainedAt : obtainedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$DailyMission {

 int get likeAmount; bool get bonus10; bool get bonus20;
/// Create a copy of DailyMission
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DailyMissionCopyWith<DailyMission> get copyWith => _$DailyMissionCopyWithImpl<DailyMission>(this as DailyMission, _$identity);

  /// Serializes this DailyMission to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DailyMission&&(identical(other.likeAmount, likeAmount) || other.likeAmount == likeAmount)&&(identical(other.bonus10, bonus10) || other.bonus10 == bonus10)&&(identical(other.bonus20, bonus20) || other.bonus20 == bonus20));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,likeAmount,bonus10,bonus20);

@override
String toString() {
  return 'DailyMission(likeAmount: $likeAmount, bonus10: $bonus10, bonus20: $bonus20)';
}


}

/// @nodoc
abstract mixin class $DailyMissionCopyWith<$Res>  {
  factory $DailyMissionCopyWith(DailyMission value, $Res Function(DailyMission) _then) = _$DailyMissionCopyWithImpl;
@useResult
$Res call({
 int likeAmount, bool bonus10, bool bonus20
});




}
/// @nodoc
class _$DailyMissionCopyWithImpl<$Res>
    implements $DailyMissionCopyWith<$Res> {
  _$DailyMissionCopyWithImpl(this._self, this._then);

  final DailyMission _self;
  final $Res Function(DailyMission) _then;

/// Create a copy of DailyMission
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? likeAmount = null,Object? bonus10 = null,Object? bonus20 = null,}) {
  return _then(_self.copyWith(
likeAmount: null == likeAmount ? _self.likeAmount : likeAmount // ignore: cast_nullable_to_non_nullable
as int,bonus10: null == bonus10 ? _self.bonus10 : bonus10 // ignore: cast_nullable_to_non_nullable
as bool,bonus20: null == bonus20 ? _self.bonus20 : bonus20 // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [DailyMission].
extension DailyMissionPatterns on DailyMission {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DailyMission value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DailyMission() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DailyMission value)  $default,){
final _that = this;
switch (_that) {
case _DailyMission():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DailyMission value)?  $default,){
final _that = this;
switch (_that) {
case _DailyMission() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int likeAmount,  bool bonus10,  bool bonus20)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DailyMission() when $default != null:
return $default(_that.likeAmount,_that.bonus10,_that.bonus20);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int likeAmount,  bool bonus10,  bool bonus20)  $default,) {final _that = this;
switch (_that) {
case _DailyMission():
return $default(_that.likeAmount,_that.bonus10,_that.bonus20);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int likeAmount,  bool bonus10,  bool bonus20)?  $default,) {final _that = this;
switch (_that) {
case _DailyMission() when $default != null:
return $default(_that.likeAmount,_that.bonus10,_that.bonus20);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DailyMission implements DailyMission {
  const _DailyMission({required this.likeAmount, required this.bonus10, required this.bonus20});
  factory _DailyMission.fromJson(Map<String, dynamic> json) => _$DailyMissionFromJson(json);

@override final  int likeAmount;
@override final  bool bonus10;
@override final  bool bonus20;

/// Create a copy of DailyMission
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DailyMissionCopyWith<_DailyMission> get copyWith => __$DailyMissionCopyWithImpl<_DailyMission>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DailyMissionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DailyMission&&(identical(other.likeAmount, likeAmount) || other.likeAmount == likeAmount)&&(identical(other.bonus10, bonus10) || other.bonus10 == bonus10)&&(identical(other.bonus20, bonus20) || other.bonus20 == bonus20));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,likeAmount,bonus10,bonus20);

@override
String toString() {
  return 'DailyMission(likeAmount: $likeAmount, bonus10: $bonus10, bonus20: $bonus20)';
}


}

/// @nodoc
abstract mixin class _$DailyMissionCopyWith<$Res> implements $DailyMissionCopyWith<$Res> {
  factory _$DailyMissionCopyWith(_DailyMission value, $Res Function(_DailyMission) _then) = __$DailyMissionCopyWithImpl;
@override @useResult
$Res call({
 int likeAmount, bool bonus10, bool bonus20
});




}
/// @nodoc
class __$DailyMissionCopyWithImpl<$Res>
    implements _$DailyMissionCopyWith<$Res> {
  __$DailyMissionCopyWithImpl(this._self, this._then);

  final _DailyMission _self;
  final $Res Function(_DailyMission) _then;

/// Create a copy of DailyMission
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? likeAmount = null,Object? bonus10 = null,Object? bonus20 = null,}) {
  return _then(_DailyMission(
likeAmount: null == likeAmount ? _self.likeAmount : likeAmount // ignore: cast_nullable_to_non_nullable
as int,bonus10: null == bonus10 ? _self.bonus10 : bonus10 // ignore: cast_nullable_to_non_nullable
as bool,bonus20: null == bonus20 ? _self.bonus20 : bonus20 // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
