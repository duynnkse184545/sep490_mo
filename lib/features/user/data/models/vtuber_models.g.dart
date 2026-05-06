// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vtuber_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VtuberApplication _$VtuberApplicationFromJson(Map<String, dynamic> json) =>
    _VtuberApplication(
      id: (json['id'] as num).toInt(),
      userId: (json['userId'] as num).toInt(),
      username: json['username'] as String,
      channelName: json['channelName'] as String,
      channelLink: json['channelLink'] as String,
      status: $enumDecode(_$VtuberApplicationStatusEnumMap, json['status']),
      reason: json['reason'] as String?,
      reviewerId: (json['reviewerId'] as num?)?.toInt(),
      reviewerUsername: json['reviewerUsername'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      reviewAt: json['reviewAt'] == null
          ? null
          : DateTime.parse(json['reviewAt'] as String),
    );

Map<String, dynamic> _$VtuberApplicationToJson(_VtuberApplication instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'username': instance.username,
      'channelName': instance.channelName,
      'channelLink': instance.channelLink,
      'status': _$VtuberApplicationStatusEnumMap[instance.status]!,
      'reason': instance.reason,
      'reviewerId': instance.reviewerId,
      'reviewerUsername': instance.reviewerUsername,
      'createdAt': instance.createdAt.toIso8601String(),
      'reviewAt': instance.reviewAt?.toIso8601String(),
    };

const _$VtuberApplicationStatusEnumMap = {
  VtuberApplicationStatus.pending: 'PENDING',
  VtuberApplicationStatus.approved: 'APPROVED',
  VtuberApplicationStatus.rejected: 'REJECTED',
};

_VtuberRegisterRequest _$VtuberRegisterRequestFromJson(
  Map<String, dynamic> json,
) => _VtuberRegisterRequest(
  userId: (json['userId'] as num).toInt(),
  channelName: json['channelName'] as String,
  channelLink: json['channelLink'] as String,
  channelId: json['channelId'] as String,
);

Map<String, dynamic> _$VtuberRegisterRequestToJson(
  _VtuberRegisterRequest instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'channelName': instance.channelName,
  'channelLink': instance.channelLink,
  'channelId': instance.channelId,
};
