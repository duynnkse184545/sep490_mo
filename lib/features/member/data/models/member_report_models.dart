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
  @JsonValue('DELETED')
  deleted,
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

  factory MemberWithReports.fromJson(Map<String, dynamic> json) =>
      _$MemberWithReportsFromJson(json);
}

@freezed
abstract class MemberWithBans with _$MemberWithBans {
  const factory MemberWithBans({
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
    required List<Ban> bans,
  }) = _MemberWithBans;

  factory MemberWithBans.fromJson(Map<String, dynamic> json) =>
      _$MemberWithBansFromJson(json);
}

extension MemberWithBansX on MemberWithBans {
  int get resolvedId => memberId;
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
    RelatedComment? relatedComment,
  }) = _Report;

  factory Report.fromJson(Map<String, dynamic> json) => _$ReportFromJson(json);
}

@freezed
abstract class RelatedComment with _$RelatedComment {
  const factory RelatedComment({
    required int commentId,
    required int postId,
    required String content,
    required DateTime createdAt,
  }) = _RelatedComment;

  factory RelatedComment.fromJson(Map<String, dynamic> json) =>
      _$RelatedCommentFromJson(json);
}

@freezed
abstract class Ban with _$Ban {
  const factory Ban({
    required int banId,
    required int bannedByUserId,
    required String bannedByUsername,
    required String bannedByDisplayName,
    required String reason,
    required BanType banType,
    required DateTime? bannedUntil,
    required bool isActive,
    required DateTime createdAt,
  }) = _Ban;

  factory Ban.fromJson(Map<String, dynamic> json) => _$BanFromJson(json);
}
