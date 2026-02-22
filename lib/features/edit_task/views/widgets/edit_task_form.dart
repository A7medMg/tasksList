import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/colors_manager.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/app_text_field.dart';
import '../../../../core/widgets/app_drop_down_filed.dart';
import '../../../add_task/views/widgets/custom_title.dart';
import '../../logic/edit_task_cubit.dart';


class EditTaskForm extends StatelessWidget {
  const EditTaskForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<EditTaskCubit>().formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTitle(title: "Task title"),
          verticalSpacing(8),
          AppTextFormField(
           controller: context.read<EditTaskCubit>().titleController,
            hintText: "Enter task title", validator: (task) {
            if (task!.isEmpty) {
              return "Task title is required";
            }
          },),
          verticalSpacing(8),
          CustomTitle(title: "Task description"),
          verticalSpacing(8),
          AppTextFormField(
            controller: context.read<EditTaskCubit>().descController,
            maxLines: 8,
            hintText: "Enter description here...", validator: (task) {
            if (task!.isEmpty) {
              return "Task description is required";
            }
          },),
          verticalSpacing(8),
          CustomTitle(title: "Status"),
          verticalSpacing(8),
          AppDropDownFiled(
            onChanged: (d){
              context.read<EditTaskCubit>().status=d;
            },
            initialValue:context.read<EditTaskCubit>().status!,
            items: [
              DropdownMenuItem(value: "waiting", child: Text("Waiting",style: TextStyles.font16PrimaryBold,)),
              DropdownMenuItem(value: "finished", child: Text("Finished",style: TextStyles.font16PrimaryBold,)),
              DropdownMenuItem(value: "inprogress", child: Text("InProgress",style: TextStyles.font16PrimaryBold,)),
            ],

            suffixIcon: SvgPicture.asset("assets/svgs/Arrow - Down 4.svg"),

            fillColor: ColorsManager.lightPrimary ,

          ),
          verticalSpacing(8),
          CustomTitle(title: "Priority"),
          verticalSpacing(8),
          AppDropDownFiled(
            onChanged: (d){
              context.read<EditTaskCubit>().priority=d;
            },
            items: [
              DropdownMenuItem(value: "low", child: Text("Low Priority",style: TextStyles.font16PrimaryBold,)),
              DropdownMenuItem(value: "medium", child: Text("Medium Priority",style: TextStyles.font16PrimaryBold,)),
              DropdownMenuItem(value: "high", child: Text("High Priority",style: TextStyles.font16PrimaryBold,)),
            ],
            initialValue: context.read<EditTaskCubit>().priority!,

            suffixIcon: SvgPicture.asset("assets/svgs/Arrow - Down 4.svg"),
            prefixIcon: Padding(
              padding:  EdgeInsets.all(10.r),
              child: SvgPicture.asset("assets/svgs/flag.svg"),
            ),
            fillColor: ColorsManager.lightPrimary ,

          ),


        ],


      ),
    );
  }
}
