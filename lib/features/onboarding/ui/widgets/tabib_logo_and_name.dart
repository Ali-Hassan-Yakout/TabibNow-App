import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tabib_now/core/helpers/spacing.dart';
import 'package:tabib_now/core/theming/app_styles.dart';

class TabibLogoAndName extends StatelessWidget {
  const TabibLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset("assets/svgs/tabib_logo.svg"),
        horizontalSpace(10),
        Text("Tabib Now", style: AppStyles.font24BlackBold),
      ],
    );
  }
}
