import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabib_now/core/di/dependency_injection.dart';
import 'package:tabib_now/core/routing/app_router.dart';
import 'package:tabib_now/tabib_now_app.dart';

main() async {
  setupGetIt();
  // to fix texts being hidden in flutter_screenutil in release mode
  await ScreenUtil.ensureScreenSize();
  runApp(TabibNowApp(appRouter: AppRouter()));
}
