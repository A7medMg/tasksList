import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/login/data/repos/login_repo.dart';
import '../../features/login/logic/login_cubit.dart';
import '../network/api_services.dart';
import '../network/dio_factory.dart';
final GetIt getIt=GetIt.instance;
Future <void>setUp()async{
  Dio dio=DioFactory.getDio();
  getIt.registerLazySingleton<ApiServices>(()=>ApiServices(dio));
  getIt.registerLazySingleton<LoginRepo>(()=>LoginRepo(getIt.get()));
  getIt.registerLazySingleton<LoginCubit>(()=>LoginCubit(getIt.get()));
}