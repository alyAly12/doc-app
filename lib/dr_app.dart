import 'package:doc_app/core/common_bloc/theme_bloc/theme_bloc.dart';
import 'package:doc_app/core/helper/theme_enum.dart';
import 'package:doc_app/core/utils/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';



class DrApp extends StatelessWidget {
  const DrApp({super.key, required this.appRouter});

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeBloc(),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return ScreenUtilInit(
            designSize: const Size(375, 812),
            minTextAdapt: true,
            splitScreenMode: true,
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              initialRoute: Routes.splashScreen,
              title: 'Doctor App',
              theme: state.themeValue
                  ?AppThemes.appThemeData[ThemeEnum.dark]
                  :AppThemes.appThemeData[ThemeEnum.light],
              onGenerateRoute: appRouter.generateRoute,
            ),
          );
        },
      ),
    );
  }
}

