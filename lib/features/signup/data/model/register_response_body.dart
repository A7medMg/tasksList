

import 'package:json_annotation/json_annotation.dart';
part 'register_response_body.g.dart';
@JsonSerializable()
class RegisterResponseBody {
  @JsonKey(name: '_id')
  final String ? id;
  @JsonKey(name:"access_token")
  final String? accessToken;
  @JsonKey(name:"refresh_token")
  final String? refreshToken;
  final String? displayName;

  RegisterResponseBody({this.id, this.accessToken, this.refreshToken,this.displayName});
  factory RegisterResponseBody.fromJson(Map<String, dynamic> json) => _$RegisterResponseBodyFromJson(json);

}