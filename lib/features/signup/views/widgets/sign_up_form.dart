import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo/core/helper/app_regex..dart';
import 'package:todo/core/helper/spacing.dart';
import 'package:todo/core/theming/styles.dart';
import 'package:todo/core/widgets/app_text_field.dart';
import 'package:todo/features/signup/views/widgets/drop_down_button_field.dart';

import '../../logic/sign_up_cubit.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {


  bool _isPassword=true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16.w),
      child: Form(
        key: context.read<SignUpCubit>().formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text("Sign Up",style: TextStyles.font16BlackBold,),
                verticalSpacing(10),
                AppTextFormField(
                  controller: context.read<SignUpCubit>().nameController,
                  hintText: 'Name...', validator: (value) {

                  if (value == null || value.isEmpty) {
                    return "Name is required";
                  }
                },),
                verticalSpacing(10),
                AppTextFormField(
                  controller: context.read<SignUpCubit>().phoneController,
                  prefixIcon:  Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: SvgPicture.asset("assets/svgs/Frame 102.svg"),
                ),
                keyboardType: TextInputType.phone,
                  hintText: '123 456-7890', validator: (p) {
                  if (p == null || p.isEmpty||!AppRegex.isPhoneNumberValid(p)) {
                    return "Phone is required";
                  }
                },),
                verticalSpacing(10),
                AppTextFormField(
                  controller: context.read<SignUpCubit>().yearsController,
                  hintText: 'Years of experience...', validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Years is required";
                  }
                },),
                verticalSpacing(10),
                DropDownButtonField(onItemSelected: (value) {

                  context.read<SignUpCubit>().experienceYears = value!; // هنا مسكنا الداتا بنجاح!
                  print("User selected: ${context.read<SignUpCubit>().experienceYears}");


                 },),
                 verticalSpacing(10),
                  AppTextFormField(
                   controller:  context.read<SignUpCubit>().addressController,
                    hintText: 'Address...', validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Address is required";
                  }
                },),
                 verticalSpacing(10),
                  AppTextFormField(
                    controller:  context.read<SignUpCubit>().passwordController,
                    obscureText: _isPassword,
                    suffixIcon: GestureDetector(
                      onTap: ()=>setState(() {
                        _isPassword=!_isPassword;
                      }),


                      child: Icon(_isPassword?CupertinoIcons.eye_slash_fill:CupertinoIcons.eye_fill)),

                    hintText: 'Password...', validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Password is required";
                  }
                },),
          ],
        ),
      ),
    );
  }
}