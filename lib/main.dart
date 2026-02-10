
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:todo/tasks_app.dart';

import 'core/dl/dependency_injection.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
   setUp();


  runApp(const TasksApp());
}

