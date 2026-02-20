import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/core/routing/routers_name.dart';
import 'package:todo/features/home/logic/home_cubit.dart';
import 'package:todo/features/logout/logic/logout_cubit.dart';
import 'package:todo/features/onboarding/onboarding_screen.dart';
import 'package:todo/features/signup/views/signup_screen.dart';

import '../../features/add_task/logic/add_task_cubit.dart';
import '../../features/add_task/views/add_task_screen.dart';
import '../../features/home/data/models/task_response_model.dart';
import '../../features/home/views/home_screen.dart';
import '../../features/login/logic/login_cubit.dart';
import '../../features/login/view/login_screen.dart';
import '../../features/profile/logic/get_profile_cubit.dart';
import '../../features/profile/views/profile_screen.dart';
import '../../features/signup/logic/sign_up_cubit.dart';
import '../../features/task_details/task_details_screen.dart';
import '../dl/dependency_injection.dart';

class AppRouters {
  Route ?generateRoute(RouteSettings settings){
    switch(settings.name){
      case RoutersName.onboarding:
        return MaterialPageRoute(builder: (_)=>const OnboardingScreen());
      case RoutersName.login:
        return MaterialPageRoute(builder: (_)=>BlocProvider(create: (_)=>LoginCubit(getIt.get()),child: LoginScreen()));
      case RoutersName.signUp:
        return MaterialPageRoute(builder: (_)=> BlocProvider(create: (_)=>SignUpCubit(getIt.get()),child: SignupScreen()));
      case RoutersName.home:
        return MaterialPageRoute(builder: (_)=> MultiBlocProvider(providers: [
          BlocProvider(create: (_)=>LogoutCubit(getIt.get())),
          BlocProvider(create: (_)=>HomeCubit(getIt.get())),
        ], child: HomeScreen()));
      case RoutersName.profile:
        return MaterialPageRoute(builder: (_)=> BlocProvider(create: (_)=>GetProfileCubit(getIt.get())..emitGetProfileState(),child: ProfileScreen()));
      case RoutersName.addTask:
        return MaterialPageRoute(builder: (_)=>BlocProvider(create: (_)=>AddTaskCubit(getIt.get()),child: AddTaskScreen()));
      case RoutersName.taskDetails:
        final arguments = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(builder: (_)=> BlocProvider.value(
            value: arguments['cubit'] as HomeCubit,
          child: TaskDetailsScreen(
            taskModel: arguments['taskModel'] as TaskResponseModel,
          ),));

      default:
        return null;
    }

  }
}