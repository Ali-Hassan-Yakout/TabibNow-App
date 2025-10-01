import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabib_now/core/networking/api_result.dart';
import 'package:tabib_now/features/register/data/models/register_request_body.dart';
import 'package:tabib_now/features/register/data/repos/register_repo.dart';
import 'package:tabib_now/features/register/logic/register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final RegisterRepo registerRepo;

  RegisterCubit(this.registerRepo) : super(RegisterState.initial());

  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  Future<void> emitRegisterState() async {
    emit(RegisterState.loading());
    final response = await registerRepo.register(
      RegisterRequestBody(
        name: nameController.text,
        phone: phoneController.text,
        email: emailController.text,
        gender: '0',
        password: passwordController.text,
        confirmPassword: confirmPasswordController.text,
      ),
    );
    response.when(
      success: (registerResponse) {
        emit(RegisterState.success(registerResponse));
      },
      failure: (error) {
        emit(RegisterState.error(error: error.apiErrorModel.message ?? ""));
      },
    );
  }
}
