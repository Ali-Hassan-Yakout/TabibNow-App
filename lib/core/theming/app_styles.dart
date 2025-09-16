import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';

abstract class AppStyles {
  static TextStyle font24Black700Weight = TextStyle(
    fontSize: 24.sp,
    color: Colors.black,
    fontWeight: FontWeight.w700,
  );

  static TextStyle font32Blue700Weight = TextStyle(
    fontSize: 32.sp,
    color: AppColors.mainBlue,
    fontWeight: FontWeight.w700,
  );

  static TextStyle font13Grey400Weight = TextStyle(
    fontSize: 13.sp,
    color: AppColors.textGrey,
    fontWeight: FontWeight.w700,
  );

  static TextStyle font16White600Weight = TextStyle(
    fontSize: 16.sp,
    color: Colors.white,
    fontWeight: FontWeight.w600,
  );
}
