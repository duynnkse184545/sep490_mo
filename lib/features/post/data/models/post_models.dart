import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_models.freezed.dart';
part 'post_models.g.dart';

/// Post type enum
enum PostType {
  @JsonValue('TEXT')
  text,
  @JsonValue('IMAGE')
  image,
  @JsonValue('VIDEO')
  video,
  @JsonValue('POLL')
  poll,
  @JsonValue('ANNOUNCEMENT')
  announcement,
  @JsonValue('EVENT_SCHEDULE')
  eventSchedule,
}

/// Post status enum
enum PostStatus {
  @JsonValue('PENDING')
  pending,
  @JsonValue('APPROVED')
  approved,
  @JsonValue('REJECTED')
  rejected,
}

enum AiStatus{
  @JsonValue('PENDING')
  pending,
  @JsonValue('AI_UNSAFE')
  aiUnsafe,
  @JsonValue('AI_SAFE')
  aiSafe,
}

/// Vote option for poll posts
@freezed
abstract class VoteOption with _$VoteOption {
  const factory VoteOption({
    required int id,
    required String optionText,
    // @Default(0) int voteCount,
  }) = _VoteOption;

  factory VoteOption.fromJson(Map<String, dynamic> json) =>
      _$VoteOptionFromJson(json);
}

@freezed
abstract class Media with _$Media {
  const factory Media({
    required int mediaId,
    required String mediaUrl,
    required AiStatus aiValidationStatus,
    String? aiValidationComment
  }) = _Media;

  factory Media.fromJson(Map<String, dynamic> json) =>
      _$MediaFromJson(json);
}


/// Post data model
@freezed
abstract class Post with _$Post {
  const factory Post({
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
    @Default([]) List<String> mediaUrls,
    @Default([]) List<String> hashtags,
    List<VoteOption>? voteOptions,
    Map<String, int>? voteCounts,
    int? totalVotes,
    int? userVotedOptionId,
    required DateTime createdAt,
    DateTime? updatedAt,
    @Default(0) int likeCount,
    @Default(false) bool isLikedByCurrentUser,
  }) = _Post;

  factory Post.fromJson(Map<String, dynamic> json) =>
      _$PostFromJson(json);
}

@freezed
abstract class PostModeration with _$PostModeration {
  const factory PostModeration({
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
    @Default([]) List<String> media,
    @Default([]) List<String> hashtags,
    List<VoteOption>? voteOptions,
    Map<String, int>? voteCounts,
    int? totalVotes,
    int? userVotedOptionId,
    required DateTime createdAt,
    DateTime? updatedAt,
    @Default(0) int likeCount,
    @Default(false) bool isLikedByCurrentUser,
    required AiStatus aiValidationStatus,
    String? aiValidationComment
  }) = _PostModeration;

  factory PostModeration.fromJson(Map<String, dynamic> json) =>
      _$PostModerationFromJson(json);
}


/// Post list response wrapper
// @freezed
// abstract class PostListResponse with _$PostListResponse {
//   const factory PostListResponse({
//     required List<Post> posts,
//     // @Default(0) int total,
//     // @Default(0) int page,
//     // @Default(10) int pageSize,
//     // @Default(false) bool hasMore,
//   }) = _PostListResponse;
//
//   factory PostListResponse.fromJson(Map<String, dynamic> json) =>
//       _$PostListResponseFromJson(json);
// }

@freezed
abstract class CreatePostRequest with _$CreatePostRequest {
  const factory CreatePostRequest({
    required int fanHubId,
    required PostType postType,
    String? title,
    required String content,
    @Default([]) List<String>? images,
    @Default([]) List<String>? hashtags,
    String? video,
  }) = _CreatePostRequest;

  factory CreatePostRequest.fromJson(Map<String, dynamic> json) =>
      _$CreatePostRequestFromJson(json);
}

