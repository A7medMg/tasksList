
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/core/routing/routers_name.dart';
import 'package:todo/features/logout/logic/logout_cubit.dart';
import 'package:todo/features/logout/logic/logout_state.dart';

import '../../../../core/helper/extensions.dart';
import '../../../../core/theming/colors_manager.dart';



class LogoutBlocListener extends StatelessWidget {
  const LogoutBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LogoutCubit,LogoutState>(
        listenWhen:(previous, current) =>current is Loading|| current is Success||current is  Error,


        listener: (BuildContext context, state) {
          state.whenOrNull(
            loading: (){
              showDialog(
                context: context,
                builder: (context) => const Center(
                  child: CircularProgressIndicator(
                    color: ColorsManager.primary,
                  ),
                ),
              );
            },
            success: (){
              context.pop();
              context.pushNamedAndRemoveUntil(RoutersName.login, predicate: (Route<dynamic> route) =>false);

            },
            failure: (error){



            },

          );
        },
        child: const SizedBox.shrink());
  }
}
