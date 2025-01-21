import 'package:flutter/material.dart';
import 'package:movieapp/core/cubit/base_cubit.dart';
import 'package:movieapp/core/theme/cubit/theme_state.dart';

final class ThemeCubit extends BaseCubit<ThemeState> {
  ThemeCubit() : super(const ThemeState(ThemeMode.dark));

  void toggleTheme() {
    emit(state.copyWith(themeMode: state.themeMode == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark));
  }
}
