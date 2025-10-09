import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:tabib_now/core/networking/api_constants.dart';
import 'package:tabib_now/features/home/data/models/specializations_response_model.dart';
import 'package:tabib_now/features/login/data/models/login_request_body.dart';
import 'package:tabib_now/features/login/data/models/login_response_body.dart';
import 'package:tabib_now/features/register/data/models/register_request_body.dart';
import 'package:tabib_now/features/register/data/models/register_response_body.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponseBody> login(@Body() LoginRequestBody loginRequestBody);

  @POST(ApiConstants.register)
  Future<RegisterResponseBody> register(
    @Body() RegisterRequestBody registerRequestBody,
  );

  @GET(ApiConstants.specializations)
  Future<SpecializationsResponseModel> getSpecializations();
}
