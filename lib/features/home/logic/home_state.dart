

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo/features/home/data/models/task_response_model.dart';
part 'home_state.freezed.dart';
@freezed
class TodoState with _$TodoState {
  const factory TodoState.initial() = _Initial;
  const factory TodoState.loading() = TodoLoading;
  const factory TodoState.success(List<TaskResponseModel> todos) = TodoSuccess;
  const factory TodoState.error(String message) = TodoError;
}