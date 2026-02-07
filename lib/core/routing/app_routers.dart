import 'package:flutter/material.dart';
import 'package:todo/core/routing/routers_name.dart';
import 'package:todo/features/onboarding/onboarding_screen.dart';

import '../../features/login/view/login_screen.dart';

class AppRouters {
  Route ?generateRoute(RouteSettings settings){
    switch(settings.name){
      case RoutersName.login:
        return MaterialPageRoute(builder: (_)=>const LoginScreen());
      case RoutersName.onboarding:
        return MaterialPageRoute(builder: (_)=>const OnboardingScreen());

      default:
        return null;
    }

  }
}