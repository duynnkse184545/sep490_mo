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

 int get id; NotificationType get type; String get title; String get message; int? get relatedHubId; String? get relatedHubName; int? get relatedPostId; String? get relatedPostTitle; int? get triggeredByUserId; String? get triggeredByUsername; String? get triggeredByAvatarUrl; String? get triggeredByFrameUrl; bool get isRead; DateTime get createdAt;
/// Create a copy of Notification
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationCopyWith<Notification> get copyWith => _$NotificationCopyWithImpl<Notification>(this as Notification, _$identity);

  /// Serializes this Notification to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Notification&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.message, message) || other.message == message)&&(identical(other.relatedHubId, relatedHubId) || other.relatedHubId == relatedHubId)&&(identical(other.relatedHubName, relatedHubName) || other.relatedHubName == relatedHubName)&&(identical(other.relatedPostId, relatedPostId) || other.relatedPostId == relatedPostId)&&(identical(other.relatedPostTitle, relatedPostTitle) || other.relatedPostTitle == relatedPostTitle)&&(identical(other.triggeredByUserId, triggeredByUserId) || other.triggeredByUserId == triggeredByUserId)&&(identical(other.triggeredByUsername, triggeredByUsername) || other.triggeredByUsername == triggeredByUsername)&&(identical(other.triggeredByAvatarUrl, triggeredByAvatarUrl) || other.triggeredByAvatarUrl == triggeredByAvatarUrl)&&(identical(other.triggeredByFrameUrl, triggeredByFrameUrl) || other.triggeredByFrameUrl == triggeredByFrameUrl)&&(identical(other.isRead, isRead) || other.isRead == isRead)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,title,message,relatedHubId,relatedHubName,relatedPostId,relatedPostTitle,triggeredByUserId,triggeredByUsername,triggeredByAvatarUrl,triggeredByFrameUrl,isRead,createdAt);

