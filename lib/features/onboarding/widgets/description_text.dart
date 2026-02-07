import 'package:flutter/material.dart';

import '../../../core/helper/spacing.dart';
import '../../../core/theming/styles.dart';

class DescriptionText extends StatelessWidget {
  const DescriptionText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpacing(5),
        Text(
          textAlign: TextAlign.center,
          "Task Management &\n To-Do List",
          style: TextStyles.font24BlackBold,
        ),

        verticalSpacing(8),
        Text(
          textAlign: TextAlign.center,
          "This productive tool is designed to help\nyou better manage your task \nproject-wise conveniently!",
          style: TextStyles.font14SecondeRegular,
        ),
        verticalSpacing(20),
      ],
    );
  }
}
