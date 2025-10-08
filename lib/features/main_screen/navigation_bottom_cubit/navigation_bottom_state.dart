part of 'navigation_bottom_cubit.dart';

@freezed
sealed class NavigationBottomState with _$NavigationBottomState {
  const factory NavigationBottomState({@Default(0) int selectedIndexBody}) =
      _NavigationBottomState;
}
