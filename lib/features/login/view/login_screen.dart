import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/features/login/view/widgets/dont_have_account.dart';
import 'package:todo/features/login/view/widgets/email_and_password.dart';
import 'package:todo/features/login/view/widgets/login_bloc_listner.dart';
import '../../../core/helper/spacing.dart';
import '../../../core/theming/styles.dart';
import '../../../core/widgets/app_text_button.dart';
import '../../onboarding/widgets/onboarding_image.dart';
import '../logic/login_cubit.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const OnboardingImage(height: 482,),
              EmailAndPassword(),
              verticalSpacing(20),
              AppTextButton(
                padding: EdgeInsetsGeometry.symmetric(horizontal: 16.w),
                buttonText: 'Sign In', textStyle: TextStyles.font16WhiteBold, onPressed: () {
                validateThenLogin(context);


              },),
              verticalSpacing(12),
              DontHaveAccount(),
              LoginBlocListener(),


            ],
          ),
        ),
      ),
    );
  }
  void validateThenLogin(BuildContext context) {
    if(context.read<LoginCubit>().formKey.currentState!.validate()){
      context.read<LoginCubit>().emitLoginState(
      );
    }
  }
}
