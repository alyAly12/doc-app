part of 'themes_cubit.dart';

@immutable
sealed class ThemesState {}

final class ThemesInitial extends ThemesState {}
final class ThemesLightState extends ThemesState {
  final ThemeData appTheme;
  ThemesLightState({required this.appTheme});
}
final class ThemesDarkState extends ThemesState {
  final ThemeData appTheme;
  ThemesDarkState({required this.appTheme});
}
