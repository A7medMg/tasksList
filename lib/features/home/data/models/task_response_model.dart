import 'package:json_annotation/json_annotation.dart';
part 'task_response_model.g.dart';

@JsonSerializable()
class TaskResponseModel {
  @JsonKey(name: "_id")
  final String? id;
  final String? image;
  final String? title;
  final String? desc;
  final String? priority;
  final String? status;
  final String? user;
  final String? createdAt;

TaskResponseModel({this .id, this.image, this.title, this.desc, this.priority, this.status, this.user, this.createdAt});
  factory TaskResponseModel.fromJson(Map<String, dynamic> json) => _$TaskResponseModelFromJson(json);

}