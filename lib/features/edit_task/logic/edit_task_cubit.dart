import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:todo/features/edit_task/data/models/edit_task_request_body.dart';

import '../../../core/network/api_result.dart';
import '../data/repo/edit_task_repo.dart';
import 'edit_task_state.dart';

class EditTaskCubit extends Cubit<EditTaskState> {
  final EditTaskRepo editTaskRepo;

  EditTaskCubit(this.editTaskRepo) : super(const EditTaskState.initial());
  TextEditingController titleController = TextEditingController();
  TextEditingController descController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  String? priority;
  String? status;
  String? imageName;

  Future<void> uploadImage(File image) async {
    emit(EditTaskState.imageLoading());
    var result = await editTaskRepo.upLoadImage(image);
    result.when(
      success: (result) {
        imageName = result['image'];
        emit(EditTaskState.imageSuccess());
      },
      failure: (e) {
        emit(
          EditTaskState.imageFailure(
            e.apiErrorModel.message ?? "Pleas upload image",
          ),
        );
      },
    );
  }

  Future<void> editTask(String taskId,String oldImage,String oldPriority,String user,String oldStatus) async {
    emit(EditTaskState.taskEditLoading());
    var result = await editTaskRepo.editTask(
      taskId,
      EditTaskRequestBody(
        image: imageName??oldImage,
        title: titleController.text,
        desc: descController.text,
        priority: priority??oldPriority,
        status: status??oldStatus,
        user: user,
      ),
    );
    result.when(
      success: (data) {
        emit(EditTaskState.taskEditSuccess(data));
      },
        failure: (e){
          emit(EditTaskState.taskEditFailure(error: e.apiErrorModel.message ?? "Something went wrong"));
        }

    );

  }
}
