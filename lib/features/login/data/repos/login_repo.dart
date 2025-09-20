import 'package:tabib_now/core/networking/api_error_handler.dart';
import 'package:tabib_now/core/networking/api_result.dart';
import 'package:tabib_now/core/networking/api_service.dart';
import 'package:tabib_now/features/login/data/models/login_request_body.dart';
import 'package:tabib_now/features/login/data/models/login_response_body.dart';

class LoginRepo {
  final ApiService apiService;

  LoginRepo(this.apiService);

  Future<ApiResult<LoginResponseBody>> login(
    LoginRequestBody loginRequestBody,
  ) async {
    try {
      final response = await apiService.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
