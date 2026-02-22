import 'package:freezed_annotation/freezed_annotation.dart';
part 'edit_task_state.freezed.dart';
@freezed
class EditTaskState<T> with _$EditTaskState<T> {
  const factory EditTaskState.initial() = _Initial;
  const factory EditTaskState.imageLoading() = ImageLoading;
  const factory EditTaskState.imageSuccess() = ImageSuccess;
  const factory EditTaskState.imageFailure(String error) = ImageFailure;
  const factory EditTaskState.taskEditLoading() = EdittaskLoading;
  const factory EditTaskState.taskEditSuccess(T data) = EdittaskSuccess<T>;
  const factory EditTaskState.taskEditFailure({required String error}) =EdittaskError;

}