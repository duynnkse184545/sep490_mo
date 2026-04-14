// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostWithReport _$PostWithReportFromJson(
  Map<String, dynamic> json,
) => _PostWithReport(
  postId: (json['postId'] as num).toInt(),
  fanHubId: (json['fanHubId'] as num).toInt(),
  fanHubName: json['fanHubName'] as String,
  fanHubSubdomain: json['fanHubSubdomain'] as String,
  authorId: (json['authorId'] as num).toInt(),
  authorUsername: json['authorUsername'] as String,
  authorDisplayName: json['authorDisplayName'] as String,
  authorAvatarUrl: json['authorAvatarUrl'] as String?,
  postType: $enumDecode(_$PostTypeEnumMap, json['postType']),
  title: json['title'] as String?,
  content: json['content'] as String,
  status: $enumDecode(_$PostStatusEnumMap, json['status']),
  isPinned: json['isPinned'] as bool? ?? false,
  isAnnouncement: json['isAnnouncement'] as bool?,
  isSchedule: json['isSchedule'] as bool?,
  mediaCount: (json['mediaCount'] as num?)?.toInt() ?? 0,
  hashtags:
      (json['hashtags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  mediaUrls:
      (json['mediaUrls'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  postCreatedAt: DateTime.parse(json['postCreatedAt'] as String),
  postUpdatedAt: json['postUpdatedAt'] == null
      ? null
      : DateTime.parse(json['postUpdatedAt'] as String),
  reports: (json['reports'] as List<dynamic>)
      .map((e) => Report.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PostWithReportToJson(_PostWithReport instance) =>
    <String, dynamic>{
      'postId': instance.postId,
      'fanHubId': instance.fanHubId,
      'fanHubName': instance.fanHubName,
      'fanHubSubdomain': instance.fanHubSubdomain,
      'authorId': instance.authorId,
      'authorUsername': instance.authorUsername,
      'authorDisplayName': instance.authorDisplayName,
      'authorAvatarUrl': instance.authorAvatarUrl,
      'postType': _$PostTypeEnumMap[instance.postType]!,
      'title': instance.title,
      'content': instance.content,
      'status': _$PostStatusEnumMap[instance.status]!,
      'isPinned': instance.isPinned,
      'isAnnouncement': instance.isAnnouncement,
      'isSchedule': instance.isSchedule,
      'mediaCount': instance.mediaCount,
      'hashtags': instance.hashtags,
      'mediaUrls': instance.mediaUrls,
      'postCreatedAt': instance.postCreatedAt.toIso8601String(),
      'postUpdatedAt': instance.postUpdatedAt?.toIso8601String(),
      'reports': instance.reports,
    };

const _$PostTypeEnumMap = {
  PostType.text: 'TEXT',
  PostType.image: 'IMAGE',
  PostType.video: 'VIDEO',
  PostType.poll: 'POLL',
  PostType.announcement: 'ANNOUNCEMENT',
  PostType.eventSchedule: 'EVENT_SCHEDULE',
};

const _$PostStatusEnumMap = {
  PostStatus.pending: 'PENDING',
  PostStatus.approved: 'APPROVED',
  PostStatus.rejected: 'REJECTED',
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

_ReportListResponse _$ReportListResponseFromJson(Map<String, dynamic> json) =>
    _ReportListResponse(
      success: json['success'] as bool,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => Report.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ReportListResponseToJson(_ReportListResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };
