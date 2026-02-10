import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/core/helper/shared_pref_constants.dart';
import 'package:todo/core/routing/app_routers.dart';
import 'package:todo/core/routing/routers_name.dart';
import 'package:todo/core/theming/colors_manager.dart';

class TasksApp extends StatelessWidget {
  const TasksApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (context, child) {
            return MaterialApp(
          theme: ThemeData(
            scaffoldBackgroundColor: ColorsManager.white,
            fontFamily: "DMSans"
          ),
          debugShowCheckedModeBanner: false,
          initialRoute:isLogin? RoutersName.home:RoutersName.onboarding,
          onGenerateRoute: AppRouters().generateRoute,
        );
      },

    );
  }
}
