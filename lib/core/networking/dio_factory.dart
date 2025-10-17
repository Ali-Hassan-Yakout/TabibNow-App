import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:tabib_now/core/helpers/constants.dart';
import 'package:tabib_now/core/helpers/shared_pref_helper.dart';

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
      addDioHeaders();
      addDioInterceptors();
      return dio!;
    } else {
      return dio!;
    }
  }

  static Future<void> addDioHeaders() async {
    dio!.options.headers = {
      "Accept": "application/json",
      "Authorization":
          "Bearer ${await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken)}",
    };
  }

  static void setHeadersAfterLogin(String token) {
    dio!.options.headers = {"Authorization": "Bearer $token"};
  }

  static void addDioInterceptors() {
    dio!.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
      ),
    );
  }
}
