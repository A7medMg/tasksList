import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/core/helper/spacing.dart';
import 'package:todo/core/theming/styles.dart';
import 'package:todo/features/profile/views/widgets/Info_display_field.dart';

import '../../../core/theming/colors_manager.dart';
import '../../../core/widgets/custom_app_bar.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding:  EdgeInsets.symmetric(vertical: 56.w,horizontal: 22),
        child: Column(
          children: [
            CustomAppBar(title: "Profile",),
            verticalSpacing(40),
            InfoDisplayField(title: 'Name', subTitle: 'Islam Sayed',),
            verticalSpacing(8),
            InfoDisplayField(title: 'Phone', subTitle: '+20 123 456-7890',svgUrl: "assets/svgs/copy.svg",),
            verticalSpacing(8),
            InfoDisplayField(title: 'Level', subTitle: 'Senior',),
            verticalSpacing(8),
            InfoDisplayField(title: 'Years of experience', subTitle: '7 years',),
            verticalSpacing(8),
            InfoDisplayField(title: 'Location', subTitle: 'Fayyum, Egypt',),



          ],
        ),
      ),
    );
  }
}
