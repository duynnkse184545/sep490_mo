// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Notification {

 int get id; NotificationType get type; String get title; String get message; int? get relatedHubId; String? get relatedHubName; int? get relatedPostId; String? get relatedPostTitle; int? get triggeredByUserId; String? get triggeredByUsername; String? get triggeredByAvatarUrl; bool get isRead; DateTime get createdAt;
/// Create a copy of Notification
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationCopyWith<Notification> get copyWith => _$NotificationCopyWithImpl<Notification>(this as Notification, _$identity);

  /// Serializes this Notification to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Notification&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.message, message) || other.message == message)&&(identical(other.relatedHubId, relatedHubId) || other.relatedHubId == relatedHubId)&&(identical(other.relatedHubName, relatedHubName) || other.relatedHubName == relatedHubName)&&(identical(other.relatedPostId, relatedPostId) || other.relatedPostId == relatedPostId)&&(identical(other.relatedPostTitle, relatedPostTitle) || other.relatedPostTitle == relatedPostTitle)&&(identical(other.triggeredByUserId, triggeredByUserId) || other.triggeredByUserId == triggeredByUserId)&&(identical(other.triggeredByUsername, triggeredByUsername) || other.triggeredByUsername == triggeredByUsername)&&(identical(other.triggeredByAvatarUrl, triggeredByAvatarUrl) || other.triggeredByAvatarUrl == triggeredByAvatarUrl)&&(identical(other.isRead, isRead) || other.isRead == isRead)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,title,message,relatedHubId,relatedHubName,relatedPostId,relatedPostTitle,triggeredByUserId,triggeredByUsername,triggeredByAvatarUrl,isRead,createdAt);

