import 'package:freezed_annotation/freezed_annotation.dart';

part 'member_models.freezed.dart';

part 'member_models.g.dart';

/// Member role enum
enum MemberRole {
  @JsonValue('Vtuber')
  vtuber,
  @JsonValue('MODERATOR')
  moderator,
  @JsonValue('MEMBER')
  member,
}

/// Member status enum
enum MemberStatus {
  @JsonValue('PENDING')
  pending,
  @JsonValue('JOINED')
  joined,
  @JsonValue('REJECTED')
  rejected,
}

/// Member data model

@freezed
abstract class Member with _$Member {
  const factory Member({
    int? id,
    int? memberId,
    required int hubId,
    required String hubName,
    required MemberRole roleInHub,
    required MemberStatus status,
    required int fanHubScore,
    DateTime? joinedAt,
    String? title,
    int? userId,
    String? username,
    String? email,
    String? displayName,
    String? avatarUrl,
    String? frameUrl,
  }) = _Member;

  factory Member.fromJson(Map<String, dynamic> json) => _$MemberFromJson(json);
}

extension MemberX on Member {
  int get resolvedId => id ?? memberId!;
}

@freezed
abstract class MemberCheckingResponse with _$MemberCheckingResponse {
  const factory MemberCheckingResponse({
    required bool isMember,
    required MemberRole roleInHub,
  }) = _MemberCheckingResponse;

  factory MemberCheckingResponse.fromJson(Map<String, dynamic> json) =>
      _$MemberCheckingResponseFromJson(json);
}

@freezed
abstract class BanRequest with _$BanRequest {
  const factory BanRequest({
    required int fanHubMemberId,
    required String reason,
    required String banType,
    required DateTime bannedUntil,
  }) = _BanRequest;

  factory BanRequest.fromJson(Map<String, dynamic> json) =>
      _$BanRequestFromJson(json);
}
