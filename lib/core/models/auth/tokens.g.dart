// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tokens.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Tokens _$TokensFromJson(Map<String, dynamic> json) => _Tokens(
  token: json['token'] as String,
  refreshToken: json['refreshToken'] as String,
  id: json['id'] as String,
  username: json['username'] as String,
  tokenType: json['tokenType'] as String?,
);

Map<String, dynamic> _$TokensToJson(_Tokens instance) => <String, dynamic>{
  'token': instance.token,
  'refreshToken': instance.refreshToken,
  'id': instance.id,
  'username': instance.username,
  'tokenType': instance.tokenType,
};
