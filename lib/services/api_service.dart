import 'dart:async';

import 'package:dio/dio.dart';
import 'package:get/get.dart' hide Response;
import 'package:get_storage/get_storage.dart';
import 'package:getx_app/common/app_config.dart';
import 'package:getx_app/models/user_response.dart';

class ApiService extends GetxService {
  AppConfig _config = Get.find();

  Dio _dio = new Dio();

  @override
  void onInit() {
    _dio.interceptors.add(ApiInterceptors());
    _dio.options.baseUrl = _config.apiBaseUrl!;

    super.onInit();
  }

  Future<UserResponse> getUsers() async {
    try {
      Response response = await _dio.get('/users');
      return UserResponse.fromJson(response.data);
    } on DioError catch (e) {
      throw e.response!;
    }
  }
}

class ApiInterceptors extends Interceptor {
  GetStorage _storage = GetStorage();

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    print('REQUEST[${options.method}] => PATH: ${options.path}');

    if (options.headers.containsKey("requiresToken")) {
      String token = _storage.read('token');
      options.headers.addAll({'X-Access-Token': token});
    }
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) {
    print(
        'RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}');
    return super.onResponse(response, handler);
  }

  @override
  void onError(
    DioError dioError,
    ErrorInterceptorHandler handler,
  ) {
    print(
        'ERROR[${dioError.response?.statusCode}] => PATH: ${dioError.requestOptions.path}');

    if (dioError.response?.statusCode == 403) {}

    return super.onError(dioError, handler);
  }
}
