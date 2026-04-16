import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_models.freezed.dart';
part 'comment_models.g.dart';

enum CommentStatus {
  @JsonValue('VISIBLE')
  visible,
  @JsonValue('HIDDEN')
  hidden,
  @JsonValue('DELETED')
  deleted,
  @JsonValue('MODERATED')
  moderated,
}

@freezed
abstract class Comment with _$Comment {
  const factory Comment({
    required int commentId,
    required int postId,
    required int userId,
    required String username,
    required String displayName,
    String? avatarUrl,
    required int memberId,
    required String content,
    required CommentStatus status,
    int? parentCommentId,
    required DateTime createdAt,
    @Default(0) int likeCount,
    @Default(false) bool isLikedByCurrentUser,
    @Default(false) bool hasChildren,
    @Default(0) int giftCount,
  }) = _Comment;

  factory Comment.fromJson(Map<String, dynamic> json) => _$CommentFromJson(json);
}

@freezed
abstract class CommentRequest with _$CommentRequest {
  const factory CommentRequest({
    required int postId,
    required String content,
    int? parentCommentId,
  }) = _CommentRequest;

  factory CommentRequest.fromJson(Map<String, dynamic> json) => _$CommentRequestFromJson(json);
}
