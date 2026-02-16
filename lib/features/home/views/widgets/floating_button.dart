
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helper/extensions.dart';
import '../../../../core/routing/routers_name.dart';
import '../../../../core/theming/colors_manager.dart';
import '../../data/models/task_response_model.dart';
import '../../logic/home_cubit.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 64.w,
      height: 64.h,
      child: FloatingActionButton(onPressed: ()async{
        final result = await Navigator.pushNamed(context, RoutersName.addTask);

        if (result != null && result is TaskResponseModel) {
          if (context.mounted) {
            context.read<HomeCubit>().addSingleTaskLocally(result);
          }
        }
      },
        backgroundColor: ColorsManager.primary,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32.r),

        ),
        child: Icon(CupertinoIcons.add,size: 30.sp,color: ColorsManager.white,),

      ),
    );
  }
}
