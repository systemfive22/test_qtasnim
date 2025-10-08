part of 'theme_cubit.dart';

@freezed
sealed class ThemeState with _$ThemeState {
  const factory ThemeState({required ThemeMode themeMode}) = _ThemeState;
}
