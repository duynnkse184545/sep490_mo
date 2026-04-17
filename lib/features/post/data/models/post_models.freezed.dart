// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VoteOption {

 int get id; String get optionText;
/// Create a copy of VoteOption
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VoteOptionCopyWith<VoteOption> get copyWith => _$VoteOptionCopyWithImpl<VoteOption>(this as VoteOption, _$identity);

  /// Serializes this VoteOption to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VoteOption&&(identical(other.id, id) || other.id == id)&&(identical(other.optionText, optionText) || other.optionText == optionText));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,optionText);

@override
String toString() {
  return 'VoteOption(id: $id, optionText: $optionText)';
}


}

/// @nodoc
abstract mixin class $VoteOptionCopyWith<$Res>  {
  factory $VoteOptionCopyWith(VoteOption value, $Res Function(VoteOption) _then) = _$VoteOptionCopyWithImpl;
@useResult
$Res call({
 int id, String optionText
});




}
/// @nodoc
class _$VoteOptionCopyWithImpl<$Res>
    implements $VoteOptionCopyWith<$Res> {
  _$VoteOptionCopyWithImpl(this._self, this._then);

  final VoteOption _self;
  final $Res Function(VoteOption) _then;

/// Create a copy of VoteOption
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? optionText = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,optionText: null == optionText ? _self.optionText : optionText // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [VoteOption].
extension VoteOptionPatterns on VoteOption {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VoteOption value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VoteOption() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VoteOption value)  $default,){
final _that = this;
switch (_that) {
case _VoteOption():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VoteOption value)?  $default,){
final _that = this;
switch (_that) {
case _VoteOption() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String optionText)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VoteOption() when $default != null:
return $default(_that.id,_that.optionText);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String optionText)  $default,) {final _that = this;
switch (_that) {
case _VoteOption():
return $default(_that.id,_that.optionText);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String optionText)?  $default,) {final _that = this;
switch (_that) {
case _VoteOption() when $default != null:
return $default(_that.id,_that.optionText);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VoteOption implements VoteOption {
  const _VoteOption({required this.id, required this.optionText});
  factory _VoteOption.fromJson(Map<String, dynamic> json) => _$VoteOptionFromJson(json);

@override final  int id;
@override final  String optionText;

/// Create a copy of VoteOption
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VoteOptionCopyWith<_VoteOption> get copyWith => __$VoteOptionCopyWithImpl<_VoteOption>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VoteOptionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VoteOption&&(identical(other.id, id) || other.id == id)&&(identical(other.optionText, optionText) || other.optionText == optionText));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,optionText);

@override
String toString() {
  return 'VoteOption(id: $id, optionText: $optionText)';
}


}

