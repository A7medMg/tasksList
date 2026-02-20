import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/helper/spacing.dart';
import '../../../core/theming/colors_manager.dart';
import '../../../core/theming/styles.dart';
import '../../../core/widgets/app_display_field.dart';


class DatePriorityStatusForm extends StatelessWidget {
  final TextEditingController dateController;
  final TextEditingController priorityController ;
  final TextEditingController statusController ;
  const DatePriorityStatusForm({super.key, required this.dateController, required this.priorityController, required this.statusController});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextField(
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
        ),
        verticalSpacing(8),
        AppTextField(
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
         ),
        verticalSpacing(8),
        AppTextField(
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
       ),
      ],
    );
  }
}
