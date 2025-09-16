import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tabib_now/core/theming/app_styles.dart';

class TabibLogoAndName extends StatelessWidget {
  const TabibLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset("assets/svgs/tabib_logo.svg"),
        SizedBox(width: 10.w),
        Text("Tabib Now", style: AppStyles.font24Black700Weight),
      ],
    );
  }
}
