import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/features/signup/logic/sign_up_cubit.dart';
import 'package:todo/features/signup/logic/sign_up_state.dart';

import '../../../../core/helper/extensions.dart';
import '../../../../core/routing/routers_name.dart';
import '../../../../core/theming/colors_manager.dart';
import '../../../../core/theming/styles.dart';

class SignupBlocListener extends StatelessWidget {
  const SignupBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpCubit, SignUpState>(
      listenWhen:(previous, current) =>current is Loading|| current is Success||current is  Error ,
      listener: (BuildContext context, state) {
        state.whenOrNull(
          loading:(){
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: ColorsManager.primary,
                ),
              ),
            );
          },
          success: (data){
            context.pop();
            context.pushReplacementNamed(RoutersName.home);

          },
          failure: (error){

            setupErrorState(context, error);

          },


        );

      },
      child: const SizedBox.shrink(),

        );

      }
  void setupErrorState(BuildContext context, String error) {
    context.pop();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(
          Icons.error,
          color: Colors.red,
          size: 32,
        ),
        content: Text(
          error,
          style: TextStyles.font16BlackBold,
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text(
              'Got it',
              style: TextStyles.font14BlueMedium,
            ),
          ),
        ],
      ),
    );
  }



  }

