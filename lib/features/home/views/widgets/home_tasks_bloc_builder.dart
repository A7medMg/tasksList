import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/features/home/views/widgets/task_item.dart';

import '../../logic/home_cubit.dart';
import '../../logic/home_state.dart';
import 'home_task_shimmer.dart';

class HomeTasksBlocBuilder extends StatelessWidget {
  const HomeTasksBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, TodoState>(
      listenWhen: (previous, current)=>current is TodoDeleteError ,
      listener: (context, state) {
        state.maybeWhen(
          deleteError: (error){
            ScaffoldMessenger.of(context).showSnackBar(
               SnackBar(content: Text("Something went wrong ❌ :$error"), backgroundColor: Colors.red),
            );
          }, orElse: () {  },);
      },
      buildWhen:(previous, current)=>current is TodoLoading || current is TodoSuccess || current is TodoError,
      builder:(context,state){
       return state.maybeWhen(
         loading:(){
           return TaskItemShimmer();
         },
         success: (todos){
           return Expanded(child:
           ListView.builder(

             controller: context.read<HomeCubit>().scrollController,
               itemCount: todos.length,
               itemBuilder: (context, index) => TaskItem(taskModel: todos[index]),),

           );

         },
         error: (error){
           return Text(error);
         },
         orElse: (){
           return const SizedBox.shrink();
         }

       );
      } ,
    );
  }
}
