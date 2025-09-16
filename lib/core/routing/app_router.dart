import 'package:flutter/material.dart';
import 'package:tabib_now/core/routing/routes.dart';
import 'package:tabib_now/features/login/login_screen.dart';
import 'package:tabib_now/features/onboarding/ui/screen/onboarding_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case Routes.registerScreen:
        return MaterialPageRoute(builder: (_) => Placeholder());
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => Placeholder());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text("No route defined for ${settings.name}")),
          ),
        );
    }
  }
}
