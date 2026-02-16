import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo/core/theming/colors_manager.dart';

import '../../core/helper/spacing.dart';
import '../../core/theming/styles.dart';
import '../../core/widgets/app_text_field.dart';
import '../../core/widgets/custom_app_bar.dart';
import '../home/data/models/task_response_model.dart';

class TaskDetailsScreen extends StatefulWidget {
  final TaskResponseModel  taskModel;
  const TaskDetailsScreen({super.key, required this.taskModel});

  @override
  State<TaskDetailsScreen> createState() => _TaskDetailsScreenState();
}

class _TaskDetailsScreenState extends State<TaskDetailsScreen> {
  final TextEditingController dateController = TextEditingController();
  final TextEditingController priorityController = TextEditingController();
  final TextEditingController statusController = TextEditingController();
  @override
  void initState() {
   dateController.text=widget.taskModel.createdAt!.split('T')[0].replaceAll('-', '/');
   priorityController.text="${widget.taskModel.priority} Priority";
   statusController.text=widget.taskModel.status!;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(vertical: 56.h,horizontal: 22.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(title: "Task Details",icon:"assets/svgs/3dots.svg" ,),
              verticalSpacing(12),
              SizedBox(
                height:225 .h,
                width:375.w ,
                child: Image.network("https://todo.iraqsapp.com/images/${widget.taskModel.image}"),
              ),
              verticalSpacing(16),
              Text(widget.taskModel.title!,style: TextStyles.font24BlackBold,),
              verticalSpacing(8),
              Text(widget.taskModel.desc!,style: TextStyles.font14SecondeRegular,),
              verticalSpacing(26),
              AppTextFormField(
                style: TextStyles.font14SecondeRegular,
                fillColor: ColorsManager.lightPrimary,
                enabledBorder:  OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(
                    color: ColorsManager.primary,
                    width: 1.3,
                  ),
                ) ,
          
                controller:dateController ,
                suffixIcon: Padding(
                  padding:  EdgeInsets.all(10.r),
                  child: SvgPicture.asset("assets/svgs/calendar.svg"),
                ),
                isReadOnly: true,
                hintText: "", validator: (date) {
                if (date!.isEmpty) {
                  return "Task date is required";
                }
              },),
              verticalSpacing(8),
              AppTextFormField(
                style: TextStyles.font16PrimaryBold,
                fillColor: ColorsManager.lightPrimary,
                enabledBorder:  OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(
                    color: ColorsManager.primary,
                    width: 1.3,
                  ),
                ) ,
          
                controller:statusController ,
                suffixIcon: Padding(
                  padding:  EdgeInsets.all(10.r),
                  child: SvgPicture.asset("assets/svgs/Arrow - Down 4.svg"),
                ),
                isReadOnly: true,
                hintText: "", validator: (date) {
                if (date!.isEmpty) {
                  return null;
                }
              },),
              verticalSpacing(8),
              AppTextFormField(
                style: TextStyles.font16PrimaryBold,
                fillColor: ColorsManager.lightPrimary,
                enabledBorder:  OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(
                    color: ColorsManager.primary,
                    width: 1.3,
                  ),
                ) ,
          
                controller:priorityController ,
                prefixIcon: Padding(
              padding:  EdgeInsets.all(10.r),
          child: SvgPicture.asset("assets/svgs/flag.svg"),
                     ) ,
                suffixIcon: Padding(
                  padding:  EdgeInsets.all(10.r),
                  child: SvgPicture.asset("assets/svgs/Arrow - Down 4.svg"),
                ),
                isReadOnly: true,
                hintText: "", validator: (date) {
                if (date!.isEmpty) {
                  return null;
                }
              },),
          
          
          
            ],
          ),
        ),
      ),
    );
  }
}
