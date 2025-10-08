part of 'employee_bloc.dart';

@freezed
sealed class EmployeeState with _$EmployeeState {
  const factory EmployeeState.initial() = EmployeeInitial;

  const factory EmployeeState.loadInProgress() = EmployeeLoadInProgress;

  const factory EmployeeState.loadSuccess({required List<Employee> employees}) =
      EmployeeLoadSuccess;

  const factory EmployeeState.loadFailure({required String message}) =
      EmployeeLoadFailure;

  const factory EmployeeState.loadEmpty() = EmployeeLoadEmpty;
}