@override
String toString() {
  return 'Notification(id: $id, type: $type, title: $title, message: $message, relatedHubId: $relatedHubId, relatedHubName: $relatedHubName, relatedPostId: $relatedPostId, relatedPostTitle: $relatedPostTitle, triggeredByUserId: $triggeredByUserId, triggeredByUsername: $triggeredByUsername, triggeredByAvatarUrl: $triggeredByAvatarUrl, isRead: $isRead, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $NotificationCopyWith<$Res>  {
  factory $NotificationCopyWith(Notification value, $Res Function(Notification) _then) = _$NotificationCopyWithImpl;
@useResult
$Res call({
 int id, NotificationType type, String title, String message, int? relatedHubId, String? relatedHubName, int? relatedPostId, String? relatedPostTitle, int? triggeredByUserId, String? triggeredByUsername, String? triggeredByAvatarUrl, bool isRead, DateTime createdAt
});




}
/// @nodoc
class _$NotificationCopyWithImpl<$Res>
    implements $NotificationCopyWith<$Res> {
  _$NotificationCopyWithImpl(this._self, this._then);

  final Notification _self;
  final $Res Function(Notification) _then;

/// Create a copy of Notification
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? title = null,Object? message = null,Object? relatedHubId = freezed,Object? relatedHubName = freezed,Object? relatedPostId = freezed,Object? relatedPostTitle = freezed,Object? triggeredByUserId = freezed,Object? triggeredByUsername = freezed,Object? triggeredByAvatarUrl = freezed,Object? isRead = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as NotificationType,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,relatedHubId: freezed == relatedHubId ? _self.relatedHubId : relatedHubId // ignore: cast_nullable_to_non_nullable
as int?,relatedHubName: freezed == relatedHubName ? _self.relatedHubName : relatedHubName // ignore: cast_nullable_to_non_nullable
as String?,relatedPostId: freezed == relatedPostId ? _self.relatedPostId : relatedPostId // ignore: cast_nullable_to_non_nullable
as int?,relatedPostTitle: freezed == relatedPostTitle ? _self.relatedPostTitle : relatedPostTitle // ignore: cast_nullable_to_non_nullable
as String?,triggeredByUserId: freezed == triggeredByUserId ? _self.triggeredByUserId : triggeredByUserId // ignore: cast_nullable_to_non_nullable
as int?,triggeredByUsername: freezed == triggeredByUsername ? _self.triggeredByUsername : triggeredByUsername // ignore: cast_nullable_to_non_nullable
as String?,triggeredByAvatarUrl: freezed == triggeredByAvatarUrl ? _self.triggeredByAvatarUrl : triggeredByAvatarUrl // ignore: cast_nullable_to_non_nullable
as String?,isRead: null == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [Notification].
extension NotificationPatterns on Notification {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Notification value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Notification() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Notification value)  $default,){
final _that = this;
switch (_that) {
case _Notification():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Notification value)?  $default,){
final _that = this;
switch (_that) {
case _Notification() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  NotificationType type,  String title,  String message,  int? relatedHubId,  String? relatedHubName,  int? relatedPostId,  String? relatedPostTitle,  int? triggeredByUserId,  String? triggeredByUsername,  String? triggeredByAvatarUrl,  bool isRead,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Notification() when $default != null:
return $default(_that.id,_that.type,_that.title,_that.message,_that.relatedHubId,_that.relatedHubName,_that.relatedPostId,_that.relatedPostTitle,_that.triggeredByUserId,_that.triggeredByUsername,_that.triggeredByAvatarUrl,_that.isRead,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  NotificationType type,  String title,  String message,  int? relatedHubId,  String? relatedHubName,  int? relatedPostId,  String? relatedPostTitle,  int? triggeredByUserId,  String? triggeredByUsername,  String? triggeredByAvatarUrl,  bool isRead,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _Notification():
return $default(_that.id,_that.type,_that.title,_that.message,_that.relatedHubId,_that.relatedHubName,_that.relatedPostId,_that.relatedPostTitle,_that.triggeredByUserId,_that.triggeredByUsername,_that.triggeredByAvatarUrl,_that.isRead,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  NotificationType type,  String title,  String message,  int? relatedHubId,  String? relatedHubName,  int? relatedPostId,  String? relatedPostTitle,  int? triggeredByUserId,  String? triggeredByUsername,  String? triggeredByAvatarUrl,  bool isRead,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _Notification() when $default != null:
return $default(_that.id,_that.type,_that.title,_that.message,_that.relatedHubId,_that.relatedHubName,_that.relatedPostId,_that.relatedPostTitle,_that.triggeredByUserId,_that.triggeredByUsername,_that.triggeredByAvatarUrl,_that.isRead,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Notification implements Notification {
  const _Notification({required this.id, required this.type, required this.title, required this.message, this.relatedHubId, this.relatedHubName, this.relatedPostId, this.relatedPostTitle, this.triggeredByUserId, this.triggeredByUsername, this.triggeredByAvatarUrl, required this.isRead, required this.createdAt});
  factory _Notification.fromJson(Map<String, dynamic> json) => _$NotificationFromJson(json);

@override final  int id;
@override final  NotificationType type;
@override final  String title;
@override final  String message;
@override final  int? relatedHubId;
@override final  String? relatedHubName;
@override final  int? relatedPostId;
@override final  String? relatedPostTitle;
@override final  int? triggeredByUserId;
@override final  String? triggeredByUsername;
@override final  String? triggeredByAvatarUrl;
@override final  bool isRead;
@override final  DateTime createdAt;

/// Create a copy of Notification
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationCopyWith<_Notification> get copyWith => __$NotificationCopyWithImpl<_Notification>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Notification&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.message, message) || other.message == message)&&(identical(other.relatedHubId, relatedHubId) || other.relatedHubId == relatedHubId)&&(identical(other.relatedHubName, relatedHubName) || other.relatedHubName == relatedHubName)&&(identical(other.relatedPostId, relatedPostId) || other.relatedPostId == relatedPostId)&&(identical(other.relatedPostTitle, relatedPostTitle) || other.relatedPostTitle == relatedPostTitle)&&(identical(other.triggeredByUserId, triggeredByUserId) || other.triggeredByUserId == triggeredByUserId)&&(identical(other.triggeredByUsername, triggeredByUsername) || other.triggeredByUsername == triggeredByUsername)&&(identical(other.triggeredByAvatarUrl, triggeredByAvatarUrl) || other.triggeredByAvatarUrl == triggeredByAvatarUrl)&&(identical(other.isRead, isRead) || other.isRead == isRead)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,title,message,relatedHubId,relatedHubName,relatedPostId,relatedPostTitle,triggeredByUserId,triggeredByUsername,triggeredByAvatarUrl,isRead,createdAt);

@override
String toString() {
  return 'Notification(id: $id, type: $type, title: $title, message: $message, relatedHubId: $relatedHubId, relatedHubName: $relatedHubName, relatedPostId: $relatedPostId, relatedPostTitle: $relatedPostTitle, triggeredByUserId: $triggeredByUserId, triggeredByUsername: $triggeredByUsername, triggeredByAvatarUrl: $triggeredByAvatarUrl, isRead: $isRead, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$NotificationCopyWith<$Res> implements $NotificationCopyWith<$Res> {
  factory _$NotificationCopyWith(_Notification value, $Res Function(_Notification) _then) = __$NotificationCopyWithImpl;
@override @useResult
$Res call({
 int id, NotificationType type, String title, String message, int? relatedHubId, String? relatedHubName, int? relatedPostId, String? relatedPostTitle, int? triggeredByUserId, String? triggeredByUsername, String? triggeredByAvatarUrl, bool isRead, DateTime createdAt
});




}
/// @nodoc
class __$NotificationCopyWithImpl<$Res>
    implements _$NotificationCopyWith<$Res> {
  __$NotificationCopyWithImpl(this._self, this._then);

  final _Notification _self;
  final $Res Function(_Notification) _then;

/// Create a copy of Notification
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? title = null,Object? message = null,Object? relatedHubId = freezed,Object? relatedHubName = freezed,Object? relatedPostId = freezed,Object? relatedPostTitle = freezed,Object? triggeredByUserId = freezed,Object? triggeredByUsername = freezed,Object? triggeredByAvatarUrl = freezed,Object? isRead = null,Object? createdAt = null,}) {
  return _then(_Notification(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as NotificationType,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,relatedHubId: freezed == relatedHubId ? _self.relatedHubId : relatedHubId // ignore: cast_nullable_to_non_nullable
as int?,relatedHubName: freezed == relatedHubName ? _self.relatedHubName : relatedHubName // ignore: cast_nullable_to_non_nullable
as String?,relatedPostId: freezed == relatedPostId ? _self.relatedPostId : relatedPostId // ignore: cast_nullable_to_non_nullable
as int?,relatedPostTitle: freezed == relatedPostTitle ? _self.relatedPostTitle : relatedPostTitle // ignore: cast_nullable_to_non_nullable
as String?,triggeredByUserId: freezed == triggeredByUserId ? _self.triggeredByUserId : triggeredByUserId // ignore: cast_nullable_to_non_nullable
as int?,triggeredByUsername: freezed == triggeredByUsername ? _self.triggeredByUsername : triggeredByUsername // ignore: cast_nullable_to_non_nullable
as String?,triggeredByAvatarUrl: freezed == triggeredByAvatarUrl ? _self.triggeredByAvatarUrl : triggeredByAvatarUrl // ignore: cast_nullable_to_non_nullable
as String?,isRead: null == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
