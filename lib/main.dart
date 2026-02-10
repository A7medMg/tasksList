
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo/core/helper/shared_pref_constants.dart';

import 'package:todo/tasks_app.dart';

import 'core/dl/dependency_injection.dart';
import 'core/helper/shard_pref_helper.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  await checkIfUserIsLoggedIn();
   setUp();


  runApp(const TasksApp());
}

checkIfUserIsLoggedIn()async{
  String ?usertoken=await SharedPrefHelper.getString(SharedPrefConstans.saveToken);
  if(usertoken==null||usertoken.isEmpty){
    isLogin=false;
  }else{
    isLogin=true;

  }
}