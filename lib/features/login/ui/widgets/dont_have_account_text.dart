import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:tabib_now/core/helpers/extensions.dart';
import 'package:tabib_now/core/routing/routes.dart';
import 'package:tabib_now/core/theming/app_styles.dart';

class DontHaveAccountText extends StatelessWidget {
  const DontHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "Don't have an account yet?",
              style: AppStyles.font13BlackRegular,
            ),
            TextSpan(
              text: " Sign Up",
              style: AppStyles.font13BlueSemiBold,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  context.pushReplacementNamed(Routes.registerScreen);
                },
            ),
          ],
        ),
      ),
    );
  }
}
