import 'package:flutter/material.dart';
import 'package:tabib_now/core/di/dependency_injection.dart';
import 'package:tabib_now/core/routing/app_router.dart';
import 'package:tabib_now/tabib_now_app.dart';

main() {
  setupGetIt();
  runApp(TabibNowApp(appRouter: AppRouter()));
}
