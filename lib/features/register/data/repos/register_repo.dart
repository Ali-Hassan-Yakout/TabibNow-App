import 'package:tabib_now/core/networking/api_error_handler.dart';
import 'package:tabib_now/core/networking/api_result.dart';
import 'package:tabib_now/core/networking/api_service.dart';
import 'package:tabib_now/features/register/data/models/register_request_body.dart';
import 'package:tabib_now/features/register/data/models/register_response_body.dart';

class RegisterRepo {
  final ApiService apiService;

  RegisterRepo(this.apiService);

  Future<ApiResult<RegisterResponseBody>> register(
    RegisterRequestBody registerRequestBody,
  ) async {
    try {
      final response = await apiService.register(registerRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
