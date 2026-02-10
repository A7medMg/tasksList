import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/core/routing/routers_name.dart';
import 'package:todo/features/onboarding/onboarding_screen.dart';
import 'package:todo/features/signup/views/signup_screen.dart';

import '../../features/home/views/home_screen.dart';
import '../../features/login/logic/login_cubit.dart';
import '../../features/login/view/login_screen.dart';
import '../dl/dependency_injection.dart';

class AppRouters {
  Route ?generateRoute(RouteSettings settings){
    switch(settings.name){
      case RoutersName.onboarding:
        return MaterialPageRoute(builder: (_)=>const OnboardingScreen());
      case RoutersName.login:
        return MaterialPageRoute(builder: (_)=>BlocProvider(create: (_)=>LoginCubit(getIt.get()),child: LoginScreen()));
      case RoutersName.signUp:
        return MaterialPageRoute(builder: (_)=> SignupScreen());
      case RoutersName.home:
        return MaterialPageRoute(builder: (_)=>const HomeScreen());
      

      default:
        return null;
    }

  }
}