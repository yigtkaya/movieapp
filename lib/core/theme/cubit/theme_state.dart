import 'package:flutter/material.dart';
import 'package:movieapp/core/cubit/base_cubit.dart';

final class ThemeState extends BaseState {
  const ThemeState(
    this.themeMode,
  );
  final ThemeMode themeMode;

  ThemeState copyWith({ThemeMode? themeMode}) {
    return ThemeState(themeMode ?? this.themeMode);
  }

  @override
  List<Object?> get props => [themeMode];
}
