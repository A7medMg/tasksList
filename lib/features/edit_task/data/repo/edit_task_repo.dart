import 'dart:io';
import 'package:dio/dio.dart';
import 'package:todo/features/edit_task/data/models/edit_task_request_body.dart';
import '../../../../core/network/api_error_handel.dart';
import '../../../../core/network/api_result.dart';
import '../../../../core/network/api_services.dart';
import '../../../home/data/models/task_response_model.dart';

class EditTaskRepo {
  final ApiServices apiServices;
  EditTaskRepo (this.apiServices);
  Future<ApiResult<Map<String,dynamic>>>upLoadImage(File image)async{
    Future<MultipartFile> getMultipartFile() async {
      return await MultipartFile.fromFile(
        image.path,
        filename: image.path.split('/').last,
      );
    }
    try{

      var responseData=await apiServices.uploadImage(await getMultipartFile() );
      return ApiResult.success(responseData);
    }catch(e){
      if (e is DioException && e.response?.statusCode == 401) {
        try {

          final retryResponse = await apiServices.uploadImage(await getMultipartFile());
          return ApiResult.success(retryResponse);
        } catch (retryError) {
          return ApiResult.failure(ErrorHandler.handle(retryError));
        }
      }
      return ApiResult.failure(ErrorHandler.handle(e));
    }

  }
  Future<ApiResult<dynamic>> editTask(String id,EditTaskRequestBody editTaskRequestBody)async{
    try{
      var responseData=await apiServices.updateTask(id,editTaskRequestBody);

      return ApiResult.success(responseData);

    }catch(e){
      return ApiResult.failure(ErrorHandler.handle(e));

    }


  }
}