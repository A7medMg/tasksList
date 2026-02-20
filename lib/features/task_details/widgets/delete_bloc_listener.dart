import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/core/helper/extensions.dart';

import '../../home/logic/home_cubit.dart';
import '../../home/logic/home_state.dart';

class DeleteBlocListener extends StatelessWidget {
  const DeleteBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeCubit, TodoState>(
        listenWhen: (previous, current) =>
        current is TodoDeleteActionSuccess || current is TodoDeleteError,
        listener: (context, state) {
          state.maybeWhen(
            deleteActionSuccess: () {
             context.pop();
            },
            deleteError: (error) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Failed to delete: $error"), backgroundColor: Colors.red),
              );
            },
            orElse: () {},
          );
        },
        child: const SizedBox.shrink(),
    );
  }
}
