// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fanhub_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FanHub {

 int get fanHubId; String get subdomain; String get hubName; String? get description; String? get bannerUrl; List<String> get highlightImgUrls; String? get backgroundUrl; String? get themeColor; String? get avatarUrl; bool get isPrivate; bool get requiresApproval; DateTime get createdAt; int get ownerUserId; String get ownerUsername; String get ownerDisplayName; List<String> get categories; int get memberCount;
/// Create a copy of FanHub
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FanHubCopyWith<FanHub> get copyWith => _$FanHubCopyWithImpl<FanHub>(this as FanHub, _$identity);

  /// Serializes this FanHub to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FanHub&&(identical(other.fanHubId, fanHubId) || other.fanHubId == fanHubId)&&(identical(other.subdomain, subdomain) || other.subdomain == subdomain)&&(identical(other.hubName, hubName) || other.hubName == hubName)&&(identical(other.description, description) || other.description == description)&&(identical(other.bannerUrl, bannerUrl) || other.bannerUrl == bannerUrl)&&const DeepCollectionEquality().equals(other.highlightImgUrls, highlightImgUrls)&&(identical(other.backgroundUrl, backgroundUrl) || other.backgroundUrl == backgroundUrl)&&(identical(other.themeColor, themeColor) || other.themeColor == themeColor)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.isPrivate, isPrivate) || other.isPrivate == isPrivate)&&(identical(other.requiresApproval, requiresApproval) || other.requiresApproval == requiresApproval)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.ownerUserId, ownerUserId) || other.ownerUserId == ownerUserId)&&(identical(other.ownerUsername, ownerUsername) || other.ownerUsername == ownerUsername)&&(identical(other.ownerDisplayName, ownerDisplayName) || other.ownerDisplayName == ownerDisplayName)&&const DeepCollectionEquality().equals(other.categories, categories)&&(identical(other.memberCount, memberCount) || other.memberCount == memberCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fanHubId,subdomain,hubName,description,bannerUrl,const DeepCollectionEquality().hash(highlightImgUrls),backgroundUrl,themeColor,avatarUrl,isPrivate,requiresApproval,createdAt,ownerUserId,ownerUsername,ownerDisplayName,const DeepCollectionEquality().hash(categories),memberCount);

@override
String toString() {
  return 'FanHub(fanHubId: $fanHubId, subdomain: $subdomain, hubName: $hubName, description: $description, bannerUrl: $bannerUrl, highlightImgUrls: $highlightImgUrls, backgroundUrl: $backgroundUrl, themeColor: $themeColor, avatarUrl: $avatarUrl, isPrivate: $isPrivate, requiresApproval: $requiresApproval, createdAt: $createdAt, ownerUserId: $ownerUserId, ownerUsername: $ownerUsername, ownerDisplayName: $ownerDisplayName, categories: $categories, memberCount: $memberCount)';
}


}

