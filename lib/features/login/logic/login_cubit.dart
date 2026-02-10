

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import '../../../core/helper/shard_pref_helper.dart';
import '../../../core/helper/shared_pref_constants.dart';
import '../../../core/network/api_result.dart';
import '../data/models/login_request_body.dart';
import '../data/repos/login_repo.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;

  LoginCubit(this._loginRepo) : super(const LoginState.initial());
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  void emitLoginState() async {

    emit(const LoginState.loading());
    var response = await _loginRepo.login(LoginRequestBody(
      phone: phoneController.text,
      password: passwordController.text,
    ));
    response.when(success: (data) async{
      await SharedPrefHelper.setData(SharedPrefConstans.saveToken, data.accessToken);
      await SharedPrefHelper.setData(SharedPrefConstans.refreshToken, data.refreshToken);
      emit(LoginState.success(data));
    }, failure: (error) {
      emit(LoginState.failure(
          error: error.apiErrorModel.message ?? "Something went wrong"));
    });
  }

}