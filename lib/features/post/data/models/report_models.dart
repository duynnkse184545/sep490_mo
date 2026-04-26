import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sep490_mo/features/post/data/models/post_models.dart';

part 'report_models.freezed.dart';
part 'report_models.g.dart';

/// Report status enum
enum ReportStatus {
  @JsonValue('PENDING')
  pending,
  @JsonValue('RESOLVED')
  resolved,
  @JsonValue('REJECTED')
  rejected,
  @JsonValue('DELETED')
  deleted,
}

/// Post data embedded in report response
@freezed
abstract class PostWithReport with _$PostWithReport {
  const factory PostWithReport({
    required int postId,
    required int fanHubId,
    required String fanHubName,
    required String fanHubSubdomain,
    required int authorId,
    required String authorUsername,
    required String authorDisplayName,
    String? authorAvatarUrl,
    required PostType postType,
    String? title,
    required String content,
    required PostStatus status,
    @Default(false) bool isPinned,
    bool? isAnnouncement,
    bool? isSchedule,
    @Default(0) int mediaCount,
    @Default([]) List<String> hashtags,
    @Default([]) List<String> mediaUrls,
    required DateTime postCreatedAt,
    DateTime? postUpdatedAt,
    required List<Report> reports,
  }) = _PostWithReport;

  factory PostWithReport.fromJson(Map<String, dynamic> json) =>
      _$PostWithReportFromJson(json);
}

/// Report data model
@freezed
abstract class Report with _$Report {
  const factory Report({
    required int reportId,
    required int reportedByUserId,
    required String reportedByUsername,
    required String reportedByDisplayName,
    required String reason,
    required ReportStatus reportStatus,
    required DateTime reportCreatedAt,
    int? resolvedByUserId,
    String? resolvedByUsername,
    String? resolvedByDisplayName,
    String? resolveMessage,
  }) = _Report;

  factory Report.fromJson(Map<String, dynamic> json) => _$ReportFromJson(json);
}

/// Report list response wrapper
@freezed
abstract class ReportListResponse with _$ReportListResponse {
  const factory ReportListResponse({
    required bool success,
    required String message,
    required List<Report> data,
  }) = _ReportListResponse;

  factory ReportListResponse.fromJson(Map<String, dynamic> json) =>
      _$ReportListResponseFromJson(json);
}