/// @nodoc
abstract mixin class $FanHubCopyWith<$Res>  {
  factory $FanHubCopyWith(FanHub value, $Res Function(FanHub) _then) = _$FanHubCopyWithImpl;
@useResult
$Res call({
 int fanHubId, String subdomain, String hubName, String? description, String? bannerUrl, List<String> highlightImgUrls, String? backgroundUrl, String? themeColor, String? avatarUrl, bool isPrivate, bool requiresApproval, DateTime createdAt, int ownerUserId, String ownerUsername, String ownerDisplayName, List<String> categories, int memberCount
});




}
/// @nodoc
class _$FanHubCopyWithImpl<$Res>
    implements $FanHubCopyWith<$Res> {
  _$FanHubCopyWithImpl(this._self, this._then);

  final FanHub _self;
  final $Res Function(FanHub) _then;

/// Create a copy of FanHub
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fanHubId = null,Object? subdomain = null,Object? hubName = null,Object? description = freezed,Object? bannerUrl = freezed,Object? highlightImgUrls = null,Object? backgroundUrl = freezed,Object? themeColor = freezed,Object? avatarUrl = freezed,Object? isPrivate = null,Object? requiresApproval = null,Object? createdAt = null,Object? ownerUserId = null,Object? ownerUsername = null,Object? ownerDisplayName = null,Object? categories = null,Object? memberCount = null,}) {
  return _then(_self.copyWith(
fanHubId: null == fanHubId ? _self.fanHubId : fanHubId // ignore: cast_nullable_to_non_nullable
as int,subdomain: null == subdomain ? _self.subdomain : subdomain // ignore: cast_nullable_to_non_nullable
as String,hubName: null == hubName ? _self.hubName : hubName // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,bannerUrl: freezed == bannerUrl ? _self.bannerUrl : bannerUrl // ignore: cast_nullable_to_non_nullable
as String?,highlightImgUrls: null == highlightImgUrls ? _self.highlightImgUrls : highlightImgUrls // ignore: cast_nullable_to_non_nullable
as List<String>,backgroundUrl: freezed == backgroundUrl ? _self.backgroundUrl : backgroundUrl // ignore: cast_nullable_to_non_nullable
as String?,themeColor: freezed == themeColor ? _self.themeColor : themeColor // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,isPrivate: null == isPrivate ? _self.isPrivate : isPrivate // ignore: cast_nullable_to_non_nullable
as bool,requiresApproval: null == requiresApproval ? _self.requiresApproval : requiresApproval // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,ownerUserId: null == ownerUserId ? _self.ownerUserId : ownerUserId // ignore: cast_nullable_to_non_nullable
as int,ownerUsername: null == ownerUsername ? _self.ownerUsername : ownerUsername // ignore: cast_nullable_to_non_nullable
as String,ownerDisplayName: null == ownerDisplayName ? _self.ownerDisplayName : ownerDisplayName // ignore: cast_nullable_to_non_nullable
as String,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<String>,memberCount: null == memberCount ? _self.memberCount : memberCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [FanHub].
extension FanHubPatterns on FanHub {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FanHub value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FanHub() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FanHub value)  $default,){
final _that = this;
switch (_that) {
case _FanHub():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FanHub value)?  $default,){
final _that = this;
switch (_that) {
case _FanHub() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int fanHubId,  String subdomain,  String hubName,  String? description,  String? bannerUrl,  List<String> highlightImgUrls,  String? backgroundUrl,  String? themeColor,  String? avatarUrl,  bool isPrivate,  bool requiresApproval,  DateTime createdAt,  int ownerUserId,  String ownerUsername,  String ownerDisplayName,  List<String> categories,  int memberCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FanHub() when $default != null:
return $default(_that.fanHubId,_that.subdomain,_that.hubName,_that.description,_that.bannerUrl,_that.highlightImgUrls,_that.backgroundUrl,_that.themeColor,_that.avatarUrl,_that.isPrivate,_that.requiresApproval,_that.createdAt,_that.ownerUserId,_that.ownerUsername,_that.ownerDisplayName,_that.categories,_that.memberCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int fanHubId,  String subdomain,  String hubName,  String? description,  String? bannerUrl,  List<String> highlightImgUrls,  String? backgroundUrl,  String? themeColor,  String? avatarUrl,  bool isPrivate,  bool requiresApproval,  DateTime createdAt,  int ownerUserId,  String ownerUsername,  String ownerDisplayName,  List<String> categories,  int memberCount)  $default,) {final _that = this;
switch (_that) {
case _FanHub():
return $default(_that.fanHubId,_that.subdomain,_that.hubName,_that.description,_that.bannerUrl,_that.highlightImgUrls,_that.backgroundUrl,_that.themeColor,_that.avatarUrl,_that.isPrivate,_that.requiresApproval,_that.createdAt,_that.ownerUserId,_that.ownerUsername,_that.ownerDisplayName,_that.categories,_that.memberCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int fanHubId,  String subdomain,  String hubName,  String? description,  String? bannerUrl,  List<String> highlightImgUrls,  String? backgroundUrl,  String? themeColor,  String? avatarUrl,  bool isPrivate,  bool requiresApproval,  DateTime createdAt,  int ownerUserId,  String ownerUsername,  String ownerDisplayName,  List<String> categories,  int memberCount)?  $default,) {final _that = this;
switch (_that) {
case _FanHub() when $default != null:
return $default(_that.fanHubId,_that.subdomain,_that.hubName,_that.description,_that.bannerUrl,_that.highlightImgUrls,_that.backgroundUrl,_that.themeColor,_that.avatarUrl,_that.isPrivate,_that.requiresApproval,_that.createdAt,_that.ownerUserId,_that.ownerUsername,_that.ownerDisplayName,_that.categories,_that.memberCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FanHub implements FanHub {
  const _FanHub({required this.fanHubId, required this.subdomain, required this.hubName, this.description, this.bannerUrl, required final  List<String> highlightImgUrls, this.backgroundUrl, this.themeColor, this.avatarUrl, required this.isPrivate, required this.requiresApproval, required this.createdAt, required this.ownerUserId, required this.ownerUsername, required this.ownerDisplayName, required final  List<String> categories, required this.memberCount}): _highlightImgUrls = highlightImgUrls,_categories = categories;
  factory _FanHub.fromJson(Map<String, dynamic> json) => _$FanHubFromJson(json);

@override final  int fanHubId;
@override final  String subdomain;
@override final  String hubName;
@override final  String? description;
@override final  String? bannerUrl;
 final  List<String> _highlightImgUrls;
@override List<String> get highlightImgUrls {
  if (_highlightImgUrls is EqualUnmodifiableListView) return _highlightImgUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_highlightImgUrls);
}

@override final  String? backgroundUrl;
@override final  String? themeColor;
@override final  String? avatarUrl;
@override final  bool isPrivate;
@override final  bool requiresApproval;
@override final  DateTime createdAt;
@override final  int ownerUserId;
@override final  String ownerUsername;
@override final  String ownerDisplayName;
 final  List<String> _categories;
@override List<String> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

@override final  int memberCount;

/// Create a copy of FanHub
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FanHubCopyWith<_FanHub> get copyWith => __$FanHubCopyWithImpl<_FanHub>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FanHubToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FanHub&&(identical(other.fanHubId, fanHubId) || other.fanHubId == fanHubId)&&(identical(other.subdomain, subdomain) || other.subdomain == subdomain)&&(identical(other.hubName, hubName) || other.hubName == hubName)&&(identical(other.description, description) || other.description == description)&&(identical(other.bannerUrl, bannerUrl) || other.bannerUrl == bannerUrl)&&const DeepCollectionEquality().equals(other._highlightImgUrls, _highlightImgUrls)&&(identical(other.backgroundUrl, backgroundUrl) || other.backgroundUrl == backgroundUrl)&&(identical(other.themeColor, themeColor) || other.themeColor == themeColor)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.isPrivate, isPrivate) || other.isPrivate == isPrivate)&&(identical(other.requiresApproval, requiresApproval) || other.requiresApproval == requiresApproval)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.ownerUserId, ownerUserId) || other.ownerUserId == ownerUserId)&&(identical(other.ownerUsername, ownerUsername) || other.ownerUsername == ownerUsername)&&(identical(other.ownerDisplayName, ownerDisplayName) || other.ownerDisplayName == ownerDisplayName)&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.memberCount, memberCount) || other.memberCount == memberCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fanHubId,subdomain,hubName,description,bannerUrl,const DeepCollectionEquality().hash(_highlightImgUrls),backgroundUrl,themeColor,avatarUrl,isPrivate,requiresApproval,createdAt,ownerUserId,ownerUsername,ownerDisplayName,const DeepCollectionEquality().hash(_categories),memberCount);

@override
String toString() {
  return 'FanHub(fanHubId: $fanHubId, subdomain: $subdomain, hubName: $hubName, description: $description, bannerUrl: $bannerUrl, highlightImgUrls: $highlightImgUrls, backgroundUrl: $backgroundUrl, themeColor: $themeColor, avatarUrl: $avatarUrl, isPrivate: $isPrivate, requiresApproval: $requiresApproval, createdAt: $createdAt, ownerUserId: $ownerUserId, ownerUsername: $ownerUsername, ownerDisplayName: $ownerDisplayName, categories: $categories, memberCount: $memberCount)';
}


}

