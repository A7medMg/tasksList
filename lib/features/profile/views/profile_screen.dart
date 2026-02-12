import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/core/helper/spacing.dart';
import 'package:todo/core/theming/styles.dart';
import 'package:todo/features/profile/views/widgets/Info_display_field.dart';
import 'package:todo/features/profile/views/widgets/profile_bloc_builder.dart';

import '../../../core/theming/colors_manager.dart';
import '../../../core/widgets/custom_app_bar.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding:  EdgeInsets.symmetric(vertical: 56.h,horizontal: 22.w),
        child: Column(
          children: [
            CustomAppBar(title: "Profile",),
            verticalSpacing(40),
            ProfileBlocBuilder()



          ],
        ),
      ),
    );
  }
}
