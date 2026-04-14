// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostWithReport {

 int get postId; int get fanHubId; String get fanHubName; String get fanHubSubdomain; int get authorId; String get authorUsername; String get authorDisplayName; String? get authorAvatarUrl; PostType get postType; String? get title; String get content; PostStatus get status; bool get isPinned; bool? get isAnnouncement; bool? get isSchedule; int get mediaCount; List<String> get hashtags; List<String> get mediaUrls; DateTime get postCreatedAt; DateTime? get postUpdatedAt; List<Report> get reports;
/// Create a copy of PostWithReport
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostWithReportCopyWith<PostWithReport> get copyWith => _$PostWithReportCopyWithImpl<PostWithReport>(this as PostWithReport, _$identity);

  /// Serializes this PostWithReport to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostWithReport&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.fanHubId, fanHubId) || other.fanHubId == fanHubId)&&(identical(other.fanHubName, fanHubName) || other.fanHubName == fanHubName)&&(identical(other.fanHubSubdomain, fanHubSubdomain) || other.fanHubSubdomain == fanHubSubdomain)&&(identical(other.authorId, authorId) || other.authorId == authorId)&&(identical(other.authorUsername, authorUsername) || other.authorUsername == authorUsername)&&(identical(other.authorDisplayName, authorDisplayName) || other.authorDisplayName == authorDisplayName)&&(identical(other.authorAvatarUrl, authorAvatarUrl) || other.authorAvatarUrl == authorAvatarUrl)&&(identical(other.postType, postType) || other.postType == postType)&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&(identical(other.status, status) || other.status == status)&&(identical(other.isPinned, isPinned) || other.isPinned == isPinned)&&(identical(other.isAnnouncement, isAnnouncement) || other.isAnnouncement == isAnnouncement)&&(identical(other.isSchedule, isSchedule) || other.isSchedule == isSchedule)&&(identical(other.mediaCount, mediaCount) || other.mediaCount == mediaCount)&&const DeepCollectionEquality().equals(other.hashtags, hashtags)&&const DeepCollectionEquality().equals(other.mediaUrls, mediaUrls)&&(identical(other.postCreatedAt, postCreatedAt) || other.postCreatedAt == postCreatedAt)&&(identical(other.postUpdatedAt, postUpdatedAt) || other.postUpdatedAt == postUpdatedAt)&&const DeepCollectionEquality().equals(other.reports, reports));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,postId,fanHubId,fanHubName,fanHubSubdomain,authorId,authorUsername,authorDisplayName,authorAvatarUrl,postType,title,content,status,isPinned,isAnnouncement,isSchedule,mediaCount,const DeepCollectionEquality().hash(hashtags),const DeepCollectionEquality().hash(mediaUrls),postCreatedAt,postUpdatedAt,const DeepCollectionEquality().hash(reports)]);

@override
String toString() {
  return 'PostWithReport(postId: $postId, fanHubId: $fanHubId, fanHubName: $fanHubName, fanHubSubdomain: $fanHubSubdomain, authorId: $authorId, authorUsername: $authorUsername, authorDisplayName: $authorDisplayName, authorAvatarUrl: $authorAvatarUrl, postType: $postType, title: $title, content: $content, status: $status, isPinned: $isPinned, isAnnouncement: $isAnnouncement, isSchedule: $isSchedule, mediaCount: $mediaCount, hashtags: $hashtags, mediaUrls: $mediaUrls, postCreatedAt: $postCreatedAt, postUpdatedAt: $postUpdatedAt, reports: $reports)';
}


}

