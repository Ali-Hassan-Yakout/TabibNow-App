import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabib_now/core/helpers/extensions.dart';
import 'package:tabib_now/core/routing/routes.dart';
import 'package:tabib_now/core/theming/app_colors.dart';
import 'package:tabib_now/core/theming/app_styles.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.pushNamed(Routes.loginScreen);
      },
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(AppColors.mainBlue),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: WidgetStateProperty.all(Size(double.infinity, 52.h)),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(16.r),
          ),
        ),
      ),
      child: Text("Get Started", style: AppStyles.font16White600Weight),
    );
  }
}
