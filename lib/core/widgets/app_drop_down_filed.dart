import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../theming/colors_manager.dart';


class AppDropDownFiled extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Color? fillColor;
  final String initialValue;
  final List<DropdownMenuItem<dynamic>> items;
  final void Function(dynamic) onChanged;


  const AppDropDownFiled({super.key, this.contentPadding, this.enabledBorder, this.focusedBorder, this.suffixIcon, this.prefixIcon, this.fillColor, required this.initialValue, required this.items, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<dynamic>(

      value:initialValue,
      decoration:InputDecoration(
        fillColor:fillColor,
        filled:fillColor?.value!=null ?true:false ,
        suffixIcon: suffixIcon,
        prefixIcon:prefixIcon ,
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
            ),),

      items:items,
      onChanged: onChanged,

     );
  }
}
