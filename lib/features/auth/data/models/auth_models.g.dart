// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthResponse _$AuthResponseFromJson(Map<String, dynamic> json) =>
    _AuthResponse(
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
      expiresIn: (json['expiresIn'] as num).toInt(),
      tokenType: json['tokenType'] as String?,
      user: AuthUser.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AuthResponseToJson(_AuthResponse instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'expiresIn': instance.expiresIn,
      'tokenType': instance.tokenType,
      'user': instance.user,
    };

_AuthUser _$AuthUserFromJson(Map<String, dynamic> json) => _AuthUser(
  id: json['id'] as String,
  email: json['email'] as String?,
  phone: json['phone'] as String?,
  emailConfirmedAt: json['emailConfirmedAt'] == null
      ? null
      : DateTime.parse(json['emailConfirmedAt'] as String),
  phoneConfirmedAt: json['phoneConfirmedAt'] == null
      ? null
      : DateTime.parse(json['phoneConfirmedAt'] as String),
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$AuthUserToJson(_AuthUser instance) => <String, dynamic>{
  'id': instance.id,
  'email': instance.email,
  'phone': instance.phone,
  'emailConfirmedAt': instance.emailConfirmedAt?.toIso8601String(),
  'phoneConfirmedAt': instance.phoneConfirmedAt?.toIso8601String(),
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
};

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
      id: json['id'] as String,
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
      fullName: json['fullName'] as String?,
    );

Map<String, dynamic> _$SignUpRequestToJson(_SignUpRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'username': instance.username,
      'fullName': instance.fullName,
    };
