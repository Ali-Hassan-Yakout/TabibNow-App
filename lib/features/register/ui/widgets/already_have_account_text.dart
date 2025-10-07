import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:tabib_now/core/helpers/extensions.dart';
import 'package:tabib_now/core/routing/routes.dart';
import 'package:tabib_now/core/theming/app_styles.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "Already have an account yet?",
              style: AppStyles.font13DarkBlueRegular,
            ),
            TextSpan(
              text: " Sign In",
              style: AppStyles.font13BlueSemiBold,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  context.pushReplacementNamed(Routes.loginScreen);
                },
            ),
          ],
        ),
      ),
    );
  }
}
