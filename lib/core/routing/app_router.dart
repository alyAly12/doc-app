import 'package:doc_app/core/routing/routes.dart';
import 'package:doc_app/features/login_feature/presentation/screens/login_screen.dart';
import 'package:doc_app/features/signup_feature/presentation/screens/signup_screen.dart';
import 'package:doc_app/features/splash_feature/presentation/screens/splash_screen.dart';
import 'package:doc_app/root_screen.dart';
import 'package:flutter/material.dart';

import '../../bottom_nav_animated_screen.dart';
import '../../features/calendar_feature/presentation/screens/calendar_screen.dart';
import '../../features/dr_details_feature/presentation/screens/dr_details_screen.dart';
import '../../features/home_feature/presentation/screens/home_screen.dart';
import '../../features/home_feature/presentation/screens/inner_screens/view_all_doc_speciality.dart';
import '../../features/make_appointment_feature/presentation/screens/make_appointment_screen.dart';
import '../../features/profile_feature/presentation/screens/profile_screen.dart';
import '../../features/search_feature/presentation/screens/search_screen.dart';
import '../../features/support_feature/presentation/screens/support_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case Routes.signupScreen:
        return MaterialPageRoute(builder: (_) => const SignupScreen());
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.rootScreen:
        return MaterialPageRoute(builder: (_) => const RootScreen());
      case Routes.calendarScreen:
        return MaterialPageRoute(builder: (_) => const CalendarScreen());
      case Routes.searchScreen:
        return MaterialPageRoute(builder: (_) => const SearchScreen());
      case Routes.supportScreen:
        return MaterialPageRoute(builder: (_) => const SupportScreen());
      case Routes.profileScreen:
        return MaterialPageRoute(builder: (_) => const ProfileScreen());
      case Routes.viewAllDocSpeciality:
        return MaterialPageRoute(builder: (_) => const ViewAllDocSpeciality());
      case Routes.bottomNavAnimatedScreen:
        return MaterialPageRoute(
            builder: (_) => const BottomNavAnimatedScreen());
      case Routes.drDetailsScreen:
        return MaterialPageRoute(
            builder: (_) => DrDetailsScreen(
                  name: settings.arguments as String,
                  img: settings.arguments as String,
                  email: settings.arguments as String,
                  speciality: settings.arguments as String,
                ));
        case Routes.makeAppointmentScreen:
        return MaterialPageRoute(builder: (_) => const MakeAppointmentScreen());
      default:
        return null;
    }
  }
}
