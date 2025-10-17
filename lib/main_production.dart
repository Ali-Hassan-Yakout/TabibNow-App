import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabib_now/core/di/dependency_injection.dart';
import 'package:tabib_now/core/helpers/constants.dart';
import 'package:tabib_now/core/helpers/shared_pref_helper.dart';
import 'package:tabib_now/core/routing/app_router.dart';
import 'package:tabib_now/tabib_now_app.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  // to fix texts being hidden in flutter_screenutil in release mode
  await ScreenUtil.ensureScreenSize();
  await checkIfUserLoggedIn();
  runApp(TabibNowApp(appRouter: AppRouter()));
}

Future<void> checkIfUserLoggedIn() async {
  String? userToken = await SharedPrefHelper.getSecuredString(
    SharedPrefKeys.userToken,
  );
  if (userToken != null && userToken.isNotEmpty) {
    isLoggedIn = true;
  } else {
    isLoggedIn = false;
  }
}
