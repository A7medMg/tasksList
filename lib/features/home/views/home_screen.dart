
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todo/core/theming/colors_manager.dart';
import 'package:todo/features/home/views/widgets/floating_button.dart';
import 'package:todo/features/home/views/widgets/home_app_bar.dart';
import 'package:todo/features/home/views/widgets/task_state_selection.dart';
import '../../../core/helper/spacing.dart';
import '../../../core/theming/styles.dart';
import '../../logout/widgets/logout_bloc_listener.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingButton(),
      appBar: HomeAppBar(),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LogoutBlocListener(),
            verticalSpacing(24),
            Text("My Tasks",style: TextStyles.font16SecondeBold,),
            verticalSpacing(16),
            SizedBox(
                height: 50.h,
                child: TaskStateSelection()),
            verticalSpacing(16),
            Expanded(

                child: ListView.builder(
                    itemCount: 13,
                    itemBuilder: (context,index){
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  children: [
                    SizedBox(
                      width: 66.w,
                      height: 66.h,
                      child: Image.asset(
                        "assets/pngs/task.png",
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
                                    "Grocery Shopping App ",style: TextStyles.font16BlackBold,),
                                ),
                                horizontalSpacing(8),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 5.h),
                                  decoration: BoxDecoration(
                                    color: ColorsManager.lightPrimary,
                                    borderRadius: BorderRadius.circular(5.r),
                                  ),
                                  child: Text("Inprogress",style: TextStyles.font12PrimaryRegular,),

                                )


                              ],
                            ),
                            Text(
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              "This application is designed for super shops. By using ",
                              style: TextStyles.font14SecondeRegular,
                            ),
                            Row(
                                children: [
                                  SvgPicture.asset("assets/svgs/flag.svg",color: ColorsManager.lightOrang,width: 16,),
                                  horizontalSpacing(8),
                                  Text("Heigh",style: TextStyles.font12OrangeMedium,),
                                  Spacer(),
                                  Text("30/12/2022",style: TextStyles.font12SecondeRegular,)
                                ]
                            )

                          ],
                        ),
                      ),
                    ),
                    SvgPicture.asset("assets/svgs/3dots.svg")
                  ],
                ),
              );

            }))

          ]

        ),
      ),
    );
  }
}
