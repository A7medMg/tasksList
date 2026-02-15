import 'package:json_annotation/json_annotation.dart';
part 'add_task_request_body.g.dart';
@JsonSerializable()
class AddTaskRequestBody {
  final String image;
  final String title;
  final String desc;
  final String priority;
  final String dueDate;
  AddTaskRequestBody({required this.image,required this.title,required this.desc,required this.priority,required this.dueDate});

  Map<String, dynamic> toJson() => _$AddTaskRequestBodyToJson(this);
}