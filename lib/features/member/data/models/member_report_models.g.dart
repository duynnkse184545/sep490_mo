// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_report_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MemberWithReports _$MemberWithReportsFromJson(Map<String, dynamic> json) =>
    _MemberWithReports(
      memberId: (json['memberId'] as num).toInt(),
      userId: (json['userId'] as num?)?.toInt(),
      username: json['username'] as String?,
      displayName: json['displayName'] as String?,
      avatarUrl: json['avatarUrl'] as String?,
      fanHubId: (json['fanHubId'] as num).toInt(),
      fanHubName: json['fanHubName'] as String,
      fanHubSubdomain: json['fanHubSubdomain'] as String,
      roleInHub: $enumDecode(_$MemberRoleEnumMap, json['roleInHub']),
      memberStatus: $enumDecode(_$MemberStatusEnumMap, json['memberStatus']),
      joinedAt: json['joinedAt'] == null
          ? null
          : DateTime.parse(json['joinedAt'] as String),
      reports: (json['reports'] as List<dynamic>)
          .map((e) => Report.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MemberWithReportsToJson(_MemberWithReports instance) =>
    <String, dynamic>{
      'memberId': instance.memberId,
      'userId': instance.userId,
      'username': instance.username,
      'displayName': instance.displayName,
      'avatarUrl': instance.avatarUrl,
      'fanHubId': instance.fanHubId,
      'fanHubName': instance.fanHubName,
      'fanHubSubdomain': instance.fanHubSubdomain,
      'roleInHub': _$MemberRoleEnumMap[instance.roleInHub]!,
      'memberStatus': _$MemberStatusEnumMap[instance.memberStatus]!,
      'joinedAt': instance.joinedAt?.toIso8601String(),
      'reports': instance.reports,
    };

const _$MemberRoleEnumMap = {
  MemberRole.vtuber: 'VTUBER',
  MemberRole.moderator: 'MODERATOR',
  MemberRole.member: 'MEMBER',
};

const _$MemberStatusEnumMap = {
  MemberStatus.pending: 'PENDING',
  MemberStatus.joined: 'JOINED',
  MemberStatus.rejected: 'REJECTED',
};

_MemberWithBans _$MemberWithBansFromJson(Map<String, dynamic> json) =>
    _MemberWithBans(
      memberId: (json['memberId'] as num).toInt(),
      userId: (json['userId'] as num?)?.toInt(),
      username: json['username'] as String?,
      displayName: json['displayName'] as String?,
      avatarUrl: json['avatarUrl'] as String?,
      fanHubId: (json['fanHubId'] as num).toInt(),
      fanHubName: json['fanHubName'] as String,
      fanHubSubdomain: json['fanHubSubdomain'] as String,
      roleInHub: $enumDecode(_$MemberRoleEnumMap, json['roleInHub']),
      memberStatus: $enumDecode(_$MemberStatusEnumMap, json['memberStatus']),
      joinedAt: json['joinedAt'] == null
          ? null
          : DateTime.parse(json['joinedAt'] as String),
      bans: (json['bans'] as List<dynamic>)
          .map((e) => Ban.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MemberWithBansToJson(_MemberWithBans instance) =>
    <String, dynamic>{
      'memberId': instance.memberId,
      'userId': instance.userId,
      'username': instance.username,
      'displayName': instance.displayName,
      'avatarUrl': instance.avatarUrl,
      'fanHubId': instance.fanHubId,
      'fanHubName': instance.fanHubName,
      'fanHubSubdomain': instance.fanHubSubdomain,
      'roleInHub': _$MemberRoleEnumMap[instance.roleInHub]!,
      'memberStatus': _$MemberStatusEnumMap[instance.memberStatus]!,
      'joinedAt': instance.joinedAt?.toIso8601String(),
      'bans': instance.bans,
    };

_Report _$ReportFromJson(Map<String, dynamic> json) => _Report(
  reportId: (json['reportId'] as num).toInt(),
  reportedByUserId: (json['reportedByUserId'] as num).toInt(),
  reportedByUsername: json['reportedByUsername'] as String,
  reportedByDisplayName: json['reportedByDisplayName'] as String,
  reason: json['reason'] as String,
  reportStatus: $enumDecode(_$ReportStatusEnumMap, json['reportStatus']),
  reportCreatedAt: DateTime.parse(json['reportCreatedAt'] as String),
  resolvedByUserId: (json['resolvedByUserId'] as num?)?.toInt(),
  resolvedByUsername: json['resolvedByUsername'] as String?,
  resolvedByDisplayName: json['resolvedByDisplayName'] as String?,
  resolveMessage: json['resolveMessage'] as String?,
  relatedComment: json['relatedComment'] == null
      ? null
      : RelatedComment.fromJson(json['relatedComment'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ReportToJson(_Report instance) => <String, dynamic>{
  'reportId': instance.reportId,
  'reportedByUserId': instance.reportedByUserId,
  'reportedByUsername': instance.reportedByUsername,
  'reportedByDisplayName': instance.reportedByDisplayName,
  'reason': instance.reason,
  'reportStatus': _$ReportStatusEnumMap[instance.reportStatus]!,
  'reportCreatedAt': instance.reportCreatedAt.toIso8601String(),
  'resolvedByUserId': instance.resolvedByUserId,
  'resolvedByUsername': instance.resolvedByUsername,
  'resolvedByDisplayName': instance.resolvedByDisplayName,
  'resolveMessage': instance.resolveMessage,
  'relatedComment': instance.relatedComment,
};

const _$ReportStatusEnumMap = {
  ReportStatus.pending: 'PENDING',
  ReportStatus.resolved: 'RESOLVED',
  ReportStatus.rejected: 'REJECTED',
  ReportStatus.deleted: 'DELETED',
};

_RelatedComment _$RelatedCommentFromJson(Map<String, dynamic> json) =>
    _RelatedComment(
      commentId: (json['commentId'] as num).toInt(),
      postId: (json['postId'] as num).toInt(),
      content: json['content'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$RelatedCommentToJson(_RelatedComment instance) =>
    <String, dynamic>{
      'commentId': instance.commentId,
      'postId': instance.postId,
      'content': instance.content,
      'createdAt': instance.createdAt.toIso8601String(),
    };

_Ban _$BanFromJson(Map<String, dynamic> json) => _Ban(
  banId: (json['banId'] as num).toInt(),
  bannedByUserId: (json['bannedByUserId'] as num).toInt(),
  bannedByUsername: json['bannedByUsername'] as String,
  bannedByDisplayName: json['bannedByDisplayName'] as String,
  reason: json['reason'] as String,
  banType: $enumDecode(_$BanTypeEnumMap, json['banType']),
  bannedUntil: json['bannedUntil'] == null
      ? null
      : DateTime.parse(json['bannedUntil'] as String),
  isActive: json['isActive'] as bool,
  createdAt: DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$BanToJson(_Ban instance) => <String, dynamic>{
  'banId': instance.banId,
  'bannedByUserId': instance.bannedByUserId,
  'bannedByUsername': instance.bannedByUsername,
  'bannedByDisplayName': instance.bannedByDisplayName,
  'reason': instance.reason,
  'banType': _$BanTypeEnumMap[instance.banType]!,
  'bannedUntil': instance.bannedUntil?.toIso8601String(),
  'isActive': instance.isActive,
  'createdAt': instance.createdAt.toIso8601String(),
};

const _$BanTypeEnumMap = {
  BanType.comment: 'COMMENT',
  BanType.post: 'POST',
  BanType.join: 'JOIN',
  BanType.interact: 'INTERACT',
};
