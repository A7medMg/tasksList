
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helper/extensions.dart';
import '../../../../core/routing/routers_name.dart';
import '../../../../core/theming/colors_manager.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 64.w,
      height: 64.h,
      child: FloatingActionButton(onPressed: (){
        context.pushNamed(RoutersName.addTask);
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
