import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:flutter/material.dart';

class ThemeCubit extends HydratedCubit<ThemeMode> {
  ThemeCubit() : super(ThemeMode.light);

  void updateTheme(ThemeMode mode) {
    emit(mode);
  }

  @override
  ThemeMode? fromJson(Map<String, dynamic> json) {
    final index = json['theme'] as int;
    return ThemeMode.values[index];
  }

  @override
  Map<String, dynamic>? toJson(ThemeMode state) {
    return {
      'theme': state.index,
    };
  }
}
