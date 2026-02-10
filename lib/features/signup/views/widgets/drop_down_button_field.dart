import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo/core/theming/colors_manager.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:todo/core/theming/styles.dart';

class DropDownButtonField extends StatefulWidget {
  final Function(String?) onItemSelected; // وظيفة لترجيع القيمة المختارة
  
  const DropDownButtonField({super.key, required this.onItemSelected});

  @override
  State<DropDownButtonField> createState() => _DropDownButtonFieldState();
}

class _DropDownButtonFieldState extends State<DropDownButtonField> {
  String? _currentSelectedValue; // متغير داخلي لإدارة الحالة داخل الـ Widget

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      
      value: _currentSelectedValue,
      hint: Text('Choose experience Level', style: TextStyles.font14SecondeRegular),
      isExpanded: true, 
      decoration: InputDecoration(
        suffixIcon: Padding(
          padding:  EdgeInsets.only(right: 16.w),
          child: SvgPicture.asset("assets/svgs/drop_down_arrow.svg"),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
       
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: const BorderSide(color: Colors.red, width: 1.3),
        ),
        
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: const BorderSide(color: ColorsManager.secondary),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: const BorderSide(color: ColorsManager.primary, width: 1.3),
        ),
      ),
      items: ['junior', 'middle', 'senior']
          .map((level) => DropdownMenuItem(
                value: level,
                child: Text(level, style: TextStyles.font14BlackRegular),
              ))
          .toList(),
      validator: (value) {
        
        if (value == null || value.isEmpty) {
          return 'Please select your experience level';
        }
        return null;
      },
      onChanged: (value) {
        setState(() {
          _currentSelectedValue = value;
        });
        widget.onItemSelected(value);
      },
    );
  }
}