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
  MemberRole.vtuber: 'Vtuber',
  MemberRole.moderator: 'MODERATOR',
  MemberRole.member: 'MEMBER',
};

const _$MemberStatusEnumMap = {
  MemberStatus.pending: 'PENDING',
  MemberStatus.joined: 'JOINED',
  MemberStatus.rejected: 'REJECTED',
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
};

const _$ReportStatusEnumMap = {
  ReportStatus.pending: 'PENDING',
  ReportStatus.resolved: 'RESOLVED',
  ReportStatus.rejected: 'REJECTED',
};