/// @nodoc
abstract mixin class _$VoteOptionCopyWith<$Res> implements $VoteOptionCopyWith<$Res> {
  factory _$VoteOptionCopyWith(_VoteOption value, $Res Function(_VoteOption) _then) = __$VoteOptionCopyWithImpl;
@override @useResult
$Res call({
 int id, String optionText
});




}
/// @nodoc
class __$VoteOptionCopyWithImpl<$Res>
    implements _$VoteOptionCopyWith<$Res> {
  __$VoteOptionCopyWithImpl(this._self, this._then);

  final _VoteOption _self;
  final $Res Function(_VoteOption) _then;

/// Create a copy of VoteOption
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? optionText = null,}) {
  return _then(_VoteOption(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,optionText: null == optionText ? _self.optionText : optionText // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$Media {

 int get mediaId; String get mediaUrl; AiStatus get aiValidationStatus; String? get aiValidationComment;
/// Create a copy of Media
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MediaCopyWith<Media> get copyWith => _$MediaCopyWithImpl<Media>(this as Media, _$identity);

  /// Serializes this Media to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Media&&(identical(other.mediaId, mediaId) || other.mediaId == mediaId)&&(identical(other.mediaUrl, mediaUrl) || other.mediaUrl == mediaUrl)&&(identical(other.aiValidationStatus, aiValidationStatus) || other.aiValidationStatus == aiValidationStatus)&&(identical(other.aiValidationComment, aiValidationComment) || other.aiValidationComment == aiValidationComment));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mediaId,mediaUrl,aiValidationStatus,aiValidationComment);

@override
String toString() {
  return 'Media(mediaId: $mediaId, mediaUrl: $mediaUrl, aiValidationStatus: $aiValidationStatus, aiValidationComment: $aiValidationComment)';
}


}

/// @nodoc
abstract mixin class $MediaCopyWith<$Res>  {
  factory $MediaCopyWith(Media value, $Res Function(Media) _then) = _$MediaCopyWithImpl;
@useResult
$Res call({
 int mediaId, String mediaUrl, AiStatus aiValidationStatus, String? aiValidationComment
});




}
/// @nodoc
class _$MediaCopyWithImpl<$Res>
    implements $MediaCopyWith<$Res> {
  _$MediaCopyWithImpl(this._self, this._then);

  final Media _self;
  final $Res Function(Media) _then;

/// Create a copy of Media
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mediaId = null,Object? mediaUrl = null,Object? aiValidationStatus = null,Object? aiValidationComment = freezed,}) {
  return _then(_self.copyWith(
mediaId: null == mediaId ? _self.mediaId : mediaId // ignore: cast_nullable_to_non_nullable
as int,mediaUrl: null == mediaUrl ? _self.mediaUrl : mediaUrl // ignore: cast_nullable_to_non_nullable
as String,aiValidationStatus: null == aiValidationStatus ? _self.aiValidationStatus : aiValidationStatus // ignore: cast_nullable_to_non_nullable
as AiStatus,aiValidationComment: freezed == aiValidationComment ? _self.aiValidationComment : aiValidationComment // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Media].
extension MediaPatterns on Media {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Media value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Media() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Media value)  $default,){
final _that = this;
switch (_that) {
case _Media():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Media value)?  $default,){
final _that = this;
switch (_that) {
case _Media() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int mediaId,  String mediaUrl,  AiStatus aiValidationStatus,  String? aiValidationComment)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Media() when $default != null:
return $default(_that.mediaId,_that.mediaUrl,_that.aiValidationStatus,_that.aiValidationComment);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int mediaId,  String mediaUrl,  AiStatus aiValidationStatus,  String? aiValidationComment)  $default,) {final _that = this;
switch (_that) {
case _Media():
return $default(_that.mediaId,_that.mediaUrl,_that.aiValidationStatus,_that.aiValidationComment);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int mediaId,  String mediaUrl,  AiStatus aiValidationStatus,  String? aiValidationComment)?  $default,) {final _that = this;
switch (_that) {
case _Media() when $default != null:
return $default(_that.mediaId,_that.mediaUrl,_that.aiValidationStatus,_that.aiValidationComment);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Media implements Media {
  const _Media({required this.mediaId, required this.mediaUrl, required this.aiValidationStatus, this.aiValidationComment});
  factory _Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);

@override final  int mediaId;
@override final  String mediaUrl;
@override final  AiStatus aiValidationStatus;
@override final  String? aiValidationComment;

/// Create a copy of Media
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MediaCopyWith<_Media> get copyWith => __$MediaCopyWithImpl<_Media>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MediaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Media&&(identical(other.mediaId, mediaId) || other.mediaId == mediaId)&&(identical(other.mediaUrl, mediaUrl) || other.mediaUrl == mediaUrl)&&(identical(other.aiValidationStatus, aiValidationStatus) || other.aiValidationStatus == aiValidationStatus)&&(identical(other.aiValidationComment, aiValidationComment) || other.aiValidationComment == aiValidationComment));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mediaId,mediaUrl,aiValidationStatus,aiValidationComment);

@override
String toString() {
  return 'Media(mediaId: $mediaId, mediaUrl: $mediaUrl, aiValidationStatus: $aiValidationStatus, aiValidationComment: $aiValidationComment)';
}


}

/// @nodoc
abstract mixin class _$MediaCopyWith<$Res> implements $MediaCopyWith<$Res> {
  factory _$MediaCopyWith(_Media value, $Res Function(_Media) _then) = __$MediaCopyWithImpl;
@override @useResult
$Res call({
 int mediaId, String mediaUrl, AiStatus aiValidationStatus, String? aiValidationComment
});




}
/// @nodoc
class __$MediaCopyWithImpl<$Res>
    implements _$MediaCopyWith<$Res> {
  __$MediaCopyWithImpl(this._self, this._then);

  final _Media _self;
  final $Res Function(_Media) _then;

/// Create a copy of Media
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mediaId = null,Object? mediaUrl = null,Object? aiValidationStatus = null,Object? aiValidationComment = freezed,}) {
  return _then(_Media(
mediaId: null == mediaId ? _self.mediaId : mediaId // ignore: cast_nullable_to_non_nullable
as int,mediaUrl: null == mediaUrl ? _self.mediaUrl : mediaUrl // ignore: cast_nullable_to_non_nullable
as String,aiValidationStatus: null == aiValidationStatus ? _self.aiValidationStatus : aiValidationStatus // ignore: cast_nullable_to_non_nullable
as AiStatus,aiValidationComment: freezed == aiValidationComment ? _self.aiValidationComment : aiValidationComment // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Post {

 int get postId; int get fanHubId; String get fanHubName; String get fanHubSubdomain; int get authorId; String get authorUsername; String get authorDisplayName; String? get authorAvatarUrl; PostType get postType; String? get title; String get content; PostStatus get status; bool get isPinned; List<String> get mediaUrls; List<String> get hashtags; List<VoteOption>? get voteOptions; Map<String, int>? get voteCounts; int? get totalVotes; int? get userVotedOptionId; DateTime get createdAt; DateTime? get updatedAt; int get likeCount; bool get isLikedByCurrentUser;
/// Create a copy of Post
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostCopyWith<Post> get copyWith => _$PostCopyWithImpl<Post>(this as Post, _$identity);

  /// Serializes this Post to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Post&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.fanHubId, fanHubId) || other.fanHubId == fanHubId)&&(identical(other.fanHubName, fanHubName) || other.fanHubName == fanHubName)&&(identical(other.fanHubSubdomain, fanHubSubdomain) || other.fanHubSubdomain == fanHubSubdomain)&&(identical(other.authorId, authorId) || other.authorId == authorId)&&(identical(other.authorUsername, authorUsername) || other.authorUsername == authorUsername)&&(identical(other.authorDisplayName, authorDisplayName) || other.authorDisplayName == authorDisplayName)&&(identical(other.authorAvatarUrl, authorAvatarUrl) || other.authorAvatarUrl == authorAvatarUrl)&&(identical(other.postType, postType) || other.postType == postType)&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&(identical(other.status, status) || other.status == status)&&(identical(other.isPinned, isPinned) || other.isPinned == isPinned)&&const DeepCollectionEquality().equals(other.mediaUrls, mediaUrls)&&const DeepCollectionEquality().equals(other.hashtags, hashtags)&&const DeepCollectionEquality().equals(other.voteOptions, voteOptions)&&const DeepCollectionEquality().equals(other.voteCounts, voteCounts)&&(identical(other.totalVotes, totalVotes) || other.totalVotes == totalVotes)&&(identical(other.userVotedOptionId, userVotedOptionId) || other.userVotedOptionId == userVotedOptionId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.likeCount, likeCount) || other.likeCount == likeCount)&&(identical(other.isLikedByCurrentUser, isLikedByCurrentUser) || other.isLikedByCurrentUser == isLikedByCurrentUser));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,postId,fanHubId,fanHubName,fanHubSubdomain,authorId,authorUsername,authorDisplayName,authorAvatarUrl,postType,title,content,status,isPinned,const DeepCollectionEquality().hash(mediaUrls),const DeepCollectionEquality().hash(hashtags),const DeepCollectionEquality().hash(voteOptions),const DeepCollectionEquality().hash(voteCounts),totalVotes,userVotedOptionId,createdAt,updatedAt,likeCount,isLikedByCurrentUser]);

@override
String toString() {
  return 'Post(postId: $postId, fanHubId: $fanHubId, fanHubName: $fanHubName, fanHubSubdomain: $fanHubSubdomain, authorId: $authorId, authorUsername: $authorUsername, authorDisplayName: $authorDisplayName, authorAvatarUrl: $authorAvatarUrl, postType: $postType, title: $title, content: $content, status: $status, isPinned: $isPinned, mediaUrls: $mediaUrls, hashtags: $hashtags, voteOptions: $voteOptions, voteCounts: $voteCounts, totalVotes: $totalVotes, userVotedOptionId: $userVotedOptionId, createdAt: $createdAt, updatedAt: $updatedAt, likeCount: $likeCount, isLikedByCurrentUser: $isLikedByCurrentUser)';
}


}

/// @nodoc
abstract mixin class $PostCopyWith<$Res>  {
  factory $PostCopyWith(Post value, $Res Function(Post) _then) = _$PostCopyWithImpl;
@useResult
$Res call({
 int postId, int fanHubId, String fanHubName, String fanHubSubdomain, int authorId, String authorUsername, String authorDisplayName, String? authorAvatarUrl, PostType postType, String? title, String content, PostStatus status, bool isPinned, List<String> mediaUrls, List<String> hashtags, List<VoteOption>? voteOptions, Map<String, int>? voteCounts, int? totalVotes, int? userVotedOptionId, DateTime createdAt, DateTime? updatedAt, int likeCount, bool isLikedByCurrentUser
});




}
/// @nodoc
class _$PostCopyWithImpl<$Res>
    implements $PostCopyWith<$Res> {
  _$PostCopyWithImpl(this._self, this._then);

  final Post _self;
  final $Res Function(Post) _then;

/// Create a copy of Post
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? postId = null,Object? fanHubId = null,Object? fanHubName = null,Object? fanHubSubdomain = null,Object? authorId = null,Object? authorUsername = null,Object? authorDisplayName = null,Object? authorAvatarUrl = freezed,Object? postType = null,Object? title = freezed,Object? content = null,Object? status = null,Object? isPinned = null,Object? mediaUrls = null,Object? hashtags = null,Object? voteOptions = freezed,Object? voteCounts = freezed,Object? totalVotes = freezed,Object? userVotedOptionId = freezed,Object? createdAt = null,Object? updatedAt = freezed,Object? likeCount = null,Object? isLikedByCurrentUser = null,}) {
  return _then(_self.copyWith(
postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as int,fanHubId: null == fanHubId ? _self.fanHubId : fanHubId // ignore: cast_nullable_to_non_nullable
as int,fanHubName: null == fanHubName ? _self.fanHubName : fanHubName // ignore: cast_nullable_to_non_nullable
as String,fanHubSubdomain: null == fanHubSubdomain ? _self.fanHubSubdomain : fanHubSubdomain // ignore: cast_nullable_to_non_nullable
as String,authorId: null == authorId ? _self.authorId : authorId // ignore: cast_nullable_to_non_nullable
as int,authorUsername: null == authorUsername ? _self.authorUsername : authorUsername // ignore: cast_nullable_to_non_nullable
as String,authorDisplayName: null == authorDisplayName ? _self.authorDisplayName : authorDisplayName // ignore: cast_nullable_to_non_nullable
as String,authorAvatarUrl: freezed == authorAvatarUrl ? _self.authorAvatarUrl : authorAvatarUrl // ignore: cast_nullable_to_non_nullable
as String?,postType: null == postType ? _self.postType : postType // ignore: cast_nullable_to_non_nullable
as PostType,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PostStatus,isPinned: null == isPinned ? _self.isPinned : isPinned // ignore: cast_nullable_to_non_nullable
as bool,mediaUrls: null == mediaUrls ? _self.mediaUrls : mediaUrls // ignore: cast_nullable_to_non_nullable
as List<String>,hashtags: null == hashtags ? _self.hashtags : hashtags // ignore: cast_nullable_to_non_nullable
as List<String>,voteOptions: freezed == voteOptions ? _self.voteOptions : voteOptions // ignore: cast_nullable_to_non_nullable
as List<VoteOption>?,voteCounts: freezed == voteCounts ? _self.voteCounts : voteCounts // ignore: cast_nullable_to_non_nullable
as Map<String, int>?,totalVotes: freezed == totalVotes ? _self.totalVotes : totalVotes // ignore: cast_nullable_to_non_nullable
as int?,userVotedOptionId: freezed == userVotedOptionId ? _self.userVotedOptionId : userVotedOptionId // ignore: cast_nullable_to_non_nullable
as int?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,likeCount: null == likeCount ? _self.likeCount : likeCount // ignore: cast_nullable_to_non_nullable
as int,isLikedByCurrentUser: null == isLikedByCurrentUser ? _self.isLikedByCurrentUser : isLikedByCurrentUser // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [Post].
extension PostPatterns on Post {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Post value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Post() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Post value)  $default,){
final _that = this;
switch (_that) {
case _Post():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Post value)?  $default,){
final _that = this;
switch (_that) {
case _Post() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int postId,  int fanHubId,  String fanHubName,  String fanHubSubdomain,  int authorId,  String authorUsername,  String authorDisplayName,  String? authorAvatarUrl,  PostType postType,  String? title,  String content,  PostStatus status,  bool isPinned,  List<String> mediaUrls,  List<String> hashtags,  List<VoteOption>? voteOptions,  Map<String, int>? voteCounts,  int? totalVotes,  int? userVotedOptionId,  DateTime createdAt,  DateTime? updatedAt,  int likeCount,  bool isLikedByCurrentUser)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Post() when $default != null:
return $default(_that.postId,_that.fanHubId,_that.fanHubName,_that.fanHubSubdomain,_that.authorId,_that.authorUsername,_that.authorDisplayName,_that.authorAvatarUrl,_that.postType,_that.title,_that.content,_that.status,_that.isPinned,_that.mediaUrls,_that.hashtags,_that.voteOptions,_that.voteCounts,_that.totalVotes,_that.userVotedOptionId,_that.createdAt,_that.updatedAt,_that.likeCount,_that.isLikedByCurrentUser);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int postId,  int fanHubId,  String fanHubName,  String fanHubSubdomain,  int authorId,  String authorUsername,  String authorDisplayName,  String? authorAvatarUrl,  PostType postType,  String? title,  String content,  PostStatus status,  bool isPinned,  List<String> mediaUrls,  List<String> hashtags,  List<VoteOption>? voteOptions,  Map<String, int>? voteCounts,  int? totalVotes,  int? userVotedOptionId,  DateTime createdAt,  DateTime? updatedAt,  int likeCount,  bool isLikedByCurrentUser)  $default,) {final _that = this;
switch (_that) {
case _Post():
return $default(_that.postId,_that.fanHubId,_that.fanHubName,_that.fanHubSubdomain,_that.authorId,_that.authorUsername,_that.authorDisplayName,_that.authorAvatarUrl,_that.postType,_that.title,_that.content,_that.status,_that.isPinned,_that.mediaUrls,_that.hashtags,_that.voteOptions,_that.voteCounts,_that.totalVotes,_that.userVotedOptionId,_that.createdAt,_that.updatedAt,_that.likeCount,_that.isLikedByCurrentUser);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int postId,  int fanHubId,  String fanHubName,  String fanHubSubdomain,  int authorId,  String authorUsername,  String authorDisplayName,  String? authorAvatarUrl,  PostType postType,  String? title,  String content,  PostStatus status,  bool isPinned,  List<String> mediaUrls,  List<String> hashtags,  List<VoteOption>? voteOptions,  Map<String, int>? voteCounts,  int? totalVotes,  int? userVotedOptionId,  DateTime createdAt,  DateTime? updatedAt,  int likeCount,  bool isLikedByCurrentUser)?  $default,) {final _that = this;
switch (_that) {
case _Post() when $default != null:
return $default(_that.postId,_that.fanHubId,_that.fanHubName,_that.fanHubSubdomain,_that.authorId,_that.authorUsername,_that.authorDisplayName,_that.authorAvatarUrl,_that.postType,_that.title,_that.content,_that.status,_that.isPinned,_that.mediaUrls,_that.hashtags,_that.voteOptions,_that.voteCounts,_that.totalVotes,_that.userVotedOptionId,_that.createdAt,_that.updatedAt,_that.likeCount,_that.isLikedByCurrentUser);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Post implements Post {
  const _Post({required this.postId, required this.fanHubId, required this.fanHubName, required this.fanHubSubdomain, required this.authorId, required this.authorUsername, required this.authorDisplayName, this.authorAvatarUrl, required this.postType, this.title, required this.content, required this.status, this.isPinned = false, final  List<String> mediaUrls = const [], final  List<String> hashtags = const [], final  List<VoteOption>? voteOptions, final  Map<String, int>? voteCounts, this.totalVotes, this.userVotedOptionId, required this.createdAt, this.updatedAt, this.likeCount = 0, this.isLikedByCurrentUser = false}): _mediaUrls = mediaUrls,_hashtags = hashtags,_voteOptions = voteOptions,_voteCounts = voteCounts;
  factory _Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

@override final  int postId;
@override final  int fanHubId;
@override final  String fanHubName;
@override final  String fanHubSubdomain;
@override final  int authorId;
@override final  String authorUsername;
@override final  String authorDisplayName;
@override final  String? authorAvatarUrl;
@override final  PostType postType;
@override final  String? title;
@override final  String content;
@override final  PostStatus status;
@override@JsonKey() final  bool isPinned;
 final  List<String> _mediaUrls;
@override@JsonKey() List<String> get mediaUrls {
  if (_mediaUrls is EqualUnmodifiableListView) return _mediaUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_mediaUrls);
}

 final  List<String> _hashtags;
@override@JsonKey() List<String> get hashtags {
  if (_hashtags is EqualUnmodifiableListView) return _hashtags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_hashtags);
}

 final  List<VoteOption>? _voteOptions;
@override List<VoteOption>? get voteOptions {
  final value = _voteOptions;
  if (value == null) return null;
  if (_voteOptions is EqualUnmodifiableListView) return _voteOptions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  Map<String, int>? _voteCounts;
@override Map<String, int>? get voteCounts {
  final value = _voteCounts;
  if (value == null) return null;
  if (_voteCounts is EqualUnmodifiableMapView) return _voteCounts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override final  int? totalVotes;
@override final  int? userVotedOptionId;
@override final  DateTime createdAt;
@override final  DateTime? updatedAt;
@override@JsonKey() final  int likeCount;
@override@JsonKey() final  bool isLikedByCurrentUser;

/// Create a copy of Post
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostCopyWith<_Post> get copyWith => __$PostCopyWithImpl<_Post>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PostToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Post&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.fanHubId, fanHubId) || other.fanHubId == fanHubId)&&(identical(other.fanHubName, fanHubName) || other.fanHubName == fanHubName)&&(identical(other.fanHubSubdomain, fanHubSubdomain) || other.fanHubSubdomain == fanHubSubdomain)&&(identical(other.authorId, authorId) || other.authorId == authorId)&&(identical(other.authorUsername, authorUsername) || other.authorUsername == authorUsername)&&(identical(other.authorDisplayName, authorDisplayName) || other.authorDisplayName == authorDisplayName)&&(identical(other.authorAvatarUrl, authorAvatarUrl) || other.authorAvatarUrl == authorAvatarUrl)&&(identical(other.postType, postType) || other.postType == postType)&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&(identical(other.status, status) || other.status == status)&&(identical(other.isPinned, isPinned) || other.isPinned == isPinned)&&const DeepCollectionEquality().equals(other._mediaUrls, _mediaUrls)&&const DeepCollectionEquality().equals(other._hashtags, _hashtags)&&const DeepCollectionEquality().equals(other._voteOptions, _voteOptions)&&const DeepCollectionEquality().equals(other._voteCounts, _voteCounts)&&(identical(other.totalVotes, totalVotes) || other.totalVotes == totalVotes)&&(identical(other.userVotedOptionId, userVotedOptionId) || other.userVotedOptionId == userVotedOptionId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.likeCount, likeCount) || other.likeCount == likeCount)&&(identical(other.isLikedByCurrentUser, isLikedByCurrentUser) || other.isLikedByCurrentUser == isLikedByCurrentUser));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,postId,fanHubId,fanHubName,fanHubSubdomain,authorId,authorUsername,authorDisplayName,authorAvatarUrl,postType,title,content,status,isPinned,const DeepCollectionEquality().hash(_mediaUrls),const DeepCollectionEquality().hash(_hashtags),const DeepCollectionEquality().hash(_voteOptions),const DeepCollectionEquality().hash(_voteCounts),totalVotes,userVotedOptionId,createdAt,updatedAt,likeCount,isLikedByCurrentUser]);

