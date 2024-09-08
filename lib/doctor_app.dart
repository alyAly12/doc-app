import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';
import 'core/utils/app_colors.dart';

class DoctorApp extends StatelessWidget {
  const DoctorApp({super.key, required this.appRouter});

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.splashScreen,
        title: 'Doctor App',
        theme: ThemeData(
            primaryColor: AppColors.mainColor,
            scaffoldBackgroundColor: AppColors.whiteColor),
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
