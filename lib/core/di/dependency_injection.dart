import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:tabib_now/core/networking/api_service.dart';
import 'package:tabib_now/core/networking/dio_factory.dart';
import 'package:tabib_now/features/login/data/repos/login_repo.dart';
import 'package:tabib_now/features/login/logic/login_cubit.dart';
import 'package:tabib_now/features/register/data/repos/register_repo.dart';
import 'package:tabib_now/features/register/logic/register_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  //Dio and ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  //login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
  //signup
  getIt.registerLazySingleton<RegisterRepo>(() => RegisterRepo(getIt()));
  getIt.registerFactory<RegisterCubit>(() => RegisterCubit(getIt()));
}