/// @nodoc
abstract mixin class _$FanHubCopyWith<$Res> implements $FanHubCopyWith<$Res> {
  factory _$FanHubCopyWith(_FanHub value, $Res Function(_FanHub) _then) = __$FanHubCopyWithImpl;
@override @useResult
$Res call({
 int fanHubId, String subdomain, String hubName, String? description, String? bannerUrl, List<String> highlightImgUrls, String? backgroundUrl, String? themeColor, String? avatarUrl, bool isPrivate, bool requiresApproval, DateTime createdAt, int ownerUserId, String ownerUsername, String ownerDisplayName, List<String> categories, int memberCount
});




}
/// @nodoc
class __$FanHubCopyWithImpl<$Res>
    implements _$FanHubCopyWith<$Res> {
  __$FanHubCopyWithImpl(this._self, this._then);

  final _FanHub _self;
  final $Res Function(_FanHub) _then;

/// Create a copy of FanHub
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fanHubId = null,Object? subdomain = null,Object? hubName = null,Object? description = freezed,Object? bannerUrl = freezed,Object? highlightImgUrls = null,Object? backgroundUrl = freezed,Object? themeColor = freezed,Object? avatarUrl = freezed,Object? isPrivate = null,Object? requiresApproval = null,Object? createdAt = null,Object? ownerUserId = null,Object? ownerUsername = null,Object? ownerDisplayName = null,Object? categories = null,Object? memberCount = null,}) {
  return _then(_FanHub(
fanHubId: null == fanHubId ? _self.fanHubId : fanHubId // ignore: cast_nullable_to_non_nullable
as int,subdomain: null == subdomain ? _self.subdomain : subdomain // ignore: cast_nullable_to_non_nullable
as String,hubName: null == hubName ? _self.hubName : hubName // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,bannerUrl: freezed == bannerUrl ? _self.bannerUrl : bannerUrl // ignore: cast_nullable_to_non_nullable
as String?,highlightImgUrls: null == highlightImgUrls ? _self._highlightImgUrls : highlightImgUrls // ignore: cast_nullable_to_non_nullable
as List<String>,backgroundUrl: freezed == backgroundUrl ? _self.backgroundUrl : backgroundUrl // ignore: cast_nullable_to_non_nullable
as String?,themeColor: freezed == themeColor ? _self.themeColor : themeColor // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,isPrivate: null == isPrivate ? _self.isPrivate : isPrivate // ignore: cast_nullable_to_non_nullable
as bool,requiresApproval: null == requiresApproval ? _self.requiresApproval : requiresApproval // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,ownerUserId: null == ownerUserId ? _self.ownerUserId : ownerUserId // ignore: cast_nullable_to_non_nullable
as int,ownerUsername: null == ownerUsername ? _self.ownerUsername : ownerUsername // ignore: cast_nullable_to_non_nullable
as String,ownerDisplayName: null == ownerDisplayName ? _self.ownerDisplayName : ownerDisplayName // ignore: cast_nullable_to_non_nullable
as String,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<String>,memberCount: null == memberCount ? _self.memberCount : memberCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$FanHubStrike {

 String get reason; DateTime get createdAt;
/// Create a copy of FanHubStrike
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FanHubStrikeCopyWith<FanHubStrike> get copyWith => _$FanHubStrikeCopyWithImpl<FanHubStrike>(this as FanHubStrike, _$identity);

  /// Serializes this FanHubStrike to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FanHubStrike&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reason,createdAt);

@override
String toString() {
  return 'FanHubStrike(reason: $reason, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $FanHubStrikeCopyWith<$Res>  {
  factory $FanHubStrikeCopyWith(FanHubStrike value, $Res Function(FanHubStrike) _then) = _$FanHubStrikeCopyWithImpl;
@useResult
$Res call({
 String reason, DateTime createdAt
});




}
/// @nodoc
class _$FanHubStrikeCopyWithImpl<$Res>
    implements $FanHubStrikeCopyWith<$Res> {
  _$FanHubStrikeCopyWithImpl(this._self, this._then);

  final FanHubStrike _self;
  final $Res Function(FanHubStrike) _then;

/// Create a copy of FanHubStrike
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reason = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [FanHubStrike].
extension FanHubStrikePatterns on FanHubStrike {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FanHubStrike value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FanHubStrike() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FanHubStrike value)  $default,){
final _that = this;
switch (_that) {
case _FanHubStrike():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FanHubStrike value)?  $default,){
final _that = this;
switch (_that) {
case _FanHubStrike() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String reason,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FanHubStrike() when $default != null:
return $default(_that.reason,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String reason,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _FanHubStrike():
return $default(_that.reason,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String reason,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _FanHubStrike() when $default != null:
return $default(_that.reason,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FanHubStrike implements FanHubStrike {
  const _FanHubStrike({required this.reason, required this.createdAt});
  factory _FanHubStrike.fromJson(Map<String, dynamic> json) => _$FanHubStrikeFromJson(json);

@override final  String reason;
@override final  DateTime createdAt;

/// Create a copy of FanHubStrike
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FanHubStrikeCopyWith<_FanHubStrike> get copyWith => __$FanHubStrikeCopyWithImpl<_FanHubStrike>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FanHubStrikeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FanHubStrike&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reason,createdAt);

@override
String toString() {
  return 'FanHubStrike(reason: $reason, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$FanHubStrikeCopyWith<$Res> implements $FanHubStrikeCopyWith<$Res> {
  factory _$FanHubStrikeCopyWith(_FanHubStrike value, $Res Function(_FanHubStrike) _then) = __$FanHubStrikeCopyWithImpl;
@override @useResult
$Res call({
 String reason, DateTime createdAt
});




}
/// @nodoc
class __$FanHubStrikeCopyWithImpl<$Res>
    implements _$FanHubStrikeCopyWith<$Res> {
  __$FanHubStrikeCopyWithImpl(this._self, this._then);

  final _FanHubStrike _self;
  final $Res Function(_FanHubStrike) _then;

/// Create a copy of FanHubStrike
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? reason = null,Object? createdAt = null,}) {
  return _then(_FanHubStrike(
reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$FanHubAnalytics {

 int get totalPosts; int get totalJoinedMembers; int get totalStrikes; List<Member> get topMembers; List<FanHubStrike>? get strikes;
/// Create a copy of FanHubAnalytics
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FanHubAnalyticsCopyWith<FanHubAnalytics> get copyWith => _$FanHubAnalyticsCopyWithImpl<FanHubAnalytics>(this as FanHubAnalytics, _$identity);

  /// Serializes this FanHubAnalytics to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FanHubAnalytics&&(identical(other.totalPosts, totalPosts) || other.totalPosts == totalPosts)&&(identical(other.totalJoinedMembers, totalJoinedMembers) || other.totalJoinedMembers == totalJoinedMembers)&&(identical(other.totalStrikes, totalStrikes) || other.totalStrikes == totalStrikes)&&const DeepCollectionEquality().equals(other.topMembers, topMembers)&&const DeepCollectionEquality().equals(other.strikes, strikes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalPosts,totalJoinedMembers,totalStrikes,const DeepCollectionEquality().hash(topMembers),const DeepCollectionEquality().hash(strikes));

@override
String toString() {
  return 'FanHubAnalytics(totalPosts: $totalPosts, totalJoinedMembers: $totalJoinedMembers, totalStrikes: $totalStrikes, topMembers: $topMembers, strikes: $strikes)';
}


}

/// @nodoc
abstract mixin class $FanHubAnalyticsCopyWith<$Res>  {
  factory $FanHubAnalyticsCopyWith(FanHubAnalytics value, $Res Function(FanHubAnalytics) _then) = _$FanHubAnalyticsCopyWithImpl;
@useResult
$Res call({
 int totalPosts, int totalJoinedMembers, int totalStrikes, List<Member> topMembers, List<FanHubStrike>? strikes
});




}
/// @nodoc
class _$FanHubAnalyticsCopyWithImpl<$Res>
    implements $FanHubAnalyticsCopyWith<$Res> {
  _$FanHubAnalyticsCopyWithImpl(this._self, this._then);

  final FanHubAnalytics _self;
  final $Res Function(FanHubAnalytics) _then;

/// Create a copy of FanHubAnalytics
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalPosts = null,Object? totalJoinedMembers = null,Object? totalStrikes = null,Object? topMembers = null,Object? strikes = freezed,}) {
  return _then(_self.copyWith(
totalPosts: null == totalPosts ? _self.totalPosts : totalPosts // ignore: cast_nullable_to_non_nullable
as int,totalJoinedMembers: null == totalJoinedMembers ? _self.totalJoinedMembers : totalJoinedMembers // ignore: cast_nullable_to_non_nullable
as int,totalStrikes: null == totalStrikes ? _self.totalStrikes : totalStrikes // ignore: cast_nullable_to_non_nullable
as int,topMembers: null == topMembers ? _self.topMembers : topMembers // ignore: cast_nullable_to_non_nullable
as List<Member>,strikes: freezed == strikes ? _self.strikes : strikes // ignore: cast_nullable_to_non_nullable
as List<FanHubStrike>?,
  ));
}

}


/// Adds pattern-matching-related methods to [FanHubAnalytics].
extension FanHubAnalyticsPatterns on FanHubAnalytics {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FanHubAnalytics value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FanHubAnalytics() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FanHubAnalytics value)  $default,){
final _that = this;
switch (_that) {
case _FanHubAnalytics():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FanHubAnalytics value)?  $default,){
final _that = this;
switch (_that) {
case _FanHubAnalytics() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int totalPosts,  int totalJoinedMembers,  int totalStrikes,  List<Member> topMembers,  List<FanHubStrike>? strikes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FanHubAnalytics() when $default != null:
return $default(_that.totalPosts,_that.totalJoinedMembers,_that.totalStrikes,_that.topMembers,_that.strikes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int totalPosts,  int totalJoinedMembers,  int totalStrikes,  List<Member> topMembers,  List<FanHubStrike>? strikes)  $default,) {final _that = this;
switch (_that) {
case _FanHubAnalytics():
return $default(_that.totalPosts,_that.totalJoinedMembers,_that.totalStrikes,_that.topMembers,_that.strikes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int totalPosts,  int totalJoinedMembers,  int totalStrikes,  List<Member> topMembers,  List<FanHubStrike>? strikes)?  $default,) {final _that = this;
switch (_that) {
case _FanHubAnalytics() when $default != null:
return $default(_that.totalPosts,_that.totalJoinedMembers,_that.totalStrikes,_that.topMembers,_that.strikes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FanHubAnalytics implements FanHubAnalytics {
  const _FanHubAnalytics({required this.totalPosts, required this.totalJoinedMembers, required this.totalStrikes, required final  List<Member> topMembers, required final  List<FanHubStrike>? strikes}): _topMembers = topMembers,_strikes = strikes;
  factory _FanHubAnalytics.fromJson(Map<String, dynamic> json) => _$FanHubAnalyticsFromJson(json);

@override final  int totalPosts;
@override final  int totalJoinedMembers;
@override final  int totalStrikes;
 final  List<Member> _topMembers;
@override List<Member> get topMembers {
  if (_topMembers is EqualUnmodifiableListView) return _topMembers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_topMembers);
}

 final  List<FanHubStrike>? _strikes;
@override List<FanHubStrike>? get strikes {
  final value = _strikes;
  if (value == null) return null;
  if (_strikes is EqualUnmodifiableListView) return _strikes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of FanHubAnalytics
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FanHubAnalyticsCopyWith<_FanHubAnalytics> get copyWith => __$FanHubAnalyticsCopyWithImpl<_FanHubAnalytics>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FanHubAnalyticsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FanHubAnalytics&&(identical(other.totalPosts, totalPosts) || other.totalPosts == totalPosts)&&(identical(other.totalJoinedMembers, totalJoinedMembers) || other.totalJoinedMembers == totalJoinedMembers)&&(identical(other.totalStrikes, totalStrikes) || other.totalStrikes == totalStrikes)&&const DeepCollectionEquality().equals(other._topMembers, _topMembers)&&const DeepCollectionEquality().equals(other._strikes, _strikes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalPosts,totalJoinedMembers,totalStrikes,const DeepCollectionEquality().hash(_topMembers),const DeepCollectionEquality().hash(_strikes));

@override
String toString() {
  return 'FanHubAnalytics(totalPosts: $totalPosts, totalJoinedMembers: $totalJoinedMembers, totalStrikes: $totalStrikes, topMembers: $topMembers, strikes: $strikes)';
}


}

/// @nodoc
abstract mixin class _$FanHubAnalyticsCopyWith<$Res> implements $FanHubAnalyticsCopyWith<$Res> {
  factory _$FanHubAnalyticsCopyWith(_FanHubAnalytics value, $Res Function(_FanHubAnalytics) _then) = __$FanHubAnalyticsCopyWithImpl;
@override @useResult
$Res call({
 int totalPosts, int totalJoinedMembers, int totalStrikes, List<Member> topMembers, List<FanHubStrike>? strikes
});




}
/// @nodoc
class __$FanHubAnalyticsCopyWithImpl<$Res>
    implements _$FanHubAnalyticsCopyWith<$Res> {
  __$FanHubAnalyticsCopyWithImpl(this._self, this._then);

  final _FanHubAnalytics _self;
  final $Res Function(_FanHubAnalytics) _then;

/// Create a copy of FanHubAnalytics
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalPosts = null,Object? totalJoinedMembers = null,Object? totalStrikes = null,Object? topMembers = null,Object? strikes = freezed,}) {
  return _then(_FanHubAnalytics(
totalPosts: null == totalPosts ? _self.totalPosts : totalPosts // ignore: cast_nullable_to_non_nullable
as int,totalJoinedMembers: null == totalJoinedMembers ? _self.totalJoinedMembers : totalJoinedMembers // ignore: cast_nullable_to_non_nullable
as int,totalStrikes: null == totalStrikes ? _self.totalStrikes : totalStrikes // ignore: cast_nullable_to_non_nullable
as int,topMembers: null == topMembers ? _self._topMembers : topMembers // ignore: cast_nullable_to_non_nullable
as List<Member>,strikes: freezed == strikes ? _self._strikes : strikes // ignore: cast_nullable_to_non_nullable
as List<FanHubStrike>?,
  ));
}


}


/// @nodoc
mixin _$FanHubCategory {

 int get hubCategoryId; String get categoryName; int get hubId;
/// Create a copy of FanHubCategory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FanHubCategoryCopyWith<FanHubCategory> get copyWith => _$FanHubCategoryCopyWithImpl<FanHubCategory>(this as FanHubCategory, _$identity);

  /// Serializes this FanHubCategory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FanHubCategory&&(identical(other.hubCategoryId, hubCategoryId) || other.hubCategoryId == hubCategoryId)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.hubId, hubId) || other.hubId == hubId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,hubCategoryId,categoryName,hubId);

@override
String toString() {
  return 'FanHubCategory(hubCategoryId: $hubCategoryId, categoryName: $categoryName, hubId: $hubId)';
}


}

/// @nodoc
abstract mixin class $FanHubCategoryCopyWith<$Res>  {
  factory $FanHubCategoryCopyWith(FanHubCategory value, $Res Function(FanHubCategory) _then) = _$FanHubCategoryCopyWithImpl;
@useResult
$Res call({
 int hubCategoryId, String categoryName, int hubId
});




}
/// @nodoc
class _$FanHubCategoryCopyWithImpl<$Res>
    implements $FanHubCategoryCopyWith<$Res> {
  _$FanHubCategoryCopyWithImpl(this._self, this._then);

  final FanHubCategory _self;
  final $Res Function(FanHubCategory) _then;

/// Create a copy of FanHubCategory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? hubCategoryId = null,Object? categoryName = null,Object? hubId = null,}) {
  return _then(_self.copyWith(
hubCategoryId: null == hubCategoryId ? _self.hubCategoryId : hubCategoryId // ignore: cast_nullable_to_non_nullable
as int,categoryName: null == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String,hubId: null == hubId ? _self.hubId : hubId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [FanHubCategory].
extension FanHubCategoryPatterns on FanHubCategory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FanHubCategory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FanHubCategory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FanHubCategory value)  $default,){
final _that = this;
switch (_that) {
case _FanHubCategory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FanHubCategory value)?  $default,){
final _that = this;
switch (_that) {
case _FanHubCategory() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int hubCategoryId,  String categoryName,  int hubId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FanHubCategory() when $default != null:
return $default(_that.hubCategoryId,_that.categoryName,_that.hubId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int hubCategoryId,  String categoryName,  int hubId)  $default,) {final _that = this;
switch (_that) {
case _FanHubCategory():
return $default(_that.hubCategoryId,_that.categoryName,_that.hubId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int hubCategoryId,  String categoryName,  int hubId)?  $default,) {final _that = this;
switch (_that) {
case _FanHubCategory() when $default != null:
return $default(_that.hubCategoryId,_that.categoryName,_that.hubId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FanHubCategory implements FanHubCategory {
  const _FanHubCategory({required this.hubCategoryId, required this.categoryName, required this.hubId});
  factory _FanHubCategory.fromJson(Map<String, dynamic> json) => _$FanHubCategoryFromJson(json);

@override final  int hubCategoryId;
@override final  String categoryName;
@override final  int hubId;

/// Create a copy of FanHubCategory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FanHubCategoryCopyWith<_FanHubCategory> get copyWith => __$FanHubCategoryCopyWithImpl<_FanHubCategory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FanHubCategoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FanHubCategory&&(identical(other.hubCategoryId, hubCategoryId) || other.hubCategoryId == hubCategoryId)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.hubId, hubId) || other.hubId == hubId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,hubCategoryId,categoryName,hubId);

@override
String toString() {
  return 'FanHubCategory(hubCategoryId: $hubCategoryId, categoryName: $categoryName, hubId: $hubId)';
}


}

/// @nodoc
abstract mixin class _$FanHubCategoryCopyWith<$Res> implements $FanHubCategoryCopyWith<$Res> {
  factory _$FanHubCategoryCopyWith(_FanHubCategory value, $Res Function(_FanHubCategory) _then) = __$FanHubCategoryCopyWithImpl;
@override @useResult
$Res call({
 int hubCategoryId, String categoryName, int hubId
});




}
/// @nodoc
class __$FanHubCategoryCopyWithImpl<$Res>
    implements _$FanHubCategoryCopyWith<$Res> {
  __$FanHubCategoryCopyWithImpl(this._self, this._then);

  final _FanHubCategory _self;
  final $Res Function(_FanHubCategory) _then;

/// Create a copy of FanHubCategory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? hubCategoryId = null,Object? categoryName = null,Object? hubId = null,}) {
  return _then(_FanHubCategory(
hubCategoryId: null == hubCategoryId ? _self.hubCategoryId : hubCategoryId // ignore: cast_nullable_to_non_nullable
as int,categoryName: null == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String,hubId: null == hubId ? _self.hubId : hubId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$CreateFanHubRequest {

 String get hubName; String get subdomain; String get description; String get themeColor; List<String> get category; bool get isPrivate; bool get requiresApproval;
/// Create a copy of CreateFanHubRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateFanHubRequestCopyWith<CreateFanHubRequest> get copyWith => _$CreateFanHubRequestCopyWithImpl<CreateFanHubRequest>(this as CreateFanHubRequest, _$identity);

  /// Serializes this CreateFanHubRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateFanHubRequest&&(identical(other.hubName, hubName) || other.hubName == hubName)&&(identical(other.subdomain, subdomain) || other.subdomain == subdomain)&&(identical(other.description, description) || other.description == description)&&(identical(other.themeColor, themeColor) || other.themeColor == themeColor)&&const DeepCollectionEquality().equals(other.category, category)&&(identical(other.isPrivate, isPrivate) || other.isPrivate == isPrivate)&&(identical(other.requiresApproval, requiresApproval) || other.requiresApproval == requiresApproval));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,hubName,subdomain,description,themeColor,const DeepCollectionEquality().hash(category),isPrivate,requiresApproval);

@override
String toString() {
  return 'CreateFanHubRequest(hubName: $hubName, subdomain: $subdomain, description: $description, themeColor: $themeColor, category: $category, isPrivate: $isPrivate, requiresApproval: $requiresApproval)';
}


}

/// @nodoc
abstract mixin class $CreateFanHubRequestCopyWith<$Res>  {
  factory $CreateFanHubRequestCopyWith(CreateFanHubRequest value, $Res Function(CreateFanHubRequest) _then) = _$CreateFanHubRequestCopyWithImpl;
@useResult
$Res call({
 String hubName, String subdomain, String description, String themeColor, List<String> category, bool isPrivate, bool requiresApproval
});




}
/// @nodoc
class _$CreateFanHubRequestCopyWithImpl<$Res>
    implements $CreateFanHubRequestCopyWith<$Res> {
  _$CreateFanHubRequestCopyWithImpl(this._self, this._then);

  final CreateFanHubRequest _self;
  final $Res Function(CreateFanHubRequest) _then;

/// Create a copy of CreateFanHubRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? hubName = null,Object? subdomain = null,Object? description = null,Object? themeColor = null,Object? category = null,Object? isPrivate = null,Object? requiresApproval = null,}) {
  return _then(_self.copyWith(
hubName: null == hubName ? _self.hubName : hubName // ignore: cast_nullable_to_non_nullable
as String,subdomain: null == subdomain ? _self.subdomain : subdomain // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,themeColor: null == themeColor ? _self.themeColor : themeColor // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as List<String>,isPrivate: null == isPrivate ? _self.isPrivate : isPrivate // ignore: cast_nullable_to_non_nullable
as bool,requiresApproval: null == requiresApproval ? _self.requiresApproval : requiresApproval // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateFanHubRequest].
extension CreateFanHubRequestPatterns on CreateFanHubRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateFanHubRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateFanHubRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateFanHubRequest value)  $default,){
final _that = this;
switch (_that) {
case _CreateFanHubRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateFanHubRequest value)?  $default,){
final _that = this;
switch (_that) {
case _CreateFanHubRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String hubName,  String subdomain,  String description,  String themeColor,  List<String> category,  bool isPrivate,  bool requiresApproval)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateFanHubRequest() when $default != null:
return $default(_that.hubName,_that.subdomain,_that.description,_that.themeColor,_that.category,_that.isPrivate,_that.requiresApproval);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String hubName,  String subdomain,  String description,  String themeColor,  List<String> category,  bool isPrivate,  bool requiresApproval)  $default,) {final _that = this;
switch (_that) {
case _CreateFanHubRequest():
return $default(_that.hubName,_that.subdomain,_that.description,_that.themeColor,_that.category,_that.isPrivate,_that.requiresApproval);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String hubName,  String subdomain,  String description,  String themeColor,  List<String> category,  bool isPrivate,  bool requiresApproval)?  $default,) {final _that = this;
switch (_that) {
case _CreateFanHubRequest() when $default != null:
return $default(_that.hubName,_that.subdomain,_that.description,_that.themeColor,_that.category,_that.isPrivate,_that.requiresApproval);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateFanHubRequest implements CreateFanHubRequest {
  const _CreateFanHubRequest({required this.hubName, required this.subdomain, required this.description, required this.themeColor, required final  List<String> category, required this.isPrivate, required this.requiresApproval}): _category = category;
  factory _CreateFanHubRequest.fromJson(Map<String, dynamic> json) => _$CreateFanHubRequestFromJson(json);

@override final  String hubName;
@override final  String subdomain;
@override final  String description;
@override final  String themeColor;
 final  List<String> _category;
@override List<String> get category {
  if (_category is EqualUnmodifiableListView) return _category;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_category);
}

@override final  bool isPrivate;
@override final  bool requiresApproval;

/// Create a copy of CreateFanHubRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateFanHubRequestCopyWith<_CreateFanHubRequest> get copyWith => __$CreateFanHubRequestCopyWithImpl<_CreateFanHubRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateFanHubRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateFanHubRequest&&(identical(other.hubName, hubName) || other.hubName == hubName)&&(identical(other.subdomain, subdomain) || other.subdomain == subdomain)&&(identical(other.description, description) || other.description == description)&&(identical(other.themeColor, themeColor) || other.themeColor == themeColor)&&const DeepCollectionEquality().equals(other._category, _category)&&(identical(other.isPrivate, isPrivate) || other.isPrivate == isPrivate)&&(identical(other.requiresApproval, requiresApproval) || other.requiresApproval == requiresApproval));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,hubName,subdomain,description,themeColor,const DeepCollectionEquality().hash(_category),isPrivate,requiresApproval);

@override
String toString() {
  return 'CreateFanHubRequest(hubName: $hubName, subdomain: $subdomain, description: $description, themeColor: $themeColor, category: $category, isPrivate: $isPrivate, requiresApproval: $requiresApproval)';
}


}

/// @nodoc
abstract mixin class _$CreateFanHubRequestCopyWith<$Res> implements $CreateFanHubRequestCopyWith<$Res> {
  factory _$CreateFanHubRequestCopyWith(_CreateFanHubRequest value, $Res Function(_CreateFanHubRequest) _then) = __$CreateFanHubRequestCopyWithImpl;
@override @useResult
$Res call({
 String hubName, String subdomain, String description, String themeColor, List<String> category, bool isPrivate, bool requiresApproval
});




}
/// @nodoc
class __$CreateFanHubRequestCopyWithImpl<$Res>
    implements _$CreateFanHubRequestCopyWith<$Res> {
  __$CreateFanHubRequestCopyWithImpl(this._self, this._then);

  final _CreateFanHubRequest _self;
  final $Res Function(_CreateFanHubRequest) _then;

/// Create a copy of CreateFanHubRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? hubName = null,Object? subdomain = null,Object? description = null,Object? themeColor = null,Object? category = null,Object? isPrivate = null,Object? requiresApproval = null,}) {
  return _then(_CreateFanHubRequest(
hubName: null == hubName ? _self.hubName : hubName // ignore: cast_nullable_to_non_nullable
as String,subdomain: null == subdomain ? _self.subdomain : subdomain // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,themeColor: null == themeColor ? _self.themeColor : themeColor // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self._category : category // ignore: cast_nullable_to_non_nullable
as List<String>,isPrivate: null == isPrivate ? _self.isPrivate : isPrivate // ignore: cast_nullable_to_non_nullable
as bool,requiresApproval: null == requiresApproval ? _self.requiresApproval : requiresApproval // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$UpdateFanHubRequest {

 String? get hubName; String? get subdomain; String? get description; String? get themeColor; bool? get isPrivate; bool? get requiresApproval; List<String>? get category;
/// Create a copy of UpdateFanHubRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateFanHubRequestCopyWith<UpdateFanHubRequest> get copyWith => _$UpdateFanHubRequestCopyWithImpl<UpdateFanHubRequest>(this as UpdateFanHubRequest, _$identity);

  /// Serializes this UpdateFanHubRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateFanHubRequest&&(identical(other.hubName, hubName) || other.hubName == hubName)&&(identical(other.subdomain, subdomain) || other.subdomain == subdomain)&&(identical(other.description, description) || other.description == description)&&(identical(other.themeColor, themeColor) || other.themeColor == themeColor)&&(identical(other.isPrivate, isPrivate) || other.isPrivate == isPrivate)&&(identical(other.requiresApproval, requiresApproval) || other.requiresApproval == requiresApproval)&&const DeepCollectionEquality().equals(other.category, category));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,hubName,subdomain,description,themeColor,isPrivate,requiresApproval,const DeepCollectionEquality().hash(category));

@override
String toString() {
  return 'UpdateFanHubRequest(hubName: $hubName, subdomain: $subdomain, description: $description, themeColor: $themeColor, isPrivate: $isPrivate, requiresApproval: $requiresApproval, category: $category)';
}


}

/// @nodoc
abstract mixin class $UpdateFanHubRequestCopyWith<$Res>  {
  factory $UpdateFanHubRequestCopyWith(UpdateFanHubRequest value, $Res Function(UpdateFanHubRequest) _then) = _$UpdateFanHubRequestCopyWithImpl;
@useResult
$Res call({
 String? hubName, String? subdomain, String? description, String? themeColor, bool? isPrivate, bool? requiresApproval, List<String>? category
});




}
/// @nodoc
class _$UpdateFanHubRequestCopyWithImpl<$Res>
    implements $UpdateFanHubRequestCopyWith<$Res> {
  _$UpdateFanHubRequestCopyWithImpl(this._self, this._then);

  final UpdateFanHubRequest _self;
  final $Res Function(UpdateFanHubRequest) _then;

/// Create a copy of UpdateFanHubRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? hubName = freezed,Object? subdomain = freezed,Object? description = freezed,Object? themeColor = freezed,Object? isPrivate = freezed,Object? requiresApproval = freezed,Object? category = freezed,}) {
  return _then(_self.copyWith(
hubName: freezed == hubName ? _self.hubName : hubName // ignore: cast_nullable_to_non_nullable
as String?,subdomain: freezed == subdomain ? _self.subdomain : subdomain // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,themeColor: freezed == themeColor ? _self.themeColor : themeColor // ignore: cast_nullable_to_non_nullable
as String?,isPrivate: freezed == isPrivate ? _self.isPrivate : isPrivate // ignore: cast_nullable_to_non_nullable
as bool?,requiresApproval: freezed == requiresApproval ? _self.requiresApproval : requiresApproval // ignore: cast_nullable_to_non_nullable
as bool?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateFanHubRequest].
extension UpdateFanHubRequestPatterns on UpdateFanHubRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateFanHubRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateFanHubRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateFanHubRequest value)  $default,){
final _that = this;
switch (_that) {
case _UpdateFanHubRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateFanHubRequest value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateFanHubRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? hubName,  String? subdomain,  String? description,  String? themeColor,  bool? isPrivate,  bool? requiresApproval,  List<String>? category)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateFanHubRequest() when $default != null:
return $default(_that.hubName,_that.subdomain,_that.description,_that.themeColor,_that.isPrivate,_that.requiresApproval,_that.category);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? hubName,  String? subdomain,  String? description,  String? themeColor,  bool? isPrivate,  bool? requiresApproval,  List<String>? category)  $default,) {final _that = this;
switch (_that) {
case _UpdateFanHubRequest():
return $default(_that.hubName,_that.subdomain,_that.description,_that.themeColor,_that.isPrivate,_that.requiresApproval,_that.category);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? hubName,  String? subdomain,  String? description,  String? themeColor,  bool? isPrivate,  bool? requiresApproval,  List<String>? category)?  $default,) {final _that = this;
switch (_that) {
case _UpdateFanHubRequest() when $default != null:
return $default(_that.hubName,_that.subdomain,_that.description,_that.themeColor,_that.isPrivate,_that.requiresApproval,_that.category);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateFanHubRequest implements UpdateFanHubRequest {
  const _UpdateFanHubRequest({this.hubName, this.subdomain, this.description, this.themeColor, this.isPrivate, this.requiresApproval, final  List<String>? category}): _category = category;
  factory _UpdateFanHubRequest.fromJson(Map<String, dynamic> json) => _$UpdateFanHubRequestFromJson(json);

@override final  String? hubName;
@override final  String? subdomain;
@override final  String? description;
@override final  String? themeColor;
@override final  bool? isPrivate;
@override final  bool? requiresApproval;
 final  List<String>? _category;
@override List<String>? get category {
  final value = _category;
  if (value == null) return null;
  if (_category is EqualUnmodifiableListView) return _category;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of UpdateFanHubRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateFanHubRequestCopyWith<_UpdateFanHubRequest> get copyWith => __$UpdateFanHubRequestCopyWithImpl<_UpdateFanHubRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateFanHubRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateFanHubRequest&&(identical(other.hubName, hubName) || other.hubName == hubName)&&(identical(other.subdomain, subdomain) || other.subdomain == subdomain)&&(identical(other.description, description) || other.description == description)&&(identical(other.themeColor, themeColor) || other.themeColor == themeColor)&&(identical(other.isPrivate, isPrivate) || other.isPrivate == isPrivate)&&(identical(other.requiresApproval, requiresApproval) || other.requiresApproval == requiresApproval)&&const DeepCollectionEquality().equals(other._category, _category));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,hubName,subdomain,description,themeColor,isPrivate,requiresApproval,const DeepCollectionEquality().hash(_category));

@override
String toString() {
  return 'UpdateFanHubRequest(hubName: $hubName, subdomain: $subdomain, description: $description, themeColor: $themeColor, isPrivate: $isPrivate, requiresApproval: $requiresApproval, category: $category)';
}


}

/// @nodoc
abstract mixin class _$UpdateFanHubRequestCopyWith<$Res> implements $UpdateFanHubRequestCopyWith<$Res> {
  factory _$UpdateFanHubRequestCopyWith(_UpdateFanHubRequest value, $Res Function(_UpdateFanHubRequest) _then) = __$UpdateFanHubRequestCopyWithImpl;
@override @useResult
$Res call({
 String? hubName, String? subdomain, String? description, String? themeColor, bool? isPrivate, bool? requiresApproval, List<String>? category
});




}
/// @nodoc
class __$UpdateFanHubRequestCopyWithImpl<$Res>
    implements _$UpdateFanHubRequestCopyWith<$Res> {
  __$UpdateFanHubRequestCopyWithImpl(this._self, this._then);

  final _UpdateFanHubRequest _self;
  final $Res Function(_UpdateFanHubRequest) _then;

/// Create a copy of UpdateFanHubRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? hubName = freezed,Object? subdomain = freezed,Object? description = freezed,Object? themeColor = freezed,Object? isPrivate = freezed,Object? requiresApproval = freezed,Object? category = freezed,}) {
  return _then(_UpdateFanHubRequest(
hubName: freezed == hubName ? _self.hubName : hubName // ignore: cast_nullable_to_non_nullable
as String?,subdomain: freezed == subdomain ? _self.subdomain : subdomain // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,themeColor: freezed == themeColor ? _self.themeColor : themeColor // ignore: cast_nullable_to_non_nullable
as String?,isPrivate: freezed == isPrivate ? _self.isPrivate : isPrivate // ignore: cast_nullable_to_non_nullable
as bool?,requiresApproval: freezed == requiresApproval ? _self.requiresApproval : requiresApproval // ignore: cast_nullable_to_non_nullable
as bool?,category: freezed == category ? _self._category : category // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}

// dart format on
