import 'package:bloc/bloc.dart';
import 'package:doc_app/core/helper/app_theme.dart';
import 'package:doc_app/core/helper/shared_prefs.dart';
import 'package:doc_app/core/helper/theme_enum.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'themes_state.dart';

class ThemesCubit extends Cubit<ThemesState> {
  ThemesCubit() : super(ThemesInitial());

  changeTheme(ThemeEnum theme ,BuildContext context) {
    switch (theme) {
      case ThemeEnum.light:
        SharedPrefsHelper.setData('theme', 'light');
        emit(ThemesLightState(appTheme: AppTheme.themeData(isDarkTheme:false , context: context)));
        break;
      case ThemeEnum.dark:
        SharedPrefsHelper.setData('theme', 'dark');
        emit(ThemesDarkState(appTheme: AppTheme.themeData(isDarkTheme: true, context: context)));
        break;
      case ThemeEnum.initial:
        if(SharedPrefsHelper.getString('theme') != null){
          if(SharedPrefsHelper.getString('theme') == 'light'){
            emit(ThemesLightState(appTheme: AppTheme.themeData(isDarkTheme:false , context: context)));
          }else if(SharedPrefsHelper.getString('theme') == 'dark'){
            emit(ThemesDarkState(appTheme: AppTheme.themeData(isDarkTheme: true, context: context)));
          }
        }
        break;
    }
  }
}
