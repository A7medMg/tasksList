import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo/features/login/logic/login_cubit.dart';

import '../../../../core/helper/app_regex..dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/app_text_field.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool _isPassword = true;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0.w),
      child: Form(
        key: context.read<LoginCubit>().formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start  ,
          children: [
            Text("Login", style: TextStyles.font24BlackBold),
            verticalSpacing(18),
            AppTextFormField(
              controller: context.read<LoginCubit>().phoneController,
              keyboardType: TextInputType.phone,
              prefixIcon: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: SvgPicture.asset("assets/svgs/Frame 102.svg"),
              ),
              hintText: '123 456-7890',
              validator: (v) {
                if (v == null || v.isEmpty||!AppRegex.isPhoneNumberValid(v)) {
                  return "Phone is required";
                }
              },
            ),
            verticalSpacing(18),
            AppTextFormField(
              controller: context.read<LoginCubit>().passwordController,
              keyboardType: TextInputType.numberWithOptions(),
              obscureText: _isPassword,
              suffixIcon:GestureDetector(
                  onTap: (){
                    setState(() {
                      _isPassword = !_isPassword;
                    });
                  },
                  child: Icon(_isPassword?CupertinoIcons.eye_slash_fill:CupertinoIcons.eye_fill)),


              hintText: 'Password', validator: (v) {
              if (v == null || v.isEmpty) {
                return "Password is required";
              }
            },),
          ],
        ),
      ),
    );
  }
}