@override
String toString() {
  return 'Notification(id: $id, type: $type, title: $title, message: $message, relatedHubId: $relatedHubId, relatedHubName: $relatedHubName, relatedPostId: $relatedPostId, relatedPostTitle: $relatedPostTitle, triggeredByUserId: $triggeredByUserId, triggeredByUsername: $triggeredByUsername, triggeredByAvatarUrl: $triggeredByAvatarUrl, triggeredByFrameUrl: $triggeredByFrameUrl, isRead: $isRead, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $NotificationCopyWith<$Res>  {
  factory $NotificationCopyWith(Notification value, $Res Function(Notification) _then) = _$NotificationCopyWithImpl;
@useResult
$Res call({
 int id, NotificationType type, String title, String message, int? relatedHubId, String? relatedHubName, int? relatedPostId, String? relatedPostTitle, int? triggeredByUserId, String? triggeredByUsername, String? triggeredByAvatarUrl, String? triggeredByFrameUrl, bool isRead, DateTime createdAt
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? title = null,Object? message = null,Object? relatedHubId = freezed,Object? relatedHubName = freezed,Object? relatedPostId = freezed,Object? relatedPostTitle = freezed,Object? triggeredByUserId = freezed,Object? triggeredByUsername = freezed,Object? triggeredByAvatarUrl = freezed,Object? triggeredByFrameUrl = freezed,Object? isRead = null,Object? createdAt = null,}) {
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
as String?,triggeredByFrameUrl: freezed == triggeredByFrameUrl ? _self.triggeredByFrameUrl : triggeredByFrameUrl // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  NotificationType type,  String title,  String message,  int? relatedHubId,  String? relatedHubName,  int? relatedPostId,  String? relatedPostTitle,  int? triggeredByUserId,  String? triggeredByUsername,  String? triggeredByAvatarUrl,  String? triggeredByFrameUrl,  bool isRead,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Notification() when $default != null:
return $default(_that.id,_that.type,_that.title,_that.message,_that.relatedHubId,_that.relatedHubName,_that.relatedPostId,_that.relatedPostTitle,_that.triggeredByUserId,_that.triggeredByUsername,_that.triggeredByAvatarUrl,_that.triggeredByFrameUrl,_that.isRead,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  NotificationType type,  String title,  String message,  int? relatedHubId,  String? relatedHubName,  int? relatedPostId,  String? relatedPostTitle,  int? triggeredByUserId,  String? triggeredByUsername,  String? triggeredByAvatarUrl,  String? triggeredByFrameUrl,  bool isRead,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _Notification():
return $default(_that.id,_that.type,_that.title,_that.message,_that.relatedHubId,_that.relatedHubName,_that.relatedPostId,_that.relatedPostTitle,_that.triggeredByUserId,_that.triggeredByUsername,_that.triggeredByAvatarUrl,_that.triggeredByFrameUrl,_that.isRead,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  NotificationType type,  String title,  String message,  int? relatedHubId,  String? relatedHubName,  int? relatedPostId,  String? relatedPostTitle,  int? triggeredByUserId,  String? triggeredByUsername,  String? triggeredByAvatarUrl,  String? triggeredByFrameUrl,  bool isRead,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _Notification() when $default != null:
return $default(_that.id,_that.type,_that.title,_that.message,_that.relatedHubId,_that.relatedHubName,_that.relatedPostId,_that.relatedPostTitle,_that.triggeredByUserId,_that.triggeredByUsername,_that.triggeredByAvatarUrl,_that.triggeredByFrameUrl,_that.isRead,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Notification implements Notification {
  const _Notification({required this.id, required this.type, required this.title, required this.message, this.relatedHubId, this.relatedHubName, this.relatedPostId, this.relatedPostTitle, this.triggeredByUserId, this.triggeredByUsername, this.triggeredByAvatarUrl, this.triggeredByFrameUrl, required this.isRead, required this.createdAt});
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
@override final  String? triggeredByFrameUrl;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Notification&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.message, message) || other.message == message)&&(identical(other.relatedHubId, relatedHubId) || other.relatedHubId == relatedHubId)&&(identical(other.relatedHubName, relatedHubName) || other.relatedHubName == relatedHubName)&&(identical(other.relatedPostId, relatedPostId) || other.relatedPostId == relatedPostId)&&(identical(other.relatedPostTitle, relatedPostTitle) || other.relatedPostTitle == relatedPostTitle)&&(identical(other.triggeredByUserId, triggeredByUserId) || other.triggeredByUserId == triggeredByUserId)&&(identical(other.triggeredByUsername, triggeredByUsername) || other.triggeredByUsername == triggeredByUsername)&&(identical(other.triggeredByAvatarUrl, triggeredByAvatarUrl) || other.triggeredByAvatarUrl == triggeredByAvatarUrl)&&(identical(other.triggeredByFrameUrl, triggeredByFrameUrl) || other.triggeredByFrameUrl == triggeredByFrameUrl)&&(identical(other.isRead, isRead) || other.isRead == isRead)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,title,message,relatedHubId,relatedHubName,relatedPostId,relatedPostTitle,triggeredByUserId,triggeredByUsername,triggeredByAvatarUrl,triggeredByFrameUrl,isRead,createdAt);

@override
String toString() {
  return 'Notification(id: $id, type: $type, title: $title, message: $message, relatedHubId: $relatedHubId, relatedHubName: $relatedHubName, relatedPostId: $relatedPostId, relatedPostTitle: $relatedPostTitle, triggeredByUserId: $triggeredByUserId, triggeredByUsername: $triggeredByUsername, triggeredByAvatarUrl: $triggeredByAvatarUrl, triggeredByFrameUrl: $triggeredByFrameUrl, isRead: $isRead, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$NotificationCopyWith<$Res> implements $NotificationCopyWith<$Res> {
  factory _$NotificationCopyWith(_Notification value, $Res Function(_Notification) _then) = __$NotificationCopyWithImpl;
@override @useResult
$Res call({
 int id, NotificationType type, String title, String message, int? relatedHubId, String? relatedHubName, int? relatedPostId, String? relatedPostTitle, int? triggeredByUserId, String? triggeredByUsername, String? triggeredByAvatarUrl, String? triggeredByFrameUrl, bool isRead, DateTime createdAt
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? title = null,Object? message = null,Object? relatedHubId = freezed,Object? relatedHubName = freezed,Object? relatedPostId = freezed,Object? relatedPostTitle = freezed,Object? triggeredByUserId = freezed,Object? triggeredByUsername = freezed,Object? triggeredByAvatarUrl = freezed,Object? triggeredByFrameUrl = freezed,Object? isRead = null,Object? createdAt = null,}) {
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
as String?,triggeredByFrameUrl: freezed == triggeredByFrameUrl ? _self.triggeredByFrameUrl : triggeredByFrameUrl // ignore: cast_nullable_to_non_nullable
as String?,isRead: null == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$StreamStatus {

 String get status; int get activeConnections;
/// Create a copy of StreamStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StreamStatusCopyWith<StreamStatus> get copyWith => _$StreamStatusCopyWithImpl<StreamStatus>(this as StreamStatus, _$identity);

  /// Serializes this StreamStatus to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StreamStatus&&(identical(other.status, status) || other.status == status)&&(identical(other.activeConnections, activeConnections) || other.activeConnections == activeConnections));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,activeConnections);

@override
String toString() {
  return 'StreamStatus(status: $status, activeConnections: $activeConnections)';
}


}

/// @nodoc
abstract mixin class $StreamStatusCopyWith<$Res>  {
  factory $StreamStatusCopyWith(StreamStatus value, $Res Function(StreamStatus) _then) = _$StreamStatusCopyWithImpl;
@useResult
$Res call({
 String status, int activeConnections
});




}
/// @nodoc
class _$StreamStatusCopyWithImpl<$Res>
    implements $StreamStatusCopyWith<$Res> {
  _$StreamStatusCopyWithImpl(this._self, this._then);

  final StreamStatus _self;
  final $Res Function(StreamStatus) _then;

/// Create a copy of StreamStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? activeConnections = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,activeConnections: null == activeConnections ? _self.activeConnections : activeConnections // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [StreamStatus].
extension StreamStatusPatterns on StreamStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StreamStatus value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StreamStatus() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StreamStatus value)  $default,){
final _that = this;
switch (_that) {
case _StreamStatus():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StreamStatus value)?  $default,){
final _that = this;
switch (_that) {
case _StreamStatus() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String status,  int activeConnections)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StreamStatus() when $default != null:
return $default(_that.status,_that.activeConnections);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String status,  int activeConnections)  $default,) {final _that = this;
switch (_that) {
case _StreamStatus():
return $default(_that.status,_that.activeConnections);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String status,  int activeConnections)?  $default,) {final _that = this;
switch (_that) {
case _StreamStatus() when $default != null:
return $default(_that.status,_that.activeConnections);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StreamStatus implements StreamStatus {
  const _StreamStatus({required this.status, required this.activeConnections});
  factory _StreamStatus.fromJson(Map<String, dynamic> json) => _$StreamStatusFromJson(json);

@override final  String status;
@override final  int activeConnections;

/// Create a copy of StreamStatus
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StreamStatusCopyWith<_StreamStatus> get copyWith => __$StreamStatusCopyWithImpl<_StreamStatus>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StreamStatusToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StreamStatus&&(identical(other.status, status) || other.status == status)&&(identical(other.activeConnections, activeConnections) || other.activeConnections == activeConnections));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,activeConnections);

@override
String toString() {
  return 'StreamStatus(status: $status, activeConnections: $activeConnections)';
}


}

/// @nodoc
abstract mixin class _$StreamStatusCopyWith<$Res> implements $StreamStatusCopyWith<$Res> {
  factory _$StreamStatusCopyWith(_StreamStatus value, $Res Function(_StreamStatus) _then) = __$StreamStatusCopyWithImpl;
@override @useResult
$Res call({
 String status, int activeConnections
});




}
/// @nodoc
class __$StreamStatusCopyWithImpl<$Res>
    implements _$StreamStatusCopyWith<$Res> {
  __$StreamStatusCopyWithImpl(this._self, this._then);

  final _StreamStatus _self;
  final $Res Function(_StreamStatus) _then;

/// Create a copy of StreamStatus
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? activeConnections = null,}) {
  return _then(_StreamStatus(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,activeConnections: null == activeConnections ? _self.activeConnections : activeConnections // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
