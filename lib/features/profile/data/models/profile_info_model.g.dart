// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileInfoModel _$ProfileInfoModelFromJson(Map<String, dynamic> json) =>
    ProfileInfoModel(
      displayName: json['displayName'] as String?,
      phone: json['username'] as String?,
      experienceYears: (json['experienceYears'] as num?)?.toInt(),
      address: json['address'] as String?,
      level: json['level'] as String?,
    );

Map<String, dynamic> _$ProfileInfoModelToJson(ProfileInfoModel instance) =>
    <String, dynamic>{
      'displayName': instance.displayName,
      'username': instance.phone,
      'experienceYears': instance.experienceYears,
      'address': instance.address,
      'level': instance.level,
    };
