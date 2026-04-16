// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Comment _$CommentFromJson(Map<String, dynamic> json) => _Comment(
  commentId: (json['commentId'] as num).toInt(),
  postId: (json['postId'] as num).toInt(),
  userId: (json['userId'] as num).toInt(),
  username: json['username'] as String,
  displayName: json['displayName'] as String,
  avatarUrl: json['avatarUrl'] as String?,
  memberId: (json['memberId'] as num).toInt(),
  content: json['content'] as String,
  status: $enumDecode(_$CommentStatusEnumMap, json['status']),
  parentCommentId: (json['parentCommentId'] as num?)?.toInt(),
  createdAt: DateTime.parse(json['createdAt'] as String),
  likeCount: (json['likeCount'] as num?)?.toInt() ?? 0,
  isLikedByCurrentUser: json['isLikedByCurrentUser'] as bool? ?? false,
  hasChildren: json['hasChildren'] as bool? ?? false,
  giftCount: (json['giftCount'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$CommentToJson(_Comment instance) => <String, dynamic>{
  'commentId': instance.commentId,
  'postId': instance.postId,
  'userId': instance.userId,
  'username': instance.username,
  'displayName': instance.displayName,
  'avatarUrl': instance.avatarUrl,
  'memberId': instance.memberId,
  'content': instance.content,
  'status': _$CommentStatusEnumMap[instance.status]!,
  'parentCommentId': instance.parentCommentId,
  'createdAt': instance.createdAt.toIso8601String(),
  'likeCount': instance.likeCount,
  'isLikedByCurrentUser': instance.isLikedByCurrentUser,
  'hasChildren': instance.hasChildren,
  'giftCount': instance.giftCount,
};

const _$CommentStatusEnumMap = {
  CommentStatus.visible: 'VISIBLE',
  CommentStatus.hidden: 'HIDDEN',
  CommentStatus.deleted: 'DELETED',
  CommentStatus.moderated: 'MODERATED',
};

_CommentRequest _$CommentRequestFromJson(Map<String, dynamic> json) =>
    _CommentRequest(
      postId: (json['postId'] as num).toInt(),
      content: json['content'] as String,
      parentCommentId: (json['parentCommentId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CommentRequestToJson(_CommentRequest instance) =>
    <String, dynamic>{
      'postId': instance.postId,
      'content': instance.content,
      'parentCommentId': instance.parentCommentId,
    };
