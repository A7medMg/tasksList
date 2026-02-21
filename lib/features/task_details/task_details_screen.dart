import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/features/task_details/widgets/date_priority_status_form.dart';
import 'package:todo/features/task_details/widgets/delete_bloc_listener.dart';
import '../../core/helper/spacing.dart';
import '../../core/theming/styles.dart';
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
              CustomAppBar(title: "Task Details",icon:"assets/svgs/3dots.svg" ,taskId:widget.taskModel.id ,taskModel: widget.taskModel,),
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
              DatePriorityStatusForm(dateController: dateController, priorityController: priorityController, statusController: statusController),
              DeleteBlocListener()

            ],
          ),
        ),
      ),
    );
  }
}
