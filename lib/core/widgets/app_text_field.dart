
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/colors_manager.dart';
import '../theming/styles.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final TextStyle? hintStyle;
  final String hintText;
  final Widget? suffixIcon;
  final bool? obscureText;
  final TextStyle? style;
  final TextInputType? keyboardType;
  final Widget? prefixIcon;
  final int? maxLines;
  final bool? isReadOnly;
  final Color? fillColor;

  final TextEditingController? controller;
  final Function(String?) validator;

  const AppTextFormField({

    super.key,
    this.contentPadding,
    this.enabledBorder,
    this.focusedBorder,
    this.hintStyle,
    required this.hintText,
    this.suffixIcon,
    this.obscureText,
    this.style,
    required this.validator,
    this.controller, this.keyboardType, this.prefixIcon, this.maxLines, this.isReadOnly, this.fillColor
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(

      readOnly: isReadOnly??false,
      maxLines: maxLines??1,
      keyboardType: keyboardType,
      controller: controller,
      validator:(value){
        return validator(value);
      } ,

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
        hintStyle: hintStyle ?? TextStyles.font14SecondeRegular,
        hintText: hintText,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
      ),
      obscureText: obscureText ?? false,
      style: style ?? TextStyles.font14BlackRegular,
    );
  }
}
