// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterResponseBody _$RegisterResponseBodyFromJson(
  Map<String, dynamic> json,
) => RegisterResponseBody(
  id: json['_id'] as String?,
  accessToken: json['access_token'] as String?,
  refreshToken: json['refresh_token'] as String?,
  displayName: json['displayName'] as String?,
);

Map<String, dynamic> _$RegisterResponseBodyToJson(
  RegisterResponseBody instance,
) => <String, dynamic>{
  '_id': instance.id,
  'access_token': instance.accessToken,
  'refresh_token': instance.refreshToken,
  'displayName': instance.displayName,
};
