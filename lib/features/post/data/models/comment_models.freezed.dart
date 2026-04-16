// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Comment {

 int get commentId; int get postId; int get userId; String get username; String get displayName; String? get avatarUrl; int get memberId; String get content; CommentStatus get status; int? get parentCommentId; DateTime get createdAt; int get likeCount; bool get isLikedByCurrentUser; bool get hasChildren; int get giftCount;
/// Create a copy of Comment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommentCopyWith<Comment> get copyWith => _$CommentCopyWithImpl<Comment>(this as Comment, _$identity);

  /// Serializes this Comment to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Comment&&(identical(other.commentId, commentId) || other.commentId == commentId)&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.username, username) || other.username == username)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.memberId, memberId) || other.memberId == memberId)&&(identical(other.content, content) || other.content == content)&&(identical(other.status, status) || other.status == status)&&(identical(other.parentCommentId, parentCommentId) || other.parentCommentId == parentCommentId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.likeCount, likeCount) || other.likeCount == likeCount)&&(identical(other.isLikedByCurrentUser, isLikedByCurrentUser) || other.isLikedByCurrentUser == isLikedByCurrentUser)&&(identical(other.hasChildren, hasChildren) || other.hasChildren == hasChildren)&&(identical(other.giftCount, giftCount) || other.giftCount == giftCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,commentId,postId,userId,username,displayName,avatarUrl,memberId,content,status,parentCommentId,createdAt,likeCount,isLikedByCurrentUser,hasChildren,giftCount);

@override
String toString() {
  return 'Comment(commentId: $commentId, postId: $postId, userId: $userId, username: $username, displayName: $displayName, avatarUrl: $avatarUrl, memberId: $memberId, content: $content, status: $status, parentCommentId: $parentCommentId, createdAt: $createdAt, likeCount: $likeCount, isLikedByCurrentUser: $isLikedByCurrentUser, hasChildren: $hasChildren, giftCount: $giftCount)';
}


}

