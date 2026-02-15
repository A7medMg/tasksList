import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:todo/features/add_task/data/repos/add_task_repo.dart';
import 'package:todo/features/profile/data/repos/get_profile_repo.dart';
import 'package:todo/features/signup/data/repo/register_repo.dart';
import '../../features/login/data/repos/login_repo.dart';
import '../network/api_services.dart';
import '../network/dio_factory.dart';


final GetIt getIt=GetIt.instance;
Future <void>setUp()async{
  Dio dio=DioFactory.getDio();
  getIt.registerLazySingleton<ApiServices>(()=>ApiServices(dio));
  ///login
  getIt.registerLazySingleton<LoginRepo>(()=>LoginRepo(getIt.get()));
  ///sign Up
  getIt.registerLazySingleton<RegisterRepo>(()=>RegisterRepo(getIt.get()));
  ///profile
  getIt.registerLazySingleton<GetProfileRepo>(()=>GetProfileRepo(getIt.get()));
  // upload task
  getIt.registerLazySingleton<AddTaskRepo>(()=>AddTaskRepo(getIt.get()));

}