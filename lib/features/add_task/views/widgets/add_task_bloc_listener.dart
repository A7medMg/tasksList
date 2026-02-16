import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/features/add_task/logic/add_task_state.dart';


import '../../../../core/helper/extensions.dart';

import '../../../../core/theming/colors_manager.dart';
import '../../../../core/theming/styles.dart';
import '../../logic/add_task_cubit.dart';

class AddTaskBlocListener extends StatelessWidget {
  const AddTaskBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddTaskCubit, AddTaskState>(
      listenWhen:(previous, current) =>current is AddtaskLoading|| current is AddtaskSuccess||current is  AddtaskError ,
      listener: (BuildContext context, state) {
        state.whenOrNull(
          taskLoading:(){
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: ColorsManager.primary,
                ),
              ),
            );
          },
          taskSuccess: (newTask){
            context.pop();
            FocusScope.of(context).unfocus();
            context.read<AddTaskCubit>().resetForm();

            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("تم عمل التاسك بنجاح ✅"), backgroundColor: Colors.green),
            );
            Navigator.pop(context, newTask);


          },
          taskFailure: (error){

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

