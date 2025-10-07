import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabib_now/core/helpers/spacing.dart';
import 'package:tabib_now/core/theming/app_colors.dart';
import 'package:tabib_now/core/theming/app_styles.dart';
import 'package:tabib_now/core/widgets/app_text_button.dart';

class DiscoverBanner extends StatelessWidget {
  const DiscoverBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 195.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            alignment: Alignment.topLeft,
            width: double.infinity,
            height: 167.h,
            decoration: BoxDecoration(
              color: AppColors.mainBlue,
              borderRadius: BorderRadius.circular(24.r),
              image: DecorationImage(
                image: AssetImage("assets/images/home_pattern.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Book and\nschedule with\nnearest doctor",
                  style: AppStyles.font18WhiteMedium.copyWith(),
                ),
                verticalSpace(15),
                AppTextButton(
                  onPressed: () {},
                  buttonText: "Find Nearby",
                  buttonTextStyle: AppStyles.font13BlueRegular,
                  height: 38.h,
                  width: 109.w,
                  verticalPadding: 10,
                  horizontalPadding: 20,
                  borderRadius: 48,
                  backgroundColor: Colors.white,
                ),
              ],
            ),
          ),
          Positioned(
            right: 8.w,
            top: 0,
            child: Image.asset(
              "assets/images/home_doctor.png",
              height: 200.h,
            ),
          ),
        ],
      ),
    );
  }
}
