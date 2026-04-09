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

 int get optionId; String get optionText; int get voteCount;
/// Create a copy of VoteOption
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VoteOptionCopyWith<VoteOption> get copyWith => _$VoteOptionCopyWithImpl<VoteOption>(this as VoteOption, _$identity);

  /// Serializes this VoteOption to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VoteOption&&(identical(other.optionId, optionId) || other.optionId == optionId)&&(identical(other.optionText, optionText) || other.optionText == optionText)&&(identical(other.voteCount, voteCount) || other.voteCount == voteCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,optionId,optionText,voteCount);

@override
String toString() {
  return 'VoteOption(optionId: $optionId, optionText: $optionText, voteCount: $voteCount)';
}


}

/// @nodoc
abstract mixin class $VoteOptionCopyWith<$Res>  {
  factory $VoteOptionCopyWith(VoteOption value, $Res Function(VoteOption) _then) = _$VoteOptionCopyWithImpl;
@useResult
$Res call({
 int optionId, String optionText, int voteCount
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
@pragma('vm:prefer-inline') @override $Res call({Object? optionId = null,Object? optionText = null,Object? voteCount = null,}) {
  return _then(_self.copyWith(
optionId: null == optionId ? _self.optionId : optionId // ignore: cast_nullable_to_non_nullable
as int,optionText: null == optionText ? _self.optionText : optionText // ignore: cast_nullable_to_non_nullable
as String,voteCount: null == voteCount ? _self.voteCount : voteCount // ignore: cast_nullable_to_non_nullable
as int,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int optionId,  String optionText,  int voteCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VoteOption() when $default != null:
return $default(_that.optionId,_that.optionText,_that.voteCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int optionId,  String optionText,  int voteCount)  $default,) {final _that = this;
switch (_that) {
case _VoteOption():
return $default(_that.optionId,_that.optionText,_that.voteCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int optionId,  String optionText,  int voteCount)?  $default,) {final _that = this;
switch (_that) {
case _VoteOption() when $default != null:
return $default(_that.optionId,_that.optionText,_that.voteCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VoteOption implements VoteOption {
  const _VoteOption({required this.optionId, required this.optionText, this.voteCount = 0});
  factory _VoteOption.fromJson(Map<String, dynamic> json) => _$VoteOptionFromJson(json);

@override final  int optionId;
@override final  String optionText;
@override@JsonKey() final  int voteCount;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VoteOption&&(identical(other.optionId, optionId) || other.optionId == optionId)&&(identical(other.optionText, optionText) || other.optionText == optionText)&&(identical(other.voteCount, voteCount) || other.voteCount == voteCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,optionId,optionText,voteCount);

@override
String toString() {
  return 'VoteOption(optionId: $optionId, optionText: $optionText, voteCount: $voteCount)';
}


}

/// @nodoc
abstract mixin class _$VoteOptionCopyWith<$Res> implements $VoteOptionCopyWith<$Res> {
  factory _$VoteOptionCopyWith(_VoteOption value, $Res Function(_VoteOption) _then) = __$VoteOptionCopyWithImpl;
@override @useResult
$Res call({
 int optionId, String optionText, int voteCount
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
@override @pragma('vm:prefer-inline') $Res call({Object? optionId = null,Object? optionText = null,Object? voteCount = null,}) {
  return _then(_VoteOption(
optionId: null == optionId ? _self.optionId : optionId // ignore: cast_nullable_to_non_nullable
as int,optionText: null == optionText ? _self.optionText : optionText // ignore: cast_nullable_to_non_nullable
as String,voteCount: null == voteCount ? _self.voteCount : voteCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$Post {

 int get postId; int get fanHubId; String get fanHubName; String get fanHubSubdomain; int get authorId; String get authorUsername; String get authorDisplayName; String? get authorAvatarUrl; PostType get postType; String? get title; String get content; PostStatus get status; bool get isPinned; List<String> get mediaUrls; List<String> get hashtags; List<String>? get voteOptions; Map<String, int>? get voteCounts; int? get totalVotes; int? get userVotedOptionId; DateTime get createdAt; DateTime? get updatedAt; int get likeCount; bool get isLikedByCurrentUser;
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
 int postId, int fanHubId, String fanHubName, String fanHubSubdomain, int authorId, String authorUsername, String authorDisplayName, String? authorAvatarUrl, PostType postType, String? title, String content, PostStatus status, bool isPinned, List<String> mediaUrls, List<String> hashtags, List<String>? voteOptions, Map<String, int>? voteCounts, int? totalVotes, int? userVotedOptionId, DateTime createdAt, DateTime? updatedAt, int likeCount, bool isLikedByCurrentUser
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
as List<String>?,voteCounts: freezed == voteCounts ? _self.voteCounts : voteCounts // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int postId,  int fanHubId,  String fanHubName,  String fanHubSubdomain,  int authorId,  String authorUsername,  String authorDisplayName,  String? authorAvatarUrl,  PostType postType,  String? title,  String content,  PostStatus status,  bool isPinned,  List<String> mediaUrls,  List<String> hashtags,  List<String>? voteOptions,  Map<String, int>? voteCounts,  int? totalVotes,  int? userVotedOptionId,  DateTime createdAt,  DateTime? updatedAt,  int likeCount,  bool isLikedByCurrentUser)?  $default,{required TResult orElse(),}) {final _that = this;
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int postId,  int fanHubId,  String fanHubName,  String fanHubSubdomain,  int authorId,  String authorUsername,  String authorDisplayName,  String? authorAvatarUrl,  PostType postType,  String? title,  String content,  PostStatus status,  bool isPinned,  List<String> mediaUrls,  List<String> hashtags,  List<String>? voteOptions,  Map<String, int>? voteCounts,  int? totalVotes,  int? userVotedOptionId,  DateTime createdAt,  DateTime? updatedAt,  int likeCount,  bool isLikedByCurrentUser)  $default,) {final _that = this;
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int postId,  int fanHubId,  String fanHubName,  String fanHubSubdomain,  int authorId,  String authorUsername,  String authorDisplayName,  String? authorAvatarUrl,  PostType postType,  String? title,  String content,  PostStatus status,  bool isPinned,  List<String> mediaUrls,  List<String> hashtags,  List<String>? voteOptions,  Map<String, int>? voteCounts,  int? totalVotes,  int? userVotedOptionId,  DateTime createdAt,  DateTime? updatedAt,  int likeCount,  bool isLikedByCurrentUser)?  $default,) {final _that = this;
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
  const _Post({required this.postId, required this.fanHubId, required this.fanHubName, required this.fanHubSubdomain, required this.authorId, required this.authorUsername, required this.authorDisplayName, this.authorAvatarUrl, required this.postType, this.title, required this.content, required this.status, this.isPinned = false, final  List<String> mediaUrls = const [], final  List<String> hashtags = const [], final  List<String>? voteOptions, final  Map<String, int>? voteCounts, this.totalVotes, this.userVotedOptionId, required this.createdAt, this.updatedAt, this.likeCount = 0, this.isLikedByCurrentUser = false}): _mediaUrls = mediaUrls,_hashtags = hashtags,_voteOptions = voteOptions,_voteCounts = voteCounts;
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

 final  List<String>? _voteOptions;
@override List<String>? get voteOptions {
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
 int postId, int fanHubId, String fanHubName, String fanHubSubdomain, int authorId, String authorUsername, String authorDisplayName, String? authorAvatarUrl, PostType postType, String? title, String content, PostStatus status, bool isPinned, List<String> mediaUrls, List<String> hashtags, List<String>? voteOptions, Map<String, int>? voteCounts, int? totalVotes, int? userVotedOptionId, DateTime createdAt, DateTime? updatedAt, int likeCount, bool isLikedByCurrentUser
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
as List<String>?,voteCounts: freezed == voteCounts ? _self._voteCounts : voteCounts // ignore: cast_nullable_to_non_nullable
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
mixin _$PostListResponse {

 bool get success; String get message; List<Post> get data;
/// Create a copy of PostListResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostListResponseCopyWith<PostListResponse> get copyWith => _$PostListResponseCopyWithImpl<PostListResponse>(this as PostListResponse, _$identity);

  /// Serializes this PostListResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostListResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'PostListResponse(success: $success, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $PostListResponseCopyWith<$Res>  {
  factory $PostListResponseCopyWith(PostListResponse value, $Res Function(PostListResponse) _then) = _$PostListResponseCopyWithImpl;
@useResult
$Res call({
 bool success, String message, List<Post> data
});




}
/// @nodoc
class _$PostListResponseCopyWithImpl<$Res>
    implements $PostListResponseCopyWith<$Res> {
  _$PostListResponseCopyWithImpl(this._self, this._then);

  final PostListResponse _self;
  final $Res Function(PostListResponse) _then;

/// Create a copy of PostListResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? message = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<Post>,
  ));
}

}


/// Adds pattern-matching-related methods to [PostListResponse].
extension PostListResponsePatterns on PostListResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PostListResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostListResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PostListResponse value)  $default,){
final _that = this;
switch (_that) {
case _PostListResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PostListResponse value)?  $default,){
final _that = this;
switch (_that) {
case _PostListResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  String message,  List<Post> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostListResponse() when $default != null:
return $default(_that.success,_that.message,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  String message,  List<Post> data)  $default,) {final _that = this;
switch (_that) {
case _PostListResponse():
return $default(_that.success,_that.message,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  String message,  List<Post> data)?  $default,) {final _that = this;
switch (_that) {
case _PostListResponse() when $default != null:
return $default(_that.success,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PostListResponse implements PostListResponse {
  const _PostListResponse({required this.success, required this.message, required final  List<Post> data}): _data = data;
  factory _PostListResponse.fromJson(Map<String, dynamic> json) => _$PostListResponseFromJson(json);

@override final  bool success;
@override final  String message;
 final  List<Post> _data;
@override List<Post> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of PostListResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostListResponseCopyWith<_PostListResponse> get copyWith => __$PostListResponseCopyWithImpl<_PostListResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PostListResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostListResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'PostListResponse(success: $success, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$PostListResponseCopyWith<$Res> implements $PostListResponseCopyWith<$Res> {
  factory _$PostListResponseCopyWith(_PostListResponse value, $Res Function(_PostListResponse) _then) = __$PostListResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, String message, List<Post> data
});




}
/// @nodoc
class __$PostListResponseCopyWithImpl<$Res>
    implements _$PostListResponseCopyWith<$Res> {
  __$PostListResponseCopyWithImpl(this._self, this._then);

  final _PostListResponse _self;
  final $Res Function(_PostListResponse) _then;

/// Create a copy of PostListResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? message = null,Object? data = null,}) {
  return _then(_PostListResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<Post>,
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

// dart format on
