

import 'package:json_annotation/json_annotation.dart';
part "login_respons_body.g.dart";
@JsonSerializable()
class LoginResponsBody {
  @JsonKey(name: '_id')
  final String ? id;
  @JsonKey(name:"access_token")
  final String? accessToken;
    @JsonKey(name:"refresh_token")
  final String? refreshToken;
  LoginResponsBody({this.id, this.accessToken, this.refreshToken});
  factory LoginResponsBody.fromJson(Map<String, dynamic> json) => _$LoginResponsBodyFromJson(json);

}