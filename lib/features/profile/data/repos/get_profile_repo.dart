import 'package:todo/core/network/api_error_handel.dart';
import 'package:todo/core/network/api_result.dart';
import 'package:todo/core/network/api_services.dart';
import 'package:todo/features/profile/data/models/profile_info_model.dart';

class GetProfileRepo {
final  ApiServices apiServices;
GetProfileRepo(this.apiServices);

Future<ApiResult<ProfileInfoModel>>getProfile()async{
try{
  var response=await apiServices.getProfile();
  return ApiResult.success(response);
}
catch(e){
  return ApiResult.failure(ErrorHandler.handle(e));
  }

}

}