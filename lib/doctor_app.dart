import 'package:doc_app/core/common_bloc/themes_cubit.dart';
import 'package:doc_app/core/helper/theme_enum.dart';
import 'package:doc_app/core/utils/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';
import 'core/utils/app_colors.dart';


class DoctorApp extends StatelessWidget {
  const DoctorApp({super.key, required this.appRouter});

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemesCubit()..changeTheme(ThemeEnum.initial, context),
      child: BlocBuilder<ThemesCubit, ThemesState>(
        builder: (context, state) {
          if(state is ThemesLightState){
            return ScreenUtilInit(
              designSize: const Size(375, 812),
              minTextAdapt: true,
              splitScreenMode: true,
              child: MaterialApp(
                debugShowCheckedModeBanner: false,
                initialRoute: Routes.splashScreen,
                title: 'Doctor App',
                theme: AppTheme.themeData(isDarkTheme: false, context: context),
                onGenerateRoute: appRouter.generateRoute,
              ),
            );
          }else if(state is ThemesDarkState){
            return ScreenUtilInit(
              designSize: const Size(375, 812),
              minTextAdapt: true,
              splitScreenMode: true,
              child: MaterialApp(
                debugShowCheckedModeBanner: false,
                initialRoute: Routes.splashScreen,
                title: 'Doctor App',
                theme: AppTheme.themeData(isDarkTheme: true, context: context),
                onGenerateRoute: appRouter.generateRoute,
              ),
            );
          }
          return ScreenUtilInit(
            designSize: const Size(375, 812),
            minTextAdapt: true,
            splitScreenMode: true,
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              initialRoute: Routes.splashScreen,
              title: 'Doctor App',
              theme: ThemeData(
                  textTheme: GoogleFonts.abyssinicaSilTextTheme(
                      Theme
                          .of(context)
                          .textTheme
                  ),
                  primaryColor: AppColors.mainColor,
                  scaffoldBackgroundColor: AppColors.whiteColor),
              onGenerateRoute: appRouter.generateRoute,
            ),
          );
        },
      ),
    );
  }
}

