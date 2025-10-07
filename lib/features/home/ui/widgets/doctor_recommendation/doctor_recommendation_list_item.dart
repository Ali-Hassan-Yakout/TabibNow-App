import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tabib_now/core/helpers/spacing.dart';
import 'package:tabib_now/core/theming/app_styles.dart';

class DoctorRecommendationListItem extends StatelessWidget {
  const DoctorRecommendationListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.r),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 110.w,
            height: 110.h,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Image.asset(
              "assets/images/profile_doctor.png",
              fit: BoxFit.cover,
            ),
          ),
          horizontalSpace(16),
          SizedBox(
            height: 75.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Dr. Randy Wigham", style: AppStyles.font16DarkBlueBold),
                Text(
                  "General  |  RSUD Gatot Subroto",
                  style: AppStyles.font12GrayMedium,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset('assets/svgs/rate_star.svg'),
                    Text("4.8 (4,279 reviews)",style: AppStyles.font12GrayRegular,),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
