

import 'package:json_annotation/json_annotation.dart';
part 'register_request_body.g.dart';
@JsonSerializable()
class RegisterRequestBody {
  final String phone;
  final String password;
  final String displayName;
  final int experienceYears;
  final String address;
  final String level;
  RegisterRequestBody({required this.phone, required this.password,required this.displayName,required this.experienceYears,required this.address,required this.level});
  Map<String, dynamic> toJson() => _$RegisterRequestBodyToJson(this);


}