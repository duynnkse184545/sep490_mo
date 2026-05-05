import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sep490_mo/features/member/data/models/member_models.dart';

part 'fanhub_models.freezed.dart';

part 'fanhub_models.g.dart';

@freezed
abstract class FanHub with _$FanHub {
  const factory FanHub({
    required int fanHubId,
    required String subdomain,
    required String hubName,
    String? description,
    String? bannerUrl,
    required List<String> highlightImgUrls,
    String? backgroundUrl,
    String? themeColor,
    String? avatarUrl,
    required bool isPrivate,
    required bool requiresApproval,
    required DateTime createdAt,
    required int ownerUserId,
    required String ownerUsername,
    required String ownerDisplayName,
    required List<String> categories,
    required int memberCount,
  }) = _FanHub;

  factory FanHub.fromJson(Map<String, dynamic> json) => _$FanHubFromJson(json);
}

@freezed
abstract class FanHubStrike with _$FanHubStrike {
  const factory FanHubStrike({
    required String reason,
    required DateTime createdAt,
  }) = _FanHubStrike;

  factory FanHubStrike.fromJson(Map<String, dynamic> json) =>
      _$FanHubStrikeFromJson(json);
}

@freezed
abstract class FanHubAnalytics with _$FanHubAnalytics {
  const factory FanHubAnalytics({
    required int totalPosts,
    required int totalJoinedMembers,
    required int totalStrikes,
    required List<Member> topMembers,
    required List<FanHubStrike>? strikes,
  }) = _FanHubAnalytics;

  factory FanHubAnalytics.fromJson(Map<String, dynamic> json) =>
      _$FanHubAnalyticsFromJson(json);
}

@freezed
abstract class FanHubCategory with _$FanHubCategory {
  const factory FanHubCategory({
    required int hubCategoryId,
    required String categoryName,
    required int hubId,
  }) = _FanHubCategory;

  factory FanHubCategory.fromJson(Map<String, dynamic> json) =>
      _$FanHubCategoryFromJson(json);
}

@freezed
abstract class CreateFanHubRequest with _$CreateFanHubRequest {
  const factory CreateFanHubRequest({
    required String hubName,
    required String subdomain,
    required String description,
    required String themeColor,
    required List<String> category,
    required bool isPrivate,
    required bool requiresApproval,
  }) = _CreateFanHubRequest;

  factory CreateFanHubRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateFanHubRequestFromJson(json);
}

@freezed
abstract class UpdateFanHubRequest with _$UpdateFanHubRequest {
  const factory UpdateFanHubRequest({
    String? hubName,
    String? subdomain,
    String? description,
    String? themeColor,
    bool? isPrivate,
    bool? requiresApproval,
    List<String>? category,
  }) = _UpdateFanHubRequest;

  factory UpdateFanHubRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateFanHubRequestFromJson(json);
}
