import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabib_now/core/helpers/spacing.dart';
import 'package:tabib_now/core/theming/app_styles.dart';
import 'package:tabib_now/core/widgets/app_text_button.dart';
import 'package:tabib_now/features/login/ui/widgets/terms_and_conditions_text.dart';
import 'package:tabib_now/features/register/logic/register_cubit.dart';
import 'package:tabib_now/features/register/ui/widgets/already_have_account_text.dart';
import 'package:tabib_now/features/register/ui/widgets/register_bloc_listener.dart';
import 'package:tabib_now/features/register/ui/widgets/register_form.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 30.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Create Account",
                  textAlign: TextAlign.start,
                  style: AppStyles.font24BlueBold,
                ),
                verticalSpace(8),
                Text(
                  "Sign up now and start exploring all that our app has to offer. We're excited to welcome you to our community!",
                  textAlign: TextAlign.start,
                  style: AppStyles.font14GreyRegular,
                ),
                verticalSpace(36),
                RegisterForm(),
                verticalSpace(40),
                AppTextButton(
                  buttonText: "Register",
                  onPressed: () {
                    validateThenRegister(context);
                  },
                ),
                verticalSpace(16),
                TermsAndConditionsText(),
                verticalSpace(60),
                AlreadyHaveAccountText(),
                RegisterBlocListener(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenRegister(BuildContext context) {
    if (context.read<RegisterCubit>().formKey.currentState!.validate()) {
      context.read<RegisterCubit>().emitRegisterState();
    }
  }
}
