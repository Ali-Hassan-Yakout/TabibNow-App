import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabib_now/core/helpers/constants.dart';
import 'package:tabib_now/core/helpers/shared_pref_helper.dart';
import 'package:tabib_now/core/networking/api_result.dart';
import 'package:tabib_now/core/networking/dio_factory.dart';
import 'package:tabib_now/features/login/data/models/login_request_body.dart';
import 'package:tabib_now/features/login/data/repos/login_repo.dart';
import 'package:tabib_now/features/login/logic/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo loginRepo;

  LoginCubit(this.loginRepo) : super(LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  Future<void> emitLoginState() async {
    emit(LoginState.loading());
    final response = await loginRepo.login(
      LoginRequestBody(
        email: emailController.text,
        password: passwordController.text,
      ),
    );
    response.when(
      success: (loginResponse) {
        saveUserToken(loginResponse.userData!.token!);
        emit(LoginState.success(loginResponse));
      },
      failure: (error) {
        emit(LoginState.error(error));
      },
    );
  }

  Future<void> saveUserToken(String token) async {
    await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, token);
    DioFactory.setHeadersAfterLogin(token);
  }
}
