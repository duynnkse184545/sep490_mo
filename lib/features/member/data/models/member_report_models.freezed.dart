// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_report_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MemberWithReports {

 int get memberId; int? get userId; String? get username; String? get displayName; String? get avatarUrl; int get fanHubId; String get fanHubName; String get fanHubSubdomain; MemberRole get roleInHub; MemberStatus get memberStatus; DateTime? get joinedAt; List<Report> get reports;
/// Create a copy of MemberWithReports
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MemberWithReportsCopyWith<MemberWithReports> get copyWith => _$MemberWithReportsCopyWithImpl<MemberWithReports>(this as MemberWithReports, _$identity);

  /// Serializes this MemberWithReports to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MemberWithReports&&(identical(other.memberId, memberId) || other.memberId == memberId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.username, username) || other.username == username)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.fanHubId, fanHubId) || other.fanHubId == fanHubId)&&(identical(other.fanHubName, fanHubName) || other.fanHubName == fanHubName)&&(identical(other.fanHubSubdomain, fanHubSubdomain) || other.fanHubSubdomain == fanHubSubdomain)&&(identical(other.roleInHub, roleInHub) || other.roleInHub == roleInHub)&&(identical(other.memberStatus, memberStatus) || other.memberStatus == memberStatus)&&(identical(other.joinedAt, joinedAt) || other.joinedAt == joinedAt)&&const DeepCollectionEquality().equals(other.reports, reports));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,memberId,userId,username,displayName,avatarUrl,fanHubId,fanHubName,fanHubSubdomain,roleInHub,memberStatus,joinedAt,const DeepCollectionEquality().hash(reports));

@override
String toString() {
  return 'MemberWithReports(memberId: $memberId, userId: $userId, username: $username, displayName: $displayName, avatarUrl: $avatarUrl, fanHubId: $fanHubId, fanHubName: $fanHubName, fanHubSubdomain: $fanHubSubdomain, roleInHub: $roleInHub, memberStatus: $memberStatus, joinedAt: $joinedAt, reports: $reports)';
}


}

/// @nodoc
abstract mixin class $MemberWithReportsCopyWith<$Res>  {
  factory $MemberWithReportsCopyWith(MemberWithReports value, $Res Function(MemberWithReports) _then) = _$MemberWithReportsCopyWithImpl;
@useResult
$Res call({
 int memberId, int? userId, String? username, String? displayName, String? avatarUrl, int fanHubId, String fanHubName, String fanHubSubdomain, MemberRole roleInHub, MemberStatus memberStatus, DateTime? joinedAt, List<Report> reports
});




}
/// @nodoc
class _$MemberWithReportsCopyWithImpl<$Res>
    implements $MemberWithReportsCopyWith<$Res> {
  _$MemberWithReportsCopyWithImpl(this._self, this._then);

  final MemberWithReports _self;
  final $Res Function(MemberWithReports) _then;

/// Create a copy of MemberWithReports
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? memberId = null,Object? userId = freezed,Object? username = freezed,Object? displayName = freezed,Object? avatarUrl = freezed,Object? fanHubId = null,Object? fanHubName = null,Object? fanHubSubdomain = null,Object? roleInHub = null,Object? memberStatus = null,Object? joinedAt = freezed,Object? reports = null,}) {
  return _then(_self.copyWith(
memberId: null == memberId ? _self.memberId : memberId // ignore: cast_nullable_to_non_nullable
as int,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,fanHubId: null == fanHubId ? _self.fanHubId : fanHubId // ignore: cast_nullable_to_non_nullable
as int,fanHubName: null == fanHubName ? _self.fanHubName : fanHubName // ignore: cast_nullable_to_non_nullable
as String,fanHubSubdomain: null == fanHubSubdomain ? _self.fanHubSubdomain : fanHubSubdomain // ignore: cast_nullable_to_non_nullable
as String,roleInHub: null == roleInHub ? _self.roleInHub : roleInHub // ignore: cast_nullable_to_non_nullable
as MemberRole,memberStatus: null == memberStatus ? _self.memberStatus : memberStatus // ignore: cast_nullable_to_non_nullable
as MemberStatus,joinedAt: freezed == joinedAt ? _self.joinedAt : joinedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,reports: null == reports ? _self.reports : reports // ignore: cast_nullable_to_non_nullable
as List<Report>,
  ));
}

}


