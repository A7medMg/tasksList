
import 'package:freezed_annotation/freezed_annotation.dart';
part 'add_task_state.freezed.dart';
@Freezed()
class AddTaskState<T>with _$AddTaskState<T> {
 const factory AddTaskState.initial() = _Initial;
 const factory AddTaskState.loading() = AddImageLoading;
 const factory AddTaskState.success() = AddImageSuccess;
 const factory AddTaskState.failure({required String error}) =AddImageError;
 const factory AddTaskState.taskLoading() = AddtaskLoading;
 const factory AddTaskState.taskSuccess() = AddtaskSuccess;
 const factory AddTaskState.taskFailure({required String error}) =AddtaskError;
}