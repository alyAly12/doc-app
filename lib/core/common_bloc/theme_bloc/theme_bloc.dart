

import 'package:flutter_bloc/flutter_bloc.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeInitial(themeValue: false)) {
    on<LightThemeEvent>((event, emit) {
      emit(ThemeState(themeValue: true));
    });


    on<DarkThemeEvent>((event, emit) {
      emit(ThemeState(themeValue: false));
    });
  }
}
