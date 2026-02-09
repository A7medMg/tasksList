import 'package:flutter/material.dart';
import 'package:todo/core/routing/routers_name.dart';
import 'package:todo/features/onboarding/onboarding_screen.dart';
import 'package:todo/features/signup/views/signup_screen.dart';

import '../../features/login/view/login_screen.dart';

class AppRouters {
  Route ?generateRoute(RouteSettings settings){
    switch(settings.name){
      case RoutersName.onboarding:
        return MaterialPageRoute(builder: (_)=>const OnboardingScreen());
      case RoutersName.login:
        return MaterialPageRoute(builder: (_)=>const LoginScreen());
      case RoutersName.signUp:
        return MaterialPageRoute(builder: (_)=> SignupScreen());  
      

      default:
        return null;
    }

  }
}