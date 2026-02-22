

import 'package:dio/dio.dart';

import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:todo/core/network/api_constant.dart';
import 'package:todo/features/add_task/data/models/add_task_request_body.dart';
import 'package:todo/features/home/data/models/task_response_model.dart';
import 'package:todo/features/login/data/models/login_request_body.dart';
import 'package:todo/features/login/data/models/login_respons_body.dart';
import 'package:todo/features/signup/data/model/register_request_body.dart';
import 'package:todo/features/signup/data/model/register_response_body.dart';

import '../../features/edit_task/data/models/edit_task_request_body.dart';
import '../../features/profile/data/models/profile_info_model.dart';
part"api_services.g.dart";
@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiServices {
  factory ApiServices(Dio dio,{String baseUrl}) = _ApiServices;
  @POST(ApiConstants.login)
  Future<LoginResponsBody> login(
      @Body() LoginRequestBody loginRequestBody,
      );
  @POST(ApiConstants.signup)
  Future<RegisterResponseBody> register(
      @Body() RegisterRequestBody registerRequestBody,
      );
  @GET(ApiConstants.profile)
  Future<ProfileInfoModel> getProfile();
  @POST(ApiConstants.logout)
  Future<dynamic> logout(
      @Body() Map<String, dynamic> body,
      );
  @POST(ApiConstants.uploadImage)
  @MultiPart()
  Future<dynamic> uploadImage(
      @Part(name: "image") MultipartFile image,
      );
  @POST(ApiConstants.createTasks)
  Future<TaskResponseModel> createTask(
      @Body() AddTaskRequestBody addTaskRequestBody,
      );
  @GET(ApiConstants.getTasks)
  Future<List<TaskResponseModel>> getTodos(
      @Query("page") int page,
      );
  @DELETE(ApiConstants.deleteTasks)
  Future<dynamic> deleteTask(
      @Path("id") String id,
      );
  @PUT(ApiConstants.updateTasks)
  Future<dynamic> updateTask(
      @Path("id") String id,
      @Body() EditTaskRequestBody editTaskRequestBody,
      );


}