@override
String toString() {
  return 'Post(postId: $postId, fanHubId: $fanHubId, fanHubName: $fanHubName, fanHubSubdomain: $fanHubSubdomain, authorId: $authorId, authorUsername: $authorUsername, authorDisplayName: $authorDisplayName, authorAvatarUrl: $authorAvatarUrl, postType: $postType, title: $title, content: $content, status: $status, isPinned: $isPinned, mediaUrls: $mediaUrls, hashtags: $hashtags, voteOptions: $voteOptions, voteCounts: $voteCounts, totalVotes: $totalVotes, userVotedOptionId: $userVotedOptionId, createdAt: $createdAt, updatedAt: $updatedAt, likeCount: $likeCount, isLikedByCurrentUser: $isLikedByCurrentUser)';
}


}

/// @nodoc
abstract mixin class _$PostCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$PostCopyWith(_Post value, $Res Function(_Post) _then) = __$PostCopyWithImpl;
@override @useResult
$Res call({
 int postId, int fanHubId, String fanHubName, String fanHubSubdomain, int authorId, String authorUsername, String authorDisplayName, String? authorAvatarUrl, PostType postType, String? title, String content, PostStatus status, bool isPinned, List<String> mediaUrls, List<String> hashtags, List<VoteOption>? voteOptions, Map<String, int>? voteCounts, int? totalVotes, int? userVotedOptionId, DateTime createdAt, DateTime? updatedAt, int likeCount, bool isLikedByCurrentUser
});




}
/// @nodoc
class __$PostCopyWithImpl<$Res>
    implements _$PostCopyWith<$Res> {
  __$PostCopyWithImpl(this._self, this._then);

  final _Post _self;
  final $Res Function(_Post) _then;

/// Create a copy of Post
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? postId = null,Object? fanHubId = null,Object? fanHubName = null,Object? fanHubSubdomain = null,Object? authorId = null,Object? authorUsername = null,Object? authorDisplayName = null,Object? authorAvatarUrl = freezed,Object? postType = null,Object? title = freezed,Object? content = null,Object? status = null,Object? isPinned = null,Object? mediaUrls = null,Object? hashtags = null,Object? voteOptions = freezed,Object? voteCounts = freezed,Object? totalVotes = freezed,Object? userVotedOptionId = freezed,Object? createdAt = null,Object? updatedAt = freezed,Object? likeCount = null,Object? isLikedByCurrentUser = null,}) {
  return _then(_Post(
postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as int,fanHubId: null == fanHubId ? _self.fanHubId : fanHubId // ignore: cast_nullable_to_non_nullable
as int,fanHubName: null == fanHubName ? _self.fanHubName : fanHubName // ignore: cast_nullable_to_non_nullable
as String,fanHubSubdomain: null == fanHubSubdomain ? _self.fanHubSubdomain : fanHubSubdomain // ignore: cast_nullable_to_non_nullable
as String,authorId: null == authorId ? _self.authorId : authorId // ignore: cast_nullable_to_non_nullable
as int,authorUsername: null == authorUsername ? _self.authorUsername : authorUsername // ignore: cast_nullable_to_non_nullable
as String,authorDisplayName: null == authorDisplayName ? _self.authorDisplayName : authorDisplayName // ignore: cast_nullable_to_non_nullable
as String,authorAvatarUrl: freezed == authorAvatarUrl ? _self.authorAvatarUrl : authorAvatarUrl // ignore: cast_nullable_to_non_nullable
as String?,postType: null == postType ? _self.postType : postType // ignore: cast_nullable_to_non_nullable
as PostType,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PostStatus,isPinned: null == isPinned ? _self.isPinned : isPinned // ignore: cast_nullable_to_non_nullable
as bool,mediaUrls: null == mediaUrls ? _self._mediaUrls : mediaUrls // ignore: cast_nullable_to_non_nullable
as List<String>,hashtags: null == hashtags ? _self._hashtags : hashtags // ignore: cast_nullable_to_non_nullable
as List<String>,voteOptions: freezed == voteOptions ? _self._voteOptions : voteOptions // ignore: cast_nullable_to_non_nullable
as List<VoteOption>?,voteCounts: freezed == voteCounts ? _self._voteCounts : voteCounts // ignore: cast_nullable_to_non_nullable
as Map<String, int>?,totalVotes: freezed == totalVotes ? _self.totalVotes : totalVotes // ignore: cast_nullable_to_non_nullable
as int?,userVotedOptionId: freezed == userVotedOptionId ? _self.userVotedOptionId : userVotedOptionId // ignore: cast_nullable_to_non_nullable
as int?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,likeCount: null == likeCount ? _self.likeCount : likeCount // ignore: cast_nullable_to_non_nullable
as int,isLikedByCurrentUser: null == isLikedByCurrentUser ? _self.isLikedByCurrentUser : isLikedByCurrentUser // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$PostModeration {

 int get postId; int get fanHubId; String get fanHubName; String get fanHubSubdomain; int get authorId; String get authorUsername; String get authorDisplayName; String? get authorAvatarUrl; PostType get postType; String? get title; String get content; PostStatus get status; bool get isPinned; List<Media> get media; List<String> get hashtags; List<VoteOption>? get voteOptions; Map<String, int>? get voteCounts; int? get totalVotes; int? get userVotedOptionId; DateTime get createdAt; DateTime? get updatedAt; int get likeCount; bool get isLikedByCurrentUser; AiStatus get aiValidationStatus; String? get aiValidationComment;
/// Create a copy of PostModeration
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostModerationCopyWith<PostModeration> get copyWith => _$PostModerationCopyWithImpl<PostModeration>(this as PostModeration, _$identity);

  /// Serializes this PostModeration to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostModeration&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.fanHubId, fanHubId) || other.fanHubId == fanHubId)&&(identical(other.fanHubName, fanHubName) || other.fanHubName == fanHubName)&&(identical(other.fanHubSubdomain, fanHubSubdomain) || other.fanHubSubdomain == fanHubSubdomain)&&(identical(other.authorId, authorId) || other.authorId == authorId)&&(identical(other.authorUsername, authorUsername) || other.authorUsername == authorUsername)&&(identical(other.authorDisplayName, authorDisplayName) || other.authorDisplayName == authorDisplayName)&&(identical(other.authorAvatarUrl, authorAvatarUrl) || other.authorAvatarUrl == authorAvatarUrl)&&(identical(other.postType, postType) || other.postType == postType)&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&(identical(other.status, status) || other.status == status)&&(identical(other.isPinned, isPinned) || other.isPinned == isPinned)&&const DeepCollectionEquality().equals(other.media, media)&&const DeepCollectionEquality().equals(other.hashtags, hashtags)&&const DeepCollectionEquality().equals(other.voteOptions, voteOptions)&&const DeepCollectionEquality().equals(other.voteCounts, voteCounts)&&(identical(other.totalVotes, totalVotes) || other.totalVotes == totalVotes)&&(identical(other.userVotedOptionId, userVotedOptionId) || other.userVotedOptionId == userVotedOptionId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.likeCount, likeCount) || other.likeCount == likeCount)&&(identical(other.isLikedByCurrentUser, isLikedByCurrentUser) || other.isLikedByCurrentUser == isLikedByCurrentUser)&&(identical(other.aiValidationStatus, aiValidationStatus) || other.aiValidationStatus == aiValidationStatus)&&(identical(other.aiValidationComment, aiValidationComment) || other.aiValidationComment == aiValidationComment));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,postId,fanHubId,fanHubName,fanHubSubdomain,authorId,authorUsername,authorDisplayName,authorAvatarUrl,postType,title,content,status,isPinned,const DeepCollectionEquality().hash(media),const DeepCollectionEquality().hash(hashtags),const DeepCollectionEquality().hash(voteOptions),const DeepCollectionEquality().hash(voteCounts),totalVotes,userVotedOptionId,createdAt,updatedAt,likeCount,isLikedByCurrentUser,aiValidationStatus,aiValidationComment]);

@override
String toString() {
  return 'PostModeration(postId: $postId, fanHubId: $fanHubId, fanHubName: $fanHubName, fanHubSubdomain: $fanHubSubdomain, authorId: $authorId, authorUsername: $authorUsername, authorDisplayName: $authorDisplayName, authorAvatarUrl: $authorAvatarUrl, postType: $postType, title: $title, content: $content, status: $status, isPinned: $isPinned, media: $media, hashtags: $hashtags, voteOptions: $voteOptions, voteCounts: $voteCounts, totalVotes: $totalVotes, userVotedOptionId: $userVotedOptionId, createdAt: $createdAt, updatedAt: $updatedAt, likeCount: $likeCount, isLikedByCurrentUser: $isLikedByCurrentUser, aiValidationStatus: $aiValidationStatus, aiValidationComment: $aiValidationComment)';
}


}

/// @nodoc
abstract mixin class $PostModerationCopyWith<$Res>  {
  factory $PostModerationCopyWith(PostModeration value, $Res Function(PostModeration) _then) = _$PostModerationCopyWithImpl;
@useResult
$Res call({
 int postId, int fanHubId, String fanHubName, String fanHubSubdomain, int authorId, String authorUsername, String authorDisplayName, String? authorAvatarUrl, PostType postType, String? title, String content, PostStatus status, bool isPinned, List<Media> media, List<String> hashtags, List<VoteOption>? voteOptions, Map<String, int>? voteCounts, int? totalVotes, int? userVotedOptionId, DateTime createdAt, DateTime? updatedAt, int likeCount, bool isLikedByCurrentUser, AiStatus aiValidationStatus, String? aiValidationComment
});




}
/// @nodoc
class _$PostModerationCopyWithImpl<$Res>
    implements $PostModerationCopyWith<$Res> {
  _$PostModerationCopyWithImpl(this._self, this._then);

  final PostModeration _self;
  final $Res Function(PostModeration) _then;

/// Create a copy of PostModeration
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? postId = null,Object? fanHubId = null,Object? fanHubName = null,Object? fanHubSubdomain = null,Object? authorId = null,Object? authorUsername = null,Object? authorDisplayName = null,Object? authorAvatarUrl = freezed,Object? postType = null,Object? title = freezed,Object? content = null,Object? status = null,Object? isPinned = null,Object? media = null,Object? hashtags = null,Object? voteOptions = freezed,Object? voteCounts = freezed,Object? totalVotes = freezed,Object? userVotedOptionId = freezed,Object? createdAt = null,Object? updatedAt = freezed,Object? likeCount = null,Object? isLikedByCurrentUser = null,Object? aiValidationStatus = null,Object? aiValidationComment = freezed,}) {
  return _then(_self.copyWith(
postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as int,fanHubId: null == fanHubId ? _self.fanHubId : fanHubId // ignore: cast_nullable_to_non_nullable
as int,fanHubName: null == fanHubName ? _self.fanHubName : fanHubName // ignore: cast_nullable_to_non_nullable
as String,fanHubSubdomain: null == fanHubSubdomain ? _self.fanHubSubdomain : fanHubSubdomain // ignore: cast_nullable_to_non_nullable
as String,authorId: null == authorId ? _self.authorId : authorId // ignore: cast_nullable_to_non_nullable
as int,authorUsername: null == authorUsername ? _self.authorUsername : authorUsername // ignore: cast_nullable_to_non_nullable
as String,authorDisplayName: null == authorDisplayName ? _self.authorDisplayName : authorDisplayName // ignore: cast_nullable_to_non_nullable
as String,authorAvatarUrl: freezed == authorAvatarUrl ? _self.authorAvatarUrl : authorAvatarUrl // ignore: cast_nullable_to_non_nullable
as String?,postType: null == postType ? _self.postType : postType // ignore: cast_nullable_to_non_nullable
as PostType,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PostStatus,isPinned: null == isPinned ? _self.isPinned : isPinned // ignore: cast_nullable_to_non_nullable
as bool,media: null == media ? _self.media : media // ignore: cast_nullable_to_non_nullable
as List<Media>,hashtags: null == hashtags ? _self.hashtags : hashtags // ignore: cast_nullable_to_non_nullable
as List<String>,voteOptions: freezed == voteOptions ? _self.voteOptions : voteOptions // ignore: cast_nullable_to_non_nullable
as List<VoteOption>?,voteCounts: freezed == voteCounts ? _self.voteCounts : voteCounts // ignore: cast_nullable_to_non_nullable
as Map<String, int>?,totalVotes: freezed == totalVotes ? _self.totalVotes : totalVotes // ignore: cast_nullable_to_non_nullable
as int?,userVotedOptionId: freezed == userVotedOptionId ? _self.userVotedOptionId : userVotedOptionId // ignore: cast_nullable_to_non_nullable
as int?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,likeCount: null == likeCount ? _self.likeCount : likeCount // ignore: cast_nullable_to_non_nullable
as int,isLikedByCurrentUser: null == isLikedByCurrentUser ? _self.isLikedByCurrentUser : isLikedByCurrentUser // ignore: cast_nullable_to_non_nullable
as bool,aiValidationStatus: null == aiValidationStatus ? _self.aiValidationStatus : aiValidationStatus // ignore: cast_nullable_to_non_nullable
as AiStatus,aiValidationComment: freezed == aiValidationComment ? _self.aiValidationComment : aiValidationComment // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PostModeration].
extension PostModerationPatterns on PostModeration {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PostModeration value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostModeration() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PostModeration value)  $default,){
final _that = this;
switch (_that) {
case _PostModeration():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PostModeration value)?  $default,){
final _that = this;
switch (_that) {
case _PostModeration() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int postId,  int fanHubId,  String fanHubName,  String fanHubSubdomain,  int authorId,  String authorUsername,  String authorDisplayName,  String? authorAvatarUrl,  PostType postType,  String? title,  String content,  PostStatus status,  bool isPinned,  List<Media> media,  List<String> hashtags,  List<VoteOption>? voteOptions,  Map<String, int>? voteCounts,  int? totalVotes,  int? userVotedOptionId,  DateTime createdAt,  DateTime? updatedAt,  int likeCount,  bool isLikedByCurrentUser,  AiStatus aiValidationStatus,  String? aiValidationComment)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostModeration() when $default != null:
return $default(_that.postId,_that.fanHubId,_that.fanHubName,_that.fanHubSubdomain,_that.authorId,_that.authorUsername,_that.authorDisplayName,_that.authorAvatarUrl,_that.postType,_that.title,_that.content,_that.status,_that.isPinned,_that.media,_that.hashtags,_that.voteOptions,_that.voteCounts,_that.totalVotes,_that.userVotedOptionId,_that.createdAt,_that.updatedAt,_that.likeCount,_that.isLikedByCurrentUser,_that.aiValidationStatus,_that.aiValidationComment);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int postId,  int fanHubId,  String fanHubName,  String fanHubSubdomain,  int authorId,  String authorUsername,  String authorDisplayName,  String? authorAvatarUrl,  PostType postType,  String? title,  String content,  PostStatus status,  bool isPinned,  List<Media> media,  List<String> hashtags,  List<VoteOption>? voteOptions,  Map<String, int>? voteCounts,  int? totalVotes,  int? userVotedOptionId,  DateTime createdAt,  DateTime? updatedAt,  int likeCount,  bool isLikedByCurrentUser,  AiStatus aiValidationStatus,  String? aiValidationComment)  $default,) {final _that = this;
switch (_that) {
case _PostModeration():
return $default(_that.postId,_that.fanHubId,_that.fanHubName,_that.fanHubSubdomain,_that.authorId,_that.authorUsername,_that.authorDisplayName,_that.authorAvatarUrl,_that.postType,_that.title,_that.content,_that.status,_that.isPinned,_that.media,_that.hashtags,_that.voteOptions,_that.voteCounts,_that.totalVotes,_that.userVotedOptionId,_that.createdAt,_that.updatedAt,_that.likeCount,_that.isLikedByCurrentUser,_that.aiValidationStatus,_that.aiValidationComment);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int postId,  int fanHubId,  String fanHubName,  String fanHubSubdomain,  int authorId,  String authorUsername,  String authorDisplayName,  String? authorAvatarUrl,  PostType postType,  String? title,  String content,  PostStatus status,  bool isPinned,  List<Media> media,  List<String> hashtags,  List<VoteOption>? voteOptions,  Map<String, int>? voteCounts,  int? totalVotes,  int? userVotedOptionId,  DateTime createdAt,  DateTime? updatedAt,  int likeCount,  bool isLikedByCurrentUser,  AiStatus aiValidationStatus,  String? aiValidationComment)?  $default,) {final _that = this;
switch (_that) {
case _PostModeration() when $default != null:
return $default(_that.postId,_that.fanHubId,_that.fanHubName,_that.fanHubSubdomain,_that.authorId,_that.authorUsername,_that.authorDisplayName,_that.authorAvatarUrl,_that.postType,_that.title,_that.content,_that.status,_that.isPinned,_that.media,_that.hashtags,_that.voteOptions,_that.voteCounts,_that.totalVotes,_that.userVotedOptionId,_that.createdAt,_that.updatedAt,_that.likeCount,_that.isLikedByCurrentUser,_that.aiValidationStatus,_that.aiValidationComment);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PostModeration implements PostModeration {
  const _PostModeration({required this.postId, required this.fanHubId, required this.fanHubName, required this.fanHubSubdomain, required this.authorId, required this.authorUsername, required this.authorDisplayName, this.authorAvatarUrl, required this.postType, this.title, required this.content, required this.status, this.isPinned = false, final  List<Media> media = const [], final  List<String> hashtags = const [], final  List<VoteOption>? voteOptions, final  Map<String, int>? voteCounts, this.totalVotes, this.userVotedOptionId, required this.createdAt, this.updatedAt, this.likeCount = 0, this.isLikedByCurrentUser = false, this.aiValidationStatus = AiStatus.pending, this.aiValidationComment}): _media = media,_hashtags = hashtags,_voteOptions = voteOptions,_voteCounts = voteCounts;
  factory _PostModeration.fromJson(Map<String, dynamic> json) => _$PostModerationFromJson(json);

@override final  int postId;
@override final  int fanHubId;
@override final  String fanHubName;
@override final  String fanHubSubdomain;
@override final  int authorId;
@override final  String authorUsername;
@override final  String authorDisplayName;
@override final  String? authorAvatarUrl;
@override final  PostType postType;
@override final  String? title;
@override final  String content;
@override final  PostStatus status;
@override@JsonKey() final  bool isPinned;
 final  List<Media> _media;
@override@JsonKey() List<Media> get media {
  if (_media is EqualUnmodifiableListView) return _media;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_media);
}

 final  List<String> _hashtags;
@override@JsonKey() List<String> get hashtags {
  if (_hashtags is EqualUnmodifiableListView) return _hashtags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_hashtags);
}

 final  List<VoteOption>? _voteOptions;
@override List<VoteOption>? get voteOptions {
  final value = _voteOptions;
  if (value == null) return null;
  if (_voteOptions is EqualUnmodifiableListView) return _voteOptions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  Map<String, int>? _voteCounts;
@override Map<String, int>? get voteCounts {
  final value = _voteCounts;
  if (value == null) return null;
  if (_voteCounts is EqualUnmodifiableMapView) return _voteCounts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override final  int? totalVotes;
@override final  int? userVotedOptionId;
@override final  DateTime createdAt;
@override final  DateTime? updatedAt;
@override@JsonKey() final  int likeCount;
@override@JsonKey() final  bool isLikedByCurrentUser;
@override@JsonKey() final  AiStatus aiValidationStatus;
@override final  String? aiValidationComment;

/// Create a copy of PostModeration
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostModerationCopyWith<_PostModeration> get copyWith => __$PostModerationCopyWithImpl<_PostModeration>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PostModerationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostModeration&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.fanHubId, fanHubId) || other.fanHubId == fanHubId)&&(identical(other.fanHubName, fanHubName) || other.fanHubName == fanHubName)&&(identical(other.fanHubSubdomain, fanHubSubdomain) || other.fanHubSubdomain == fanHubSubdomain)&&(identical(other.authorId, authorId) || other.authorId == authorId)&&(identical(other.authorUsername, authorUsername) || other.authorUsername == authorUsername)&&(identical(other.authorDisplayName, authorDisplayName) || other.authorDisplayName == authorDisplayName)&&(identical(other.authorAvatarUrl, authorAvatarUrl) || other.authorAvatarUrl == authorAvatarUrl)&&(identical(other.postType, postType) || other.postType == postType)&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&(identical(other.status, status) || other.status == status)&&(identical(other.isPinned, isPinned) || other.isPinned == isPinned)&&const DeepCollectionEquality().equals(other._media, _media)&&const DeepCollectionEquality().equals(other._hashtags, _hashtags)&&const DeepCollectionEquality().equals(other._voteOptions, _voteOptions)&&const DeepCollectionEquality().equals(other._voteCounts, _voteCounts)&&(identical(other.totalVotes, totalVotes) || other.totalVotes == totalVotes)&&(identical(other.userVotedOptionId, userVotedOptionId) || other.userVotedOptionId == userVotedOptionId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.likeCount, likeCount) || other.likeCount == likeCount)&&(identical(other.isLikedByCurrentUser, isLikedByCurrentUser) || other.isLikedByCurrentUser == isLikedByCurrentUser)&&(identical(other.aiValidationStatus, aiValidationStatus) || other.aiValidationStatus == aiValidationStatus)&&(identical(other.aiValidationComment, aiValidationComment) || other.aiValidationComment == aiValidationComment));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,postId,fanHubId,fanHubName,fanHubSubdomain,authorId,authorUsername,authorDisplayName,authorAvatarUrl,postType,title,content,status,isPinned,const DeepCollectionEquality().hash(_media),const DeepCollectionEquality().hash(_hashtags),const DeepCollectionEquality().hash(_voteOptions),const DeepCollectionEquality().hash(_voteCounts),totalVotes,userVotedOptionId,createdAt,updatedAt,likeCount,isLikedByCurrentUser,aiValidationStatus,aiValidationComment]);

