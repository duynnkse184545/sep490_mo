import 'package:freezed_annotation/freezed_annotation.dart';
import 'member_models.dart';

part 'member_report_models.freezed.dart';
part 'member_report_models.g.dart';

enum ReportStatus {
  @JsonValue('PENDING')
  pending,
  @JsonValue('RESOLVED')
  resolved,
  @JsonValue('REJECTED')
  rejected,
}

@freezed
abstract class MemberWithReports with _$MemberWithReports {
  const factory MemberWithReports({
    required int memberId,
    int? userId,
    String? username,
    String? displayName,
    String? avatarUrl,
    required int fanHubId,
    required String fanHubName,
    required String fanHubSubdomain,
    required MemberRole roleInHub,
    required MemberStatus memberStatus,
    DateTime? joinedAt,
    required List<Report> reports,
  }) = _MemberWithReports;

  factory MemberWithReports.fromJson(Map<String, dynamic> json) => _$MemberWithReportsFromJson(json);
}

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