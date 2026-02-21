import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/colors_manager.dart';
import '../../../../core/widgets/app_text_field.dart';
import '../../../add_task/views/widgets/app_drop_down_filed.dart';
import '../../../add_task/views/widgets/custom_title.dart';


class EditTaskForm extends StatefulWidget {
  const EditTaskForm({super.key});

  @override
  State<EditTaskForm> createState() => _EditTaskFormState();
}

class _EditTaskFormState extends State<EditTaskForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
     // key: context.read<AddTaskCubit>().formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTitle(title: "Task title"),
          verticalSpacing(8),
          AppTextFormField(
           // controller: context.read<AddTaskCubit>().titleController,
            hintText: "Enter task title", validator: (task) {
            if (task!.isEmpty) {
              return "Task title is required";
            }
          },),
          verticalSpacing(8),
          CustomTitle(title: "Task description"),
          verticalSpacing(8),
          AppTextFormField(
            //controller: context.read<AddTaskCubit>().descController,
            maxLines: 8,
            hintText: "Enter description here...", validator: (task) {
            if (task!.isEmpty) {
              return "Task description is required";
            }
          },),
          verticalSpacing(8),
          CustomTitle(title: "Priority"),
          verticalSpacing(8),
          AppDropDownFiled(
            initialValue: "medium",

            suffixIcon: SvgPicture.asset("assets/svgs/Arrow - Down 4.svg"),
            prefixIcon: Padding(
              padding:  EdgeInsets.all(10.r),
              child: SvgPicture.asset("assets/svgs/flag.svg"),
            ),
            fillColor: ColorsManager.lightPrimary ,

          ),
          verticalSpacing(8),
          CustomTitle(title: "Due date"),
          verticalSpacing(8),
          AppTextFormField(
            //controller: context.read<AddTaskCubit>().dateController,
            suffixIcon: GestureDetector(
              onTap: () {
                selectDate(context);
              },
              child: Padding(
                padding:  EdgeInsets.all(10.r),
                child: SvgPicture.asset("assets/svgs/calendar.svg"),
              ),
            ),
            isReadOnly: true,
            hintText: "choose due date...", validator: (date) {
            if (date!.isEmpty) {
              return "Task date is required";
            }
          },),
        ],


      ),
    );
  }

  Future<void> selectDate(BuildContext context)async{
    final DateTime? picked  =await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2026),
        lastDate: DateTime(3000));
    if (picked != null) {
      setState(() {
        //context.read<AddTaskCubit>().dateController.text = "${picked.year}-${picked.month}-${picked.day}";
      });
    }
  }
}
