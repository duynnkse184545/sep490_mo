// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SignInRequest _$SignInRequestFromJson(Map<String, dynamic> json) =>
    _SignInRequest(
      username: json['username'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$SignInRequestToJson(_SignInRequest instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
    };

_SignInResponse _$SignInResponseFromJson(Map<String, dynamic> json) =>
    _SignInResponse(
      token: json['token'] as String,
      refreshToken: json['refreshToken'] as String,
      id: (json['id'] as num).toInt(),
      username: json['username'] as String,
      tokenType: json['tokenType'] as String?,
    );

Map<String, dynamic> _$SignInResponseToJson(_SignInResponse instance) =>
    <String, dynamic>{
      'token': instance.token,
      'refreshToken': instance.refreshToken,
      'id': instance.id,
      'username': instance.username,
      'tokenType': instance.tokenType,
    };

_SignUpRequest _$SignUpRequestFromJson(Map<String, dynamic> json) =>
    _SignUpRequest(
      email: json['email'] as String,
      password: json['password'] as String,
      username: json['username'] as String,
      displayName: json['displayName'] as String,
      translateLanguage: json['translateLanguage'] as String,
      bio: json['bio'] as String?,
      otp: json['otp'] as String,
    );

Map<String, dynamic> _$SignUpRequestToJson(_SignUpRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'username': instance.username,
      'displayName': instance.displayName,
      'translateLanguage': instance.translateLanguage,
      'bio': instance.bio,
      'otp': instance.otp,
    };
