import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:tabib_now/core/helpers/spacing.dart';
import 'package:tabib_now/core/theming/app_colors.dart';

class DoctorRecommendationShimmer extends StatelessWidget {
  const DoctorRecommendationShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.all(8.r),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Shimmer.fromColors(
                baseColor: AppColors.lightGray,
                highlightColor: Colors.white,
                child: Container(
                  width: 110.w,
                  height: 110.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                ),
              ),
              horizontalSpace(16),
              SizedBox(
                height: 75.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Shimmer.fromColors(
                      baseColor: AppColors.lightGray,
                      highlightColor: Colors.white,
                      child: Container(
                        width: 175.w,
                        height: 14.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                      ),
                    ),
                    Shimmer.fromColors(
                      baseColor: AppColors.lightGray,
                      highlightColor: Colors.white,
                      child: Container(
                        width: 150.w,
                        height: 14.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                      ),
                    ),
                    Shimmer.fromColors(
                      baseColor: AppColors.lightGray,
                      highlightColor: Colors.white,
                      child: Container(
                        width: 150.w,
                        height: 14.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
