import 'package:doc_app/core/routing/routes.dart';
import 'package:doc_app/features/login_feature/presentation/screens/login_screen.dart';
import 'package:doc_app/features/splash_feature/presentation/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
        case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      default:
        return null;
    }
  }
}
