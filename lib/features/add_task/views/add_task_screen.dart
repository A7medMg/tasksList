

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo/core/helper/spacing.dart';
import 'package:todo/core/widgets/app_text_button.dart';
import 'package:todo/core/widgets/custom_app_bar.dart';
import 'package:todo/features/add_task/views/widgets/app_drop_down_filed.dart';
import 'package:todo/features/add_task/views/widgets/custom_title.dart';

import '../../../core/theming/colors_manager.dart';
import '../../../core/theming/styles.dart';
import '../../../core/widgets/app_text_field.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({super.key});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  final TextEditingController _dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.only(top: 56.h,left: 22.w,right: 22.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(title: "Add new task"),
              verticalSpacing(24),
              DottedBorder(
                options: RoundedRectDottedBorderOptions(
                  color: ColorsManager.primary,
                  strokeWidth: 2,
                  dashPattern: const [3, 3],
                 radius: const Radius.circular(12),
                ),
                child: SizedBox(
                  height: 56.h,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.add_photo_alternate_outlined, color: ColorsManager.primary),
                      horizontalSpacing(8),
                      Text("Add Img", style: TextStyles.font19PrimaryMedium),
                    ],
                  ),
                ),
              ),
              verticalSpacing(16),
              CustomTitle(title: "Task title"),
              verticalSpacing(8),
              AppTextFormField(hintText: "Enter task title", validator: (task) {
                if (task!.isEmpty) {
                  return "Task title is required";
                }
              },),
              verticalSpacing(8),
              CustomTitle(title: "Task description"),
              verticalSpacing(8),
              AppTextFormField(
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
                controller: _dateController,
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
              verticalSpacing(24),
              AppTextButton(buttonText: "Add task", textStyle: TextStyles.font19WhiteBold, onPressed: (){})
          
          
          
          
          
          
          
            ],
          ),
        ),
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
        _dateController.text = "${picked.year}-${picked.month}-${picked.day}";
      });
    }
  }
}
