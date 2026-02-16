import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/theming/styles.dart';

class PopEditMenu extends StatelessWidget {
  final String iconUrl;
  const PopEditMenu({super.key, required this.iconUrl});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      padding: EdgeInsetsGeometry.zero,
      color: Colors.white,
      icon: SvgPicture.asset(iconUrl),
      offset: const Offset(0, 50),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r),
      ),

      itemBuilder: (context) => [
         PopupMenuItem(
          value: 'edit',
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Text('Edit',  style: TextStyles.font14BlackBold),
          ),
        ),

               PopupMenuItem(
          value: 'delete',
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Text('Delete', style: TextStyles.font14OrangBold),
          ),
        ),
      ],

      onSelected: (value) {
        if (value == 'edit') {
        } else if (value == 'delete') {
        }
      },
    );
  }
}
