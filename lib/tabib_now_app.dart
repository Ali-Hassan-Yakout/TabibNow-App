import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabib_now/core/routing/app_router.dart';
import 'package:tabib_now/core/theming/app_colors.dart';

import 'core/routing/routes.dart';

class TabibNowApp extends StatelessWidget {
  final AppRouter appRouter;

  const TabibNowApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: AppColors.mainBlue, // your main blue will now apply
            primary: AppColors.mainBlue, // explicitly set primary
          ),
          scaffoldBackgroundColor: Colors.white,
        ),
        initialRoute: Routes.onBoardingScreen,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
