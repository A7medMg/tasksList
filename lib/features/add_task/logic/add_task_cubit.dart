import 'dart:io';



import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/core/network/api_result.dart';
import 'package:todo/features/add_task/data/repos/add_task_repo.dart';

import '../data/models/add_task_request_body.dart';
import 'add_task_state.dart';



class AddTaskCubit extends Cubit<AddTaskState> {
  final AddTaskRepo addTaskRepo;
  final formKey = GlobalKey<FormState>();
  TextEditingController titleController = TextEditingController();
  TextEditingController descController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  String priority="medium";
  AddTaskCubit(this.addTaskRepo) : super(const AddTaskState.initial());
  String ? imageName;
  Future<void>uploadImage(File image)async{
    emit(AddTaskState.loading());
    var result=await addTaskRepo.upLoadImage(image);
    result.when(
      success: (result){
        imageName=result['image'];
        emit(AddTaskState.success());
      },
      failure: (e){
        emit(AddTaskState.failure( error: e.apiErrorModel.message ?? "Pleas upload image"));
      }
    );
  }
  Future<void>emitAddTaskState()async {
    emit(AddTaskState.taskLoading());
    var result = await addTaskRepo.createTask(
        AddTaskRequestBody(
          image: imageName!,
          title: titleController.text,
          desc: descController.text,
          priority: priority,
          dueDate: dateController.text,
        )
    );
    result.when(
        success: (_) {
          emit(AddTaskState.taskSuccess());
        },
        failure: (e) {
          emit(AddTaskState.taskFailure(
              error: e.apiErrorModel.message ?? "Something went wrong"));
        });
  }
  void resetForm() {
    titleController.clear();
    descController.clear();
    dateController.clear();
    imageName = null;
    emit(const AddTaskState.initial());
  }
}
