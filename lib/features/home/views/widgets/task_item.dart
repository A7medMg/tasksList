import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo/features/home/data/models/task_response_model.dart';

import '../../../../core/helper/extensions.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/routing/routers_name.dart';
import '../../../../core/theming/colors_manager.dart';
import '../../../../core/theming/styles.dart';
import '../../logic/home_cubit.dart';

class TaskItem extends StatelessWidget {
  final TaskResponseModel ? taskModel;

  const TaskItem({super.key, this.taskModel});

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(taskModel?.id ?? ""),

      direction: DismissDirection.horizontal,

      background: Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(left: 20.w),
        color: Colors.red,
        child: const Icon(Icons.delete, color: Colors.white),
      ),
      secondaryBackground: Container(
        alignment: Alignment.centerRight,
        padding: EdgeInsets.only(right: 20.w),
        color: Colors.red,
        child: const Icon(Icons.delete, color: Colors.white),
      ),

      onDismissed: (direction) {
        context.read<HomeCubit>().deleteTask(taskModel!.id!);
      },

      confirmDismiss: (direction) async {
        return true;
      },
      child: GestureDetector(
      
        onTap: (){
          context.pushNamed(RoutersName.taskDetails,
            arguments: {
              'taskModel': taskModel,
              'cubit': context.read<HomeCubit>(),
            },
          );
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 66.w,
                height: 66.h,
                child: Image.network(
                  "https://todo.iraqsapp.com/images/${taskModel?.image ??"N/a"}",
      
                  fit: BoxFit.contain,
                ),
              ),
      
      
      
              Expanded(
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 12.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text(
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              taskModel?.title??"N/a",style: TextStyles.font16BlackBold,),
                          ),
                          horizontalSpacing(8),
                          taskStatus(taskModel?.status??"Waiting"),
      
                        ],
                      ),
                      Text(
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        taskModel?.desc??"N/a",
                        style: TextStyles.font14SecondeRegular,
                      ),
                      taskPriority(taskModel?.priority??"Medium",taskModel?.createdAt??"N/a")
      
                    ],
                  ),
                ),
              ),
              SvgPicture.asset("assets/svgs/3dots.svg")
            ],
          ),
        ),
      ),
    );
  }

  Widget  taskStatus(String status){
    switch(status){
      case "inprogress":
        return     Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 5.h),
          decoration: BoxDecoration(
            color: ColorsManager.lightPrimary,
            borderRadius: BorderRadius.circular(5.r),
          ),
          child: Text("Inprogress",style: TextStyles.font12PrimaryRegular,),

        );
      case "finished":
        return   Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 5.h),
          decoration: BoxDecoration(
            color: ColorsManager.lightBlue,
            borderRadius: BorderRadius.circular(5.r),
          ),
          child: Text("Finished",style: TextStyles.font12BlueMedium,),

        );
        default:
          return   Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 5.h),
            decoration: BoxDecoration(
              color: ColorsManager.lighterOrange,
              borderRadius: BorderRadius.circular(5.r),
            ),
            child: Text("Waiting",style: TextStyles.font12OrangeMedium,),

          );
    }



  }
  Widget  taskPriority(String priority,String date){
    switch(priority){
      case "low":
        return Row(
            children: [
              SvgPicture.asset("assets/svgs/flag.svg",color: ColorsManager.blue,width: 16,),
              horizontalSpacing(8),
              Text("Low",style: TextStyles.font12BlueMedium,),
              Spacer(),
              Text(date.split('T')[0].replaceAll('-', '/'),style: TextStyles.font12SecondeRegular,)
            ]
        );
      case "high":
        return Row(
            children: [
              SvgPicture.asset("assets/svgs/flag.svg",color: ColorsManager.lightOrang,width: 16,),
              horizontalSpacing(8),
              Text("high",style: TextStyles.font12OrangeMedium,),
              Spacer(),
              Text(date.split('T')[0].replaceAll('-', '/'),style: TextStyles.font12SecondeRegular,)
            ]
        );
      default:
        return Row(
            children: [
              SvgPicture.asset("assets/svgs/flag.svg",color: ColorsManager.primary,width: 16,),
              horizontalSpacing(8),
              Text("Medium",style: TextStyles.font12PrimaryMedium,),
              Spacer(),
              Text(date.split('T')[0].replaceAll('-', '/'),style: TextStyles.font12SecondeRegular,)
            ]
        );
    }



  }

}
