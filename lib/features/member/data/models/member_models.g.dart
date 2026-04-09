// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Member _$MemberFromJson(Map<String, dynamic> json) => _Member(
  id: (json['id'] as num?)?.toInt(),
  memberId: (json['memberId'] as num?)?.toInt(),
  hubId: (json['hubId'] as num).toInt(),
  hubName: json['hubName'] as String,
  roleInHub: $enumDecode(_$MemberRoleEnumMap, json['roleInHub']),
  status: $enumDecode(_$MemberStatusEnumMap, json['status']),
  fanHubScore: (json['fanHubScore'] as num).toInt(),
  joinedAt: json['joinedAt'] == null
      ? null
      : DateTime.parse(json['joinedAt'] as String),
  title: json['title'] as String?,
  userId: (json['userId'] as num?)?.toInt(),
  username: json['username'] as String?,
  email: json['email'] as String?,
  displayName: json['displayName'] as String?,
  avatarUrl: json['avatarUrl'] as String?,
  frameUrl: json['frameUrl'] as String?,
);

Map<String, dynamic> _$MemberToJson(_Member instance) => <String, dynamic>{
  'id': instance.id,
  'memberId': instance.memberId,
  'hubId': instance.hubId,
  'hubName': instance.hubName,
  'roleInHub': _$MemberRoleEnumMap[instance.roleInHub]!,
  'status': _$MemberStatusEnumMap[instance.status]!,
  'fanHubScore': instance.fanHubScore,
  'joinedAt': instance.joinedAt?.toIso8601String(),
  'title': instance.title,
  'userId': instance.userId,
  'username': instance.username,
  'email': instance.email,
  'displayName': instance.displayName,
  'avatarUrl': instance.avatarUrl,
  'frameUrl': instance.frameUrl,
};

const _$MemberRoleEnumMap = {
  MemberRole.admin: 'ADMIN',
  MemberRole.moderator: 'MODERATOR',
  MemberRole.member: 'MEMBER',
};

const _$MemberStatusEnumMap = {
  MemberStatus.pending: 'PENDING',
  MemberStatus.joined: 'JOINED',
  MemberStatus.rejected: 'REJECTED',
};

_MemberCheckingResponse _$MemberCheckingResponseFromJson(
  Map<String, dynamic> json,
) => _MemberCheckingResponse(
  isMember: json['isMember'] as bool,
  roleInHub: $enumDecode(_$MemberRoleEnumMap, json['roleInHub']),
);

Map<String, dynamic> _$MemberCheckingResponseToJson(
  _MemberCheckingResponse instance,
) => <String, dynamic>{
  'isMember': instance.isMember,
  'roleInHub': _$MemberRoleEnumMap[instance.roleInHub]!,
};
