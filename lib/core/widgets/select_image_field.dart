import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../helper/spacing.dart';
import '../theming/colors_manager.dart';
import '../theming/styles.dart';

class SelectImageField extends StatelessWidget {
  const SelectImageField({super.key});

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      options: RoundedRectDottedBorderOptions(
        color: ColorsManager.primary,
        strokeWidth: 2,
        dashPattern: const [3, 3],
        radius: const Radius.circular(12),
      ),
      child:
      SizedBox(
        height: 56.h,
        width: double.infinity,
        child:
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.add_photo_alternate_outlined, color: ColorsManager.primary),
            horizontalSpacing(8),
            Text("Add Img", style: TextStyles.font19PrimaryMedium),
          ],
        ),
      ),


    );
  }
}
