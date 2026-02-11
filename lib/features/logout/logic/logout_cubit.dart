



import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/core/network/api_services.dart';
import '../../../core/helper/shard_pref_helper.dart';
import '../../../core/helper/shared_pref_constants.dart';
import 'logout_state.dart';

class LogoutCubit extends Cubit<LogoutState> {
  final ApiServices apiServices;
  LogoutCubit(this.apiServices) : super(const LogoutState.initial());
  void emitLogoutState() async {
    emit(const LogoutState.loading());
   try{
     String? refreshToken = await SharedPrefHelper.getString(SharedPrefConstans.refreshToken);
     await apiServices.logout(
       {"token": refreshToken
     });
     await SharedPrefHelper.clearAllData();
     emit(const LogoutState.success());
   }catch(e){
     await SharedPrefHelper.clearAllData();
     emit(const LogoutState.success());
   }

  }
}
