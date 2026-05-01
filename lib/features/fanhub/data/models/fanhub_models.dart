import 'package:freezed_annotation/freezed_annotation.dart';

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
abstract class FanHubMember with _$FanHubMember {
  const factory FanHubMember({
    required int memberId,
    required int hubId,
    required int userId,
    String? roleInHub,
    required String status,
    required int fanHubScore,
    DateTime? joinedAt,
    String? title,
  }) = _FanHubMember;

  factory FanHubMember.fromJson(Map<String, dynamic> json) =>
      _$FanHubMemberFromJson(json);
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