/// @nodoc
abstract mixin class $PostWithReportCopyWith<$Res>  {
  factory $PostWithReportCopyWith(PostWithReport value, $Res Function(PostWithReport) _then) = _$PostWithReportCopyWithImpl;
@useResult
$Res call({
 int postId, int fanHubId, String fanHubName, String fanHubSubdomain, int authorId, String authorUsername, String authorDisplayName, String? authorAvatarUrl, PostType postType, String? title, String content, PostStatus status, bool isPinned, bool? isAnnouncement, bool? isSchedule, int mediaCount, List<String> hashtags, List<String> mediaUrls, DateTime postCreatedAt, DateTime? postUpdatedAt, List<Report> reports
});




}
/// @nodoc
class _$PostWithReportCopyWithImpl<$Res>
    implements $PostWithReportCopyWith<$Res> {
  _$PostWithReportCopyWithImpl(this._self, this._then);

  final PostWithReport _self;
  final $Res Function(PostWithReport) _then;

/// Create a copy of PostWithReport
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? postId = null,Object? fanHubId = null,Object? fanHubName = null,Object? fanHubSubdomain = null,Object? authorId = null,Object? authorUsername = null,Object? authorDisplayName = null,Object? authorAvatarUrl = freezed,Object? postType = null,Object? title = freezed,Object? content = null,Object? status = null,Object? isPinned = null,Object? isAnnouncement = freezed,Object? isSchedule = freezed,Object? mediaCount = null,Object? hashtags = null,Object? mediaUrls = null,Object? postCreatedAt = null,Object? postUpdatedAt = freezed,Object? reports = null,}) {
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
as bool,isAnnouncement: freezed == isAnnouncement ? _self.isAnnouncement : isAnnouncement // ignore: cast_nullable_to_non_nullable
as bool?,isSchedule: freezed == isSchedule ? _self.isSchedule : isSchedule // ignore: cast_nullable_to_non_nullable
as bool?,mediaCount: null == mediaCount ? _self.mediaCount : mediaCount // ignore: cast_nullable_to_non_nullable
as int,hashtags: null == hashtags ? _self.hashtags : hashtags // ignore: cast_nullable_to_non_nullable
as List<String>,mediaUrls: null == mediaUrls ? _self.mediaUrls : mediaUrls // ignore: cast_nullable_to_non_nullable
as List<String>,postCreatedAt: null == postCreatedAt ? _self.postCreatedAt : postCreatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,postUpdatedAt: freezed == postUpdatedAt ? _self.postUpdatedAt : postUpdatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,reports: null == reports ? _self.reports : reports // ignore: cast_nullable_to_non_nullable
as List<Report>,
  ));
}

}


