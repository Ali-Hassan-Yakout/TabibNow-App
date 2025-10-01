import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabib_now/core/theming/font_weight_helper.dart';

import 'app_colors.dart';

abstract class AppStyles {
  static TextStyle font24BlackBold = TextStyle(
    fontSize: 24.sp,
    color: Colors.black,
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle font15BlackMedium = TextStyle(
    fontSize: 15.sp,
    color: Colors.black,
    fontWeight: FontWeightHelper.medium,
  );

  static TextStyle font14BlackMedium = TextStyle(
    fontSize: 14.sp,
    color: Colors.black,
    fontWeight: FontWeightHelper.medium,
  );

  static TextStyle font13BlackMedium = TextStyle(
    fontSize: 13.sp,
    color: Colors.black,
    fontWeight: FontWeightHelper.medium,
  );

  static TextStyle font13BlackRegular = TextStyle(
    fontSize: 13.sp,
    color: Colors.black,
    fontWeight: FontWeightHelper.regular,
  );

  static TextStyle font32BlueBold = TextStyle(
    fontSize: 32.sp,
    color: AppColors.mainBlue,
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle font24BlueBold = TextStyle(
    fontSize: 24.sp,
    color: AppColors.mainBlue,
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle font13BlueRegular = TextStyle(
    fontSize: 13.sp,
    color: AppColors.mainBlue,
    fontWeight: FontWeightHelper.regular,
  );

  static TextStyle font14BlueSemiBold = TextStyle(
    fontSize: 14.sp,
    color: AppColors.mainBlue,
    fontWeight: FontWeightHelper.semiBold,
  );

  static TextStyle font13BlueSemiBold = TextStyle(
    fontSize: 13.sp,
    color: AppColors.mainBlue,
    fontWeight: FontWeightHelper.semiBold,
  );

  static TextStyle font13GreyRegular = TextStyle(
    fontSize: 13.sp,
    color: AppColors.grey,
    fontWeight: FontWeightHelper.regular,
  );

  static TextStyle font14GreyRegular = TextStyle(
    fontSize: 14.sp,
    color: AppColors.grey,
    fontWeight: FontWeightHelper.regular,
  );

  static TextStyle font14LightGreyMedium = TextStyle(
    fontSize: 14.sp,
    color: AppColors.lightGrey,
    fontWeight: FontWeightHelper.medium,
  );

  static TextStyle font16WhiteSemiBold = TextStyle(
    fontSize: 16.sp,
    color: Colors.white,
    fontWeight: FontWeightHelper.semiBold,
  );
}
