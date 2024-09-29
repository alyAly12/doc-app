
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeInitial(themeValue: false)) {
    _loadThemePreference();
    on<LightThemeEvent>((event, emit) {
      emit(ThemeState(themeValue: true));
      _saveThemePreference();
    });


    on<DarkThemeEvent>((event, emit) {
      emit(ThemeState(themeValue: false));
      _saveThemePreference();
    });
  }
  Future<void> _saveThemePreference() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('theme', state.themeValue);
  }
  Future<void> _loadThemePreference() async {
    final prefs = await SharedPreferences.getInstance();
    final savedTheme = prefs.getBool('theme') ?? false;
    emit(ThemeState(themeValue: savedTheme));
  }
}
