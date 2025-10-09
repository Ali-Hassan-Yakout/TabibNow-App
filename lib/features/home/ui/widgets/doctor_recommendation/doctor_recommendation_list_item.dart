import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabib_now/core/helpers/spacing.dart';
import 'package:tabib_now/core/theming/app_styles.dart';
import 'package:tabib_now/features/home/data/models/specializations_response_model.dart';

class DoctorRecommendationListItem extends StatelessWidget {
  final Doctors? doctorData;

  const DoctorRecommendationListItem({super.key, this.doctorData});

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
                Text(
                  doctorData?.name ?? "Name",
                  style: AppStyles.font16DarkBlueBold,
                ),
                Text(
                  "${doctorData?.degree}  |  ${doctorData?.phone}",
                  style: AppStyles.font12GrayMedium,
                ),
                Text(
                  doctorData?.email ?? "Email",
                  style: AppStyles.font12GrayRegular,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