/// @nodoc
abstract mixin class $CommentCopyWith<$Res>  {
  factory $CommentCopyWith(Comment value, $Res Function(Comment) _then) = _$CommentCopyWithImpl;
@useResult
$Res call({
 int commentId, int postId, int userId, String username, String displayName, String? avatarUrl, int memberId, String content, CommentStatus status, int? parentCommentId, DateTime createdAt, int likeCount, bool isLikedByCurrentUser, bool hasChildren, int giftCount
});




}
/// @nodoc
class _$CommentCopyWithImpl<$Res>
    implements $CommentCopyWith<$Res> {
  _$CommentCopyWithImpl(this._self, this._then);

  final Comment _self;
  final $Res Function(Comment) _then;

/// Create a copy of Comment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? commentId = null,Object? postId = null,Object? userId = null,Object? username = null,Object? displayName = null,Object? avatarUrl = freezed,Object? memberId = null,Object? content = null,Object? status = null,Object? parentCommentId = freezed,Object? createdAt = null,Object? likeCount = null,Object? isLikedByCurrentUser = null,Object? hasChildren = null,Object? giftCount = null,}) {
  return _then(_self.copyWith(
commentId: null == commentId ? _self.commentId : commentId // ignore: cast_nullable_to_non_nullable
as int,postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,memberId: null == memberId ? _self.memberId : memberId // ignore: cast_nullable_to_non_nullable
as int,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CommentStatus,parentCommentId: freezed == parentCommentId ? _self.parentCommentId : parentCommentId // ignore: cast_nullable_to_non_nullable
as int?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,likeCount: null == likeCount ? _self.likeCount : likeCount // ignore: cast_nullable_to_non_nullable
as int,isLikedByCurrentUser: null == isLikedByCurrentUser ? _self.isLikedByCurrentUser : isLikedByCurrentUser // ignore: cast_nullable_to_non_nullable
as bool,hasChildren: null == hasChildren ? _self.hasChildren : hasChildren // ignore: cast_nullable_to_non_nullable
as bool,giftCount: null == giftCount ? _self.giftCount : giftCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Comment].
extension CommentPatterns on Comment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Comment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Comment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Comment value)  $default,){
final _that = this;
switch (_that) {
case _Comment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Comment value)?  $default,){
final _that = this;
switch (_that) {
case _Comment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int commentId,  int postId,  int userId,  String username,  String displayName,  String? avatarUrl,  int memberId,  String content,  CommentStatus status,  int? parentCommentId,  DateTime createdAt,  int likeCount,  bool isLikedByCurrentUser,  bool hasChildren,  int giftCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Comment() when $default != null:
return $default(_that.commentId,_that.postId,_that.userId,_that.username,_that.displayName,_that.avatarUrl,_that.memberId,_that.content,_that.status,_that.parentCommentId,_that.createdAt,_that.likeCount,_that.isLikedByCurrentUser,_that.hasChildren,_that.giftCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int commentId,  int postId,  int userId,  String username,  String displayName,  String? avatarUrl,  int memberId,  String content,  CommentStatus status,  int? parentCommentId,  DateTime createdAt,  int likeCount,  bool isLikedByCurrentUser,  bool hasChildren,  int giftCount)  $default,) {final _that = this;
switch (_that) {
case _Comment():
return $default(_that.commentId,_that.postId,_that.userId,_that.username,_that.displayName,_that.avatarUrl,_that.memberId,_that.content,_that.status,_that.parentCommentId,_that.createdAt,_that.likeCount,_that.isLikedByCurrentUser,_that.hasChildren,_that.giftCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int commentId,  int postId,  int userId,  String username,  String displayName,  String? avatarUrl,  int memberId,  String content,  CommentStatus status,  int? parentCommentId,  DateTime createdAt,  int likeCount,  bool isLikedByCurrentUser,  bool hasChildren,  int giftCount)?  $default,) {final _that = this;
switch (_that) {
case _Comment() when $default != null:
return $default(_that.commentId,_that.postId,_that.userId,_that.username,_that.displayName,_that.avatarUrl,_that.memberId,_that.content,_that.status,_that.parentCommentId,_that.createdAt,_that.likeCount,_that.isLikedByCurrentUser,_that.hasChildren,_that.giftCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Comment implements Comment {
  const _Comment({required this.commentId, required this.postId, required this.userId, required this.username, required this.displayName, this.avatarUrl, required this.memberId, required this.content, required this.status, this.parentCommentId, required this.createdAt, this.likeCount = 0, this.isLikedByCurrentUser = false, this.hasChildren = false, this.giftCount = 0});
  factory _Comment.fromJson(Map<String, dynamic> json) => _$CommentFromJson(json);

@override final  int commentId;
@override final  int postId;
@override final  int userId;
@override final  String username;
@override final  String displayName;
@override final  String? avatarUrl;
@override final  int memberId;
@override final  String content;
@override final  CommentStatus status;
@override final  int? parentCommentId;
@override final  DateTime createdAt;
@override@JsonKey() final  int likeCount;
@override@JsonKey() final  bool isLikedByCurrentUser;
@override@JsonKey() final  bool hasChildren;
@override@JsonKey() final  int giftCount;

/// Create a copy of Comment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommentCopyWith<_Comment> get copyWith => __$CommentCopyWithImpl<_Comment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CommentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Comment&&(identical(other.commentId, commentId) || other.commentId == commentId)&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.username, username) || other.username == username)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.memberId, memberId) || other.memberId == memberId)&&(identical(other.content, content) || other.content == content)&&(identical(other.status, status) || other.status == status)&&(identical(other.parentCommentId, parentCommentId) || other.parentCommentId == parentCommentId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.likeCount, likeCount) || other.likeCount == likeCount)&&(identical(other.isLikedByCurrentUser, isLikedByCurrentUser) || other.isLikedByCurrentUser == isLikedByCurrentUser)&&(identical(other.hasChildren, hasChildren) || other.hasChildren == hasChildren)&&(identical(other.giftCount, giftCount) || other.giftCount == giftCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,commentId,postId,userId,username,displayName,avatarUrl,memberId,content,status,parentCommentId,createdAt,likeCount,isLikedByCurrentUser,hasChildren,giftCount);

@override
String toString() {
  return 'Comment(commentId: $commentId, postId: $postId, userId: $userId, username: $username, displayName: $displayName, avatarUrl: $avatarUrl, memberId: $memberId, content: $content, status: $status, parentCommentId: $parentCommentId, createdAt: $createdAt, likeCount: $likeCount, isLikedByCurrentUser: $isLikedByCurrentUser, hasChildren: $hasChildren, giftCount: $giftCount)';
}


}

/// @nodoc
abstract mixin class _$CommentCopyWith<$Res> implements $CommentCopyWith<$Res> {
  factory _$CommentCopyWith(_Comment value, $Res Function(_Comment) _then) = __$CommentCopyWithImpl;
@override @useResult
$Res call({
 int commentId, int postId, int userId, String username, String displayName, String? avatarUrl, int memberId, String content, CommentStatus status, int? parentCommentId, DateTime createdAt, int likeCount, bool isLikedByCurrentUser, bool hasChildren, int giftCount
});




}
/// @nodoc
class __$CommentCopyWithImpl<$Res>
    implements _$CommentCopyWith<$Res> {
  __$CommentCopyWithImpl(this._self, this._then);

  final _Comment _self;
  final $Res Function(_Comment) _then;

/// Create a copy of Comment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? commentId = null,Object? postId = null,Object? userId = null,Object? username = null,Object? displayName = null,Object? avatarUrl = freezed,Object? memberId = null,Object? content = null,Object? status = null,Object? parentCommentId = freezed,Object? createdAt = null,Object? likeCount = null,Object? isLikedByCurrentUser = null,Object? hasChildren = null,Object? giftCount = null,}) {
  return _then(_Comment(
commentId: null == commentId ? _self.commentId : commentId // ignore: cast_nullable_to_non_nullable
as int,postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,memberId: null == memberId ? _self.memberId : memberId // ignore: cast_nullable_to_non_nullable
as int,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CommentStatus,parentCommentId: freezed == parentCommentId ? _self.parentCommentId : parentCommentId // ignore: cast_nullable_to_non_nullable
as int?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,likeCount: null == likeCount ? _self.likeCount : likeCount // ignore: cast_nullable_to_non_nullable
as int,isLikedByCurrentUser: null == isLikedByCurrentUser ? _self.isLikedByCurrentUser : isLikedByCurrentUser // ignore: cast_nullable_to_non_nullable
as bool,hasChildren: null == hasChildren ? _self.hasChildren : hasChildren // ignore: cast_nullable_to_non_nullable
as bool,giftCount: null == giftCount ? _self.giftCount : giftCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$CommentRequest {

 int get postId; String get content; int? get parentCommentId;
/// Create a copy of CommentRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommentRequestCopyWith<CommentRequest> get copyWith => _$CommentRequestCopyWithImpl<CommentRequest>(this as CommentRequest, _$identity);

  /// Serializes this CommentRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommentRequest&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.content, content) || other.content == content)&&(identical(other.parentCommentId, parentCommentId) || other.parentCommentId == parentCommentId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,postId,content,parentCommentId);

@override
String toString() {
  return 'CommentRequest(postId: $postId, content: $content, parentCommentId: $parentCommentId)';
}


}

/// @nodoc
abstract mixin class $CommentRequestCopyWith<$Res>  {
  factory $CommentRequestCopyWith(CommentRequest value, $Res Function(CommentRequest) _then) = _$CommentRequestCopyWithImpl;
@useResult
$Res call({
 int postId, String content, int? parentCommentId
});




}
/// @nodoc
class _$CommentRequestCopyWithImpl<$Res>
    implements $CommentRequestCopyWith<$Res> {
  _$CommentRequestCopyWithImpl(this._self, this._then);

  final CommentRequest _self;
  final $Res Function(CommentRequest) _then;

/// Create a copy of CommentRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? postId = null,Object? content = null,Object? parentCommentId = freezed,}) {
  return _then(_self.copyWith(
postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as int,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,parentCommentId: freezed == parentCommentId ? _self.parentCommentId : parentCommentId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [CommentRequest].
extension CommentRequestPatterns on CommentRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CommentRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CommentRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CommentRequest value)  $default,){
final _that = this;
switch (_that) {
case _CommentRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CommentRequest value)?  $default,){
final _that = this;
switch (_that) {
case _CommentRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int postId,  String content,  int? parentCommentId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CommentRequest() when $default != null:
return $default(_that.postId,_that.content,_that.parentCommentId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int postId,  String content,  int? parentCommentId)  $default,) {final _that = this;
switch (_that) {
case _CommentRequest():
return $default(_that.postId,_that.content,_that.parentCommentId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int postId,  String content,  int? parentCommentId)?  $default,) {final _that = this;
switch (_that) {
case _CommentRequest() when $default != null:
return $default(_that.postId,_that.content,_that.parentCommentId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CommentRequest implements CommentRequest {
  const _CommentRequest({required this.postId, required this.content, this.parentCommentId});
  factory _CommentRequest.fromJson(Map<String, dynamic> json) => _$CommentRequestFromJson(json);

@override final  int postId;
@override final  String content;
@override final  int? parentCommentId;

/// Create a copy of CommentRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommentRequestCopyWith<_CommentRequest> get copyWith => __$CommentRequestCopyWithImpl<_CommentRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CommentRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommentRequest&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.content, content) || other.content == content)&&(identical(other.parentCommentId, parentCommentId) || other.parentCommentId == parentCommentId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,postId,content,parentCommentId);

@override
String toString() {
  return 'CommentRequest(postId: $postId, content: $content, parentCommentId: $parentCommentId)';
}


}

/// @nodoc
abstract mixin class _$CommentRequestCopyWith<$Res> implements $CommentRequestCopyWith<$Res> {
  factory _$CommentRequestCopyWith(_CommentRequest value, $Res Function(_CommentRequest) _then) = __$CommentRequestCopyWithImpl;
@override @useResult
$Res call({
 int postId, String content, int? parentCommentId
});




}
/// @nodoc
class __$CommentRequestCopyWithImpl<$Res>
    implements _$CommentRequestCopyWith<$Res> {
  __$CommentRequestCopyWithImpl(this._self, this._then);

  final _CommentRequest _self;
  final $Res Function(_CommentRequest) _then;

/// Create a copy of CommentRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? postId = null,Object? content = null,Object? parentCommentId = freezed,}) {
  return _then(_CommentRequest(
postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as int,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,parentCommentId: freezed == parentCommentId ? _self.parentCommentId : parentCommentId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