@override
String toString() {
  return 'PostModeration(postId: $postId, fanHubId: $fanHubId, fanHubName: $fanHubName, fanHubSubdomain: $fanHubSubdomain, authorId: $authorId, authorUsername: $authorUsername, authorDisplayName: $authorDisplayName, authorAvatarUrl: $authorAvatarUrl, postType: $postType, title: $title, content: $content, status: $status, isPinned: $isPinned, media: $media, hashtags: $hashtags, voteOptions: $voteOptions, voteCounts: $voteCounts, totalVotes: $totalVotes, userVotedOptionId: $userVotedOptionId, createdAt: $createdAt, updatedAt: $updatedAt, likeCount: $likeCount, isLikedByCurrentUser: $isLikedByCurrentUser, aiValidationStatus: $aiValidationStatus, aiValidationComment: $aiValidationComment)';
}


}

/// @nodoc
abstract mixin class _$PostModerationCopyWith<$Res> implements $PostModerationCopyWith<$Res> {
  factory _$PostModerationCopyWith(_PostModeration value, $Res Function(_PostModeration) _then) = __$PostModerationCopyWithImpl;
@override @useResult
$Res call({
 int postId, int fanHubId, String fanHubName, String fanHubSubdomain, int authorId, String authorUsername, String authorDisplayName, String? authorAvatarUrl, PostType postType, String? title, String content, PostStatus status, bool isPinned, List<Media> media, List<String> hashtags, List<VoteOption>? voteOptions, Map<String, int>? voteCounts, int? totalVotes, int? userVotedOptionId, DateTime createdAt, DateTime? updatedAt, int likeCount, bool isLikedByCurrentUser, AiStatus aiValidationStatus, String? aiValidationComment
});




}
/// @nodoc
class __$PostModerationCopyWithImpl<$Res>
    implements _$PostModerationCopyWith<$Res> {
  __$PostModerationCopyWithImpl(this._self, this._then);

  final _PostModeration _self;
  final $Res Function(_PostModeration) _then;

/// Create a copy of PostModeration
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? postId = null,Object? fanHubId = null,Object? fanHubName = null,Object? fanHubSubdomain = null,Object? authorId = null,Object? authorUsername = null,Object? authorDisplayName = null,Object? authorAvatarUrl = freezed,Object? postType = null,Object? title = freezed,Object? content = null,Object? status = null,Object? isPinned = null,Object? media = null,Object? hashtags = null,Object? voteOptions = freezed,Object? voteCounts = freezed,Object? totalVotes = freezed,Object? userVotedOptionId = freezed,Object? createdAt = null,Object? updatedAt = freezed,Object? likeCount = null,Object? isLikedByCurrentUser = null,Object? aiValidationStatus = null,Object? aiValidationComment = freezed,}) {
  return _then(_PostModeration(
postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as int,fanHubId: null == fanHubId ? _self.fanHubId : fanHubId // ignore: cast_nullable_to_non_nullable
as int,fanHubName: null == fanHubName ? _self.fanHubName : fanHubName // ignore: cast_nullable_to_non_nullable
as String,fanHubSubdomain: null == fanHubSubdomain ? _self.fanHubSubdomain : fanHubSubdomain // ignore: cast_nullable_to_non_nullable
as String,authorId: null == authorId ? _self.authorId : authorId // ignore: cast_nullable_to_non_nullable
as int,authorUsername: null == authorUsername ? _self.authorUsername : authorUsername // ignore: cast_nullable_to_non_nullable
as String,authorDisplayName: null == authorDisplayName ? _self.authorDisplayName : authorDisplayName // ignore: cast_nullable_to_non_nullable
as String,authorAvatarUrl: freezed == authorAvatarUrl ? _self.authorAvatarUrl : authorAvatarUrl // ignore: cast_nullable_to_non_nullable
as String?,postType: null == postType ? _self.postType : postType // ignore: cast_nullable_to_non_nullable
as PostType,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PostStatus,isPinned: null == isPinned ? _self.isPinned : isPinned // ignore: cast_nullable_to_non_nullable
as bool,media: null == media ? _self._media : media // ignore: cast_nullable_to_non_nullable
as List<Media>,hashtags: null == hashtags ? _self._hashtags : hashtags // ignore: cast_nullable_to_non_nullable
as List<String>,voteOptions: freezed == voteOptions ? _self._voteOptions : voteOptions // ignore: cast_nullable_to_non_nullable
as List<VoteOption>?,voteCounts: freezed == voteCounts ? _self._voteCounts : voteCounts // ignore: cast_nullable_to_non_nullable
as Map<String, int>?,totalVotes: freezed == totalVotes ? _self.totalVotes : totalVotes // ignore: cast_nullable_to_non_nullable
as int?,userVotedOptionId: freezed == userVotedOptionId ? _self.userVotedOptionId : userVotedOptionId // ignore: cast_nullable_to_non_nullable
as int?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,likeCount: null == likeCount ? _self.likeCount : likeCount // ignore: cast_nullable_to_non_nullable
as int,isLikedByCurrentUser: null == isLikedByCurrentUser ? _self.isLikedByCurrentUser : isLikedByCurrentUser // ignore: cast_nullable_to_non_nullable
as bool,aiValidationStatus: null == aiValidationStatus ? _self.aiValidationStatus : aiValidationStatus // ignore: cast_nullable_to_non_nullable
as AiStatus,aiValidationComment: freezed == aiValidationComment ? _self.aiValidationComment : aiValidationComment // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$CreatePostRequest {

 int get fanHubId; PostType get postType; String? get title; String get content; List<String>? get images; List<String>? get hashtags; String? get video;
/// Create a copy of CreatePostRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatePostRequestCopyWith<CreatePostRequest> get copyWith => _$CreatePostRequestCopyWithImpl<CreatePostRequest>(this as CreatePostRequest, _$identity);

  /// Serializes this CreatePostRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatePostRequest&&(identical(other.fanHubId, fanHubId) || other.fanHubId == fanHubId)&&(identical(other.postType, postType) || other.postType == postType)&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&const DeepCollectionEquality().equals(other.images, images)&&const DeepCollectionEquality().equals(other.hashtags, hashtags)&&(identical(other.video, video) || other.video == video));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fanHubId,postType,title,content,const DeepCollectionEquality().hash(images),const DeepCollectionEquality().hash(hashtags),video);

@override
String toString() {
  return 'CreatePostRequest(fanHubId: $fanHubId, postType: $postType, title: $title, content: $content, images: $images, hashtags: $hashtags, video: $video)';
}


}

/// @nodoc
abstract mixin class $CreatePostRequestCopyWith<$Res>  {
  factory $CreatePostRequestCopyWith(CreatePostRequest value, $Res Function(CreatePostRequest) _then) = _$CreatePostRequestCopyWithImpl;
@useResult
$Res call({
 int fanHubId, PostType postType, String? title, String content, List<String>? images, List<String>? hashtags, String? video
});




}
/// @nodoc
class _$CreatePostRequestCopyWithImpl<$Res>
    implements $CreatePostRequestCopyWith<$Res> {
  _$CreatePostRequestCopyWithImpl(this._self, this._then);

  final CreatePostRequest _self;
  final $Res Function(CreatePostRequest) _then;

/// Create a copy of CreatePostRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fanHubId = null,Object? postType = null,Object? title = freezed,Object? content = null,Object? images = freezed,Object? hashtags = freezed,Object? video = freezed,}) {
  return _then(_self.copyWith(
fanHubId: null == fanHubId ? _self.fanHubId : fanHubId // ignore: cast_nullable_to_non_nullable
as int,postType: null == postType ? _self.postType : postType // ignore: cast_nullable_to_non_nullable
as PostType,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,images: freezed == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<String>?,hashtags: freezed == hashtags ? _self.hashtags : hashtags // ignore: cast_nullable_to_non_nullable
as List<String>?,video: freezed == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreatePostRequest].
extension CreatePostRequestPatterns on CreatePostRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreatePostRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreatePostRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreatePostRequest value)  $default,){
final _that = this;
switch (_that) {
case _CreatePostRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreatePostRequest value)?  $default,){
final _that = this;
switch (_that) {
case _CreatePostRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int fanHubId,  PostType postType,  String? title,  String content,  List<String>? images,  List<String>? hashtags,  String? video)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreatePostRequest() when $default != null:
return $default(_that.fanHubId,_that.postType,_that.title,_that.content,_that.images,_that.hashtags,_that.video);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int fanHubId,  PostType postType,  String? title,  String content,  List<String>? images,  List<String>? hashtags,  String? video)  $default,) {final _that = this;
switch (_that) {
case _CreatePostRequest():
return $default(_that.fanHubId,_that.postType,_that.title,_that.content,_that.images,_that.hashtags,_that.video);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int fanHubId,  PostType postType,  String? title,  String content,  List<String>? images,  List<String>? hashtags,  String? video)?  $default,) {final _that = this;
switch (_that) {
case _CreatePostRequest() when $default != null:
return $default(_that.fanHubId,_that.postType,_that.title,_that.content,_that.images,_that.hashtags,_that.video);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreatePostRequest implements CreatePostRequest {
  const _CreatePostRequest({required this.fanHubId, required this.postType, this.title, required this.content, final  List<String>? images = const [], final  List<String>? hashtags = const [], this.video}): _images = images,_hashtags = hashtags;
  factory _CreatePostRequest.fromJson(Map<String, dynamic> json) => _$CreatePostRequestFromJson(json);

@override final  int fanHubId;
@override final  PostType postType;
@override final  String? title;
@override final  String content;
 final  List<String>? _images;
@override@JsonKey() List<String>? get images {
  final value = _images;
  if (value == null) return null;
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _hashtags;
@override@JsonKey() List<String>? get hashtags {
  final value = _hashtags;
  if (value == null) return null;
  if (_hashtags is EqualUnmodifiableListView) return _hashtags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? video;

/// Create a copy of CreatePostRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreatePostRequestCopyWith<_CreatePostRequest> get copyWith => __$CreatePostRequestCopyWithImpl<_CreatePostRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreatePostRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreatePostRequest&&(identical(other.fanHubId, fanHubId) || other.fanHubId == fanHubId)&&(identical(other.postType, postType) || other.postType == postType)&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&const DeepCollectionEquality().equals(other._images, _images)&&const DeepCollectionEquality().equals(other._hashtags, _hashtags)&&(identical(other.video, video) || other.video == video));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fanHubId,postType,title,content,const DeepCollectionEquality().hash(_images),const DeepCollectionEquality().hash(_hashtags),video);

@override
String toString() {
  return 'CreatePostRequest(fanHubId: $fanHubId, postType: $postType, title: $title, content: $content, images: $images, hashtags: $hashtags, video: $video)';
}


}

/// @nodoc
abstract mixin class _$CreatePostRequestCopyWith<$Res> implements $CreatePostRequestCopyWith<$Res> {
  factory _$CreatePostRequestCopyWith(_CreatePostRequest value, $Res Function(_CreatePostRequest) _then) = __$CreatePostRequestCopyWithImpl;
@override @useResult
$Res call({
 int fanHubId, PostType postType, String? title, String content, List<String>? images, List<String>? hashtags, String? video
});




}
/// @nodoc
class __$CreatePostRequestCopyWithImpl<$Res>
    implements _$CreatePostRequestCopyWith<$Res> {
  __$CreatePostRequestCopyWithImpl(this._self, this._then);

  final _CreatePostRequest _self;
  final $Res Function(_CreatePostRequest) _then;

/// Create a copy of CreatePostRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fanHubId = null,Object? postType = null,Object? title = freezed,Object? content = null,Object? images = freezed,Object? hashtags = freezed,Object? video = freezed,}) {
  return _then(_CreatePostRequest(
fanHubId: null == fanHubId ? _self.fanHubId : fanHubId // ignore: cast_nullable_to_non_nullable
as int,postType: null == postType ? _self.postType : postType // ignore: cast_nullable_to_non_nullable
as PostType,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,images: freezed == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<String>?,hashtags: freezed == hashtags ? _self._hashtags : hashtags // ignore: cast_nullable_to_non_nullable
as List<String>?,video: freezed == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ReportRequest {

 int get postId; String get reason;
/// Create a copy of ReportRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportRequestCopyWith<ReportRequest> get copyWith => _$ReportRequestCopyWithImpl<ReportRequest>(this as ReportRequest, _$identity);

  /// Serializes this ReportRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportRequest&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.reason, reason) || other.reason == reason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,postId,reason);

@override
String toString() {
  return 'ReportRequest(postId: $postId, reason: $reason)';
}


}

/// @nodoc
abstract mixin class $ReportRequestCopyWith<$Res>  {
  factory $ReportRequestCopyWith(ReportRequest value, $Res Function(ReportRequest) _then) = _$ReportRequestCopyWithImpl;
@useResult
$Res call({
 int postId, String reason
});




}
/// @nodoc
class _$ReportRequestCopyWithImpl<$Res>
    implements $ReportRequestCopyWith<$Res> {
  _$ReportRequestCopyWithImpl(this._self, this._then);

  final ReportRequest _self;
  final $Res Function(ReportRequest) _then;

/// Create a copy of ReportRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? postId = null,Object? reason = null,}) {
  return _then(_self.copyWith(
postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as int,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ReportRequest].
extension ReportRequestPatterns on ReportRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReportRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReportRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReportRequest value)  $default,){
final _that = this;
switch (_that) {
case _ReportRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReportRequest value)?  $default,){
final _that = this;
switch (_that) {
case _ReportRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int postId,  String reason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReportRequest() when $default != null:
return $default(_that.postId,_that.reason);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int postId,  String reason)  $default,) {final _that = this;
switch (_that) {
case _ReportRequest():
return $default(_that.postId,_that.reason);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int postId,  String reason)?  $default,) {final _that = this;
switch (_that) {
case _ReportRequest() when $default != null:
return $default(_that.postId,_that.reason);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReportRequest implements ReportRequest {
  const _ReportRequest({required this.postId, required this.reason});
  factory _ReportRequest.fromJson(Map<String, dynamic> json) => _$ReportRequestFromJson(json);

@override final  int postId;
@override final  String reason;

/// Create a copy of ReportRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportRequestCopyWith<_ReportRequest> get copyWith => __$ReportRequestCopyWithImpl<_ReportRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReportRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReportRequest&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.reason, reason) || other.reason == reason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,postId,reason);

@override
String toString() {
  return 'ReportRequest(postId: $postId, reason: $reason)';
}


}

/// @nodoc
abstract mixin class _$ReportRequestCopyWith<$Res> implements $ReportRequestCopyWith<$Res> {
  factory _$ReportRequestCopyWith(_ReportRequest value, $Res Function(_ReportRequest) _then) = __$ReportRequestCopyWithImpl;
@override @useResult
$Res call({
 int postId, String reason
});




}
/// @nodoc
class __$ReportRequestCopyWithImpl<$Res>
    implements _$ReportRequestCopyWith<$Res> {
  __$ReportRequestCopyWithImpl(this._self, this._then);

  final _ReportRequest _self;
  final $Res Function(_ReportRequest) _then;

/// Create a copy of ReportRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? postId = null,Object? reason = null,}) {
  return _then(_ReportRequest(
postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as int,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$PollRequest {

 int get fanHubId; String get title; String get content; List<String> get options; List<String> get hashtags;
/// Create a copy of PollRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PollRequestCopyWith<PollRequest> get copyWith => _$PollRequestCopyWithImpl<PollRequest>(this as PollRequest, _$identity);

  /// Serializes this PollRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PollRequest&&(identical(other.fanHubId, fanHubId) || other.fanHubId == fanHubId)&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&const DeepCollectionEquality().equals(other.options, options)&&const DeepCollectionEquality().equals(other.hashtags, hashtags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fanHubId,title,content,const DeepCollectionEquality().hash(options),const DeepCollectionEquality().hash(hashtags));

@override
String toString() {
  return 'PollRequest(fanHubId: $fanHubId, title: $title, content: $content, options: $options, hashtags: $hashtags)';
}


}

/// @nodoc
abstract mixin class $PollRequestCopyWith<$Res>  {
  factory $PollRequestCopyWith(PollRequest value, $Res Function(PollRequest) _then) = _$PollRequestCopyWithImpl;
@useResult
$Res call({
 int fanHubId, String title, String content, List<String> options, List<String> hashtags
});




}
/// @nodoc
class _$PollRequestCopyWithImpl<$Res>
    implements $PollRequestCopyWith<$Res> {
  _$PollRequestCopyWithImpl(this._self, this._then);

  final PollRequest _self;
  final $Res Function(PollRequest) _then;

/// Create a copy of PollRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fanHubId = null,Object? title = null,Object? content = null,Object? options = null,Object? hashtags = null,}) {
  return _then(_self.copyWith(
fanHubId: null == fanHubId ? _self.fanHubId : fanHubId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,options: null == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<String>,hashtags: null == hashtags ? _self.hashtags : hashtags // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [PollRequest].
extension PollRequestPatterns on PollRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PollRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PollRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PollRequest value)  $default,){
final _that = this;
switch (_that) {
case _PollRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PollRequest value)?  $default,){
final _that = this;
switch (_that) {
case _PollRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int fanHubId,  String title,  String content,  List<String> options,  List<String> hashtags)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PollRequest() when $default != null:
return $default(_that.fanHubId,_that.title,_that.content,_that.options,_that.hashtags);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int fanHubId,  String title,  String content,  List<String> options,  List<String> hashtags)  $default,) {final _that = this;
switch (_that) {
case _PollRequest():
return $default(_that.fanHubId,_that.title,_that.content,_that.options,_that.hashtags);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int fanHubId,  String title,  String content,  List<String> options,  List<String> hashtags)?  $default,) {final _that = this;
switch (_that) {
case _PollRequest() when $default != null:
return $default(_that.fanHubId,_that.title,_that.content,_that.options,_that.hashtags);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PollRequest implements PollRequest {
  const _PollRequest({required this.fanHubId, required this.title, required this.content, required final  List<String> options, required final  List<String> hashtags}): _options = options,_hashtags = hashtags;
  factory _PollRequest.fromJson(Map<String, dynamic> json) => _$PollRequestFromJson(json);

@override final  int fanHubId;
@override final  String title;
@override final  String content;
 final  List<String> _options;
@override List<String> get options {
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_options);
}

 final  List<String> _hashtags;
@override List<String> get hashtags {
  if (_hashtags is EqualUnmodifiableListView) return _hashtags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_hashtags);
}


/// Create a copy of PollRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PollRequestCopyWith<_PollRequest> get copyWith => __$PollRequestCopyWithImpl<_PollRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PollRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PollRequest&&(identical(other.fanHubId, fanHubId) || other.fanHubId == fanHubId)&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&const DeepCollectionEquality().equals(other._options, _options)&&const DeepCollectionEquality().equals(other._hashtags, _hashtags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fanHubId,title,content,const DeepCollectionEquality().hash(_options),const DeepCollectionEquality().hash(_hashtags));

@override
String toString() {
  return 'PollRequest(fanHubId: $fanHubId, title: $title, content: $content, options: $options, hashtags: $hashtags)';
}


}

/// @nodoc
abstract mixin class _$PollRequestCopyWith<$Res> implements $PollRequestCopyWith<$Res> {
  factory _$PollRequestCopyWith(_PollRequest value, $Res Function(_PollRequest) _then) = __$PollRequestCopyWithImpl;
@override @useResult
$Res call({
 int fanHubId, String title, String content, List<String> options, List<String> hashtags
});




}
/// @nodoc
class __$PollRequestCopyWithImpl<$Res>
    implements _$PollRequestCopyWith<$Res> {
  __$PollRequestCopyWithImpl(this._self, this._then);

  final _PollRequest _self;
  final $Res Function(_PollRequest) _then;

/// Create a copy of PollRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fanHubId = null,Object? title = null,Object? content = null,Object? options = null,Object? hashtags = null,}) {
  return _then(_PollRequest(
fanHubId: null == fanHubId ? _self.fanHubId : fanHubId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,options: null == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<String>,hashtags: null == hashtags ? _self._hashtags : hashtags // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}


/// @nodoc
mixin _$SummaryResponse {

 String get summarizeResult;
/// Create a copy of SummaryResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SummaryResponseCopyWith<SummaryResponse> get copyWith => _$SummaryResponseCopyWithImpl<SummaryResponse>(this as SummaryResponse, _$identity);

  /// Serializes this SummaryResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SummaryResponse&&(identical(other.summarizeResult, summarizeResult) || other.summarizeResult == summarizeResult));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,summarizeResult);

@override
String toString() {
  return 'SummaryResponse(summarizeResult: $summarizeResult)';
}


}

/// @nodoc
abstract mixin class $SummaryResponseCopyWith<$Res>  {
  factory $SummaryResponseCopyWith(SummaryResponse value, $Res Function(SummaryResponse) _then) = _$SummaryResponseCopyWithImpl;
@useResult
$Res call({
 String summarizeResult
});




}
/// @nodoc
class _$SummaryResponseCopyWithImpl<$Res>
    implements $SummaryResponseCopyWith<$Res> {
  _$SummaryResponseCopyWithImpl(this._self, this._then);

  final SummaryResponse _self;
  final $Res Function(SummaryResponse) _then;

/// Create a copy of SummaryResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? summarizeResult = null,}) {
  return _then(_self.copyWith(
summarizeResult: null == summarizeResult ? _self.summarizeResult : summarizeResult // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SummaryResponse].
extension SummaryResponsePatterns on SummaryResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SummaryResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SummaryResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SummaryResponse value)  $default,){
final _that = this;
switch (_that) {
case _SummaryResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SummaryResponse value)?  $default,){
final _that = this;
switch (_that) {
case _SummaryResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String summarizeResult)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SummaryResponse() when $default != null:
return $default(_that.summarizeResult);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String summarizeResult)  $default,) {final _that = this;
switch (_that) {
case _SummaryResponse():
return $default(_that.summarizeResult);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String summarizeResult)?  $default,) {final _that = this;
switch (_that) {
case _SummaryResponse() when $default != null:
return $default(_that.summarizeResult);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SummaryResponse implements SummaryResponse {
  const _SummaryResponse({required this.summarizeResult});
  factory _SummaryResponse.fromJson(Map<String, dynamic> json) => _$SummaryResponseFromJson(json);

@override final  String summarizeResult;

/// Create a copy of SummaryResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SummaryResponseCopyWith<_SummaryResponse> get copyWith => __$SummaryResponseCopyWithImpl<_SummaryResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SummaryResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SummaryResponse&&(identical(other.summarizeResult, summarizeResult) || other.summarizeResult == summarizeResult));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,summarizeResult);

@override
String toString() {
  return 'SummaryResponse(summarizeResult: $summarizeResult)';
}


}

/// @nodoc
abstract mixin class _$SummaryResponseCopyWith<$Res> implements $SummaryResponseCopyWith<$Res> {
  factory _$SummaryResponseCopyWith(_SummaryResponse value, $Res Function(_SummaryResponse) _then) = __$SummaryResponseCopyWithImpl;
@override @useResult
$Res call({
 String summarizeResult
});




}
/// @nodoc
class __$SummaryResponseCopyWithImpl<$Res>
    implements _$SummaryResponseCopyWith<$Res> {
  __$SummaryResponseCopyWithImpl(this._self, this._then);

  final _SummaryResponse _self;
  final $Res Function(_SummaryResponse) _then;

/// Create a copy of SummaryResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? summarizeResult = null,}) {
  return _then(_SummaryResponse(
summarizeResult: null == summarizeResult ? _self.summarizeResult : summarizeResult // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$TranslationResponse {

 String get translatedContent; String get translatedTitle;@JsonKey(name: 'translate_language_set') String get translateLanguageSet; String? get extraComment;
/// Create a copy of TranslationResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TranslationResponseCopyWith<TranslationResponse> get copyWith => _$TranslationResponseCopyWithImpl<TranslationResponse>(this as TranslationResponse, _$identity);

  /// Serializes this TranslationResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TranslationResponse&&(identical(other.translatedContent, translatedContent) || other.translatedContent == translatedContent)&&(identical(other.translatedTitle, translatedTitle) || other.translatedTitle == translatedTitle)&&(identical(other.translateLanguageSet, translateLanguageSet) || other.translateLanguageSet == translateLanguageSet)&&(identical(other.extraComment, extraComment) || other.extraComment == extraComment));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,translatedContent,translatedTitle,translateLanguageSet,extraComment);

@override
String toString() {
  return 'TranslationResponse(translatedContent: $translatedContent, translatedTitle: $translatedTitle, translateLanguageSet: $translateLanguageSet, extraComment: $extraComment)';
}


}

/// @nodoc
abstract mixin class $TranslationResponseCopyWith<$Res>  {
  factory $TranslationResponseCopyWith(TranslationResponse value, $Res Function(TranslationResponse) _then) = _$TranslationResponseCopyWithImpl;
@useResult
$Res call({
 String translatedContent, String translatedTitle,@JsonKey(name: 'translate_language_set') String translateLanguageSet, String? extraComment
});




}
/// @nodoc
class _$TranslationResponseCopyWithImpl<$Res>
    implements $TranslationResponseCopyWith<$Res> {
  _$TranslationResponseCopyWithImpl(this._self, this._then);

  final TranslationResponse _self;
  final $Res Function(TranslationResponse) _then;

/// Create a copy of TranslationResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? translatedContent = null,Object? translatedTitle = null,Object? translateLanguageSet = null,Object? extraComment = freezed,}) {
  return _then(_self.copyWith(
translatedContent: null == translatedContent ? _self.translatedContent : translatedContent // ignore: cast_nullable_to_non_nullable
as String,translatedTitle: null == translatedTitle ? _self.translatedTitle : translatedTitle // ignore: cast_nullable_to_non_nullable
as String,translateLanguageSet: null == translateLanguageSet ? _self.translateLanguageSet : translateLanguageSet // ignore: cast_nullable_to_non_nullable
as String,extraComment: freezed == extraComment ? _self.extraComment : extraComment // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TranslationResponse].
extension TranslationResponsePatterns on TranslationResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TranslationResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TranslationResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TranslationResponse value)  $default,){
final _that = this;
switch (_that) {
case _TranslationResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TranslationResponse value)?  $default,){
final _that = this;
switch (_that) {
case _TranslationResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String translatedContent,  String translatedTitle, @JsonKey(name: 'translate_language_set')  String translateLanguageSet,  String? extraComment)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TranslationResponse() when $default != null:
return $default(_that.translatedContent,_that.translatedTitle,_that.translateLanguageSet,_that.extraComment);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String translatedContent,  String translatedTitle, @JsonKey(name: 'translate_language_set')  String translateLanguageSet,  String? extraComment)  $default,) {final _that = this;
switch (_that) {
case _TranslationResponse():
return $default(_that.translatedContent,_that.translatedTitle,_that.translateLanguageSet,_that.extraComment);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String translatedContent,  String translatedTitle, @JsonKey(name: 'translate_language_set')  String translateLanguageSet,  String? extraComment)?  $default,) {final _that = this;
switch (_that) {
case _TranslationResponse() when $default != null:
return $default(_that.translatedContent,_that.translatedTitle,_that.translateLanguageSet,_that.extraComment);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TranslationResponse implements TranslationResponse {
  const _TranslationResponse({required this.translatedContent, required this.translatedTitle, @JsonKey(name: 'translate_language_set') required this.translateLanguageSet, this.extraComment});
  factory _TranslationResponse.fromJson(Map<String, dynamic> json) => _$TranslationResponseFromJson(json);

@override final  String translatedContent;
@override final  String translatedTitle;
@override@JsonKey(name: 'translate_language_set') final  String translateLanguageSet;
@override final  String? extraComment;

/// Create a copy of TranslationResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TranslationResponseCopyWith<_TranslationResponse> get copyWith => __$TranslationResponseCopyWithImpl<_TranslationResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TranslationResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TranslationResponse&&(identical(other.translatedContent, translatedContent) || other.translatedContent == translatedContent)&&(identical(other.translatedTitle, translatedTitle) || other.translatedTitle == translatedTitle)&&(identical(other.translateLanguageSet, translateLanguageSet) || other.translateLanguageSet == translateLanguageSet)&&(identical(other.extraComment, extraComment) || other.extraComment == extraComment));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,translatedContent,translatedTitle,translateLanguageSet,extraComment);

@override
String toString() {
  return 'TranslationResponse(translatedContent: $translatedContent, translatedTitle: $translatedTitle, translateLanguageSet: $translateLanguageSet, extraComment: $extraComment)';
}


}

/// @nodoc
abstract mixin class _$TranslationResponseCopyWith<$Res> implements $TranslationResponseCopyWith<$Res> {
  factory _$TranslationResponseCopyWith(_TranslationResponse value, $Res Function(_TranslationResponse) _then) = __$TranslationResponseCopyWithImpl;
@override @useResult
$Res call({
 String translatedContent, String translatedTitle,@JsonKey(name: 'translate_language_set') String translateLanguageSet, String? extraComment
});




}
/// @nodoc
class __$TranslationResponseCopyWithImpl<$Res>
    implements _$TranslationResponseCopyWith<$Res> {
  __$TranslationResponseCopyWithImpl(this._self, this._then);

  final _TranslationResponse _self;
  final $Res Function(_TranslationResponse) _then;

/// Create a copy of TranslationResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? translatedContent = null,Object? translatedTitle = null,Object? translateLanguageSet = null,Object? extraComment = freezed,}) {
  return _then(_TranslationResponse(
translatedContent: null == translatedContent ? _self.translatedContent : translatedContent // ignore: cast_nullable_to_non_nullable
as String,translatedTitle: null == translatedTitle ? _self.translatedTitle : translatedTitle // ignore: cast_nullable_to_non_nullable
as String,translateLanguageSet: null == translateLanguageSet ? _self.translateLanguageSet : translateLanguageSet // ignore: cast_nullable_to_non_nullable
as String,extraComment: freezed == extraComment ? _self.extraComment : extraComment // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
