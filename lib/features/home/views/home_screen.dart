import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/features/home/logic/home_cubit.dart';
import 'package:todo/features/home/views/widgets/floating_button.dart';
import 'package:todo/features/home/views/widgets/home_app_bar.dart';
import 'package:todo/features/home/views/widgets/home_tasks_bloc_builder.dart';
import 'package:todo/features/home/views/widgets/task_state_selection.dart';
import '../../../core/helper/spacing.dart';
import '../../../core/theming/styles.dart';
import '../../logout/widgets/logout_bloc_listener.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    context.read<HomeCubit>().setupScrollListener();
    context.read<HomeCubit>().getTodos(isFirstTime: true);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingButton(),
      appBar: HomeAppBar(),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LogoutBlocListener(),
            verticalSpacing(24),
            Text("My Tasks",style: TextStyles.font16SecondeBold,),
            verticalSpacing(16),
            SizedBox(
                height: 50.h,
                child: TaskStateSelection()),
            verticalSpacing(16),
            HomeTasksBlocBuilder()


          ]

        ),
      ),
    );
  }
}
