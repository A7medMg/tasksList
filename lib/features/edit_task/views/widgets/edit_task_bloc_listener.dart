import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/core/routing/routers_name.dart';
import 'package:todo/features/edit_task/logic/edit_task_cubit.dart';



import '../../../../core/helper/extensions.dart';

import '../../../../core/theming/colors_manager.dart';
import '../../../../core/theming/styles.dart';
import '../../logic/edit_task_state.dart';


class EditTaskBlocListener extends StatelessWidget {
  const EditTaskBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<EditTaskCubit, EditTaskState>(
      listenWhen:(previous, current) =>current is EdittaskLoading|| current is EdittaskSuccess||current is  EdittaskError ,
      listener: (BuildContext context, state) {
        state.whenOrNull(
          taskEditLoading:(){
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: ColorsManager.primary,
                ),
              ),
            );
          },
          taskEditSuccess: (data){
            context.pop();
            FocusScope.of(context).unfocus();
            //context.read<AddTaskCubit>().resetForm();

            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("تم تعديل التاسك بنجاح ✅"), backgroundColor: Colors.green),
            );
            context.pushNamedAndRemoveUntil(RoutersName.home, predicate: (route) => false);



          },
          taskEditFailure: (error){

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

