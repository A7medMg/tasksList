import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:todo/core/helper/shard_pref_helper.dart';
import 'package:todo/core/helper/shared_pref_constants.dart';

class DioFactory {
  DioFactory._();
  static Dio? dio;

  static Dio getDio() {
    Duration timeOut = const Duration(seconds: 30);

    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;
      addDioInterceptor();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void addDioInterceptor() {
    dio?.interceptors.add(
      QueuedInterceptorsWrapper(
        onRequest: (options, handler) async {
          String? token = await SharedPrefHelper.getString(SharedPrefConstans.saveToken);
          options.headers["Accept"] = "application/json";
          if (token != null) {
            options.headers["Authorization"] = "Bearer $token";
          }
          return handler.next(options);
        },
        onError: (DioException e, handler) async {
          if (e.response?.statusCode == 401) {
            String? refreshToken = await SharedPrefHelper.getString(SharedPrefConstans.refreshToken);

            if (refreshToken != null) {
              try {

                final newAccessToken = await _refreshToken(refreshToken);


                await SharedPrefHelper.setData(SharedPrefConstans.saveToken, newAccessToken);

                final options = e.requestOptions;
                options.headers["Authorization"] = "Bearer $newAccessToken";

                final response = await dio!.fetch(options);
                return handler.resolve(response);
              } catch (err) {

                return handler.next(e);
              }
            }
          }
          return handler.next(e);
        },
      ),
    );

    dio?.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
      ),
    );
  }

  static Future<String> _refreshToken(String refreshToken) async {
    final refreshDio = Dio();
    final response = await refreshDio.get(
      'https://todo.iraqsapp.com/auth/refresh-token',
      queryParameters: {'token': refreshToken},
    );

    return response.data['access_token'];
  }
}