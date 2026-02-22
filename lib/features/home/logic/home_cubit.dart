
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
  String currentStatus = 'All';


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
          filterTasks(currentStatus);
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

    filterTasks(currentStatus);

    final result = await getTaskRepo.deleteTask(taskId);

    result.when(
      success: (_) {
        emit(const TodoState.deleteActionSuccess());
      },
      failure: (error) {
        allTodos.insert(taskIndex, backupTask);
        filterTasks(currentStatus);
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
  void filterTasks(String status) {
    currentStatus = status;

    if (status == 'All') {
      emit(TodoState.success(List.from(allTodos)));
    } else {
      final filteredList = allTodos.where((task) {
        return task.status?.toLowerCase() == status.toLowerCase();
      }).toList();

      emit(TodoState.success(filteredList));
    }
  }
}