/// Adds pattern-matching-related methods to [PostWithReport].
extension PostWithReportPatterns on PostWithReport {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PostWithReport value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostWithReport() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PostWithReport value)  $default,){
final _that = this;
switch (_that) {
case _PostWithReport():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PostWithReport value)?  $default,){
final _that = this;
switch (_that) {
case _PostWithReport() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int postId,  int fanHubId,  String fanHubName,  String fanHubSubdomain,  int authorId,  String authorUsername,  String authorDisplayName,  String? authorAvatarUrl,  PostType postType,  String? title,  String content,  PostStatus status,  bool isPinned,  bool? isAnnouncement,  bool? isSchedule,  int mediaCount,  List<String> hashtags,  List<String> mediaUrls,  DateTime postCreatedAt,  DateTime? postUpdatedAt,  List<Report> reports)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostWithReport() when $default != null:
return $default(_that.postId,_that.fanHubId,_that.fanHubName,_that.fanHubSubdomain,_that.authorId,_that.authorUsername,_that.authorDisplayName,_that.authorAvatarUrl,_that.postType,_that.title,_that.content,_that.status,_that.isPinned,_that.isAnnouncement,_that.isSchedule,_that.mediaCount,_that.hashtags,_that.mediaUrls,_that.postCreatedAt,_that.postUpdatedAt,_that.reports);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int postId,  int fanHubId,  String fanHubName,  String fanHubSubdomain,  int authorId,  String authorUsername,  String authorDisplayName,  String? authorAvatarUrl,  PostType postType,  String? title,  String content,  PostStatus status,  bool isPinned,  bool? isAnnouncement,  bool? isSchedule,  int mediaCount,  List<String> hashtags,  List<String> mediaUrls,  DateTime postCreatedAt,  DateTime? postUpdatedAt,  List<Report> reports)  $default,) {final _that = this;
switch (_that) {
case _PostWithReport():
return $default(_that.postId,_that.fanHubId,_that.fanHubName,_that.fanHubSubdomain,_that.authorId,_that.authorUsername,_that.authorDisplayName,_that.authorAvatarUrl,_that.postType,_that.title,_that.content,_that.status,_that.isPinned,_that.isAnnouncement,_that.isSchedule,_that.mediaCount,_that.hashtags,_that.mediaUrls,_that.postCreatedAt,_that.postUpdatedAt,_that.reports);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int postId,  int fanHubId,  String fanHubName,  String fanHubSubdomain,  int authorId,  String authorUsername,  String authorDisplayName,  String? authorAvatarUrl,  PostType postType,  String? title,  String content,  PostStatus status,  bool isPinned,  bool? isAnnouncement,  bool? isSchedule,  int mediaCount,  List<String> hashtags,  List<String> mediaUrls,  DateTime postCreatedAt,  DateTime? postUpdatedAt,  List<Report> reports)?  $default,) {final _that = this;
switch (_that) {
case _PostWithReport() when $default != null:
return $default(_that.postId,_that.fanHubId,_that.fanHubName,_that.fanHubSubdomain,_that.authorId,_that.authorUsername,_that.authorDisplayName,_that.authorAvatarUrl,_that.postType,_that.title,_that.content,_that.status,_that.isPinned,_that.isAnnouncement,_that.isSchedule,_that.mediaCount,_that.hashtags,_that.mediaUrls,_that.postCreatedAt,_that.postUpdatedAt,_that.reports);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PostWithReport implements PostWithReport {
  const _PostWithReport({required this.postId, required this.fanHubId, required this.fanHubName, required this.fanHubSubdomain, required this.authorId, required this.authorUsername, required this.authorDisplayName, this.authorAvatarUrl, required this.postType, this.title, required this.content, required this.status, this.isPinned = false, this.isAnnouncement, this.isSchedule, this.mediaCount = 0, final  List<String> hashtags = const [], final  List<String> mediaUrls = const [], required this.postCreatedAt, this.postUpdatedAt, required final  List<Report> reports}): _hashtags = hashtags,_mediaUrls = mediaUrls,_reports = reports;
  factory _PostWithReport.fromJson(Map<String, dynamic> json) => _$PostWithReportFromJson(json);

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
@override final  bool? isAnnouncement;
@override final  bool? isSchedule;
@override@JsonKey() final  int mediaCount;
 final  List<String> _hashtags;
@override@JsonKey() List<String> get hashtags {
  if (_hashtags is EqualUnmodifiableListView) return _hashtags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_hashtags);
}

 final  List<String> _mediaUrls;
@override@JsonKey() List<String> get mediaUrls {
  if (_mediaUrls is EqualUnmodifiableListView) return _mediaUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_mediaUrls);
}

@override final  DateTime postCreatedAt;
@override final  DateTime? postUpdatedAt;
 final  List<Report> _reports;
@override List<Report> get reports {
  if (_reports is EqualUnmodifiableListView) return _reports;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_reports);
}


