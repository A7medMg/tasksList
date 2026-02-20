
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/colors_manager.dart';
import '../theming/styles.dart';

class AppTextField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;

  final Widget? suffixIcon;
  final TextStyle? style;
  final Widget? prefixIcon;
  final int? maxLines;
  final bool? isReadOnly;
  final Color? fillColor;

  final TextEditingController? controller;


  const AppTextField({

    super.key,
    this.contentPadding,
    this.enabledBorder,
    this.focusedBorder,


    this.suffixIcon,

    this.style,

    this.controller, this.prefixIcon, this.maxLines, this.isReadOnly, this.fillColor
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(

      readOnly: isReadOnly??false,
      maxLines: maxLines??1,

      controller: controller,


      decoration: InputDecoration(

        fillColor:fillColor ,
        filled:fillColor?.value!=null ?true:false,
        isDense: true,
        contentPadding:
        contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: Colors.red,
            width: 1.3,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: Colors.red,
            width: 1.3,
          ),
        ),
        enabledBorder:
        enabledBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                color: ColorsManager.secondary,
                width: 1.3,
              ),
            ),
        focusedBorder:
        focusedBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                color: ColorsManager.primary,
                width: 1.3,
              ),
            ),

        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
      ),

      style: style ?? TextStyles.font14BlackRegular,
    );
  }
}
