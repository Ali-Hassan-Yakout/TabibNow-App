import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabib_now/core/theming/app_styles.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: "By logging, you agree to our",
            style: AppStyles.font13GreyRegular,
          ),
          TextSpan(
            text: "  Terms & Conditions ",
            style: AppStyles.font13BlackMedium,
          ),
          TextSpan(text: "and", style: AppStyles.font13GreyRegular),
          TextSpan(
            text: "  Privacy Policy.",
            style: AppStyles.font13BlackMedium.copyWith(height: 1.5.h),
          ),
        ],
      ),
    );
  }
}
