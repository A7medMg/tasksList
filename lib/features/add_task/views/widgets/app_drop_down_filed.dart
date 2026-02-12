import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/core/theming/styles.dart';

import '../../../../core/theming/colors_manager.dart';

class AppDropDownFiled extends StatefulWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Color? fillColor;

  const AppDropDownFiled({super.key, this.contentPadding, this.enabledBorder, this.focusedBorder, this.suffixIcon, this.prefixIcon, this.fillColor});

  @override
  State<AppDropDownFiled> createState() => _AppDropDownFiledState();
}

class _AppDropDownFiledState extends State<AppDropDownFiled> {
  String value="medium";
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<dynamic>(

      initialValue: value,
      decoration:InputDecoration(
        fillColor:widget.fillColor,
        filled:widget.fillColor?.value!=null ?true:false ,
        suffixIcon: widget.suffixIcon,
        prefixIcon:widget.prefixIcon ,
        isDense: true,
        contentPadding:
        widget.contentPadding ??
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
        widget.enabledBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                color: ColorsManager.secondary,
                width: 1.3,
              ),
            ),
        focusedBorder:
        widget.focusedBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                color: ColorsManager.primary,
                width: 1.3,
              ),
            ),),

      items: [
        DropdownMenuItem(value: "low", child: Text("Low Priority",style: TextStyles.font16PrimaryBold,)),
        DropdownMenuItem(value: "medium", child: Text("Medium Priority",style: TextStyles.font16PrimaryBold,)),
        DropdownMenuItem(value: "high", child: Text("High Priority",style: TextStyles.font16PrimaryBold,)),
      ],
      onChanged: (dynamic d) {
        setState(() {
          value=d;
          print(value);
        });

      },);
  }
}
