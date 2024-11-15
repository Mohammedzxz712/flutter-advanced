import 'package:doctor_app_adv/core/routing/routes.dart';
import 'package:flutter/material.dart';
import '../../features/login/ui/login_screen.dart';
import '../../features/onboarding/onboarding_screen.dart';

class  AppRouter {

  Route onGenerateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.onboarding:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routes.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      default:
        return MaterialPageRoute(builder: (_) => Scaffold(
          appBar: AppBar(title: const Text('Doctor App')),
          body: const Center(child: Text('Route not found')),
        ));
    }
  }
}