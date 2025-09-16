import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tabib_now/core/theming/app_styles.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset("assets/svgs/tabib_background.svg"),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, Colors.white.withValues(alpha: 0)],
              begin: Alignment.bottomCenter,
              end: Alignment.center,
              stops: [0.14, 0.4],
            ),
          ),
          child: Image.asset("assets/images/onboarding_doctor.png"),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Text(
            "Best Doctor\nAppointment App",
            textAlign: TextAlign.center,
            style: AppStyles.font32Blue700Weight.copyWith(height: 1.4),
          ),
        ),
      ],
    );
  }
}
