import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:todo/core/helper/spacing.dart';
import 'package:todo/core/widgets/app_text_button.dart';
import 'package:todo/core/widgets/custom_app_bar.dart';
import 'package:todo/features/add_task/views/widgets/add_task_bloc_listener.dart';
import 'package:todo/features/add_task/views/widgets/add_task_form.dart';

import 'package:todo/features/add_task/views/widgets/upload_image_bloc_consumer.dart';

import '../../../core/theming/styles.dart';
import '../logic/add_task_cubit.dart';


class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.only(top: 56.h,left: 22.w,right: 22.w),
        child: SingleChildScrollView(
          child: Column(

            children: [
              CustomAppBar(title: "Add new task"),
              verticalSpacing(24),
              UploadImageBlocListener(),



              verticalSpacing(16),
              AddTaskForm(),
              verticalSpacing(24),
              AddTaskBlocListener(),
              AppTextButton(buttonText: "Add task", textStyle: TextStyles.font19WhiteBold, onPressed: (){
                if(context.read<AddTaskCubit>().formKey.currentState!.validate()&&
                    context.read<AddTaskCubit>().imageName!=null
                ){
                  context.read<AddTaskCubit>().emitAddTaskState();
                }
              })







            ],
          ),
        ),
      ),

    );
  }

}
