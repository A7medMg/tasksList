
import 'package:json_annotation/json_annotation.dart';
part 'edit_task_request_body.g.dart';

@JsonSerializable()
class EditTaskRequestBody {
  final String image;
  final String title;
  final String desc;
  final String priority;
  final String status;
  final String user;
  EditTaskRequestBody({required this.image,required this.title,required this.desc,required this.priority,required this.status, required this.user});

  Map<String, dynamic> toJson() => _$EditTaskRequestBodyToJson(this);
}