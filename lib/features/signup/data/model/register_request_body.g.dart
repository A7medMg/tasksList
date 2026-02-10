// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterRequestBody _$RegisterRequestBodyFromJson(Map<String, dynamic> json) =>
    RegisterRequestBody(
      phone: json['phone'] as String,
      password: json['password'] as String,
      displayName: json['displayName'] as String,
      experienceYears: (json['experienceYears'] as num).toInt(),
      address: json['address'] as String,
      level: json['level'] as String,
    );

Map<String, dynamic> _$RegisterRequestBodyToJson(
  RegisterRequestBody instance,
) => <String, dynamic>{
  'phone': instance.phone,
  'password': instance.password,
  'displayName': instance.displayName,
  'experienceYears': instance.experienceYears,
  'address': instance.address,
  'level': instance.level,
};
