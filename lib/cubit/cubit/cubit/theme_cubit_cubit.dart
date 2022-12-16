import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'theme_cubit_state.dart';

class ThemeCubitCubit extends Cubit<ThemeCubitState> {
  ThemeCubitCubit() : super(ThemeCubitInitial());

  Brightness theme = Brightness.light;

  void setDarkTheme(){
    theme = Brightness.dark;
    emit(Themedark());
  }
  void setLightTheme(){
    theme = Brightness.light;
    emit(Themelight());
  }
}
