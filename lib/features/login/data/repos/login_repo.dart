import 'package:todo/core/network/api_error_handel.dart';
import 'package:todo/core/network/api_result.dart';
import 'package:todo/core/network/api_services.dart';
import 'package:todo/features/login/data/models/login_request_body.dart';
import 'package:todo/features/login/data/models/login_respons_body.dart';

class LoginRepo {
  final ApiServices apiServices;
  LoginRepo(this.apiServices);
Future<ApiResult<LoginResponsBody>>login(LoginRequestBody loginRequestBody)async{
  try{
    var response=await apiServices.login(loginRequestBody);
    return ApiResult.success(response);

  }catch(e){
    return ApiResult.failure(ErrorHandler.handle(e));
  }
}
}