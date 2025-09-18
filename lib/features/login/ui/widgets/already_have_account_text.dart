import 'package:flutter/cupertino.dart';
import 'package:tabib_now/core/theming/app_styles.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(textAlign: TextAlign.center, text: TextSpan(
      children: [
        TextSpan(text: "Already have an account yet?",style: AppStyles.font13BlackRegular),
        TextSpan(text: " Sign Up",style: AppStyles.font13BlueSemiBold),
      ],
    ));
  }
}
