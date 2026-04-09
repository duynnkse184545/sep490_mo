// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VoteOption _$VoteOptionFromJson(Map<String, dynamic> json) => _VoteOption(
  optionId: (json['optionId'] as num).toInt(),
  optionText: json['optionText'] as String,
  voteCount: (json['voteCount'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$VoteOptionToJson(_VoteOption instance) =>
    <String, dynamic>{
      'optionId': instance.optionId,
      'optionText': instance.optionText,
      'voteCount': instance.voteCount,
    };

_Post _$PostFromJson(Map<String, dynamic> json) => _Post(
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
  mediaUrls:
      (json['mediaUrls'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  hashtags:
      (json['hashtags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  voteOptions: (json['voteOptions'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  voteCounts: (json['voteCounts'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, (e as num).toInt()),
  ),
  totalVotes: (json['totalVotes'] as num?)?.toInt(),
  userVotedOptionId: (json['userVotedOptionId'] as num?)?.toInt(),
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
  likeCount: (json['likeCount'] as num?)?.toInt() ?? 0,
  isLikedByCurrentUser: json['isLikedByCurrentUser'] as bool? ?? false,
);

Map<String, dynamic> _$PostToJson(_Post instance) => <String, dynamic>{
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
  'mediaUrls': instance.mediaUrls,
  'hashtags': instance.hashtags,
  'voteOptions': instance.voteOptions,
  'voteCounts': instance.voteCounts,
  'totalVotes': instance.totalVotes,
  'userVotedOptionId': instance.userVotedOptionId,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
  'likeCount': instance.likeCount,
  'isLikedByCurrentUser': instance.isLikedByCurrentUser,
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

_PostListResponse _$PostListResponseFromJson(Map<String, dynamic> json) =>
    _PostListResponse(
      success: json['success'] as bool,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => Post.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PostListResponseToJson(_PostListResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_CreatePostRequest _$CreatePostRequestFromJson(
  Map<String, dynamic> json,
) => _CreatePostRequest(
  fanHubId: (json['fanHubId'] as num).toInt(),
  postType: $enumDecode(_$PostTypeEnumMap, json['postType']),
  title: json['title'] as String?,
  content: json['content'] as String,
  images:
      (json['images'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  hashtags:
      (json['hashtags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  video: json['video'] as String?,
);

Map<String, dynamic> _$CreatePostRequestToJson(_CreatePostRequest instance) =>
    <String, dynamic>{
      'fanHubId': instance.fanHubId,
      'postType': _$PostTypeEnumMap[instance.postType]!,
      'title': instance.title,
      'content': instance.content,
      'images': instance.images,
      'hashtags': instance.hashtags,
      'video': instance.video,
    };
