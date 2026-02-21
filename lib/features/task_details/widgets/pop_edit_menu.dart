import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo/core/helper/extensions.dart';
import 'package:todo/core/routing/routers_name.dart';
import 'package:todo/features/home/data/models/task_response_model.dart';

import '../../../core/routing/app_routers.dart';
import '../../../core/theming/styles.dart';
import '../../home/logic/home_cubit.dart';

class PopEditMenu extends StatelessWidget {
  final TaskResponseModel taskModel;
  final String iconUrl;
  final String taskId;
  const PopEditMenu({super.key, required this.iconUrl, required this.taskId, required this.taskModel});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      padding: EdgeInsetsGeometry.zero,
      color: Colors.white,
      icon: SvgPicture.asset(iconUrl),
      offset: const Offset(0, 50),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r),
      ),

      itemBuilder: (context) => [
         PopupMenuItem(
          value: 'edit',
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Text('Edit',  style: TextStyles.font14BlackBold),
          ),
        ),

               PopupMenuItem(
          value: 'delete',
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Text('Delete', style: TextStyles.font14OrangBold),
          ),
        ),
      ],

      onSelected: (value) {
        if (value == 'edit') {
          context.pushNamed(RoutersName.editTask,arguments:{
            'taskModel': taskModel,
          } );

        } else if (value == 'delete') {
          print("Attempting to delete task: $taskId");
          context.read<HomeCubit>().deleteTask(taskId);
        }
      },
    );
  }
}
