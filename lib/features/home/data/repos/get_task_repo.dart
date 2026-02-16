import 'package:todo/core/network/api_error_handel.dart';
import 'package:todo/core/network/api_services.dart';

import '../../../../core/network/api_result.dart';
import '../models/task_response_model.dart';

class GetTaskRepo {
  final ApiServices apiServices;
  GetTaskRepo(this.apiServices);
  Future<ApiResult<List<TaskResponseModel>>> getTasks(int page)async{
    try{
      var response=await apiServices.getTodos(page);
      return ApiResult.success(response);
    }catch(e){
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}