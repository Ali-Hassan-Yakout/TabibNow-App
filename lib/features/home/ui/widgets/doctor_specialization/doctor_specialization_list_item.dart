import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabib_now/core/helpers/spacing.dart';
import 'package:tabib_now/core/theming/app_colors.dart';
import 'package:tabib_now/core/theming/app_styles.dart';

class DoctorSpecializationListItem extends StatelessWidget {
  final int index;
  final String icon;
  final String title;

  const DoctorSpecializationListItem({
    super.key,
    required this.index,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 34.w, left: index == 0 ? 8.88.w : 0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 28.r,
            backgroundColor: AppColors.lightBlue,
            child: Image.asset(icon, width: 24.w, height: 24.h),
          ),
          verticalSpace(12),
          Text(title, style: AppStyles.font12DarkBlueRegular),
        ],
      ),
    );
  }
}
