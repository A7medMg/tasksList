// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_respons_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponsBody _$LoginResponsBodyFromJson(Map<String, dynamic> json) =>
    LoginResponsBody(
      id: json['_id'] as String?,
      accessToken: json['access_token'] as String?,
      refreshToken: json['refresh_token'] as String?,
    );

Map<String, dynamic> _$LoginResponsBodyToJson(LoginResponsBody instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
    };
