import 'package:flutter/cupertino.dart';
import 'package:tabib_now/core/theming/app_styles.dart';

class DoctorSpecializationBar extends StatelessWidget {
  const DoctorSpecializationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Doctor Speciality", style: AppStyles.font18DarkBlueSemiBold),
        GestureDetector(
          onTap: () {},
          child: Text("See All", style: AppStyles.font12BlueRegular),
        ),
      ],
    );
  }
}
