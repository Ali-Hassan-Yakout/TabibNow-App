import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:tabib_now/core/helpers/spacing.dart';
import 'package:tabib_now/core/theming/app_colors.dart';

class DoctorSpecializationShimmer extends StatelessWidget {
  const DoctorSpecializationShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 95.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              right: 34.w,
              left: index == 0 ? 8.88.w : 0,
            ),
            child: Column(
              children: [
                Shimmer.fromColors(
                  baseColor: AppColors.lightGray,
                  highlightColor: Colors.white,
                  child: CircleAvatar(
                    radius: 28.r,
                    backgroundColor: AppColors.lightBlue,
                  ),
                ),
                verticalSpace(12),
                Shimmer.fromColors(
                  baseColor: AppColors.lightGray,
                  highlightColor: Colors.white,
                  child: Container(
                    width: 50.w,
                    height: 14.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
