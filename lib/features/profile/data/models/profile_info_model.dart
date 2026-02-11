
import 'package:json_annotation/json_annotation.dart';
part 'profile_info_model.g.dart';
@JsonSerializable()
class ProfileInfoModel {
  final String? displayName;
  @JsonKey(name:"username")
  final String? phone;
  final int? experienceYears;
  final String? address;
  final String?level;
ProfileInfoModel({this.displayName,this.phone,this.experienceYears,this.address,this.level});
  factory ProfileInfoModel.fromJson(Map<String, dynamic> json) => _$ProfileInfoModelFromJson(json);



}