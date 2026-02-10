
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/features/signup/logic/sign_up_state.dart';
import '../../../core/helper/shard_pref_helper.dart';
import '../../../core/helper/shared_pref_constants.dart';
import '../../../core/network/api_result.dart';
import '../data/model/register_request_body.dart';
import '../data/repo/register_repo.dart';
class SignUpCubit extends Cubit<SignUpState> {
  final RegisterRepo _registerRepo;
  SignUpCubit(this._registerRepo) : super(const SignUpState.initial());
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController yearsController = TextEditingController();
  String experienceYears = "";
  TextEditingController addressController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  void emitSignUpState() async {
    emit(const SignUpState.loading());
    var response = await _registerRepo.signUp(RegisterRequestBody(
      phone: phoneController.text,
      password: passwordController.text,
      displayName: nameController.text,
      experienceYears:  int.parse(yearsController.text),
      address:addressController.text
      , level: experienceYears,
    ));
    response.when(success: (data) async{
      await SharedPrefHelper.setData(SharedPrefConstans.saveToken, data.accessToken);
      await SharedPrefHelper.setData(SharedPrefConstans.refreshToken, data.refreshToken);
      emit(SignUpState.success(data));
    }, failure: (error) {
      emit(SignUpState.failure(
          error: error.apiErrorModel.message ?? "Something went wrong"));
    });
  }

}