/// Adds pattern-matching-related methods to [MemberWithReports].
extension MemberWithReportsPatterns on MemberWithReports {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MemberWithReports value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MemberWithReports() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MemberWithReports value)  $default,){
final _that = this;
switch (_that) {
case _MemberWithReports():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MemberWithReports value)?  $default,){
final _that = this;
switch (_that) {
case _MemberWithReports() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int memberId,  int? userId,  String? username,  String? displayName,  String? avatarUrl,  int fanHubId,  String fanHubName,  String fanHubSubdomain,  MemberRole roleInHub,  MemberStatus memberStatus,  DateTime? joinedAt,  List<Report> reports)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MemberWithReports() when $default != null:
return $default(_that.memberId,_that.userId,_that.username,_that.displayName,_that.avatarUrl,_that.fanHubId,_that.fanHubName,_that.fanHubSubdomain,_that.roleInHub,_that.memberStatus,_that.joinedAt,_that.reports);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int memberId,  int? userId,  String? username,  String? displayName,  String? avatarUrl,  int fanHubId,  String fanHubName,  String fanHubSubdomain,  MemberRole roleInHub,  MemberStatus memberStatus,  DateTime? joinedAt,  List<Report> reports)  $default,) {final _that = this;
switch (_that) {
case _MemberWithReports():
return $default(_that.memberId,_that.userId,_that.username,_that.displayName,_that.avatarUrl,_that.fanHubId,_that.fanHubName,_that.fanHubSubdomain,_that.roleInHub,_that.memberStatus,_that.joinedAt,_that.reports);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int memberId,  int? userId,  String? username,  String? displayName,  String? avatarUrl,  int fanHubId,  String fanHubName,  String fanHubSubdomain,  MemberRole roleInHub,  MemberStatus memberStatus,  DateTime? joinedAt,  List<Report> reports)?  $default,) {final _that = this;
switch (_that) {
case _MemberWithReports() when $default != null:
return $default(_that.memberId,_that.userId,_that.username,_that.displayName,_that.avatarUrl,_that.fanHubId,_that.fanHubName,_that.fanHubSubdomain,_that.roleInHub,_that.memberStatus,_that.joinedAt,_that.reports);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MemberWithReports implements MemberWithReports {
  const _MemberWithReports({required this.memberId, this.userId, this.username, this.displayName, this.avatarUrl, required this.fanHubId, required this.fanHubName, required this.fanHubSubdomain, required this.roleInHub, required this.memberStatus, this.joinedAt, required final  List<Report> reports}): _reports = reports;
  factory _MemberWithReports.fromJson(Map<String, dynamic> json) => _$MemberWithReportsFromJson(json);

@override final  int memberId;
@override final  int? userId;
@override final  String? username;
@override final  String? displayName;
@override final  String? avatarUrl;
@override final  int fanHubId;
@override final  String fanHubName;
@override final  String fanHubSubdomain;
@override final  MemberRole roleInHub;
@override final  MemberStatus memberStatus;
@override final  DateTime? joinedAt;
 final  List<Report> _reports;
@override List<Report> get reports {
  if (_reports is EqualUnmodifiableListView) return _reports;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_reports);
}


/// Create a copy of MemberWithReports
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MemberWithReportsCopyWith<_MemberWithReports> get copyWith => __$MemberWithReportsCopyWithImpl<_MemberWithReports>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MemberWithReportsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MemberWithReports&&(identical(other.memberId, memberId) || other.memberId == memberId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.username, username) || other.username == username)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.fanHubId, fanHubId) || other.fanHubId == fanHubId)&&(identical(other.fanHubName, fanHubName) || other.fanHubName == fanHubName)&&(identical(other.fanHubSubdomain, fanHubSubdomain) || other.fanHubSubdomain == fanHubSubdomain)&&(identical(other.roleInHub, roleInHub) || other.roleInHub == roleInHub)&&(identical(other.memberStatus, memberStatus) || other.memberStatus == memberStatus)&&(identical(other.joinedAt, joinedAt) || other.joinedAt == joinedAt)&&const DeepCollectionEquality().equals(other._reports, _reports));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,memberId,userId,username,displayName,avatarUrl,fanHubId,fanHubName,fanHubSubdomain,roleInHub,memberStatus,joinedAt,const DeepCollectionEquality().hash(_reports));

@override
String toString() {
  return 'MemberWithReports(memberId: $memberId, userId: $userId, username: $username, displayName: $displayName, avatarUrl: $avatarUrl, fanHubId: $fanHubId, fanHubName: $fanHubName, fanHubSubdomain: $fanHubSubdomain, roleInHub: $roleInHub, memberStatus: $memberStatus, joinedAt: $joinedAt, reports: $reports)';
}


}

/// @nodoc
abstract mixin class _$MemberWithReportsCopyWith<$Res> implements $MemberWithReportsCopyWith<$Res> {
  factory _$MemberWithReportsCopyWith(_MemberWithReports value, $Res Function(_MemberWithReports) _then) = __$MemberWithReportsCopyWithImpl;
@override @useResult
$Res call({
 int memberId, int? userId, String? username, String? displayName, String? avatarUrl, int fanHubId, String fanHubName, String fanHubSubdomain, MemberRole roleInHub, MemberStatus memberStatus, DateTime? joinedAt, List<Report> reports
});




}
/// @nodoc
class __$MemberWithReportsCopyWithImpl<$Res>
    implements _$MemberWithReportsCopyWith<$Res> {
  __$MemberWithReportsCopyWithImpl(this._self, this._then);

  final _MemberWithReports _self;
  final $Res Function(_MemberWithReports) _then;

/// Create a copy of MemberWithReports
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? memberId = null,Object? userId = freezed,Object? username = freezed,Object? displayName = freezed,Object? avatarUrl = freezed,Object? fanHubId = null,Object? fanHubName = null,Object? fanHubSubdomain = null,Object? roleInHub = null,Object? memberStatus = null,Object? joinedAt = freezed,Object? reports = null,}) {
  return _then(_MemberWithReports(
memberId: null == memberId ? _self.memberId : memberId // ignore: cast_nullable_to_non_nullable
as int,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,fanHubId: null == fanHubId ? _self.fanHubId : fanHubId // ignore: cast_nullable_to_non_nullable
as int,fanHubName: null == fanHubName ? _self.fanHubName : fanHubName // ignore: cast_nullable_to_non_nullable
as String,fanHubSubdomain: null == fanHubSubdomain ? _self.fanHubSubdomain : fanHubSubdomain // ignore: cast_nullable_to_non_nullable
as String,roleInHub: null == roleInHub ? _self.roleInHub : roleInHub // ignore: cast_nullable_to_non_nullable
as MemberRole,memberStatus: null == memberStatus ? _self.memberStatus : memberStatus // ignore: cast_nullable_to_non_nullable
as MemberStatus,joinedAt: freezed == joinedAt ? _self.joinedAt : joinedAt // ignore: cast_nullable_to_non_nullable
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

// dart format on
