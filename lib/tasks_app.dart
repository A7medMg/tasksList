import 'package:flutter/material.dart';
import 'package:todo/core/routing/app_routers.dart';
import 'package:todo/core/routing/routers_name.dart';

class TasksApp extends StatelessWidget {
  const TasksApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: RoutersName.login,
      onGenerateRoute: AppRouters().generateRoute,
    );
  }
}
