import 'package:flutter/material.dart';
import 'package:todo/core/routing/routers_name.dart';

import '../../features/login/view/login_screen.dart';

class AppRouters {
  Route ?generateRoute(RouteSettings settings){
    switch(settings.name){
      case RoutersName.login:
        return MaterialPageRoute(builder: (_)=>const LoginScreen());

      default:
        return null;
    }

  }
}