
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/features/home/data/models/task_response_model.dart';

import '../../../core/network/api_result.dart';
import '../data/repos/get_task_repo.dart';
import 'home_state.dart';



class HomeCubit extends Cubit<TodoState> {
  final GetTaskRepo getTaskRepo;
  HomeCubit(this.getTaskRepo) : super(const TodoState.initial());
  int page = 1;
  List<TaskResponseModel> allTodos = [];
  bool isFetching = false;
  final ScrollController scrollController = ScrollController();
  void setupScrollListener() {
    scrollController.addListener(() {
      var maxScroll = scrollController.position.maxScrollExtent;
      var currentScroll = scrollController.position.pixels;

      if (currentScroll >= maxScroll * 0.9 && !isFetching) {
        getTodos();
      }
    });
  }

  Future<void> getTodos({bool isFirstTime = false}) async {
    if (isFirstTime) {
      page = 1;
      allTodos = [];
      emit(const TodoState.loading());
    }

    if (isFetching) return;
    isFetching = true;

    final result = await getTaskRepo.getTasks(page);

    result.when(
      success: (newTodos) {
        if (newTodos.isNotEmpty) {
          page++;
          allTodos.addAll(newTodos);
          emit(TodoState.success(List.from(allTodos)));
        }
        isFetching = false;
      },
      failure: (error) {
        emit(TodoState.error(error.apiErrorModel.message ?? "Error"));
        isFetching = false;
      },
    );
  }

  Future<void> deleteTask(String taskId) async {
    final taskIndex = allTodos.indexWhere((t) => t.id == taskId);
    if (taskIndex == -1) return;

    final backupTask = allTodos[taskIndex];

    allTodos.removeAt(taskIndex);
    emit(TodoState.success(List.from(allTodos)));

    final result = await getTaskRepo.deleteTask(taskId);

    result.when(
      success: (_) {
        emit(const TodoState.deleteActionSuccess());
        emit(TodoState.success(List.from(allTodos)));
      },
      failure: (error) {
        // التراجع (Rollback)
        allTodos.insert(taskIndex, backupTask);
        emit(TodoState.success(List.from(allTodos)));
        emit(TodoState.deleteError(error.apiErrorModel.message ?? "Error"));
      },
    );
  }

  void addSingleTaskLocally(TaskResponseModel newTask) {
    allTodos.insert(0, newTask);
    emit(TodoState.success(List.from(allTodos)));
  }
  @override
  Future<void> close() {
    scrollController.dispose();
    return super.close();
  }
}
