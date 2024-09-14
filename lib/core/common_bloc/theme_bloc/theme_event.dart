part of 'theme_bloc.dart';


sealed class ThemeEvent {}

class LightThemeEvent extends ThemeEvent {}
class DarkThemeEvent extends ThemeEvent {}
