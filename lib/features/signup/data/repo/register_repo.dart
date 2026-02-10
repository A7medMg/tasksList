import 'package:todo/core/network/api_error_handel.dart';
import 'package:todo/core/network/api_result.dart';
import 'package:todo/core/network/api_services.dart';
import 'package:todo/features/signup/data/model/register_request_body.dart';
import 'package:todo/features/signup/data/model/register_response_body.dart';

class RegisterRepo {
  final ApiServices apiServices;
  RegisterRepo(this.apiServices);
Future<ApiResult<RegisterResponseBody>>signUp(RegisterRequestBody registerRequestBody)async{
  try{
    var response=await apiServices.register(registerRequestBody);
    return ApiResult.success(response);
  }catch(e){
    return ApiResult.failure(ErrorHandler.handle(e));
  }
}
}