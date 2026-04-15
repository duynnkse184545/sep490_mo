// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VoteOption _$VoteOptionFromJson(Map<String, dynamic> json) => _VoteOption(
  id: (json['id'] as num).toInt(),
  optionText: json['optionText'] as String,
);

Map<String, dynamic> _$VoteOptionToJson(_VoteOption instance) =>
    <String, dynamic>{'id': instance.id, 'optionText': instance.optionText};

_Media _$MediaFromJson(Map<String, dynamic> json) => _Media(
  mediaId: (json['mediaId'] as num).toInt(),
  mediaUrl: json['mediaUrl'] as String,
  aiValidationStatus: $enumDecode(
    _$AiStatusEnumMap,
    json['aiValidationStatus'],
  ),
  aiValidationComment: json['aiValidationComment'] as String?,
);

Map<String, dynamic> _$MediaToJson(_Media instance) => <String, dynamic>{
  'mediaId': instance.mediaId,
  'mediaUrl': instance.mediaUrl,
  'aiValidationStatus': _$AiStatusEnumMap[instance.aiValidationStatus]!,
  'aiValidationComment': instance.aiValidationComment,
};

const _$AiStatusEnumMap = {
  AiStatus.pending: 'PENDING',
  AiStatus.processing: 'PROCESSING',
  AiStatus.aiUnsafe: 'AI_UNSAFE',
  AiStatus.aiSafe: 'AI_SAFE',
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
      ?.map((e) => VoteOption.fromJson(e as Map<String, dynamic>))
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

_PostModeration _$PostModerationFromJson(Map<String, dynamic> json) =>
    _PostModeration(
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
      media:
          (json['media'] as List<dynamic>?)
              ?.map((e) => Media.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      hashtags:
          (json['hashtags'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      voteOptions: (json['voteOptions'] as List<dynamic>?)
          ?.map((e) => VoteOption.fromJson(e as Map<String, dynamic>))
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
      aiValidationStatus:
          $enumDecodeNullable(_$AiStatusEnumMap, json['aiValidationStatus']) ??
          AiStatus.pending,
      aiValidationComment: json['aiValidationComment'] as String?,
    );

Map<String, dynamic> _$PostModerationToJson(_PostModeration instance) =>
    <String, dynamic>{
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
      'media': instance.media,
      'hashtags': instance.hashtags,
      'voteOptions': instance.voteOptions,
      'voteCounts': instance.voteCounts,
      'totalVotes': instance.totalVotes,
      'userVotedOptionId': instance.userVotedOptionId,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'likeCount': instance.likeCount,
      'isLikedByCurrentUser': instance.isLikedByCurrentUser,
      'aiValidationStatus': _$AiStatusEnumMap[instance.aiValidationStatus]!,
      'aiValidationComment': instance.aiValidationComment,
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