/// Create a copy of PostWithReport
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostWithReportCopyWith<_PostWithReport> get copyWith => __$PostWithReportCopyWithImpl<_PostWithReport>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PostWithReportToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostWithReport&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.fanHubId, fanHubId) || other.fanHubId == fanHubId)&&(identical(other.fanHubName, fanHubName) || other.fanHubName == fanHubName)&&(identical(other.fanHubSubdomain, fanHubSubdomain) || other.fanHubSubdomain == fanHubSubdomain)&&(identical(other.authorId, authorId) || other.authorId == authorId)&&(identical(other.authorUsername, authorUsername) || other.authorUsername == authorUsername)&&(identical(other.authorDisplayName, authorDisplayName) || other.authorDisplayName == authorDisplayName)&&(identical(other.authorAvatarUrl, authorAvatarUrl) || other.authorAvatarUrl == authorAvatarUrl)&&(identical(other.postType, postType) || other.postType == postType)&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&(identical(other.status, status) || other.status == status)&&(identical(other.isPinned, isPinned) || other.isPinned == isPinned)&&(identical(other.isAnnouncement, isAnnouncement) || other.isAnnouncement == isAnnouncement)&&(identical(other.isSchedule, isSchedule) || other.isSchedule == isSchedule)&&(identical(other.mediaCount, mediaCount) || other.mediaCount == mediaCount)&&const DeepCollectionEquality().equals(other._hashtags, _hashtags)&&const DeepCollectionEquality().equals(other._mediaUrls, _mediaUrls)&&(identical(other.postCreatedAt, postCreatedAt) || other.postCreatedAt == postCreatedAt)&&(identical(other.postUpdatedAt, postUpdatedAt) || other.postUpdatedAt == postUpdatedAt)&&const DeepCollectionEquality().equals(other._reports, _reports));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,postId,fanHubId,fanHubName,fanHubSubdomain,authorId,authorUsername,authorDisplayName,authorAvatarUrl,postType,title,content,status,isPinned,isAnnouncement,isSchedule,mediaCount,const DeepCollectionEquality().hash(_hashtags),const DeepCollectionEquality().hash(_mediaUrls),postCreatedAt,postUpdatedAt,const DeepCollectionEquality().hash(_reports)]);

@override
String toString() {
  return 'PostWithReport(postId: $postId, fanHubId: $fanHubId, fanHubName: $fanHubName, fanHubSubdomain: $fanHubSubdomain, authorId: $authorId, authorUsername: $authorUsername, authorDisplayName: $authorDisplayName, authorAvatarUrl: $authorAvatarUrl, postType: $postType, title: $title, content: $content, status: $status, isPinned: $isPinned, isAnnouncement: $isAnnouncement, isSchedule: $isSchedule, mediaCount: $mediaCount, hashtags: $hashtags, mediaUrls: $mediaUrls, postCreatedAt: $postCreatedAt, postUpdatedAt: $postUpdatedAt, reports: $reports)';
}


}

/// @nodoc
abstract mixin class _$PostWithReportCopyWith<$Res> implements $PostWithReportCopyWith<$Res> {
  factory _$PostWithReportCopyWith(_PostWithReport value, $Res Function(_PostWithReport) _then) = __$PostWithReportCopyWithImpl;
@override @useResult
$Res call({
 int postId, int fanHubId, String fanHubName, String fanHubSubdomain, int authorId, String authorUsername, String authorDisplayName, String? authorAvatarUrl, PostType postType, String? title, String content, PostStatus status, bool isPinned, bool? isAnnouncement, bool? isSchedule, int mediaCount, List<String> hashtags, List<String> mediaUrls, DateTime postCreatedAt, DateTime? postUpdatedAt, List<Report> reports
});




}
/// @nodoc
class __$PostWithReportCopyWithImpl<$Res>
    implements _$PostWithReportCopyWith<$Res> {
  __$PostWithReportCopyWithImpl(this._self, this._then);

  final _PostWithReport _self;
  final $Res Function(_PostWithReport) _then;

/// Create a copy of PostWithReport
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? postId = null,Object? fanHubId = null,Object? fanHubName = null,Object? fanHubSubdomain = null,Object? authorId = null,Object? authorUsername = null,Object? authorDisplayName = null,Object? authorAvatarUrl = freezed,Object? postType = null,Object? title = freezed,Object? content = null,Object? status = null,Object? isPinned = null,Object? isAnnouncement = freezed,Object? isSchedule = freezed,Object? mediaCount = null,Object? hashtags = null,Object? mediaUrls = null,Object? postCreatedAt = null,Object? postUpdatedAt = freezed,Object? reports = null,}) {
  return _then(_PostWithReport(
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
as bool,isAnnouncement: freezed == isAnnouncement ? _self.isAnnouncement : isAnnouncement // ignore: cast_nullable_to_non_nullable
as bool?,isSchedule: freezed == isSchedule ? _self.isSchedule : isSchedule // ignore: cast_nullable_to_non_nullable
as bool?,mediaCount: null == mediaCount ? _self.mediaCount : mediaCount // ignore: cast_nullable_to_non_nullable
as int,hashtags: null == hashtags ? _self._hashtags : hashtags // ignore: cast_nullable_to_non_nullable
as List<String>,mediaUrls: null == mediaUrls ? _self._mediaUrls : mediaUrls // ignore: cast_nullable_to_non_nullable
as List<String>,postCreatedAt: null == postCreatedAt ? _self.postCreatedAt : postCreatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,postUpdatedAt: freezed == postUpdatedAt ? _self.postUpdatedAt : postUpdatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,reports: null == reports ? _self._reports : reports // ignore: cast_nullable_to_non_nullable
as List<Report>,
  ));
}


}


