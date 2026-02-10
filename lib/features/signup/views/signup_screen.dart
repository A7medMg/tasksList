
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/core/helper/spacing.dart';
import 'package:todo/core/theming/styles.dart';
import 'package:todo/core/widgets/app_text_button.dart';
import 'package:todo/features/onboarding/widgets/onboarding_image.dart';
import 'package:todo/features/signup/views/widgets/already_have_account.dart';
import 'package:todo/features/signup/views/widgets/sign_up_form.dart';
import 'package:todo/features/signup/views/widgets/signup_bloc_listener.dart';

import '../logic/sign_up_cubit.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              OnboardingImage(height: 250),
              SignUpForm(),
              verticalSpacing(10),
              AppTextButton(
                padding: EdgeInsets.symmetric(horizontal:16.w ),
                buttonText: "Sign up", textStyle: TextStyles.font16WhiteBold, onPressed: (){
                validateThenSignUp(context);
              }),
               verticalSpacing(10),
              AleradyHaveAccount(),
              SignupBlocListener(),
            ]
          ),
        ),
      )
    );
  }
  Future<void>validateThenSignUp(BuildContext context)async{
    if(context.read<SignUpCubit>().formKey.currentState!.validate()){
      context.read<SignUpCubit>().emitSignUpState();
    }
  }

}


