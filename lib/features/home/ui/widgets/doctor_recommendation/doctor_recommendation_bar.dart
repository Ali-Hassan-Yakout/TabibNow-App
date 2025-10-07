import 'package:flutter/material.dart';
import 'package:tabib_now/core/theming/app_styles.dart';

class DoctorRecommendationBar extends StatelessWidget {
  const DoctorRecommendationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Recommendation Doctor", style: AppStyles.font18DarkBlueSemiBold),
        GestureDetector(
          onTap: () {},
          child: Text("See All", style: AppStyles.font12BlueRegular),
        ),
      ],
    );
  }
}
