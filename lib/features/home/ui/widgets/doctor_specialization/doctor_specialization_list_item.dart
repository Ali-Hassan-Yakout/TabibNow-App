import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabib_now/core/helpers/spacing.dart';
import 'package:tabib_now/core/theming/app_colors.dart';
import 'package:tabib_now/core/theming/app_styles.dart';

class DoctorSpecializationListItem extends StatelessWidget {
  final int index;
  final int selectedIndex;
  final String icon;
  final String title;

  const DoctorSpecializationListItem({
    super.key,
    required this.index,
    required this.icon,
    required this.title,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 34.w, left: index == 0 ? 8.88.w : 0),
      child: Column(
        children: [
          index == selectedIndex
              ? Container(
                  decoration: BoxDecoration(
                    border: BoxBorder.all(color: AppColors.darkBlue),
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    radius: 28.r,
                    backgroundColor: AppColors.lightBlue,
                    child: Image.asset(icon, width: 26.w, height: 26.h),
                  ),
                )
              : CircleAvatar(
                  radius: 28.r,
                  backgroundColor: AppColors.lightBlue,
                  child: Image.asset(icon, width: 24.w, height: 24.h),
                ),
          verticalSpace(12),
          Text(
            title,
            style: index == selectedIndex
                ? AppStyles.font14DarkBlueBold
                : AppStyles.font12DarkBlueRegular,
          ),
        ],
      ),
    );
  }
}