/// @nodoc
mixin _$Report {

 int get reportId; int get reportedByUserId; String get reportedByUsername; String get reportedByDisplayName; String get reason; ReportStatus get reportStatus; DateTime get reportCreatedAt; int? get resolvedByUserId; String? get resolvedByUsername; String? get resolvedByDisplayName; String? get resolveMessage;
/// Create a copy of Report
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportCopyWith<Report> get copyWith => _$ReportCopyWithImpl<Report>(this as Report, _$identity);

  /// Serializes this Report to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Report&&(identical(other.reportId, reportId) || other.reportId == reportId)&&(identical(other.reportedByUserId, reportedByUserId) || other.reportedByUserId == reportedByUserId)&&(identical(other.reportedByUsername, reportedByUsername) || other.reportedByUsername == reportedByUsername)&&(identical(other.reportedByDisplayName, reportedByDisplayName) || other.reportedByDisplayName == reportedByDisplayName)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.reportStatus, reportStatus) || other.reportStatus == reportStatus)&&(identical(other.reportCreatedAt, reportCreatedAt) || other.reportCreatedAt == reportCreatedAt)&&(identical(other.resolvedByUserId, resolvedByUserId) || other.resolvedByUserId == resolvedByUserId)&&(identical(other.resolvedByUsername, resolvedByUsername) || other.resolvedByUsername == resolvedByUsername)&&(identical(other.resolvedByDisplayName, resolvedByDisplayName) || other.resolvedByDisplayName == resolvedByDisplayName)&&(identical(other.resolveMessage, resolveMessage) || other.resolveMessage == resolveMessage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reportId,reportedByUserId,reportedByUsername,reportedByDisplayName,reason,reportStatus,reportCreatedAt,resolvedByUserId,resolvedByUsername,resolvedByDisplayName,resolveMessage);

@override
String toString() {
  return 'Report(reportId: $reportId, reportedByUserId: $reportedByUserId, reportedByUsername: $reportedByUsername, reportedByDisplayName: $reportedByDisplayName, reason: $reason, reportStatus: $reportStatus, reportCreatedAt: $reportCreatedAt, resolvedByUserId: $resolvedByUserId, resolvedByUsername: $resolvedByUsername, resolvedByDisplayName: $resolvedByDisplayName, resolveMessage: $resolveMessage)';
}


}

