import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/features/edit_task/views/widgets/edit_task_bloc_listener.dart';
import 'package:todo/features/edit_task/views/widgets/edit_task_form.dart';
import 'package:todo/features/edit_task/views/widgets/upload_image_bloc_consumer.dart';
import 'package:todo/features/home/data/models/task_response_model.dart';
import '../../../core/helper/spacing.dart';
import '../../../core/theming/styles.dart';
import '../../../core/widgets/app_text_button.dart';
import '../../../core/widgets/custom_app_bar.dart';
import '../logic/edit_task_cubit.dart';

class EditTaskScreen extends StatefulWidget {
  final TaskResponseModel taskResponseModel;
  const EditTaskScreen({super.key, required this.taskResponseModel});

  @override
  State<EditTaskScreen> createState() => _EditTaskScreenState();
}

class _EditTaskScreenState extends State<EditTaskScreen> {
  @override
  void initState() {
    context.read<EditTaskCubit>().titleController.text=widget.taskResponseModel.title!;
    context.read<EditTaskCubit>().descController.text=widget.taskResponseModel.desc!;
    context.read<EditTaskCubit>().priority=widget.taskResponseModel.priority!;
    context.read<EditTaskCubit>().status=widget.taskResponseModel.status!;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.only(top: 56.h,left: 22.w,right: 22.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(title: "Edit task"),
              verticalSpacing(24),
              EditUploadImageBlocListener(),
              verticalSpacing(16),
          EditTaskForm(),
              verticalSpacing(24),
              EditTaskBlocListener(),
              AppTextButton(buttonText: "Edit task", textStyle: TextStyles.font19WhiteBold, onPressed: (){
                if(context.read<EditTaskCubit>().formKey.currentState!.validate()){
                  context.read<EditTaskCubit>().editTask(
                    widget.taskResponseModel.id!,
                    widget.taskResponseModel.image!,
                    widget.taskResponseModel.priority!,
                    widget.taskResponseModel.user!,
                    widget.taskResponseModel.status!,
                  );
                }


              })

            ],
          ),
        ),
      ),

    );
  }


}
