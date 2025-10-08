import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'navigation_bottom_state.dart';
part 'navigation_bottom_cubit.freezed.dart';

@injectable
class NavigationBottomCubit extends Cubit<NavigationBottomState> {
  NavigationBottomCubit() : super(NavigationBottomState(selectedIndexBody: 0));

  void navigateTo(int index) {
    emit(NavigationBottomState(selectedIndexBody: index));
  }
}