/// @nodoc
abstract mixin class $ReportCopyWith<$Res>  {
  factory $ReportCopyWith(Report value, $Res Function(Report) _then) = _$ReportCopyWithImpl;
@useResult
$Res call({
 int reportId, int reportedByUserId, String reportedByUsername, String reportedByDisplayName, String reason, ReportStatus reportStatus, DateTime reportCreatedAt, int? resolvedByUserId, String? resolvedByUsername, String? resolvedByDisplayName, String? resolveMessage
});




}
/// @nodoc
class _$ReportCopyWithImpl<$Res>
    implements $ReportCopyWith<$Res> {
  _$ReportCopyWithImpl(this._self, this._then);

  final Report _self;
  final $Res Function(Report) _then;

/// Create a copy of Report
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reportId = null,Object? reportedByUserId = null,Object? reportedByUsername = null,Object? reportedByDisplayName = null,Object? reason = null,Object? reportStatus = null,Object? reportCreatedAt = null,Object? resolvedByUserId = freezed,Object? resolvedByUsername = freezed,Object? resolvedByDisplayName = freezed,Object? resolveMessage = freezed,}) {
  return _then(_self.copyWith(
reportId: null == reportId ? _self.reportId : reportId // ignore: cast_nullable_to_non_nullable
as int,reportedByUserId: null == reportedByUserId ? _self.reportedByUserId : reportedByUserId // ignore: cast_nullable_to_non_nullable
as int,reportedByUsername: null == reportedByUsername ? _self.reportedByUsername : reportedByUsername // ignore: cast_nullable_to_non_nullable
as String,reportedByDisplayName: null == reportedByDisplayName ? _self.reportedByDisplayName : reportedByDisplayName // ignore: cast_nullable_to_non_nullable
as String,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,reportStatus: null == reportStatus ? _self.reportStatus : reportStatus // ignore: cast_nullable_to_non_nullable
as ReportStatus,reportCreatedAt: null == reportCreatedAt ? _self.reportCreatedAt : reportCreatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,resolvedByUserId: freezed == resolvedByUserId ? _self.resolvedByUserId : resolvedByUserId // ignore: cast_nullable_to_non_nullable
as int?,resolvedByUsername: freezed == resolvedByUsername ? _self.resolvedByUsername : resolvedByUsername // ignore: cast_nullable_to_non_nullable
as String?,resolvedByDisplayName: freezed == resolvedByDisplayName ? _self.resolvedByDisplayName : resolvedByDisplayName // ignore: cast_nullable_to_non_nullable
as String?,resolveMessage: freezed == resolveMessage ? _self.resolveMessage : resolveMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Report].
extension ReportPatterns on Report {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Report value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Report() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Report value)  $default,){
final _that = this;
switch (_that) {
case _Report():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Report value)?  $default,){
final _that = this;
switch (_that) {
case _Report() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int reportId,  int reportedByUserId,  String reportedByUsername,  String reportedByDisplayName,  String reason,  ReportStatus reportStatus,  DateTime reportCreatedAt,  int? resolvedByUserId,  String? resolvedByUsername,  String? resolvedByDisplayName,  String? resolveMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Report() when $default != null:
return $default(_that.reportId,_that.reportedByUserId,_that.reportedByUsername,_that.reportedByDisplayName,_that.reason,_that.reportStatus,_that.reportCreatedAt,_that.resolvedByUserId,_that.resolvedByUsername,_that.resolvedByDisplayName,_that.resolveMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int reportId,  int reportedByUserId,  String reportedByUsername,  String reportedByDisplayName,  String reason,  ReportStatus reportStatus,  DateTime reportCreatedAt,  int? resolvedByUserId,  String? resolvedByUsername,  String? resolvedByDisplayName,  String? resolveMessage)  $default,) {final _that = this;
switch (_that) {
case _Report():
return $default(_that.reportId,_that.reportedByUserId,_that.reportedByUsername,_that.reportedByDisplayName,_that.reason,_that.reportStatus,_that.reportCreatedAt,_that.resolvedByUserId,_that.resolvedByUsername,_that.resolvedByDisplayName,_that.resolveMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int reportId,  int reportedByUserId,  String reportedByUsername,  String reportedByDisplayName,  String reason,  ReportStatus reportStatus,  DateTime reportCreatedAt,  int? resolvedByUserId,  String? resolvedByUsername,  String? resolvedByDisplayName,  String? resolveMessage)?  $default,) {final _that = this;
switch (_that) {
case _Report() when $default != null:
return $default(_that.reportId,_that.reportedByUserId,_that.reportedByUsername,_that.reportedByDisplayName,_that.reason,_that.reportStatus,_that.reportCreatedAt,_that.resolvedByUserId,_that.resolvedByUsername,_that.resolvedByDisplayName,_that.resolveMessage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Report implements Report {
  const _Report({required this.reportId, required this.reportedByUserId, required this.reportedByUsername, required this.reportedByDisplayName, required this.reason, required this.reportStatus, required this.reportCreatedAt, this.resolvedByUserId, this.resolvedByUsername, this.resolvedByDisplayName, this.resolveMessage});
  factory _Report.fromJson(Map<String, dynamic> json) => _$ReportFromJson(json);

@override final  int reportId;
@override final  int reportedByUserId;
@override final  String reportedByUsername;
@override final  String reportedByDisplayName;
@override final  String reason;
@override final  ReportStatus reportStatus;
@override final  DateTime reportCreatedAt;
@override final  int? resolvedByUserId;
@override final  String? resolvedByUsername;
@override final  String? resolvedByDisplayName;
@override final  String? resolveMessage;

/// Create a copy of Report
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportCopyWith<_Report> get copyWith => __$ReportCopyWithImpl<_Report>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReportToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Report&&(identical(other.reportId, reportId) || other.reportId == reportId)&&(identical(other.reportedByUserId, reportedByUserId) || other.reportedByUserId == reportedByUserId)&&(identical(other.reportedByUsername, reportedByUsername) || other.reportedByUsername == reportedByUsername)&&(identical(other.reportedByDisplayName, reportedByDisplayName) || other.reportedByDisplayName == reportedByDisplayName)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.reportStatus, reportStatus) || other.reportStatus == reportStatus)&&(identical(other.reportCreatedAt, reportCreatedAt) || other.reportCreatedAt == reportCreatedAt)&&(identical(other.resolvedByUserId, resolvedByUserId) || other.resolvedByUserId == resolvedByUserId)&&(identical(other.resolvedByUsername, resolvedByUsername) || other.resolvedByUsername == resolvedByUsername)&&(identical(other.resolvedByDisplayName, resolvedByDisplayName) || other.resolvedByDisplayName == resolvedByDisplayName)&&(identical(other.resolveMessage, resolveMessage) || other.resolveMessage == resolveMessage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reportId,reportedByUserId,reportedByUsername,reportedByDisplayName,reason,reportStatus,reportCreatedAt,resolvedByUserId,resolvedByUsername,resolvedByDisplayName,resolveMessage);

@override
String toString() {
  return 'Report(reportId: $reportId, reportedByUserId: $reportedByUserId, reportedByUsername: $reportedByUsername, reportedByDisplayName: $reportedByDisplayName, reason: $reason, reportStatus: $reportStatus, reportCreatedAt: $reportCreatedAt, resolvedByUserId: $resolvedByUserId, resolvedByUsername: $resolvedByUsername, resolvedByDisplayName: $resolvedByDisplayName, resolveMessage: $resolveMessage)';
}


}

/// @nodoc
abstract mixin class _$ReportCopyWith<$Res> implements $ReportCopyWith<$Res> {
  factory _$ReportCopyWith(_Report value, $Res Function(_Report) _then) = __$ReportCopyWithImpl;
@override @useResult
$Res call({
 int reportId, int reportedByUserId, String reportedByUsername, String reportedByDisplayName, String reason, ReportStatus reportStatus, DateTime reportCreatedAt, int? resolvedByUserId, String? resolvedByUsername, String? resolvedByDisplayName, String? resolveMessage
});




}
/// @nodoc
class __$ReportCopyWithImpl<$Res>
    implements _$ReportCopyWith<$Res> {
  __$ReportCopyWithImpl(this._self, this._then);

  final _Report _self;
  final $Res Function(_Report) _then;

/// Create a copy of Report
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? reportId = null,Object? reportedByUserId = null,Object? reportedByUsername = null,Object? reportedByDisplayName = null,Object? reason = null,Object? reportStatus = null,Object? reportCreatedAt = null,Object? resolvedByUserId = freezed,Object? resolvedByUsername = freezed,Object? resolvedByDisplayName = freezed,Object? resolveMessage = freezed,}) {
  return _then(_Report(
reportId: null == reportId ? _self.reportId : reportId // ignore: cast_nullable_to_non_nullable
as int,reportedByUserId: null == reportedByUserId ? _self.reportedByUserId : reportedByUserId // ignore: cast_nullable_to_non_nullable
as int,reportedByUsername: null == reportedByUsername ? _self.reportedByUsername : reportedByUsername // ignore: cast_nullable_to_non_nullable
as String,reportedByDisplayName: null == reportedByDisplayName ? _self.reportedByDisplayName : reportedByDisplayName // ignore: cast_nullable_to_non_nullable
as String,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,reportStatus: null == reportStatus ? _self.reportStatus : reportStatus // ignore: cast_nullable_to_non_nullable
as ReportStatus,reportCreatedAt: null == reportCreatedAt ? _self.reportCreatedAt : reportCreatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,resolvedByUserId: freezed == resolvedByUserId ? _self.resolvedByUserId : resolvedByUserId // ignore: cast_nullable_to_non_nullable
as int?,resolvedByUsername: freezed == resolvedByUsername ? _self.resolvedByUsername : resolvedByUsername // ignore: cast_nullable_to_non_nullable
as String?,resolvedByDisplayName: freezed == resolvedByDisplayName ? _self.resolvedByDisplayName : resolvedByDisplayName // ignore: cast_nullable_to_non_nullable
as String?,resolveMessage: freezed == resolveMessage ? _self.resolveMessage : resolveMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ReportListResponse {

 bool get success; String get message; List<Report> get data;
/// Create a copy of ReportListResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportListResponseCopyWith<ReportListResponse> get copyWith => _$ReportListResponseCopyWithImpl<ReportListResponse>(this as ReportListResponse, _$identity);

  /// Serializes this ReportListResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportListResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'ReportListResponse(success: $success, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $ReportListResponseCopyWith<$Res>  {
  factory $ReportListResponseCopyWith(ReportListResponse value, $Res Function(ReportListResponse) _then) = _$ReportListResponseCopyWithImpl;
@useResult
$Res call({
 bool success, String message, List<Report> data
});




}
/// @nodoc
class _$ReportListResponseCopyWithImpl<$Res>
    implements $ReportListResponseCopyWith<$Res> {
  _$ReportListResponseCopyWithImpl(this._self, this._then);

  final ReportListResponse _self;
  final $Res Function(ReportListResponse) _then;

/// Create a copy of ReportListResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? message = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<Report>,
  ));
}

}


/// Adds pattern-matching-related methods to [ReportListResponse].
extension ReportListResponsePatterns on ReportListResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReportListResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReportListResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReportListResponse value)  $default,){
final _that = this;
switch (_that) {
case _ReportListResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReportListResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ReportListResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  String message,  List<Report> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReportListResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  String message,  List<Report> data)  $default,) {final _that = this;
switch (_that) {
case _ReportListResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  String message,  List<Report> data)?  $default,) {final _that = this;
switch (_that) {
case _ReportListResponse() when $default != null:
return $default(_that.success,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReportListResponse implements ReportListResponse {
  const _ReportListResponse({required this.success, required this.message, required final  List<Report> data}): _data = data;
  factory _ReportListResponse.fromJson(Map<String, dynamic> json) => _$ReportListResponseFromJson(json);

@override final  bool success;
@override final  String message;
 final  List<Report> _data;
@override List<Report> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of ReportListResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportListResponseCopyWith<_ReportListResponse> get copyWith => __$ReportListResponseCopyWithImpl<_ReportListResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReportListResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReportListResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'ReportListResponse(success: $success, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$ReportListResponseCopyWith<$Res> implements $ReportListResponseCopyWith<$Res> {
  factory _$ReportListResponseCopyWith(_ReportListResponse value, $Res Function(_ReportListResponse) _then) = __$ReportListResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, String message, List<Report> data
});




}
/// @nodoc
class __$ReportListResponseCopyWithImpl<$Res>
    implements _$ReportListResponseCopyWith<$Res> {
  __$ReportListResponseCopyWithImpl(this._self, this._then);

  final _ReportListResponse _self;
  final $Res Function(_ReportListResponse) _then;

/// Create a copy of ReportListResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? message = null,Object? data = null,}) {
  return _then(_ReportListResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<Report>,
  ));
}


}

// dart format on
