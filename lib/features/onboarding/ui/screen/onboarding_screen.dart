import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabib_now/core/theming/app_styles.dart';
import 'package:tabib_now/features/onboarding/ui/widgets/doctor_image_and_text.dart';
import 'package:tabib_now/features/onboarding/ui/widgets/get_started_button.dart';
import 'package:tabib_now/features/onboarding/ui/widgets/tabib_logo_and_name.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
            child: Column(
              children: [
                TabibLogoAndName(),
                SizedBox(height: 30.h),
                DoctorImageAndText(),
                SizedBox(height: 18.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
                        textAlign: TextAlign.center,
                        style: AppStyles.font13Grey400Weight,
                      ),
                      SizedBox(height: 30.h),
                      GetStartedButton(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
