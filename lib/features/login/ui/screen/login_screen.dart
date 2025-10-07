import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabib_now/core/helpers/spacing.dart';
import 'package:tabib_now/core/theming/app_styles.dart';
import 'package:tabib_now/core/widgets/app_text_button.dart';
import 'package:tabib_now/features/login/logic/login_cubit.dart';
import 'package:tabib_now/features/login/ui/widgets/dont_have_account_text.dart';
import 'package:tabib_now/features/login/ui/widgets/email_and_password.dart';
import 'package:tabib_now/features/login/ui/widgets/login_bloc_listener.dart';
import 'package:tabib_now/features/login/ui/widgets/terms_and_conditions_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                  "Welcome Back",
                  textAlign: TextAlign.start,
                  style: AppStyles.font24BlueBold,
                ),
                verticalSpace(8),
                Text(
                  "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                  textAlign: TextAlign.start,
                  style: AppStyles.font14GrayRegular,
                ),
                verticalSpace(36),
                EmailAndPassword(),
                verticalSpace(16),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Forgot Password?",
                    style: AppStyles.font13BlueRegular,
                  ),
                ),
                verticalSpace(40),
                AppTextButton(
                  buttonText: "Login",
                  onPressed: () {
                    validateThenLogin(context);
                  },
                ),
                verticalSpace(16),
                TermsAndConditionsText(),
                verticalSpace(60),
                DontHaveAccountText(),
                const LoginBlocListener(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginState();
    }
  }
}
