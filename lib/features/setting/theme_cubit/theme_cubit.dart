import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:test_qtasnim/core/utils/manager/shared_manager.dart';

part 'theme_state.dart';
part 'theme_cubit.freezed.dart';

@injectable
class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(const ThemeState(themeMode: ThemeMode.system)) {
    loadTheme();
  }
  Future<void> loadTheme() async {
    final shared = SharedManager<int>();
    final themeIndex = await shared.read('theme');
    if (themeIndex != null) {
      emit(ThemeState(themeMode: ThemeMode.values[themeIndex]));
    }
  }

  Future<void> setThemeMode(ThemeMode mode) async {
    final shared = SharedManager<int>();
    await shared.store('theme', mode.index);
    emit(ThemeState(themeMode: mode));
  }
}
